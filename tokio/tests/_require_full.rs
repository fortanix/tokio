#![cfg(not(any(feature = "full", target_arch = "wasm32", feature = "full-sgx")))]
compile_error!("run main Tokio tests with `--features full`");
