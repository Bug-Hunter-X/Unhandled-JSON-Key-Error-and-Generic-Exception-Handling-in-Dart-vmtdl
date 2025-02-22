# Unhandled JSON Key Error and Generic Exception Handling in Dart

This repository demonstrates a common error in Dart code involving JSON handling and exception management. The `bug.dart` file contains code that may throw an exception if a JSON key is missing or if the API request fails.  The `bugSolution.dart` file provides a more robust solution.

**Problem:** The original code lacks proper error handling.  It attempts to access a JSON key without checking its existence and uses a generic `catch` block, hindering debugging.

**Solution:** The improved code incorporates null checks and more specific exception handling to address these issues.
