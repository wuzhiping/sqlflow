# docker-compose.yml
  sqlflow:
    image: sqlflow/sqlflow:latest
    restart: always
    volumes:
      - ./notebook:/notebook
      - ./notebook_config.py:/root/.jupyter/jupyter_notebook_config.py
    ports:
      - 8899:8888
    links:
      - mysqlmaster:mysql
    command: bash -c "sqlflowserver --datasource='mysql://root:100861@tcp(mysql:3306)/?maxAllowedPacket=0' & SQLFLOW_SERVER=localhost:50051 jupyter notebook "
    stdin_open: true
    tty: true

