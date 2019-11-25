import 'package:flutter/services.dart';

class SimpleProgressIndicator {
  static const MethodChannel _channel =
      const MethodChannel('simple_progress_indicator');

  static void showProgress(bool b) async {
    _channel.invokeMethod('showProgressIndicator', b);
  }
}
