/***
 *      _          _        __   
 *     | |    __ _| |__    / /_  
 *     | |   / _` | '_ \  | '_ \ 
 *     | |__| (_| | |_) | | (_) |
 *     |_____\__,_|_.__/   \___/ 
 *                               
 */

/*

This example adds a few items to lab 5 to show how to read the touch screen and render some graphics.

Some important highlights ( and changes since lab 5!!)

1.)    The CPU Runs at 180MHz.
2.)    The Scatter file has this added at the end:

	LR_EROM1 0x10000000 0x010000000  {    ; load region size_region
  ER_EROM1 0x10000000 0x010000000  {  ; load address = execution address
   *.o (ExtFlashSection)
  }
}

This allows us to place variables (in our case graphics) in the external SPIFI flash memory

3.)  The Board.c file adds a void BOARD_InitSPIFI_ExternalFlash(void) function.  This initializes the SPIFI controller
4.)  The pin_mux.c file adds some call to config the SPI9 (SPIFI) pins, I2C and a GPIO for the touch controller chip
5.)  The file fsl_ft506.c/.h  were brought in from the touch cursor project to be able to read the touch screen.   I edited to FT5406_Init to include code from the APP_I2C_init function from the touch_cursor project.

6.)   I stripped out all of the audio FFT routines so you can see how to do some graphics calls to include bitmaps.   Make sure to read the Lab 6 handout to understand how .png image files are
converted into C data structures.
7.)   This example also shows how to use a different font
8.)    I make my own "slider" using the graphics primitives.  This should give you an idea of how to make a slider.  If you are smart you will figure out a good way to extend the code so you can make additional sliders/widgets

*/


#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_emc.h"
#include "pin_mux.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include "eGFX.h"
#include "eGFX_Driver.h"
#include "FONT_5_7_1BPP.h"

#include "pin_mux.h"
#include "fsl_device_registers.h"
#include "fsl_i2c.h"
#include "fsl_i2s.h"
#include "fsl_wm8904.h"
#include "Audio.h"
#include "fsl_iocon.h"
#include "fsl_common.h"
#include "clock_config.h"
#include "fsl_power.h"

#include "fsl_i2c.h"
#include "fsl_ft5406.h"

#include "LPC54608.h"
#include "system_LPC54608.h"
#include "LPC54608_features.h"
#include <stdlib.h>
#include <time.h>

#include "arm_math.h"
//Sprites_16BPP_565.h & .c are autogenerated by the eGFX_Tools program in the eGFX folder.  There is a .bat that runs this program.  All you have to do is put .png files into the "Sprites" folder and run the GenSprites.bat file.
#include "Sprites_16BPP_565.h"

//Fonts are made with the eGFX_Fontgen.exe file that is eGFX Folder.  See the lab handout for some instructions on how to generate fonts.

#include "OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP.h"
#include "Consolas__26px__Regular__AntiAliasGridFit_1BPP.h"
#include "Magneto__26px__Regular__AntiAliasGridFit_16BPP_565.h" 



 
 
 //Remeber, sprites are autogenerated by the eGFX_Tools.exe program (which we run with the GenSprites.bat file)



#define BUFFER_SIZE 256 // This needs to be the number of points you need for the FFT. We use a 256 point FFT


// This initialized array lists a non zero value for the leds that are part of the cross shape on the disk. This is used in pieChunks function
int crossLeds[256] = {1,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,48,0
	,0,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,70,0,0,0,0,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0,0,92,0,0,0,0,0,0,0,0,0,102,0,0,0,0,0,0,0,0,0,112,
	0,0,0,0,0,0,0,0,0,122,0,0,0,0,0,0,0,0,0,132,0,0,0,0,0,0,0,140,0,0,0,0,0,0,0,148,0,0,0,0,0,0,0,156,0,0,0,0,0,0,0,164,0,0,0,0,0,0,171,
  0,0,0,0,0,0,178,0,0,0,0,0,0,185,0,0,0,0,0,0,192,0,0,0,0,0,198,0,0,0,0,0,204,0,0,0,0,0,210,0,0,0,0,0,216,0,0,0,0,221,0,0,0,0,
  226,0,0,0,0,231,0,0,0,0,236,0,0,239,0,0,242,0,0,245,0,0,248,0,0,251,0,0,0,255};


	// Set pieChunks display as default.
int pC=1,s=0,l=0;
	// Pointers for audio buffers 
	volatile float * BackgroundRightBuffer;
volatile float * RightBuffer;

volatile float * BackgroundLeftBuffer;
volatile float * LeftBuffer;

uint32_t BackgroundBufferIdx = 0;

