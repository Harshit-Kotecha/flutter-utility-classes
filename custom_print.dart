import 'package:flutter/foundation.dart';

/// Normal print statement of flutter
/// shown only in debug mode
void logToConsole(dynamic text) {
  if (kDebugMode) print(text);
}

/// Custom print statement with yellow color
/// shown only in debug mode
void printWarning(dynamic text) {
  if (kDebugMode) {
    print(
      '\x1B[33m-------------------------****------------------------------\x1B[0m',
    );
    print('\x1B[33m$text\x1B[0m');
    print(
      '\x1B[33m-------------------------****------------------------------\x1B[0m',
    );
  }
}

/// Custom print statement with red color
/// shown only in debug mode
void printErr(dynamic text) {
  if (kDebugMode) {
    logToConsole(
      '\x1B[31m-------------------------****------------------------------\x1B[0m',
    );
    logToConsole('\x1B[31m$text\x1B[0m');
    logToConsole(
      '\x1B[31m-------------------------****------------------------------\x1B[0m',
    );
  }
}
