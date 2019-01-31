def recursive_binary_search(arr, low, high, item):
    if high < 1:
        return None

    mid = round((low + high) / 2)
    if arr[mid] == item:
        return mid
    elif arr[mid] > item:
        return recursive_binary_search(arr, low, mid - 1, item)
    else:
        return recursive_binary_search(arr, mid + 1, high, item)
