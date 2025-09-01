# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose web port (Flask/Django default)
EXPOSE 8000

# Command to run the app
CMD ["python", "app.py"]
