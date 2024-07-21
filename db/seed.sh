export DB_PASSWORD=hieupd123456
PGPASSWORD="$DB_PASSWORD" psql --host 127.0.0.1 -U hieupd -d hieupd_coworking_db -p 5433 < 1_create_tables.sql
PGPASSWORD="$DB_PASSWORD" psql --host 127.0.0.1 -U hieupd -d hieupd_coworking_db -p 5433 < 2_seed_users.sql
PGPASSWORD="$DB_PASSWORD" psql --host 127.0.0.1 -U hieupd -d hieupd_coworking_db -p 5433 < 3_seed_tokens.sql
