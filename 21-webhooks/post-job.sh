#!/bin/bash
# post-job.sh: ask Kiro Crew to summarize a build log, the way a build server would.
#
# It sends one POST to the inbound webhook endpoint. Kiro Crew answers at once
# with "accepted". The agent then works in the background, and its answer
# arrives in the dashboard bell (Notifications), not here.
#
# Before you run it:
#   1. Create a Webhooks source with "Require request signing" switched OFF
#      (a bearer-only token). See 21-webhooks/README.md, step 2.
#   2. Put the token in an environment variable, so it is not saved in this file:
#
#        export KIROCREW_WEBHOOK_TOKEN='paste-your-token-here'
#
# Run it:
#
#   bash post-job.sh
#
# Platform: macOS and Linux. Needs curl.

PORT="${KIROCREW_PORT:-5476}"
URL="http://127.0.0.1:${PORT}/api/hooks/agent"
TOKEN="${KIROCREW_WEBHOOK_TOKEN:-paste-your-token-here}"

if [ "$TOKEN" = "paste-your-token-here" ]; then
  echo "Set KIROCREW_WEBHOOK_TOKEN to your webhook token first." >&2
  exit 1
fi

curl -sS -X POST "$URL" \
  -H "Origin: http://127.0.0.1:${PORT}" \
  -H "Authorization: Bearer ${TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{
        "message": "Summarize ~/my-project/build.log in three bullets: what passed, what failed, and the first thing to fix.",
        "sessionKey": "hook:build:my-project",
        "name": "Build server"
      }'
echo
