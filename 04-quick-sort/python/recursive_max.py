def recursive_max(arr):
    if len(arr) == 0:
        return None
    elif len(arr) == 1:
        return arr[0]
    else:
        sub_max = recursive_max(arr[1::])
        if sub_max > arr[0]:
            return sub_max
        else:
            return arr[0]


