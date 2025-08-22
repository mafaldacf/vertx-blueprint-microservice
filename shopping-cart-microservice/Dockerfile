FROM openjdk:8-jre-bullseye

ENV VERTICLE_FILE=target/shopping-cart-microservice-fat.jar

# Set the location of the verticles
ENV VERTICLE_HOME=/opt/verticles

RUN apt-get update \
 && apt-get install -y --no-install-recommends curl ca-certificates tzdata \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 8084

COPY $VERTICLE_FILE $VERTICLE_HOME/
COPY src/config/docker.json $VERTICLE_HOME/

WORKDIR $VERTICLE_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["java -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Djava.net.preferIPv4Stack=true -jar shopping-cart-microservice-fat.jar -cluster -conf docker.json"]
