import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();

  String output = await task2();
  task3(output);
}

void task1() {
  String task1 = 'Task 1 Performed';
  print('Task 1 is performed successsfully');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 4);
  String? result;
  await Future.delayed(duration, () {
    result = 'output';
    print('Task 2 is performed successsfully');
  });
  return result!;
}

void task3(String task2Data) {
  String task3 = 'Task 3 Performed';
  print('Task 3 is completed from $task2Data');
}
