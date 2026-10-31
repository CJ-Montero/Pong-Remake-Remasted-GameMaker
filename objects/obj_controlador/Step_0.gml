/// @description  Delega Escape, musica y mouse a helpers comunes.
if (keyboard_check_pressed(vk_escape)) { ui_escape(); }
ui_update_music();
if (room != room_first) {
    var _mx = clamp(mouse_x, 0, window_get_width());
    var _my = clamp(mouse_y, 0, window_get_height());
    if (_mx != mouse_x || _my != mouse_y) {
        window_mouse_set(_mx, _my);
    }
}
