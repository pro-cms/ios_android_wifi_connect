import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ios_android_wifi_connect/ios_android_wifi_connect.dart';

void main() {
  const MethodChannel channel = MethodChannel('ios_android_wifi_connect');

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
    expect(await IosAndroidWifiConnect.ssid, '42');
  });
}