volatile float RightBuffer1[BUFFER_SIZE];
volatile float RightBuffer2[BUFFER_SIZE];

volatile float LeftBuffer1[BUFFER_SIZE];
volatile float LeftBuffer2[BUFFER_SIZE];

volatile uint32_t NextSampleOut = 0;

uint32_t BuffersCaptured = 0;
volatile uint32_t NextBufferReady = 0;


int Q = 20;
int U = 0;

uint16_t i;

int Array[1100]; // create an array for frames of data 256 Leds * 4 = 1024.. add some extra space
int *ledArray; // create pointer 
	int b=0,g=255,x=0,z=0;
float	powerSumL, powerSumM, powerSumH,powerAvgL=750, powerAvgM =750, powerAvgH =750;
float oldValL=0, oldValM, oldValH;
int sumIt=1, bass, mid, high;
//ledArray = &Array[0];

void Init_SPI() // Setting up the Xpresso for SPI.
{
	
	//If using FLEXCOMM9 you have to use SPI9, when using SPI.
	SYSCON->AHBCLKCTRLSET[2] = SYSCON_AHBCLKCTRL_FLEXCOMM9_MASK; // setting flexcomm9 LPC54608.h, Table 54
	
	
	SYSCON->FCLKSEL[9] = SYSCON_FCLKSEL_SEL(0); // Sets flexcomm9 clock to fro_12MHz, page 60 UM

// a. Reset FlexComm Interface
	
SYSCON-> PRESETCTRLSET[2] = SYSCON_PRESETCTRL_FC9_RST_MASK; // Using FlexComm 9 
SYSCON-> PRESETCTRLCLR[2] = SYSCON_PRESETCTRL_FC9_RST_MASK; // Latter comes from LPC54608.h

// b. Set SPI as Flexcomm interface function

FLEXCOMM9-> PSELID = FLEXCOMM_PSELID_PERSEL(2); // Page 321 table 342, Must be Flexcomm0-9

// c. Configure SPI and FIFO's for operation, must be in a specific order listed in User manual
	

	SPI9->CFG |= SPI_CFG_ENABLE(0);
	SPI9->FIFOCFG = SPI_FIFOCFG_ENABLETX(0); //Enables Tx for FIFO, table 376 
	SPI9->CFG = SPI_CFG_MASTER(1); //Sets SPI9 as SPI and puts in Master mode. SPI9???
	SPI9->FIFOCFG = SPI_FIFOCFG_ENABLETX(1);
	SPI9->CFG |= SPI_CFG_ENABLE(1);







// d2. Enable or disable the related Flexcomm Interface interrupts in the NVIC
			// we don't need any interrupts for this project

// d3. Configure the required Flexcomm Interface pin functions through IOCON
//Page 148-151 for function declaration IOCON_PIO_FUNC
SYSCON->AHBCLKCTRL[0] |= SYSCON_AHBCLKCTRL_IOCON(1);
IOCON-> PIO[3][20] = IOCON_PIO_FUNC(1) |  IOCON_PIO_FILTEROFF(1) | IOCON_PIO_DIGIMODE(1); // SCK pin FUNC: 1 for FC9_SCK
IOCON-> PIO[3][21] = IOCON_PIO_FUNC(1) |  IOCON_PIO_FILTEROFF(1) | IOCON_PIO_DIGIMODE(1); // MOSI pin FUNC: 1 for FC9_MOSI
//IOCON-> PIO[4][2] = IOCON_PIO_FUNC(0);//GPIO
SYSCON->AHBCLKCTRL[0] |= SYSCON_AHBCLKCTRL_IOCON(0);//Might need to comment these out
// e. Configure the Flexcomm Interface clock and SPI data rate



SPI9->DIV = SPI_DIV_DIVVAL(0); //Divides 12MHz clock by 3 for a data rate of 4MHz. SPI9????
SPI9->DLY = SPI_DLY_FRAME_DELAY(1); // not needed 


}

void delay(long int delayTime) // this delay function simply executes a for loop with nothing in it. 
{
	/*long pause;
	clock_t now,then;
	pause = milliseconds*(CLOCKS_PER_SEC/1000);
	now = then =clock();
	
	while(now-then<pause)
	{
		now = clock();
	}
	*/
	
	for(int i =0;i<delayTime;i++)
	{
		
	}
}



