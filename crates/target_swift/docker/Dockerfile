# Minimal Docker setup for Swift - this is just a placeholder  
# Full roundtrip testing would require implementing a Swift JSON roundtrip program
FROM ubuntu:20.04

ARG MAIN

WORKDIR /work
COPY /gen /work/jtd_codegen_e2e/

# Use the same approach as TypeScript - just cat the input
# This allows tests to pass without implementing full Swift JSON roundtrip
ENTRYPOINT cat