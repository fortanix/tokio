#!/bin/bash -ex
repo_root=$(readlink -f $(dirname ${BASH_SOURCE[0]}))
cd ${repo_root}

# Unfortunately, the `ftxsgx-runner-cargo` application doesn't enable us to point to a runner within the same workspace. We use a hack here by pointing to `runner` and making sure such an executable exists when running CI
pushd runner
cargo build
popd

export PATH=${repo_root}/target/debug/:${PATH}
