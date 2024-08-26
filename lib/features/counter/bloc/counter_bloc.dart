import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>(counterIncrementEvent);
    on<CounterShowSnackBarEvent>(counterShowSnackBarEvent);
  }

  int value = 0;

  FutureOr<void> counterIncrementEvent(
      CounterIncrementEvent event, Emitter<CounterState> emit) {
    // increments a value and emits the state
    emit(CounterIncrementActionState());
  }

  FutureOr<void> counterShowSnackBarEvent(
      CounterShowSnackBarEvent event, Emitter<CounterState> emit) {
    // for showing SnackBar
    emit(CounterShowSnackBarActionState());
  }
}
