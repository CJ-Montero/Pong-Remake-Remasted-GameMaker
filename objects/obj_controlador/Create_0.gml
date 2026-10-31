/// @description Inicializar la musica persistente con la version oficial.
musicas = [snd_musica_oficial, snd_musica_epica, snd_melodia];
musica_actual = 0;
musica_instancia = audio_play_sound(musicas[musica_actual], 100, true);

/// @function alternar_musica()
/// @description Reproducir la siguiente pista sin superponer canciones.
function alternar_musica() {
    if (audio_is_playing(musica_instancia)) {
        audio_stop_sound(musica_instancia);
    }
    musica_actual = (musica_actual + 1) mod array_length(musicas);
    musica_instancia = audio_play_sound(musicas[musica_actual], 100, true);
}
