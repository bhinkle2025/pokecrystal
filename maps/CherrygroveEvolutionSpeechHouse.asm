	object_const_def
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_YOUNGSTER
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_TEACHER

CherrygroveEvolutionSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveEvolutionSpeechHouseYoungsterScript:
	opentext
	writetext CherrygroveEvolutionSpeechHouseYoungsterText
	waitbutton
	closetext
	end

CherrygroveEvolutionSpeechHouseLassScript:
	opentext
	writetext CherrygroveEvolutionSpeechHouseLassText
	waitbutton
	closetext
	end

CherrygroveEvolutionSpeechHouseTeacherScript:
	faceplayer
	checkevent EVENT_GOT_EVIOLITE
	iftrue .AlreadyGotEviolite
	opentext
	writetext EvioliteTeacherText
	giveitem EVIOLITE
	iffalse .BagFull
	setevent EVENT_GOT_EVIOLITE
	waitbutton
	promptbutton
	itemnotify
	closetext
	end

.BagFull:
	opentext
	writetext BagFullText
	waitbutton
	closetext
	end

.AlreadyGotEviolite:
	opentext
	writetext EvioliteTeacherAfterText
	waitbutton
	closetext
	end


CherrygroveEvolutionSpeechHouseBookshelf:
	jumpstd MagazineBookshelfScript

CherrygroveEvolutionSpeechHouseYoungsterText:
	text "#MON gain expe-"
	line "rience in battle"

	para "and change their"
	line "form."
	done

CherrygroveEvolutionSpeechHouseLassText:
	text "#MON change?"

	para "I would be shocked"
	line "if one did that!"
	done

EvioliteTeacherText:
	text "Some #MON grow"
	line "stronger when they"
	
	para "evolve, but not"
	line "all of them need"
	cont "to evolve to help."

	para "This item boosts"
	line "a #MON's Defense"
	cont "and Sp. Def if it"

	para "hasn't reached its"
	line "final evolution."

	para "Here, try it out."
	done

EvioliteTeacherAfterText:
	text "Give that to a"
	line "#MON that can"
	cont "still evolve."

	para "It'll become much"
	line "tougher in battle!"
	done

BagFullText:
	text "You have no"
	line "room for this."
	done


CherrygroveEvolutionSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf

	def_object_events
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseLassScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseYoungsterScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseTeacherScript, -1
