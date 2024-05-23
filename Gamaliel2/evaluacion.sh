#!/bin/bash

echo "FROM python" >> Gamaliel2/Dockerfile
echo "RUN pip install flask" >> Gamaliel2/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> Gamaliel2/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> Gamaliel2/Dockerfile
echo "COPY  ev2.py /home/myapp/" >> Gamaliel2/Dockerfile
echo "EXPOSE 5040" >> Gamaliel2/Dockerfile
echo "CMD python /home/myapp/ev2.py" >> Gamaliel2/Dockerfile

cd Gamaliel2
docker build -t sampleapp .
docker run -t -d -p 5040:5040 --name samplerunning sampleapp
docker ps -a 
