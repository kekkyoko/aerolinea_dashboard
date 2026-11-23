#Torre de Control · Rendimiento Operativo de Vuelos

Proyecto Integrador U4 — Análisis y Exploración de Datos (INC-2505).

Dashboard interactivo en Streamlit sobre una aerolínea simulada de 100 vuelos:

- **Regresión y correlación (4.2):** ingreso por vuelo a partir de pasajeros y distancia (OLS).
- **Inferencia (4.3):** prueba t de Student para comparar la Estrategia A (tarifa estándar) contra la Estrategia B (precios dinámicos y upselling).
- **Dashboard (Unidad 6):** 3 indicadores clave, veredicto de decisión, filtros interactivos y 4 gráficas (heatmap, regresión, boxplot y residuos).

Los datos se generan de forma reproducible con DuckDB (`setseed(0.42)`).

## Estructura

```
.streamlit/config.toml   # tema y configuración de Streamlit
Dockerfile               # imagen para despliegue
app.py                   # aplicación
requirements.txt         # dependencias
```

## Ejecutar en local

```bash
pip install -r requirements.txt
streamlit run app.py
```
