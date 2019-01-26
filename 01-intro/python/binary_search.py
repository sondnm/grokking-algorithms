def binary_search(sorted_list, item):
    """Implementation of binary search"""
    low = 0
    high = len(sorted_list) - 1

    while low <= high:
        mid = round((high + low) / 2)
        guess = sorted_list[mid]

        if guess == item:
            return mid
        if guess < item:
            low = mid + 1
        else:
            high = mid - 1
    return None
