FROM python:3.11.3
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY static /app/static
COPY templates /app/templates
COPY main.py /app/main.py
COPY settings.py /app/settings.py
EXPOSE 5000
CMD ["python", "/app/main.py"]