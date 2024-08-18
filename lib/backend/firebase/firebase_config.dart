import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA_3UrpTozZnXL6R9ndyo6jBcBKRZP7SCo",
            authDomain: "academy-668jm8.firebaseapp.com",
            projectId: "academy-668jm8",
            storageBucket: "academy-668jm8.appspot.com",
            messagingSenderId: "368822904668",
            appId: "1:368822904668:web:4b8a8977fc327ab132c399"));
  } else {
    await Firebase.initializeApp();
  }
}
