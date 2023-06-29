library dart_web_communication;




class DartWebCommunication {



  ///
  /// window.postMessage的方式进行与js交互
  ///
  static void postMessage({String? message, String? message2}) {
    // QWebPluginWeb().postMessage('getDartInfo', data: {
    //   'message': message,
    //   'message2': message2,
    // });
  }

  ///
  /// callMethod的方式与js进行交互
  ///
  static String? callMethod() {
    // QWebPluginWeb<String?> pluginWeb = QWebPluginWeb();
    // String? result = pluginWeb.callMethod('getFraudTokenId');
    // if (result != null) {
    //   pluginWeb.alert(result);
    // }
    // return result;
  }

  ///
  /// 异步调用js方法
  ///
  static Future<String?> promiseToFuture() async {
    // QWebPluginWeb<String?> pluginWeb = QWebPluginWeb();
    // String? result = await pluginWeb.promiseToFuture('asyncCallback');
    // if (result != null) {
    //   pluginWeb.alert(result);
    // }
    // return result;
  }
}