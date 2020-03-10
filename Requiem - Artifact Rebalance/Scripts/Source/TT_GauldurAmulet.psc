ScriptName TT_GauldurAmulet Extends ActiveMagicEffect

Spell Property FortifyMagicka Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Float BaseMagicka = akTarget.GetBaseActorValue("Magicka")
	FortifyMagicka.SetNthEffectMagnitude(0, BaseMagicka * 0.5)
	akTarget.AddSpell(FortifyMagicka, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(FortifyMagicka)
EndEvent
