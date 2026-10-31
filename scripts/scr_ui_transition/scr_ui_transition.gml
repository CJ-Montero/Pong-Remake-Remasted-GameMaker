/// scr_ui_transition
/// Centraliza Escape y transiciones para no repetir logica en obj_controlador.
function ui_escape() {
    if (room == rm_creditos || room == rm_opciones) {
        room_goto(rm_portada);
    } else if (room != room_first) {
        with (obj_marcador) {
            instance_destroy();
        }
        window_set_cursor(cr_default);
        room_goto_previous();
    } else {
        game_end();
    }
}

function ui_update_music() {
    var _volumen_musica = (room == rm_tablero) ? 0.3 : 1;
    with (obj_controlador) {
        if (audio_is_playing(musica_instancia)) {
            if (audio_sound_get_gain(musica_instancia) != _volumen_musica) {
                audio_sound_gain(musica_instancia, _volumen_musica, 0);
            }
        }
    }
}
