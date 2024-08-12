# TODO: not optimisated at all, current imagesize > 1GB

from python:3.11

WORKDIR .

# clone 1brc repo
RUN git clone https://github.com/ifnesi/1brc.git

# install dependencies
RUN pip install -r 1brc/requirements.txt

# generate measurements.txt
RUN mkdir -p output
CMD ["python", "1brc/createMeasurements.py", "-o", "output/measurements.txt"]
