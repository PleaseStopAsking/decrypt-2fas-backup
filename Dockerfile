FROM python:3.12.1-slim-bookworm

ENV FILENAME="decrypt-2fas-backup.py"
ENV PASSWORD=""

# set the working directory in the container to /app
WORKDIR /app

# copy the python script into the container at /app
COPY $FILENAME /app/$FILENAME
COPY requirements.txt /app/requirements.txt

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# run the script when the container launches
CMD python $FILENAME $PASSWORD /app/backup.2fas
