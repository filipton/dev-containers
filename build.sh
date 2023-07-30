#!/bin/bash
cd files

docker build -t filipton/core-devc:latest -f core.Dockerfile .

docker build -t filipton/rust-devc:latest -f Rust.Dockerfile .
docker build -t filipton/rust-wasm-devc:latest -f RustWasm.Dockerfile .
