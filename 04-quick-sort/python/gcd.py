def gcd(a, b):
    """Find the greatest common divisor of a and b"""
    if a < b:
        return gcd(b, a)
    elif b == 0:
        return a
    else:
        r = a % b
        if r == 0:
            return b
        else:
            return gcd(b, r)
