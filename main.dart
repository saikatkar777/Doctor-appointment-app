import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/Views/login_page.dart';
import 'package:first_project/Views/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Get.testMode = true;

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScrenn(),
navigatorKey: Get.key,
      getPages: const [
        // GetPage(name: "/home", page: ),
      ],
    );
  }
}



