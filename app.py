from flask import Flask
from routes import dishes

def create_app():
    app = Flask(__name__)
    
    # Enregistrement des blueprints
    app.register_blueprint(dishes.bp)
    
    return app

if __name__ == "__main__":
    app = create_app()
    app.run(debug=True)