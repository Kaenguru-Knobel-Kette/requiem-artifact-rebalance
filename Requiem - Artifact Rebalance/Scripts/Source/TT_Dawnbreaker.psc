ScriptName TT_Dawnbreaker Extends ActiveMagicEffect

Enchantment Property DawnbreakerEnch Auto

Spell Property Description Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(Description, False)
	ReapplyNonPersistentChanges.DawnbreakerScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(Description)
	ReapplyNonPersistentChanges.DawnbreakerScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	Actor Target = GetTargetActor()
	Target.RemoveSpell(Description)
	RescaleEnchantment()
	Target.AddSpell(Description, False)
EndFunction

Function RescaleEnchantment()
	Int UndeadKilled = Game.QueryStat("Undead Killed")
	DawnbreakerEnch.SetNthEffectMagnitude(1, UndeadKilled * 0.2)
	DawnbreakerEnch.SetNthEffectMagnitude(2, UndeadKilled / 10)
	Description.SetNthEffectMagnitude(0, UndeadKilled * 0.2)
EndFunction
