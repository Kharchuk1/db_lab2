#!/bin/bash
python -u main.py
#flyway -url=jdbc:postgresql://db:5432/postgres -user=postgres -password=postgres -connectRetries=60 -baselineOnMigrate=true migrate
flyway -configFiles=flyway/flyway.conf migrate
python -u new_main.py