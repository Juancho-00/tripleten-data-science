# TripleTen Data Science Bootcamp

Mis proyectos del bootcamp de **Data Science de TripleTen**, del primer `strip()` a una prueba de hipótesis con datos sacados por web scraping.

Cada proyecto parte de una pregunta de negocio real (qué plan deja más dinero, dónde poner la publicidad, qué afecta la duración de un viaje) y termina en una respuesta con números y una recomendación, no solo en un notebook que corre.

**Autor:** Juan Pablo Quintero · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)

## Proyectos

| # | Proyecto | La pregunta | Temas | Stack |
|---|---|---|---|---|
| 01 | [Store 1: limpieza de clientes](<./Sprint 1 - Proyecto 1>) | ¿Está la base lista para un programa de fidelización? | Limpieza de texto, tipos de datos | Python |
| 02 | [Store 1: segmentación](<./Sprint 2 - Proyecto 2>) | ¿Quiénes son los clientes jóvenes que más gastan? | Funciones, bucles, segmentación | Python |
| 03 | [¿Ciudad o día?](<./Sprint 3 - Proyecto 3>) | ¿Qué cambia más el consumo de música: la ciudad o el día? | Valores ausentes, duplicados implícitos | pandas |
| 04 | [Instacart](<./Sprint 4 - Proyecto 4>) | ¿Qué, cuándo y qué vuelve a comprar la gente? | Diagnóstico de nulos, EDA | pandas, matplotlib |
| 05 | [Megaline](<./Sprint 5 - Proyecto 5>) | ¿Qué plan prepago genera más ingresos? | Estadística, prueba de hipótesis | pandas, SciPy |
| 06 | [Ice: videojuegos](<./Sprint 6 - Proyecto 6>) | ¿En qué juegos invertir la campaña de 2017? | EDA, análisis por región, hipótesis | pandas, seaborn, SciPy |
| 07 | [Vehicles Dashboard](<./Sprint 7 - Proyecto 7>) | ¿Cómo explorar un mercado de autos usados sin abrir un notebook? | App web, despliegue · [App en vivo](https://vehicles-dashboard-jpq.onrender.com) | Streamlit, Plotly, Render |
| 08 | [Zuber: taxis en Chicago](<./Sprint 8 - Proyecto 8>) | ¿Los sábados lluviosos alargan el viaje al aeropuerto? | Web scraping, SQL, prueba de hipótesis | BeautifulSoup, PostgreSQL, SciPy |

## Entorno

Todos los proyectos corren en un único entorno conda, definido en [`environment_tripleten.yml`](environment_tripleten.yml):

```bash
conda env create -f environment_tripleten.yml
conda activate TripleTen
```

## Estructura

```
tripleten-data-science/
├── environment_tripleten.yml
├── Sprint 1 - Proyecto 1/    ← Python básico
├── Sprint 2 - Proyecto 2/    ← Python básico (funciones)
├── Sprint 3 - Proyecto 3/    ← Data wrangling
├── Sprint 4 - Proyecto 4/    ← Data wrangling +
├── Sprint 5 - Proyecto 5/    ← Análisis estadístico
├── Sprint 6 - Proyecto 6/    ← Proyecto integrado (Módulo 1)
├── Sprint 7 - Proyecto 7/    ← Desarrollo de software (app web)
└── Sprint 8 - Proyecto 8/    ← SQL
```

Cada carpeta tiene su propio `README.md` con el problema, los hallazgos y las decisiones que tomé en el camino.
