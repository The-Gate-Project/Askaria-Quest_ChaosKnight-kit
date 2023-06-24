BEGIN ~ZYASKAJ~

IF ~HappinessLT(Myself,0) Global("AskaJOnotDONE","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~AddJournalEntry(@207,QUEST_DONE) LeaveParty()
EscapeArea()~ EXIT
END

IF ~Global("AskaEnding","GLOBAL",0) Global("AskaJOnotDONE","GLOBAL",1)~ THEN BEGIN AskaJOnotFINISH
  SAY @2
  IF ~~ THEN DO ~ LeaveParty()
EscapeArea()~ EXIT
END

IF ~True() Global("AskaJOnotDONE","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END