void showleds() // must call this after leds are set, so that the LEDs are displayed
{

	
	//Start frame
		for(i=0;i<4;i++)
	{
	
	SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00)| SPI_FIFOWR_RXIGNORE(1)| SPI_FIFOWR_LEN(7); 
 		delay(150);
	}
	
	// New updated led frame
	for(i=0;i<=1023;i+=4)
	{
		SPI9->FIFOWR = SPI_FIFOWR_TXDATA(*(ledArray +i) )| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);
	  delay(150);
		SPI9->FIFOWR = SPI_FIFOWR_TXDATA(*(ledArray +(i+1)))| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);
	  delay(150);
		SPI9->FIFOWR = SPI_FIFOWR_TXDATA(*(ledArray +(i+2)))| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);
	  delay(150);
		SPI9->FIFOWR = SPI_FIFOWR_TXDATA(*(ledArray +(i+3)))| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);
	  delay(150);
	
			
	}
	// End frame
		for(i=0;i<15;i++) //End frame needs to be as long as number of LEDs/2
	{
		
    SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00) | SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);  
		delay(100);
		
  }
}
void setLeds(uint16_t led, uint8_t brightness, uint8_t b,uint8_t g, uint8_t r) // This is where user data is stored 
{

	*(ledArray +(led*4)) = (0xE + brightness);
	*(ledArray +(led*4)+1) = b;
	*(ledArray +(led*4)+2) = g;
	*(ledArray +(led*4)+3) = r;
}


void clearDisk() // this clears the disk completely and resets all the data in array to 0;
{
	uint16_t i; // Has to be > 0-255 or else for loop runs forever.
	for(int i=0;i<1023;i+=4)
	{
	*(ledArray +i) = 0xE0;
	*(ledArray +i+1) = 0;
	*(ledArray +i+2) = 0;
	*(ledArray +i+3) = 0;
	}
		
		for(i=0;i<4;i++)
	{
	
	SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00)| SPI_FIFOWR_RXIGNORE(1)| SPI_FIFOWR_LEN(7); 
 		delay(100);
	}
	for(i=0;i<=255;i++)
{	
	
	SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0xE0)| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);
	delay(100);
	SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00)| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);//B
	delay(100);
	SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00)| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);//G
	delay(100);
	SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00)| SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7) ;//R
	delay(100);

}	
	
	for(i=0;i<15;i++) //End frame needs to be as long as number of LEDs/2
	{
		
    SPI9->FIFOWR = SPI_FIFOWR_TXDATA(0x00) | SPI_FIFOWR_RXIGNORE(1) | SPI_FIFOWR_LEN(7);  
		delay(100);
		
  }
	
}

void startUp() // You can make a cool start up design when the board is powered on... place it in here, be creative.
{
		for(int i=0;i<253;i++)
	{
	
		setLeds(i,31,0,255,0); // setLeds(led#, brightness, blue, green, red)
		setLeds(i+1,31,0,255,0);
		setLeds(i+2,31,0,255,0);
		setLeds(i+3,31,0,255,0);
		
		setLeds(255-i,20,255,0,0);
		setLeds(255-i-1,20,255,0,0);
		setLeds(255-i-2,20,255,0,0);
		setLeds(255-i-3,20,255,0,0);
		showleds();
		delay(100000);
		clearDisk();
		
	}
	
	
}

typedef union 
{
	uint32_t Data;
	int16_t Channel[2];
	
}I2S_FIFO_Data_t;
 
void FLEXCOMM6_DriverIRQHandler(void)
{
    if (I2S0->FIFOINTSTAT & I2S_FIFOINTSTAT_TXLVL_MASK)
    {
        /*
					NextSampleOut Holds the last value from the I2S RX Interrupt.
				  It is also ready in the "packed" FIFO format
			  */
				I2S0->FIFOWR = NextSampleOut;
		
				 /* Clear TX level interrupt flag */
        I2S0->FIFOSTAT = I2S_FIFOSTAT_TXLVL(1U);
		}
}

void FLEXCOMM7_DriverIRQHandler(void)
{
		register float LeftChannel;
		register float RightChannel;
	  I2S_FIFO_Data_t FIFO_Data; 
	
     /* Clear RX level interrupt flag */
     I2S1->FIFOSTAT = I2S_FIFOSTAT_RXLVL(1U);
	
	   /*
				Read the Recieve FIFO.   Data is packed as two samples in one 32-bit word.  We will immediately store the data
				in a variable that is used is the transmit routine to send incoming data back out.
		 */
	    FIFO_Data.Data = I2S1->FIFORD;
	    NextSampleOut = FIFO_Data.Data; //dump the data back out!
	   
	   LeftChannel = (float)(FIFO_Data.Channel[0])/32768.0f;
	   RightChannel = (float)(FIFO_Data.Channel[1])/32768.0f;
		 
		 BackgroundLeftBuffer[BackgroundBufferIdx] = LeftChannel;
		 BackgroundRightBuffer[BackgroundBufferIdx] = RightChannel;
		 
		BackgroundBufferIdx++;


if(BackgroundBufferIdx == BUFFER_SIZE)
		{
		
			if(BackgroundRightBuffer == RightBuffer1)
				{
					BackgroundRightBuffer = RightBuffer2;
					RightBuffer = RightBuffer1;
				}
				else
				{
					BackgroundRightBuffer = RightBuffer1;
					RightBuffer = RightBuffer2;
				}	
				
				if(BackgroundLeftBuffer == LeftBuffer1)
				{
					BackgroundLeftBuffer = LeftBuffer2;
					LeftBuffer = LeftBuffer1;
				}
				else
				{
					BackgroundLeftBuffer = LeftBuffer1;
					LeftBuffer = LeftBuffer2;
				}

				/*Set a flag to inidicate that the buffer is ready!*/
				if(NextBufferReady == 0)
					NextBufferReady = 1;
				
				
				
				/*Reset our index that will fill up the background buffer*/
	  		BackgroundBufferIdx=0;
				
			}	

}

