; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	;   %, species,         min, max
	db 30, GEODUDE,           2,   5
	db 30, DUNSPARCE,         2,   5
	db 20, ZUBAT,             2,   5
	db 10, GEODUDE,           2,   5
	db  5, DUNSPARCE,         2,   5 
	db  4, DUNSPARCE,         2,   5
	db  1, DUNSPARCE,         2,   5
	; day
	;   %, species,         min, max
	db 30, GEODUDE,           2,   5
	db 30, DUNSPARCE,         2,   5
	db 20, ZUBAT,             2,   5
	db 10, GEODUDE,           2,   5
	db  5, DUNSPARCE,         2,   5 
	db  4, DUNSPARCE,         2,   5
	db  1, DUNSPARCE,         2,   5
	; nite
	;   %, species,         min, max
	db 30, GEODUDE,           2,   5
	db 30, DUNSPARCE,         2,   5
	db 20, ZUBAT,             2,   5
	db 10, GEODUDE,           2,   5
	db  5, DUNSPARCE,         2,   5  
	db  4, DUNSPARCE,         2,   5
	db  1, DUNSPARCE,         2,   5

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;   %, species,         min, max
	db 30, NIDORAN_M,        11,  15
	db 30, NIDORAN_F,        11,  15 
	db 20, YANMA,            11,  15
	db 10, YANMA,            11,  15
	db  5, PIDGEY,           11,  15
	db  4, DITTO,            11,  15
	db  1, DITTO,            11,  15
	; day
	;   %, species,         min, max
	db 30, NIDORAN_M,        11,  15
	db 30, NIDORAN_F,        11,  15 
	db 20, YANMA,            11,  15
	db 10, YANMA,            11,  15
	db  5, PIDGEY,           11,  15
	db  4, DITTO,            11,  15
	db  1, DITTO,            11,  15
	; nite
	;   %, species,         min, max
	db 30, NIDORAN_M,        11,  15
	db 30, NIDORAN_F,        11,  15
	db 20, YANMA,            11,  15
	db 10, YANMA,            11,  15
	db  5, HOOTHOOT,         11,  15
	db  4, DITTO,            11,  15
	db  1, DITTO,            11,  15

	db -1 ; end
