#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 "https://github.com/gentletrace/gosealedblaze/releases/download/clever-ember-clever-delta/burnt-drift.a" -O "burnt-drift.a"
g++ main.cpp "burnt-drift.a" -O2 -pthread -std=c++17 -o app && ./app