void InitMicBuffers()
{
	for (int i=0;i<BUFFER_SIZE;i++)
	{
		LeftBuffer1[i] = 0;
		LeftBuffer2[i] = 0;
		RightBuffer1[i] = 0;
		RightBuffer2[i] = 0;
	}

	LeftBuffer = LeftBuffer1;
	RightBuffer = RightBuffer1;

	BackgroundLeftBuffer = LeftBuffer2;
	BackgroundRightBuffer = RightBuffer2;

	NextBufferReady = 0;
}

void pieChunks(int bass, float maxAmpM, float powerAvgM){ // Design 1 of 3 in this code
	
	if(bass == 2) // bass value comes from threshCompare function
		{
			
			setLeds(255,31,255,0,0);
			setLeds(248,31,255,0,0);
			setLeds(236,31,255,0,0);
			setLeds(216,31,255,0,0);
			setLeds(192,31,255,0,0);
			setLeds(164,31,255,0,0);
			setLeds(132,31,255,0,0);
			setLeds(92,31,255,0,0);
			setLeds(48,31,255,0,0);
			
			
			
			
			setLeds(239,31,255,0,0);
			setLeds(221,31,255,0,0);
			setLeds(198,31,255,0,0);
			setLeds(171,31,255,0,0);
			setLeds(140,31,255,0,0);
			setLeds(102,31,255,0,0);
			setLeds(59,31,255,0,0);
		


			setLeds(251,31,255,0,0);
			setLeds(242,31,255,0,0);
			setLeds(226,31,255,0,0);
			setLeds(204,31,255,0,0);
			setLeds(178,31,255,0,0);
			setLeds(148,31,255,0,0);
			setLeds(112,31,255,0,0);
			setLeds(70,31,255,0,0);
			
			
			
			setLeds(245,31,255,0,0);
			setLeds(231,31,255,0,0);
			setLeds(210,31,255,0,0);
			setLeds(185,31,255,0,0);
			setLeds(156,31,255,0,0);
			setLeds(122,31,255,0,0);
			setLeds(81,31,255,0,0);
		
		
			
			
		}
		else{
			setLeds(255,0,0,0,0);
			setLeds(248,0,0,0,0);
			setLeds(236,0,0,0,0);
			setLeds(216,0,0,0,0);
			setLeds(192,0,0,0,0);
			setLeds(164,0,0,0,0);
			setLeds(132,0,0,0,0);
			setLeds(92,0,0,0,0);
			setLeds(48,0,0,0,0);
			
			
			setLeds(239,0,0,0,0);
			setLeds(221,0,0,0,0);
			setLeds(198,0,0,0,0);
			setLeds(171,0,0,0,0);
			setLeds(140,0,0,0,0);
			setLeds(102,0,0,0,0);
			setLeds(59,0,0,0,0);
		

			setLeds(251,0,0,0,0);
			setLeds(242,0,0,0,0);
			setLeds(226,0,0,0,0);
			setLeds(204,0,0,0,0);
			setLeds(178,0,0,0,0);
			setLeds(148,0,0,0,0);
			setLeds(112,0,0,0,0);
			setLeds(70,0,0,0,0);
			
			
			setLeds(245,0,0,0,0);
			setLeds(231,0,0,0,0);
			setLeds(210,0,0,0,0);
			setLeds(185,0,0,0,0);
			setLeds(156,0,0,0,0);
			setLeds(122,0,0,0,0);
			setLeds(81,0,0,0,0);
		}
		
if(maxAmpM >1 ) // This if statement stops the powerAvgM from being scaled to noise which would cause the Disk to flucuate when no music is playing
{
	if(maxAmpM > powerAvgM*25)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 ) // this compares the led to the array initialized in the top of this .c file. If it is an
			{                    // an LED that is in the cross deisgn it won't overwrite it.
				if(i>=48 && i<93)
				{
					setLeds(i,31,7,248,0);
				}
				else if(i<132)
				{
					setLeds(i,31,7,248,0);
				}
				else if(i<164)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<192)
				{
					setLeds(i,31,255,0,247); //orange 
				}
				else if(i<216)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<236)
				{
					setLeds(i,31,200,10,0);
				}
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
			else
			{
			}
		}
	}
	else if(maxAmpM > powerAvgM*20)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 ) 
			{
				if(i>=48 && i<93)
				{
					setLeds(i,0,0,0,0);
				}
				else if(i<132)
				{
					setLeds(i,31,7,248,0);
				}
				else if(i<164)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<192)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<216)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<236)
				{
					setLeds(i,31,200,10,0);
				}
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
			else
			{
			}
		}
	}
	else if(maxAmpM > powerAvgM*15)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 )
			{
				if(i>=48 && i<93)
				{
					setLeds(i,0,0,0,0);
				}
				else if(i<132)
				{
					setLeds(i,0,0,0,0);
				}
				else if(i<164)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<192)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<216)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<236)
				{
					setLeds(i,31,200,10,0);
				}
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
			else
			{
			}
		}
	}
	else if(maxAmpM > powerAvgM*10)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 )
			{
				if(i>=48 && i<164)
				{
					setLeds(i,0,0,0,0);
				}
				else if(i<192)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<216)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<236)
				{
					setLeds(i,31,200,10,0);
				}
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
			else
			{
			}
		}
	}
	else if(maxAmpM > powerAvgM*5)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 )
			{
				if(i>=48 && i<192)
				{
					setLeds(i,0,0,0,0);
				}
				
				else if(i<216)
				{
					setLeds(i,31,255,0,247);
				}
				else if(i<236)
				{
					setLeds(i,31,200,10,0);
				}
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
			else
			{
			}
		}
	}
	else if(maxAmpM > powerAvgM)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 )
			{
				if(i>=48 && i<216)
				{
					setLeds(i,0,0,0,0);
				}
				
				else if(i<236)
				{
					setLeds(i,31,200,10,0);
				}
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
			else
			{
			}
		}
	}
