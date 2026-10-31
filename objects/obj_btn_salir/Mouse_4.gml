/// @description Dejar terminar el clic antes de cerrar el juego.
if (alarm[0] <= 0) {
    event_inherited();
    alarm[0] = max(1, ceil(audio_sound_length(snd_click) * game_get_speed(gamespeed_fps)) + 1);
}
