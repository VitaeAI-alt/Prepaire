FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY analysis_script.py .
COPY taxonomic_data.csv .

CMD ["python", "analysis_script.py"]
