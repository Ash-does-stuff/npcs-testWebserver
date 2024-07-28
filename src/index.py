from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return '<h1>Nový porg ale lepší</h1><br/><img src="https://ashleyy.dev/static/media/anthony.f21d7c6e89aa5ef6ee90.jpg"/>'