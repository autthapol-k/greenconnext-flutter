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
    projectId: 'android-projectId-dev',
    storageBucket: 'android-storageBucket',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcSBmdjAnKX8ZBZ7EbnfKzy1wjVCTU4ww',
    appId: '1:612363427229:ios:0cd85b43d1562d73a6a374',
    projectId: 'gc-mutm-dev',
    messagingSenderId: '612363427229',
    iosBundleId: 'com.greenconnext.mutm-dev',
  );
}
