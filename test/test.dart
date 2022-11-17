import 'package:logging/logging.dart';
final log = Logger('ExampleLogger');
void main() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    // print('${record.level.name}: ${record.time}: ${record.message}');
  });

  // print('Fibonacci(4) is: ${fibonacci(4)}');
  //
  // // Logger.root.level = Level.SEVERE; // skip logs less then severe.
  // print('Fibonacci(5) is: ${fibonacci(5)}');
  //
  // print('Fibonacci(-42) is: ${fibonacci(-42)}');

  // print({"name": "John", "age": 30});
  Logger.root.info("message");
}

int fibonacci(int n) {
  if (n <= 2) {
    if (n < 0) log.shout('Unexpected negative n: $n');
    return 1;
  } else {
    log.info('recursion: n = $n');
    return fibonacci(n - 2) + fibonacci(n - 1);
  }
}