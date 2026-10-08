#!/bin/sh
# A user registers and logs in with JSON; the login answers with the user's stored record.
set -e
email="probe$$@example.com"
curl -fsS -H 'Content-Type: application/json' -d "{\"name\":\"probe\",\"email\":\"$email\",\"password\":\"probe-pass\"}" http://server:10001/register | grep -q 'Welcome to Mongection'
curl -fsS -H 'Content-Type: application/json' -d "{\"email\":\"$email\",\"password\":\"probe-pass\"}" http://server:10001/login | grep -q "Welcome Again.*$email"
