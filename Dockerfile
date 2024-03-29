FROM python:3.8
COPY ./ ./
RUN pip install -r ./requirements.txt
EXPOSE 8050
CMD ["python", "-m", "src.make_api_pipelines", "././src/config/mlapi_parameters.json"]
CMD ["python", "-m", "src.launch_dashboard_hub", "./src/config/mlapi_parameters.json"]