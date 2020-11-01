ScriptName REQ_Volendrung Extends ActiveMagicEffect

Enchantment Property VolendrungEnch Auto

Spell Property AttackSpeed Auto
Spell Property Description Auto

REQ_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(AttackSpeed, False)
	akTarget.AddSpell(Description, False)
	ReapplyNonPersistentChanges.VolendrungScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(AttackSpeed)
	akTarget.RemoveSpell(Description)
	ReapplyNonPersistentChanges.VolendrungScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	Actor Target = GetTargetActor()
	Target.RemoveSpell(AttackSpeed)
	Target.RemoveSpell(Description)
	RescaleEnchantment()
	Target.AddSpell(AttackSpeed, False)
	Target.AddSpell(Description, False)
EndFunction

Function RescaleEnchantment()
	Float EffectiveBaseHealth = Game.GetPlayer().GetBaseActorValue("Health") - 100
	If EffectiveBaseHealth < 0
		EffectiveBaseHealth = 0
	EndIf
	VolendrungEnch.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.25)
	VolendrungEnch.SetNthEffectMagnitude(1, EffectiveBaseHealth * 0.25)
	AttackSpeed.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.05)
	AttackSpeed.SetNthEffectMagnitude(1, EffectiveBaseHealth * 0.0005)
	Description.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.25)
EndFunction
