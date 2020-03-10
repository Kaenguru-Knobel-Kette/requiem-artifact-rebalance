ScriptName TT_Volendrung Extends ActiveMagicEffect

Enchantment Property VolendrungEnch Auto

GlobalVariable Property ParalysisChance Auto

Spell Property Flurry Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Float EffectiveBaseHealth = GetEffectiveBaseHealth()
	Flurry.SetNthEffectMagnitude(0, EffectiveBaseHealth * 0.05)
	Flurry.SetNthEffectMagnitude(1, EffectiveBaseHealth * 0.0005)
	akTarget.AddSpell(Flurry, False)
	ParalysisChance.SetValue(EffectiveBaseHealth * 0.5)
	RescaleEnchantment()
	ReapplyNonPersistentChanges.VolendrungScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(Flurry)
	ReapplyNonPersistentChanges.VolendrungScript = None
EndEvent


FLoat Function GetEffectiveBaseHealth()
	Float EffectiveBaseHealth = Game.GetPlayer().GetBaseActorValue("Health") - 100
	If EffectiveBaseHealth < 0
		EffectiveBaseHealth = 0
	EndIf
	Return EffectiveBaseHealth
EndFunction

Function RescaleEnchantment()
	Float EffectiveBaseHealth = GetEffectiveBaseHealth()
	VolendrungEnch.SetNthEffectMagnitude(1, EffectiveBaseHealth * 0.25)
EndFunction

Function ReapplyNonPersistentChanges()
	RescaleEnchantment()
EndFunction
