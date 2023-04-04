#!/usr/bin/env bash

aws iam list-policies | jq '[.Policies[].PolicyName]'
