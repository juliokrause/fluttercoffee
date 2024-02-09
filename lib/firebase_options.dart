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
    apiKey: 'AIzaSyC6X_3as8fOYZyDtpCUEJtDYMABlIHjuYE',
    appId: '1:331109205796:web:1f4e7938f72421d8b115b1',
    messagingSenderId: '331109205796',
    projectId: 'fir-coffee-21c40',
    authDomain: 'fir-coffee-21c40.firebaseapp.com',
    storageBucket: 'fir-coffee-21c40.appspot.com',
    measurementId: 'G-WRMGNR69FS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHIpoiyWbCPZl_3eD86KkqLMU_L_ENOxQ',
    appId: '1:331109205796:android:e64abb4506d6ca8fb115b1',
    messagingSenderId: '331109205796',
    projectId: 'fir-coffee-21c40',
    storageBucket: 'fir-coffee-21c40.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIJ7xY1trQHfb7_Gxjq_kH1qO3v0wDsiw',
    appId: '1:331109205796:ios:c058d6d252f6b619b115b1',
    messagingSenderId: '331109205796',
    projectId: 'fir-coffee-21c40',
    storageBucket: 'fir-coffee-21c40.appspot.com',
    iosBundleId: 'com.juliokrause.flutterCoffee',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIJ7xY1trQHfb7_Gxjq_kH1qO3v0wDsiw',
    appId: '1:331109205796:ios:31f1ad48b888b8fbb115b1',
    messagingSenderId: '331109205796',
    projectId: 'fir-coffee-21c40',
    storageBucket: 'fir-coffee-21c40.appspot.com',
    iosBundleId: 'com.juliokrause.flutterCoffee.RunnerTests',
  );
}
