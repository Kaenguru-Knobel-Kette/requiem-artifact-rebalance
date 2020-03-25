ScriptName TT_EbonyBlade Extends ActiveMagicEffect

DA08EbonyBladeTrackingScript Property EbonyBladeTracker Auto

Enchantment Property EbonyBladeEnch Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	ReapplyNonPersistentChanges.EbonyBladeScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	ReapplyNonPersistentChanges.EbonyBladeScript = None
EndEvent


Function RescaleEnchantment()
	EbonyBladeEnch.SetNthEffectMagnitude(0, EbonyBladeTracker.FriendsKilled)
EndFunction

Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction
