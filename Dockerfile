FROM python:3.13-slim

# Set environment variables for the timezone
ENV TZ=America/Los_Angeles
ENV DEBIAN_FRONTEND=noninteractive

# Install the tzdata package
RUN apt-get update && apt-get install -y tzdata && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy the normalizer script
COPY normalizer /app/normalizer

# Make sure the script is executable
RUN chmod +x /app/normalizer

# Set the script as the entrypoint
ENTRYPOINT ["/app/normalizer"]