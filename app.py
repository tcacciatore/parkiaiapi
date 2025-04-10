from flask import Flask
from routes import dishes, medication

def create_app():
    app = Flask(__name__)
    
    # Enregistrement des blueprints
    app.register_blueprint(dishes.bp)
    app.register_blueprint(medication.bp)
    
    @app.route("/")
    def hello():
        return "API Parkinson bien déployée !"
    
    return app

if __name__ == "__main__":
    app = create_app()
    app.run(debug=True)