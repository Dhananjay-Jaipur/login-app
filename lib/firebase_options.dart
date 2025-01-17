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
    apiKey: 'AIzaSyDy3swtMpOKoIizfNWKWec9LJJF25w36KY',
    appId: '1:442802270388:web:044240b466abbd83caa7e1',
    messagingSenderId: '442802270388',
    projectId: 'login-95533',
    authDomain: 'login-95533.firebaseapp.com',
    storageBucket: 'login-95533.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCkypWqfxdo48IZQ085DBvSULBOP7LdXk',
    appId: '1:442802270388:android:e8239e9eacefe15acaa7e1',
    messagingSenderId: '442802270388',
    projectId: 'login-95533',
    storageBucket: 'login-95533.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBn1K5dDdhiQNWSwojJo42OLC6T_VL55_o',
    appId: '1:442802270388:ios:4cb9c1da4e666782caa7e1',
    messagingSenderId: '442802270388',
    projectId: 'login-95533',
    storageBucket: 'login-95533.appspot.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBn1K5dDdhiQNWSwojJo42OLC6T_VL55_o',
    appId: '1:442802270388:ios:4cb9c1da4e666782caa7e1',
    messagingSenderId: '442802270388',
    projectId: 'login-95533',
    storageBucket: 'login-95533.appspot.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDy3swtMpOKoIizfNWKWec9LJJF25w36KY',
    appId: '1:442802270388:web:bfa937d81862749acaa7e1',
    messagingSenderId: '442802270388',
    projectId: 'login-95533',
    authDomain: 'login-95533.firebaseapp.com',
    storageBucket: 'login-95533.appspot.com',
  );
}
