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
    apiKey: 'AIzaSyAhCBboXtfjXJe77Jb2CX6Grj_Y1gPKzOY',
    appId: '1:830062443534:web:6c58f6a4a455f5e76d505f',
    messagingSenderId: '830062443534',
    projectId: 'institutions-management',
    authDomain: 'institutions-management.firebaseapp.com',
    storageBucket: 'institutions-management.appspot.com',
    measurementId: 'G-H7P66EHMW0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRdykIZn2ZChcHkVMiNiAx-2wlRfwh7W8',
    appId: '1:830062443534:android:7fbd0cf1a88871b36d505f',
    messagingSenderId: '830062443534',
    projectId: 'institutions-management',
    storageBucket: 'institutions-management.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuH1nfLvkTtqeRBcWqzPbQs4qWY2IUFpA',
    appId: '1:830062443534:ios:fffb63952b976af26d505f',
    messagingSenderId: '830062443534',
    projectId: 'institutions-management',
    storageBucket: 'institutions-management.appspot.com',
    androidClientId: '830062443534-up5a0umim2tlif8dde2g3fejkr7qtd6t.apps.googleusercontent.com',
    iosClientId: '830062443534-sc3f90c7lvquls64m88k6591r2g2v6pp.apps.googleusercontent.com',
    iosBundleId: 'com.example.demoAppAdmin',
  );
}