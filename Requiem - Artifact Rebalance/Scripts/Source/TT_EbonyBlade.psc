ScriptName TT_EbonyBlade Extends ActiveMagicEffect

DA08EbonyBladeTrackingScript Property EbonyBladeTracker Auto

Enchantment Property EbonyBladeEnch Auto

Spell Property Description Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(Description, False)
	ReapplyNonPersistentChanges.EbonyBladeScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(Description)
	ReapplyNonPersistentChanges.EbonyBladeScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	Actor Target = GetTargetActor()
	Target.RemoveSpell(Description)
	RescaleEnchantment()
	Target.AddSpell(Description, False)
EndFunction

Function RescaleEnchantment()
	EbonyBladeEnch.SetNthEffectMagnitude(0, EbonyBladeTracker.FriendsKilled)
	Description.SetNthEffectMagnitude(0, EbonyBladeTracker.FriendsKilled)
EndFunction
