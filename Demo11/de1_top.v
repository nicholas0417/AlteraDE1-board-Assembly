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


reg [9:0] pixel_count;
reg [9:0] line_count;
reg VGA_HS,VGA_VS;
reg [9:0] X,Y,cnt;
wire ball;
reg vblank;
reg a;

clk_div2(CLOCK_50,1,w);
always@(posedge w)
begin
 if(line_count==520)
 line_count<=0;
 if(pixel_count==799)
  begin
   pixel_count<=0;
   line_count<=line_count+1;
  end
 else
 pixel_count<=pixel_count+1;
 
 if(pixel_count<640)
 X=pixel_count;
 if(751>=pixel_count && pixel_count>=656)
 VGA_HS=1'b0;
 else
 VGA_HS=1'b1;
 if(line_count<480)
 Y=line_count;
 if(491>=line_count && line_count>=490)
 VGA_VS=0;
 else
 VGA_VS=1;
 if(line_count>479)
  vblank<=1'b1;
 else
  vblank<=1'b0;
end



always@(posedge vblank)
begin
 if(a == 0 && cnt <=471)
 begin
  if(cnt==471)
	a<=1;
  else
    cnt<=cnt+1;
 end
 else if(a == 1 && cnt >= 0)
 begin
  if(cnt == 0)
   a<=0;
  else
   cnt<=cnt-1;
 end
end

put_ball(320,cnt,X,Y,ball);



assign VGA_R= ball?4'b1111:4'b0000;

assign VGA_G= ball?4'b0111:4'b0000;

assign VGA_B= ball?4'b111:4'b0000;

endmodule


module clk_div2(input clk,
 input rst_n,
 output reg o_clk);
 reg  cnt;
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

module ball_rom(rom_address,
 rom_data);
input [3:0] rom_address;
output [7:0] rom_data;
reg [7:0] rom_data;
// round ball image ROM
reg [7:0] rom_1d[8:0];
always @ (*)
begin
 rom_1d[ 0] = 8'b00111100; // * * * *
 rom_1d[ 1] = 8'b01111110; // * * * * * *
 rom_1d[ 2] = 8'b11111111; // * * * * * * * *
 rom_1d[ 3] = 8'b11111111; // * * * * * * * *
 rom_1d[ 4] = 8'b11111111; // * * * * * * * *
 rom_1d[ 5] = 8'b11111111; // * * * * * * * *
 rom_1d[ 6] = 8'b01111110; // * * * * * *
 rom_1d[ 7] = 8'b00111100; // * * * *
 rom_1d[ 8] = 8'b00000000;

 rom_data = rom_1d[rom_address];
end
endmodule

clk_div5m(CLOCK_50,SW[2],LEDG[2]);
reg[7:0]A;
always @(posedge LEDG[2])
A<=A+1;

