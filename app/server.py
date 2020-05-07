import time
import bottle
import os
import sys
import requests

bottle.debug(True)


dirname = os.path.dirname(os.path.abspath(sys.argv[0]))

def create_app():


    app = bottle.Bottle()
    app.config.load_config('sse_server.conf')

    # app.config.setdefault('server', 'gunicorn')
    app.config.setdefault('host', 'localhost')
    app.config.setdefault('port', 8080)

    return app

app = create_app()


@app.route('/static/<filename:re:.*\.css>')
def send_css(filename):

    return bottle.static_file(filename, root=dirname+'/css/')

@app.route('/static/<filename:re:.*\.js>')
def send_js(filename):
	return bottle.static_file(filename, root=dirname+'/js/')

@app.route('/static/<filename:re:.*\.jpg>')
def send_js(filename):
    print (filename)
    return bottle.static_file(filename, root=dirname+'/img/')

@app.route('/')
def index():

    return bottle.template('golos')

@app.route('/vote/<animal>')
def vote(animal):

    url = "https://sf-pyw.mosyag.in/sse/vote/"+animal
    response = requests.post(url,data={})
    if response.status_code == 200:
        result = 'Ваш голос принят'
    else:
        result = 'Возникла ошибка, повторите позднее'

    return bottle.template('result',result=result)


@app.error(404)
def error404(error):
    return '404 ;('

if __name__ == "__main__":
    bottle.run(
        app=app,
        host=app.config.host,
    port = app.config.port,
    server = app.config.server,
    )