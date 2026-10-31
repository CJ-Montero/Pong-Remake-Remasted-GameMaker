/// @description  Establecer modo, reiniciar marcador e ir a la room
event_inherited();
global.puntos_jugador = 0;
global.puntos_cpu = 0;
global.puntos_ganador = 3;
room_goto(rm_tablero);
