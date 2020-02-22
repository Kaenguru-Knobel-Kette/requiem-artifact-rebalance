ScriptName DLC1DawnguardRuneAxeDamageEffectSCRIPT Extends ActiveMagicEffect  

GlobalVariable Property UndeadKilled Auto


Event OnDying(Actor akKiller)
	UndeadKilled.SetValue(UndeadKilled.GetValue() + 1.0)
EndEvent
