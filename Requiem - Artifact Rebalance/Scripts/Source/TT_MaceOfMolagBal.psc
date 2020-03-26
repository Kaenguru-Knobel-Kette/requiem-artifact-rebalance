ScriptName TT_MaceOfMolagBal Extends ActiveMagicEffect

Enchantment Property MaceOfMolagBalEnch Auto

Spell Property Description Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	UpdateDescription()
	akTarget.AddSpell(Description, False)
	ReapplyNonPersistentChanges.MaceOfMolagBalScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(Description)
	ReapplyNonPersistentChanges.MaceOfMolagBalScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction

Function RescaleEnchantment()
	Int SoulsTrapped = Game.QueryStat("Souls Trapped")
	MaceOfMolagBalEnch.SetNthEffectMagnitude(0, SoulsTrapped * 0.1)
	MaceOfMolagBalEnch.SetNthEffectMagnitude(1, SoulsTrapped * 0.1)
	MaceOfMolagBalEnch.SetNthEffectDuration(2, SoulsTrapped / 100)
EndFunction

Function UpdateDescription()
	Int SoulsTrapped = Game.QueryStat("Souls Trapped")
	Description.SetNthEffectMagnitude(0, SoulsTrapped * 0.1)
EndFunction
