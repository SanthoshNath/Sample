#!/usr/bin/env bash

policies=$(aws iam list-policies | jq '[.Policies[].PolicyName]')

jq -n --arg policies $policies \
      '{"policies":$policies}'
