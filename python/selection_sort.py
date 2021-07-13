import random

# Selection Sort Algorithm
def selectionSort(array):
    n = len(array)
    iteration = 0
    # Index of the smallest value in the subarray.
    for i in range(n - 1):
        minIndex = i
        for j in range(i + 1, n):
            if array[minIndex] > array[j]:
                minIndex = j
        # Avoid unnecessary calculation.
        if array[minIndex] == array[i]:
            continue
        # Sorting the array with a swap.
        array[i], array[minIndex] = array[minIndex], array[i]
        # Counting the iterations and printing the array.
        iteration += 1
        print(f'Iteration N° {iteration}: {array}, Changed position: {i}')


if __name__ == "__main__":
    array = [i for i in range(10)]
    random.shuffle(array)
    print(f'Original array: {array}')
    selectionSort(array)


def selectionSort2(array):
    n = len(array)
    iteration = 0
    for i in range(n-1):
        minNumber = min(array[i:])
        if minNumber == array[i]:
            continue
        array.remove(minNumber)
        array.insert(i, minNumber)
        iteration += 1
        print(f'Iteration N° {iteration}: {array}, Changed position: {i}')
