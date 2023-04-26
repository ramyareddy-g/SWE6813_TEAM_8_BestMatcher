// // File generated by FlutterFire CLI.
// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;
// import 'firebase_options.dart';
//
// await Firebase.initializeApp(
// options: DefaultFirebaseOptions.currentPlatform,
// );
//
// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for android - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.iOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for ios - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.macOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for macos - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }
//
//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyA5SgghyrvC1tZbdKS9l8BDd1J-s8GlaUk',
//     appId: '1:565968558840:web:cffa7ae9ddb68b9530390d',
//     messagingSenderId: '565968558840',
//     projectId: 'swe6813-bestmatcher',
//     authDomain: 'swe6813-bestmatcher.firebaseapp.com',
//     databaseURL: 'https://swe6813-bestmatcher-default-rtdb.firebaseio.com',
//     storageBucket: 'swe6813-bestmatcher.appspot.com',
//     measurementId: 'G-8T28GS8GW6',
//   );
// }