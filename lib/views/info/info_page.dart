import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/info/info_controller.dart';

class InfoPage extends GetWidget<InfoController> {
  static const String routeName = '/views/info/info_page';

  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(infoAppBarText),
        backgroundColor: mainColor,
      ),
      body: const Center(
        child: Text(infoTitleText),
      ),
    );
  }
}
