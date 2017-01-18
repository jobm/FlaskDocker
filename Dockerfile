# use official python 3.6
FROM python:3.6

# make a directory called deploy_to_docker
RUN mkdir /deploy_to_docker

# make deploy_to_docker the working directory for our docker image
WORKDIR /deploy_to_docker

# add all files to our current dirctory to our deploy_to_docker working directory
ADD . /deploy_to_docker

# run pip to install requirements
RUN pip install -r requirements.txt

# use port 5000 to run our app
EXPOSE 5000

# finally run the script, for django would be CMD["python", "dir/manage.py", "runserver"]
CMD ["python", "/deploy_to_docker/myapp/my_app.py"]