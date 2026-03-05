FROM python:3.12-slim
WORKDIR /app
COPY backup_api/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY backup_api/app.py .
EXPOSE 6000
CMD ["python", "app.py"]
