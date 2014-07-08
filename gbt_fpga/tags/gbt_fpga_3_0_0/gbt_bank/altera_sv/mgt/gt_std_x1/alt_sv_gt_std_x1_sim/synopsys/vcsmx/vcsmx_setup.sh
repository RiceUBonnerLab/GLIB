
# (C) 2001-2014 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.1 162 win32 2014.03.27.14:10:44

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="alt_sv_gt_std_x1"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/13.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/alt_sv_gt_std_x1/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/stratixv_ver/
mkdir -p ./libraries/stratixv_hssi_ver/
mkdir -p ./libraries/stratixv_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/stratixv/
mkdir -p ./libraries/stratixv_hssi/
mkdir -p ./libraries/stratixv_pcie_hip/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                           -work altera_lnsim_ver     
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_atoms_ncrypt.v"          -work stratixv_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.v"                          -work stratixv_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_hssi_atoms_ncrypt.v"     -work stratixv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.v"                     -work stratixv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_pcie_hip_atoms_ncrypt.v" -work stratixv_pcie_hip_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.v"                 -work stratixv_pcie_hip_ver
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                 -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"             -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"                -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"             -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"          -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                     -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                               -work lpm                  
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                              -work lpm                  
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                            -work sgate                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                 -work sgate                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                  -work altera_mf            
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                             -work altera_mf            
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"               -work altera_lnsim         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.vhd"                        -work stratixv             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_components.vhd"                   -work stratixv             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_components.vhd"              -work stratixv_hssi        
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.vhd"                   -work stratixv_hssi        
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_components.vhd"          -work stratixv_pcie_hip    
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.vhd"               -work stratixv_pcie_hip    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/altera_xcvr_functions.sv"                -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_pcs.sv"                               -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_pcs_ch.sv"                            -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_pma.sv"                               -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_reconfig_bundle_to_xcvr.sv"           -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_reconfig_bundle_to_ip.sv"             -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_reconfig_bundle_merger.sv"            -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_rx_pma.sv"                            -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_tx_pma.sv"                            -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_tx_pma_ch.sv"                         -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_h.sv"                            -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_avmm_csr.sv"                     -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_avmm_dcd.sv"                     -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_avmm.sv"                         -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_data_adapter.sv"                 -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_native.sv"                       -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_xcvr_plls.sv"                         -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/alt_xcvr_resync.sv"                      -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_10g_rx_pcs_rbc.sv"               -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_10g_tx_pcs_rbc.sv"               -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_8g_rx_pcs_rbc.sv"                -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_8g_tx_pcs_rbc.sv"                -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_8g_pcs_aggregate_rbc.sv"         -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_common_pcs_pma_interface_rbc.sv" -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_common_pld_pcs_interface_rbc.sv" -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_pipe_gen1_2_rbc.sv"              -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_pipe_gen3_rbc.sv"                -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_rx_pcs_pma_interface_rbc.sv"     -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_rx_pld_pcs_interface_rbc.sv"     -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_tx_pcs_pma_interface_rbc.sv"     -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/sv_hssi_tx_pld_pcs_interface_rbc.sv"     -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/altera_xcvr_native_sv_functions_h.sv"    -work alt_sv_gt_std_x1
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_native_sv/altera_xcvr_native_sv.sv"                -work alt_sv_gt_std_x1
  vhdlan -xlrm          "$QSYS_SIMDIR/alt_sv_gt_std_x1.vhd"                                                                
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
