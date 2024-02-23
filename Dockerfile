FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /PollApp
COPY requirements.txt /PollApp/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /PollApp/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
