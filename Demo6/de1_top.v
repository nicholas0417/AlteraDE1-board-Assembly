module de1_top
	(
		////////////////////	Clock Input	 	////////////////////	 
		CLOCK_24,						//	24 MHz
		CLOCK_27,						//	27 MHz
		CLOCK_50,						//	50 MHz
		EXT_CLOCK,						//	External Clock
		////////////////////	Push Button		////////////////////
		KEY,							//	Pushbutton[3:0]
		////////////////////	DPDT Switch		////////////////////
		SW,								//	Toggle Switch[9:0]
		////////////////////	7-SEG Dispaly	////////////////////
		HEX0,							//	Seven Segment Digit 0
		HEX1,							//	Seven Segment Digit 1
		HEX2,							//	Seven Segment Digit 2
		HEX3,							//	Seven Segment Digit 3
		////////////////////////	LED		////////////////////////
		LEDG,							//	LED Green[7:0]
		LEDR,							//	LED Red[9:0]
		////////////////////////	UART	////////////////////////
		UART_TXD,						//	UART Transmitter
		UART_RXD,						//	UART Receiver
		/////////////////////	SDRAM Interface		////////////////
		DRAM_DQ,						//	SDRAM Data bus 16 Bits
		DRAM_ADDR,						//	SDRAM Address bus 12 Bits
		DRAM_LDQM,						//	SDRAM Low-byte Data Mask 
		DRAM_UDQM,						//	SDRAM High-byte Data Mask
		DRAM_WE_N,						//	SDRAM Write Enable
		DRAM_CAS_N,						//	SDRAM Column Address Strobe
		DRAM_RAS_N,						//	SDRAM Row Address Strobe
		DRAM_CS_N,						//	SDRAM Chip Select
		DRAM_BA_0,						//	SDRAM Bank Address 0
		DRAM_BA_1,						//	SDRAM Bank Address 0
		DRAM_CLK,						//	SDRAM Clock
		DRAM_CKE,						//	SDRAM Clock Enable
		////////////////////	Flash Interface		////////////////
		FL_DQ,							//	FLASH Data bus 8 Bits
		FL_ADDR,						//	FLASH Address bus 22 Bits
		FL_WE_N,						//	FLASH Write Enable
		FL_RST_N,						//	FLASH Reset
		FL_OE_N,						//	FLASH Output Enable
		FL_CE_N,						//	FLASH Chip Enable
		////////////////////	SRAM Interface		////////////////
		SRAM_DQ,						//	SRAM Data bus 16 Bits
		SRAM_ADDR,						//	SRAM Address bus 18 Bits
		SRAM_UB_N,						//	SRAM High-byte Data Mask 
		SRAM_LB_N,						//	SRAM Low-byte Data Mask 
		SRAM_WE_N,						//	SRAM Write Enable
		SRAM_CE_N,						//	SRAM Chip Enable
		SRAM_OE_N,						//	SRAM Output Enable
		////////////////////	SD_Card Interface	////////////////
		SD_DAT,							//	SD Card Data
		SD_DAT3,						//	SD Card Data 3
		SD_CMD,							//	SD Card Command Signal
		SD_CLK,							//	SD Card Clock
		////////////////////	USB JTAG link	////////////////////
		TDI,  							// CPLD -> FPGA (data in)
		TCK,  							// CPLD -> FPGA (clk)
		TCS,  							// CPLD -> FPGA (CS)
                TDO,  							// FPGA -> CPLD (data out)
		////////////////////	I2C		////////////////////////////
		I2C_SDAT,						//	I2C Data
		I2C_SCLK,						//	I2C Clock
		////////////////////	PS2		////////////////////////////
		PS2_DAT,						//	PS2 Data
		PS2_CLK,						//	PS2 Clock
		////////////////////	VGA		////////////////////////////
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_R,   						//	VGA Red[3:0]
		VGA_G,	 						//	VGA Green[3:0]
		VGA_B,  						//	VGA Blue[3:0]
		////////////////	Audio CODEC		////////////////////////
		AUD_ADCLRCK,					//	Audio CODEC ADC LR Clock
		AUD_ADCDAT,						//	Audio CODEC ADC Data
		AUD_DACLRCK,					//	Audio CODEC DAC LR Clock
		AUD_DACDAT,						//	Audio CODEC DAC Data
		AUD_BCLK,						//	Audio CODEC Bit-Stream Clock
		AUD_XCK,						//	Audio CODEC Chip Clock
		////////////////////	GPIO	////////////////////////////
		GPIO_0,							//	GPIO Connection 0
		GPIO_1							//	GPIO Connection 1
	);

