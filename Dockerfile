# Usa un'immagine base di Python
FROM python:3.12-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia il file requirements.txt e installa le dipendenze
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia il codice sorgente nell'immagine
COPY . .

# Comando per avviare l'applicazione
CMD ["python", "app.py"]
