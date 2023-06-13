#!/bin/bash

./build.sh && \
export NEAR_ACCT=nft_v2.qstn-v2.testnet && \
near delete $NEAR_ACCT qstn-v2.testnet && \
sleep 1 && \
near create-account $NEAR_ACCT --masterAccount qstn-v2.testnet --initialBalance 10 && \
sleep 1 && \
near deploy $NEAR_ACCT --wasmFile ./res/ansr_nft.wasm && \
sleep 1 && \
echo "!!! call init contract" && \
near call $NEAR_ACCT new_default_meta '{"owner_id": "qstn-v2.testnet" }' --accountId qstn-v2.testnet