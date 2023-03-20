#!/bin/bash

git clone https://github.com/traefik/traefik.git
cd traefik
git checkout v2.9.8
cat > cmd/traefik/tingyun.go <<EOF
package main
import (
	_ "github.com/TingYunGo/goagent"
)
EOF

go mod tidy
cp ../binary script/binary
cp ../crossbinary-default script/crossbinary-default

make binary


# docker build -t tingyun-traefik:v2.9.8 .
