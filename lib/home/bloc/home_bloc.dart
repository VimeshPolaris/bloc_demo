import 'package:bloc_get/home/bloc/home_event.dart';
import 'package:bloc_get/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitializeState()) {
    on<AddDataEvent>(addData);
    on<RemoveDataEvent>(removeData);
    on<GetLogin>(getLogin);
  }

  void addData(AddDataEvent event, Emitter<HomeState> emit) {
    emit(IncrementState(a: event.ab));
  }

  void removeData(event, Emitter<HomeState> emit) {
    emit(DecrementState(a: event.ab));
  }

  void getLogin(GetLogin event, Emitter<HomeState> emit) {
    //API CALL
    emit(GetLoginDetailsState(a: 'ABC'));
  }
}
