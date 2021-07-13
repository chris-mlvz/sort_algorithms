import 'dart:math';

// Selection Sort Algorithm
void main(List<String> args) {
  var array = List.generate(100000, (index) => index);
  array.shuffle();
  // print('Original array: $array');
  final stopwatch = Stopwatch()..start();
  selectionSort(array);
  print('Selection sort executed in ${stopwatch.elapsed}');
}

void selectionSort(List<int> array) {
  var n = array.length;
  var iteration = 0;
  for (var i = 0; i < n - 1; i++) {
    // Index of the smallest value in the subarray.
    var minIndex = i;
    for (var j = i + 1; j < n; j++) {
      if (array[minIndex] > array[j]) {
        minIndex = j;
      }
    }
    // Avoid unnecessary calculation.
    if (array[minIndex] == array[i]) continue;
    // Sorting the array with a swap.
    var temporal = array[i];
    array[i] = array[minIndex];
    array[minIndex] = temporal;
    // Counting the iterations and printing the array.
    iteration++;
    // print('Iteration N° $iteration: $array, Changed position: $i');
  }
}

void selectionSort2(List<int> array) {
  var n = array.length;
  var iteration = 0;
  for (var i = 0; i < n - 1; i++) {
    var minNumber = (array.sublist(i).reduce(min));
    if (minNumber == array[i]) continue;
    array.remove(minNumber);
    array.insert(i, minNumber);
    iteration++;
    print('Iteration N° $iteration: $array, Changed position: $i');
  }
}
