import 'dart:async';

class Debouncer<T> {
  Debouncer({required this.duration, this.onValue});
  final Duration duration;
  void Function(T value)? onValue;
  //get set

  T? _value;
  Timer? _timer;

  //get
  T get value => _value!;

  //set
  set value(T val) {
    _value = val;
    _timer?.cancel();
    _timer = Timer(duration, () => onValue!(_value!));
  }
}
