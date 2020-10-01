import UIKit
import Flutter
@import "GoogleMaps/googleMaps.h"

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  [GMSServices.provideAPIKey("AIzaSyA6m6y4x8u5Mj6Z92igQ-Z5krNdTkluyso")];

}
