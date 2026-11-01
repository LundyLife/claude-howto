---
name: doc-generator
description: Generate comprehensive, accurate API documentation from source code. Use when creating or updating API documentation, generating OpenAPI specs, or when users mention API docs, endpoints, or documentation.
---

# API Documentation Generator Skill

## Helper script

This skill folder includes `generate-docs.py`. It reads one Python file and prints
markdown notes for every function whose name starts with `get_` or `post_`. The
script sits in this skill's own folder, not in the user's project, so give its full
path. Run it to get a first draft, then improve the result:

```bash
python3 <this skill's folder>/generate-docs.py path/to/your_api.py
```

## Generates

- OpenAPI/Swagger specifications
- API endpoint documentation
- SDK usage examples
- Integration guides
- Error code references
- Authentication guides

## Documentation Structure

### For Each Endpoint

````markdown
## GET /api/v1/accounts/:id

### Description
Brief explanation of what this endpoint does

### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| id | string | Yes | User ID |

### Response

**200 Success**
```json
{
  "id": "usr_123",
  "name": "Sample Person",
  "email": "you@example.com",
  "created_at": "2025-01-15T10:30:00Z"
}
```

**404 Not Found**
```json
{
  "error": "USER_NOT_FOUND",
  "message": "User does not exist"
}
```

### Examples

**cURL**
```bash
curl -X GET "https://api.example.com/api/v1/accounts/usr_123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

**JavaScript**
```javascript
const user = await fetch('/api/v1/accounts/usr_123', {
  headers: { 'Authorization': 'Bearer token' }
}).then(r => r.json());
```

**Python**
```python
response = requests.get(
    'https://api.example.com/api/v1/accounts/usr_123',
    headers={'Authorization': 'Bearer token'}
)
user = response.json()
```
````
