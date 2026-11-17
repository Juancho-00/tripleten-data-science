# TripleTen Data Science Bootcamp

Proyectos desarrollados durante el bootcamp de **Data Science de TripleTen**.
Cada carpeta es un proyecto autónomo con su propio `README.md` y dependencias.

**Autor:** Juan Pablo Quintero · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)

## Proyectos

| Sprint | Proyecto | Temas | Stack | Demo |
|---|---|---|---|---|
| 07 | [Vehicles Dashboard](<./Sprint 7 - Proyecto 7>) | EDA, app web, despliegue | Python, pandas, Plotly, Streamlit, Render | [App en vivo](https://vehicles-dashboard-jpq.onrender.com) |
| 08 | [Zuber: taxis en Chicago](<./Sprint 8 - Proyecto 8>) | Web scraping, SQL, EDA, prueba de hipótesis | Python, BeautifulSoup, PostgreSQL, pandas, seaborn, SciPy | [Notebook](<./Sprint 8 - Proyecto 8/notebooks/P08_zuber_taxis_chicago.ipynb>) |

## Entorno

Todos los proyectos usan un único entorno conda, definido en [`environment_tripleten.yml`](environment_tripleten.yml):

```bash
conda env create -f environment_tripleten.yml
conda activate TripleTen
```

## Estructura

```
tripleten-data-science/
├── environment_tripleten.yml
├── Sprint 7 - Proyecto 7/
│   ├── README.md
│   ├── app.py
│   ├── requirements.txt
│   ├── vehicles_us.csv
│   └── notebooks/
│       └── EDA.ipynb
└── Sprint 8 - Proyecto 8/
    ├── README.md
    ├── data/
    ├── sql/
    └── notebooks/
        └── P08_zuber_taxis_chicago.ipynb
```
