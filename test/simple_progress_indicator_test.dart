import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_progress_indicator/simple_progress_indicator.dart';

void main() {
  const MethodChannel channel = MethodChannel('simple_progress_indicator');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SimpleProgressIndicator.platformVersion, '42');
  });
}
