import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/widgets/count.dart';
import 'package:counter_app_bloc/widgets/custombutton.dart';
import 'package:counter_app_bloc/widgets/custombuttonscnd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter app',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          if (state is CounterStateAdd) {
            if (state.Count == 10) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Count is now 10'),
                  ),
                  duration: Duration(seconds: 3),
                ),
              );
            }

            if (state.Count == -10) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Container(
                    child: Text('Count is now -10'),
                  ),
                  duration: Duration(seconds: 3),
                ),
              );
            }
          }
          //  else if (state is CounterStateMinus && state.Count2 == -10) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Container(
          //         child: Text('Count is now -10'),
          //       ),
          //       duration: Duration(seconds: 3),
          //     ),
          //   );
          // }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Your Count is.....',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                int count = 0;
                if (state is CounterInitial) {
                  return Text("0");
                } else if (state is CounterStateAdd) {
                  count = state.Count;
                }
                //  else if (state is CounterStateMinus) {
                //   count = state.Count2;
                // }
                return CountItem(count: count);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 30),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CustomButton(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomButtonScnd(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
