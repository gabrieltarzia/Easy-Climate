class Preview {
  String? minTemp;
  String? maxTemp;
  String? description;
  String? iconIndex;

  Preview({this.description, this.maxTemp, this.minTemp,this.iconIndex});

  Preview.fromJson(Map<dynamic, dynamic> json) {
    minTemp = json['DailyForecasts']['Temperature']['Minimum']['Value'];
    minTemp = json['DailyForecasts']['Temperature']['Maximum']['Value'];
    description = json['Headline']['Text'];
    minTemp = json['DailyForecasts']['Temperature']['Maximum']['Value'];
    iconIndex = json['DailyForecasts']['Day']['Icon'];
  }
}
