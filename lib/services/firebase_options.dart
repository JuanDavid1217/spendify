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
    apiKey: 'AIzaSyA2yASk35Xzv8_WtwwdfgT5BZeG2JHqlAM',
    appId: '1:1096107413937:web:6890cb3d60afb2cc8ced90',
    messagingSenderId: '1096107413937',
    projectId: 'misclientes-aab01',
    authDomain: 'misclientes-aab01.firebaseapp.com',
    databaseURL: 'https://misclientes-aab01-default-rtdb.firebaseio.com',
    storageBucket: 'misclientes-aab01.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNSr-d1yEoai0gtuIaUfxYyb0P5xpYy94',
    appId: '1:1096107413937:android:c39c36ef3d9e55608ced90',
    messagingSenderId: '1096107413937',
    projectId: 'misclientes-aab01',
    databaseURL: 'https://misclientes-aab01-default-rtdb.firebaseio.com',
    storageBucket: 'misclientes-aab01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbU6cEnK0WOKCqk_a_850a_NTF7UC-r18',
    appId: '1:1096107413937:ios:424088829d403c968ced90',
    messagingSenderId: '1096107413937',
    projectId: 'misclientes-aab01',
    databaseURL: 'https://misclientes-aab01-default-rtdb.firebaseio.com',
    storageBucket: 'misclientes-aab01.appspot.com',
    iosClientId: '1096107413937-o01i9b246b0ar8ik5bjef25tcb122rsb.apps.googleusercontent.com',
    iosBundleId: 'com.example.spendify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbU6cEnK0WOKCqk_a_850a_NTF7UC-r18',
    appId: '1:1096107413937:ios:b2a66493870b19218ced90',
    messagingSenderId: '1096107413937',
    projectId: 'misclientes-aab01',
    databaseURL: 'https://misclientes-aab01-default-rtdb.firebaseio.com',
    storageBucket: 'misclientes-aab01.appspot.com',
    iosClientId: '1096107413937-n40fm86ibnrumsg5ugu5saen1avrndi1.apps.googleusercontent.com',
    iosBundleId: 'com.example.spendify.RunnerTests',
  );
}
