ScriptName TT_ReapplyNonPersistentChanges Extends ReferenceAlias

TT_Dawnbreaker Property DawnbreakerScript Auto
TT_DawnguardRuneWarAxe Property DawnguardRuneWarAxeScript Auto
TT_DawnguardRuneWarhammer Property DawnguardRuneWarhammerScript Auto
TT_EbonyBlade Property EbonyBladeScript Auto
TT_MaceOfMolagBal Property MaceOfMolagBalScript Auto
TT_MehrunesRazor Property MehrunesRazorScript Auto
TT_Spellbreaker Property SpellbreakerScript Auto
TT_Volendrung Property VolendrungScript Auto


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
	If SpellbreakerScript != None
		SpellbreakerScript.ReapplyNonPersistentChanges()
	EndIf
	If VolendrungScript != None
		VolendrungScript.ReapplyNonPersistentChanges()
	EndIf
EndEvent
