ScriptName REQ_SuicideAttacker Extends Actor
{Actor explodes when they attack in melee or are hit.}

Spell Property SuicideSpell Auto

Bool Exploded = False


Event OnLoad()
	RegisterForAnimationEvent(Self, "weaponSwing")
EndEvent

Event OnUnload()
	UnregisterForAnimationEvent(Self, "weaponSwing")
EndEvent

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, Bool abPowerAttack, Bool abSneakAttack, Bool abBashAttack, Bool abHitBlocked)
	TriggerExplosion()
EndEvent

Event OnAnimationEvent(ObjectReference akSource, String asEventName)
	TriggerExplosion()
EndEvent


Function TriggerExplosion()
	If !Exploded
		Exploded = True
		SuicideSpell.Cast(Self, Self)
		Kill()
	EndIf
EndFunction
