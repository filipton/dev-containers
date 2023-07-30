FROM filipton/rust-devc:latest
WORKDIR /app

RUN curl https://get.wasmer.io -sSfL | sh
RUN . /root/.cargo/env && curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
RUN . /root/.cargo/env && cargo install cargo-wasix
RUN . /root/.cargo/env && cargo wasix download-toolchain
