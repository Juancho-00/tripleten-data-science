# ¿La ciudad o el día? Qué mueve el consumo de música

Una plataforma de streaming quería saber si sus usuarios escuchan distinto según **la ciudad** (Springfield vs. Shelbyville) y **el día de la semana** (lunes vs. viernes). Spoiler: el día casi no importa; la ciudad, sí.

## Los datos

65,079 reproducciones con usuario, canción, artista, género, ciudad, hora y día. Venían con lo de siempre:

| Problema | Qué hice |
|---|---|
| Encabezados inconsistentes (`'  userID'`, `'  City  '`) | Los pasé a `snake_case` y minúsculas |
| 7,567 artistas, 1,343 canciones y 1,198 géneros sin dato | Los reemplacé por `'unknown'`: conservo la reproducción sin inventar información |
| 3,826 filas duplicadas | Las eliminé |
| El mismo género escrito de 4 formas (`hip`, `hop`, `hip-hop`, `hiphop`) | Una función `replace_wrong_values()` que los unifica en `hiphop` (3,056 registros) |

Ese último punto es el que más me gusta: un duplicado implícito no salta en `duplicated()`, pero parte en cuatro a un género en cualquier conteo.

## Lo que encontré

- **Springfield escucha 2.3 veces más música que Shelbyville** (42,741 vs. 18,512 reproducciones).
- **El viernes le gana al lunes, pero por poco:** +2.3 % en total. Por ciudad, +1.3 % en Springfield y +5 % en Shelbyville.
- **Conclusión:** el comportamiento cambia mucho más con la ciudad que con el día. Si hay que segmentar una campaña, la variable geográfica es la que tiene peso.

## Stack

Python · pandas (`groupby`, `fillna`, `drop_duplicates`, `value_counts`) · funciones propias para limpieza y conteo

## Archivos

| Archivo | Contenido |
|---|---|
| `P03_musica_data_wrangling.ipynb` | Notebook: limpieza, deduplicación y análisis |
| `music_project_en.csv` | Dataset original (65,079 filas) |

---

Proyecto del **Sprint 3: Data Wrangling** del bootcamp de Data Science de [TripleTen](https://tripleten.com) · **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
