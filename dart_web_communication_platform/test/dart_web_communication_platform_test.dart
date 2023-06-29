import 'package:flutter_test/flutter_test.dart';
import 'package:dart_web_communication_platform/dart_web_communication_platform_interface.dart';
import 'package:dart_web_communication_platform/dart_web_communication_platform_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDartWebCommunicationPlatformPlatform 
    with MockPlatformInterfaceMixin
    implements DartWebCommunicationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DartWebCommunicationPlatform initialPlatform = DartWebCommunicationPlatform.instance;

  test('$MethodChannelDartWebCommunicationPlatform is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDartWebCommunicationPlatform>());
  });

  test('getPlatformVersion', () async {
    DartWebCommunicationPlatform dartWebCommunicationPlatformPlugin = MethodChannelDartWebCommunicationPlatform();
    MockDartWebCommunicationPlatformPlatform fakePlatform = MockDartWebCommunicationPlatformPlatform();
    DartWebCommunicationPlatform.instance = fakePlatform;
  
    expect(await dartWebCommunicationPlatformPlugin.getPlatformVersion(), '42');
  });
}
