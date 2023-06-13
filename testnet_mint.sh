#!/bin/bash

export NEAR_ACCT=nft_v2.qstn-v2.testnet && \
sleep 1 && \
echo "!!! call mint" && \
#near call $NEAR_ACCT nft_mint '{"token_metadata": { "title": "qstn-v2:3", "description": "QSTN-v2 NFT media", "media": "https://images.unsplash.com/photo-1642483160501-a15ef5069431", "copies": 1 } }' --accountId qstn-v2.testnet --deposit 0.1
#near call $NEAR_ACCT nft_mint '{"receiver_id": "qstn-v2.testnet", "token_metadata": { "title": "qstn-v2:4", "description": "QSTN-v2 NFT media", "media": "https://images.unsplash.com/photo-1642483160501-a15ef5069431", "copies": 1 } }' --accountId qstn-v2.testnet --deposit 0.1
near call $NEAR_ACCT transfer '{"receiver_id": "3ugen.testnet", "token_id": "1", "memo": "Happy NFT with QSTN v2", "amount": 0.1}' --accountId 3ugen.testnet --amount 0.1
