/// @description Configurar una CPU con percepcion retrasada y anticipacion limitada.
x = 20;
y = room_height / 2;

// Velocidades y aceleracion por paso, igual que el movimiento de la pelota.
velocidad_maxima = 7;
velocidad_retorno = 4;
aceleracion = 1.5;
intervalo_reaccion = 0.06; // Segundos entre observaciones y decisiones.
anticipacion_maxima = 0.12; // Segundos de trayectoria que puede anticipar.
error_punteria = 8; // Desviacion constante durante cada tiro observado.
zona_muerta = 3;

limite_superior = 115;
limite_inferior = 410;
// Limites del centro de la pelota en obj_bola: Step.
limite_superior_bola = 82;
limite_inferior_bola = 440;

objetivo_y = y;
velocidad_actual = 0;
tiempo_observacion = 0;
error_tiro = 0;
bola_objetivo = noone;
tiro_entrante = false;

// Memoria de la observacion anterior: nunca decidir con la muestra recien tomada.
observacion_valida = false;
bola_observada = noone;
observada_x = 0;
observada_y = 0;
observada_hspeed = 0;
observada_vspeed = 0;
