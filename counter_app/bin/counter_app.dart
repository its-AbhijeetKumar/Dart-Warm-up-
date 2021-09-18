import 'dart:io';

void main(List<String> arguments) {
  //print('Hello Abhi');
  int count = 100;
  //int incrementValue;
  //int decrementValue;
  int operationValue;
  //bool isIncrementFunction; | int action;
  int function;
  bool stop = false;
  String? tempInput;
  // take input for incrementvalue   String? != String

  while (!stop) {
    print('enter operational Value');
    tempInput = stdin.readLineSync();
    //String? tempInput = '1';
    //use this when u r very sure that your variable will never be null then use (tempInput!)
    //incrementValue = int.parse(tempInput!);

    if (tempInput != null && tempInput.isNotEmpty) {
      print('tempInput is : $tempInput');
      //if we dont write the if condition and we write (tempInput!)
      //then it states that it will stop the program idf its find an null value in the tempInput
      operationValue = int.parse(tempInput);
    } else {
      operationValue = 0;
    }

    print('''
    Enter your Choice :-
    0.> Prnt Value.
    1.> Increment.
    2.> Decrement.
    3.> Stop the operation.
  ''');

    // print('enter decrement Value');
    // tempInput = stdin.readLineSync();
    // //String? tempInput = '1';
    // //use this when u r very sure that your variable will never be null then use (tempInput!)
    // //incrementValue = int.parse(tempInput!);

    // if (tempInput != null && tempInput.isNotEmpty) {
    //   print('tempInput is : $tempInput');
    //   //if we dont write the if condition and we write (tempInput!)
    //   //then it states that it will stop the program idf its find an null value in the tempInput
    //   decrementValue = int.parse(tempInput);
    // } else {
    //   decrementValue = 0;
    // }

    tempInput = stdin.readLineSync();

    if (tempInput != null && tempInput.isNotEmpty) {
      function = int.parse(tempInput);
    } else {
      function = -1;
    }
    //print(incrementCounter(count));
    //print(decrementCounter(count));
    //count = incrementCounter(count);
    //print('After increment $count');
    //count = decrementCounter(count);
    //print('After decrement $count');

    print('starting counter with value: $count');
    switch (function) {
      case 0:
        print(count);
        break;
      case 1:
        count = incrementCounter(count, operationValue);
        break;
      case 2:
        count = decrementCounter(count, operationValue);
        break;
      case 3:
        stop = true;
        break;
      default:
        print('Do Something Bro...!');
    }
    print("Final value of count is $count");
  }

  //print('starting counter with value: $count');
  // while (count > 0) {
  //   //print("D");
  //   count = decrementCounter(count, decrementValue);
  //   //print("D");
  //   count = decrementCounter(count, decrementValue);
  //   //print("I");
  //   count = incrementCounter(count, incrementValue);
  print("current value of count is $count");
  //}
  //print('while loops ends with count value: $count');
}

int incrementCounter(int count, int incrementValue) {
  //return count++;
  //return ++count;
  return count + incrementValue;
}

int decrementCounter(int count, int decrementValue) {
  //return count++;
  //return --count;
  return count - decrementValue;
}
