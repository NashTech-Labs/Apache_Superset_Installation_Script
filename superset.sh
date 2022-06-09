sudo apt-get install build-essential libssl-dev libffi-dev python3-dev python3-pip libsasl2-dev libldap2-dev default-libmysqlclient-dev
pip install virtualenv
apt-get install -y python3-venv
python3 -m venv venv
. venv/bin/activate
pip install apache-superset
pip install itsdangerous==1.1.0
pip install Flask-WTF==0.14.3
pip install SQLAlchemy==1.3.24
pip install MarkupSafe==1.1.1
export FLASK_APP=superset
superset fab create-admin
pip install psycopg2-binary
superset db upgrade
superset load_examples
superset init
superset run -p 8088 --with-threads --reload --debugger


