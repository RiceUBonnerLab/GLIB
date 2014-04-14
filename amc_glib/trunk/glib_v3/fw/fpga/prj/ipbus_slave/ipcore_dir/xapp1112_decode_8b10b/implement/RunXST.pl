#!xilperl

##-----------------------------------------------------------------------------
##
##  File Name   : RunXST.pl
##
##  Version     : 1.1
##
##  Last Update : 2008-10-31
##
##  Project     : 8b/10b Decoder Reference Design
##
##  Description : Perl script to synthesize the 8b/10b Decoder using XST
##
##  Company     : Xilinx, Inc.
##
##  DISCLAIMER OF LIABILITY
##
##                This file contains proprietary and confidential information of
##                Xilinx, Inc. ("Xilinx"), that is distributed under a license
##                from Xilinx, and may be used, copied and/or disclosed only
##                pursuant to the terms of a valid license agreement with Xilinx.
##
##                XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
##                ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
##                EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
##                LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
##                MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
##                does not warrant that functions included in the Materials will
##                meet the requirements of Licensee, or that the operation of the
##                Materials will be uninterrupted or error-free, or that defects
##                in the Materials will be corrected.  Furthermore, Xilinx does
##                not warrant or make any representations regarding use, or the
##                results of the use, of the Materials in terms of correctness,
##                accuracy, reliability or otherwise.
##
##                Xilinx products are not designed or intended to be fail-safe,
##                or for use in any application requiring fail-safe performance,
##                such as life-support or safety devices or systems, Class III
##                medical devices, nuclear facilities, applications related to
##                the deployment of airbags, or any other applications that could
##                lead to death, personal injury or severe property or
##                environmental damage (individually and collectively, "critical
##                applications").  Customer assumes the sole risk and liability
##                of any use of Xilinx products in critical applications,
##                subject only to applicable laws and regulations governing
##                limitations on product liability.
##
##                Copyright 2008 Xilinx, Inc.  All rights reserved.
##
##                This disclaimer and copyright notice must be retained as part
##                of this file at all times.
##
##-----------------------------------------------------------------------------
##
##  History
##
##  Date        Version   Description
##
##  10/31/2008  1.1       Initial release
##
##-----------------------------------------------------------------------------

 print "\nSynthesizing 8b\/10b Decoder Reference design using XST ...\n";

 #run XST
 system ("xst -ifn ./vhdl_xst.scr -ofn ./results/decode_8b10b.srp");

 #move XST output products to /results directory
 rename "xlnx_auto_0.ise", "results/xlnx_auto_0.ise";
 rename "xlnx_auto_0_xdb", "results/xlnx_auto_0_xdb";
 rename "xst", "results/xst";

 print "\nXST synthesis complete!\n";


