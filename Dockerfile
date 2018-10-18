FROM python:3.6

ARG PYSPARK_VERSION=2.3.2

# Install OpenJDK 8
RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jdk && \
  rm -rf /var/lib/apt/lists/*

# Install PySpark
RUN \
    pip install --upgrade pip && \
    pip install pyspark==${PYSPARK_VERSION}

# Define default command
CMD ["bash"]
