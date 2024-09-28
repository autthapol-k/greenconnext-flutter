import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
            'DefaultFirebaseOptions are not supported for this platform');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'android-apiKey',
    appId: 'android-appId',
    messagingSenderId: 'android-messagingSenderId',
    projectId: 'android-projectId-prod',
    storageBucket: 'android-storageBucket',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'ios-apiKey',
    appId: 'ios-appId',
    messagingSenderId: 'ios-messagingSenderId',
    projectId: 'ios-projectId-prod',
    storageBucket: 'ios-storageBucket',
    iosBundleId: 'iosBundleId',
  );
}
