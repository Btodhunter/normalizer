FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy the normalizer script
COPY normalizer /app/normalizer

# Make sure the script is executable
RUN chmod +x /app/normalizer

# Set the script as the entrypoint
ENTRYPOINT ["/app/normalizer"]