import 'dart:async';

import 'package:flutter/services.dart';

class SimpleProgressIndicator {
  static const MethodChannel _channel =
      const MethodChannel('simple_progress_indicator');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