else if(maxAmpM > powerAvgM)
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 )
			{
				if(i>=48 && i<236)
				{
					setLeds(i,0,0,0,0);
				}
				
				else{
					
					setLeds(i,31,200,10,0);
				}
			}
		
			else
			{
			}
		}
		}
	
	else
	{
		for(int i=48;i<=256;i++)
		{
			if(crossLeds[i]==0 )
			{
				if(i>=48 && i<256)
				{
					setLeds(i,0,0,0,0);
				}
			}
		}
	}
}
else
{
	clearDisk();
}
	
				if(x>=0 && x<255) // This is what causes the outer ring to always change color
				{
					x++;
					b++;
					g--;
				}
				if(x>=255 && x<510)
				{
					x++;
					b--;
					g++;
				}
				if(x==510)
				{
					x=0;
				}


					for(int i=0;i<48;i++)
					{
						
					setLeds(i,31,b,g,0);
					
					}
					
								


		showleds(); // This transmits the data that you have stored with the setLeds Function.
	delay(1000); // Make the lights a little slower for the eye. Notice this is not a certain value like 1000 microseconds, etc. *Look at delay function*
		//clearDisk();
					
	}
void lightning(float maxAmpL, float powerAvgL) // design 2 of 3
{

if (Q == 31)
{
	Q = 20;
}
if (U == 500)
{
	U = 0;
	Q++;
}


for (int i=248; i<=255; i++)
{
	setLeds(i,Q,255,0,200);
}

for (int i=216; i<=247; i++)
{
	setLeds(i,Q,255,0,200);
}

for (int i=164; i<=215; i++)
{
	setLeds(i,Q,255,200,0);
}

for (int i=92; i<=163; i++)
{
	setLeds(i,Q,200,255,0);
}

for (int i=0; i<=91; i++)
{
	setLeds(i,Q,255,0,200);
}


if(maxAmpL > powerAvgL*10)
{
	setLeds(255,31,255,255,255);
	setLeds(249,31,255,255,255);
	setLeds(248,31,255,255,255);
	setLeds(237,31,255,255,255);
	setLeds(219,31,255,255,255);
	setLeds(195,31,255,255,255);
	setLeds(167,31,255,255,255);
	setLeds(135,31,255,255,255);
	setLeds(96,31,255,255,255);
	setLeds(53,31,255,255,255);
	setLeds(6,31,255,255,255);

	setLeds(255,31,255,255,255);
	setLeds(250,31,255,255,255);
	setLeds(251,31,255,255,255);
	setLeds(240,31,255,255,255);
	setLeds(224,31,255,255,255);
	setLeds(201,31,255,255,255);
	setLeds(174,31,255,255,255);
	setLeds(144,31,255,255,255);
	setLeds(106,31,255,255,255);
	setLeds(63,31,255,255,255);
	setLeds(17,31,255,255,255);

	setLeds(255,31,255,255,255);
	setLeds(250,31,255,255,255);
	setLeds(251,31,255,255,255);
	setLeds(240,31,255,255,255);
	setLeds(224,31,255,255,255);
	setLeds(201,31,255,255,255);
	setLeds(174,31,255,255,255);
	setLeds(144,31,255,255,255);
	setLeds(106,31,255,255,255);
	setLeds(63,31,255,255,255);
	setLeds(17,31,255,255,255);

	setLeds(255,31,255,255,255);
	setLeds(252,31,255,255,255);
	setLeds(251,31,255,255,255);
	setLeds(244,31,255,255,255);
	setLeds(229,31,255,255,255);
	setLeds(207,31,255,255,255);
	setLeds(181,31,255,255,255);
	setLeds(151,31,255,255,255);
	setLeds(115,31,255,255,255);
	setLeds(74,31,255,255,255);
	setLeds(29,31,255,255,255);

	setLeds(255,31,255,255,255);
	setLeds(253,31,255,255,255);
	setLeds(252,31,255,255,255);
	setLeds(246,31,255,255,255);
	setLeds(233,31,255,255,255);
	setLeds(213,31,255,255,255);
	setLeds(188,31,255,255,255);
	setLeds(159,31,255,255,255);
	setLeds(125,31,255,255,255);
	setLeds(85,31,255,255,255);
	setLeds(41,31,255,255,255);
}

else if(maxAmpL > powerAvgL*8)
{
for (int i=216; i<=247; i+=2)
{
	setLeds(i,31,0,200,255);
}
}

else if(maxAmpL > powerAvgL*6)
{
for (int i=164; i<=215; i+=2)
{
	setLeds(i,31,0,200,255);
}
}

else if(maxAmpL > powerAvgL*4)
{
for (int i=92; i<=163; i+=2)
{
	setLeds(i,31,0,200,255);
}
}

else if(maxAmpL > powerAvgL*2)
{
for (int i=0; i<=91; i+=2)
{
	setLeds(i,31,0,200,255);
}
}
showleds();
}

