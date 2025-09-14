import 'package:flutter/material.dart';

 class CounterState {
  final int counterA;
  final int counterB;
  final int counterC;

  const CounterState({
    this.counterA = 0,
    this.counterB = 0,
    this.counterC = 0,

  });
}

class Increment extends CounterState {
  const Increment({
    super.counterA,
    super.counterB,
    super.counterC,
  });
}

class Decrement extends CounterState {
  const Decrement({
    super.counterA,
    super.counterB,
    super.counterC,
  });
}
