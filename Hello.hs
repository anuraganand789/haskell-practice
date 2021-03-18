import Data.Char (toUpper)

main = do 
  putStrLn "hello, what's your name?"
  firstName <- getLine
  putStrLn "What's you last name?"
  lastName  <- getLine
  let  bigFirstName = map toUpper firstName
       bigLastName  = map toUpper lastName
  putStrLn $ "Hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", you rock!"


