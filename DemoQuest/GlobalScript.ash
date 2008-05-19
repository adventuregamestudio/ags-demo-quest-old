//===================================================================
// *** AGS SCRIPT HEADER ***
//
// Project: DemoQuest3
//
// Project: Demo Quest 3
//          Source of Dreams
//
// Author:  Allan Menefe (Holister_Man)
//          Rick Jafrate (RickJ)    
//
// Abstarct
// The compiler  prepends the script  header to the Global Script and 
// each of the Room Scripts  before the  compilation process  begins.
// This allows constants, functions, variables, etc to  be accessible 
// to all scripts. Do not place functions  here; rather, place import 
// definitions and #define names here to be used by all scripts.
//
// Revision History
// 05-Mar-15 RickJ,        update for AGS 2.7
// 04-Dec-01 Holister_Man, original version derrived from DQII
//
// Copyright (c) 2005 by Chris Jones
//-------------------------------------------------------------------


//===================================================================
// Enumerated Data Types
//
// The enum keyword is used to define enumerated data types. Variables 
// having an enumerated data type have symbolic values rather than 
// numerical values.  Definitions of enumerated data types are kept in 
// the Script Header.  The name of an enumerated data type is in mixed 
// case characters with uppercase characters as word separators.
//-------------------------------------------------------------------


//===================================================================
// Room Enumerations (crm)
// 
// In AGS rooms are stored in files named RoomNNN.crm, where NNN is a 
// whole number 0 to 999. In the script code rooms are identified with 
// this number.  For example, to change to Room0.crm, the script would 
// need to execute a script statement such as "player.ChangeRoom(0)". 
//
// The following enumerated data type allows rooms to be given a
// descriptive name that can be used in place of a number. The above 
// example then becomes "player.ChangeRoom(crmSplashScreen=0)". This
// also has the advantage of being integrated with the Script Editor's
// auto-complete feature.  After typing the first three characters,
// "crm", a menu listing of all rooms defined below is presented, from
// which the desired room may be selected.
//-------------------------------------------------------------------
enum crm {
	crmInitialization=0, 
	crmSplashScreen=1, 
	crmDemoQuest3Menu=2, 
	crmIntroText=3, 
	crmCredits=9, 
	crmEmptyStreet=10, 
	crmDarsStreet=11, 
	crmTrashCanStreet=12, 
	crmBrokenCurbStreet=13,
	crmCrackInWall=14,
	crmEmptyRoom=15,
	crmFutureCity=16,
	crmAgsTerminal=17,
	crmDarsDoor=18,
	crmFactoryEntrance=30,
	crmFactoryAdvanced=31,
	crmFactoryArcade=32,
	crmFactoryLooping=33,
	crmFactoryHallOfGuis=34,
	crmFactoryMediaWing=35,
	crmWindowsHell=666,
	crmDarsInside=15,
	crmNone
};


//===================================================================
// Sound Enumerations (snd)
//
// The following enumerated data type allows sounds to be given names
// that can be used in place of an id number. 
//-------------------------------------------------------------------
enum snd {
	sndThunder01=1, 
	sndBeBop01=2, 
	sndBlipBlipBlip01=3,
	sndSpleep01=4,
	sndCowBell01=5,
	sndSplack01=6,
	sndFlowingWater01=7,
	sndInterlude01=8,
	sndComputer01=9,
	sndMotorRun01=10,
	sndBeeSpac01=11,
	sndDeek01=12,
	sndEvilLaugh01=13,
	sndFire02=14,
	sndGlassBreak01=15,
	sndDoorLock01=16,
	sndDoorOpen01=17,
	sndDoorClose01=18,
	sndTrashCan01=19,
	sndSquirrelMonkey01=20,
	sndTeeSwing01=21,
	sndKnock01=22,
	sndFootstepPorch01=23,
	sndOverHeadDoor01=24,
	sndNone
};


//===================================================================
// Music Enumerations (mus)
//
// The  following enumerated data type allows music to be given names
// that can be used in place of an id number. 
//-------------------------------------------------------------------
enum mus {
	musSpaceQuesty=0,
	musNone
};


