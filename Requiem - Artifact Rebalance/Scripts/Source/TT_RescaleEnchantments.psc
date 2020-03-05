ScriptName TT_RescaleEnchantments Extends ReferenceAlias
{Rescale enchantments of artifacts with variables that cannot be accessed in conditions.}

Armor Property GauldurAmulet Auto

Enchantment Property GauldurAmuletEnch Auto

Actor Player


Event OnInit()
	Player = Game.GetPlayer()
	AddInventoryEventFilter(GauldurAmulet)
EndEvent

Event OnPlayerLoadGame()
	If Player.GetItemCount(GauldurAmulet) >= 1
		UpdateGauldurAmulet()
	EndIf
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If akBaseItem == GauldurAmulet
		UpdateGauldurAmulet()
	EndIf
EndEvent


Function UpdateGauldurAmulet()
	Float Magnitude = Player.GetBaseActorValue("Magicka") / 2
	GauldurAmuletEnch.SetNthEffectMagnitude(0, Magnitude)
EndFunction
