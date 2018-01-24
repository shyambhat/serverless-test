#!/bin/bash
set -e

bash docker-node.sh "npm install && npm run deploy"
