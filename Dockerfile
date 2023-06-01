FROM python:3.10
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade setuptools
RUN pip3 install -r requirements.txt
ENV PYTHONDONTWRITEBYCODE 1
COPY .. /app
WORKDIR /app

CMD ["python3", "main.py"]

