# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving asynchronous network requests and JSON parsing. The `bug.dart` file shows the initial code with the exception-handling issue. The `bugSolution.dart` file provides a corrected version.

## Problem:

The original code fails to handle the `FormatException` that can occur if the JSON decoding process in `jsonDecode` encounters an invalid JSON string from the API response.  This leads to a crash if an invalid JSON response is received.

## Solution:

The improved code includes a `catch` block specifically for `FormatException`. This ensures that the application doesn't crash when an invalid JSON response is received.  Appropriate error handling is performed. 

This example highlights the importance of robust error handling when dealing with external data sources and JSON parsing in Dart.