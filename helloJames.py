from fastapi import FastAPI
import streamlit as st

app = FastAPI()

@app.get("/hello")
def say_hello():
    user_input = st.text_input("Enter your name please:")
    print("Hello " + user_input + " badingdong!!!")