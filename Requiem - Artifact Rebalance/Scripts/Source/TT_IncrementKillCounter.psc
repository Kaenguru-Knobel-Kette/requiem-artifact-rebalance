ScriptName TT_IncrementKillCounter Extends ActiveMagicEffect  

Float Property MaxValue Auto

GlobalVariable Property KillCounter Auto


Event OnDying(Actor akKiller)
	Float OldValue = KillCounter.GetValue()
	If MaxValue == 0 || OldValue < MaxValue
		KillCounter.SetValue(OldValue + 1.0)
	EndIf
EndEvent
