/// @description  Detectar colisiones contra paredes y palas (centralizado)

// Paredes
var _pared = false;
if (y < 82) { y = 82; _pared = true; }
if (y > 440) { y = 440; _pared = true; }
if (_pared) { direction = -direction; audio_play_sound(snd_pared,85,false); }

// Pala impactada (cpu o jugador)
var _pala = instance_place(x+hspeed,y+vspeed,obj_cpu);
if (!_pala) _pala = instance_place(x+hspeed,y+vspeed,obj_jugador);
if (_pala) {
    var _es_cpu = (_pala.object_index == obj_cpu);
    if (_es_cpu) { direction = (obj_cpu.y - y)*1.5; }
    else         { direction = 180 - (obj_jugador.y - y)*1.5; }
    speed = min(25, speed + 0.5);
    audio_play_sound(snd_toque,90,false);
}

// Puntos
if (x < 0) {
    global.puntos_jugador++;
    obj_marcador.alarm[0] = game_get_speed(gamespeed_fps) * 1.5;
    audio_play_sound(snd_fallo,95,false);
    instance_destroy();
} else if (x > room_width) {
    global.puntos_cpu++;
    obj_marcador.alarm[0] = game_get_speed(gamespeed_fps) * 1.5;
    audio_play_sound(snd_fallo,95,false);
    instance_destroy();
}
