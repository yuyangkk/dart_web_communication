import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dart_web_communication_platform_interface.dart';

/// An implementation of [DartWebCommunicationPlatformPlatform] that uses method channels.
class MethodChannelDartWebCommunicationPlatform extends DartWebCommunicationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dart_web_communication_platform');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
