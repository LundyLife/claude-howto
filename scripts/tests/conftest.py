"""Pytest configuration shared by the doc-tooling tests."""

from __future__ import annotations

import sys
from pathlib import Path

# Add the scripts/ directory to the path so tests can import the scripts.
sys.path.insert(0, str(Path(__file__).parent.parent))
