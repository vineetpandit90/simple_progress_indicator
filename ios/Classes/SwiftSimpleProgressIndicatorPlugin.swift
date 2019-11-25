import Flutter
import UIKit

public class SwiftSimpleProgressIndicatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "simple_progress_indicator", binaryMessenger: registrar.messenger())
    let instance = SwiftSimpleProgressIndicatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    SVProgressHUD.setDefaultMaskType(.black)

    SVProgressHUD.setForegroundColor(UIColor(red: 39/255.0, green: 128/255.0, blue: 250/255.0, alpha: 1.0))
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  if(call.method == "showProgressIndicator"){
  let status:Bool = call.arguments as! Bool
  if status == true {
  SVProgressHUD.show()
  }
  else{
  SVProgressHUD.dismiss()
  }

  }

  }
}
