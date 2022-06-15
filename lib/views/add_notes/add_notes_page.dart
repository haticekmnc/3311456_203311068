import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasa_defteri/data/src/colors.dart';
import 'package:kasa_defteri/data/src/strings.dart';
import 'package:kasa_defteri/views/add_notes/add_notes_controller.dart';

class AddnotesPage extends GetWidget<AddnotesController> {
  const AddnotesPage({Key? key}) : super(key: key);
  static const String routeName = '/views/addnotes/addnotes_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not ekle'),
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
                _buildTitleText(),
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
                _buildDescription(),
                const SizedBox(
                  height: 20,
                ),
                _buildTextFieldDescription(),
              ],
            ),
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildTitleText() {
    return const Text(
      addNoteTitleText,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextFieldTitle() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 40),
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: addNoteTitleHintText,
          ),
          // controller: controller.titleController,
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return const Text(
      addNoteDescriptionText,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextFieldDescription() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 100),
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: addNoteDescriptionHintText,
          ),
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
