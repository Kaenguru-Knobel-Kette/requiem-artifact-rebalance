ScriptName TT_ReapplyNonPersistentChanges Extends ReferenceAlias

TT_MaceOfMolagBal Property MaceOfMolagBalScript Auto
TT_Spellbreaker Property SpellbreakerScript Auto


Event OnPlayerLoadGame()
	If SpellbreakerScript != None
		Debug.MessageBox("Reapplying Spellbreaker")
		SpellbreakerScript.ReapplyNonPersistentChanges()
	EndIf
	If MaceOfMolagBalScript != None
		Debug.MessageBox("Reapplying Mace of Molag Bal")
		MaceOfMolagBalScript.ReapplyNonPersistentChanges()
	EndIf
EndEvent
