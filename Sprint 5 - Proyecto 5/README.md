# Megaline: el plan barato no es tan barato

Un operador de telecomunicaciones tiene dos planes prepago: **Surf** ($20/mes) y **Ultimate** ($70/mes). El área comercial quería saber cuál genera más ingresos para decidir dónde poner el presupuesto de publicidad. Analicé 500 clientes durante 2018.

## La respuesta corta

**Ultimate deja más dinero por usuario: $72.31 al mes frente a $60.71 de Surf**, y la diferencia es estadísticamente significativa.

Pero lo interesante está en Surf: un cliente que contrató un plan de $20 termina pagando, en promedio, **$60.71, tres veces la cuota**.

## Por qué pasa eso

- El consumo de minutos y de datos es **casi idéntico** entre planes (~430 minutos y ~16–17 GB al mes).
- La diferencia es el paquete: Surf incluye **15 GB** y el usuario promedio consume **16.2 GB**. Se pasa del límite casi siempre, y cada GB extra cuesta $10.
- Por eso el ingreso de Surf es **muy volátil** (varianza de ~3,068 frente a ~130 en Ultimate). Ultimate es ingreso predecible: casi todos pagan la cuota fija y nada más.

## Cómo lo hice

1. **Preparé 5 tablas** (usuarios, planes, llamadas, mensajes e internet): fechas a `datetime`, mes de cada evento y las reglas de facturación de Megaline, como redondear **cada llamada** hacia arriba al minuto y el **total mensual de datos** hacia arriba al GB.
2. **Consolidé el consumo** por usuario y mes con `merge` tipo `outer`: si alguien no hizo llamadas en un mes, su consumo es 0, no un dato faltante.
3. **Calculé el ingreso mensual** de cada usuario: cuota fija más excedentes.
4. **Probé dos hipótesis** con la prueba t de Welch (`equal_var=False`, porque las varianzas eran muy distintas) y α = 0.05:

| Hipótesis | Valor p | Resultado |
|---|---|---|
| El ingreso promedio es distinto entre Surf y Ultimate | ≈ 3.2 × 10⁻¹⁵ | **Se rechaza H₀**: es distinto, y mayor en Ultimate |
| El ingreso del área NY-NJ es distinto al del resto | ≈ 0.034 | **Se rechaza H₀**: NY-NJ ingresa menos ($59.92 vs. $65.22) |

## Qué haría con esto

Si el objetivo es **ingreso por usuario y estabilidad**, la publicidad debe empujar Ultimate. Ojo con la otra cara: Surf gana dinero con los excedentes, así que la pregunta siguiente es cuántos usuarios de Surf migrarían a Ultimate y cuánto excedente se dejaría de cobrar en ese caso.

## Stack

Python · pandas · numpy · matplotlib · seaborn · SciPy (`ttest_ind`)

## Archivos

| Archivo | Contenido |
|---|---|
| `P05_megaline_analisis_estadistico.ipynb` | Notebook: preparación, facturación, EDA y pruebas de hipótesis |
| `megaline_*.csv` | Datasets: usuarios, planes, llamadas, mensajes e internet |

---

Proyecto del **Sprint 5: Análisis estadístico de datos** del bootcamp de Data Science de [TripleTen](https://tripleten.com) · **Juan Pablo Quintero** · [GitHub](https://github.com/Juancho-00) · [Portafolio](https://juancho-00.github.io)
