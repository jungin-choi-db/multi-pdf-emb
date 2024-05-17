FROM --platform=linux/amd64 python:3.12
COPY . .
RUN pip install -r requirements.txt
ARG API_KEY
ENV UPSTAGE_API_KEY=$API_KEY
EXPOSE 8501
CMD ["streamlit", "run", "app.py"]