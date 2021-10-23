#!/usr/bin/env bash

telegram-send "1₿TC Price Incoming" && curl -s https://api.coindesk.com/v1/bpi/currentprice/usd.json | jq -r '[.time|.updated],[.bpi|.USD|.rate],[.bpi|.USD|.rate_float]' | xargs | tee -a '/home/sibs/.cache/daily.btc.pricecheck'| telegram-send --stdin

