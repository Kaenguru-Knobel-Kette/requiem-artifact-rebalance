Scriptname DLC1LD_AetherialStaffEffectScript extends ObjectReference
{Script on the marker 'summoned' by the Aetherial Staff. Determines what is actually summoned for each use.}

Faction Property DLC1LD_AetherialStaffBusyFaction Auto
{Faction to track that the staff effect is in use.}

Spell Property SummonSphereSpell Auto


Event OnInit()
	; Ignore this use entirely if the player has used the staff twice in quick succession.
	If (!Game.GetPlayer().IsInFaction(DLC1LD_AetherialStaffBusyFaction))
		Game.GetPlayer().AddToFaction(DLC1LD_AetherialStaffBusyFaction)
		SummonSphereSpell.Cast(Game.GetPlayer(), Self)
	EndIf
	Self.Disable()
	Self.Delete()
EndEvent
