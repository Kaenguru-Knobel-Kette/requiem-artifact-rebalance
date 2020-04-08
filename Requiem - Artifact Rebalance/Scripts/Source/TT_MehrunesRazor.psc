ScriptName TT_MehrunesRazor Extends ActiveMagicEffect

Enchantment Property MehrunesRazorEnch Auto

Spell Property Description Auto

TT_ReapplyNonPersistentChanges Property ReapplyNonPersistentChanges Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(Description, False)
	ReapplyNonPersistentChanges.MehrunesRazorScript = Self
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(Description)
	ReapplyNonPersistentChanges.MehrunesRazorScript = None
EndEvent


Function ReapplyNonPersistentChanges()
	Actor Target = GetTargetActor()
	Target.RemoveSpell(Description)
	RescaleEnchantment()
	Target.AddSpell(Description, False)
EndFunction

Function RescaleEnchantment()
	Float Magnitude = 0.0
	If Game.QueryStat("People Killed") >= 100
		Magnitude += 10.0
	EndIf
	If Game.QueryStat("Animals Killed") >= 100
		Magnitude += 10.0
	EndIf
	If Game.QueryStat("Creatures Killed") >= 100
		Magnitude += 10.0
	EndIf
	If Game.QueryStat("Undead Killed") >= 100
		Magnitude += 10.0
	EndIf
	If Game.QueryStat("Daedra Killed") >= 100
		Magnitude += 10.0
	EndIf
	If Game.QueryStat("Automatons Killed") >= 100
		Magnitude += 10.0
	EndIf
	MehrunesRazorEnch.SetNthEffectMagnitude(0, Magnitude)
	Description.SetNthEffectMagnitude(0, Magnitude)
EndFunction
