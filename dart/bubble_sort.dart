void main(List<String> args) {
  var array = List.generate(10, (index) => index);
  array.shuffle();
  print('Original array: $array');
  bubbleSort(array);
}

void bubbleSort(List<int> array) {
  var n = array.length;
  var changes = 0;
  var updated_changes = 0;
  for (var iteration = 0; iteration < n; iteration++) {
    for (var i = 0; i < n - 1 - iteration; i++) {
      if (array[i] > array[i + 1]) {
        var temporal = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temporal;
        changes++;
      }
    }
    if (updated_changes == changes) break;
    updated_changes = changes;
    print('Iteration N° ${iteration + 1}: $array with $changes changes');
  }
}