////////////////////////	Clock Input	 	////////////////////////
input	[1:0]	CLOCK_24;				//	24 MHz
input	[1:0]	CLOCK_27;				//	27 MHz
input			CLOCK_50;				//	50 MHz
input			EXT_CLOCK;				//	External Clock
////////////////////////	Push Button		////////////////////////
input	[3:0]	KEY;					//	Pushbutton[3:0]
////////////////////////	DPDT Switch		////////////////////////
input	[9:0]	SW;						//	Toggle Switch[9:0]
////////////////////////	7-SEG Dispaly	////////////////////////
output	[6:0]	HEX0;					//	Seven Segment Digit 0
output	[6:0]	HEX1;					//	Seven Segment Digit 1
output	[6:0]	HEX2;					//	Seven Segment Digit 2
output	[6:0]	HEX3;					//	Seven Segment Digit 3
////////////////////////////	LED		////////////////////////////
output	[7:0]	LEDG;					//	LED Green[7:0]
output	[9:0]	LEDR;					//	LED Red[9:0]
////////////////////////////	UART	////////////////////////////
output			UART_TXD;				//	UART Transmitter
input			UART_RXD;				//	UART Receiver
///////////////////////		SDRAM Interface	////////////////////////
inout	[15:0]	DRAM_DQ;				//	SDRAM Data bus 16 Bits
output	[11:0]	DRAM_ADDR;				//	SDRAM Address bus 12 Bits
output			DRAM_LDQM;				//	SDRAM Low-byte Data Mask 
output			DRAM_UDQM;				//	SDRAM High-byte Data Mask
output			DRAM_WE_N;				//	SDRAM Write Enable
output			DRAM_CAS_N;				//	SDRAM Column Address Strobe
output			DRAM_RAS_N;				//	SDRAM Row Address Strobe
output			DRAM_CS_N;				//	SDRAM Chip Select
output			DRAM_BA_0;				//	SDRAM Bank Address 0
output			DRAM_BA_1;				//	SDRAM Bank Address 0
output			DRAM_CLK;				//	SDRAM Clock
output			DRAM_CKE;				//	SDRAM Clock Enable
////////////////////////	Flash Interface	////////////////////////
inout	[7:0]	FL_DQ;					//	FLASH Data bus 8 Bits
output	[21:0]	FL_ADDR;				//	FLASH Address bus 22 Bits
output			FL_WE_N;				//	FLASH Write Enable
output			FL_RST_N;				//	FLASH Reset
output			FL_OE_N;				//	FLASH Output Enable
output			FL_CE_N;				//	FLASH Chip Enable
////////////////////////	SRAM Interface	////////////////////////
inout	[15:0]	SRAM_DQ;				//	SRAM Data bus 16 Bits
output	[17:0]	SRAM_ADDR;				//	SRAM Address bus 18 Bits
output			SRAM_UB_N;				//	SRAM High-byte Data Mask 
output			SRAM_LB_N;				//	SRAM Low-byte Data Mask 
output			SRAM_WE_N;				//	SRAM Write Enable
output			SRAM_CE_N;				//	SRAM Chip Enable
output			SRAM_OE_N;				//	SRAM Output Enable
////////////////////	SD Card Interface	////////////////////////
inout			SD_DAT;					//	SD Card Data
inout			SD_DAT3;				//	SD Card Data 3
inout			SD_CMD;					//	SD Card Command Signal
output			SD_CLK;					//	SD Card Clock
////////////////////////	I2C		////////////////////////////////
inout			I2C_SDAT;				//	I2C Data
output			I2C_SCLK;				//	I2C Clock
////////////////////////	PS2		////////////////////////////////
input		 	PS2_DAT;				//	PS2 Data
input			PS2_CLK;				//	PS2 Clock
////////////////////	USB JTAG link	////////////////////////////
input  			TDI;					// CPLD -> FPGA (data in)
input  			TCK;					// CPLD -> FPGA (clk)
input  			TCS;					// CPLD -> FPGA (CS)
output 			TDO;					// FPGA -> CPLD (data out)
////////////////////////	VGA			////////////////////////////
output			VGA_HS;					//	VGA H_SYNC
output			VGA_VS;					//	VGA V_SYNC
output	[3:0]	VGA_R;   				//	VGA Red[3:0]
output	[3:0]	VGA_G;	 				//	VGA Green[3:0]
output	[3:0]	VGA_B;   				//	VGA Blue[3:0]
////////////////////	Audio CODEC		////////////////////////////
inout			AUD_ADCLRCK;			//	Audio CODEC ADC LR Clock
input			AUD_ADCDAT;				//	Audio CODEC ADC Data
inout			AUD_DACLRCK;			//	Audio CODEC DAC LR Clock
output			AUD_DACDAT;				//	Audio CODEC DAC Data
inout			AUD_BCLK;				//	Audio CODEC Bit-Stream Clock
output			AUD_XCK;				//	Audio CODEC Chip Clock
////////////////////////	GPIO	////////////////////////////////
inout	[35:0]	GPIO_0;					//	GPIO Connection 0
inout	[35:0]	GPIO_1;					//	GPIO Connection 1

