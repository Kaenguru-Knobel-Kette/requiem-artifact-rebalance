ScriptName TT_EbonyMail Extends ActiveMagicEffect

Actor Property ChampionOfBoethiah Auto

Spell Property ResistFire Auto
Spell Property ResistMagic Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akTarget == ChampionOfBoethiah
		ResistMagic.SetNthEffectMagnitude(0, 20)
		ResistFire.SetNthEffectMagnitude(0, 60)
	Else
		Int Murders = Game.QueryStat("Murders")
		ResistMagic.SetNthEffectMagnitude(0, Murders * 0.5)
		ResistFire.SetNthEffectMagnitude(0, Murders * 1.5)
	EndIf
	akTarget.AddSpell(ResistMagic, False)
	akTarget.AddSpell(ResistFire, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(ResistMagic)
	akTarget.RemoveSpell(ResistFire)
EndEvent
