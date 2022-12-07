#!/usr/bin/env bash

cd $(dirname $0)/..
rm normal.php -rf
cp -rv normal normal.php
cd normal.php
phpstan
