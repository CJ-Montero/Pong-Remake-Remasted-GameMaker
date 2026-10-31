/// @description  Dibujar el botón con transparencia o no
if(!activo){
    draw_set_alpha(0.7);
}

draw_sprite(sprite_index,image_index,x,y);
draw_set_alpha(1);