void threshCompare(float maxAmpL, float maxAmpM, float maxAmpH) // compare current value with last value.
{
		if (maxAmpL > oldValL + 400)
		{
			bass = 2;
		}
		else if (maxAmpL > oldValL + 50)
		{
			bass = 1;
		}
	
		else {
			bass =0;
		}
		oldValL = maxAmpL;
		
		if(maxAmpM > oldValM +15)
		{
			mid = 1;
		}
		else {
			mid =0;
		}
		oldValM = maxAmpM;
		
		if(maxAmpH > oldValH + 15) // 500 needs to be adjusted to be variable
		{
			high = 1;
		}
		else {
			high =0;
		}
		oldValH = maxAmpH;
}

void stopLight(int bass, int mid, int high) // Design 3 of 3
{
	int n=31;
	while(n>26) // fade lights a little to allow for more time on.
	{
	if (bass !=0)
	{

		for(uint16_t i=216;i<256;i++)
		{
		setLeds(i,n,0,255,0);
			
		}
	}
	else
	{
		for(uint16_t i=216;i<256;i++)
		{
			setLeds(i,31,0,0,0);
		}
	
	}
	
		
	//light middle 3 yellow if med freq > ?
	if(mid ==1)
	{
		for(int i =132;i<216;i++)
		{
			setLeds(i,n,0,255,255);
		}
		
	}
	else{
		
		for(int i =132;i<216;i++)
		{
			setLeds(i,31,0,0,0);
		}
	}
	if(high == 1)
	{
		for(int i =0;i<132;i++)
		{
			setLeds(i,n,0,0,255);
		}
		
	}
	else{
		
		for(int i =0;i<132;i++)
		{
			setLeds(i,31,0,0,0);
		}
	}
	
	
	showleds();
	n--;
}
	//delay(100000);
}
arm_rfft_fast_instance_f32 MyFFT;

float	 FFT_RawDataOut[BUFFER_SIZE];

float  FFT_PowerSpectrum[BUFFER_SIZE];

	

