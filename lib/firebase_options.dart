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
    apiKey: 'AIzaSyCqlFe-1j1BLZwmUCysuwsSEn_vTaCWIgE',
    appId: '1:790261747991:web:543cbf882dd1d2c31ce752',
    messagingSenderId: '790261747991',
    projectId: 'cricket-prediction-app-ae0dd',
    authDomain: 'cricket-prediction-app-ae0dd.firebaseapp.com',
    storageBucket: 'cricket-prediction-app-ae0dd.appspot.com',
    measurementId: 'G-KK3VTSCJC3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwyhwKN7Ou0XumFmxomNqmEXBmyWCID2U',
    appId: '1:790261747991:android:2c75bf9d94eed7ed1ce752',
    messagingSenderId: '790261747991',
    projectId: 'cricket-prediction-app-ae0dd',
    storageBucket: 'cricket-prediction-app-ae0dd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfRKZPdGihgl9I1KIzCZR7ussEyOvbZ-M',
    appId: '1:790261747991:ios:c7543a6317c747f31ce752',
    messagingSenderId: '790261747991',
    projectId: 'cricket-prediction-app-ae0dd',
    storageBucket: 'cricket-prediction-app-ae0dd.appspot.com',
    iosClientId: '790261747991-pqhhjoretpr0q18slgr5rkltdkfst44t.apps.googleusercontent.com',
    iosBundleId: 'com.example.cricketPredictionApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfRKZPdGihgl9I1KIzCZR7ussEyOvbZ-M',
    appId: '1:790261747991:ios:c7543a6317c747f31ce752',
    messagingSenderId: '790261747991',
    projectId: 'cricket-prediction-app-ae0dd',
    storageBucket: 'cricket-prediction-app-ae0dd.appspot.com',
    iosClientId: '790261747991-pqhhjoretpr0q18slgr5rkltdkfst44t.apps.googleusercontent.com',
    iosBundleId: 'com.example.cricketPredictionApp',
  );
}
