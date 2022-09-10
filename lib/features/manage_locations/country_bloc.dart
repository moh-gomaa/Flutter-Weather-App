import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/models/CountryModel.dart';
import 'package:weather_app/data/repositories/country_repository.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountryInitial()) {
    on<CountryEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is GetCountries) {
        emit(CountryLoadInprogress());

        try {
          List<CountryModel> counries =
              await CountryRepository().getCountries();
          print(counries.first.region);

          emit(CountryLoadSuccess(countriesLst: counries));
        } catch (e) {
          emit(CountryLoadFailure(error: e.toString()));
        }
      }



    });
  }
}
