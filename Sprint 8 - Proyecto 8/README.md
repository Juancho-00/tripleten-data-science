# Zuber: análisis de viajes en taxi en Chicago

Análisis de datos de viajes en taxi en Chicago (noviembre de 2017) para **Zuber**, una nueva empresa de viajes compartidos: quiénes son los competidores, dónde se concentra la demanda y cómo afecta el clima a la duración de los viajes.

## Preguntas de negocio

1. ¿Qué empresas de taxis dominan el mercado?
2. ¿En qué barrios terminan más viajes?
3. ¿Cambia la duración de los viajes del **Loop** al **Aeropuerto O'Hare** los sábados lluviosos?

## Proceso

| Paso | Qué se hizo | Herramientas |
|---|---|---|
| 1. Web scraping | Extracción del clima por hora de Chicago desde una página web | `requests`, `BeautifulSoup` |
| 2. SQL exploratorio | Viajes por empresa, empresas "Yellow"/"Blue" y concentración del mercado | PostgreSQL: `JOIN`, `GROUP BY`, `LIKE`, `CASE` |
| 3. SQL para la hipótesis | Barrios, clasificación del clima (Good / Bad) y viajes Loop → O'Hare en sábado | Subconsultas, `EXTRACT`, unión por hora |
| 4. EDA en Python | Estudio de los datos, top 10 de barrios y gráficos | `pandas`, `matplotlib`, `seaborn` |
| 5. Prueba de hipótesis | Limpieza, exploración de los grupos y prueba t bilateral | `scipy.stats.ttest_ind` |

## Hallazgos principales

- **Flash Cab** lidera el mercado con el **14 %** de los viajes, 1.7 veces más que la segunda empresa. El mercado está concentrado pero no cerrado: 54 operadores pequeños suman el 28 %.
- El **centro de Chicago** concentra la demanda: Loop, River North, Streeterville y West Loop reciben el **57 %** de las finalizaciones. **O'Hare** es el principal destino fuera del centro.
- Los sábados con **lluvia o tormenta**, el viaje Loop → O'Hare dura en promedio **~7 minutos más** (40.5 vs. 33.6 minutos). La diferencia es **estadísticamente significativa** (p ≈ 1.3 × 10⁻¹¹, α = 0.05) y se mantiene con distintos supuestos de limpieza.

> **Limitación:** los viajes con mal clima provienen de solo 2 sábados, así que la prueba muestra una diferencia significativa, pero no aísla la lluvia como única causa.

El análisis completo, con el código, los gráficos y las conclusiones, está en [`notebooks/P08_zuber_taxis_chicago.ipynb`](notebooks/P08_zuber_taxis_chicago.ipynb).

## Estructura

```
Sprint 8 - Proyecto 8/
├── README.md                            ← este archivo
├── data/
│   ├── chicago_weather_nov_2017.csv     ← clima obtenido por web scraping
│   ├── project_sql_result_01.csv        ← viajes por empresa (15 y 16 nov)
│   ├── project_sql_result_04.csv        ← promedio de viajes por barrio de destino
│   └── project_sql_result_07.csv        ← viajes Loop → O'Hare en sábado, con clima
├── sql/                                 ← consultas de los pasos 2 y 3 (una por archivo)
└── notebooks/
    └── P08_zuber_taxis_chicago.ipynb    ← notebook principal (pasos 1 a 5)
```

## Tecnologías

- **Python 3.12**: `pandas`, `numpy`, `requests`, `BeautifulSoup` (`lxml`), `matplotlib`, `seaborn`, `scipy`
- **SQL** (PostgreSQL)
- **Jupyter** (VS Code)
- **Git / GitHub**: control de versiones

## Ejecutar en local

```bash
# 1. Clonar el repositorio
git clone https://github.com/Juancho-00/tripleten-data-science.git
cd tripleten-data-science

# 2. Crear el entorno con todas las dependencias del bootcamp
conda env create -f environment_tripleten.yml
conda activate TripleTen

# 3. Abrir el notebook y ejecutarlo desde la carpeta notebooks/
#    Sprint 8 - Proyecto 8/notebooks/P08_zuber_taxis_chicago.ipynb
```

Las consultas SQL se ejecutaron en la base de datos de la plataforma de TripleTen. Sus resultados están en `data/` para que el notebook se pueda ejecutar sin conexión a la base de datos.

---

Proyecto del **Sprint 8 – SQL** del bootcamp de Data Science de [TripleTen](https://tripleten.com).
Autor: **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
