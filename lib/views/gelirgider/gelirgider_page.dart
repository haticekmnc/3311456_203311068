import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';

import 'package:kasa_defteri/views/gelir/gelir_page.dart';

import 'package:kasa_defteri/views/gelirgider/gelirgider_controller.dart';
import 'package:kasa_defteri/views/gider/gider_page.dart';

class GelirgiderPage extends GetWidget<GelirgiderController> {
  static const String routeName = '/views/gelirgider/gelirgider_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gelir- gider'),
        backgroundColor: mainColor,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: (() => _goToGelir()),
          child: Text('Gelir ekle'),
        ),
        ElevatedButton(
          onPressed: (() => _goToGider()),
          child: Text('Gider ekle'),
        ),
      ],
    );
  }

  void _goToGelir() {
    Get.toNamed(GelirPage.routeName);
  }

  void _goToGider() {
    Get.toNamed(GiderPage.routeName);
  }
}