//===================================================================
// Global Int Index Enumerations (gix)
//
// The  following  enumerated data type allow global ints to be given 
// descriptive names that can be used in place of numbers. If numbers
// are not specified, the compiler assigns them automatically.If only 
// the names are used to access  global ints then it is not necessary
// to know what the global index number actually is.  
//-------------------------------------------------------------------
enum gix {
	gixParserRoomSignal,
	gixFactoryDoorUnlocked=9,
	gixSpeakToRoger,
	gixOpenCircularDoor,
	gixAutosave100HasBeenRun,
	gixLecCursorModeStorage,
	gixNone
};


//===================================================================
// Global String Index Enumerations (gsx) 
//
// The following enumerated data type allow global strings to be given 
// descriptive names that can be used in place of numbers. 
//-------------------------------------------------------------------
enum gsx {
	gsxNone
};


//===================================================================
// Event Enumerations (evt)
//
// The following enumerated data type allows events to be given names
// that can be used in place of an id number. 
//-------------------------------------------------------------------
enum evt {
	evtStartConversation=100,
	evtEndConversation=200,
	evtEndConversationAndWait=300,
	evtOpenDoor=400,
	evtGivePoints10=500,
	evtBemanIgnoresYou=600,
	evtNone
};


//===================================================================
// Configuration Constants 
//
// In the C/C++ language it is common practice to us #define to create 
// configuration constants.  These constants are used instead of hard 
// coding numerical values in the source code.  The advantage is that 
// if these numbers ever need to be changed then the chnage can be made 
// in one place.  Suppose for example, it is envisioned that the
// implementation of a particular feature will require that data be 
// exchanged a number of array variables.  One could easily hard code 
// the array size in a statement like this "int foobar[100]". Now suppose 
// there are 20 or more foobars declared like this.  Now suppose, at some 
// point it is  determined the array size needs to be 200 instead of 100.  
// It will be necessary to find all foobar type decalarations and change 
// the array size.  In addition there may be places in the code where end 
// of array conditions are checked (i.e. while (I<100)) that will also 
// need to be changed.  If a configuration constant would have been used 
// then only one change would have been required.  
//
//   // Script Header
//   #define myARRAY_SIZE 200
//
//   // Any Room Script or Global Script
//   int i=0, foobar[myARRAY_SIZE];
//
//   while (i<myARRAY_SIZE) {
//      // Do something   
//      i++; 
//   }
//
// Configuration constants are named using upper case characters and 
// underscore, "_", as a word seperator.  A two or more character lower 
// case prefix is used to identify the module to which the constant applies.  
// If the constant applies to all scripts then it should be placed in the 
// Script Header.  If a constant applies only to one script then it can be 
// defined in that acript.  
//-------------------------------------------------------------------


//===================================================================
// Define System Terms
//
// A number of AGS functions return specific numerical values to 
// indicate success, failure, or some other result of the function's 
// execution. System terms are defined so that return status of 
// standard AGS functions can be symbolically evaluated.  A number of 
// suggested system terms are presented below.  Additional terms may 
// be added but they should be kept to a minimal number.  Rememeber, 
// they represent possible return status values of standard AGS 
// functions.  Use a single word in upper case characters, with no 
// prefix, to name these terms.   
//------------------------------------------------------------------
#define NONE                            -1
#define ERROR                           -1


