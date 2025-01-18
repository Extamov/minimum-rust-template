set RUSTFLAGS=-C target-cpu=native -C link-arg=/MERGE:.rdata=.text -C link-arg=/MERGE:.pdata=.text -C link-arg=/EMITPOGOPHASEINFO -C link-arg=/DEBUG:NONE
cargo build ^
--release ^
-Z build-std=std,panic_abort,core,alloc,proc_macro ^
-Z build-std-features=panic_immediate_abort ^
-Z unstable-options ^
--target x86_64-pc-windows-msvc ^
--artifact-dir build