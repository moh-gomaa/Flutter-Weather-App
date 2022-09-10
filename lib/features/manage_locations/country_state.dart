part of 'country_bloc.dart';

@immutable
abstract class CountryState {}

class CountryInitial extends CountryState {}

class CountryLoadInprogress extends CountryState {}

class CountryLoadSuccess extends CountryState {
  final List<CountryModel> countriesLst;
  CountryLoadSuccess({required this.countriesLst});
}

class CountryLoadFailure extends CountryState {
  final String error;
  CountryLoadFailure({required this.error});
}
