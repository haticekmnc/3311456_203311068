import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/images.dart';
import 'package:kasa_defteri/data/src/strings.dart';

import 'package:kasa_defteri/views/gelirgider/gelirgider_page.dart';
import 'package:kasa_defteri/views/home/home_controller.dart';
import 'package:kasa_defteri/views/info/info_page.dart';

import 'package:kasa_defteri/views/mynotes/mynotes_page.dart';
import 'package:kasa_defteri/views/profile/profile_page.dart';
import 'package:lottie/lottie.dart';

import '../gelirgider/gelirgider_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class HomePage extends GetWidget<HomeController> {
  static const String routeName = '/views/home/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(homeAppBarText)),
        backgroundColor: mainColor,
      ),
      drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  Widget animasyon() {
    return Lottie.network(
      'https://assets3.lottiefiles.com/packages/lf20_23jvexdp.json',
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(),
        animasyon(),
      ],
    );
  }

  Widget _buildButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: (() => _goToGelirgider()),
          child: const Text('Gelir- Gider'),
        ),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(),
          _buildTitle(homeAppBarText, Icons.home, _goToBack),
          const Divider(), //bölücü, araya çizgi ekler
          _buildTitle(profileText, Icons.person, _goToProfile),
          const Divider(),
          _buildTitle(mynotes, Icons.note_add_sharp, _goToNotes),
          const Divider(),
          _buildTitle(infoText, Icons.info, _goToInfo),
          const Divider(),
          _buildTitle(logoutText, Icons.logout, _goToLogout),
        ],
      ),
    ); //yandan çıkan menü eklendi
  }

  Widget _buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text('Hatice'),
      accountEmail: Text('hatice@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage(logo),
      ),
      decoration: BoxDecoration(color: mainColor),
    );
  }

  Widget _buildTitle(String text, IconData, Function function) {
    return ListTile(
      title: Text(text),
      leading: Icon(
        IconData,
        color: mainColor,
      ),
      onTap: () => function(),
    );
  }

  void _goToBack() {
    Get.back();
  }

  void _goToProfile() {
    Get.toNamed(ProfilePage.routeName);
  }

  void _goToInfo() {
    Get.toNamed(InfoPage.routeName);
  }

  void _goToLogout() {
    FirebaseAuth.instance.signOut();
  }

  void _goToNotes() {
    Get.toNamed(MynotesPage.routeName);
  }

  void _goToGelirgider() {
    Get.toNamed(GelirgiderPage.routeName);
  }

  //void _goToAlacakborc() {
  //Get.toNamed(AlacakborcPage.routeName);
  //}
}
