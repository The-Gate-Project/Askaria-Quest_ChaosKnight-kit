BEGIN ~ZYASMITH~

IF ~Global("AS#PAI","GLOBAL",3) PartyHasItem("ZYSUZUNG")
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN  DO ~TakePartyGold(100)
  TakePartyItem("ZYSUZUNG")
  SetGlobalTimer("ZYMakeDust","GLOBAL",TWO_DAYS)
  SetGlobal("ZYSmithDust","GLOBAL",1)~EXIT
END

IF ~GlobalTimerExpired("ZYMakeDust","GLOBAL")
Global("ZYSmithDust","GLOBAL",1)
AreaCheck("%Beregost_ThunderhammerSmithy%")~THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~GiveItem("ZYSUDUST",LastTalkedToBy()) SetGlobal("ZYDustHave","GLOBAL", 1) SetGlobal("ZYSmithDust","GLOBAL",0)
   AddJournalEntry(@5,USER)~EXIT
END

IF ~!GlobalTimerExpired("ZYMakeDust","GLOBAL")
Global("ZYSmithDust","GLOBAL",1)
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("ZYSmithDust","GLOBAL",0)
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 4
  SAY @0
  IF ~~ THEN EXIT
END