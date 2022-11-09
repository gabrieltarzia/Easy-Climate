import 'package:easy_climate/app/modules/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Searchbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final controller = Get.put(HomeController());
  Searchbar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Colors.blue.shade400),
      child: TextField(
        controller: controller.searchController,
        decoration: InputDecoration(
            hintStyle: const TextStyle(fontSize: 18),
            hintText: 'Search by location',
            border: InputBorder.none,
            suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            contentPadding: const EdgeInsets.all(18)),
      ),
    );
  }
}
