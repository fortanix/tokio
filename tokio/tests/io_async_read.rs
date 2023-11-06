#![warn(rust_2018_idioms)]
#![cfg(any(feature = "full", feature = "full-sgx"))]

use tokio::io::AsyncRead;

#[test]
fn assert_obj_safe() {
    fn _assert<T>() {}
    _assert::<Box<dyn AsyncRead>>();
}
