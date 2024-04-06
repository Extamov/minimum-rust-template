use std::io::{stdout, Write};

fn main() {
	stdout().write(concat!(
		"Hello world\n",
		"שלום עולם\n",
		"こんにちは世界\n",
	).as_bytes()).unwrap();
}
