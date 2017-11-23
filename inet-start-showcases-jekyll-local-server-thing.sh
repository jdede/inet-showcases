#!/bin/bash

CURRENT_DIR=$(pwd)
echo $CURRENT_DIR
PORT_NO=4000

cd ../bin
./start_local_server $PORT_NO $CURRENT_DIR
