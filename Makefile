# Install the cli
curl -sL https://sentry.io/get-cli/ | SENTRY_CLI_VERSION="2.2.0" bash

# Setup configuration values

export SENTRY_AUTH_TOKEN="5834b26f2e954b1db79fdde449f7961fc19b270b7e7a4408ae4ba07f4360005c"
export SENTRY_ORG=sentry
export SENTRY_PROJECT=javascript-nextjs
export SENTRY_URL="https://scefali.ngrok.io"
VERSION=`sentry-cli releases propose-version`

# Workflow to create releases
sentry-cli releases new "$VERSION"
sentry-cli releases set-commits "$VERSION" --auto
sentry-cli releases finalize "$VERSION"