from flask import Flask

app = Flask(__name__)

@app.route('/about')
def about():
    return "This is our page "
@app.route('/main')
def object():
    return "Notre objectif est de collaborer"
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)