# Dockerized FastAPI CRUD APP

    The Basic FastAPI CRUD app created in the yesterday's assignment has now been dockerized.
    Dockerization means packaging and distributing applications using docker images and containers.

## Project Structure

    Exercise_2_Dockerized_fastapi_crud_app/
    ├── pycache/
    ├── Dockerfile
    ├── main.py
    ├── requirements.txt
    ├── README.md

## Workflow

    1. Firstly cloned the `Exercise_2_FastAPI_CRUD_APP` created in yesterday's assignmet.
    2. Installed docker using WSL.
    3. Created the Dockerfile.
    4. Created the Docker Image.
    5. Checked whether the image is running properly.
    6. Pushed the Docker image to the docker hub.
    7. Pulled the docker image from Docker hub.
    8. Ran the docker image.

## Setup Insructions
    
    1. On any host machine with docker installed, pull the docker image.

        docker pull saimanasreen/dockerized-fastapi

    2. Run the docker container

        docker run -p 8000:8000 saimanasreen/dockerized-fastapi

    The app will be accessible at http://localhost:8000/docs

## References

    CampusX youtube video - https://www.youtube.com/watch?v=GToyQTGDOS4&t=5024s
    Apna College youtube video -https://www.youtube.com/watch?v=exmSJpJvIPs&t=190s
    w3schools



