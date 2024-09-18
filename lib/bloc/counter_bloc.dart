import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _currentcount=0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterRequestEvent>((event, emit) {

      if(event.isAdd){
      _currentcount++;

      }else{
              _currentcount--;

      }
      emit(CounterStateAdd(Count:_currentcount));

    });
    // on<CounterRequestSecondEvent>((event,emit){
    //   _currentcount--;
    //   emit(CounterStateMinus(Count2: _currentcount));
    // });
  }
}
