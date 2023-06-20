FROM rabbitmq:3.12.0-alpine

ENV RABBITMQ_VERSION=3.12.0

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

# Fix nodename
RUN echo 'NODENAME=rabbit@localhost' > /etc/rabbitmq/rabbitmq-env.conf

# AMQP 0-9-1 and AMQP 1.0
EXPOSE 5672

# rabbitmq_management
EXPOSE 15672

# rabbitmq_mqtt
EXPOSE 8883