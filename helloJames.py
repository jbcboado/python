from fastapi import FastAPI
import streamlit as st

app = FastAPI()

@app.get("/hello")
def say_hello():
    return("Hello James badingdong!!!")