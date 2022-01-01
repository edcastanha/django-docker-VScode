# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.7-alpine3.12

EXPOSE 8181

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .

# Install dependencies
RUN apk add --no-cache \
	python3-dev \
	python3-pip \
	python3-setuptools \
	python3-wheel \
	python3-venv

# Install Python packages
RUN pip3 install -r requirements.txt

# Create Python virtual environment
RUN python3 -m venv venv
ENV PATH venv/bin:$PATH

# Install Python packages
RUN venv/bin/pip install -r requirements.txt

WORKDIR /app
COPY ./app /app

# Creates a non-root user with an explicit UID and adds permission to access the /app folder
# For more info, please refer to https://aka.ms/vscode-docker-python-configure-containers
RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# File wsgi.py was not found in subfolder: 'django-docker-VScode'. Please enter the Python path to wsgi file.
CMD ["gunicorn", "--bind", "0.0.0.0:8181", "app.wsgi"]
