#!/bin/sh
export ENV_PATH=$(pipenv --venv)
export FLASK_APP=/opt/cashman/index.py
source $ENV_PATH/bin/activate
#flask run -h 0.0.0.0