// Convert SW to 7-segment display in hex code



/*//practice2
wire [3:0] A, B;
wire [4:0] SUM;
assign A = SW[3:0];
assign B = SW[7:4];
assign SUM={1'b0,A}+{1'b0,B};

assign HEX0 = (SW[3:0]==4'b0000) ? 7'b1000000 : // 0
 (SW[3:0]==4'b0001) ? 7'b1111001 : // 1
 (SW[3:0]==4'b0010) ? 7'b0100100 : // 2
 (SW[3:0]==4'b0011) ? 7'b0110000 : // 3
 (SW[3:0]==4'b0100) ? 7'b0011001 : // 4
 (SW[3:0]==4'b0101) ? 7'b0010010 : // 5
 (SW[3:0]==4'b0110) ? 7'b0000010 : // 6
 (SW[3:0]==4'b0111) ? 7'b1111000 : // 7
 (SW[3:0]==4'b1000) ? 7'b0000000 : // 8
 (SW[3:0]==4'b1001) ? 7'b0010000 : // 9
 (SW[3:0]==4'b1010) ? 7'b0001000 : // A
 (SW[3:0]==4'b1011) ? 7'b0000011 : // b
 (SW[3:0]==4'b1100) ? 7'b1000110 : // C
 (SW[3:0]==4'b1101) ? 7'b0100001 : // d
 (SW[3:0]==4'b1110) ? 7'b0000110 : // E
 7'b0001110; // F
 
 assign HEX1 = (SW[7:4]==4'b0000) ? 7'b1000000 : // 0
 (SW[7:4]==4'b0001) ? 7'b1111001 : // 1
 (SW[7:4]==4'b0010) ? 7'b0100100 : // 2
 (SW[7:4]==4'b0011) ? 7'b0110000 : // 3
 (SW[7:4]==4'b0100) ? 7'b0011001 : // 4
 (SW[7:4]==4'b0101) ? 7'b0010010 : // 5
 (SW[7:4]==4'b0110) ? 7'b0000010 : // 6
 (SW[7:4]==4'b0111) ? 7'b1111000 : // 7
 (SW[7:4]==4'b1000) ? 7'b0000000 : // 8
 (SW[7:4]==4'b1001) ? 7'b0010000 : // 9
 (SW[7:4]==4'b1010) ? 7'b0001000 : // A
 (SW[7:4]==4'b1011) ? 7'b0000011 : // b
 (SW[7:4]==4'b1100) ? 7'b1000110 : // C
 (SW[7:4]==4'b1101) ? 7'b0100001 : // d
 (SW[7:4]==4'b1110) ? 7'b0000110 : // E
 7'b0001110; // F
 
 assign HEX2 = (SUM[3:0]==4'b0000)? 7'b1000000:
 (SUM[3:0]==4'b0001) ? 7'b1111001 : // 1
 (SUM[3:0]==4'b0010) ? 7'b0100100 : // 2
 (SUM[3:0]==4'b0011) ? 7'b0110000 : // 3
 (SUM[3:0]==4'b0100) ? 7'b0011001 : // 4
 (SUM[3:0]==4'b0101) ? 7'b0010010 : // 5
 (SUM[3:0]==4'b0110) ? 7'b0000010 : // 6
 (SUM[3:0]==4'b0111) ? 7'b1111000 : // 7
 (SUM[3:0]==4'b1000) ? 7'b0000000 : // 8
 (SUM[3:0]==4'b1001) ? 7'b0010000 : // 9
 (SUM[3:0]==4'b1010) ? 7'b0001000 : // A
 (SUM[3:0]==4'b1011) ? 7'b0000011 : // b
 (SUM[3:0]==4'b1100) ? 7'b1000110 : // C
 (SUM[3:0]==4'b1101) ? 7'b0100001 : // d
 (SUM[3:0]==4'b1110) ? 7'b0000110 : // E
 7'b0001110; // F
 
 assign HEX3 = (SUM[4]==1'b0) ? 7'b1000000 :
 7'b1111001;
      
endmodule*/

