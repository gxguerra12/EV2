#!/bin/bash
mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp ev2.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  ev2.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5040" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/ev2.py" >> tempdir/Dockerfile

cd tempdir
docker build -t sampleapp .
docker run -t -d -p 5040:5040 --name samplerunning sampleapp
docker ps -a 
 
