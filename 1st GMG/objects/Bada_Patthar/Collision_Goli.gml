instance_destroy(other); // Destroys the bullet (Goli)
effect_create_above(ef_explosion, x, y, 1, c_white);
audio_play_sound(snd_rock_collision,2,0)

direction = random(360);

if (sprite_index == spr_rock_big)
{
    health -= 1; // Reduce health by 1
    if (health <= 0) 
    {
        sprite_index = spr_rock_small;
        instance_copy(true);
    }
}
else if instance_number(Bada_Patthar) < 12
{
    sprite_index = spr_rock_big;
    x = -100;
}
else
{
    instance_destroy();
}

Game.points += 50;
