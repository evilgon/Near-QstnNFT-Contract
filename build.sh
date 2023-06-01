#!/bin/bash
set -e
pushd "$(dirname $0)"

RUSTFLAGS='-C link-arg=-s' cargo build --target wasm32-unknown-unknown --release
mkdir -p ./out
cp target/wasm32-unknown-unknown/release/non_fungible_token.wasm ./out/

popd
