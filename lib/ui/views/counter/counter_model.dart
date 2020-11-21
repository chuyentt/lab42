/// Model
class Counter {
  /// Thuộc tính
  int _counter = 0;
  int get counter => _counter;

  String _imgUrl =
      'https://i-ngoisao.vnecdn.net/2020/11/17/23-sbd-245-do-thi-ha-1-1605598-1197-9137-1605601712.jpg';
  String get imgUrl => _imgUrl;

  /// Phương thức
  void increment() {
    _counter++;
    print(counter);
  }
}
