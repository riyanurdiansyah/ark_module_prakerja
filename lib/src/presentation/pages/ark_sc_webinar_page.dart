import 'package:ark_module_prakerja/src/presentation/controllers/ark_start_class_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArkStartClassWebinarPage extends StatelessWidget {
  ArkStartClassWebinarPage({Key? key}) : super(key: key);

  final _sC = Get.put(ArkStartClassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
