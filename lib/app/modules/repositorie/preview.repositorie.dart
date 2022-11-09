import 'package:easy_climate/app/modules/model/preview.model.dart';
import 'package:get/get.dart';

class PreviewRepo extends GetConnect {
  Future<String> getCityByGeo(String latitude, String longitude) async {
   // var request = '${LinkHelper.getLocation}$latitude,$longitude';
var request = 'http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?apikey=%09XDzOzY172jJpBNXYeHMYDXvNzqxHiCXR&q=$latitude,$longitude';
   

    final response = await get(request);
    final responseBody = response.body;

    final location = responseBody['Region']['ID'];

    return location;
  }

  Future<String> dailyPreview(String code) async {

    print(code);

    code = '36318';

var request = 'http://dataservice.accuweather.com/forecasts/v1/daily/1day/$code?apikey=%09XDzOzY172jJpBNXYeHMYDXvNzqxHiCXR&language=pt-br&details=false&metric=true';
   

    final response = await get(request);
    final responseBody = response.body;

    final location = responseBody;

    print(location);

    return location;
  }


}
