FROM python:3.10.14-bookworm

RUN pip install --upgrade pip

COPY drug_molecule_gen /app/drug_molecule_gen

WORKDIR /app

RUN mkdir /app/app_data

RUN chmod -R 777 /app/app_data

ENV PYTHONPATH=${PYTHONPATH}:/app/drug_molecule_gen

RUN pip install --no-cache-dir -r /app/drug_molecule_gen/requirements.txt

RUN chmod +x /app/drug_molecule_gen/train_pipeline.py

RUN chmod +x /app/drug_molecule_gen/predict.py

ENTRYPOINT ["python3"]

CMD ["./drug_molecule_gen/train_pipeline.py"]