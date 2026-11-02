# Pong Remake Remastered — GameMaker

Remake de Pong desarrollado con GameMaker y GML. Incluye partidas contra la CPU, selección de partidas a 3 o 10 puntos y tres pistas musicales intercambiables.

Este repositorio contiene la versión de GameMaker. La versión de Godot se mantiene en un proyecto independiente.

## Estructura del proyecto

```text
Pong Remake.yyp      Proyecto principal: abrir este archivo en GameMaker.
objects/            Objetos y código GML de sus eventos.
rooms/              Pantallas del juego y su código de creación.
scripts/            Funciones compartidas de IA e interfaz.
sprites/            Imágenes y metadatos de los sprites.
sounds/             Efectos de sonido y pistas musicales.
fonts/              Fuente del marcador y de los textos.
options/            Configuración general y de cada plataforma.
folders/            Organización de recursos dentro del IDE.
notes/              Notas del proyecto e informes de compatibilidad.
datafiles/          Carpeta de archivos incluidos; actualmente vacía.
builds/             Exportaciones locales; excluidas de Git.
LICENSE             Licencia del repositorio.
```

Los archivos `.yy` describen los recursos de GameMaker. Dentro de cada objeto, los archivos `.gml` contienen el código de sus eventos: `Create_0.gml` para inicialización, `Step_0.gml` para actualización, `Draw_0.gml` para dibujo y `Alarm_0.gml` para acciones temporizadas, entre otros.

### Pantallas (`rooms/`)

| Recurso | Función |
| --- | --- |
| `rm_portada` | Menú principal y selección de partida. |
| `rm_tablero` | Campo de juego contra la CPU. |
| `rm_opciones` | Opciones y selección de música. |
| `rm_creditos` | Créditos del juego. |

### Objetos (`objects/`)

| Objeto | Responsabilidad |
| --- | --- |
| `obj_controlador` | Gestiona la música y delega el manejo de Escape y volumen. |
| `obj_bola` | Movimiento, colisiones, rebotes y detección de puntos. |
| `obj_jugador` | Control de la paleta mediante el ratón. |
| `obj_cpu` | Estado y actualización de la paleta rival. |
| `obj_marcador` | Puntuaciones, dibujo del marcador y transición entre rondas. |
| `obj_btn` | Comportamiento común de los botones. |
| `obj_btn_3_puntos`, `obj_btn_10_puntos` | Inicio de partidas con el límite de puntos elegido. |
| `obj_btn_musica` | Etiquetas y selección de la pista musical. |
| `obj_btn_salir` | Salida del juego mediante una alarma. |
| `obj_opciones`, `obj_creditos` | Navegación hacia sus respectivas pantallas. |
| `obj_titulo` | Título de portada y texto «REMASTERED». |
| `obj_texto_creditos` | Dibujo de los créditos. |

### Funciones compartidas (`scripts/`)

- `scr_cpu_ai/scr_cpu_ai.gml`: contiene `cpu_decide()`, la lógica de decisión de la CPU con observación retrasada, anticipación y error de puntería.
- `scr_ui_transition/scr_ui_transition.gml`: contiene `ui_escape()` para la navegación y salida, y `ui_update_music()` para ajustar el volumen. Todas las pistas bajan al 30 % durante una partida y vuelven al volumen completo fuera del tablero.

## Abrir y ejecutar

1. Clona el repositorio.
2. Abre `Pong Remake.yyp` en GameMaker.
3. Selecciona la plataforma de destino y ejecuta el proyecto desde el IDE.

La compilación Linux disponible se generó con el runtime de GameMaker `2026.100.0.1132`. La presencia de opciones para otras plataformas no implica que existan builds publicados para ellas.

## Descargar el juego

El AppImage para Linux x86_64 está disponible en [Releases](https://github.com/CJ-Montero/Pong-Remake-Remasted-GameMaker/releases).

```bash
chmod +x PongRemake.AppImage
./PongRemake.AppImage
```

Los ejecutables se distribuyen como archivos adjuntos de las releases, no dentro del historial del código fuente.

## Archivos generados

Git excluye las carpetas locales `Build/`, `builds/` y `.gamemaker-mcp/`, además de exportaciones y archivos temporales definidos en `.gitignore`. El código y los recursos originales de `objects/`, `rooms/`, `scripts/`, `sprites/`, `sounds/` y `fonts/` sí se versionan.

## Licencia

Consulta [LICENSE](LICENSE) para los términos de la licencia GNU GPL versión 3 presente en el repositorio.
