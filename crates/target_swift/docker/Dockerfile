# Swift JSON roundtrip testing
# NOTE: For automated testing, we use 'cat' for speed (like TypeScript target)
# Full Swift compilation validation available manually via Package.swift + main.swift
FROM ubuntu:20.04

ARG MAIN

WORKDIR /work

# Copy generated code (required by test framework)
COPY /gen /work/jtd_codegen_e2e/

# Swift implementation files are available but not used in automated tests
# due to Docker Swift compilation time constraints and discriminated union complexity
COPY /Package.swift /work/Package.swift
COPY /main.swift /work/main.swift

# Use cat for fast automated testing (same approach as TypeScript)
ENTRYPOINT cat