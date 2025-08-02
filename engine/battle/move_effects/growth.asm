BattleCommand_Growth:
	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jr z, .sunny

.normal:
	call BattleCommand_AttackUp
	call BattleCommand_StatUpMessage
	call BattleCommand_StatUpFailText
	call BattleCommand_SpecialAttackUp
	call BattleCommand_StatUpMessage
	call BattleCommand_StatUpFailText
	ret

.sunny:
	call BattleCommand_AttackUp2
	call BattleCommand_StatUpMessage
	call BattleCommand_StatUpFailText
	call BattleCommand_SpecialAttackUp2
	call BattleCommand_StatUpMessage
	call BattleCommand_StatUpFailText
	ret

	
