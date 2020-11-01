ScriptName REQ_ApocryphaFont Extends ObjectReference
{Permanently increases magicka or stamina regeneration by 1% when activating the fonts in Apocrypha.}

Message Property ActivateMSG Auto
Message Property DepletedMSG Auto

Bool Property IsMagickaFont Auto


Bool Done = False


Event OnLoad()
	If Done
		PlayAnimation("Play01")
	Else
		PlayAnimation("Play02")
	EndIf
EndEvent

Event OnActivate(ObjectReference akActionRef)
	If akActionRef == Game.GetPlayer()
		If !Done
			Done = True
			PlayAnimation("Play01")
			If IsMagickaFont
				(akActionRef As Actor).ModActorValue("MagickaRateMult", 1.0)
			Else
				(akActionRef As Actor).ModActorValue("StaminaRateMult", 1.0)
			EndIf
			ActivateMSG.Show()
		Else
			DepletedMSG.Show()
		EndIf
	EndIf
EndEvent
