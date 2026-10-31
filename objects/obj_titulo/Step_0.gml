/// @description  Controlar la rotación

// Caso hacia la derecha
if(direccion == -1) {

    // incremento negativo
    image_angle -= rotacion;
    
    // Si llegamos al limite cambiamos la direccion
    if (image_angle <= -limite) {
        direccion = 1;
    }
}

// Caso hacia la izquierda
if (direccion == 1) {

    //incremento positivo
    image_angle += rotacion;
    
    // Si llegamos al limite cambiamos la direccion
    if (image_angle >= limite) {
        direccion = -1;
    }

}

/// @description Activar easter eggs al hacer clic sobre el titulo.
if (collision_point(mouse_x, mouse_y, id, true, false) == id) {
    if (mouse_check_button_pressed(mb_middle)) {
        show_message("Oye!, no me hagas click con la rueda del mouse, DUELE!");
    } else if (mouse_check_button_pressed(mb_left)) {
        show_message("TOUCH ME!");
    } else if (mouse_check_button_pressed(mb_right)) {
        show_message("TOUCH ME HARDER!");
    }
}
