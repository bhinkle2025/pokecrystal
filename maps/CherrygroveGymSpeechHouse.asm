	object_const_def
	const CHERRYGROVEGYMSPEECHHOUSE_POKEFAN_M
	const CHERRYGROVEGYMSPEECHHOUSE_BUG_CATCHER
	const CHERRYGROVEGYMSPEECHHOUSE_ROCKET

CherrygroveGymSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveGymSpeechHousePokefanMScript:
	jumptextfaceplayer CherrygroveGymSpeechHousePokefanMText

CherrygroveGymSpeechHouseBugCatcherScript:
	jumptextfaceplayer CherrygroveGymSpeechHouseBugCatcherText

CherrygroveGymSpeechHouseRocketScript:
	faceplayer
	checkevent EVENT_BEAT_FALKNER
	iftrue .freecandy
	opentext
	writetext DentistCommissionText
	waitbutton
	closetext
	end

.freecandy
	opentext
	writetext FreeCandyText
	waitbutton
	yesorno
	iffalse .OhWhatever
	sjump .GiveCandy

.GiveCandy
	giveitem CANDY_BAG
	iffalse .NoRoom
	writetext CandyGivenText
	promptbutton
	itemnotify
	closetext
	end

.NoRoom
	opentext
	writetext NoRoomText
	waitbutton
	closetext
	end

.OhWhatever
	opentext
	writetext OhWhateverText
	waitbutton
	closetext
	end

CherrygroveGymSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CherrygroveGymSpeechHousePokefanMText:
	text "You're trying to"
	line "see how good you"

	para "are as a #MON"
	line "trainer?"

	para "You better visit"
	line "the #MON GYMS"

	para "all over JOHTO and"
	line "collect BADGES."
	done

CherrygroveGymSpeechHouseBugCatcherText:
	text "When I get older,"
	line "I'm going to be a"
	cont "GYM LEADER!"

	para "I make my #MON"
	line "battle with my"

	para "friend's to make"
	line "them tougher!"
	done

FreeCandyText:
	text "Do you want"
	line "candy, kid?"
	done

DentistCommissionText:
	text "Your dentist"
	line "doesn't pay"

	para "me enough!"
	done

NoRoomText:
	text "You have"
	line "no room"

	para "for candy!"
	done

OhWhateverText:
	text "Oh whatever."
	done

CandyGivenText:
	text "Here you go."
	done

CherrygroveGymSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHousePokefanMScript, -1
	object_event  5,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseBugCatcherScript, -1
	object_event  5,  3, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseRocketScript, -1
