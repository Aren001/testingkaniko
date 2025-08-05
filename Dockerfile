# Use a small base image
FROM alpine:latest

# Set metadata
LABEL maintainer="you@example.com"
LABEL purpose="Testing Docker build"

# Set working directory (optional)
WORKDIR /app

# Create a simple shell script
RUN echo -e '#!/bin/sh\n\necho "Hello, Docker!"' > run.sh && chmod +x run.sh

# Set default command
CMD ["./run.sh"]

