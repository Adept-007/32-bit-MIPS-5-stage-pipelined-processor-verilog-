`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 11:57:27
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test();
reg clk1,clk2;
integer k;
pipe_MIPS32 processor(clk1,clk2);
initial
 begin
        clk1=0; clk2=0;
        repeat(20)
        begin
        #5 clk1=1; #5 clk1=0;
        #5 clk2=1; #5 clk2=0;
        end
        end
 initial begin
 for(k=0;k<31;k=k+1)
 processor.REG_BANK[k]=k;
 
processor.MEMORY[0]=32'h2801000a;      //ADDI R1,R0,10  
processor.MEMORY[1]=32'h28020014;      //ADDI R2,R0,20 
processor.MEMORY[2]=32'h2803001e;      //ADDI R3,R0,30
processor.MEMORY[3]=32'h0ce77800;      //dummy
processor.MEMORY[4]=32'h0ce77800;      //dummy
processor.MEMORY[5]=32'h00222000;      //ADD R4,R1,R2
processor.MEMORY[6]=32'h0ce77800;      //dummy
processor.MEMORY[7]=32'h00832800;      //ADD R5,R4,R3
processor.MEMORY[8]=32'hfc000000;      //HLT
 
processor.HALTED=0;
processor.PC=0;
processor.TAKEN_BRANCH=0;
#280
  for(k=0;k<6;k=k+1)
  $display("R%d - %d",k,processor.REG_BANK[k]);
  end
  initial begin
  $dumpfile("mips32.vcd");
  $dumpvars(0,test);
  #300 $finish;
  end       
        
    
endmodule
