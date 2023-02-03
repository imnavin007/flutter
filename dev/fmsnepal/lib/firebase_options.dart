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
    apiKey: 'AIzaSyBYR_ltpsh2ymP6Y50wyCnAZXLa2qj3ar0',
    appId: '1:962145807851:web:f03fba8e2af1e3f3fdbdae',
    messagingSenderId: '962145807851',
    projectId: 'fmsnepal',
    authDomain: 'fmsnepal.firebaseapp.com',
    storageBucket: 'fmsnepal.appspot.com',
    measurementId: 'G-YJ3XJ9PF10',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvPK6xxtq2l4hYhfTRnnifnPLn5XpVgJA',
    appId: '1:962145807851:android:1ed861279f4ee80bfdbdae',
    messagingSenderId: '962145807851',
    projectId: 'fmsnepal',
    storageBucket: 'fmsnepal.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4num1z8TfWEEycQyywOpxYP4bTYT8zW0',
    appId: '1:962145807851:ios:db1e14ce1074d21afdbdae',
    messagingSenderId: '962145807851',
    projectId: 'fmsnepal',
    storageBucket: 'fmsnepal.appspot.com',
    iosClientId: '962145807851-h0ve5hug5ld1orr9l8u4podh9t8vgjih.apps.googleusercontent.com',
    iosBundleId: 'org.fmsnepal.fmsnepal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4num1z8TfWEEycQyywOpxYP4bTYT8zW0',
    appId: '1:962145807851:ios:db1e14ce1074d21afdbdae',
    messagingSenderId: '962145807851',
    projectId: 'fmsnepal',
    storageBucket: 'fmsnepal.appspot.com',
    iosClientId: '962145807851-h0ve5hug5ld1orr9l8u4podh9t8vgjih.apps.googleusercontent.com',
    iosBundleId: 'org.fmsnepal.fmsnepal',
  );
}
