**下载插件并解压**

```
wget https://dl.bintray.com/rabbitmq/community-plugins/3.8.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20191008-3.8.x.zip
unzip rabbitmq_delayed_message_exchange-20191008-3.8.x.zip
```

**build带插件的image，并push**
```
docker build -t registry.example.cn/rabbitmq/rabbitmq-delayed-message-exchange:3.8.3-debian-10-r84 .
docker push registry.example.cn/rabbitmq/rabbitmq-delayed-message-exchange:3.8.3-debian-10-r84
```

**部署rabbitmq**

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm -n rabbitmq install rabbitmq -f values.yaml bitnami/rabbitmq
```
