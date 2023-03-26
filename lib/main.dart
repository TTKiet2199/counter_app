import 'package:bloc/bloc.dart';
import 'package:counterappbloc/bloc_obsever.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';

void main() {
  Bloc.observer = CounterObsever();
  runApp( CounterApp());
}
