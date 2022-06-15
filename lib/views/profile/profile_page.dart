import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/profile/profile_controller.dart';

class ProfilePage extends GetWidget<ProfileController> {
  static const String routeName = '/views/profile/profile_page';
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(profileAppBarText),
        backgroundColor: mainColor,
      ),
      body: Center(
        child: Text(user.email!),
      ),
    );
  }
}
