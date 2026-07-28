#!/bin/bash
set -e
git init -q
git config user.email "test@test.com"
git config user.name "Test"
git add -A
git commit -q -m "chore: release v1.2.3"
git tag v1.2.3
# HEAD carries a stable release tag; requesting an rc bump must still skip
# (R19: guard covers both the major/minor/patch axis and the pre-release axis).
