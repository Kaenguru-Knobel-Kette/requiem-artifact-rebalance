ScriptName TT_DawnguardRuneWarAxe Extends ActiveMagicEffect

Enchantment Property DawnguardRuneWarAxeEnch Auto

GlobalVariable Property UndeadKilledByWeapon Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	ReapplyNonPersistentChanges.DawnguardRuneWarAxeScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	ReapplyNonPersistentChanges.DawnguardRuneWarAxeScript = None
EndEvent


Function RescaleEnchantment()
	Float Magnitude = UndeadKilledByWeapon.GetValue()
	If Magnitude > 100
		Magnitude = 100
	EndIf
	DawnguardRuneWarAxeEnch.SetNthEffectMagnitude(1, Magnitude)
EndFunction

Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction
