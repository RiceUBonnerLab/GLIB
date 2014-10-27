library ieee;
use ieee.std_logic_1164.all;
 
package user_package is

    --=== system options ========--
    constant sys_eth_p1_enable          : boolean := false;   
    constant sys_pcie_enable            : boolean := false;      

    --=== i2c master components ==--
    constant i2c_master_enable			: boolean := true;
    constant auto_eeprom_read_enable    : boolean := true;    

    --=== wishbone slaves ========--
    constant number_of_wb_slaves        : positive := 1;

    constant user_wb_regs               : integer := 0;
    constant user_wb_timer				: integer  := 1 ;


    --=== ipb slaves =============--
    constant number_of_ipb_slaves       : positive := 11;

    constant ipbus_vfat2_0              : integer := 0;
    constant ipbus_vfat2_1              : integer := 1;
    constant ipbus_vfat2_2              : integer := 2;
    
    constant ipbus_tracking_0           : integer := 3;
    constant ipbus_tracking_1           : integer := 4;
    constant ipbus_tracking_2           : integer := 5;
    
    constant ipbus_fast_signals         : integer := 6;
    
    constant ipbus_oh_registers_0       : integer := 7;
    constant ipbus_oh_registers_1       : integer := 8;
    constant ipbus_oh_registers_2       : integer := 9;
    
    constant ipbus_test                 : integer := 10;
  
   
    --=== Package types ==========--  
    constant def_gtx_idle               : std_logic_vector(7 downto 0) := x"00"; 
    constant def_gtx_vfat2              : std_logic_vector(7 downto 0) := x"01";  
    constant def_gtx_tracking           : std_logic_vector(7 downto 0) := x"02";  
    constant def_gtx_lv1a               : std_logic_vector(7 downto 0) := x"03";  
    constant def_gtx_calpulse           : std_logic_vector(7 downto 0) := x"04";  
    constant def_gtx_resync             : std_logic_vector(7 downto 0) := x"05";  
    constant def_gtx_bc0                : std_logic_vector(7 downto 0) := x"06";   
    constant def_gtx_oh_res             : std_logic_vector(7 downto 0) := x"07";  
    constant def_gtx_v_hres             : std_logic_vector(7 downto 0) := x"08";  
    constant def_gtx_v_bres             : std_logic_vector(7 downto 0) := x"09"; 
    constant def_gtx_oh_regs            : std_logic_vector(7 downto 0) := x"0A";  
    
end user_package;
   
package body user_package is
end user_package;