from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return '<h1>Nový porg ale lepší</h1><br/><img src="https://media.discordapp.net/attachments/1217835095868833939/1217835121537843220/OIP_3.jpg?ex=669fb7d7&is=669e6657&hm=e152db7d089da26b6570b31f6fcf5b16d107042dce3648f54fa686cf93502591&=&format=webp&width=592&height=588"/>'