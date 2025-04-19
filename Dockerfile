FROM python:alpine

WORKDIR /app

COPY app/ /app/

COPY requirement.txt/  ./

RUN pip install --upgrade pip && \
    if [-s requirement.txt]; then pip install -r requirement.txt; fi

CMD ["python", "main.py"]