/// @description Creditos con cabecera y columnas de historia y agradecimientos.
var _old_font = draw_get_font();
var _old_color = draw_get_color();
var _old_alpha = draw_get_alpha();
var _old_halign = draw_get_halign();
var _old_valign = draw_get_valign();
var _old_filter = gpu_get_texfilter();
var _left = 32;
var _right = room_width * 0.5 + 32;
var _body_scale = 0.1875;
var _dorado = make_color_rgb(212, 175, 55);
var _secundario = make_color_rgb(190, 190, 190);
var _premio = "PROYECTO GANADOR\nFERIA CIENTIFICA\nFE Y ALEGRIA 2018";
var _historia = "CREADO EN 2018 PARA LA\nFERIA CIENTIFICA DEL\nLICEO TECNICO PROFESIONAL\nCARDENAL SANCHA\nFE Y ALEGRIA 2018\nCON LA AYUDA DE 4 AMIGOS";
var _licencia = "ESTE JUEGO DEBE OBTENERSE\nPOR GITHUB\nDISTRIBUIDO BAJO\nLICENCIA GPL V3";

draw_set_font(fnt_marcador);
draw_set_alpha(1);
gpu_set_texfilter(false);

// Cabecera alineada con la pantalla de opciones.
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_transformed(_left, 32, "CREDITOS", 0.5, 0.5, 0);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(_dorado);
draw_text_ext_transformed(room_width - 32, 12, _premio, 80, -1, 0.15625, 0.15625, 0);

// Encabezados y contenido de la columna izquierda.
draw_set_halign(fa_left);
draw_set_color(_dorado);
draw_text_transformed(_left, 96, "HISTORIA", 0.25, 0.25, 0);
draw_text_transformed(_right, 96, "AGRADECIMIENTOS", 0.25, 0.25, 0);
draw_text_transformed(_left, 292, "LICENCIA", 0.25, 0.25, 0);
draw_set_color(c_white);
draw_text_transformed(_left, 126, "PONG REMAKE", 0.25, 0.25, 0);
draw_text_ext_transformed(_left, 158, _historia, 96, -1, _body_scale, _body_scale, 0);
draw_text_ext_transformed(_left, 324, _licencia, 96, -1, _body_scale, _body_scale, 0);

// Nombres separados de sus apodos y notas secundarias.
draw_text_transformed(_right, 132, "HAROLD AQUINO", _body_scale, _body_scale, 0);
draw_text_transformed(_right, 174, "STEWAR MEDRANO", _body_scale, _body_scale, 0);
draw_text_transformed(_right, 216, "JOSE MIGUEL PENA", _body_scale, _body_scale, 0);
draw_text_transformed(_right, 234, "RODRIGUEZ", _body_scale, _body_scale, 0);
draw_set_color(_secundario);
draw_text_transformed(_right, 252, "(YOMI)", _body_scale, _body_scale, 0);
draw_set_color(c_white);
draw_text_transformed(_right, 290, "JOSE GABRIEL COLON", _body_scale, _body_scale, 0);
draw_text_transformed(_right, 332, "HECTOR ACOSTA", _body_scale, _body_scale, 0);
draw_set_color(_secundario);
draw_text_ext_transformed(_right, 350, "(HEKTORPROFE)\nCANAL DE YOUTUBE EXTINTO", 96, -1, _body_scale, _body_scale, 0);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(room_width * 0.5, 432, "ESC PARA VOLVER A LA PORTADA", _body_scale, _body_scale, 0);

gpu_set_texfilter(_old_filter);
draw_set_font(_old_font);
draw_set_color(_old_color);
draw_set_alpha(_old_alpha);
draw_set_halign(_old_halign);
draw_set_valign(_old_valign);
