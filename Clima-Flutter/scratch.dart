import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration fourSeconds = Duration(seconds: 4);
  //sleep(fourSeconds);

  String results;

  //This is for async programming
  await Future.delayed(
    fourSeconds,
    () {
      results = 'task 2 data';
      print('Task 2 complete');
    },
  );
  return results;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