//===================================================================
// Define Custom Terms
//
// Custom terms are simply symbolic values that can be used with int 
// or short data typed variables.  The actual numerical values are 
// not absolute as is the case with the above system terms and are 
// expected to change as new terms are added to the list.  Custom 
// terms are defined in the script header so that they can be used 
// in all scripts.  Custom terms are upper case characters, sinle 
// words, with no prefix.  The set of numerical values that may be 
// assigned to custom terms is -1000 to -32768.  This range of
// values was choosen because it lies outside the range of values 
// typically used by standard AGS functions.  Custom terms are 
// organized in alphabetical order.  Each letter of the alphabet 
// is assigned a base number; A is assigned to -1000, B to -2000, ... 
// and Z to -26000.  
//
//   // Script Header
//   #define A-Terms               -01000
//   #define ALERGIC               -01001
//   #define AUTOMATIC             -01002
//      : 
//   #define B-Terms               -02000
//      : 
//   #define Z-Terms               -26000
//
// For example, if APPLE is added to the list above, it would be 
// inserted between ALERGIC and AUTOMATIC and given a value of -01002.  
// New values are then assigned to the terms that come after APPLE 
// and begin with 'A'.  The values assigned to terms beginning with 
// other characters are unaffected. 
//
//   // Script Header
//   #define A-Terms               -01000
//   #define ALERGIC               -01001
//   #define APPLE                 -01002
//   #define AUTOMATIC             -01003
//
// Variables that use custom terms for their values should only be 
// used with the operators, "=", "!=", and "==".  Althouh this is not 
// enforced by the compiler, the use of other operators should be 
// avoided.
//
//    // Any Room Script or Global Script 
//   int foobar = APPLE;           
//   if (foobar==APPLE) {          
//   }
//   else if (foobar!=APPLE) {     
//   } 
//-------------------------------------------------------------------
#define A                               -01000

#define B                               -02000

#define C                               -03000
#define CLOSED                          -03001
#define CONVERSE                        -03002

#define D                               -04000

#define E                               -05000

#define F                               -06000

#define G                               -07000

#define H                               -08000

#define I                               -09000
#define IN                              -09001

#define J                               -10000

#define K                               -11000

#define L                               -12000
#define LOCKED                          -12001

#define M                               -13000

#define N                               -14000
#define NEXT                            -14001

#define O                               -15000
#define OPENED                          -15001
#define OUT                             -15002

#define P                               -16000

#define Q                               -17000

#define R                               -18000

#define S                               -19000

#define T                               -20000
#define TAKEN                           -20001
#define TOUCHED                         -20002

#define U                               -21000

#define V                               -22000

#define W                               -23000

#define XTerms                         -24000

#define YTerms                         -25000

#define ZTerms                         -26000


//===================================================================
// Location Macros 
//
// The following macros are provided for use with the character 
// function FaceLocation() or other functions that take x,y position 
// parameters. These macros give names to fixed locations so that these
// names may be substituted for x,y locations in the script. For 
// example to make the player character face the right side of the 
// screen one could put the following in the script.
//
//    player.FaceLocation(STAGE_RIGHT);
//-------------------------------------------------------------------
#define STAGE_RIGHT                      player.x+10,player.y
#define STAGE_LEFT                       player.x-10,player.y
#define STAGE_UP                         player.x,player.y-10
#define STAGE_DOWN                       player.x,player.y+10


//===================================================================
// Structure Definitions
//
// Structures provide  a means of creating a custom or composite data 
// type. Structures are collections of variables and/or functions and
// are, in this respect, similar to objects in languages such as C++,
// Java, etc (not to be confused with AGS's room objects). Structures
// used in  this  game  are  defined  below and are to be named using 
// Camel Notation.
//-------------------------------------------------------------------
struct AgsTerminal {
   // Public members
	writeprotected int DoorSpr;		// Sprite to display behind door
	writeprotected int CrackSpr;		// Sprite to display in wall gap
	writeprotected int Exists;			// True if room actually exists
	writeprotected int X;				// Player position in new room 
	writeprotected int Y;
	import function Set(int DoorSpr, int CrackSpr, int X, int Y, int Exists=true);
};


//===================================================================
// Global Variables
//-------------------------------------------------------------------
import int BemanIgnoresYou;
import int AgsTermLocation;
import int AgsTermRequired;
import int AgsTermId[10];
import AgsTerminal AgsTerm[1000];


//===================================================================
// Global Functions
//-------------------------------------------------------------------
import function ListMiniGames(String title, String filemask, int show);
// Automatically converted interaction variables
import int IntVar_Global_1;
