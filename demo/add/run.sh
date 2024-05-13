#! /bin/bash
set -euxo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export WASMTIME_NEW_CLI=0

${SCRIPT_DIR}/../chicory ${SCRIPT_DIR}/target/wasm32-unknown-unknown/release/add.wasm --invoke add 2 3
wasmtime ${SCRIPT_DIR}/target/wasm32-unknown-unknown/release/add.wasm --invoke add 2 3
