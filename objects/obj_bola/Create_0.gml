/// @description  Otorgar la posición inicial, dirección aleatoria y una velocidad base
randomize();

x = room_width/2;
y = room_height/2 + choose(-100,0,100);

direction = choose(45,135,225,315);

velocidad_base = 5;
speed = velocidad_base;

/// Declarar una variable de incremento
incremento = 0.5;

