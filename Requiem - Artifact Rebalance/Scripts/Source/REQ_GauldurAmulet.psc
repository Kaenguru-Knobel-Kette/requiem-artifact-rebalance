ScriptName REQ_GauldurAmulet Extends ActiveMagicEffect

Spell Property FortifyMagicka Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	RescaleEnchantment()
	akTarget.AddSpell(FortifyMagicka, False)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveSpell(FortifyMagicka)
EndEvent


Function RescaleEnchantment()
	Float BaseMagicka = GetTargetActor().GetBaseActorValue("Magicka")
	FortifyMagicka.SetNthEffectMagnitude(0, BaseMagicka * 0.5)
EndFunction
