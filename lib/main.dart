import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kasa_defteri/data/get_controllers.dart';
import 'package:kasa_defteri/data/routing/get_pages.dart';
import 'package:kasa_defteri/data/src/strings.dart';

import 'package:kasa_defteri/views/login/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> main() async {
    await getControllers();
  }

  girisYap() {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: loginAppbarText, password: passwordText);
  }

  @override
  Widget build(BuildContext context) {
    main();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      home: LoginPage(),
    );
  }
}
