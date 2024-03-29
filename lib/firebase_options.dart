// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAJgqF1qbCLNY_s_V5QVqicnyL9181sCM4',
    appId: '1:703176794788:web:3e49ea0f57916550b4bc31',
    messagingSenderId: '703176794788',
    projectId: 'authentication-89276',
    authDomain: 'authentication-89276.firebaseapp.com',
    storageBucket: 'authentication-89276.appspot.com',
    measurementId: 'G-P4PXZ4TD63',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAv6eu2-NBcmJo01V3F9GzzjYC1vV9nXp4',
    appId: '1:703176794788:android:e3ce517e90ef10f0b4bc31',
    messagingSenderId: '703176794788',
    projectId: 'authentication-89276',
    storageBucket: 'authentication-89276.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCB8VeS1dYCyDFnQGwkqzsT2u6Sl6g7Eho',
    appId: '1:703176794788:ios:3961006f88718a83b4bc31',
    messagingSenderId: '703176794788',
    projectId: 'authentication-89276',
    storageBucket: 'authentication-89276.appspot.com',
    iosClientId: '703176794788-qvgmr362gleoh4bhutimb45j3tvjh0sf.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCB8VeS1dYCyDFnQGwkqzsT2u6Sl6g7Eho',
    appId: '1:703176794788:ios:8507963657ee6d60b4bc31',
    messagingSenderId: '703176794788',
    projectId: 'authentication-89276',
    storageBucket: 'authentication-89276.appspot.com',
    iosClientId: '703176794788-1l7frcd4hrekpn87rggpul6n2i1qlq1c.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp.RunnerTests',
  );
}
