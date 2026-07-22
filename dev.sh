#!/bin/bash

# Kill both processes together when this script is stopped (Ctrl-C)
trap 'kill $(jobs -p)' EXIT

cd backend && bin/dev &
cd frontend && npm run dev &

wait
