ScriptName REQ_Spellbreaker Extends ActiveMagicEffect

Spell Property SpellAbsorb Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(SpellAbsorb, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(SpellAbsorb)
EndEvent


Function RescaleEnchantment()
	Int DiseasesContracted = Game.QueryStat("Diseases Contracted")
	SpellAbsorb.SetNthEffectMagnitude(0, DiseasesContracted * 5)
	SpellAbsorb.SetNthEffectMagnitude(1, DiseasesContracted * 5)
EndFunction
