part of 'drawer_bloc.dart';

enum NavItem {
  page_one,
  page_two,
  page_three,
  page_four,
  page_five,
  page_six,
}

@immutable
abstract class DrawerEvent {}

class NavigateTo extends DrawerEvent {
  final NavItem destination;

  NavigateTo({required this.destination});
}
