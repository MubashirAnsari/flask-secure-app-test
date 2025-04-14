FROM python:3.9-slim

# Security: Create a non-root user
RUN adduser --disabled-password --gecos '' appuser
USER appuser

WORKDIR /app
COPY . .
RUN pip install flask

CMD ["python", "app.py"]

