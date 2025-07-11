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
    apiKey: 'AIzaSyCU42AA4vtvgPFwgVztSKEsvPOiKgFfYZ4',
    appId: '1:436786299346:web:151af831c0c57db895880b',
    messagingSenderId: '436786299346',
    projectId: 'anitra-7fc55',
    authDomain: 'anitra-7fc55.firebaseapp.com',
    storageBucket: 'anitra-7fc55.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_5mfCCtlx5gi331SYa-_JgG8APyWcYlY',
    appId: '1:436786299346:android:2f1c2131ca2a511e95880b',
    messagingSenderId: '436786299346',
    projectId: 'anitra-7fc55',
    storageBucket: 'anitra-7fc55.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjfI29tIcAgi2Pi6nama19dL14FmPksDg',
    appId: '1:436786299346:ios:5f134f1abbb9a24a95880b',
    messagingSenderId: '436786299346',
    projectId: 'anitra-7fc55',
    storageBucket: 'anitra-7fc55.firebasestorage.app',
    androidClientId: '436786299346-7riru1mf91caso1m37n64bhvudv9vr1o.apps.googleusercontent.com',
    iosClientId: '436786299346-3bup6fq4i83e9oqptcu9k1vc48o8uj99.apps.googleusercontent.com',
    iosBundleId: 'com.example.anitra',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDjfI29tIcAgi2Pi6nama19dL14FmPksDg',
    appId: '1:436786299346:ios:5f134f1abbb9a24a95880b',
    messagingSenderId: '436786299346',
    projectId: 'anitra-7fc55',
    storageBucket: 'anitra-7fc55.firebasestorage.app',
    androidClientId: '436786299346-7riru1mf91caso1m37n64bhvudv9vr1o.apps.googleusercontent.com',
    iosClientId: '436786299346-3bup6fq4i83e9oqptcu9k1vc48o8uj99.apps.googleusercontent.com',
    iosBundleId: 'com.example.anitra',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCU42AA4vtvgPFwgVztSKEsvPOiKgFfYZ4',
    appId: '1:436786299346:web:10cf25cabc26801795880b',
    messagingSenderId: '436786299346',
    projectId: 'anitra-7fc55',
    authDomain: 'anitra-7fc55.firebaseapp.com',
    storageBucket: 'anitra-7fc55.firebasestorage.app',
  );
}
