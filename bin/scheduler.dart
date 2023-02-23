import 'dart:async';
import 'dart:io';

void main() async {
  final stopwatch = Stopwatch()..start();
  await Schedule(hours: 0, minutes: 0, seconds: 10, discreption: "display");
  stopwatch.stop();
  print('Time taken to execute method: ${stopwatch.elapsed.inMilliseconds}');
}

Future<void> Schedule(
    {required hours,
    required minutes,
    required seconds,
    String? discreption}) async {
  final timeNow = DateTime.now();
  print("the tasks is initiated at time :: $timeNow\n");
  await Future.delayed(
    Duration(hours: hours, minutes: minutes, seconds: seconds),
  );
  print('executing task named $discreption ....\n');
}
