normal_layer = layer_get_id("Instances");
// Check if the Game object exists and invincible_layer is set
if (variable_instance_exists(Game, "invincible_layer")) {
    invincible_layer = Game.invincible_layer;
} else {
    invincible_layer = layer_get_id("Invincible_Layer");  // Directly get the layer ID as a fallback
}

invincible = false;
invincible_timer = 0;
blink_timer = 0;
blink_duration = 10;
blink_state = true;
