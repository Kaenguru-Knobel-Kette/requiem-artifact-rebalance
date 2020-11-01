ScriptName REQ_DawnguardRuneWarhammer Extends ActiveMagicEffect

Enchantment Property DawnguardRuneWarhammerEnch Auto

GlobalVariable Property UndeadKilledByWeapon Auto

REQ_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	ReapplyNonPersistentChanges.DawnguardRuneWarhammerScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	ReapplyNonPersistentChanges.DawnguardRuneWarhammerScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction

Function RescaleEnchantment()
	Float Magnitude = UndeadKilledByWeapon.GetValue()
	If Magnitude > 100
		Magnitude = 100
	EndIf
	DawnguardRuneWarhammerEnch.SetNthEffectMagnitude(1, Magnitude)
EndFunction