/*//practice3
wire [3:0] A, B;
wire [4:0] SUM;
assign A = SW[3:0];
assign B = SW[7:4];
assign SUM={1'b0,A}+{1'b0,B};

assign HEX0 = (SW[3:0]==4'b0000) ? 7'b1000000 : // 0
 (SW[3:0]==4'b0001) ? 7'b1111001 : // 1
 (SW[3:0]==4'b0010) ? 7'b0100100 : // 2
 (SW[3:0]==4'b0011) ? 7'b0110000 : // 3
 (SW[3:0]==4'b0100) ? 7'b0011001 : // 4
 (SW[3:0]==4'b0101) ? 7'b0010010 : // 5
 (SW[3:0]==4'b0110) ? 7'b0000010 : // 6
 (SW[3:0]==4'b0111) ? 7'b1111000 : // 7
 (SW[3:0]==4'b1000) ? 7'b0000000 : // 8
 (SW[3:0]==4'b1001) ? 7'b0010000 : // 9
 (SW[3:0]==4'b1010) ? 7'b0001000 : // A
 (SW[3:0]==4'b1011) ? 7'b0000011 : // b
 (SW[3:0]==4'b1100) ? 7'b1000110 : // C
 (SW[3:0]==4'b1101) ? 7'b0100001 : // d
 (SW[3:0]==4'b1110) ? 7'b0000110 : // E
 7'b0001110; // F
 
 assign HEX1 = (SW[7:4]==4'b0000) ? 7'b1000000 : // 0
 (SW[7:4]==4'b0001) ? 7'b1111001 : // 1
 (SW[7:4]==4'b0010) ? 7'b0100100 : // 2
 (SW[7:4]==4'b0011) ? 7'b0110000 : // 3
 (SW[7:4]==4'b0100) ? 7'b0011001 : // 4
 (SW[7:4]==4'b0101) ? 7'b0010010 : // 5
 (SW[7:4]==4'b0110) ? 7'b0000010 : // 6
 (SW[7:4]==4'b0111) ? 7'b1111000 : // 7
 (SW[7:4]==4'b1000) ? 7'b0000000 : // 8
 (SW[7:4]==4'b1001) ? 7'b0010000 : // 9
 (SW[7:4]==4'b1010) ? 7'b0001000 : // 10
 (SW[7:4]==4'b1011) ? 7'b0000011 : // 11
 (SW[7:4]==4'b1100) ? 7'b1000110 : // 12
 (SW[7:4]==4'b1101) ? 7'b0100001 : // 13
 (SW[7:4]==4'b1110) ? 7'b0000110 : // 14
 7'b0001110; // F
 
 assign HEX2 = (SUM[4:0]==5'b0000) ? 7'b1000000 : //0
 (SUM[4:0]==5'b00001) ? 7'b1111001:
 (SUM[4:0]==5'b00010) ? 7'b0100100: 
 (SUM[4:0]==5'b00011) ?7'b0110000:  
 (SUM[4:0]==5'b00100) ? 7'b0011001:  
 (SUM[4:0]==5'b00101) ? 7'b0010010:
 (SUM[4:0]==5'b00110) ? 7'b0000010:
 (SUM[4:0]==5'b00111) ? 7'b1111000:
 (SUM[4:0]==5'b01000) ? 7'b0000000:
 (SUM[4:0]==5'b01001) ? 7'b0010000:
 (SUM[4:0]==5'b01010) ? 7'b1000000:
 (SUM[4:0]==5'b01011) ? 7'b1111001:
 (SUM[4:0]==5'b01100) ? 7'b0100100:
 (SUM[4:0]==5'b01101) ? 7'b0110000:
 (SUM[4:0]==5'b01110) ? 7'b0011001:
 (SUM[4:0]==5'b01111) ? 7'b0010010:
 (SUM[4:0]==5'b10000) ? 7'b0000010:
 (SUM[4:0]==5'b10001) ? 7'b1111000:
 (SUM[4:0]==5'b10010) ? 7'b0000000:
 (SUM[4:0]==5'b10011) ? 7'b0010000:
 (SUM[4:0]==5'b10100) ? 7'b1000000:
 (SUM[4:0]==5'b10101) ? 7'b1111001:
 (SUM[4:0]==5'b10110) ? 7'b0100100:
 (SUM[4:0]==5'b10111) ? 7'b0110000:
 (SUM[4:0]==5'b11000) ? 7'b0011001:
 (SUM[4:0]==5'b11001) ? 7'b0010010:
 (SUM[4:0]==5'b11010) ? 7'b0000010:
 (SUM[4:0]==5'b11011) ? 7'b1111000:
 (SUM[4:0]==5'b11100) ? 7'b0000000:
 (SUM[4:0]==5'b11101) ? 7'b0010000:
 (SUM[4:0]==5'b11110) ? 7'b1000000:
 7'b1111001 ;  
 
 assign HEX3 = (SUM[4:1]==4'b1111) ?  7'b0110000 ://3
 (SUM[4:1]>= 4'b1010) ? 7'b0100100 ://2
 (SUM[4:1]>=4'b0101) ? 7'b1111001 ://1
 7'b1000000;
 
 endmodule*/

