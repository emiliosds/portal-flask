FROM alpine:latest
RUN apk add --update py-pip
RUN pip install --upgrade pip
RUN pip install -U Flask
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY static /usr/src/app/static
COPY templates /usr/src/app/templates
COPY main.py /usr/src/app/main.py
COPY settings.py /usr/src/app/settings.py
EXPOSE 5000
CMD ["python", "/usr/src/app/main.py"]