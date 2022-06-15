import 'package:get/get.dart';
import 'package:kasa_defteri/create_system.dart';
import 'package:kasa_defteri/views/add_notes/add_notes_page.dart';
import 'package:kasa_defteri/views/alacak/alacak_page.dart';
import 'package:kasa_defteri/views/alacakborc/alacakborc_page.dart';
import 'package:kasa_defteri/views/borc/borc_page.dart';
import 'package:kasa_defteri/views/gelir/gelir_page.dart';
import 'package:kasa_defteri/views/gelirgider/gelirgider_page.dart';
import 'package:kasa_defteri/views/gider/gider_page.dart';
import 'package:kasa_defteri/views/home/home_page.dart';
import 'package:kasa_defteri/views/info/info_page.dart';
import 'package:kasa_defteri/views/login/login_page.dart';
import 'package:kasa_defteri/views/mynotes/mynotes_page.dart';
import 'package:kasa_defteri/views/profile/profile_page.dart';
import 'package:kasa_defteri/views/register/register_page.dart';

List<GetPage> getPages = [
  //GetPage(name: LoginPage.routeName, page: () => LoginPage()),
  GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),

  GetPage(name: HomePage.routeName, page: () => HomePage()),
  GetPage(name: ProfilePage.routeName, page: () => ProfilePage()),
  GetPage(name: InfoPage.routeName, page: () => InfoPage()),
  GetPage(name: MynotesPage.routeName, page: () => MynotesPage()),
  GetPage(name: AddnotesPage.routeName, page: () => AddnotesPage()),
  GetPage(name: GelirgiderPage.routeName, page: () => SelectPage()),
  //GetPage(name: AlacakborcPage.routeName, page: () => ReadSystems()),
  GetPage(name: GelirPage.routeName, page: () => GelirPage()),
  GetPage(name: GiderPage.routeName, page: () => GiderPage()),
  GetPage(name: AlacakPage.routeName, page: () => AlacakPage()),
  GetPage(name: BorcPage.routeName, page: () => BorcPage()),
];