//practice4
/*
wire [7:0]B;
assign B=SW[7:0];
wire[3:0] a1,a2,a3,a4,a5,a6,a7;
wire[3:0] s1,s2,s3,s4,s5,s6,s7;
assign a1={1'b0,B[7:5]};
add3 c1(a1,s1);
assign a2={s1[2:0],B[4]};
add3 c2(a2,s2);
assign a3={s2[2:0],B[3]};
add3 c3(a3,s3);
assign a4={s3[2:0],B[2]};
add3 c4(a4,s4);
assign a5={s4[2:0],B[1]};
add3 c5(a5,s5);
assign a6={1'b0,s1[3],s2[3],s3[3]};
add3 c6(a6,s6);
assign a7={s6[2:0],s4[3]};
add3 c7(a7,s7);

wire [11:0]P;
assign P[11:8]={2'b0,s6[3],s7[3]};
assign P[7:4]={s7[2:0],s5[3]};
assign P[3:0]={s5[2:0],B[0]};

DisplayDigit H3(4'b0,HEX3);
DisplayDigit H2(P[11:8],HEX2);
DisplayDigit H1(P[7:4],HEX1);
DisplayDigit H0(P[3:0],HEX0);

endmodule

module DisplayDigit(HexIn, sevenSegOut);
 input [3:0] HexIn; // 4 bit input value
 output [6:0] sevenSegOut; // seven segment settings: sets each of the 7 segments to on or off
 assign sevenSegOut = (HexIn == 4'b0000) ? 7'b1000000: // 0
 (HexIn == 4'b0001) ? 7'b1111001: // 1
(HexIn == 4'b0010) ? 7'b0100100: // 2
(HexIn == 4'b0011) ? 7'b0110000: // 3
(HexIn == 4'b0100) ? 7'b0011001: // 4
(HexIn == 4'b0101) ? 7'b0010010: // 5
(HexIn == 4'b0110) ? 7'b0000010: // 6
(HexIn == 4'b0111) ? 7'b1111000: // 7
(HexIn == 4'b1000) ? 7'b0000000: // 8
(HexIn == 4'b1001) ? 7'b0010000: // 9
(HexIn == 4'b1010) ? 7'b0001000: // A
(HexIn == 4'b1011) ? 7'b0000011: // b
(HexIn == 4'b1100) ? 7'b1000110: // C
(HexIn == 4'b1101) ? 7'b0100001: // d
(HexIn == 4'b1110) ? 7'b0000110: // E
7'b0001110; // F
endmodule

module add3(a,s);
 input [3:0] a;
 output [3:0] s;
 reg [3:0] s;
 always @ (a)
 case (a)
 4'b0000: s <= 4'b0000; // 0
 4'b0001: s <= 4'b0001; // 1
 4'b0010: s <= 4'b0010; // 2
 4'b0011: s <= 4'b0011; // 3
 4'b0100: s <= 4'b0100; // 4
 4'b0101: s <= 4'b1000; // 5 to 8
 4'b0110: s <= 4'b1001; // 6 to 9
 4'b0111: s <= 4'b1010; // 7 to A
 4'b1000: s <= 4'b1011; // 8 to B
 4'b1001: s <= 4'b1100; // 9 to C
 default: s <= 4'b0000;
 endcase
endmodule
*/

