from fastapi import FastAPI
from common.utils import get_message

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": get_message("Service 2")}
