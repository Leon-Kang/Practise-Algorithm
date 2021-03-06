def shell_sort(lists):
    count = len(lists)
    step = 2
    group = count / step
    while group > 0:
        for i in range(0, count):
            j = i + group
            while j < count:
                k = j - count
                key = lists[j]
                while k >= 0:
                    if lists[k] > key:
                        lists[k + group] = lists[k]
                        lists[k] = key
                    k -= group
                j += group
        group /= step
    return lists