import 'package:get/get.dart';
import 'package:kasa_defteri/create_system.dart';
import 'package:kasa_defteri/views/alacak/alacak_controller.dart';
import 'package:kasa_defteri/views/alacakborc/alacakborc_controller.dart';
import 'package:kasa_defteri/views/borc/borc_controller.dart';
import 'package:kasa_defteri/views/gelir/gelir_controller.dart';
import 'package:kasa_defteri/views/gelirgider/gelirgider_controller.dart';
import 'package:kasa_defteri/views/gider/gider_controller.dart';

import 'package:kasa_defteri/views/info/info_controller.dart';
import 'package:kasa_defteri/views/login/login_controller.dart';
import 'package:kasa_defteri/views/mynotes/mynotes_controller.dart';
import 'package:kasa_defteri/views/profile/profile_controller.dart';

import '../views/home/home_controller.dart';
import '../views/register/register_controller.dart';

Future getControllers() async {
  //Pages

  Get.create(() => RegisterController(), permanent: false);
  Get.create(() => HomeController(), permanent: false);

  Get.create(() => ProfileController(), permanent: false);
  Get.create(() => InfoController(), permanent: false);
  Get.create(() => MynotesController(), permanent: false);
  Get.create(() => GelirgiderController(), permanent: false);
  Get.create(() => AlacakborcController(), permanent: false);
  Get.create(() => GelirController(), permanent: false);
  Get.create(() => GiderController(), permanent: false);
  Get.create(() => AlacakController(), permanent: false);
  Get.create(() => BorcController(), permanent: false);
  Get.create(() => SelectPage(), permanent: false);
}
