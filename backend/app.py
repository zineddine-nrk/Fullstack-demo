from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Backend is running zineddine nirak "

@app.route("/api/message")
def message():
    return jsonify({"message": "Hello DevOps - version 1.8 hhh"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)




