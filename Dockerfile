FROM bitnami/rabbitmq:3.8.3-debian-10-r84

ADD rabbitmq_delayed_message_exchange-20191008-3.8.x.ez  /opt/bitnami/rabbitmq/plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

RUN rabbitmq-plugins enable --offline rabbitmq_consistent_hash_exchange
