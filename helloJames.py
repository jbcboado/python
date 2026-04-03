from fastapi import FastAPI
from fastapi.responses import HTMLResponse

app = FastAPI()

@app.get("/hello")
def say_hello():
    with open("index.html") as f:
        return f.read()