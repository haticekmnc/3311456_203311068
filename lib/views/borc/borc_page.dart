import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/views/borc/borc_controller.dart';

class BorcPage extends GetWidget<BorcController> {
  static const String routeName = '/views/borc/borc_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Borç sayfası'), backgroundColor: mainColor),
    );
  }
}
