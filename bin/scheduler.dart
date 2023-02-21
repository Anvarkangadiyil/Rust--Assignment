import 'dart:async';
import 'dart:io';

class Scheduler {
  final _hour, _minutes, _seconds;

  Scheduler(this._hour, this._minutes, this._seconds) {
    var datenow = DateTime.now();
    print('\nthe task is scheduled at time :: $datenow\n');
    task();
  }

  Future<void> task() async {
    await Future.delayed(
        Duration(hours: _hour, minutes: _minutes, seconds: _seconds));
    print('executing task ....\n');
    var timeTaken = DateTime.now();
    print('task is finished at time :: $timeTaken\n');
  }
}

void main() async {
  var hour = 0, minute = 0, seocond = 0;
  final task1 = Scheduler(0, 0, 5);
  await task1.task();
}
