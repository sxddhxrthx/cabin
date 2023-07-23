from flask import Flask
import platform

app = Flask(__name__)

@app.route('/')
def index():
    return f"You've hit {platform.node()}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
