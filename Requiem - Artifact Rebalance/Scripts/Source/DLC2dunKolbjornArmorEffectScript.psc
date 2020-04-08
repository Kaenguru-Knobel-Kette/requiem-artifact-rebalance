ScriptName DLC2dunKolbjornArmorEffectScript Extends ActiveMagicEffect
{Script for Ahzidal's Armor, which paralyzes melee attackers.}

Spell Property DLC2dunKolbjornArmorParalyze Auto
Sound Property MAGParalysisEnchantment Auto
Keyword Property WeapTypeBow Auto


Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, Bool abPowerAttack, Bool abSneakAttack, Bool abBashAttack, Bool abHitBlocked)
	If (akSource As Weapon) != None && !akSource.HasKeyword(WeapTypeBow) && (akAggressor As Actor) != None && !abHitBlocked
		MAGParalysisEnchantment.Play(akAggressor)
		DLC2dunKolbjornArmorParalyze.Cast(akAggressor)
	EndIf
EndEvent
