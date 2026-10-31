/// @description Dibujar la primera opcion con la tipografia del menu.
var _font = draw_get_font();
var _color = draw_get_color();
var _alpha = draw_get_alpha();
var _halign = draw_get_halign();
var _valign = draw_get_valign();
var _filter = gpu_get_texfilter();
var _controlador = instance_find(obj_controlador, 0);
var _nombre = "OFICIAL";
if (instance_exists(_controlador)) {
    _nombre = nombres_musica[_controlador.musica_actual];
}

draw_set_font(fnt_marcador);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
gpu_set_texfilter(false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_text_transformed(32, 32, "OPCIONES", 0.5, 0.5, 0);
draw_text_transformed(32, 120, "ALTERNAR MUSICA", 0.3125, 0.3125, 0);
draw_set_alpha(activo ? 1 : 0.7);
draw_rectangle(356, 98, 576, 142, true);
draw_set_halign(fa_center);
draw_text_transformed(466, 120, _nombre + " >", 0.25, 0.25, 0);
draw_set_alpha(1);
draw_text_transformed(room_width * 0.5, 432, "ESC PARA VOLVER A LA PORTADA", 0.1875, 0.1875, 0);

gpu_set_texfilter(_filter);
draw_set_font(_font);
draw_set_color(_color);
draw_set_alpha(_alpha);
draw_set_halign(_halign);
draw_set_valign(_valign);
