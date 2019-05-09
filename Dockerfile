FROM sqlflow/sqlflow:latest

RUN apt-get update
RUN pt-get install -y make build-essential g++ 
RUN pip install requests fbprophet