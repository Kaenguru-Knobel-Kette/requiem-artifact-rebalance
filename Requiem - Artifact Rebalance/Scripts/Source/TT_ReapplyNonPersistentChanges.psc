ScriptName TT_ReapplyNonPersistentChanges Extends ReferenceAlias

TT_Spellbreaker Property SpellbreakerScript Auto


Event OnPlayerLoadGame()
	If SpellbreakerScript != None
		SpellbreakerScript.ReapplyNonPersistentChanges()
	EndIf
EndEvent
