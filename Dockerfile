FROM python:3.6

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirement.txt ./

RUN pip install -r requirement.txt

# Bundle app source
COPY main.py /app

EXPOSE 5000
CMD [ "python", "main.py" ]