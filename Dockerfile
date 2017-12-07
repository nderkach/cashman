# Using lightweight alpine image
# FROM python:3.6-alpine

FROM kennethreitz/pipenv
COPY . /opt/cashman

# Defining working directory and adding source code
WORKDIR /opt/cashman
COPY bootstrap.sh ./
COPY cashman ./cashman

# Install API dependencies
# RUN pipenv install

# Start app
EXPOSE 5000
# ENTRYPOINT ["/opt/cashman/bootstrap.sh"]
CMD gunicorn --bind 0.0.0.0:$PORT cashman.index:app
