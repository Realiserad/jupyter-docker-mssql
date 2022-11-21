#!/bin/sh

echo "⌛ Waiting for container readiness..."
sleep 30

echo "💪 Creating test database..."
echo "CREATE DATABASE TestDB;" > create_database.sql
echo "GO" >> create_database.sql
/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U SA -P "$MSSQL_SA_PASSWORD" -i create_database.sql