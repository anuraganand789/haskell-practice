class Eq generic where
  (==) :: generic -> generic -> Bool
  (/=) :: generic -> generic -> Bool
  x == y = not (x /= y)
  x /= y = not (x == y)

class Function functor where
  fmap :: (typeOne -> typeTwo) -> 
                            functor typeOne -> 
                            functor typeTwo
