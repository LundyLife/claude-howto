---
description: Add unit tests for code paths that have no tests yet
---

# Expand unit tests

Add tests for the parts of this project that are not tested yet. Use the test
framework the project already uses.

1. **Measure.** Run the project's coverage report, if it has one, to find code
   with no tests.
2. **Find gaps.** Look for branches, error paths, edge values (zero, empty,
   very large) and missing inputs that no test covers.
3. **Write tests** that follow the style and names of the existing tests:
   - Error handling
   - Edge values
   - Unusual inputs
   - Changes of state
4. **Measure again.** Run the tests and the coverage report and tell me what changed.

Show me the new test code before you add it.
