DBNAME=rxnorm
DBUSER=postgres
DBHOST=localhost

echo "Formatting RRF files.."
#./format-rrf-files.sh

echo "Creating database $DBAME as user $DBUSER..."
#sudo -u $DBUSER createdb $DBNAME $DBUSER

echo "Creating tables..."
#sudo -u postgres psql -f postgres-create-tables.sql --dbname=$DBNAME --username=$DBUSER --host=$DBHOST

echo "Loading data into tables..."
sudo -u postgres psql -f postgres-load-data.sql --dbname=$DBNAME --username=$DBUSER --host=$DBHOST
