#!/usr/bin/env bash

# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

docker compose up --force-recreate --no-deps --build --remove-orphans -d
docker compose logs -f