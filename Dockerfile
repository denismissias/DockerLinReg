# from Ubuntu 20.04 base image
FROM ubuntu:20.04

# provide your contact info if you wish
LABEL maintainer="Noureddin Sadawi <myemail@mail.com>"

# run these commands .. 
RUN apt update 
RUN apt install -y python3-pip
RUN pip3 install pandas scikit_learn

# copy this Python script from host machine to docker image
ADD linear-regression.py /

# as soon as a container starts, run this script using Python3
ENTRYPOINT ["python3", "/linear-regression.py"]
