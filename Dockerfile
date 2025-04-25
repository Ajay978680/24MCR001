FROM python:3.9-slim-bullseye

WORKDIR /app

RUN apt-get update && apt-get install -y gcc libffi-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev zlib1g-dev

RUN pip install pandas scikit-learn matplotlib

COPY . .


CMD ["python", "python.py"]
