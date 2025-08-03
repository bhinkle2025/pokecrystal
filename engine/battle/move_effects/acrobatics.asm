BattleCommand_Acrobatics:
; Check if the user is holding an item.
	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy_turn

; Player's turn
	ld a, [wBattleMonItem]
	and a
	ret nz  ; has item → do nothing

	jp DoubleDamage

.enemy_turn:
	ld a, [wEnemyMonItem]
	and a
	ret nz  ; has item → do nothing

	jp DoubleDamage
