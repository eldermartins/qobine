init-database:
    cargo sqlx db create && cargo sqlx migrate run --source player-module/migrations

create-env-file:
    echo 'DATABASE_URL="sqlite:///tmp/qobine.db"' > .env

build-all:
    just create-env-file
    just init-database
    cargo build --release
