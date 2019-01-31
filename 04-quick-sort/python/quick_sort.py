from random import randrange

def quick_sort(lst):
    """Implementation of quick sort algorithm"""
    if len(lst) < 2:
        return lst
    else:
        pivot_index = randrange(len(lst))
        pivot = lst[pivot_index]

        less = []
        greater = []
        for i, x in enumerate(lst):
            if i == pivot_index:
                continue
            if x <= pivot:
                less.append(x)
            else:
                greater.append(x)
        return quick_sort(less) + [pivot] + quick_sort(greater)
