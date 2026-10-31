/// @description  Dibujar el titulo y la etiqueta Remastered.
draw_self();
draw_set_font(fnt_marcador);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed(x, y + 70, "REMASTERED", 0.25, 0.25, 0);
