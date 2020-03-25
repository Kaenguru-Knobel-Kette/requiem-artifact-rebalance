ScriptName TT_ReapplyNonPersistentChanges Extends ReferenceAlias

TT_Dawnbreaker Property DawnbreakerScript Auto
TT_EbonyBlade Property EbonyBladeScript Auto
TT_MaceOfMolagBal Property MaceOfMolagBalScript Auto
TT_Spellbreaker Property SpellbreakerScript Auto
TT_Volendrung Property VolendrungScript Auto


Event OnPlayerLoadGame()
	If DawnbreakerScript != None
		Debug.MessageBox("Reapplying Dawnbreaker")
		DawnbreakerScript.ReapplyNonPersistentChanges()
	EndIf
	If EbonyBladeScript != None
		Debug.MessageBox("Reapplying Ebony Blade")
		EbonyBladeScript.ReapplyNonPersistentChanges()
	EndIf
	If MaceOfMolagBalScript != None
		Debug.MessageBox("Reapplying Mace of Molag Bal")
		MaceOfMolagBalScript.ReapplyNonPersistentChanges()
	EndIf
	If SpellbreakerScript != None
		Debug.MessageBox("Reapplying Spellbreaker")
		SpellbreakerScript.ReapplyNonPersistentChanges()
	EndIf
	If VolendrungScript != None
		Debug.MessageBox("Reapplying Volendrung")
		VolendrungScript.ReapplyNonPersistentChanges()
	EndIf
EndEvent
