BEGIN ~ZYASKA~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXTERN zya#1gan e1_1  
END

IF ~~ THEN BEGIN a1
  SAY @3
  IF ~~ THEN REPLY @4 EXTERN zya#1gan e1_2
END

IF ~~ THEN BEGIN a2
  SAY @9
  IF ~~ THEN  DO ~ 
  ChangeEnemyAlly(Myself,ALLY)
  ChangeEnemyAlly("zya#1gan",ENEMY)
  CreateCreature("zya#2gan", [1877.2626], 0)
  CreateCreature("zya#3gan", [1962.2743], 3)
  CreateCreature("zya#4gan", [1916.2927], 3)
  CreateCreature("zya#5gan", [1737.3052], 6)
  CreateCreature("zya#6gan", [1412.2976], 9)
  CreateCreature("zya#2gan", [1527.2882], 9)
  SetGlobal("JOZYASKAa2","Global",1)~EXIT // �ƽ�ī������ Reaction�� neautral���� ally�� �ٲٱ�. �ؿ��� ���. // �׳� ActionOverride("zya#1gan",Enemy())���ϸ� ������ �ٲ�� �ϴµ�, �ֺ��� �߸��� npc�� ������� ����ȭ�� �ȴ�. ���� �̷��� Reaction�� �ٲ�����Ѵ�.
END

IF WEIGHT #1 ~NumTimesTalkedTo(1) Global("JOZYASKAa2","Global",1)~ THEN BEGIN aa0
  SAY @10
  IF ~~ THEN DO~SetGlobal("JOZYASKAa2","Global",2) SetNumTimesTalkedTo(2)~ REPLY @11 GOTO aa1
END

IF ~~ THEN BEGIN aa1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO aa2
END

IF ~~ THEN BEGIN aa2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO aa3
  IF ~~ THEN REPLY @16 GOTO aa4
  IF ~~ THEN REPLY @17 GOTO aa3
END

IF ~~ THEN BEGIN aa3
   SAY @18
   IF ~~ THEN REPLY @19 GOTO aa3_1
END

IF ~~ THEN BEGIN aa3_1
   SAY @20
   IF ~~ THEN REPLY @21 GOTO aa3_2
END

IF ~~ THEN BEGIN aa3_2
   SAY @22
   IF ~~ THEN DO ~ClearAllActions() 
   HideGUI() 
   StartCutSceneMode()
   MoveToObject(Player1)
   Wait(1)
DisplayStringHead(Player1,@23)
   Wait(1)
ActionOverride(Player2,SetSequence(SEQ_SLEEP))
ActionOverride(Player3,SetSequence(SEQ_SLEEP))
ActionOverride(Player4,SetSequence(SEQ_SLEEP))
ActionOverride(Player5,SetSequence(SEQ_SLEEP))
ActionOverride(Player6,SetSequence(SEQ_SLEEP))
Wait(1)
DisplayStringHead(Player1,@28)
Wait(3)
ActionOverride(Player2,SetSequence(SEQ_AWAKE))
ActionOverride(Player3,SetSequence(SEQ_AWAKE))
ActionOverride(Player4,SetSequence(SEQ_AWAKE))
ActionOverride(Player5,SetSequence(SEQ_AWAKE))
ActionOverride(Player6,SetSequence(SEQ_AWAKE))
Wait(1)
EndCutSceneMode()
UnhideGUI()
SetGlobal("JOZYASKAaa3_2","Global",1)~ EXIT
END
   
IF WEIGHT #2 ~NumTimesTalkedTo(2) Global("JOZYASKAaa3_2","Global",1)~ THEN BEGIN aa3_4 
   SAY @18 
   IF ~~ THEN DO ~SetGlobal("JOZYASKAaa3_2","Global",2) SetNumTimesTalkedTo(3)~ REPLY @24 GOTO aa4
   IF ~~ THEN DO ~SetGlobal("JOZYASKAaa3_2","Global",2) SetNumTimesTalkedTo(3)~ REPLY @37 GOTO aa4
END

IF ~~ THEN BEGIN aa4
   SAY @25
   IF ~~ THEN REPLY @26 GOTO aa5
END

IF ~~ THEN BEGIN aa5
   SAY @27
  IF ~~ THEN REPLY @29 EXIT
  IF ~~ THEN REPLY @30 GOTO aa6
  IF ~~ THEN REPLY @31 EXIT
  IF ~~ THEN REPLY @32 GOTO aa6
END

IF ~~ THEN BEGIN aa6
  SAY @33
  IF ~IsValidForPartyDialogue("zyjcob")~ THEN  DO ~SetGlobal("AS#PAI","GLOBAL",1)~
  EXTERN ~zyjcobj~ zya#ihh 
  IF ~!IsValidForPartyDialogue("zyjcob")~ THEN DO ~SetGlobal("AS#PAI","GLOBAL",1) AddJournalEntry(@204,QUEST) JoinParty()~ EXIT // ChangeEnemyAlly("zyaska",[PC])  
END

IF ~~ THEN BEGIN aa7
  SAY @36
  IF ~~ THEN DO ~AddJournalEntry(@204,QUEST) JoinParty()~EXIT
END

IF WEIGHT #3 ~Global("AskaEnding","GLOBAL",2)~ THEN BEGIN abye1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO abye2
END

IF ~~ THEN BEGIN abye2
  SAY @40
  IF ~~ THEN REPLY @41 GOTO abye3
END

IF ~~ THEN BEGIN abye3
  SAY @42
  IF ~~ THEN REPLY @43 GOTO abye4
END

IF ~~ THEN BEGIN abye4
  SAY @44
  IF ~~ THEN REPLY @45 GOTO abye5
END

IF ~~ THEN BEGIN abye5
  SAY @46
  IF ~~ THEN REPLY @47 GOTO abye6
END

IF ~~ THEN BEGIN abye6
  SAY @48
  IF ~~ THEN DO ~AddJournalEntry(@205,QUEST_DONE) GiveItemCreate("zyaring",Player1,0,0,0) EscapeArea()~ EXIT
END

CHAIN ~zyjcobj~ zya#ihh
 @34
 == ~zyaska~ @35 END ~zyaska~ aa7

BEGIN zya#1gan

IF ~~ THEN BEGIN e1_1
  SAY @2
  IF ~~ THEN EXTERN zyaska a1
END

IF ~~ THEN BEGIN e1_2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO e1_3
END

IF ~~ THEN BEGIN e1_3
  SAY @7
  IF ~~ THEN REPLY @8 EXTERN zyaska a2
END