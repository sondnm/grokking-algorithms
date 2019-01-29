# frozen_string_literal: true

def gcd(a, b)
  return gcd(b, a) if a < b
  return a if b == 0
  r = a % b
  r.zero? ? b : gcd(b, r)
end
