;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname PRKF_DA11Cannibalism_000EE5C3 Extends Perk Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
akActor.StartCannibal(akTargetRef as Actor)
DA11CannibalismAbility.Cast(akActor, akActor)
DA11CannibalismAbility02.Cast(akActor, akActor)
DA11CannibalismAbility03.Cast(akActor, akActor)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

PlayerVampireQuestScript Property PlayerVampireQuest  Auto  

Spell Property DA11CannibalismAbility  Auto  

Spell Property DA11CannibalismAbility02  Auto  

Spell Property DA11CannibalismAbility03  Auto  