assign HEX0 = (A[3:0]==4'b0000) ? 7'b1000000 : // 0
 (A[3:0]==4'b0001) ? 7'b1111001 : // 1
 (A[3:0]==4'b0010) ? 7'b0100100 : // 2
 (A[3:0]==4'b0011) ? 7'b0110000 : // 3
 (A[3:0]==4'b0100) ? 7'b0011001 : // 4
 (A[3:0]==4'b0101) ? 7'b0010010 : // 5
 (A[3:0]==4'b0110) ? 7'b0000010 : // 6
 (A[3:0]==4'b0111) ? 7'b1111000 : // 7
 (A[3:0]==4'b1000) ? 7'b0000000 : // 8
 (A[3:0]==4'b1001) ? 7'b0010000 : // 9
 (A[3:0]==4'b1010) ? 7'b0001000 : // A
 (A[3:0]==4'b1011) ? 7'b0000011 : // b
 (A[3:0]==4'b1100) ? 7'b1000110 : // C
 (A[3:0]==4'b1101) ? 7'b0100001 : // d
 (A[3:0]==4'b1110) ? 7'b0000110 : // E
 7'b0001110; // F
 
 assign HEX1 = (A[7:4]==4'b0000) ? 7'b1000000 : // 0
 (A[7:4]==4'b0001) ? 7'b1111001 : // 1
 (A[7:4]==4'b0010) ? 7'b0100100 : // 2
 (A[7:4]==4'b0011) ? 7'b0110000 : // 3
 (A[7:4]==4'b0100) ? 7'b0011001 : // 4
 (A[7:4]==4'b0101) ? 7'b0010010 : // 5
 (A[7:4]==4'b0110) ? 7'b0000010 : // 6
 (A[7:4]==4'b0111) ? 7'b1111000 : // 7
 (A[7:4]==4'b1000) ? 7'b0000000 : // 8
 (A[7:4]==4'b1001) ? 7'b0010000 : // 9
 (A[7:4]==4'b1010) ? 7'b0001000 : // A
 (A[7:4]==4'b1011) ? 7'b0000011 : // b
 (A[7:4]==4'b1100) ? 7'b1000110 : // C
 (A[7:4]==4'b1101) ? 7'b0100001 : // d
 (A[7:4]==4'b1110) ? 7'b0000110 : // E
 7'b0001110; // F
 endmodule
 module clk_div5m(input clk,input rst_n,output reg o_clk);
reg [22:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 4999999)
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt <2500000 ) 
 o_clk <= 0;
 else 
 o_clk <= 1;
end
endmodule
module put_ball(x_pos,
 y_pos,
 x, // VGA current x location
 y, // VGA current y location
 rom_mux_output);
input [9:0] x_pos;
input [9:0] y_pos;
input [9:0] y;
input [9:0] x;
output rom_mux_output;
wire [3:0] font_row;
wire [3:0] font_col;
wire [7:0] rom_data;
assign font_col = (x >= x_pos && x < (x_pos+10'd8)) ? x - x_pos :
 4'd8;
assign font_row = (y >= y_pos && y < (y_pos+10'd8)) ? y - y_pos :
 4'd8;

ball_rom u1(font_row, rom_data);
assign rom_mux_output = (font_col<4'd8) ? rom_data[4'd7-font_col] : 1'b0;

endmodule
/* ten
reg [13:0] A;
clk_div5M(CLOCK_50,1,w);
always @(posedge w)
begin
A=A+1; 
  if(!KEY[0])
     A[13:0]=0;
  if(!KEY[1])
     A[13:0]=14'b10001100000000;
  if(A[13:0]==14'b10001101011001)
     A[13:0]=0;
  if(A[11:8]==4'b1010)
     A[13:12]=A[13:12]+1;
  if(A[11:8]==4'b1010)
     A[11:8]=4'b0000;
  if(A[7:0]==8'b01011001)
     A[11:8]=A[11:8]+1'b1;
  if(A[7:0]==8'b01011001)
     A[7:0]=8'b00000000;
  if(A[3:0]==4'b1001)
     A[7:4]=A[7:4]+1'b1;
  if(A[3:0]==4'b1001)
     A[3:0]=4'b0000;
  
end

assign HEX0 = (A[3:0]==4'b0000) ? 7'b1000000 : // 0
 (A[3:0]==4'b0001) ? 7'b1111001 : // 1
 (A[3:0]==4'b0010) ? 7'b0100100 : // 2
 (A[3:0]==4'b0011) ? 7'b0110000 : // 3
 (A[3:0]==4'b0100) ? 7'b0011001 : // 4
 (A[3:0]==4'b0101) ? 7'b0010010 : // 5
 (A[3:0]==4'b0110) ? 7'b0000010 : // 6
 (A[3:0]==4'b0111) ? 7'b1111000 : // 7
 (A[3:0]==4'b1000) ? 7'b0000000 : // 8
  7'b0010000 ;// 9
  
 
assign HEX1 = (A[7:4]==4'b0000) ? 7'b1000000 : // 0
 (A[7:4]==4'b0001) ? 7'b1111001 : // 1
 (A[7:4]==4'b0010) ? 7'b0100100 : // 2
 (A[7:4]==4'b0011) ? 7'b0110000 : // 3
 (A[7:4]==4'b0100) ? 7'b0011001 : // 4
 (A[7:4]==4'b0101) ? 7'b0010010 : // 5
 (A[7:4]==4'b0110) ? 7'b0000010 : // 6
 (A[7:4]==4'b0111) ? 7'b1111000 : // 7
 (A[7:4]==4'b1000) ? 7'b0000000 : // 8
  7'b0010000 ; // 9
  
  
  assign HEX2 = (A[11:8]==4'b0000) ? 7'b1000000 : // 0
 (A[11:8]==4'b0001) ? 7'b1111001 : // 1
 (A[11:8]==4'b0010) ? 7'b0100100 : // 2
 (A[11:8]==4'b0011) ? 7'b0110000 : // 3
 (A[11:8]==4'b0100) ? 7'b0011001 : // 4
 (A[11:8]==4'b0101) ? 7'b0010010 : // 5
 (A[11:8]==4'b0110) ? 7'b0000010 : // 6
 (A[11:8]==4'b0111) ? 7'b1111000 : // 7
 (A[11:8]==4'b1000) ? 7'b0000000 : // 8
  7'b0010000 ; // 9
  
  
  assign HEX3 = (A[13:12]==2'b00) ? 7'b1000000 : // 0
 (A[13:12]==2'b01) ? 7'b1111001 : // 1
 (A[13:12]==2'b10) ? 7'b0100100 : // 2
  7'b0110000;
  
endmodule 


module clk_div50000000(input clk,input rst_n,output reg o_clk);
reg [25:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 49999999) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 25000000) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
endmodule

module clk_div5M(input clk,input rst_n,output reg o_clk);
reg [22:0]cnt;

always@(posedge clk or negedge rst_n)
begin
 if(!rst_n)
 cnt<=0;
 else if (cnt == 4999999) // 0 ~ 5M-1
 cnt<=0;
 else
 cnt<=cnt+1;
end
always@(posedge clk or negedge rst_n)
begin
 if(!rst_n)
 o_clk <= 0;
 else if(cnt<2500000) // 0~2500000
 o_clk<=0;
 else // 2500000~5M
 o_clk<=1;
end
endmodule*/

/* nine
reg [34:0] HELLO;
reg [6:0] R1,R2,R3,R4;
clk_div50M(CLOCK_50,1,b);
always@(posedge b)
begin
  if(!KEY[0])
  begin
  R4<=7'b1111111;
  R3<=7'b1111111;
  R2<=7'b1111111;
  R1<=7'b1111111;
  HELLO<=35'b00010010000110100011110001111000000;
  end
  else
  begin
  R4<=R3;
  R3<=R2;
  R2<=R1;
 // R1<=R4; //wrong
  R1<=HELLO[34:28];
  HELLO<={HELLO[27:0],HELLO[34:28]};
  end
end
assign HEX0=R1;
assign HEX1=R2;
assign HEX2=R3;
assign HEX3=R4;
endmodule

module clk_div50M(input clk,
 input rst_n,
 output reg o_clk);
 reg [25:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 49000000) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 25000000) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
endmodule*/

/* eight
reg[7:0]LEDG;
reg[9:0]LEDR;
clk_div5M(CLOCK_50,1,b);
always@(posedge b)
begin
    if(!KEY[1])
        LEDG[7:0]=8'b00000001;
    else
        LEDG<={LEDG[6:0],LEDG[7]};
end

always@(posedge b)
begin
    if(!KEY[1])
        LEDR[9:0]=10'b1000000000;
    else
        LEDR<={LEDR[0],LEDR[9:1]};
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
 else if (cnt == 4900000) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 2500000) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
    
endmodule
*/

/* six
clk_div50M (CLOCK_50,SW[0],LEDG[0]);
reg[7:0]A;
always @(posedge LEDG[0] )
begin
 A<=A+1;
 if (A[3:0]==4'b1001)
     A[3:0]<=4'b0000;
 if (A[3:0]==4'b1001)
     A[7:4]<=A[7:4]+1;
 if (A[7:0]==8'b01011001)
     A[7:4]<=4'b0000;
end


assign HEX0 = (A[3:0]==4'b0000) ? 7'b1000000 : // 0
  (A[3:0]==4'b0001) ? 7'b1111001 : // 1
  (A[3:0]==4'b0010) ? 7'b0100100 : // 2
  (A[3:0]==4'b0011) ? 7'b0110000 : // 3
  (A[3:0]==4'b0100) ? 7'b0011001 : // 4
  (A[3:0]==4'b0101) ? 7'b0010010 : // 5
  (A[3:0]==4'b0110) ? 7'b0000010 : // 6
  (A[3:0]==4'b0111) ? 7'b1111000 : // 7
  (A[3:0]==4'b1000) ? 7'b0000000 : // 8
  (A[3:0]==4'b1001) ? 7'b0010000 : // 9
  (A[3:0]==4'b1010) ? 7'b0001000 : // A
  (A[3:0]==4'b1011) ? 7'b0000011 : // b
  (A[3:0]==4'b1100) ? 7'b1000110 : // C
  (A[3:0]==4'b1101) ? 7'b0100001 : // d
  (A[3:0]==4'b1110) ? 7'b0000110 : // E
    7'b0001110; // F

assign HEX1 = (A[7:4]==4'b0000) ? 7'b1000000 : // 0
  (A[7:4]==4'b0001) ? 7'b1111001 : // 1
  (A[7:4]==4'b0010) ? 7'b0100100 : // 2
  (A[7:4]==4'b0011) ? 7'b0110000 : // 3
  (A[7:4]==4'b0100) ? 7'b0011001 : // 4
  (A[7:4]==4'b0101) ? 7'b0010010 : // 5
  (A[7:4]==4'b0110) ? 7'b0000010 : // 6
  (A[7:4]==4'b0111) ? 7'b1111000 : // 7
  (A[7:4]==4'b1000) ? 7'b0000000 : // 8
  (A[7:4]==4'b1001) ? 7'b0010000 : // 9
  (A[7:4]==4'b1010) ? 7'b0001000 : // A
  (A[7:4]==4'b1011) ? 7'b0000011 : // b
  (A[7:4]==4'b1100) ? 7'b1000110 : // C
  (A[7:4]==4'b1101) ? 7'b0100001 : // d
  (A[7:4]==4'b1110) ? 7'b0000110 : // E
    7'b0001110; // F
endmodule

module clk_div50M(input clk,
 input rst_n,
 output reg o_clk);
 reg [25:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 49000000) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 25000000) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
endmodule

/*
reg [7:0] counter ;
clk_div5M  (CLOCK_50,1,x);
always@(posedge x)
counter <= counter + 1 ;

assign HEX0 = (counter[3:0]==4'b0000) ? 7'b1000000 : // 0
  (counter[3:0]==4'b0001) ? 7'b1111001 : // 1
  (counter[3:0]==4'b0010) ? 7'b0100100 : // 2
  (counter[3:0]==4'b0011) ? 7'b0110000 : // 3
  (counter[3:0]==4'b0100) ? 7'b0011001 : // 4
  (counter[3:0]==4'b0101) ? 7'b0010010 : // 5
  (counter[3:0]==4'b0110) ? 7'b0000010 : // 6
  (counter[3:0]==4'b0111) ? 7'b1111000 : // 7
  (counter[3:0]==4'b1000) ? 7'b0000000 : // 8
  (counter[3:0]==4'b1001) ? 7'b0010000 : // 9
  (counter[3:0]==4'b1010) ? 7'b0001000 : // A
  (counter[3:0]==4'b1011) ? 7'b0000011 : // b
  (counter[3:0]==4'b1100) ? 7'b1000110 : // C
  (counter[3:0]==4'b1101) ? 7'b0100001 : // d
  (counter[3:0]==4'b1110) ? 7'b0000110 : // E
    7'b0001110; // F

  assign HEX1 = (counter[7:4]==4'b0000) ? 7'b1000000 : // 0
  (counter[7:4]==4'b0001) ? 7'b1111001 : // 1
  (counter[7:4]==4'b0010) ? 7'b0100100 : // 2
  (counter[7:4]==4'b0011) ? 7'b0110000 : // 3
  (counter[7:4]==4'b0100) ? 7'b0011001 : // 4
  (counter[7:4]==4'b0101) ? 7'b0010010 : // 5
  (counter[7:4]==4'b0110) ? 7'b0000010 : // 6
  (counter[7:4]==4'b0111) ? 7'b1111000 : // 7
  (counter[7:4]==4'b1000) ? 7'b0000000 : // 8
  (counter[7:4]==4'b1001) ? 7'b0010000 : // 9
  (counter[7:4]==4'b1010) ? 7'b0001000 : // A
  (counter[7:4]==4'b1011) ? 7'b0000011 : // b
  (counter[7:4]==4'b1100) ? 7'b1000110 : // C
  (counter[7:4]==4'b1101) ? 7'b0100001 : // d
  (counter[7:4]==4'b1110) ? 7'b0000110 : // E
    7'b0001110; // F

endmodule

module clk_div5M(input clk,
 input rst_n,
 output reg o_clk);
 reg [22:0] cnt;
always @(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 cnt <= 0;
 else if (cnt == 4900000) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 2500000) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
    
endmodule
*/

/* five
clk_div2  (CLOCK_50,SW[0],LEDG[0]);
clk_div10 (CLOCK_50,SW[1],LEDG[1]);
clk_div1M (CLOCK_50,SW[2],LEDG[2]);
clk_div5M (CLOCK_50,SW[3],LEDG[3]);
clk_div50M(CLOCK_50,SW[4],LEDG[4]);

endmodule

module clk_div2(input clk,
 input rst_n,
 output reg o_clk);
 reg  cnt;
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
 else if (cnt == 9) // 0 ~ 3
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 5) // 0~1
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
 else if (cnt == 999999) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 500000) // 0
 o_clk <= 0;
 else // 1
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
 else if (cnt == 4900000) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 2500000) // 0
 o_clk <= 0;
 else // 1
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
 else if (cnt == 49000000) // 0 ~ 1
 cnt <= 0;
 else
 cnt <= cnt + 1;
end
always@(posedge clk or negedge rst_n)
begin
 if (!rst_n)
 o_clk <= 0;
 else if (cnt < 25000000) // 0
 o_clk <= 0;
 else // 1
 o_clk <= 1;
end
endmodule
*/

/* four
 wire [7:0] B;
 assign B = SW[7:0] ;
 wire [7:0] a1,a2,a3,a4,a5,a6,a7;
 wire [7:0] s1,s2,s3,s4,s5,s6,s7;
 assign a1 = {1'b0,B[7:5]};
 add3(a1,s1);
 assign a2 = {s1[2:0],B[4]};
 add3(a2,s2);
 assign a3 = {s2[2:0],B[3]};
 add3(a3,s3);
 assign a6 = {1'b0,s1[3],s2[3],s3[3]};
 assign a4 = {s3[2:0],B[2]};
 add3(a6,s6);
 add3(a4,s4);
 assign a7 = {s6[2:0],s4[3]};
 assign a5 = {s4[2:0],B[1]};
 add3(a7,s7);
 add3(a5,s5);
 
 wire [9:0] P;
 assign P[9] = s6[3];
 assign P[8:5] = s7[3:0];
 assign P[4:1] = s5[3:0];
 assign P[0] = B[0];
 
 assign HEX0 = (P[3:0]==4'b0000) ? 7'b1000000 : // 0
  (P[3:0]==4'b0001) ? 7'b1111001 : // 1
  (P[3:0]==4'b0010) ? 7'b0100100 : // 2
  (P[3:0]==4'b0011) ? 7'b0110000 : // 3
  (P[3:0]==4'b0100) ? 7'b0011001 : // 4
  (P[3:0]==4'b0101) ? 7'b0010010 : // 5
  (P[3:0]==4'b0110) ? 7'b0000010 : // 6
  (P[3:0]==4'b0111) ? 7'b1111000 : // 7
  (P[3:0]==4'b1000) ? 7'b0000000 : // 8
    7'b0010000 ; // 9
    
assign HEX1 = (P[7:4]==4'b0000) ? 7'b1000000 : // 0
  (P[7:4]==4'b0001) ? 7'b1111001 : // 1
  (P[7:4]==4'b0010) ? 7'b0100100 : // 2
  (P[7:4]==4'b0011) ? 7'b0110000 : // 3
  (P[7:4]==4'b0100) ? 7'b0011001 : // 4
  (P[7:4]==4'b0101) ? 7'b0010010 : // 5
  (P[7:4]==4'b0110) ? 7'b0000010 : // 6
  (P[7:4]==4'b0111) ? 7'b1111000 : // 7
  (P[7:4]==4'b1000) ? 7'b0000000 : // 8
    7'b0010000 ; // 9
    
assign HEX2 = (P[9:8]==4'b0000) ? 7'b1000000 : // 0
  (P[9:8]==4'b0001) ? 7'b1111001 : // 1
  (P[9:8]==4'b0010) ? 7'b0100100 : // 2
  (P[9:8]==4'b0011) ? 7'b0110000 : // 3
  (P[9:8]==4'b0100) ? 7'b0011001 : // 4
  (P[9:8]==4'b0101) ? 7'b0010010 : // 5
  (P[9:8]==4'b0110) ? 7'b0000010 : // 6
  (P[9:8]==4'b0111) ? 7'b1111000 : // 7
  (P[9:8]==4'b1000) ? 7'b0000000 : // 8
    7'b0010000 ; // 9
    
assign HEX3 = 7'b1000000 ; // 0
 
 
 endmodule
 module add3(a, s);
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

/*
wire [7:0] binary;
assign binary = SW[7:0];
reg [3:0] Hun;
reg [3:0] Ten;
reg [3:0] One;

integer i;
always @(binary)
begin
	Hun = 4'b0;
	Ten = 4'b0;
	One = 4'b0;
	
	for(i=7;i>=0;i=i-1)
	begin
		if(Hun>=5)
			Hun = Hun + 3;
		if(Ten>=5)
			Ten = Ten + 3;
		if(One>=5)
			One = One + 3;
		
		Hun = Hun << 1;
		Hun[0] = Ten [3];
		Ten = Ten << 1;
		Ten[0] = One[3];
		One = One <<1;
		One[0] = binary[i];
	end
end

assign HEX0 = (One==4'b0000) ? 7'b1000000 : // 0
  (One==4'b0001) ? 7'b1111001 : // 1
  (One==4'b0010) ? 7'b0100100 : // 2
  (One==4'b0011) ? 7'b0110000 : // 3
  (One==4'b0100) ? 7'b0011001 : // 4
  (One==4'b0101) ? 7'b0010010 : // 5
  (One==4'b0110) ? 7'b0000010 : // 6
  (One==4'b0111) ? 7'b1111000 : // 7
  (One==4'b1000) ? 7'b0000000 : // 8
    7'b0010000 ; // 9
    
assign HEX1 = (Ten==4'b0000) ? 7'b1000000 : // 0
  (Ten==4'b0001) ? 7'b1111001 : // 1
  (Ten==4'b0010) ? 7'b0100100 : // 2
  (Ten==4'b0011) ? 7'b0110000 : // 3
  (Ten==4'b0100) ? 7'b0011001 : // 4
  (Ten==4'b0101) ? 7'b0010010 : // 5
  (Ten==4'b0110) ? 7'b0000010 : // 6
  (Ten==4'b0111) ? 7'b1111000 : // 7
  (Ten==4'b1000) ? 7'b0000000 : // 8
    7'b0010000 ; // 9
    
assign HEX2 = (Hun==4'b0000) ? 7'b1000000 : // 0
  (Hun==4'b0001) ? 7'b1111001 : // 1
  (Hun==4'b0010) ? 7'b0100100 : // 2
  (Hun==4'b0011) ? 7'b0110000 : // 3
  (Hun==4'b0100) ? 7'b0011001 : // 4
  (Hun==4'b0101) ? 7'b0010010 : // 5
  (Hun==4'b0110) ? 7'b0000010 : // 6
  (Hun==4'b0111) ? 7'b1111000 : // 7
  (Hun==4'b1000) ? 7'b0000000 : // 8
    7'b0010000 ; // 9
    
assign HEX3 = 7'b1000000 ; // 0
  
endmodule  *///Four myself

/* Third
wire [3:0] A, B;
wire [5:0] SUM;
assign A = SW[3:0];
assign B = SW[7:4];
assign SUM = {1'b0,A} + {1'b0,B} ;
 

 assign HEX0 = (A==4'b0000) ? 7'b1000000 : // 0
  (A==4'b0001) ? 7'b1111001 : // 1
  (A==4'b0010) ? 7'b0100100 : // 2
  (A==4'b0011) ? 7'b0110000 : // 3
  (A==4'b0100) ? 7'b0011001 : // 4
  (A==4'b0101) ? 7'b0010010 : // 5
  (A==4'b0110) ? 7'b0000010 : // 6
  (A==4'b0111) ? 7'b1111000 : // 7
  (A==4'b1000) ? 7'b0000000 : // 8
  (A==4'b1001) ? 7'b0010000 : // 9
  (A==4'b1010) ? 7'b0001000 : // A
  (A==4'b1011) ? 7'b0000011 : // b
  (A==4'b1100) ? 7'b1000110 : // C
  (A==4'b1101) ? 7'b0100001 : // d
  (A==4'b1110) ? 7'b0000110 : // E
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
    
 assign HEX2 = (SUM[4:0]==5'b00000) ? 7'b1000000 : // 0
  (SUM[4:0]==5'b00001) ? 7'b1111001 : // 1
  (SUM[4:0]==5'b00010) ? 7'b0100100 : // 2
  (SUM[4:0]==5'b00011) ? 7'b0110000 : // 3
  (SUM[4:0]==5'b00100) ? 7'b0011001 : // 4
  (SUM[4:0]==5'b00101) ? 7'b0010010 : // 5
  (SUM[4:0]==5'b00110) ? 7'b0000010 : // 6
  (SUM[4:0]==5'b00111) ? 7'b1111000 : // 7
  (SUM[4:0]==5'b01000) ? 7'b0000000 : // 8
  (SUM[4:0]==5'b01001) ? 7'b0010000 : // 9
  
  (SUM[4:0]==5'b01010) ? 7'b1000000 : // 0 A
  (SUM[4:0]==5'b01011) ? 7'b1111001 : // 1 B
  (SUM[4:0]==5'b01100) ? 7'b0100100 : // 2 C
  (SUM[4:0]==5'b01101) ? 7'b0110000 : // 3 D
  (SUM[4:0]==5'b01110) ? 7'b0011001 : // 4 E
  
  (SUM[4:0]==5'b01111) ? 7'b0010010 : // 5 F
  (SUM[4:0]==5'b10000) ? 7'b0000010 : // 6
  (SUM[4:0]==5'b10001) ? 7'b1111000 : // 7
  (SUM[4:0]==5'b10010) ? 7'b0000000 : // 8
  
  (SUM[4:0]==5'b10011) ? 7'b0010000 : // 9
  (SUM[4:0]==5'b10100) ? 7'b1000000 : // 0
  (SUM[4:0]==5'b10101) ? 7'b1111001 : // 1
  (SUM[4:0]==5'b10110) ? 7'b0100100 : // 2
  (SUM[4:0]==5'b10111) ? 7'b0110000 : // 3
  (SUM[4:0]==5'b11000) ? 7'b0011001 : // 4
  (SUM[4:0]==5'b11001) ? 7'b0010010 : // 5
  (SUM[4:0]==5'b11010) ? 7'b0000010 : // 6
  (SUM[4:0]==5'b11011) ? 7'b1111000 : // 7
  (SUM[4:0]==5'b11100) ? 7'b0000000 : // 8
  (SUM[4:0]==5'b11101) ? 7'b0010000 : // 9
    7'b1000000 ; // 0
  
  
 assign HEX3 = (SUM[4:0] < 5'b01010) ? 7'b1000000 : // 0
    (SUM[4:0]<5'b10100) ? 7'b1111001 : // 1
    (SUM[4:0]<5'b11110) ? 7'b0100100 : // 2 
      7'b0110000; //3
    
    endmodule
*/

/* Second
wire [3:0] A, B;
wire [4:0] SUM;
assign A = SW[3:0];
assign B = SW[7:4];
assign SUM = {1'b0,A} + {1'b0,B} ;
 

 assign HEX0 = (A==4'b0000) ? 7'b1000000 : // 0
  (A==4'b0001) ? 7'b1111001 : // 1
  (A==4'b0010) ? 7'b0100100 : // 2
  (A==4'b0011) ? 7'b0110000 : // 3
  (A==4'b0100) ? 7'b0011001 : // 4
  (A==4'b0101) ? 7'b0010010 : // 5
  (A==4'b0110) ? 7'b0000010 : // 6
  (A==4'b0111) ? 7'b1111000 : // 7
  (A==4'b1000) ? 7'b0000000 : // 8
  (A==4'b1001) ? 7'b0010000 : // 9
  (A==4'b1010) ? 7'b0001000 : // A
  (A==4'b1011) ? 7'b0000011 : // b
  (A==4'b1100) ? 7'b1000110 : // C
  (A==4'b1101) ? 7'b0100001 : // d
  (A==4'b1110) ? 7'b0000110 : // E
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
    
 assign HEX2 = (SUM[3:0]==4'b0000) ? 7'b1000000 : // 0
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

 assign HEX3 = (SUM[4]==1'b0) ? 7'b1000000 : // 0
    7'b1111001 ; // 1  
    
    endmodule
    
    */
    
/*First
  (SUM[4]==4'b0010) ? 7'b0100100 : // 2
  (SUM[4]==4'b0011) ? 7'b0110000 : // 3
  (SUM[4]==4'b0100) ? 7'b0011001 : // 4
  (SUM[4]==4'b0101) ? 7'b0010010 : // 5
  (SUM[4]==4'b0110) ? 7'b0000010 : // 6
  (SUM[4]==4'b0111) ? 7'b1111000 : // 7
  (SUM[4]==4'b1000) ? 7'b0000000 : // 8
  (SUM[4]==4'b1001) ? 7'b0010000 : // 9
  (SUM[4]==4'b1010) ? 7'b0001000 : // A
  (SUM[4]==4'b1011) ? 7'b0000011 : // b
  (SUM[4]==4'b1100) ? 7'b1000110 : // C
  (SUM[4]==4'b1101) ? 7'b0100001 : // d
  (SUM[4]==4'b1110) ? 7'b0000110 : // E
    7'b0001110; // F*/

