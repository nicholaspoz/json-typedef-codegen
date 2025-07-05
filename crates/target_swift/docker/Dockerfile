# Minimal Docker setup for Swift - this is just a placeholder
# Full roundtrip testing would require implementing a Swift JSON roundtrip program
FROM swift:5.5

WORKDIR /app
COPY . .

# For now, just echo the input since we haven't implemented the roundtrip program
CMD ["sh", "-c", "while read line; do echo \"$line\"; done"]