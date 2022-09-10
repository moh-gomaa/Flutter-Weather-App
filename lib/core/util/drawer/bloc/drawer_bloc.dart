import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerState(current: NavItem.page_one)) {
    on<DrawerEvent>((event, emit) {
      // TODO: implement event handler
      if(event is NavigateTo){
        if(event.destination != state.current){
          emit(DrawerState(current: event.destination));
        }
      }

    });
  }
}
