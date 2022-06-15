import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/gider/gider_controller.dart';

import '../../data/src/colors.dart';

class GiderPage extends GetWidget<GiderController> {
  static const String routeName = '/views/gider/gider_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gider ekle'),
        backgroundColor: mainColor,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildKategoriTitleText(),
                const SizedBox(
                  height: 20,
                ),
                _buildTextFieldTitle(),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                _buildGiderDate(),
                const SizedBox(
                  height: 20,
                ),
                _buildTextFieldGelirDate(),
                const SizedBox(
                  height: 20,
                ),
                _buildTutarTitleText1(),
                const SizedBox(
                  height: 20,
                ),
                _buildTextFieldTutar(),
                const SizedBox(
                  height: 20,
                ),
                _buildNotesTitleText1(),
                const SizedBox(
                  height: 12,
                ),
                _buildTextFieldNotes(),
              ],
            ),
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildKategoriTitleText() {
    return const Text(
      addKategoriTitleText1,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextFieldTitle() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 40),
        child: TextField(
          obscureText: false,

          // controller: controller.titleController,
        ),
      ),
    );
  }

  Widget _buildGiderDate() {
    return const Text(
      addGiderDateitleText1,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextFieldGelirDate() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 40),
        child: TextField(
          obscureText: false,
          //controller: controller.descriptionController,
        ),
      ),
    );
  }

  Widget _buildTutarTitleText1() {
    return const Text(
      addTutarTitleText,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextFieldTutar() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 40),
        child: TextField(
          obscureText: false,
          //controller: controller.descriptionController,
        ),
      ),
    );
  }

  Widget _buildNotesTitleText1() {
    return const Text(
      addNotesTitleText,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextFieldNotes() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 40),
        child: TextField(
          obscureText: false,
          //controller: controller.descriptionController,
        ),
      ),
    );
  }

  Widget _buildButton() {
    final double size = 40;
    return SizedBox(
      height: size,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(addNoteSaveButton),
        style: ElevatedButton.styleFrom(
          primary: mainColor,
        ),
      ),
    );
  }
}
