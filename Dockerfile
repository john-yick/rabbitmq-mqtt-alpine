FROM rabbitmq:3.12-management-alpine

ENV RABBITMQ_VERSION=3.12

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

# Fix nodename
RUN echo 'NODENAME=rabbit@localhost' > /etc/rabbitmq/rabbitmq-env.conf

# AMQP 0-9-1 and AMQP 1.0
EXPOSE 5672

# rabbitmq_management
EXPOSE 15672
EXPOSE 15675
EXPOSE 15692

# rabbitmq_mqtt
EXPOSE 1883
EXPOSE 8883