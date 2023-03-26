import 'package:bloc/bloc.dart';
import 'package:counterappbloc/counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(value: 0));

  void increment() {
    int curentValue = state.value! + 1;
    String currentType = 'Zero';
    if (curentValue > 0) {
      currentType = 'Positive';
    } else {
      if (curentValue < 0) {
        currentType = 'Negative';
      } else {
        currentType = 'Zero';
      }
    }
    emit(state.copyWith(value: curentValue, type: currentType));
  }

  void decrement() {
    int curentValue = state.value! - 1;
    String currentType = 'Zero';
   if (curentValue > 0) {
      currentType = 'Positive';
    } else {
      if (curentValue < 0) {
        currentType = 'Negative';
      } else {
        currentType = 'Zero';
      }
    }
    emit(state.copyWith(value: curentValue, type: currentType));
  }
}

class CounterCubit2 extends Cubit<String> {
  CounterCubit2() : super('0');
  void increment() => emit((int.parse(state) + 1).toString());
  void decrement() => emit((int.parse(state) - 1).toString());
}
