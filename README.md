# ✈️ Torre de Control · Rendimiento Operativo de Vuelos

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

## Ejecutar con Docker

```bash
docker build -t dashboard-aerolinea .
docker run -p 8501:8501 dashboard-aerolinea
```

Abre `http://localhost:8501`.

## Desplegar en Render

1. En Render: **New → Web Service** y conecta este repositorio de GitHub.
2. En **Language / Runtime** elige **Docker** (Render detecta el `Dockerfile`).
3. Elige el plan **Free** y pulsa **Create Web Service**.

No necesitas comando de inicio: el `Dockerfile` ya usa el puerto que asigna Render.
