module Lambdas where

cat :: String -> IO ()
cat x = putStrLn x

foo x = x
bar y = y

cat (\m = let x = foo "../config"; let y = foo "/sync" in 
        (\z -> x ++ y ++ z) m) "/myfile"

