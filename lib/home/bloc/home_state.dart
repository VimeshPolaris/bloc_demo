import 'package:flutter/material.dart';

abstract class HomeState {}

class HomeInitializeState extends HomeState {}

class IncrementState extends HomeState {
  int ab = 0;
  IncrementState({required int a}) {
    ab = a;
  }
}

class DecrementState extends HomeState {
  DecrementState({required int a}) {
    ab = a;
    debugPrint(a.toString());
  }

  int ab = 0;
}

class GetLoginDetailsState extends HomeState {
  String a = '';
  GetLoginDetailsState({required this.a});
}
