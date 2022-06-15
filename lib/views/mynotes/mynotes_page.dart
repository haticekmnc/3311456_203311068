import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/add_notes/add_notes_page.dart';
import 'package:kasa_defteri/views/mynotes/mynotes_controller.dart';

class MynotesPage extends GetWidget<MynotesController> {
  const MynotesPage({Key? key}) : super(key: key);
  static const String routeName = '/views/mynotes/mynotes_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(mynotesAppBarText),
        backgroundColor: mainColor,
      ),
      body: _buildBody(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Not $index'),
          ),
        ),
      ),
      itemCount: 5,
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () => _goToAddnotes(),
      child: const Icon(Icons.add),
      backgroundColor: mainColor,
    );
  }

  void _goToAddnotes() {
    Get.toNamed(AddnotesPage.routeName);
  }
}
