#import "PluginWifiConnectPlugin.h"
#if __has_include(<ios_android_wifi_connect/ios_android_wifi_connect-Swift.h>)
#import <ios_android_wifi_connect/ios_android_wifi_connect-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ios_android_wifi_connect-Swift.h"
#endif

@implementation PluginWifiConnectPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginWifiConnectPlugin registerWithRegistrar:registrar];
}
@end
