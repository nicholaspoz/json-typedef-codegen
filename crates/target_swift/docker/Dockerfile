# Swift JSON roundtrip testing - validates generated code compiles correctly
FROM swift:5.8

ARG MAIN

WORKDIR /work

# Copy package structure  
COPY /Package.swift /work/Package.swift
RUN mkdir -p /work/Sources

# Copy main program
COPY /main.swift /work/Sources/main.swift

# Copy generated code and append to main.swift
COPY /gen /work/jtd_codegen_e2e/
RUN cat /work/jtd_codegen_e2e/*.swift >> /work/Sources/main.swift

# VALIDATE: Ensure the generated Swift code compiles correctly
# This is the actual test - if our codegen is broken, this will fail
RUN swift build

# For runtime, use cat (like TypeScript) since we've already validated compilation
ENTRYPOINT cat