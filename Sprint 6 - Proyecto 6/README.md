# Ice: dónde apostar la publicidad de videojuegos para 2017

Ice es una tienda online de videojuegos. Es diciembre de 2016 y hay que decidir en qué juegos invertir la campaña del año siguiente. Tenía 16,715 juegos con ventas por región, plataforma, género, reseñas y clasificación ESRB. El objetivo: encontrar qué hace que un juego venda.

## Primera decisión: qué años mirar

Con datos desde 1980, la tentación es usarlos todos. Pero al medir el **ciclo de vida de las consolas** encontré que una plataforma vive unos **6–7 años**, llega a su pico a los 3–5, y cada ~6 años llega una nueva generación (PS → PS2 → PS3 → PS4).

Planear 2017 con datos de la era de la PS2 no tiene sentido, así que trabajé solo con **2013–2016**: la generación vigente.

## Lo que encontré

- **Plataformas:** solo **PS4 y Xbox One crecen**. PS3, X360, Wii y DS van en caída libre porque su generación ya terminó.
- **Volumen no es rentabilidad:** **Action** vende más en total, pero porque tiene más lanzamientos (766). Por juego, el más rentable es **Shooter** (mediana de 0.45 M copias frente a 0.11 M de Action).
- **Los críticos venden juegos; los usuarios, no tanto:** en PS4, la nota de la crítica tiene una correlación de **0.41** con las ventas, y la de los usuarios, **−0.03**. El patrón se repite en casi todas las plataformas.
- **Japón es otro mercado:**

| Región | Plataforma líder | Género líder | Dato clave |
|---|---|---|---|
| Norteamérica | PS4 (24.8 %) y XOne (21.3 %) | Action, Shooter | Los juegos clasificación M son los que más venden |
| Europa | PS4 (36 %) | Action, Shooter | Perfil muy parecido a NA, con menos Xbox |
| Japón | **3DS (48.2 %)** | **Role-Playing (36 %)** | Dominan las portátiles. Xbox ni aparece en el top 5 |

- **Hipótesis (prueba t, α = 0.05):**
  - Los usuarios califican igual Xbox One y PC (p ≈ 0.15, no se rechaza H₀).
  - Califican distinto Action y Sports (p ≈ 0, se rechaza H₀).

## La recomendación

- **NA y Europa:** publicidad en **PS4 y Xbox One**, con foco en **Shooter, Action y Sports**, y apoyada en buenas notas de la crítica.
- **Japón:** una campaña separada, centrada en **3DS y Role-Playing**. Copiar la estrategia occidental ahí sería tirar el presupuesto.

## Decisiones de limpieza que vale la pena contar

- `'tbd'` en la nota de usuarios se convirtió a `NaN`: "por determinar" no es un número.
- Los ~50 % de notas faltantes **no se imputaron**: no faltan al azar (juegos viejos, de pocas ventas o muy recientes), y rellenarlas con la mediana habría inventado correlaciones.
- Se unificaron `K-A` y `E`, que son la misma clasificación ESRB con nombres de épocas distintas.
- Se eliminó un registro de **DS en 1985**: la consola salió en 2004.

## Stack

Python · pandas · numpy · matplotlib · seaborn · SciPy

## Archivos

| Archivo | Contenido |
|---|---|
| `P06_videojuegos_proyecto_integrado.ipynb` | Notebook: preparación, EDA, perfiles por región y pruebas de hipótesis |
| `games.csv` | Dataset (16,715 juegos) |

---

Proyecto integrado del **Sprint 6 (cierre del Módulo 1)** del bootcamp de Data Science de [TripleTen](https://tripleten.com) · **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
