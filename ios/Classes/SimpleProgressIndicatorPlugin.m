#import "SimpleProgressIndicatorPlugin.h"
#import <simple_progress_indicator/simple_progress_indicator-Swift.h>

@implementation SimpleProgressIndicatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleProgressIndicatorPlugin registerWithRegistrar:registrar];
}
@end
