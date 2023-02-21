import 'dart:async';
import 'dart:io';

void main() async {
  await task(hours: 0, minutes: 0, seconds: 13, discreption: "display");
}

Future<void> task({
  required hours,
  required minutes,
  required seconds,
  String? discreption,
}) async {
  final timeNow = DateTime.now();
  print("the tasks is initiated at time :: $timeNow");
  await Future.delayed(
    Duration(hours: hours, minutes: minutes, seconds: seconds),
  );
  print('executing task named $discreption ....\n');
  var timeTaken = DateTime.now();
  print('task is finished at time :: $timeTaken\n');
}
