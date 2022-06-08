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
    apiKey: 'AIzaSyDXz6kMvkUnEFLbY6ounf1fELSQ6CuvqVQ',
    appId: '1:50157094004:web:81d3b115b0169c8a50fd21',
    messagingSenderId: '50157094004',
    projectId: 'book-store-b928a',
    authDomain: 'book-store-b928a.firebaseapp.com',
    storageBucket: 'book-store-b928a.appspot.com',
    measurementId: 'G-4H8FWL9T6W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApstH8jmldEIdOZN-YIZ_woBTn6SEzuTY',
    appId: '1:50157094004:android:451a0a2e46b967af50fd21',
    messagingSenderId: '50157094004',
    projectId: 'book-store-b928a',
    storageBucket: 'book-store-b928a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcNJwsS0RFFZTCXCscs_8O7ySmV7O_DLg',
    appId: '1:50157094004:ios:28fe3da4cae1732750fd21',
    messagingSenderId: '50157094004',
    projectId: 'book-store-b928a',
    storageBucket: 'book-store-b928a.appspot.com',
    iosClientId: '50157094004-31cnbs1iftamcn5nio7vapsq9edj5sap.apps.googleusercontent.com',
    iosBundleId: 'com.example.bookStore',
  );
}