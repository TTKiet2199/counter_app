class CounterState {
  CounterState({this.type, this.value});
  String? type;
  int? value;

  CounterState copyWith({String? type, int? value}) {
    return CounterState(type: type ?? this.type, value: value ?? this.value);
  }
}
