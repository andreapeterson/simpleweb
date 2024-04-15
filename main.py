from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hi there, my name is Andrea Peterson. I hope you are doing well today!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080) #App is listening on 8080