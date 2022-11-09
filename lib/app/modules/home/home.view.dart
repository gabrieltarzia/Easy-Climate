import 'package:easy_climate/app/modules/home/home.controller.dart';
import 'package:easy_climate/app/modules/model/preview.model.dart';
import 'package:easy_climate/app/modules/widgets/searchbar.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/preview.widget.dart';
import '../widgets/previewList.widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: Searchbar(),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      children: [
        FutureBuilder(
            future: controller.previewController.dailyPreview(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return snapshot.hasData
                    ? Text(snapshot.data.toString())
                    : Text('NO DAT');
              } else {
                return const CircularProgressIndicator();
              }
            }),
        PreviewCard(Preview(description: 'Previsão de chuva',minTemp: '2',maxTemp: '15',iconIndex:'12')),
        const Divider(),
        const PreviewList(),
      ],
    );
  }
}
