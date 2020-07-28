#!/bin/sh

set -e

echo "starting pgbadger $PGBADGER_VERSION ..."
echo ""
echo "--jobs $JOBS"
echo "--Jobs $PARALLEL_FILES"
echo "--average $AVERAGE"
echo "--sample $SAMPLE"
echo "--top $TOP"

mkdir -p /usr/share/nginx/html/pgbadger

pgbadger --incremental --quiet --jobs $JOBS --Jobs $PARALLEL_FILES --average $AVERAGE --sample $SAMPLE --top $TOP /data/*.log --outdir /usr/share/nginx/html/pgbadger

echo "... end of run"
exit 0
