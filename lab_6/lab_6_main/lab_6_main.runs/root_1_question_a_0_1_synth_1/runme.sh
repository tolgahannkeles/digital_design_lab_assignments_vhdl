#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/Xilinx/Vivado/2023.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2023.1/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2023.1/bin
else
  PATH=C:/Xilinx/Vivado/2023.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2023.1/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2023.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Users/tolga/Desktop/Projects/vivado/lab_6/lab_6_main/lab_6_main.runs/root_1_question_a_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log root_1_question_a_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source root_1_question_a_0_1.tcl
