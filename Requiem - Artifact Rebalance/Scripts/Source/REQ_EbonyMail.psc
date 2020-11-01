ScriptName REQ_EbonyMail Extends ActiveMagicEffect

Actor Property ChampionOfBoethiah Auto

Spell Property ResistFire Auto
Spell Property ResistMagic Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(ResistMagic, False)
	akTarget.AddSpell(ResistFire, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(ResistMagic)
	akTarget.RemoveSpell(ResistFire)
EndEvent


Function RescaleEnchantment()
	If GetTargetActor() == ChampionOfBoethiah
		ResistMagic.SetNthEffectMagnitude(0, 20)
		ResistFire.SetNthEffectMagnitude(0, 60)
	Else
		Int Murders = Game.QueryStat("Murders")
		ResistMagic.SetNthEffectMagnitude(0, Murders * 0.25)
		ResistFire.SetNthEffectMagnitude(0, Murders * 0.75)
	EndIf
EndFunction
