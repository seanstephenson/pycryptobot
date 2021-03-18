FROM python:3.9.1

ENV PYTHONUNBUFFERED True

WORKDIR pycryptobot
ADD . .

RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x start.sh
ENTRYPOINT [ "./start.sh" ]
