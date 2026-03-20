FROM ghcr.io/astral-sh/uv:python3.13-trixie

RUN apt-get update \
  && apt-get install -y --no-install-recommends curl \
  && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN npm install --global cdk8s-cli@2.205.1

