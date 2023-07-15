# Askaria Npc and Quest & ChaosKnight Kit and Npc 

![Language](https://img.shields.io/static/v1?label=language&message=english%20%7C%20korean%20%7C%20french%20%7C%20&color=informational)

**Autor** : ****

[Link to original Mod Forum](http://www.shsforums.net/topic/51321-askaria-quest-chaosknight-kit-mod-v13/)

[Link to original Mod Download](http://www.shsforums.net/topic/51321-askaria-quest-chaosknight-kit-mod-v13/)


## Description :
----------------


#### Askaria Npc and Quest 


The first event will take place at Beregost's Feldepost inn after chapter 6. Whenever you go, the quest will start. Scenarios refer to the Sonori's of Forgotten Saga.

For Baldur's Gate Trilogy (BGT), Baldur's Gate: EE and the Enhanced Edition Trilogy (EET).

Askaria Quest **NEED** ChaosKnight Kit to be installed

#### ChaosKnight Kit and Jacob Npc

- Playable fighter kit

For Baldur's Gate Trilogy (BGT), Baldur's Gate: EE, **Baldur's Gate II: EE** and the Enhanced Edition Trilogy (EET).

- Jacob Npc with ChaosKnight Kit, Jacob's model refers to Dota in mod of Warcraft3

For Baldur's Gate Trilogy (BGT), Baldur's Gate: EE and the Enhanced Edition Trilogy (EET).


## Install :
-----------

First of all, the Askaria mod needs a ChaosKnight kit. 
So Install the ChaosKnight, then Askaria mod.

This is a WeiDU format. To install extract the archive in your game folder, then double-click on setup-Askaria.exe. In DOS screen, Select your language and push Enter.

If you update this mod, select (R)e-install. If you want to delete, select (U).


## Walkthrough / SPOILERS :
-----------


#### Askaria Quest 

- Askaria Quest (Chapter 6) :
 
A girl named Ascaria asks for your help to fight bandits at the entrance to the Feldepost Inn in Beregost. After defeating the thugs, she joins your party and you begin a journey to discover the truth about the mysterious behavior of her parents.

- Find a crystal of truth :
  
On the second floor of the Feldepost Inn, you are told by Pie the seer that the doppelgangers may be responsible and that you can reveal them if you have the Crystal of Truth.
The crystal is supposedly detained by a young sapphire dragon currently residing in a cave south of Beregost. You must defeat the dragon and retrieve the crystal.

- Obstruction by Hauser's group :

Before heading up to the second floor of the Feldepost Inn, you may have encountered an NPC named Hauser. Some of you may have been angry with him at first and died prematurely, but you will have your revenge...

When Hauser ambushes you, if is HP falls below 30, Hauser spoke to you, you can either spare him or kill him. If you choose to spare is life, he will give you an interresting item.

- A mother lost son:

She's South of Beregost. If you give her the journal found in the cavern, you can receive money, or...

- All preparations are done ! :
 
If you're with Askaria and have the Crystal of Truth, talk again with the seer and go to the blacksmith, then go north of Beregost. There's a large, enclosed house (Travenhurst Manor). As you enter, the story will continue. When your oponent HP drop below 30, a dialogue will be set and let you choose... 

*Hagamemnon* is an very epic fight. The quest is not linked to his death.


#### ChaosKnight Kit

You can see a NPC named Jacob in front of Beregost Travenhurst manor. He has a ChaosKnight kit.

Jacob is level 6, so don't pick him too early.

## Special thanks :
------------------

블랙호크, 혼마, yyht, 울프엣지, 왕초보, 아미사

Translated in english by 아스모데우스 (shi woo)
Corrected by Xicloing


## Version History :
------------------

1.3 

- First version uploaded at SpellHold Studios

2.0 

- BWP fixes :
  - Askaria... GlobalGT("Chapter","GLOBAL",5) to AR6700.baf
  - ChaosKnight... WRITE_SHORT to tp2
  - Move files and older
  - Up setup.exe

- ChaosKnight :
  - Add lib folder (addkit fonction and cpmvars)
  - Autotra Iconv Handle Charset
  - cpmvars and EVALUATE_BUFFER for EE compatibility
  - Portrait size for EE
  - AddKit for EE (a7#add_kit_ex) and (fl#add_kit_ee)
  - Use Raduziel fonction for adding ChaosKnight kit to Jacob
  - Handle charset and Autotra
  - REQUIRE_PREDICATE (GAME_IS ~bgee bg2ee eet bgt~)
  - Separate kit from Jacob npc to allow ChaosKnight Kit to be installed on BG2EE
  - French translation
  - Really restrict the use of Jacob's mace to Jacob only (APPEND ITEM_USE.2DA)
  - Bam for Zymace.itm
  
- Askaria :

  - Handle Charset and Autotra
  - Portraits size for EE
  - Correct wrong state in Pai#1M.d
  - cpmvars and EVALUATE_BUFFER for EE compatibility
  - Add Readme.md
  - variables prefixes
  - REQUIRE_PREDICATE (GAME_IS ~bgee eet bgt~)
  - REQUIRE_PREDICATE (MOD_IS_INSTALLED ~SETUP-CHAOSKNIGHT.TP2~ ~0~)
  - Add prefix for some variables and items
  - Correct a variable in Pai#1M.d
  - Order for .d compilation in tp2  
  - Add reply options for Twidley mother (Zya#Tmo.d) (Using existing dialogue)
  - TakePartyItem for Twidley journal (Zya#Tmo.d)
  - Further prefixes
  - Add reply options for Askaria mother (Dop#2M.d) (Using existing dialogue)
  - Add a reply option for the seer (Pai#1M.d) (Using existing dialogue)
  - Prevent dead end with Askaria parents (Dop#2M.d, Dop#1M.d)
  - Add unused reply option for Dop#1M.d, Dop#2M.d
  - Add reply options for Paul the blacksmith (ZYASMITH.d) (Using existing dialogue)
  - ADD_JOURNAL TITLE and move journal in quest
  - Prevent dead end with journal quest
  - Add unused reply option for zyaska.d
  - Rearrange a few quirks between English and Korean and try to put some polish into Askaria's meeting dialogue. (Using existing dialogue)
  - French translation
  - Prevent fear of ZYDOP1.cre which may block dialogue
  - Prevent Askaria's final dialogue from occurring too soon
  - Bam for Items 
  - Implement Zytest.itm (Create an little encounter)
  - Use right streff numbers depending of the game