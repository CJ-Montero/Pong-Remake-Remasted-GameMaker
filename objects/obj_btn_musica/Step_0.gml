/// @description Activar la opcion al pasar el raton y alternar con un clic.
activo = point_in_rectangle(mouse_x, mouse_y, 356, 98, 576, 142);
if (activo && mouse_check_button_pressed(mb_left)) {
    audio_play_sound(snd_click, 110, false);
    var _controlador = instance_find(obj_controlador, 0);
    if (instance_exists(_controlador)) {
        _controlador.alternar_musica();
    }
}
