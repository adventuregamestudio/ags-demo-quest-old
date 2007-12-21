//===================================================================
// *** AGS MODULE HEADER ***
//
// Module: MiniGame
//
// Author: Richard Jafarte (RickJ)
//
// Copyright (C) 2004-2006  Richard Jafarte 
//-------------------------------------------------------------------

//===================================================================
// Dependancies:
// The following constant definitions allow the compiler to check for
// module  dependencies and to issue appropiate error messages when a
// required module is not installed. There should be a definition for
// the current version and all previous compatiable versions. 
//-------------------------------------------------------------------
	// Define this module's version info
	#define MiniGame_VERSION 0104
	#define MiniGame_VERSION_0104

	// Check for correct AGS version
	#ifdef AGS_SUPPORTS_IFVER
	#ifnver 2.72
	#error Module ModuleName requires AGS V2.72 or above
	#endif
	#endif

	// Check for required modules/version 
	// #ifndef RequiredModuleName_VERSION_0200
	// #error Module ModuleName requires RequiredModuleName V2.00 or above
	// #endif

//===================================================================
// Configuration:
// The following constant definitions are used to modify the behavior
// of this module.  
//-------------------------------------------------------------------
	#define MiniGame_BUFSIZE				50
	#define MiniGame_STACKTOP				950
	#define MiniGame_STACKSIZE				20
	#define MiniGame_BLANKROOM				0


//===================================================================
// Return Values:
// The following constant definitions represent possible return value
// of functions contained in this module. 
//-------------------------------------------------------------------


//===================================================================
// Enumerated Types:
// The following enumerated data types are defined by this module. 
//-------------------------------------------------------------------
	enum MiniGame_Status {
		eMiniGame_Ok,
		eMiniGame_Err,
		eMiniGame_MiniFilenameErr,
		eMiniGame_MainFilenameErr,
		eMiniGame_MiniGameDatErr,
		eMiniGame_StackOverflowErr,
		eMiniGame_StackUnderflowErr,
		eMiniGame_Call,
		eMiniGame_Return,
		eMiniGame_Called,
		eMiniGame_Returning,
		eMiniGame_Done,
		eMiniGame_None
	};


//===================================================================
   struct MiniGame  {
//
// The  following  structure  contains the definition of a the static
// functions which comprise the MiniGame API.
//-------------------------------------------------------------------
	// Public Data

	// Public Static Methods - Main Game
//   import static function Call(String filename, int saveslot=100);
   import static function Call(String filename);
   import static function IsReturningFrom(String filename);

	// Public Static Methods - Mini Game
	import static function Return(int ask_first);
   import static function IsCalled();
   import static function SaveAllowed();

	// Public Static Methods - Main Game and Mini Game
	import static function iSet(String name, int value);
	import static function iGet(String name);
	import static function sSet(String name, String value);
	import static String   sGet(String name);

	// Public Methods

  	// Private Data

	// Private Methods
};	