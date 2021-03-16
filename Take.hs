take' :: (Integral count) => count -> [a] -> [a]
take' count list
  | count <= 0 = []
  | null list = []
  | otherwise = (head list) : (take' (count - 1)  $ tail list)

takeTwo :: (Num count, Ord count) => count -> [a] -> [a]
takeTwo n _
 | n <= 0 = []

takeTwo _ [] = []
takeTwo count (first:rest) = first : takeTwo (count - 1) rest

reverse' :: [list] -> [list]
reverse' [] = []
reverse' (first:rest) = reverse' rest ++ [first]

zip' :: [itemFromFirstList] -> [itemFromSecondList] -> [(itemFromFirstList, itemFromSecondList)]
zip' [] _ = []
zip' _ [] = []
zip' (headOfFirstList:tailOfFirstList) (headOfSecondList : tailOfSecondList) = (headOfFirstList, headOfSecondList) : (zip' tailOfFirstList tailOfSecondList)

elem' :: (Eq item) => item -> [item] -> Bool
elem' _ [] = False;
elem' searchItem (firstItem : restItems) = (firstItem == searchItem) || (elem' searchItem restItems)

