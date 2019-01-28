# frozen_string_literal: true

def factorial(n)
  if n == 1
    1
  else
    n * factorial(n - 1)
  end
end
