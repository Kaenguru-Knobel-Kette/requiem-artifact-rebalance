ScriptName REQ_Spellbreaker Extends ActiveMagicEffect

Spell Property Silence Auto
Spell Property SilenceCloak Auto
Spell Property SpellAbsorb Auto

REQ_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(SilenceCloak, False)
	akTarget.AddSpell(SpellAbsorb, False)
	ReapplyNonPersistentChanges.SpellbreakerScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(SilenceCloak)
	akTarget.RemoveSpell(SpellAbsorb)
	ReapplyNonPersistentChanges.SpellbreakerScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	Silence.SetNthEffectMagnitude(0, DiseasesContracted * 50)
EndFunction


Function RescaleEnchantment()
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	Silence.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	SilenceCloak.SetNthEffectMagnitude(0, DiseasesContracted * 50)
	SpellAbsorb.SetNthEffectMagnitude(0, DiseasesContracted * 5)
EndFunction
