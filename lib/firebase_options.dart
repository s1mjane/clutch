// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCxR7kL-EY4C2EB5gf8d7TbFbDkgPQLmUA',
    appId: '1:479948189947:web:3a20e1a2aeb58e4d9c405e',
    messagingSenderId: '479948189947',
    projectId: 'clutch-czb3',
    authDomain: 'clutch-czb3.firebaseapp.com',
    databaseURL: 'https://clutch-czb3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'clutch-czb3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFtkumag6Uy0PB_mX8o3Cgcske6rDyBN8',
    appId: '1:479948189947:android:441257ecbdc758899c405e',
    messagingSenderId: '479948189947',
    projectId: 'clutch-czb3',
    databaseURL: 'https://clutch-czb3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'clutch-czb3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdHwAAm2NH7U4RjmeYsc7q0qFWw9s2jNc',
    appId: '1:479948189947:ios:70437612119be26e9c405e',
    messagingSenderId: '479948189947',
    projectId: 'clutch-czb3',
    databaseURL: 'https://clutch-czb3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'clutch-czb3.appspot.com',
    iosBundleId: 'com.example.cluthVscodeVer1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdHwAAm2NH7U4RjmeYsc7q0qFWw9s2jNc',
    appId: '1:479948189947:ios:70437612119be26e9c405e',
    messagingSenderId: '479948189947',
    projectId: 'clutch-czb3',
    databaseURL: 'https://clutch-czb3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'clutch-czb3.appspot.com',
    iosBundleId: 'com.example.cluthVscodeVer1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCxR7kL-EY4C2EB5gf8d7TbFbDkgPQLmUA',
    appId: '1:479948189947:web:6d1578cdf825b9739c405e',
    messagingSenderId: '479948189947',
    projectId: 'clutch-czb3',
    authDomain: 'clutch-czb3.firebaseapp.com',
    databaseURL: 'https://clutch-czb3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'clutch-czb3.appspot.com',
  );
}
