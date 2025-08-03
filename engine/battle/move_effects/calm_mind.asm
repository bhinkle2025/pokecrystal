BattleCommand_CalmMind:
	call BattleCommand_SpecialAttackUp
	call BattleCommand_StatUpMessage
	call BattleCommand_StatUpFailText

	call BattleCommand_SpecialDefenseUp
	call BattleCommand_StatUpMessage
	call BattleCommand_StatUpFailText

	ret

