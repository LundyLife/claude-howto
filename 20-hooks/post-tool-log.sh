#!/bin/bash
# post-tool-log.sh: write one line to ~/hook-logs/tool-calls.log after every
# tool call the agent makes.
#
# Event:   PostToolUse
# Matcher: (leave empty)
#
# What it reads from the event on standard input:
#   - tool_name: the call's TITLE. The agent writes this short description
#     itself, such as "Print hello" for an echo command. It is not the command
#     and not a fixed tool name.
#   - tool_response: what the tool sent back.
# The event has no tool_input, so the hook cannot see the command itself.
#
# What it writes:
#   - one line per call to ~/hook-logs/tool-calls.log;
#   - the whole last event to ~/hook-logs/last-event.json, so you can see
#     every field your hook gets.
#
# Why an empty matcher? A matcher is compared with the title, so a matcher
# such as "shell" may never match. Empty means "every call".
#
# Platform: macOS and Linux.

INPUT=$(cat)

LOG_DIR="$HOME/hook-logs"
mkdir -p "$LOG_DIR"
printf '%s\n' "$INPUT" >"$LOG_DIR/last-event.json"

TITLE=$(printf '%s' "$INPUT" | tr '\n' ' ' |
  sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ -z "$TITLE" ] && TITLE="(no tool_name)"

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
printf '[%s] %s\n' "$TIMESTAMP" "$TITLE" >>"$LOG_DIR/tool-calls.log"

exit 0