clk_div2(CLOCK_50,SW[0],LEDG[0]);
clk_div10(CLOCK_50,SW[1],LEDG[1]);
clk_div1M(CLOCK_50,SW[2],LEDG[2]);
clk_div5M(CLOCK_50,SW[3],LEDG[3]);
clk_div50M(CLOCK_50,SW[4],LEDG[4]);
endmodule

module clk_div2(input clk,
 input rst_n,
 output reg o_clk);
reg cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 1) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 1) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
endmodule


module clk_div10(input clk,
 input rst_n,
 output reg o_clk);
reg [3:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 9) 
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 5) 
 o_clk <= 0;
 else // 2~3
 o_clk <= 1;
end
endmodule

module clk_div1M(input clk,
 input rst_n,
 output reg o_clk);
reg [19:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 999999) 
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 500000) 
 o_clk <= 0;
 else // 2~3
 o_clk <= 1;
end
endmodule

module clk_div5M(input clk,
 input rst_n,
 output reg o_clk);
reg [22:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 5000000) 
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 2499999) 
 o_clk <= 0;
 else // 2~3
 o_clk <= 1;
end
endmodule

module clk_div50M(input clk,
 input rst_n,
 output reg o_clk);
reg [25:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 49999999) 
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 25000000) 
 o_clk <= 0;
 else // 2~3
 o_clk <= 1;
end
endmodule
