
// Selection Sort Algorithm
function main() {
  let array = [...Array(10).keys()];
  array = array.sort(() => Math.random() - 0.5)
  console.log(`Original array: ${array}`);
  selectionSort(array);
}

function selectionSort(array) {
  const n = array.length;
  let iteration = 0;
  for (let i = 0; i < n - 1; i++) {
    // Index of the smallest value in the subarray.
    let minIndex = i;
    for (let j = i + 1; j < n; j++) {
      if (array[minIndex] > array[j]) {
        minIndex = j;
      }
    }
    // Avoid unnecessary calculation.
    if (array[minIndex] == array[i]) continue;
    // Sorting the array with a swap.
    let temporal = array[i];
    array[i] = array[minIndex];
    array[minIndex] = temporal;
    // Counting the iterations and printing the array.
    iteration++;
    console.log(`Iteration N° ${iteration}: ${array}, Changed position: ${i}`);
  }
}

main()