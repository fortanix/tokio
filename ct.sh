#!/bin/bash -ex
repo_root=$(readlink -f $(dirname ${BASH_SOURCE[0]}))
cd ${repo_root}

source ${repo_root}/ct_env.sh

cargo test

pushd tokio
cargo test --target x86_64-fortanix-unknown-sgx --features "full-sgx"
popd

pushd tokio-macros
cargo test --target x86_64-fortanix-unknown-sgx
popd

pushd tokio-stream
cargo test --target x86_64-fortanix-unknown-sgx
popd

pushd stress-test
cargo test --target x86_64-fortanix-unknown-sgx
popd
