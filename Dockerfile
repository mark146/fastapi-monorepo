FROM python:3.8

WORKDIR /app

COPY . .

RUN pip install fastapi uvicorn

ENV PYTHONPATH=/app

CMD ["uvicorn", "service1.main:app", "--host", "0.0.0.0", "--port", "8000"]
