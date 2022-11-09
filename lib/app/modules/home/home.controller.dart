import 'package:easy_climate/app/modules/model/preview.model.dart';
import 'package:easy_climate/app/modules/repositorie/preview.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final previewController = Get.put(PreviewController());

  @override
  void onInit() async {
    super.onInit();
  }
}
