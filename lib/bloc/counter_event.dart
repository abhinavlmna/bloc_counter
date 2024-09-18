part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class CounterRequestEvent extends CounterEvent{
  final bool isAdd;

  CounterRequestEvent({this.isAdd=true});
}
// class CounterRequestSecondEvent extends CounterEvent{}