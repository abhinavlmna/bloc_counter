part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterStateAdd extends CounterState{
  final int Count;
  
  CounterStateAdd({required this.Count});
}
class CounterStateMinus extends CounterState{
  final int Count2;
  CounterStateMinus({required this.Count2});
}