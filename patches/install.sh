#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/opt/telephony'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"
    echo "${RED}Applying ${NC}${repository} ${RED}patches...${NC}"
    git am --keep-cr "${ROOT}/device/xiaomi/mt6765-common/patches/${repository}"/*
    cd "${ROOT}"
done
