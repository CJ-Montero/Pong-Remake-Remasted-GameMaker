/// @description  Reiniciar la room o volver a la portada
if (global.puntos_jugador >= global.puntos_ganador or 
  global.puntos_cpu >= global.puntos_ganador) {
    instance_destroy();
    room_goto(rm_portada);
} else {
    room_restart();
}

