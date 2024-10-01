FROM python:3.10.11

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD /bin/sh -c "gunicorn appapp & python3 -m bot"
