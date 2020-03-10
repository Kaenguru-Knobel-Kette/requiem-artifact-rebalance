ScriptName TT_Spellbreaker Extends ActiveMagicEffect

Spell Property Silence Auto
Spell Property SilenceCloak Auto
Spell Property Ward Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	Silence.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	SilenceCloak.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	Ward.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	akTarget.AddSpell(SilenceCloak, False)
	akTarget.AddSpell(Ward, False)
	ReapplyNonPersistentChanges.SpellbreakerScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(SilenceCloak)
	akTarget.RemoveSpell(Ward)
	ReapplyNonPersistentChanges.SpellbreakerScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	Silence.SetNthEffectMagnitude(0, DiseasesContracted * 50)
EndFunction
