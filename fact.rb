def fact(n, acc=1)
  if n <= 1
    acc
  else
    fact(n-1, n*acc)
  end
end
