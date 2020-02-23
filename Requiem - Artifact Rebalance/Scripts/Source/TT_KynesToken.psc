ScriptName TT_KynesToken Extends ActiveMagicEffect

Faction Property PeaceFaction Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.AddToFaction(PeaceFaction)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RemoveFromFaction(PeaceFaction)
EndEvent
