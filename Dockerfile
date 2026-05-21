FROM python:3.11-slim

WORKDIR /app

COPY requirements_ui.txt .
RUN pip install --no-cache-dir -r requirements_ui.txt

COPY models/ ./models/
COPY frontend/ ./frontend/
COPY api.py .

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]