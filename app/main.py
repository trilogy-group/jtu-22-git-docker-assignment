from fastapi import FastAPI
from utils import get_personal_message

app = FastAPI()


@app.get("/")
def root():
    personal_message = get_personal_message()
    return {
        "message": personal_message
    }
