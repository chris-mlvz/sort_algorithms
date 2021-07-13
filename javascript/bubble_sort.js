const { performance } = require('perf_hooks');

function main() {
  let array = [...Array(100000).keys()];
  array = array.sort(() => Math.random() - 0.5)
  // console.log(array);
  let start = performance.now()
  bubbleSort(array);
  let end = performance.now()
  console.log((end - start)/1000)
}

function bubbleSort(array) {
  let n = array.length;
  let changes = 0;
  let updated_changes = 0;
  for (let iteration = 0; iteration < n; iteration++) {
    for (let i = 0; i < n - 1 - iteration; i++) {
      if (array[i] > array[i + 1]) {
        let temporal = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temporal;
        changes++;
      }
    }
    if (updated_changes == changes) break;
    updated_changes = changes;
    // console.log(`Iteration N° ${iteration + 1}: ${array} with ${changes} changes`);
  }
}


main();
