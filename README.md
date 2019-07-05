# django-cloud-run
Django running on Cloud Run, connecting to Cloud SQL

## Run locally
```bash
python3.7 -m venv env

.\env\Scripts\Activate.ps1
# or
source env/bin/activate
# or

pip install -r requirements.txt

python3 manage.py runserver
```

## Docker
```
docker build -t djangocloudrun .
docker run -p 8000:8000 -e PORT=8000 djangocloudrun
```