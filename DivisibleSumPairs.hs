solve :: [Int] -> Int
solve (first:rest) = length [ undefined | (i, restAtIndex_i) <- zip [0..] rest,
                                          (j, restAtIndex_j) <- zip [0..] rest,
                                          i < j,
                                          mod (restAtIndex_i + restAtIndex_j) first == 0]



main :: IO ()
main = interact $ show .  solve .  map read .  tail .  words
