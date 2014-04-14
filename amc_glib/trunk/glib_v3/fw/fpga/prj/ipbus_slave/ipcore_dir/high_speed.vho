------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 1.12
--  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
--  /   /         Filename : high_speed.vhd
-- /___/   /\      
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Instantiation Template
-- Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard


--**************************Component Declarations*****************************


component high_speed 
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTXRESET_SPEEDUP    : integer   := 0 -- Set to 1 to speed up sim reset
);
port
(
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX0  (X0_Y0)

    ------------------------ Loopback and Powerdown Ports ----------------------
    GTX0_LOOPBACK_IN                        : in   std_logic_vector(2 downto 0);
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    GTX0_RXCHARISK_OUT                      : out  std_logic_vector(1 downto 0);
    GTX0_RXDISPERR_OUT                      : out  std_logic_vector(1 downto 0);
    GTX0_RXNOTINTABLE_OUT                   : out  std_logic_vector(1 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GTX0_RXCOMMADET_OUT                     : out  std_logic;
    GTX0_RXENMCOMMAALIGN_IN                 : in   std_logic;
    GTX0_RXENPCOMMAALIGN_IN                 : in   std_logic;
    ----------------------- Receive Ports - PRBS Detection ---------------------
    GTX0_PRBSCNTRESET_IN                    : in   std_logic;
    GTX0_RXENPRBSTST_IN                     : in   std_logic_vector(2 downto 0);
    GTX0_RXPRBSERR_OUT                      : out  std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTX0_RXDATA_OUT                         : out  std_logic_vector(15 downto 0);
    GTX0_RXRECCLK_OUT                       : out  std_logic;
    GTX0_RXUSRCLK2_IN                       : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX0_RXN_IN                             : in   std_logic;
    GTX0_RXP_IN                             : in   std_logic;
    --------------- Receive Ports - RX Loss-of-sync State Machine --------------
    GTX0_RXLOSSOFSYNC_OUT                   : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTX0_GTXRXRESET_IN                      : in   std_logic;
    GTX0_MGTREFCLKRX_IN                     : in   std_logic;
    GTX0_PLLRXRESET_IN                      : in   std_logic;
    GTX0_RXPLLLKDET_OUT                     : out  std_logic;
    GTX0_RXRESETDONE_OUT                    : out  std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    GTX0_TXCHARISK_IN                       : in   std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX0_TXDATA_IN                          : in   std_logic_vector(15 downto 0);
    GTX0_TXOUTCLK_OUT                       : out  std_logic;
    GTX0_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX0_TXN_OUT                            : out  std_logic;
    GTX0_TXP_OUT                            : out  std_logic;
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX0_GTXTXRESET_IN                      : in   std_logic;
    GTX0_TXRESETDONE_OUT                    : out  std_logic;
    --------------------- Transmit Ports - TX PRBS Generator -------------------
    GTX0_TXENPRBSTST_IN                     : in   std_logic_vector(2 downto 0);
    GTX0_TXPRBSFORCEERR_IN                  : in   std_logic;


    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX1  (X0_Y1)

    ------------------------ Loopback and Powerdown Ports ----------------------
    GTX1_LOOPBACK_IN                        : in   std_logic_vector(2 downto 0);
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    GTX1_RXCHARISK_OUT                      : out  std_logic_vector(1 downto 0);
    GTX1_RXDISPERR_OUT                      : out  std_logic_vector(1 downto 0);
    GTX1_RXNOTINTABLE_OUT                   : out  std_logic_vector(1 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GTX1_RXCOMMADET_OUT                     : out  std_logic;
    GTX1_RXENMCOMMAALIGN_IN                 : in   std_logic;
    GTX1_RXENPCOMMAALIGN_IN                 : in   std_logic;
    ----------------------- Receive Ports - PRBS Detection ---------------------
    GTX1_PRBSCNTRESET_IN                    : in   std_logic;
    GTX1_RXENPRBSTST_IN                     : in   std_logic_vector(2 downto 0);
    GTX1_RXPRBSERR_OUT                      : out  std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTX1_RXDATA_OUT                         : out  std_logic_vector(15 downto 0);
    GTX1_RXRECCLK_OUT                       : out  std_logic;
    GTX1_RXUSRCLK2_IN                       : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX1_RXN_IN                             : in   std_logic;
    GTX1_RXP_IN                             : in   std_logic;
    --------------- Receive Ports - RX Loss-of-sync State Machine --------------
    GTX1_RXLOSSOFSYNC_OUT                   : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTX1_GTXRXRESET_IN                      : in   std_logic;
    GTX1_MGTREFCLKRX_IN                     : in   std_logic;
    GTX1_PLLRXRESET_IN                      : in   std_logic;
    GTX1_RXPLLLKDET_OUT                     : out  std_logic;
    GTX1_RXRESETDONE_OUT                    : out  std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    GTX1_TXCHARISK_IN                       : in   std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX1_TXDATA_IN                          : in   std_logic_vector(15 downto 0);
    GTX1_TXOUTCLK_OUT                       : out  std_logic;
    GTX1_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX1_TXN_OUT                            : out  std_logic;
    GTX1_TXP_OUT                            : out  std_logic;
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX1_GTXTXRESET_IN                      : in   std_logic;
    GTX1_TXRESETDONE_OUT                    : out  std_logic;
    --------------------- Transmit Ports - TX PRBS Generator -------------------
    GTX1_TXENPRBSTST_IN                     : in   std_logic_vector(2 downto 0);
    GTX1_TXPRBSFORCEERR_IN                  : in   std_logic


);
end component;










    ----------------------------- The GTX Wrapper -----------------------------


    high_speed_i : high_speed
    generic map
    (
        WRAPPER_SIM_GTXRESET_SPEEDUP    =>      1
    )
    port map
    (
        --_____________________________________________________________________
        --_____________________________________________________________________
        --GTX0  (X0Y0)

        ------------------------ Loopback and Powerdown Ports ----------------------
        GTX0_LOOPBACK_IN                =>      ,
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        GTX0_RXCHARISK_OUT              =>      ,
        GTX0_RXDISPERR_OUT              =>      ,
        GTX0_RXNOTINTABLE_OUT           =>      ,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        GTX0_RXCOMMADET_OUT             =>      ,
        GTX0_RXENMCOMMAALIGN_IN         =>      ,
        GTX0_RXENPCOMMAALIGN_IN         =>      ,
        ----------------------- Receive Ports - PRBS Detection ---------------------
        GTX0_PRBSCNTRESET_IN            =>      ,
        GTX0_RXENPRBSTST_IN             =>      ,
        GTX0_RXPRBSERR_OUT              =>      ,
        ------------------- Receive Ports - RX Data Path interface -----------------
        GTX0_RXDATA_OUT                 =>      ,
        GTX0_RXRECCLK_OUT               =>      ,
        GTX0_RXUSRCLK2_IN               =>      ,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        GTX0_RXN_IN                     =>      ,
        GTX0_RXP_IN                     =>      ,
        --------------- Receive Ports - RX Loss-of-sync State Machine --------------
        GTX0_RXLOSSOFSYNC_OUT           =>      ,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        GTX0_GTXRXRESET_IN              =>      ,
        GTX0_MGTREFCLKRX_IN             =>      ,
        GTX0_PLLRXRESET_IN              =>      ,
        GTX0_RXPLLLKDET_OUT             =>      ,
        GTX0_RXRESETDONE_OUT            =>      ,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        GTX0_TXCHARISK_IN               =>      ,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        GTX0_TXDATA_IN                  =>      ,
        GTX0_TXOUTCLK_OUT               =>      ,
        GTX0_TXUSRCLK2_IN               =>      ,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        GTX0_TXN_OUT                    =>      ,
        GTX0_TXP_OUT                    =>      ,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTX0_GTXTXRESET_IN              =>      ,
        GTX0_TXRESETDONE_OUT            =>      ,
        --------------------- Transmit Ports - TX PRBS Generator -------------------
        GTX0_TXENPRBSTST_IN             =>      ,
        GTX0_TXPRBSFORCEERR_IN          =>      ,


        --_____________________________________________________________________
        --_____________________________________________________________________
        --GTX1  (X0Y1)

        ------------------------ Loopback and Powerdown Ports ----------------------
        GTX1_LOOPBACK_IN                =>      ,
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        GTX1_RXCHARISK_OUT              =>      ,
        GTX1_RXDISPERR_OUT              =>      ,
        GTX1_RXNOTINTABLE_OUT           =>      ,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        GTX1_RXCOMMADET_OUT             =>      ,
        GTX1_RXENMCOMMAALIGN_IN         =>      ,
        GTX1_RXENPCOMMAALIGN_IN         =>      ,
        ----------------------- Receive Ports - PRBS Detection ---------------------
        GTX1_PRBSCNTRESET_IN            =>      ,
        GTX1_RXENPRBSTST_IN             =>      ,
        GTX1_RXPRBSERR_OUT              =>      ,
        ------------------- Receive Ports - RX Data Path interface -----------------
        GTX1_RXDATA_OUT                 =>      ,
        GTX1_RXRECCLK_OUT               =>      ,
        GTX1_RXUSRCLK2_IN               =>      ,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        GTX1_RXN_IN                     =>      ,
        GTX1_RXP_IN                     =>      ,
        --------------- Receive Ports - RX Loss-of-sync State Machine --------------
        GTX1_RXLOSSOFSYNC_OUT           =>      ,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        GTX1_GTXRXRESET_IN              =>      ,
        GTX1_MGTREFCLKRX_IN             =>      ,
        GTX1_PLLRXRESET_IN              =>      ,
        GTX1_RXPLLLKDET_OUT             =>      ,
        GTX1_RXRESETDONE_OUT            =>      ,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        GTX1_TXCHARISK_IN               =>      ,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        GTX1_TXDATA_IN                  =>      ,
        GTX1_TXOUTCLK_OUT               =>      ,
        GTX1_TXUSRCLK2_IN               =>      ,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        GTX1_TXN_OUT                    =>      ,
        GTX1_TXP_OUT                    =>      ,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTX1_GTXTXRESET_IN              =>      ,
        GTX1_TXRESETDONE_OUT            =>      ,
        --------------------- Transmit Ports - TX PRBS Generator -------------------
        GTX1_TXENPRBSTST_IN             =>      ,
        GTX1_TXPRBSFORCEERR_IN          =>      


    );



    -----------------------Dedicated GTX Reference Clock Inputs ---------------
    -- Each dedicated refclk you are using in your design will need its own IBUFDS_GTXE1 instance
    
    q1_clk0_refclk_ibufds_i : IBUFDS_GTXE1
    port map
    (
        O                               =>      ,
        ODIV2                           =>      ,
        CEB                             =>      ,
        I                               =>      ,  -- Connect to package pin AD6
        IB                              =>        -- Connect to package pin AD5
    );











