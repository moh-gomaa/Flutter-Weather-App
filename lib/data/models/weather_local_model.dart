class WeatherLocalModel {
   int? ID;
  String? region;
  double? lat;
  double? lon;
  bool? isCurrent;


   WeatherLocalModel({
      this.ID, this.region, this.lat, this.lon, this.isCurrent});

  WeatherLocalModel.fromJson(dynamic json) {
    ID = json['ID'];
    region = json['region'];
    lat = json['lat'];
    lon = json['lon'];
    isCurrent = json['isCurrent'] == 1? true : false;
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = ID;
    map['region'] = region;
    map['lat'] = lat;
    map['lon'] = lon;
    map['isCurrent'] = isCurrent;
    return map;
  }

}
