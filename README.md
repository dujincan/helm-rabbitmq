wget https://dl.bintray.com/rabbitmq/community-plugins/3.8.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20191008-3.8.x.zip

unzip rabbitmq_delayed_message_exchange-20191008-3.8.x.zip

docker build -t registry.kuaiche100.cn/rabbitmq/rabbitmq-delayed-message-exchange:3.8.3-debian-10-r84 .

docker push registry.kuaiche100.cn/rabbitmq/rabbitmq-delayed-message-exchange:3.8.3-debian-10-r84

helm -n rabbitmq install rabbitmq -f values.yaml bitnami/rabbitmq