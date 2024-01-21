import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multiple_store/views/buyers/main_screen.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCvx8YQFUOCjv3QZlNWbn8BtySiB6DMxDg",
        appId: "1:757873187159:android:82e2009f77ae940f82c612",
        messagingSenderId: "757873187159",
        projectId: "multi-store-app-560ee",
        storageBucket: "gs://multi-store-app-560ee.appspot.com"
    )
  ) : Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Brand-Bold',
      ),
      title: 'multi_store',
      home: MainScreen(),
    );
  }
}
