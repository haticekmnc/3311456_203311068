import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  static const String routeName = '/views/register/register_page';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _RegisterPageState extends State<RegisterPage> {
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(registerAppBarText),
            backgroundColor: mainColor,
          ),
          body: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSpace(),
            _buildEmailTextField(),
            _buildSpace(),
            _buildPasswordTextField(),
            _buildSpace(),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return Material(
      elevation: 20,
      color: white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(122),
        topRight: Radius.circular(2),
      )),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 4, 8, 4),
        child: TextField(
          textInputAction: TextInputAction.next, //klavyede ileri tuşu
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: emailText,
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 4, 8, 4),
        child: TextField(
          textInputAction: TextInputAction.next, //klavyede ileri tuşu
          obscureText: true,
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
          onPressed: signUp,
          child: const Text(registerText),
          style: ElevatedButton.styleFrom(
            primary: mainColor,
          ),
        ));
  }

  Widget _buildSpace() {
    return const SizedBox(
      height: 58,
    );
  }

  Future signUp() async {
    showDialog(
        context: context,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
