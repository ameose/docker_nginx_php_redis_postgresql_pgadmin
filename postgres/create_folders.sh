#!/bin/bash
mkdir -p /docker/PostgreSQL/postgres/db/pg_notify
mkdir -p /docker/PostgreSQL/postgres/db/pg_logical/snapshots
mkdir -p /docker/PostgreSQL/postgres/db/pg_logical/mappings
mkdir -p /docker/PostgreSQL/postgres/db/pg_commit_ts
mkdir -p /docker/PostgreSQL/postgres/db/pg_dynshmem
mkdir -p /docker/PostgreSQL/postgres/db/pg_replslot
mkdir -p /docker/PostgreSQL/postgres/db/pg_serial
mkdir -p /docker/PostgreSQL/postgres/db/pg_snapshots
mkdir -p /docker/PostgreSQL/postgres/db/pg_stat_tmp
mkdir -p /docker/PostgreSQL/postgres/db/pg_tblspc
mkdir -p /docker/PostgreSQL/postgres/db/pg_twophase
chown -R systemd-coredump:input /docker/PostgreSQL/postgres/db
chown systemd-coredump:root /docker/PostgreSQL/postgres/db
