class WeatherModel {
  Location? _location;
  Current? _current;
  Forecast? _forecast;

  WeatherModel({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) {
    _location = location;
    _current = current;
    _forecast = forecast;
  }

  WeatherModel.fromJson(dynamic json) {
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    _forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }

  WeatherModel copyWith({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) =>
      WeatherModel(
        location: location ?? _location,
        current: current ?? _current,
        forecast: forecast ?? _forecast,
      );

  Location? get location => _location;

  Current? get current => _current;

  Forecast? get forecast => _forecast;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    if (_forecast != null) {
      map['forecast'] = _forecast?.toJson();
    }
    return map;
  }
}

class Location {
  Location({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  }) {
    _name = name;
    _region = region;
    _country = country;
    _lat = lat;
    _lon = lon;
    _tzId = tzId;
    _localtimeEpoch = localtimeEpoch;
    _localtime = localtime;
  }

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }

  String? _name;
  String? _region;
  String? _country;
  double? _lat;
  double? _lon;
  String? _tzId;
  int? _localtimeEpoch;
  String? _localtime;

  Location copyWith({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  }) =>
      Location(
        name: name ?? _name,
        region: region ?? _region,
        country: country ?? _country,
        lat: lat ?? _lat,
        lon: lon ?? _lon,
        tzId: tzId ?? _tzId,
        localtimeEpoch: localtimeEpoch ?? _localtimeEpoch,
        localtime: localtime ?? _localtime,
      );

  String? get name => _name;

  String? get region => _region;

  String? get country => _country;

  double? get lat => _lat;

  double? get lon => _lon;

  String? get tzId => _tzId;

  int? get localtimeEpoch => _localtimeEpoch;

  String? get localtime => _localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['region'] = _region;
    map['country'] = _country;
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['tz_id'] = _tzId;
    map['localtime_epoch'] = _localtimeEpoch;
    map['localtime'] = _localtime;
    return map;
  }
}

class Current {
  Current({
    int? lastUpdatedEpoch,
    String? lastUpdated,
    double? tempC,
    double? tempF,
    int? isDay,
    Condition? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? visKm,
    double? visMiles,
    double? uv,
    double? gustMph,
    double? gustKph,
  }) {
    _lastUpdatedEpoch = lastUpdatedEpoch;
    _lastUpdated = lastUpdated;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _visKm = visKm;
    _visMiles = visMiles;
    _uv = uv;
    _gustMph = gustMph;
    _gustKph = gustKph;
  }

  Current.fromJson(dynamic json) {
    _lastUpdatedEpoch = json['last_updated_epoch'];
    _lastUpdated = json['last_updated'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _uv = json['uv'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
  }

  int? _lastUpdatedEpoch;
  String? _lastUpdated;
  double? _tempC;
  double? _tempF;
  int? _isDay;
  Condition? _condition;
  double? _windMph;
  double? _windKph;
  int? _windDegree;
  String? _windDir;
  double? _pressureMb;
  double? _pressureIn;
  double? _precipMm;
  double? _precipIn;
  int? _humidity;
  int? _cloud;
  double? _feelslikeC;
  double? _feelslikeF;
  double? _visKm;
  double? _visMiles;
  double? _uv;
  double? _gustMph;
  double? _gustKph;

  Current copyWith({
    int? lastUpdatedEpoch,
    String? lastUpdated,
    double? tempC,
    double? tempF,
    int? isDay,
    Condition? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? visKm,
    double? visMiles,
    double? uv,
    double? gustMph,
    double? gustKph,
  }) =>
      Current(
        lastUpdatedEpoch: lastUpdatedEpoch ?? _lastUpdatedEpoch,
        lastUpdated: lastUpdated ?? _lastUpdated,
        tempC: tempC ?? _tempC,
        tempF: tempF ?? _tempF,
        isDay: isDay ?? _isDay,
        condition: condition ?? _condition,
        windMph: windMph ?? _windMph,
        windKph: windKph ?? _windKph,
        windDegree: windDegree ?? _windDegree,
        windDir: windDir ?? _windDir,
        pressureMb: pressureMb ?? _pressureMb,
        pressureIn: pressureIn ?? _pressureIn,
        precipMm: precipMm ?? _precipMm,
        precipIn: precipIn ?? _precipIn,
        humidity: humidity ?? _humidity,
        cloud: cloud ?? _cloud,
        feelslikeC: feelslikeC ?? _feelslikeC,
        feelslikeF: feelslikeF ?? _feelslikeF,
        visKm: visKm ?? _visKm,
        visMiles: visMiles ?? _visMiles,
        uv: uv ?? _uv,
        gustMph: gustMph ?? _gustMph,
        gustKph: gustKph ?? _gustKph,
      );

  int? get lastUpdatedEpoch => _lastUpdatedEpoch;

  String? get lastUpdated => _lastUpdated;

  double? get tempC => _tempC;

  double? get tempF => _tempF;

  int? get isDay => _isDay;

  Condition? get condition => _condition;

  double? get windMph => _windMph;

  double? get windKph => _windKph;

  int? get windDegree => _windDegree;

  String? get windDir => _windDir;

  double? get pressureMb => _pressureMb;

  double? get pressureIn => _pressureIn;

  double? get precipMm => _precipMm;

  double? get precipIn => _precipIn;

  int? get humidity => _humidity;

  int? get cloud => _cloud;

  double? get feelslikeC => _feelslikeC;

  double? get feelslikeF => _feelslikeF;

  double? get visKm => _visKm;

  double? get visMiles => _visMiles;

  double? get uv => _uv;

  double? get gustMph => _gustMph;

  double? get gustKph => _gustKph;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = _lastUpdatedEpoch;
    map['last_updated'] = _lastUpdated;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['uv'] = _uv;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    return map;
  }
}

class Condition {
  Condition({
    String? text,
    String? icon,
    int? code,
  }) {
    _text = text;
    _icon = icon;
    _code = code;
  }

