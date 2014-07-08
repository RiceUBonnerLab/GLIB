--=================================================================================================--
--##################################   Package Information   ######################################--
--=================================================================================================--
--                                                                                         
-- Company:               CERN (PH-ESE-BE)                                                         
-- Engineer:              Manoel Barros Marin (manoel.barros.marin@cern.ch) (m.barros.marin@ieee.org)
--                                                                                                 
-- Project Name:          GBT-FPGA                                                                
-- Module Name:           Multi Gigabit Transceivers latency-optimized bitslip control 
--                                                                                                 
-- Language:              VHDL'93                                                                 
--                                                                                                   
-- Target Device:         Vendor agnostic                                                         
-- Tool version:                                                                    
--                                                                                                   
-- Revision:              3.0                                                                      
--
-- Description:           
--
-- Versions history:      DATE         VERSION   AUTHOR            DESCRIPTION
--
--                        26/10/2011   3.0       M. Barros Marin   First .vhd module definition
--
-- Additional Comments:                                                                               
--
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! IMPORTANT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !!                                                                                           !!
-- !! * The different parameters of the GBT Bank are set through:                               !!  
-- !!   (Note!! These parameters are vendor specific)                                           !!                    
-- !!                                                                                           !!
-- !!   - The MGT control ports of the GBT Bank module (these ports are listed in the records   !!
-- !!     of the file "<vendor>_<device>_gbt_bank_package.vhd").                                !! 
-- !!     (e.g. xlx_v6_gbt_bank_package.vhd)                                                    !!
-- !!                                                                                           !!  
-- !!   - By modifying the content of the file "<vendor>_<device>_gbt_bank_user_setup.vhd".     !!
-- !!     (e.g. xlx_v6_gbt_bank_user_setup.vhd)                                                 !! 
-- !!                                                                                           !! 
-- !! * The "<vendor>_<device>_gbt_bank_user_setup.vhd" is the only file of the GBT Bank that   !!
-- !!   may be modified by the user. The rest of the files MUST be used as is.                  !!
-- !!                                                                                           !!  
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--                                                                                                   
--=================================================================================================--
--#################################################################################################--
--=================================================================================================--

-- IEEE VHDL standard library:
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Custom libraries and packages:
use work.vendor_specific_gbt_bank_package.all;

--=================================================================================================--
--#######################################   Entity   ##############################################--
--=================================================================================================--

entity mgt_latopt_bitslipctrl is
   port (   
      
      --===============--
      -- Reset & Clock --
      --===============--    
      
      -- Reset:
      ---------
      
      RX_RESET_I                                : in  std_logic;
      
      -- Clock:
      ---------
      
      RX_WORDCLK_I                              : in  std_logic;
      
      --=========--
      -- Control --
      --=========--
      
      NUMBITSLIPS_I                             : in  std_logic_vector(GBTRX_BITSLIP_NBR_MSB downto 0);
      ENABLE_I                                  : in  std_logic;
      BITSLIP_O                                 : out std_logic;
      DONE_O                                    : out std_logic
      
   );
end mgt_latopt_bitslipctrl;

--=================================================================================================--
--####################################   Architecture   ###########################################-- 
--=================================================================================================--

architecture structural of mgt_latopt_bitslipctrl is

--=================================================================================================--
begin                 --========####   Architecture Body   ####========-- 
--=================================================================================================--
   
   --============================ User Logic =============================--
      
   main_process: process(RX_RESET_I, RX_WORDCLK_I)
      type stateT is (e0_idle, e1_bitslipOrFinish, e2_doBitslip, e3_waitNcycles);
      variable state                            : stateT;
      variable bitslips                         : unsigned(GBTRX_BITSLIP_NBR_MSB downto 0);
      variable counter                          : integer range 0 to GBTRX_BITSLIP_MIN_DLY - 1;   
   begin       
      if RX_RESET_I = '1' then      
         state                                  := e0_idle;
         bitslips                               := (others => '0');
         counter                                := 0;
         DONE_O                                 <= '0';
         BITSLIP_O                              <= '0';
      elsif rising_edge(RX_WORDCLK_I) then    
         -- Finite State Machine(FSM):    
         case state is     
            when e0_idle =>      
               if ENABLE_I = '1' then     
                  DONE_O                        <= '0';
                  state                         := e1_bitslipOrFinish;
                  bitslips                      := unsigned(NUMBITSLIPS_I);                  
               end if;     
            when e1_bitslipOrFinish =>                   
               if bitslips = 0 then    
                  DONE_O                        <= '1';
                  if ENABLE_I = '0' then     
                     state                      := e0_idle;
                  end if;        
               else     
                  state                         := e2_doBitslip;
                  bitslips                      := bitslips - 1;
               end if;                    
            when e2_doBitslip =>                   
               state                            := e3_waitNcycles;
               BITSLIP_O                        <= '1';            
            when e3_waitNcycles =>    
               BITSLIP_O                        <= '0';
               if counter = GBTRX_BITSLIP_MIN_DLY - 1 then
                  state                         := e1_bitslipOrFinish;
                  counter                       := 0;
               else     
                  counter                       := counter + 1;
               end if;
         end case;
      end if;
   end process;
   
   --=====================================================================--   
end structural;
--=================================================================================================--
--#################################################################################################--
--=================================================================================================--