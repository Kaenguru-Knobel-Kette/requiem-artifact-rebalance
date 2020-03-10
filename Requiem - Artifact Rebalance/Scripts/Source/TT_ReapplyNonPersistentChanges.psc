ScriptName TT_ReapplyNonPersistentChanges Extends ReferenceAlias

TT_MaceOfMolagBal Property MaceOfMolagBalScript Auto
TT_Spellbreaker Property SpellbreakerScript Auto


Event OnPlayerLoadGame()
	If SpellbreakerScript != None
		SpellbreakerScript.ReapplyNonPersistentChanges()
	EndIf
	If MaceOfMolagBalScript != None
		MaceOfMolagBalScript.ReapplyNonPersistentChanges()
	EndIf
EndEvent
