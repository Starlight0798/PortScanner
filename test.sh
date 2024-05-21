#!/bin/bash

TARGET_IP="10.130.113.168"
START_PORT=20
END_PORT=30

echo "Testing help information:"
./bin/Scaner -h

echo "Testing Ping:"
sudo ./bin/Scaner -p $TARGET_IP

echo "Testing TCP Connect Scan:"
sudo ./bin/Scaner -c $TARGET_IP $START_PORT $END_PORT

echo "Testing TCP SYN Scan:"
sudo ./bin/Scaner -s $TARGET_IP $START_PORT $END_PORT

echo "Testing TCP FIN Scan:"
sudo ./bin/Scaner -f $TARGET_IP $START_PORT $END_PORT

echo "Testing UDP Scan:"
sudo ./bin/Scaner -u $TARGET_IP $START_PORT $END_PORT
