/// @description  Dibujar el marcador

draw_set_color(c_white);
draw_set_font(fnt_marcador);
draw_set_valign(fa_middle);

draw_set_halign(fa_right);
draw_text(288,28,string_hash_to_newline(string(global.puntos_cpu)) );

draw_set_halign(fa_left);
draw_text(354,28,string_hash_to_newline(string(global.puntos_jugador)) );

