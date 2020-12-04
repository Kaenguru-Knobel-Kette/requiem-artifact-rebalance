ScriptName REQ_ReapplyNonPersistentChanges Extends ReferenceAlias

REQ_Dawnbreaker Property DawnbreakerScript Auto
REQ_DawnguardRuneWarAxe Property DawnguardRuneWarAxeScript Auto
REQ_DawnguardRuneWarhammer Property DawnguardRuneWarhammerScript Auto
REQ_EbonyBlade Property EbonyBladeScript Auto
REQ_MaceOfMolagBal Property MaceOfMolagBalScript Auto
REQ_MehrunesRazor Property MehrunesRazorScript Auto
REQ_Volendrung Property VolendrungScript Auto


Event OnPlayerLoadGame()
	If DawnbreakerScript != None
		DawnbreakerScript.ReapplyNonPersistentChanges()
	EndIf
	If DawnguardRuneWarAxeScript != None
		DawnguardRuneWarAxeScript.ReapplyNonPersistentChanges()
	EndIf
	If DawnguardRuneWarhammerScript != None
		DawnguardRuneWarhammerScript.ReapplyNonPersistentChanges()
	EndIf
	If EbonyBladeScript != None
		EbonyBladeScript.ReapplyNonPersistentChanges()
	EndIf
	If MaceOfMolagBalScript != None
		MaceOfMolagBalScript.ReapplyNonPersistentChanges()
	EndIf
	If MehrunesRazorScript != None
		MehrunesRazorScript.ReapplyNonPersistentChanges()
	EndIf
	If VolendrungScript != None
		VolendrungScript.ReapplyNonPersistentChanges()
	EndIf
EndEvent
