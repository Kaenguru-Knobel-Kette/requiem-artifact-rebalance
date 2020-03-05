ScriptName TT_Spellbreaker Extends ActiveMagicEffect

Spell Property Silence Auto
Spell Property SilenceCloak Auto
Spell Property Ward Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	Silence.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	SilenceCloak.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	Ward.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	akTarget.AddSpell(SilenceCloak, False)
	akTarget.AddSpell(Ward, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(SilenceCloak)
	akTarget.RemoveSpell(Ward)
EndEvent

Event OnPlayerLoadGame()
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	Silence.SetNthEffectMagnitude(0, DiseasesContracted * 50)
EndEvent
