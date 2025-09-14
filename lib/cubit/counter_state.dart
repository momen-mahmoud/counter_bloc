import 'package:flutter/material.dart';
class CounterState{
  int counter;
  CounterState({required this.counter});

}
class Increment extends CounterState{
  Increment({required super.counter});
}
class Decrement extends CounterState{
  Decrement({required super.counter});

}