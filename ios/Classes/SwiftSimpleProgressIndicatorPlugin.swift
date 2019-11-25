import Flutter
import UIKit

public class SwiftSimpleProgressIndicatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "simple_progress_indicator", binaryMessenger: registrar.messenger())
    let instance = SwiftSimpleProgressIndicatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
