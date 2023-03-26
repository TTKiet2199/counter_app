import 'package:counterappbloc/counter/cubit/counter_cubit.dart';
import 'package:counterappbloc/counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: ((context, state) {
            return Column(
              children: [
                Text('${state.type}', style: textTheme.displayMedium,),

                Text(
                  '${state.value}',
                  style: textTheme.displayMedium,
                ),
              ],
            );
          }),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            onPressed: (() => context.read<CounterCubit>().increment()),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
