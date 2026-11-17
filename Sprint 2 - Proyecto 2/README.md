# Store 1, fase 2: de una base limpia a decisiones de marketing

En el Sprint 1 dejé lista la base de clientes. Aquí la pongo a trabajar: ¿cuánto ingresa la tienda, quiénes son los clientes jóvenes que más gastan y quién compra en cada categoría?

## Preguntas de negocio

1. ¿Cuál es el ingreso total de la tienda?
2. ¿Qué clientes tienen menos de 30 años? Marketing quiere una campaña para ellos.
3. ¿Quiénes son jóvenes **y** además gastan mucho? Son los candidatos a beneficios especiales.
4. ¿Quién compra ropa? ¿Y quién compra en cualquier otra categoría?

## Lo que encontré

- **Ingreso total: $9,189** entre 10 clientes.
- **5 clientes tienen menos de 30 años**, pero solo **2 combinan juventud y alto gasto** (Samantha y James). La campaña joven tiene un núcleo muy concreto.
- **5 clientes compran ropa**, y 3 de ellos son menores de 30 años: la ropa es una categoría fuerte para la campaña joven.

## Cómo lo hice

- Una función `clean_user()` que limpia un registro (nombre, edad y categorías en minúsculas) y que después apliqué a toda la base. Escribir la lógica una vez y reutilizarla es la diferencia entre un script y un proceso.
- Bucles y condicionales para segmentar por edad, gasto y categoría.
- Una función `get_clients_by_category()` que filtra los clientes de **cualquier** categoría y devuelve su gasto total. Deja de ser un análisis puntual y se vuelve una herramienta reutilizable.

## Stack

Python 3: funciones, bucles, condicionales y listas anidadas.

## Archivos

| Archivo | Contenido |
|---|---|
| `P02_python_basico_continuacion.ipynb` | Notebook con la limpieza completa y los análisis de segmentación |

---

Proyecto del **Sprint 2** del bootcamp de Data Science de [TripleTen](https://tripleten.com) · **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
