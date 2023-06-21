BEGIN ~ZYDOP2~

IF WEIGHT #1 ~PartyHasItem("ZYSUDUST") Global("ZYDustHave","GLOBAL",1) AreaCheck("%Beregost_TravenhurstManor_L1%")
IsValidForPartyDialogue("zyaska") ~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~TakePartyItem("ZYSUDUST") DestroyItem("ZYSUDUST") SetGlobal("ZYDustHave","GLOBAL",0)~ GOTO d1
END

IF ~~ THEN BEGIN d1
  SAY @2
  IF ~~ THEN EXTERN ~zyaskaj~ dp#1
END

IF ~~ THEN BEGIN d2
  SAY @7
  IF ~~ THEN DO ~ ActionOverride("zydop1",Polymorph(DOPPLEGANGER_GREATER))
  Polymorph(DOPPLEGANGER_GREATER)  ChangeEnemyAlly("zydop2",ENEMY) ChangeEnemyAlly("zydop1",ENEMY) 
  SetGlobal("AskaEnding","GLOBAL",1)~EXIT
END

IF ~!PartyHasItem("ZYSUDUST") Global("ZYDustHave","GLOBAL",1) AreaCheck("%Beregost_TravenhurstManor_L1%")
IsValidForPartyDialogue("zyaska") ~ THEN BEGIN extra1
  SAY @15
  IF ~~ THEN EXIT 
END

IF ~Global("ZYFirstMeet","GLOBAL",0) IsValidForPartyDialogue("zyaska")~ THEN BEGIN extra2
  SAY @15
  IF ~~ THEN EXIT 
END 

IF  ~Global("ZYFirstMeet","GLOBAL",0) !IsValidForPartyDialogue("zyaska")~ THEN BEGIN extra3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("ZYFirstMeet","GLOBAL",1)~ EXIT
END

IF  ~Global("ZYFirstMeet","GLOBAL",1) !IsValidForPartyDialogue("zyaska")~ THEN BEGIN extra4
  SAY @17
  IF ~~ THEN DO ~CreateCreature("zyd#gd1", [491.449], 8) CreateCreature("zyd#gd2", [498.424], 8) SetGlobal("ZYFirstMeet","GLOBAL",0)~ EXIT
END

CHAIN ~zyaskaj~ dp#1
@3 == ~zydop1~ @4 == ~zyaskaj~ @5  END ~zydop2~ d2
