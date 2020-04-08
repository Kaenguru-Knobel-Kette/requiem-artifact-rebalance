ScriptName TT_IncrementKillCounter Extends ActiveMagicEffect
{Increments a global variable when the actor this magic effect is attached to dies.}

Float Property MaxValue Auto
{If set to a value greater than zero, the global variable won't be incremented past this value}
GlobalVariable Property KillCounter Auto


Event OnDying(Actor akKiller)
	Float OldValue = KillCounter.GetValue()
	If MaxValue <= 0 || OldValue < MaxValue
		KillCounter.SetValue(OldValue + 1.0)
	EndIf
EndEvent
