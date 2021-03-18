fizzBuzz :: Int -> String 
fizzBuzz num = 
  if divisibleByThree && divisibleByFive then "FizzBuzz"
  else if divisibleByThree then "Fizz"
  else if divisibleByFive then "Buzz"
  else show num
  where 
    divisibleByThree = mod num 3 == 0
    divisibleByFive  = mod num 5 == 0

main = mapM_ putStrLn $ map fizzBuzz [1..100]

