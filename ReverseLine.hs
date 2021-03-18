main = do
  line <- getLine
  if null line
    then return ()
  else do 
    putStrLn $ reverseWords line
    main
  where 
    reverseWords = unwords . map reverse . words
