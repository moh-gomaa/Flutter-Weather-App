import 'package:weather_app/data/data_providers/country_data_provider.dart';
import 'package:weather_app/data/data_providers/weather_data_provider.dart';
import 'package:weather_app/data/models/CountryModel.dart';
import 'package:weather_app/data/models/weather_model.dart';

class CountryRepository {
  late final CountryDataProvider countryDataProvider;

  Future <List<CountryModel>> getCountries() async {

    List<CountryModel> tmp = [];
    var resBody = await countryDataProvider.getRawCountries();

    for(var country in resBody){
      final CountryModel country = CountryModel.fromJson(resBody);
      tmp.add(country);
      print(tmp.length);
      return tmp;

    }
    return [];

  }
}