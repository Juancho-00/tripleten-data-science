# Instacart: qué compra la gente, cuándo y qué vuelve a comprar

Cinco tablas de pedidos de supermercado online, con valores ausentes y duplicados metidos a propósito. El reto tenía dos partes: dejar los datos confiables **entendiendo por qué estaban mal**, y después leer los hábitos de compra.

## La limpieza: cada dato faltante tenía una causa

Lo que más aprendí aquí es que un valor ausente casi nunca es "ruido": suele ser una pista.

| Hallazgo | Diagnóstico | Decisión |
|---|---|---|
| 15 pedidos duplicados | **Todos** caen un miércoles a las 2 a.m. No es azar: parece una carga por lotes que se ejecutó dos veces | Eliminados |
| 1,258 productos sin nombre | El 100 % está en el pasillo 100 y el departamento 21, que el propio sistema etiqueta como `"missing"` | Rellenados con `'Unknown'`: es una categoría real, no un error |
| 28,817 pedidos sin "días desde el pedido anterior" | Son exactamente los **primeros pedidos** de cada cliente: no existe un pedido anterior | Se conservan como `NaN` (ausencia estructural) |
| 836 productos sin posición en el carrito | Todos están en pedidos de **más de 64 artículos** | El sistema deja de registrar posiciones después de la 64. Usé un centinela (`999`) fuera de rango en lugar de inventar un orden |
| 104 nombres de producto repetidos | Cada uno tiene un `product_id` distinto | No se eliminan: son productos diferentes con el mismo nombre |

## Lo que encontré

- **Cuándo se compra:** la actividad arranca a las 7 a.m. y tiene su pico entre las 10 a.m. y las 4 p.m. **Domingo y lunes** son los días fuertes (84,090 y 82,185 pedidos); de martes a sábado el volumen es parejo.
- **El ciclo de compra es semanal:** la mediana entre pedidos es de **7 días**.
- **El cliente típico** hace 9 pedidos y compra unos 8 artículos por pedido, pero ambas distribuciones tienen una cola larga de usuarios "power".
- **La recompra manda:** en promedio, el **49.5 %** de lo que compra cada cliente ya lo había comprado antes.
- **La banana es la reina:** es el producto más pedido (66,050 veces), el más recomprado y el primero que más gente pone en el carrito. El top 20 está lleno de frutas y verduras frescas, casi todas orgánicas.

**Para el negocio:** la base de la canasta son productos frescos de reposición semanal. Recordatorios de recompra a los 7 días y promociones de frescos los domingos y lunes tienen mucho sentido.

## Stack

Python · pandas (`merge`, `groupby`, `nunique`, limpieza de nulos y duplicados) · matplotlib

## Archivos

| Archivo | Contenido |
|---|---|
| `P04_instacart_data_wrangling.ipynb` | Notebook: diagnóstico, limpieza y análisis (niveles A, B y C) |
| `instacart_orders.csv`, `products.csv`, `aisles.csv`, `departments.csv` | Datasets originales (separados por `;`) |

> `order_products.csv` (90 MB) **no está en el repositorio** por su tamaño. El notebook intenta leer los archivos desde `/datasets/` (la ruta de la plataforma de TripleTen) y, si no existe, los lee desde esta misma carpeta. Para ejecutarlo en local hay que poner ahí `order_products.csv`.

---

Proyecto del **Sprint 4: Data Wrangling +** del bootcamp de Data Science de [TripleTen](https://tripleten.com) · **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
