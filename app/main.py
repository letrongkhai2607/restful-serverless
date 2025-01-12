from fastapi import FastAPI
from mangum import Mangum  # Middleware cho AWS Lambda

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI on Lambda!"}

# Tạo Lambda handler
lambda_handler = Mangum(app)
