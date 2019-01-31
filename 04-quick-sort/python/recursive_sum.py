def recursive_sum(arr):
    """Implementation of recursive sum"""
    if len(arr) == 0:
        return 0
    return arr.pop(0) + recursive_sum(arr)
