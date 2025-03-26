if(!invincible) {
	// Store the player's current position in the Game object before destroying
	Game.player_respawn_x = x;
	Game.player_respawn_y = y;

	Game.player_lives -= 1;

	// Create explosion effect and destroy the player
	effect_create_above(ef_firework, x, y, 1, c_white);
	instance_destroy();
	audio_play_sound(Explosion, 1, 0);

	// if lives are left, make ship invincible
	if (Game.player_lives > 0) {
	    invincible_timer = 180;
	    invincible = true;
	    blink_timer = blink_duration;
	    Game.alarm[0] = 33;
	} else {
        Game.g_o = true;
    }
} 