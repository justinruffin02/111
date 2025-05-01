from flask import Flask            #From the flask package import the flask class

app = Flask(__name__)              #create an instance of the Flask class (app is now an object)

@app.get("/")                      #flask  decorator that maps HTTP methods amd resources (routes) to view functions
def profile():                     #view function
    me = {                         #python dictionary
        "first_name": "Justin",
        "last_name": "Ruffin",
        "hobbies": "swimming",
        "is_online": True
    }
    return me                      #returning a dictionary will automatically convert it to JSON