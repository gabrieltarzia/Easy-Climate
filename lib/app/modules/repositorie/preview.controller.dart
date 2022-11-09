import 'package:easy_climate/app/modules/model/preview.model.dart';
import 'package:get/get.dart';

import 'preview.repositorie.dart';

class PreviewController extends GetxController {
  PreviewRepo repository = PreviewRepo();
  final weekPreview = RxList<Preview>;

  Future<String> location(String lat, String long) async =>
      await repository.getCityByGeo(lat, long);

  Future<String> dailyPreview() async => await repository.dailyPreview('36318');
}
