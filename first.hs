--let doubleMe :: Int -> Int;
doubleMe x = x + x;

doubleUs x y = doubleMe x + doubleMe y;

doubleSmallNumber x = if x > 100
                         then x 
                         else x * 2;

--nums
lostNumbers = [4,8,15,16,23,42];

divisibleByThree x = (mod x 3) == 0;
divisibleByFive  x = (mod x 5) == 0;

--fizzbuzz x = 
fizz :: Int -> IO () 
fizz x = 
         if (divisibleByThree x)  && (divisibleByFive x) then putStrLn "fizzbuzz"
         else if (divisibleByThree x)                    then putStrLn "fizz"
             else if (divisibleByFive  x)                then putStrLn "buzz"
                     else putStrLn (show x)


main = do 
       map fizz [1..20]

