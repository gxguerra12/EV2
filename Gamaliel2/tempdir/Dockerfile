FROM python
RUN pip install flask
COPY  ./static /home/myapp/static/
COPY  ./templates /home/myapp/templates/
COPY  ev2.py /home/myapp/
EXPOSE 5040
CMD python /home/myapp/sample_app.py
FROM python
RUN pip install flask
COPY  ./static /home/myapp/static/
COPY  ./templates /home/myapp/templates/
COPY  ev2.py /home/myapp/
EXPOSE 5040
CMD python3 /home/myapp/ev2.py
