#!/bin/bash

./build.sh && \
export NEAR_ACCT=ansr_v1_nft.3ugen.testnet && \
#near delete $NEAR_ACCT 3ugen.testnet && \
sleep 1 && \
near create-account $NEAR_ACCT --masterAccount 3ugen.testnet --initialBalance 10 && \
sleep 1 && \
near deploy $NEAR_ACCT --wasmFile ./res/ansr_nft.wasm && \
sleep 1 && \
echo "!!! call init contract" && \
near call $NEAR_ACCT new_default_meta '{"owner_id": "'3ugen.testnet'"}' --accountId 3ugen.testnet && \
sleep 1 && \
echo "!!! call add_ansr [new message]" && \
near call $NEAR_ACCT nft_mint '{"token_id": "15", "receiver_id": "'3ugen.testnet'", "token_metadata": { "title": "Some Test Art", "description": "My NFT media", "media": "https://bafkreiabag3ztnhe5pg7js4bj6sxuvkz3sdf76cjvcuqjoidvnfjz7vwrq.ipfs.dweb.link/", "copies": 1}}' --accountId 3ugen.testnet --deposit 0.1