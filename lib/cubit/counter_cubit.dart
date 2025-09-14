import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/cubit/counter_state.dart';
class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterState(counter: 0));
  void increment(){
    emit(Increment(counter: state.counter+1));
  }
  void decrement(){
    emit(Decrement(counter: state.counter-1));
  }

}