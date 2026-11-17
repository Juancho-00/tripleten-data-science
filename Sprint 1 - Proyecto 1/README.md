# Store 1: limpieza de datos de clientes con Python puro

Antes de pandas vienen las listas, y antes de cualquier modelo vienen los nombres bien escritos. Este proyecto es justo eso: el primer contacto con datos sucios de clientes, resuelto sin librerías.

## El problema

Store 1 quiere lanzar un programa de fidelización, pero su base de clientes tiene los problemas típicos de un registro hecho a mano: espacios de más, guiones bajos en lugar de espacios, edades guardadas como decimales (`32.0`) o como texto (`'treinta y dos'`), y registros desordenados.

Si la base no está limpia, segmentar clientes es adivinar.

## Lo que hice

- **Normalicé los nombres:** `' mike_reed '` → `'mike reed'` → `['mike', 'reed']`, con `strip()`, `replace()` y `split()`.
- **Corregí los tipos:** edades a `int`, y un `try/except` para que un valor como `'treinta y dos'` no tumbe el proceso, sino que avise.
- **Ordené los registros** por ID para que los reportes sean revisables.
- **Calculé el gasto por cliente** y armé resúmenes con f-strings, del tipo que un gerente lee en 5 segundos.
- **Llevé la limpieza a toda la base** de 10 clientes en un solo paso.

## Por qué importa

Ningún análisis de clientes leales, ingresos por categoría o campañas de marketing funciona si `'Mike Reed'` y `' mike_reed '` cuentan como dos personas. Este es el piso de todo lo que viene después.

## Stack

Python 3: strings, listas, conversión de tipos, `try/except` y f-strings.

## Archivos

| Archivo | Contenido |
|---|---|
| `P01_python_basico.ipynb` | Notebook con los 9 pasos de limpieza |

---

Proyecto del **Sprint 1** del bootcamp de Data Science de [TripleTen](https://tripleten.com) · **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
