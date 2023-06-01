near call dynamicnft.testnet new_default_meta '{"owner_id": "dynamicnft.testnet"}' --accountId $ID

near call dynamicnft.testnet nft_mint '{"token_id": "0", "receiver_id": "harran214.testnet", "token_metadata": {"title": "Olympus Mons", "description": "The tallest mountain in the charted solar system"}}' --accountId $ID --depositYocto '7000000000000000000000'

near call dynamicnft.testnet update_metadata '{"token_id": "0", "token_metadata": {"title": "Monster", "description": "The is Monster"}}' --accountId $ID 