FROM python:3.11.12-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# System packages (minimal, security-focused)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user
RUN useradd --create-home --shell /usr/sbin/nologin appuser

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade \
        pip \
        setuptools \
        wheel \
    && pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir pytest

# Copy application source
COPY . .

# Run as non-root
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
