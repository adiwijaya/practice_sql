#EXPORT
sudo -u iykra_trainee PGPASSFILE=/srv/.pgpass_sandbox psql -U iykra_trainee -d sandbox -a -f export_table.sql

#IMPORT 
sudo -u iykra_trainee PGPASSFILE=/srv/.pgpass psql -U iykra_trainee -d sandbox_target -a -f import_table.sql

#TRANSFORM
sudo -u iykra_trainee PGPASSFILE=/srv/.pgpass psql -U iykra_trainee -d sandbox_target -a -f aggregate_sql.sql
