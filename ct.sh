#!/bin/bash -ex

cargo test

pushd tokio
cargo test --target x86_64-fortanix-unknown-sgx --features "full-sgx"
popd
