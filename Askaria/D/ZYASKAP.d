BEGIN ~ZYASKAP~

IF WEIGHT #2 ~Global("ZYASKA","LOCALS",0) Global("AskaJOnotDONE","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ZYASKA","LOCALS",1)~ EXIT
END

IF WEIGHT #0 ~HappinessLT(Myself,0) Global("ZYASKA","LOCALS",0) Global("AskaJOnotDONE","GLOBAL",0)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~AddJournalEntry(@207,QUEST_DONE) EscapeArea()~ EXIT
END

IF WEIGHT #1 ~Global("ZYASKA","LOCALS",1) Global("AskaJOnotDONE","GLOBAL",0)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("ZYASKA","LOCALS",0) JoinParty()~ EXIT
  IF ~~ THEN REPLY @1 EXIT
END

IF ~Global("AskaEnding","GLOBAL",0) Global("AskaJOnotDONE","GLOBAL",2)~ THEN BEGIN AskaJOnotFINISH2
  SAY @4
  IF ~~ THEN DO ~ ReputationInc(-5) AddJournalEntry(@207,QUEST_DONE) LeaveParty() EscapeArea()~ EXIT
END
