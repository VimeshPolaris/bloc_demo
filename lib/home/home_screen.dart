import 'package:bloc_get/home/bloc/home_bloc.dart';
import 'package:bloc_get/home/bloc/home_event.dart';
import 'package:bloc_get/home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a = 0;
  String ab = '';

  HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: BlocListener(
        bloc: homeBloc,
        listener: (_, state) {
          if (state is IncrementState) {
            a = state.ab;
          } else if (state is DecrementState) {
            a = state.ab;
          } else if (state is GetLoginDetailsState) {
            ab = state.a;
          }
        },
        child: BlocBuilder(
          bloc: homeBloc,
          builder: (_, state) {
            return Column(
              children: [
                Text('$a'),
                ElevatedButton(
                    onPressed: () {
                      homeBloc.add(AddDataEvent(a: a));
                    },
                    child: const Text('+')),
                ElevatedButton(
                    onPressed: () {
                      homeBloc.add(RemoveDataEvent(a: a));
                    },
                    child: const Text('-')),
                ElevatedButton(
                    onPressed: () {
                      homeBloc.add(GetLogin());
                    },
                    child: Text(ab)),
              ],
            );
          },
        ),
      ),
    );
  }
}
