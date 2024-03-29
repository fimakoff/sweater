#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    swt@176.99.11.75:/home/swt
echo 'Restart server...'

ssh -i ~/.ssh/id_rsa swt@176.99.11.75 << EOF
pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'
