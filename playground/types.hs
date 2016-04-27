module TypePlay where

myLength :: [a] -> Int
myLength x = length x

strLens :: [String] -> [Int]
strLens x =
          map (\y -> length y) x

-- strLens [ "foo", "barbacoa", "baz" ] -> [ 3, 8, 3 ]

fst' :: (a,b) -> a
fst' (a,_) = a

snd' :: (a,b) -> b
snd' (_,b) = b

myTup :: (Double, Double) -> (String, Double, Double)
myTup x = ("myTup", fst' x, snd' x)

numChars :: [String] -> Int
numChars x =
           let charCounter = (\y z -> (+) (length y) z)
           in foldr charCounter 0 x

-- numChars [ "foo", "barbacoa", "baz" ] -> 14

-- charCounter "foo" 0 -> 3
-- charCounter "barbacoa" 3 -> 11
-- charCounter "baz" 11 -> 14
