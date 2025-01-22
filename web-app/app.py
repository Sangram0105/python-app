from flask import Flask,  render_template, jsonify

app = Flask(__name__)


@app.route('/')
def hello_world():
    return "Hello, World!"

@app.route('/abc')
def present():
     return "hello my world"
@app.route('/sangram')
def sangram():
    return render_template(index.html)
@app.route('/error')
def trigger_error():
    app.logger.error("An error occurred.")
    return jsonify({"error": "Bad Request"}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0')
