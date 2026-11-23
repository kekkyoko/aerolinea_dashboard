FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

# Dependencias primero (aprovecha la caché de Docker)
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Código y configuración de la app
COPY .streamlit .streamlit
COPY app.py .

# Render define la variable PORT; en local usa 8501 por defecto
ENV PORT=8501
EXPOSE 8501

CMD streamlit run app.py \
    --server.port=${PORT} \
    --server.address=0.0.0.0 \
    --server.headless=true \
    --browser.gatherUsageStats=false
