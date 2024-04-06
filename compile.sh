#!/bin/bash
set -e

TARGET=$(rustup default | awk '{sub(/[^-]*-/); print $1}')

RUSTFLAGS="-C target-cpu=native -C link-args=-Wl,-no-pie,-build-id=none,--no-eh-frame-hdr,--gc-sections,-s" cargo build \
--release \
-Z build-std=std,panic_abort,core,alloc,proc_macro \
-Z build-std-features=panic_immediate_abort \
-Z unstable-options \
--target "$TARGET" \
--out-dir build