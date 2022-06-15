import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/views/alacak/alacak_controller.dart';

class AlacakPage extends GetWidget<AlacakController> {
  static const String routeName = '/views/alacak/alacak_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALACAK SAYFASI'),
        backgroundColor: red,
      ),
    );
  }
}
