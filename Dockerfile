#Deriving the latest base image
FROM python:slim-buster


#Labels as key value pair
LABEL Maintainer="antonin alves"


# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src

#to COPY the remote file at working directory in container
COPY ./ .
# Now the structure looks like this '/usr/app/src/test.py'

RUN pip install -r requirements.txt
#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

ENTRYPOINT [ "python3", "main.py"]