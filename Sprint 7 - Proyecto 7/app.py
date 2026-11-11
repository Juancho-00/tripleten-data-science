from pathlib import Path

import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
import streamlit as st

# Configuración inicial de la página

st.set_page_config(page_title='Vehicles Dashboard',
                   page_icon='🛻', layout='centered')

# Carga de datos

data_path = Path(__file__).parent / 'vehicles_us.csv'


@st.cache_data
def load_data(path):
    return pd.read_csv(path)


car_data = load_data(data_path)

# Encabezado de la página

st.header('Anucios de venta de vehículos en USA')
st.write(
    f'Explora {len(car_data):,} anuncios publicados entre mayo de 2018 y abril de 2019.\n\n'
    'Selecciona las casillas para construir los gráficos'
)

# Filtro opcional (precios atípicos detectados en el EDA)
exclude_adds_irrelevants = st.checkbox(
    'Excluir anuncios con precio atípico (USD 1)', value=True)

if exclude_adds_irrelevants:
    car_data = car_data[car_data['price'] > 1]

# Vista previa de los datos

if st.checkbox('Mostrar vista previa de los datos'):
    st.dataframe(car_data.head(20), width='stretch')

# Gráfico de histograma

build_histogram = st.checkbox('Construir gráfico de histograma')

if build_histogram:
    st.write(
        'Distribución del odómetro (millas recorridas) de los vehículos anunciados.')

    fig = go.Figure(data=[go.Histogram(x=car_data['odometer'])])

    fig.update_layout(title_text='Distribución millas recorridas',
                      xaxis_title='Millas', yaxis_title='Cantidad de anuncios')

    st.plotly_chart(fig, width='stretch')

# Gráfico de dispersión

build_scatter = st.checkbox('Construir gráfico de dispersión')

if build_scatter:
    st.write(
        'Relación entre del odómetro (millas recorridas) y el precio: a más millas, menor precio.')

    fig = px.scatter(car_data, x='odometer', y='price', color='condition',
                     opacity=0.4,
                     title='Relación entre odómetro y precio',
                     labels={'odometer': 'Millas', 'price': 'Precio (USD)', 'condition': 'Estado'})

    st.plotly_chart(fig, width='stretch')
