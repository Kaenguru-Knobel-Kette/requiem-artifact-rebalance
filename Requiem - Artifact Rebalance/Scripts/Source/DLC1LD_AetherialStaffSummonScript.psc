Scriptname DLC1LD_AetherialStaffSummonScript extends Actor
{Script on the creatures summoned by the Aetherial Staff. Manages their VFX.}

;Summon VFX
Activator property SummonValorTargetFXActivator Auto ;Activator to use.
Formlist property DLC1LD_AetherialStaffScrapList Auto ;Mishap Scrap to 'summon'.

;Faction to track that the staff effect is in use.
Faction property DLC1LD_AetherialStaffBusyFaction Auto


Event OnInit()
	Self.EnableAI(False)
	Self.SetAlpha(0, False)
EndEvent


Event OnLoad()
	Self.PlaceAtMe(SummonValorTargetFXActivator)
	Utility.Wait(1.5)
	Self.EnableAI(True)
	Self.SetAlpha(1, True)
	Game.GetPlayer().RemoveFromFaction(DLC1LD_AetherialStaffBusyFaction)
EndEvent


Event OnDying(Actor akKiller)
	Int i = Utility.RandomInt(7, 10)
	While (i > 0)
		ObjectReference Scrap = Self.PlaceAtMe(DLC1LD_AetherialStaffScrapList.GetAt(Utility.RandomInt(0, DLC1LD_AetherialStaffScrapList.GetSize() - 1)))
		If (Scrap.Is3DLoaded())
			Scrap.ApplyHavokImpulse(Utility.RandomFloat(-1.0, 1.0), Utility.RandomFloat(-1.0, 1.0), 1, Utility.RandomFloat(5, 25))
		EndIf
		i -= 1
	EndWhile
EndEvent
