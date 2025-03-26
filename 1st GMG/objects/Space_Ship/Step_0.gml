if keyboard_check(vk_up)
{
        motion_add(image_angle, 0.1);
}
if keyboard_check(vk_down)
{
        motion_add(image_angle, -0.1);
}
if(speed > 5) {
	speed = 5;
}
if keyboard_check(vk_left)
{
        image_angle += 3;
}
if keyboard_check(vk_right)
{
        image_angle -= 3;
}
move_wrap(true, true, 0)

if (keyboard_check_pressed(vk_space))
{
    instance_create_layer(x, y, "Normal_layer", Goli);
	audio_play_sound(Laser, 2, 0);
}

// Handle invincibility
if (invincible) {
    invincible_timer -= 1;

    // Move player to invincible layer if not already there
    if (layer != invincible_layer) {
        layer_change(id, invincible_layer);  // Move to Invincible_Layer
    }

    // Handle blinking effect
    blink_timer -= 1;
    if (blink_timer <= 0) {
        blink_state = !blink_state;
        image_alpha = blink_state ? 1 : 0; //Blinking effect
        blink_timer = blink_duration;
    }

    // End invincibility after timer
    if (invincible_timer <= 0) {
        invincible = false;
        image_alpha = 1;  // Fully visible again

        // Safeguard: Ensure `normal_layer` is valid before switching
        if (normal_layer != -1) {
            layer_change(id, normal_layer);  // Move back to normal layer using ID
        } else {
            // Log error or handle case where normal_layer is invalid
            show_debug_message("Error: normal_layer is invalid");
        }
    }
} 