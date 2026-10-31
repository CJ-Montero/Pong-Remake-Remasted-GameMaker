/// @description Usar CPU refactorizada.
cpu_decide();

if (tiempo_observacion <= 0) {
    // Decidir primero con la muestra anterior, incluso si acaba de haber un rebote.
    var _entrante = (observacion_valida && observada_hspeed < -0.001 && observada_x > x);
    if (_entrante) {
        if (!tiro_entrante || bola_objetivo != bola_observada) {
            error_tiro = random_range(-error_punteria, error_punteria);
        }
        bola_objetivo = bola_observada;
        objetivo_y = observada_y + error_tiro;

        // Solo anticipar un tramo corto y recto cuando la bola esta en nuestra mitad.
        // No calcular rebotes futuros ni el punto final de llegada.
        if (observada_x <= room_width / 2) {
            var _pasos_contacto = max(0, (observada_x - bbox_right) / -observada_hspeed);
            var _pasos_anticipacion = min(_pasos_contacto, anticipacion_maxima * game_get_speed(gamespeed_fps));
            objetivo_y += observada_vspeed * _pasos_anticipacion;
        }
        objetivo_y = clamp(objetivo_y, limite_superior, limite_inferior);
    } else {
        objetivo_y = (limite_superior_bola + limite_inferior_bola) / 2;
        bola_objetivo = noone;
        error_tiro = 0;
    }
    tiro_entrante = _entrante;

    // Guardar la situacion actual para la SIGUIENTE decision, sin acceder a ella antes.
    var _bola = instance_find(obj_bola, 0);
    observacion_valida = instance_exists(_bola);
    if (observacion_valida) {
        bola_observada = _bola;
        observada_x = _bola.x;
        observada_y = _bola.y;
        observada_hspeed = _bola.hspeed;
        observada_vspeed = _bola.vspeed;
    } else {
        bola_observada = noone;
    }
    tiempo_observacion = intervalo_reaccion;
}

var _limite_velocidad = velocidad_retorno;
if (tiro_entrante) {
    _limite_velocidad = velocidad_maxima;
}

// Acelerar y frenar progresivamente: un nuevo objetivo no invierte la pala al instante.
var _distancia = objetivo_y - y;
var _velocidad_objetivo = 0;
if (abs(_distancia) > zona_muerta) {
    var _frenado = sqrt(2 * aceleracion * (abs(_distancia) - zona_muerta));
    _velocidad_objetivo = sign(_distancia) * min(_limite_velocidad, _frenado);
}
velocidad_actual += clamp(_velocidad_objetivo - velocidad_actual, -aceleracion, aceleracion);

var _siguiente_y = y + velocidad_actual;
y = clamp(_siguiente_y, limite_superior, limite_inferior);
if (y != _siguiente_y) {
    velocidad_actual = 0;
}
