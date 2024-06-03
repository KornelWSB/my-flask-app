# Ustawiamy bazowy obraz na oficjalny obraz Python w wersji 3.9
FROM python:3.9

# Ustawienie katalogu roboczego w kontenerze
WORKDIR /app

# Skopiowanie plików aplikacji do obrazu
COPY . .

# Instalacja wymaganych bibliotek z requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Ustawienie zmiennej środowiskowej FLASK_APP na app.py
ENV FLASK_APP=app.py

# Uruchamianie aplikacji Flask
CMD ["flask", "run", "--host=0.0.0.0"]