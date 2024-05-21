#!/bin/bash

TARGET_IP="127.0.0.1"
START_PORT=20
END_PORT=30

echo "Testing help information:"
./bin/Scanner -h

echo "Testing Ping:"
sudo ./bin/Scanner -p $TARGET_IP

echo "Testing TCP Connect Scan:"
sudo ./bin/Scanner -c $TARGET_IP $START_PORT $END_PORT

echo "Testing TCP SYN Scan:"
sudo ./bin/Scanner -s $TARGET_IP $START_PORT $END_PORT

echo "Testing TCP FIN Scan:"
sudo ./bin/Scanner -f $TARGET_IP $START_PORT $END_PORT

echo "Testing UDP Scan:"
sudo ./bin/Scanner -u $TARGET_IP $START_PORT $END_PORT
