import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/cubit/counter_cubit.dart';
import 'package:test_bloc/cubit/counter_state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc'), backgroundColor: Colors.purple),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCounter(
                onPressed: () {
                  context.read<CounterCubit>().incrementA();
                },
                icon: Icons.add,
              ),
              BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
              Color color = Colors.black;
              int value = state.counterA;
              if (state is Increment) {
              color = Colors.green;
              } else if (state is Decrement) {
              color = Colors.red;
              }

              return Text(
              '$value',
              style: TextStyle(fontSize: 50, color: color),
              );
              },
                listener: (context, state) {
                  if (state is Increment) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Increment'),
                      ),
                    );
                  } else if (state is Decrement) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Decrement'),
                      ),
                    );
                  }
                },


                ),

              ButtonCounter(
                onPressed: () {
                  context.read<CounterCubit>().decrementA();
                },
                icon: Icons.remove,
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({super.key, required this.onPressed, required this.icon});

  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon));
  }
}
