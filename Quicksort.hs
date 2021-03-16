quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (first:rest) = 
  let 
     smallerSorted = quicksort [x | x <- rest, x <= first]
     biggerSorted = quicksort [x | x <- rest, x > first]
  in 
     smallerSorted ++ [first] ++ biggerSorted

