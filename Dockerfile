FROM python:3.11-slim

# Install system dependencies (adjust as needed)
RUN apt-get update && apt-get install -y \
    bash \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy the repo contents
COPY . .

# Make the install script executable and run it
RUN chmod +x install.sh && ./install.sh

# Expose the port your app uses (adjust if needed)
EXPOSE 8000

# Set the default command to run your app (replace with the actual start command)
CMD ["python", "main.py"]
