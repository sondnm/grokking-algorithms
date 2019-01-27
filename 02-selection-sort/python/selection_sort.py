def find_smallest_index(arr):
    smallest_index = 0
    smallest = arr[0]

    for i in range(1, len(arr)):
        if arr[i] < smallest:
            smallest = arr[i]
            smallest_index = i
    return smallest_index

def selection_sort(arr):
    new_arr = []
    for i in range(len(arr)):
        smallest_index = find_smallest_index(arr)
        new_arr.append(arr.pop(smallest_index))
    return new_arr

