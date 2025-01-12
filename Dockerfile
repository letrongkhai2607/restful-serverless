FROM python:3.9-slim

# Cài đặt các dependencies
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy mã nguồn FastAPI
COPY . .

# Cài đặt ứng dụng và khởi chạy FastAPI với Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
