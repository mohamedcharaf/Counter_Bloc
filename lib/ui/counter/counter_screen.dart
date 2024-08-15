import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:a/ui/counter/bloc_/bloc.dart';
import 'package:a/ui/counter/bloc_/state.dart';
import 'package:a/ui/counter/bloc_/event.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(),
      child: BlocConsumer<CounterBloc, CounterStates>(
        listener: (BuildContext context, CounterStates state) {
          if (state is SuccessCounterState) {
            print("Counter updated: ${state.counterValue}");
          }
        },
        builder: (BuildContext context, CounterStates state) {
          return Scaffold(
            appBar: AppBar(title: const Text('Counter Bloc')),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementCounterValue());
                    },
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${(state is SuccessCounterState) ? state.counterValue : CounterBloc.initialCount }',
                    style: const TextStyle(fontSize: 22),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounterValue());
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}