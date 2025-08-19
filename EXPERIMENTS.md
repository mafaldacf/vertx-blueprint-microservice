# Set Up Environment

```zsh
sudo apt-update

sudo apt-get install -y openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH="$JAVA_HOME/bin:$PATH"
java -version
sudo npm install -g bower
```

```zsh
sudo npm install -g bower

cd api-gateway/src/main/resources/webroot
bower install

cd monitor-dashboard/src/main/resources/webroot
bower install
```

```zsh
# jdk 8
mvn clean install -Dmaven.test.skip=true
# jdk 11
mvn clean install -Dmaven.test.skip=true -Dmvel2.disable.jit=true
```

```zsh
cd docker
sudo ./build.sh
sudo ./run.sh
```

```zsh
curl https://192.168.1.6:8787
curl https://localhost:8787
```
