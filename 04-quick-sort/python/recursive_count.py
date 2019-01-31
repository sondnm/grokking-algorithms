def recursive_count(arr):
    """Implementation of recursive count"""
    if len(arr) == 0:
        return 0
    return recursive_count(arr[1::]) + 1
