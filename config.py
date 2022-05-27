import os
from dotenv import load_dotenv

load_dotenv()

# Statement for enabling the development environment
DEBUG = True

# Define the application directory
BASE_DIR = os.path.abspath(os.path.dirname(__file__))

# Define the database - we are working with
SQLALCHEMY_DATABASE_URI = os.getenv("DATABASE_PROVIDER")\
                            +'://'+os.getenv("DATABASE_USERNAME")+':'+os.getenv("DATABASE_PASSWORD")\
                            +'@'+os.getenv("DATABASE_HOST")+':'+os.getenv("DATABASE_POST")
			    +'/'+os.getenv("DATABASE_NAME")
DATABASE_CONNECT_OPTIONS = {}
SQLALCHEMY_TRACK_MODIFICATIONS = True

# Application threads. A common general assumption is
# using 2 per available processor cores - to handle
# incoming requests using one and performing background
# operations using the other.
THREADS_PER_PAGE = 2

# Enable protection agains *Cross-site Request Forgery (CSRF)*
CSRF_ENABLED = True

# Use a secure, unique and absolutely secret key for
# signing the data.
CSRF_SESSION_KEY = "secret"

# Secret key for signing cookies
SECRET_KEY = "secret"