import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonScnd extends StatelessWidget {
  const CustomButtonScnd({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
BlocProvider.of<CounterBloc>(context).add(CounterRequestEvent(isAdd: false));

    },child: Icon(Icons.remove),);
  }
}