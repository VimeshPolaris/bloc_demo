abstract class HomeEvent {}

class AddDataEvent extends HomeEvent {
  int ab = 0;
  AddDataEvent({required int a}) {
    ab = a + 1;
  }
}

class RemoveDataEvent extends HomeEvent {
  int ab = 0;
  RemoveDataEvent({required int a}) {
    ab = a - 1;
  }
}

class GetLogin extends HomeEvent {
  
}
