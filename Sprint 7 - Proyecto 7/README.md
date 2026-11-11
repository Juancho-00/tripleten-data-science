# Vehicles Dashboard

Aplicación web interactiva construida con **Streamlit** y **Plotly** para explorar dataset de vehicles_us.csv (anuncios de venta de vehículos usados publicados en USA).

🔗 **App:** https://vehicles-dashboard-jpq.onrender.com

> Como la app que se creó es del plan gratuito de Render, posiblemente la carga de la página puede tardar 1 minuto.

## Para qué sirve?

Permite a cualquier usuario, explorar inicialmente y de forma visual cómo se distribuyen los vehículos anunciados según su kilometraje y cómo se relaciona ese kilometraje según el precio de venta.

## Hallazgos del análisis exploratorio

El detalle del análisis está en [`notebooks/EDA.ipynb`](notebooks/EDA.ipynb). En resumen:

- El **kilometraje** y la **condición** son los factores que más se relacionan con el precio.
- El precio sube de forma **consistente** con el estado del vehículo.
- Odómetro y el precio tienen una relación **negativa moderada**.

## Estructura

```
Sprint 7 - Proyecto 7/
├── README.md            ← este archivo
├── app.py               ← aplicación Streamlit
├── requirements.txt     ← dependencias para el despliegue
├── vehicles_us.csv      ← dataset
└── notebooks/
    └── EDA.ipynb        ← análisis exploratorio de datos
```

## Tecnologías

- **Python 3.12**
- **pandas**: carga y manipulación de datos
- **Plotly**: visualizaciones interactivas
- **Streamlit**: aplicación web
- **Render**: despliegue en la nube
- **Git / GitHub**: control de versiones

## Ejecutar en local

```bash
# 1. Clonar el repositorio
git clone https://github.com/Juancho-00/tripleten-data-science.git
cd "tripleten-data-science/Sprint 7 - Proyecto 7"

# 2. Instalar dependencias (en un entorno virtual o de anaconda)
pip install -r requirements.txt

# 3. Iniciar la app
streamlit run app.py
```

---

Proyecto del **Sprint 7 – Desarrollo de Software** del bootcamp de Data Science de [TripleTen](https://tripleten.com).
Autor: **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
