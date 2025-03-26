if (player_lives > 0) {
    var new_player = instance_create_layer(player_respawn_x, player_respawn_y, Game.invincible_layer, Space_Ship);
	new_player.invincible = true;
	new_player.invincible_timer = 180;
} else {
    g_o = true;
}	
