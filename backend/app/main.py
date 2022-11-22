from fastapi import FastAPI
import os

app = FastAPI()


@app.get("/")
def read_root():
    return {
        'POSTGRES_USER':os.getenv('POSTGRES_USER'),
        'POSTGRES_PASSWORD':os.getenv('POSTGRES_PASSWORD'),
        'POSTGRES_DB':os.getenv('POSTGRES_DB')
        }
