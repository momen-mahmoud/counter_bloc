import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(counterA: 0, counterB: 0, counterC: 0));

  void incrementA() {
    emit(Increment(
      counterA: state.counterA + 1,
      counterB: state.counterB,
      counterC: state.counterC,
    ));
  }

  void decrementA() {
    emit(Decrement(
      counterA: state.counterA - 1,
      counterB: state.counterB,
      counterC: state.counterC,

    ));
  }

  void incrementB() {
    emit(Increment(
      counterA: state.counterA,
      counterB: state.counterB + 1,
      counterC: state.counterC,

    ));
  }

  void decrementB() {
    emit(Decrement(
      counterA: state.counterA,
      counterB: state.counterB - 1,
      counterC: state.counterC,

    ));
  }

  void incrementC() {
    emit(Increment(
      counterA: state.counterA,
      counterB: state.counterB,
      counterC: state.counterC + 1,

    ));
  }

  void decrementC() {
    emit(Decrement(
      counterA: state.counterA,
      counterB: state.counterB,
      counterC: state.counterC - 1,

    ));
  }
}