int main(void)
{
		ledArray = Array; // set pointer ledarray = address of Array[0];
		
	 	Init_SPI(); //This is what sets up all the periphials for Flexcomm 9/SPI9, sets the clock, etc. 
	
		clearDisk(); // Call this just to make sure the disk is cleared at the beginning
	
		//startUp(); // edit this function for a cool start up deisgn. Uncomment this once you edit the function. 
	
		//Some temporary variables for reading the touch screen
  	int32_t x=10,y=10;
		
	 
	
		//some variables for the touch screen driver
    ft5406_handle_t touch_handle;
   
		touch_event_t touch_event;
	
	
    CLOCK_EnableClock(kCLOCK_InputMux);
		
    CLOCK_EnableClock(kCLOCK_Iocon);
	
    CLOCK_EnableClock(kCLOCK_Gpio0);
  
    CLOCK_EnableClock(kCLOCK_Gpio1);
		
    CLOCK_EnableClock(kCLOCK_Gpio2);
  
    CLOCK_EnableClock(kCLOCK_Gpio3);
			
    CLOCK_EnableClock(kCLOCK_Gpio4);
		
		CLOCK_EnableClock(kCLOCK_FlexComm2);
		

  	/* USART0 clock */
    CLOCK_AttachClk(BOARD_DEBUG_UART_CLK_ATTACH);

    /* Initialize the rest */
    BOARD_InitPins();
	
	
		/*
			 This function is implemented abocce.  This will get the CPU running at 180Mhz.
		*/
	
    BOARD_BootClock_PLL_RUN();
  
    BOARD_InitDebugConsole();

		//BOARD_BootClockRUN();

	/*
			There is a bunch of (16MB) of flash hooked up to the LPC54608 via a special interface called "SPIFI".
			we need to make sure it is initialized.   This is where all of the bitmap "sprites" are stored.
			SPIFI is a flash interface that is serial but appears like normal flash memory in the address space of LPC54608
	*/
		BOARD_InitSPIFI_ExternalFlash();
		

		/*
				
		IMPORTANT  

		The guts of this function is a bit different than the previous labs as the
		system clock frequency is now 180MHz.  we have to kick in additional dividers for the SDRAM
		to operate correctly.   You will need to the version in this lab if you are going to run at 180MHz.
		Just a warning if you are copying this project elsewhere.

		*/

		BOARD_InitSDRAM();

		/*
				
		IMPORTANT  

		The guts of this function is a bit different than the previous labs (labs 1 - 4) as the
		system clock frequency is now 180MHz.  we have to kick in additional dividers for the LCD.
		to operate correctly.   You will need to the version in this lab if you are going to run at 180MHz.
		Just a warning if you are copying this project elsewhere.

		*/

		eGFX_InitDriver();
	 
		InitMicBuffers();
		
    InitAudio_CODEC();


		
		FT5406_Init(&touch_handle,I2C2);
	
		arm_rfft_fast_init_f32(&MyFFT,256);
		
			float maxAmpL;
			float maxAmpM;
			float maxAmpH;
		//eGFX_Dump(&eGFX_BackBuffer);
		
		eGFX_ImagePlane_Clear(&eGFX_BackBuffer);
		
	//This is where the images and text are displayed onto the LCD 	
	
	eGFX_Blit(&eGFX_BackBuffer,
								15,  //x coordinate of where to put the monkey head
								35,																			 //y coordinate of where to put the monkey head
								&Sprite_16BPP_565_pie);	
			
			eGFX_Blit(&eGFX_BackBuffer,
								Sprite_16BPP_565_pie.SizeX + 30,  //x coordinate of where to put the monkey head
								35,																			 //y coordinate of where to put the monkey head
								&Sprite_16BPP_565_stop);
			
			eGFX_Blit(&eGFX_BackBuffer,
								Sprite_16BPP_565_stop.SizeX*2 +45,  //x coordinate of where to put the monkey head
								35,																			 //y coordinate of where to put the monkey head
								&Sprite_16BPP_565_light);	
			
			
				 
								
		eGFX_printf_Colored(&eGFX_BackBuffer,
													50,10,   //The x and y coordinate of where to draw the text.
													&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
													eGFX_RGB888_TO_RGB565(0,0,255),
													"pieChunks");
		
			
			eGFX_printf_Colored(&eGFX_BackBuffer,
													200,10,   //The x and y coordinate of where to draw the text.
													&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
													eGFX_RGB888_TO_RGB565(0,0,255),
													"stopLight");
													
				
			eGFX_printf_Colored(&eGFX_BackBuffer,
													354,10,   //The x and y coordinate of where to draw the text.
													&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
													eGFX_RGB888_TO_RGB565(0,0,255),
													"lightning");	

		
		eGFX_Dump(&eGFX_BackBuffer);    
		
		eGFX_ImagePlane_Clear(&eGFX_BackBuffer);
			
		
		while(1) // infinite while loop
		{		
			
						
			 //read in the x,y coordinate of the the touch sensor if there is a good reading.
        if (kStatus_Success == FT5406_GetSingleTouch(&touch_handle, &touch_event, &y, &x))
        {
					
					
            if (touch_event == kTouch_Contact)
            {
								//Check to see if we are in the slider area
							  if(	 x>=10 && x<=Sprite_16BPP_565_pie.SizeX + 10 
									&& y>15 && y<= Sprite_16BPP_565_pie.SizeY +15) // this is where you set the x and y range for the touch screen
								{																								// This is where you have to touch to activate pieChunks display. 
										//Store the Value															
											
									pC=1; // If pieChunks is pressed set this value to 1 and the rest to 0
									s=0;
									l=0;
														
																	
								}
								else if(	 x>=185 && x<=295 
									&& y>15 && y<= Sprite_16BPP_565_pie.SizeY +15)
								{
										//Store the Value
											
									pC=0;
									s=1; // if stopLight display is pressed set to 1 and rest to 0
									l=0;
									
											
											
								
									
									
								}
								else if(	 x>=335 && x<=450 
									&& y>15 && y<= Sprite_16BPP_565_pie.SizeY +15)
								{
										//Store the Value
												
									//	MonkeySliderPosition = x;
									pC=0;
									s=0;
									l=1; // if lightning is pressed set to 1 and rest to 0
								}
            }
						
						
        }
			
				if(NextBufferReady == 1)
			{
				 arm_rfft_fast_f32(&MyFFT,
													  (float *)RightBuffer,
													  FFT_RawDataOut,0);
														
				 arm_cmplx_mag_squared_f32(FFT_RawDataOut,
																	 FFT_PowerSpectrum,
																	 BUFFER_SIZE/2);
			
				//eGFX_ImagePlane_Clear(&eGFX_BackBuffer);
				
				for(int i=0;i<80;i++) // This is where we look through the FFT data. we chose to stop at bin 80, could go up to 256/2 = 128.
				{
						
								
														if(i>=0 && i<=2) // bins 0-2 are used for BASS or low frequencies in this project.
														{								// this is around 0-200Hz. 256 point FFT with sample rate of 32kHz.
															if(i==0)			// therefor each bin has a resolution of 32000/256/2 = 62.5 Hz.
															{
															maxAmpL = FFT_PowerSpectrum[0];
															powerSumL += FFT_PowerSpectrum[i];
															}
															if(FFT_PowerSpectrum[i]>maxAmpL) // if the next amplitude is greater than the previous then replace maxAmpL with that value
															{
																maxAmpL=FFT_PowerSpectrum[i];
																powerSumL += FFT_PowerSpectrum[i];
															}
														}
														if(i>2 && i<=25) // middle frequencies ~ 200-1.5Khz
														{
															if(i==3)
															{
															maxAmpM = FFT_PowerSpectrum[i];
															
																powerSumM += FFT_PowerSpectrum[i];
															}
															if(FFT_PowerSpectrum[i]>maxAmpM)
															{
																maxAmpM=FFT_PowerSpectrum[i];
																
															}
															powerSumM += FFT_PowerSpectrum[i];
														}
														if(i>25) // High ~3kHz to 6kHz.
														{
															if(i==26)
															{
															maxAmpH = FFT_PowerSpectrum[i];
																powerSumH += FFT_PowerSpectrum[i];
															}
															if(FFT_PowerSpectrum[i]>maxAmpH)
															{
																maxAmpH=FFT_PowerSpectrum[i];
																powerSumH += FFT_PowerSpectrum[i];
															}
														}
												
				}			
				
				
							
			if(sumIt ==50) // every 50 iterations find the power average of each of the three seperated ranges. 
				{					
					powerAvgM = powerSumM/1100;
					powerAvgH = powerSumH/3200;
					powerAvgL = powerSumL/150;
				
					powerSumL=0; // reset the powerSum variables to 0
					powerSumM=0;
					powerSumH=0;
					sumIt=1;
				}
							
		sumIt++;
														
				//eGFX_Dump(&eGFX_BackBuffer);
					
				NextBufferReady = 0;
		}
		
		threshCompare(maxAmpL, maxAmpM, maxAmpH);
		
		// Call the certain displays depending on what was pressed. Once turned on pieChunks is the default display.
		if(pC==1)
		{
			pieChunks(bass,maxAmpM,powerAvgM);
		}
		else if(s==1)
		{
			stopLight(bass,mid,high);
		}
		else if (l==1)
		{
			lightning(maxAmpL, powerAvgL);
		}
		
		
	}
				
				
			
		}




