import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/images.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/home/home_page.dart';
import 'package:kasa_defteri/views/login/login_controller.dart';
import 'package:kasa_defteri/views/register/register_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return HomePage();
            } else {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildImage(),
                    _buildMaxSpace(),
                    _buildEmailTextField(),
                    _buildSpace(),
                    _buildPasswordTextField(),
                    _buildMaxSpace(),
                    _buildButton(),
                    _buildSpace(),
                    _buildRegisterText(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      logo,
      height: Get.height *
          0.4698888, //dinamik bir şekilde ekrana göre boyut ayarlamak için
    );
  }

  Widget _buildEmailTextField() {
    return Material(
      elevation: 20,
      color: white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(122),
        topLeft: Radius.circular(2),
      )),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 4, 8, 4),
        child: TextField(
          textInputAction: TextInputAction.next, //klavyede ileri tuşu
          obscureText: false,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: emailText1,
          ),
          controller: emailController,
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Material(
      elevation: 20,
      color: white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(300),
        bottomRight: Radius.circular(10),
      )),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 4, 8, 4),
        child: TextField(
          obscureText: true, // parolayı gizlemek için
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: passwordText,
          ),
          controller: passwordController,
        ),
      ),
    );
  }

  Widget _buildButton() {
    final double size = 48;
    return SizedBox(
        height: size,
        child: ElevatedButton(
          onPressed: signIn,
          child: const Text(loginButton),
          style: ElevatedButton.styleFrom(
            primary: mainColor,
          ),
        ));
  }

  Widget _buildSpace() {
    return const SizedBox(
      height: 18,
    );
  }

  Widget _buildMaxSpace() {
    return const SizedBox(
      height: 32,
    );
  }

  Widget _buildRegisterText() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          const TextSpan(
            text: registerOuestionText,
            style: TextStyle(color: black),
          ),
          TextSpan(
              text: registerButtonText,
              style: const TextStyle(color: black, fontStyle: FontStyle.italic),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.offNamed(RegisterPage.routeName);
                }),
        ]));
  }

  void _goToHomePage() {
    Get.offAndToNamed(HomePage
        .routeName); //offAndToNamed ile bir önceki sayfaya(login) gitme özelliğini kaldırdım
  }

  Future signIn() async {
    showDialog(
        context: context,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
