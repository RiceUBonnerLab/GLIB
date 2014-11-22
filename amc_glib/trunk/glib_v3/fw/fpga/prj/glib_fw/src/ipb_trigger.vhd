library ieee;
use ieee.std_logic_1164.all;

library work;
use work.ipbus.all;
use work.system_package.all;
use work.user_package.all;

entity ipb_trigger is
port(

	ipb_clk_i       : in std_logic;
	gtx_clk_i       : in std_logic;
	reset_i         : in std_logic;
    
	ipb_mosi_i      : in ipb_wbus;
	ipb_miso_o      : out ipb_rbus;
    
    rx_en_i         : in std_logic;
    rx_data_i       : in std_logic_vector(47 downto 0);
    
    fifo_reset_i    : in std_logic
    
);
end ipb_trigger;

architecture rtl of ipb_trigger is

    signal ipb_ack      : std_logic := '0';
	signal ipb_data     : std_logic_vector(31 downto 0) := (others => '0'); 
    
    signal reset        : std_logic := '0';
    
    signal wr_data      : std_logic_vector(31 downto 0) := (others => '0'); 
    
    signal rd_en        : std_logic := '0';
    signal rd_valid     : std_logic := '0';
    signal rd_underflow : std_logic := '0';
    signal rd_data      : std_logic_vector(31 downto 0) := (others => '0'); 
    
begin

    wr_data <= rx_data_i(41 downto 16) & rx_data_i(5 downto 0);
    
    trigger_data_fifo_inst : entity work.trigger_data_fifo
    port map(
        rst             => fifo_reset_i,
        wr_clk          => gtx_clk_i,
        wr_en           => rx_en_i,
        din             => wr_data,
        rd_clk          => ipb_clk_i,
        rd_en           => rd_en,
        valid           => rd_valid,
        underflow       => rd_underflow,
        dout            => rd_data,
        full            => open,
        empty           => open
    ); 
   
    process(ipb_clk_i)
        
        variable state              : integer range 0 to 3 := 0;
        
        variable data               : std_logic_vector(191 downto 0) := (others => '0');
    
        variable last_ipb_strobe    : std_logic := '0';
       
    begin
    
        if (rising_edge(ipb_clk_i)) then
        
            if (reset_i = '1') then
                
                ipb_ack <= '0';
                
                reset <= '0';
                
                rd_en <= '0';
                
                state := 0;
                
                last_ipb_strobe := '0';
                
            else 
            
                if (state = 0) then
                
                    reset <= '0';
                
                    ipb_ack <= '0';
                
                    if (ipb_mosi_i.ipb_strobe = '1' and last_ipb_strobe = '0') then
                    
                        rd_en <= '1';
                        
                        state := 1;
                            
                    end if;
                    
                elsif (state = 1) then
                
                    rd_en <= '0';
                    
                    if (rd_valid = '1') then
                    
                        ipb_data <= rd_data;
                        
                        state := 2;
                        
                    elsif (rd_underflow = '1') then
                    
                        ipb_data <= (others => '0');
                        
                        state := 2;
                        
                    end if;
                    
                elsif (state = 2) then
                
                    ipb_ack <= '1';
                    
                    state := 0;
                    
                else
                    
                    ipb_ack <= '0';
                    
                    reset <= '0';
                    
                    rd_en <= '0';
                    
                    state := 0;
                
                end if;
            
                last_ipb_strobe := ipb_mosi_i.ipb_strobe;
            
            end if;
        
        end if;
        
    end process;
    
    ipb_miso_o.ipb_err <= '0';
    ipb_miso_o.ipb_ack <= ipb_mosi_i.ipb_strobe and ipb_ack;
    ipb_miso_o.ipb_rdata <= ipb_data;
                            
end rtl;