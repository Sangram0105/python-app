FROM python:3.9-slim

RUN addgroup  appgroup && adduser --home /home/appuser --ingroup appgroup appuser

WORKDIR /app

COPY . /app

RUN chown -R appuser:appgroup /app

USER appuser

ENV PATH="/home/appuser/.local/bin:$PATH"
ENV HOME="/home/appuser"

RUN pip install --no-cache-dir --user -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
