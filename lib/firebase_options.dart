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
    apiKey: 'AIzaSyAbgnr0UGpDfwOtgs4azhWABac5OhTVWuw',
    appId: '1:817848498830:web:542a2c90075c2aa83ca7df',
    messagingSenderId: '817848498830',
    projectId: 'spotifyclone-8e163',
    authDomain: 'spotifyclone-8e163.firebaseapp.com',
    storageBucket: 'spotifyclone-8e163.appspot.com',
    measurementId: 'G-4H5BFRLFRD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYyDQowZQGIAKhsvl7cpE6MMoedJPYOM8',
    appId: '1:817848498830:android:88681bebe3f934713ca7df',
    messagingSenderId: '817848498830',
    projectId: 'spotifyclone-8e163',
    storageBucket: 'spotifyclone-8e163.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmrLnc4uEBTv8r74EGPi-rw5rXa51TYT4',
    appId: '1:817848498830:ios:4bee3be1ce63dd363ca7df',
    messagingSenderId: '817848498830',
    projectId: 'spotifyclone-8e163',
    storageBucket: 'spotifyclone-8e163.appspot.com',
    iosBundleId: 'com.example.spotifyclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmrLnc4uEBTv8r74EGPi-rw5rXa51TYT4',
    appId: '1:817848498830:ios:4bee3be1ce63dd363ca7df',
    messagingSenderId: '817848498830',
    projectId: 'spotifyclone-8e163',
    storageBucket: 'spotifyclone-8e163.appspot.com',
    iosBundleId: 'com.example.spotifyclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAbgnr0UGpDfwOtgs4azhWABac5OhTVWuw',
    appId: '1:817848498830:web:ba91e98dded7ec0c3ca7df',
    messagingSenderId: '817848498830',
    projectId: 'spotifyclone-8e163',
    authDomain: 'spotifyclone-8e163.firebaseapp.com',
    storageBucket: 'spotifyclone-8e163.appspot.com',
    measurementId: 'G-L516SEENFJ',
  );
}