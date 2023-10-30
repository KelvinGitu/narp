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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCn4BSYfHCCfx0Qw6vMZ6EcrGUY96ousOg',
    appId: '1:553572531319:web:a3d5ed3c52797151f01a72',
    messagingSenderId: '553572531319',
    projectId: 'delivery-app-e0f8f',
    authDomain: 'delivery-app-e0f8f.firebaseapp.com',
    storageBucket: 'delivery-app-e0f8f.appspot.com',
    measurementId: 'G-QQNBP87VTZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkO9fv1_ymq725L0SCi6mWQNzG8ZYP4PI',
    appId: '1:553572531319:android:fb1f847078fc3454f01a72',
    messagingSenderId: '553572531319',
    projectId: 'delivery-app-e0f8f',
    storageBucket: 'delivery-app-e0f8f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8bfpMuxvwvRau1PbS520fJV_Yy0QJF9Y',
    appId: '1:553572531319:ios:512d0167045c3a77f01a72',
    messagingSenderId: '553572531319',
    projectId: 'delivery-app-e0f8f',
    storageBucket: 'delivery-app-e0f8f.appspot.com',
    iosClientId: '553572531319-i7c4v5ssp2muhq4idji1ohioovotv786.apps.googleusercontent.com',
    iosBundleId: 'com.example.deliveryApp',
  );
}