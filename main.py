from flask import Flask, render_template

app=Flask(__name__)

app.config.from_pyfile('settings.py')

@app.route('/')
def home():
    portal_imagem = app.config.get("PORTAL_IMAGE")
    return render_template('home.html', portal_imagem=portal_imagem)

if __name__ == '__main__':
    app.run(host='0.0.0.0')