---
inclusion: always
---

# API rules

Rules for chats that work on the shop's API. This file is meant for a sidebar
folder's **Additional steering**: put it in a folder of its own, such as
`~/my-project/steering-api/api.md`, and add that folder to the sidebar folder
that holds your API chats. Chats in other sidebar folders do not get it.

## Checking input

- Check every request body before using it.
- When a check fails, return status 400 with the name of each bad field.

## Sign-in

- Every endpoint needs a token in the `Authorization` header.
- Never log a token.

## Response shape

Every success looks like this:

```json
{
  "success": true,
  "data": {},
  "timestamp": "2026-01-15T10:30:00Z"
}
```

Every error looks like this:

```json
{
  "success": false,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "A message a person can read"
  },
  "timestamp": "2026-01-15T10:30:00Z"
}
```

## Long lists

- Page through long lists with a cursor, not a page number.
- Return at most 100 items per page. Return 20 when the caller does not say.
