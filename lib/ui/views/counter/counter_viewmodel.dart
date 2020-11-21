import 'package:lab42/ui/views/counter/counter_model.dart';
import 'package:stacked/stacked.dart';

class CounterViewModel extends BaseViewModel {
  final title = 'Counter ViewModel';
  Counter _myCounter = Counter();
  Counter get myCounter => _myCounter;
}
