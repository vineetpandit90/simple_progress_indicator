package progressindicator.vineet.com.simple_progress_indicator;

import android.app.Activity;
import android.app.ProgressDialog;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * SimpleProgressIndicatorPlugin
 */
public class SimpleProgressIndicatorPlugin implements MethodCallHandler {
    /**
     * Plugin registration.
     */
//  public static void registerWith(Registrar registrar) {
//    final MethodChannel channel = new MethodChannel(registrar.messenger(), "simple_progress_indicator");
//    channel.setMethodCallHandler(new SimpleProgressIndicatorPlugin());
//  }
    Activity activity;
    MethodChannel methodChannel;

    SimpleProgressIndicatorPlugin(Activity activity, MethodChannel methodChannel) {
        this.activity = activity;
        this.methodChannel = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    /**
     * Plugin registration.
     */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "simple_progress_indicator");
        SimpleProgressIndicatorPlugin progressIndicatorPlugin = new SimpleProgressIndicatorPlugin(registrar.activity(), channel);
        channel.setMethodCallHandler(progressIndicatorPlugin);
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        ProgressDialog progressDialog = new ProgressDialog(activity, R.style.MyTheme);
        progressDialog.setCancelable(true);
        progressDialog.setCanceledOnTouchOutside(true);
        progressDialog.setIndeterminate(true);


        if (call.method.equals("showProgressIndicator")) {
            boolean isShow = (boolean) call.arguments;
            if (progressDialog != null) {
                if (!progressDialog.isShowing() && isShow) {
                    progressDialog.show();
                } else {
                    progressDialog.dismiss();
                }
            }
        } else {
            result.notImplemented();
        }
    }
}