  Condition.fromJson(dynamic json) {
    _text = json['text'];
    _icon = json['icon'];
    _code = json['code'];
  }

  String? _text;
  String? _icon;
  int? _code;

  Condition copyWith({
    String? text,
    String? icon,
    int? code,
  }) =>
      Condition(
        text: text ?? _text,
        icon: icon ?? _icon,
        code: code ?? _code,
      );

  String? get text => _text;

  String? get icon => _icon;

  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['icon'] = _icon;
    map['code'] = _code;
    return map;
  }
}

class Forecast {
  Forecast({
    List<Forecastday>? forecastday,
  }) {
    _forecastday = forecastday;
  }

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      _forecastday = [];
      json['forecastday'].forEach((v) {
        _forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }

  List<Forecastday>? _forecastday;

  Forecast copyWith({
    List<Forecastday>? forecastday,
  }) =>
      Forecast(
        forecastday: forecastday ?? _forecastday,
      );

  List<Forecastday>? get forecastday => _forecastday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_forecastday != null) {
      map['forecastday'] = _forecastday?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Forecastday {
  Forecastday({
    String? date,
    int? dateEpoch,
    Day? day,
    Astro? astro,
    List<Hour>? hour,
  }) {
    _date = date;
    _dateEpoch = dateEpoch;
    _day = day;
    _astro = astro;
    _hour = hour;
  }

  Forecastday.fromJson(dynamic json) {
    _date = json['date'];
    _dateEpoch = json['date_epoch'];
    _day = json['day'] != null ? Day.fromJson(json['day']) : null;
    _astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      _hour = [];
      json['hour'].forEach((v) {
        _hour?.add(Hour.fromJson(v));
      });
    }
  }

  String? _date;
  int? _dateEpoch;
  Day? _day;
  Astro? _astro;
  List<Hour>? _hour;

  Forecastday copyWith({
    String? date,
    int? dateEpoch,
    Day? day,
    Astro? astro,
    List<Hour>? hour,
  }) =>
      Forecastday(
        date: date ?? _date,
        dateEpoch: dateEpoch ?? _dateEpoch,
        day: day ?? _day,
        astro: astro ?? _astro,
        hour: hour ?? _hour,
      );

  String? get date => _date;

  int? get dateEpoch => _dateEpoch;

  Day? get day => _day;

  Astro? get astro => _astro;

  List<Hour>? get hour => _hour;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['date_epoch'] = _dateEpoch;
    if (_day != null) {
      map['day'] = _day?.toJson();
    }
    if (_astro != null) {
      map['astro'] = _astro?.toJson();
    }
    if (_hour != null) {
      map['hour'] = _hour?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Day {
  Day({
    double? maxtempC,
    double? maxtempF,
    double? mintempC,
    double? mintempF,
    double? avgtempC,
    double? avgtempF,
    double? maxwindMph,
    double? maxwindKph,
    double? totalprecipMm,
    double? totalprecipIn,
    double? avgvisKm,
    double? avgvisMiles,
    double? avghumidity,
    int? dailyWillItRain,
    int? dailyChanceOfRain,
    int? dailyWillItSnow,
    int? dailyChanceOfSnow,
    Condition? condition,
    double? uv,
  }) {
    _maxtempC = maxtempC;
    _maxtempF = maxtempF;
    _mintempC = mintempC;
    _mintempF = mintempF;
    _avgtempC = avgtempC;
    _avgtempF = avgtempF;
    _maxwindMph = maxwindMph;
    _maxwindKph = maxwindKph;
    _totalprecipMm = totalprecipMm;
    _totalprecipIn = totalprecipIn;
    _avgvisKm = avgvisKm;
    _avgvisMiles = avgvisMiles;
    _avghumidity = avghumidity;
    _dailyWillItRain = dailyWillItRain;
    _dailyChanceOfRain = dailyChanceOfRain;
    _dailyWillItSnow = dailyWillItSnow;
    _dailyChanceOfSnow = dailyChanceOfSnow;
    _condition = condition;
    _uv = uv;
  }

  Day.fromJson(dynamic json) {
    _maxtempC = json['maxtemp_c'];
    _maxtempF = json['maxtemp_f'];
    _mintempC = json['mintemp_c'];
    _mintempF = json['mintemp_f'];
    _avgtempC = json['avgtemp_c'];
    _avgtempF = json['avgtemp_f'];
    _maxwindMph = json['maxwind_mph'];
    _maxwindKph = json['maxwind_kph'];
    _totalprecipMm = json['totalprecip_mm'];
    _totalprecipIn = json['totalprecip_in'];
    _avgvisKm = json['avgvis_km'];
    _avgvisMiles = json['avgvis_miles'];
    _avghumidity = json['avghumidity'];
    _dailyWillItRain = json['daily_will_it_rain'];
    _dailyChanceOfRain = json['daily_chance_of_rain'];
    _dailyWillItSnow = json['daily_will_it_snow'];
    _dailyChanceOfSnow = json['daily_chance_of_snow'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _uv = json['uv'];
  }

  double? _maxtempC;
  double? _maxtempF;
  double? _mintempC;
  double? _mintempF;
  double? _avgtempC;
  double? _avgtempF;
  double? _maxwindMph;
  double? _maxwindKph;
  double? _totalprecipMm;
  double? _totalprecipIn;
  double? _avgvisKm;
  double? _avgvisMiles;
  double? _avghumidity;
  int? _dailyWillItRain;
  int? _dailyChanceOfRain;
  int? _dailyWillItSnow;
  int? _dailyChanceOfSnow;
  Condition? _condition;
  double? _uv;

  Day copyWith({
    double? maxtempC,
    double? maxtempF,
    double? mintempC,
    double? mintempF,
    double? avgtempC,
    double? avgtempF,
    double? maxwindMph,
    double? maxwindKph,
    double? totalprecipMm,
    double? totalprecipIn,
    double? avgvisKm,
    double? avgvisMiles,
    double? avghumidity,
    int? dailyWillItRain,
    int? dailyChanceOfRain,
    int? dailyWillItSnow,
    int? dailyChanceOfSnow,
    Condition? condition,
    double? uv,
  }) =>
      Day(
        maxtempC: maxtempC ?? _maxtempC,
        maxtempF: maxtempF ?? _maxtempF,
        mintempC: mintempC ?? _mintempC,
        mintempF: mintempF ?? _mintempF,
        avgtempC: avgtempC ?? _avgtempC,
        avgtempF: avgtempF ?? _avgtempF,
        maxwindMph: maxwindMph ?? _maxwindMph,
        maxwindKph: maxwindKph ?? _maxwindKph,
        totalprecipMm: totalprecipMm ?? _totalprecipMm,
        totalprecipIn: totalprecipIn ?? _totalprecipIn,
        avgvisKm: avgvisKm ?? _avgvisKm,
        avgvisMiles: avgvisMiles ?? _avgvisMiles,
        avghumidity: avghumidity ?? _avghumidity,
        dailyWillItRain: dailyWillItRain ?? _dailyWillItRain,
        dailyChanceOfRain: dailyChanceOfRain ?? _dailyChanceOfRain,
        dailyWillItSnow: dailyWillItSnow ?? _dailyWillItSnow,
        dailyChanceOfSnow: dailyChanceOfSnow ?? _dailyChanceOfSnow,
        condition: condition ?? _condition,
        uv: uv ?? _uv,
      );

  double? get maxtempC => _maxtempC;

  double? get maxtempF => _maxtempF;

  double? get mintempC => _mintempC;

  double? get mintempF => _mintempF;

  double? get avgtempC => _avgtempC;

  double? get avgtempF => _avgtempF;

  double? get maxwindMph => _maxwindMph;

  double? get maxwindKph => _maxwindKph;

  double? get totalprecipMm => _totalprecipMm;

  double? get totalprecipIn => _totalprecipIn;

  double? get avgvisKm => _avgvisKm;

  double? get avgvisMiles => _avgvisMiles;

  double? get avghumidity => _avghumidity;

  int? get dailyWillItRain => _dailyWillItRain;

  int? get dailyChanceOfRain => _dailyChanceOfRain;

  int? get dailyWillItSnow => _dailyWillItSnow;

  int? get dailyChanceOfSnow => _dailyChanceOfSnow;

  Condition? get condition => _condition;

  double? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = _maxtempC;
    map['maxtemp_f'] = _maxtempF;
    map['mintemp_c'] = _mintempC;
    map['mintemp_f'] = _mintempF;
    map['avgtemp_c'] = _avgtempC;
    map['avgtemp_f'] = _avgtempF;
    map['maxwind_mph'] = _maxwindMph;
    map['maxwind_kph'] = _maxwindKph;
    map['totalprecip_mm'] = _totalprecipMm;
    map['totalprecip_in'] = _totalprecipIn;
    map['avgvis_km'] = _avgvisKm;
    map['avgvis_miles'] = _avgvisMiles;
    map['avghumidity'] = _avghumidity;
    map['daily_will_it_rain'] = _dailyWillItRain;
    map['daily_chance_of_rain'] = _dailyChanceOfRain;
    map['daily_will_it_snow'] = _dailyWillItSnow;
    map['daily_chance_of_snow'] = _dailyChanceOfSnow;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['uv'] = _uv;
    return map;
  }
}

class Astro {
  Astro({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
  }) {
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _moonIllumination = moonIllumination;
  }

  Astro.fromJson(dynamic json) {
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _moonIllumination = json['moon_illumination'];
  }

  String? _sunrise;
  String? _sunset;
  String? _moonrise;
  String? _moonset;
  String? _moonPhase;
  String? _moonIllumination;

  Astro copyWith({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
  }) =>
      Astro(
        sunrise: sunrise ?? _sunrise,
        sunset: sunset ?? _sunset,
        moonrise: moonrise ?? _moonrise,
        moonset: moonset ?? _moonset,
        moonPhase: moonPhase ?? _moonPhase,
        moonIllumination: moonIllumination ?? _moonIllumination,
      );

  String? get sunrise => _sunrise;

  String? get sunset => _sunset;

  String? get moonrise => _moonrise;

  String? get moonset => _moonset;

  String? get moonPhase => _moonPhase;

  String? get moonIllumination => _moonIllumination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    map['moon_illumination'] = _moonIllumination;
    return map;
  }
}

class Hour {
  Hour({
    int? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    int? isDay,
    Condition? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? windchillC,
    double? windchillF,
    double? heatindexC,
    double? heatindexF,
    double? dewpointC,
    double? dewpointF,
    int? willItRain,
    int? chanceOfRain,
    int? willItSnow,
    int? chanceOfSnow,
    double? visKm,
    double? visMiles,
    double? gustMph,
    double? gustKph,
    double? uv,
  }) {
    _timeEpoch = timeEpoch;
    _time = time;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _windchillC = windchillC;
    _windchillF = windchillF;
    _heatindexC = heatindexC;
    _heatindexF = heatindexF;
    _dewpointC = dewpointC;
    _dewpointF = dewpointF;
    _willItRain = willItRain;
    _chanceOfRain = chanceOfRain;
    _willItSnow = willItSnow;
    _chanceOfSnow = chanceOfSnow;
    _visKm = visKm;
    _visMiles = visMiles;
    _gustMph = gustMph;
    _gustKph = gustKph;
    _uv = uv;
  }

  Hour.fromJson(dynamic json) {
    _timeEpoch = json['time_epoch'];
    _time = json['time'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _windchillC = json['windchill_c'];
    _windchillF = json['windchill_f'];
    _heatindexC = json['heatindex_c'];
    _heatindexF = json['heatindex_f'];
    _dewpointC = json['dewpoint_c'];
    _dewpointF = json['dewpoint_f'];
    _willItRain = json['will_it_rain'];
    _chanceOfRain = json['chance_of_rain'];
    _willItSnow = json['will_it_snow'];
    _chanceOfSnow = json['chance_of_snow'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
    _uv = json['uv'];
  }

  int? _timeEpoch;
  String? _time;
  double? _tempC;
  double? _tempF;
  int? _isDay;
  Condition? _condition;
  double? _windMph;
  double? _windKph;
  int? _windDegree;
  String? _windDir;
  double? _pressureMb;
  double? _pressureIn;
  double? _precipMm;
  double? _precipIn;
  int? _humidity;
  int? _cloud;
  double? _feelslikeC;
  double? _feelslikeF;
  double? _windchillC;
  double? _windchillF;
  double? _heatindexC;
  double? _heatindexF;
  double? _dewpointC;
  double? _dewpointF;
  int? _willItRain;
  int? _chanceOfRain;
  int? _willItSnow;
  int? _chanceOfSnow;
  double? _visKm;
  double? _visMiles;
  double? _gustMph;
  double? _gustKph;
  double? _uv;

  Hour copyWith({
    int? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    int? isDay,
    Condition? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? windchillC,
    double? windchillF,
    double? heatindexC,
    double? heatindexF,
    double? dewpointC,
    double? dewpointF,
    int? willItRain,
    int? chanceOfRain,
    int? willItSnow,
    int? chanceOfSnow,
    double? visKm,
    double? visMiles,
    double? gustMph,
    double? gustKph,
    double? uv,
  }) =>
      Hour(
        timeEpoch: timeEpoch ?? _timeEpoch,
        time: time ?? _time,
        tempC: tempC ?? _tempC,
        tempF: tempF ?? _tempF,
        isDay: isDay ?? _isDay,
        condition: condition ?? _condition,
        windMph: windMph ?? _windMph,
        windKph: windKph ?? _windKph,
        windDegree: windDegree ?? _windDegree,
        windDir: windDir ?? _windDir,
        pressureMb: pressureMb ?? _pressureMb,
        pressureIn: pressureIn ?? _pressureIn,
        precipMm: precipMm ?? _precipMm,
        precipIn: precipIn ?? _precipIn,
        humidity: humidity ?? _humidity,
        cloud: cloud ?? _cloud,
        feelslikeC: feelslikeC ?? _feelslikeC,
        feelslikeF: feelslikeF ?? _feelslikeF,
        windchillC: windchillC ?? _windchillC,
        windchillF: windchillF ?? _windchillF,
        heatindexC: heatindexC ?? _heatindexC,
        heatindexF: heatindexF ?? _heatindexF,
        dewpointC: dewpointC ?? _dewpointC,
        dewpointF: dewpointF ?? _dewpointF,
        willItRain: willItRain ?? _willItRain,
        chanceOfRain: chanceOfRain ?? _chanceOfRain,
        willItSnow: willItSnow ?? _willItSnow,
        chanceOfSnow: chanceOfSnow ?? _chanceOfSnow,
        visKm: visKm ?? _visKm,
        visMiles: visMiles ?? _visMiles,
        gustMph: gustMph ?? _gustMph,
        gustKph: gustKph ?? _gustKph,
        uv: uv ?? _uv,
      );

  int? get timeEpoch => _timeEpoch;

  String? get time => _time;

  double? get tempC => _tempC;

  double? get tempF => _tempF;

  int? get isDay => _isDay;

  Condition? get condition => _condition;

  double? get windMph => _windMph;

  double? get windKph => _windKph;

  int? get windDegree => _windDegree;

  String? get windDir => _windDir;

  double? get pressureMb => _pressureMb;

  double? get pressureIn => _pressureIn;

  double? get precipMm => _precipMm;

  double? get precipIn => _precipIn;

  int? get humidity => _humidity;

  int? get cloud => _cloud;

  double? get feelslikeC => _feelslikeC;

  double? get feelslikeF => _feelslikeF;

  double? get windchillC => _windchillC;

  double? get windchillF => _windchillF;

  double? get heatindexC => _heatindexC;

  double? get heatindexF => _heatindexF;

  double? get dewpointC => _dewpointC;

  double? get dewpointF => _dewpointF;

  int? get willItRain => _willItRain;

  int? get chanceOfRain => _chanceOfRain;

  int? get willItSnow => _willItSnow;

  int? get chanceOfSnow => _chanceOfSnow;

  double? get visKm => _visKm;

  double? get visMiles => _visMiles;

  double? get gustMph => _gustMph;

  double? get gustKph => _gustKph;

  double? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = _timeEpoch;
    map['time'] = _time;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['windchill_c'] = _windchillC;
    map['windchill_f'] = _windchillF;
    map['heatindex_c'] = _heatindexC;
    map['heatindex_f'] = _heatindexF;
    map['dewpoint_c'] = _dewpointC;
    map['dewpoint_f'] = _dewpointF;
    map['will_it_rain'] = _willItRain;
    map['chance_of_rain'] = _chanceOfRain;
    map['will_it_snow'] = _willItSnow;
    map['chance_of_snow'] = _chanceOfSnow;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    map['uv'] = _uv;
    return map;
  }
}
