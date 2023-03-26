import 'package:bloc/bloc.dart';

class CounterObsever extends BlocObserver {
  CounterObsever();
}

@override
void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
  onChange(bloc, change);
  print('${bloc.runtimeType} $change');
}
