Scriptname DragonPriestUltraMaskEffect extends ActiveMagicEffect  
{Triggers Konahrik's special effects when hit}

Explosion Property FakeForceBall1024 Auto
Float Property EffectChance Auto
Float Property RareEffectChance Auto
Spell Property FlameCloak Auto
Spell Property FrostCloak Auto
Spell Property LightningCloak Auto
Spell Property GrandHealing Auto
Spell Property SummonDragonPriest Auto

Actor SelfRef


Event OnEffectStart(Actor Target, Actor Caster)
	SelfRef = Caster
EndEvent


Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	Float Dice = Utility.RandomFloat()
	If (Dice <= EffectChance && !SelfRef.IsDead())
		SelfRef.PlaceAtMe(FakeForceBall1024)
		SelfRef.KnockAreaEffect(1, 1024)
		GrandHealing.Cast(SelfRef, SelfRef)
		SelfRef.DispelSpell(FlameCloak)
		SelfRef.DispelSpell(FrostCloak)
		SelfRef.DispelSpell(LightningCloak)
		FlameCloak.Cast(SelfRef, SelfRef)
		FrostCloak.Cast(SelfRef, SelfRef)
		LightningCloak.Cast(SelfRef, SelfRef)
		If (Dice <= RareEffectChance)
			SummonDragonPriest.Cast(SelfRef, SelfRef)
		EndIf
	EndIf
EndEvent
