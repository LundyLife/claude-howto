#!/bin/bash
# stop-check-once.sh: when the agent finishes a turn, ask it to check its work
# one more time. Asks at most once, then lets it stop.
#
# Event:   Stop
# Matcher: (leave empty)
#
# If a Stop hook prints exactly this JSON on standard output and exits 0:
#
#   {"decision": "block", "reason": "<what you want the agent to do>"}
#
# then the reason is sent to the agent and it takes one more turn.
# Any other output is ignored.
#
# LOOP GUARD: that extra turn ends with a Stop event too, so without a guard
# this hook would ask again after every check. Kiro Crew puts
# "stop_hook_active" in the Stop event on standard input:
#   - false on a turn that you started;
#   - true on a turn that a Stop hook asked for.
# So the script asks only when it is false. If the field is missing, it does
# not ask at all, so it can never loop.
#
# Platform: macOS and Linux.

INPUT=$(cat)
FLAT=$(printf '%s' "$INPUT" | tr '\n' ' ')

if printf '%s' "$FLAT" | grep -Eq '"stop_hook_active"[[:space:]]*:[[:space:]]*false'; then
  echo '{"decision": "block", "reason": "Check your last answer once more. If you find a mistake, fix it. If it is correct, say so in one sentence."}'
fi

exit 0
