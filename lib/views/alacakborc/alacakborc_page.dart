import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/views/alacakborc/alacakborc_controller.dart';

import '../alacak/alacak_page.dart';
import '../borc/borc_page.dart';

class AlacakborcPage extends GetWidget<AlacakborcController> {
  static const String routeName = '/views/alacakborc/alacakborc_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alacak- Borç'),
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
          onPressed: (() => _goToAlacak()),
          child: const Text('Alacak ekle'),
        ),
        ElevatedButton(
          onPressed: (() => _goToBorc()),
          child: const Text('Borç ekle'),
        ),
      ],
    );
  }

  void _goToAlacak() {
    Get.toNamed(AlacakPage.routeName);
  }

  void _goToBorc() {
    Get.toNamed(BorcPage.routeName);
  }
}
