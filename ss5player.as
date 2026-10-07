; Based on ssbpLib For HSP, Copyright (c) Web Technology Corp. (MIT).
; See THIRD_PARTY_NOTICES.md and upstream/LICENSE for notices and changes.
#uselib "SS5PlayerDll.dll"
#cfunc global SSPlayer_initlize			"SSPlayer_initlize"
#cfunc global SSPlayer_setFps				"SSPlayer_setFps"				int
#cfunc global SSPlayer_addData				"SSPlayer_addData"				str
#cfunc global SSPlayer_getPlayerNum		"SSPlayer_getPlayerNum"
#cfunc global SSPlayer_get_texureIndex		"SSPlayer_get_texureIndex" 		int
#cfunc global SSPlayer_get_texureName		"SSPlayer_get_texureName"		int,sptr
#cfunc global SSPlayer_play				"SSPlayer_play"					int,str,str
#cfunc global SSPlayer_update				"SSPlayer_update"
#cfunc global SSPlayer_get_partNum			"SSPlayer_get_partNum"			int
#cfunc global SSPlayer_get_partStatus		"SSPlayer_get_partStatus"		int,int,var
#cfunc global SSPlayer_setPosition			"SSPlayer_setPosition"			int,int,int
#cfunc global SSPlayer_setRotation			"SSPlayer_setRotation"			int,double,double,double
#cfunc global SSPlayer_setScale			"SSPlayer_setScale"				int,double,double
#cfunc global SSPlayer_setAlpha			"SSPlayer_setAlpha"				int,int
#cfunc global SSPlayer_setFlip				"SSPlayer_setFlip"				int,int,int
#cfunc global SSPlayer_pause				"SSPlayer_pause"				int
#cfunc global SSPlayer_resume				"SSPlayer_resume"				int
#cfunc global SSPlayer_setFrameNo			"SSPlayer_setFrameNo"			int,int
#cfunc global SSPlayer_getMaxFrame			"SSPlayer_getMaxFrame"			int
#cfunc global SSPlayer_getFrameNo			"SSPlayer_getFrameNo"			int
#cfunc global SSPlayer_get_namePartStatus	"SSPlayer_get_namePartStatus"	int,str,int,var
#cfunc global SSPlayer_Delete				"SSPlayer_Delete"