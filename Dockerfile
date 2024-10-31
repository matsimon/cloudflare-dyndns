FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./
RUN apk add --no-cache cargo
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./

CMD [ "python", "./app.py" ]

EXPOSE 80
