ScriptName TT_Dawnbreaker Extends ActiveMagicEffect

Enchantment Property DawnbreakerEnch Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	ReapplyNonPersistentChanges.DawnbreakerScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	ReapplyNonPersistentChanges.DawnbreakerScript = None
EndEvent


Function RescaleEnchantment()
	Int UndeadKilled = Game.QueryStat("Undead Killed")
	DawnbreakerEnch.SetNthEffectMagnitude(1, UndeadKilled * 0.2)
	DawnbreakerEnch.SetNthEffectMagnitude(2, UndeadKilled / 10)
EndFunction

Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction
