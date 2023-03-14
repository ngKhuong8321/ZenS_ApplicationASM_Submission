import 'dart:io';

int arraySum(var array) {
  // Calculate sum of every integers in given array

  int sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += int.parse(array[i]);
  }
  return sum;
}

int arrayMin(var array) {
  // Find min in given array

  int min = int.parse(array[0]);
  for (var i = 1; i < array.length; i++) {
    if (int.parse(array[i]) < min) {
      min = int.parse(array[i]);
    } else
      ;
  }
  return min;
}

int arrayMax(var array) {
  // Find max in given array

  int max = int.parse(array[0]);
  for (var i = 1; i < array.length; i++) {
    if (int.parse(array[i]) > max) {
      max = int.parse(array[i]);
    } else
      ;
  }
  return max;
}

List<int> arrayGetEven(var array) {
  // Find even elements in given array

  List<int> evenArray = [];
  for (var i = 0; i < array.length; i++) {
    if (int.parse(array[i]) % 2 == 0) {
      evenArray.add(int.parse(array[i]));
    } else
      ;
  }
  return evenArray;
}

List<int> arrayGetOdd(var array) {
  // Find odd elements in given array

  List<int> oddArray = [];
  for (var i = 0; i < array.length; i++) {
    if (int.parse(array[i]) % 2 != 0) {
      oddArray.add(int.parse(array[i]));
    } else
      ;
  }
  return oddArray;
}

void miniMaxSum(var arr) {
  if (arr.length == 5) {
    // Check if array length = 5

    int minSum = arraySum(arr) -
        arrayMax(arr); // Smallest sum = Total sum - Largest num in array
    int maxSum = arraySum(arr) -
        arrayMin(arr); // Largest sum = Total sum - Smallest num in array

    // Print output to screen
    print('Output');
    print(minSum.toString() + ' ' + maxSum.toString());
  } else {
    print('This array is not 5 integers long, Please try again');
  }
}

void main() {
  // Read input from user
  print('Input:');
  String? input = stdin.readLineSync();

  var array = input!.split(' '); // Convert input to array

  miniMaxSum(array);
}
