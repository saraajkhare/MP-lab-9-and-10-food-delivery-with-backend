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
    apiKey: 'AIzaSyC2QOTbUx1Ggq9t9nG66dDs2COQBnsw5Sw',
    appId: '1:498741428927:web:878d7c3f833892c312fc0a',
    messagingSenderId: '498741428927',
    projectId: 'food-568d8',
    authDomain: 'food-568d8.firebaseapp.com',
    storageBucket: 'food-568d8.firebasestorage.app',
    measurementId: 'G-7EJB4VSRF1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAi2jL1tT3MdOODi40ic5Nk3v871jhOvXw',
    appId: '1:498741428927:android:381d7415cc3d712712fc0a',
    messagingSenderId: '498741428927',
    projectId: 'food-568d8',
    storageBucket: 'food-568d8.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtTk5f9o1MW5dS6dPQAIy9gxNzOghDuEo',
    appId: '1:498741428927:ios:bf5564fbdfbf474912fc0a',
    messagingSenderId: '498741428927',
    projectId: 'food-568d8',
    storageBucket: 'food-568d8.firebasestorage.app',
    iosBundleId: 'com.example.food',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtTk5f9o1MW5dS6dPQAIy9gxNzOghDuEo',
    appId: '1:498741428927:ios:bf5564fbdfbf474912fc0a',
    messagingSenderId: '498741428927',
    projectId: 'food-568d8',
    storageBucket: 'food-568d8.firebasestorage.app',
    iosBundleId: 'com.example.food',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC2QOTbUx1Ggq9t9nG66dDs2COQBnsw5Sw',
    appId: '1:498741428927:web:5eab8067ed9e8f4012fc0a',
    messagingSenderId: '498741428927',
    projectId: 'food-568d8',
    authDomain: 'food-568d8.firebaseapp.com',
    storageBucket: 'food-568d8.firebasestorage.app',
    measurementId: 'G-LRFW9K3YYX',
  );
}
