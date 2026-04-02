from fastapi import FastAPI

app = FastAPI()

@app.get("/hello")
def say_hello():
    name = input("Enter your name please: ")
    print("Hello " + name + " badingdong!!!")