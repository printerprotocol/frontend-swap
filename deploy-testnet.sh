#!/bin/bash
set -e
set -x
react-scripts build

rm -rf /home/ubuntu/Documents/printerprotocol/exchange/swap-testnet/*
mv ./build/* /home/ubuntu/Documents/printerprotocol/exchange/swap-testnet
pushd /home/ubuntu/Documents/printerprotocol/exchange/swap-testnet
mv testnet CNAME
git add *
git commit -am "Automated testnet deployment."
git push
