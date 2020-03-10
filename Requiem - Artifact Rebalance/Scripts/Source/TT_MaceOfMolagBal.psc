ScriptName TT_MaceOfMolagBal Extends ActiveMagicEffect

Enchantment Property MaceOfMolagBalEnch Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	ReapplyNonPersistentChanges.MaceOfMolagBalScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	ReapplyNonPersistentChanges.MaceOfMolagBalScript = None
EndEvent


Function RescaleEnchantment()
	Int SoulsTrapped = Game.QueryStat("Souls Trapped")
	MaceOfMolagBalEnch.SetNthEffectMagnitude(1, SoulsTrapped * 0.05)
	MaceOfMolagBalEnch.SetNthEffectMagnitude(2, SoulsTrapped * 0.1)
	MaceOfMolagBalEnch.SetNthEffectDuration(3, SoulsTrapped / 100)
EndFunction

Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction
