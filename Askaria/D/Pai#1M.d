BEGIN ~zypai~

IF ~Global("AS#PAI","GLOBAL",1) Global("HAU#SM","GLOBAL",1)
AreaCheck("%Beregost_FeldepostsInn_L2%") InParty("zyaska") IsValidForPartyDialogue("zyaska")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~zyaskaj~ zyp#1ma
END

IF ~~ THEN BEGIN p1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO p2
END

IF ~~ THEN BEGIN p2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO p3
END

IF ~~ THEN BEGIN p3
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("AS#PAI","GLOBAL",2) SetGlobal("Pai#FM","GLOBAL",1) AddJournalEntry(@201,QUEST)~ EXIT
END

IF ~Global("AS#PAI","GLOBAL",2) Global("HAU#SM","GLOBAL",2) InParty("zyaska") PartyHasItem("ZYSUZUNG") 
AreaCheck("%Beregost_FeldepostsInn_L2%")~ THEN BEGIN pp1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO pp2
END

IF ~~ THEN BEGIN pp2
  SAY @14
  IF ~~ THEN DO ~SetGlobal("AS#PAI","GLOBAL",3)  SetGlobal("Pai#FM","GLOBAL",0)~ EXIT
END

IF ~Global("AS#PAI","GLOBAL",2) Global("Pai#FM","GLOBAL",1) InParty("zyaska") !PartyHasItem("ZYSUZUNG") AreaCheck("%Beregost_FeldepostsInn_L2%")~ THEN BEGIN default2
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("Pai#FM","GLOBAL",0) AreaCheck("%Beregost_FeldepostsInn_L2%")~ THEN BEGIN defaultt
  SAY @15
  IF ~~ THEN EXIT
END

CHAIN ~zyaskaj~ zyp#1ma
@1 == ~zypai~ @2 == ~zyaskaj~ @3 == ~zypai~ @4 == ~zyaskaj~ @5 
END ~zypai~ p1