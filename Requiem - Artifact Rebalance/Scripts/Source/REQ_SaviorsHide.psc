ScriptName REQ_SaviorsHide Extends ActiveMagicEffect

ActorBase Property GiantSlaughterfish Auto
ActorBase Property GiganticMudcrab Auto
ActorBase Property Gorak Auto
ActorBase Property Kruul Auto
ActorBase Property Ragnok Auto
ActorBase Property Snow Auto
ActorBase Property Ulik Auto

Spell Property ResistDisease Auto
Spell Property ResistMagic Auto
Spell Property ResistPoison Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(ResistMagic, False)
	akTarget.AddSpell(ResistPoison, False)
	akTarget.AddSpell(ResistDisease, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(ResistMagic)
	akTarget.RemoveSpell(ResistPoison)
	akTarget.RemoveSpell(ResistDisease)
EndEvent


Function RescaleEnchantment()
	Int GreatBeastsSlain = 0
	If GiantSlaughterfish.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	If GiganticMudcrab.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	If Gorak.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	If Kruul.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	If Ragnok.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	If Snow.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	If Ulik.GetDeadCount() >= 1
		GreatBeastsSlain += 1
	EndIf
	ResistMagic.SetNthEffectMagnitude(0, 10 + GreatBeastsSlain * 3)
	ResistPoison.SetNthEffectMagnitude(0, 30 + GreatBeastsSlain * 10)
	ResistDisease.SetNthEffectMagnitude(0, 30 + GreatBeastsSlain * 10)
EndFunction
