import random


def bubbleSort(array):
    n = len(array)
    changes = 0
    updated_changes = 0
    for iteration in range(n):
        for i in range(n - 1 - iteration):
            if array[i] > array[i+1]:
                array[i], array[i+1] = array[i+1], array[i]
                changes += 1
        if updated_changes == changes:
            break
        updated_changes = changes
        print(f'Iteration N° {iteration + 1}: {array} with {changes} changes')

if __name__ == "__main__":
    array = [i for i in range(10)]
    random.shuffle(array)
    print(f'Original array: {array}')
    bubbleSort(array)
