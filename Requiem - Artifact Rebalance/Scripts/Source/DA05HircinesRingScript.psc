Scriptname DA05HircinesRingScript Extends ObjectReference  

Spell Property HircinesRingPower Auto
Quest Property CompanionsCentralQuest Auto


Event OnEquipped(Actor akActor)
	Actor Player = Game.GetPlayer()
	If (akActor == Player && (CompanionsCentralQuest as CompanionsHousekeepingScript).PlayerHasBeastBlood)
		Player.RemoveSpell(HircinesRingPower)
		Player.AddSpell(HircinesRingPower, False)
	EndIf
EndEvent
