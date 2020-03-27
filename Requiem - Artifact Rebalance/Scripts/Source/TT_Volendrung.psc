ScriptName TT_Volendrung Extends ActiveMagicEffect

Enchantment Property VolendrungEnch Auto

Spell Property AttackSpeed Auto
Spell Property Description Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	RescaleAttackSpeed()
	UpdateDescription()
	akTarget.AddSpell(AttackSpeed, False)
	akTarget.AddSpell(Description, False)
	ReapplyNonPersistentChanges.VolendrungScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(AttackSpeed)
	akTarget.RemoveSpell(Description)
	ReapplyNonPersistentChanges.VolendrungScript = None
EndEvent


Float Function GetEffectiveBaseHealth()
	Float EffectiveBaseHealth = Game.GetPlayer().GetBaseActorValue("Health") - 100
	If EffectiveBaseHealth < 0
		EffectiveBaseHealth = 0
	EndIf
	Return EffectiveBaseHealth
EndFunction

Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction

Function RescaleAttackSpeed()
	Float EffectiveBaseHealth = GetEffectiveBaseHealth()
	AttackSpeed.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.05)
	AttackSpeed.SetNthEffectMagnitude(1, EffectiveBaseHealth * 0.0005)
EndFunction

Function RescaleEnchantment()
	Float EffectiveBaseHealth = GetEffectiveBaseHealth()
	VolendrungEnch.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.25)
	VolendrungEnch.SetNthEffectMagnitude(1, EffectiveBaseHealth * 0.25)
EndFunction

Function UpdateDescription()
	Float EffectiveBaseHealth = GetEffectiveBaseHealth()
	Description.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.25)
EndFunction
