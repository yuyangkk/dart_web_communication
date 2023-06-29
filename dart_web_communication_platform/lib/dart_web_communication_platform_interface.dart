import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dart_web_communication_platform_method_channel.dart';

abstract class DartWebCommunicationPlatform extends PlatformInterface {
  /// Constructs a DartWebCommunicationPlatformPlatform.
  DartWebCommunicationPlatform() : super(token: _token);

  static final Object _token = Object();

  static DartWebCommunicationPlatform _instance = MethodChannelDartWebCommunicationPlatform();

  /// The default instance of [DartWebCommunicationPlatformPlatform] to use.
  ///
  /// Defaults to [MethodChannelDartWebCommunicationPlatform].
  static DartWebCommunicationPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DartWebCommunicationPlatformPlatform] when
  /// they register themselves.
  static set instance(DartWebCommunicationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
