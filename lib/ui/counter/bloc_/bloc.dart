import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:a/ui/counter/bloc_/event.dart';
import 'package:a/ui/counter/bloc_/state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  static int initialCount = 0 ;
  int count = initialCount;

  CounterBloc() : super(InitialCounterState()) {
    on<IncrementCounterValue>(_increment);
    on<DecrementCounterValue>(_decrement);
  }

  void _increment(IncrementCounterValue event, Emitter<CounterStates> emit) {
    count++;
    emit(SuccessCounterState(count));
  }

  void _decrement(DecrementCounterValue event, Emitter<CounterStates> emit) {
    if (count > 0) {
      count--;
    }
    emit(SuccessCounterState(count));
  }

  static CounterBloc get(context) => BlocProvider.of(context);
}