{-# LANGUAGE ExplicitForAll #-}

module QS where

quickSort :: forall a. Ord a => [a] -> [a]
quickSort [] = []
quickSort (a:as) = quickSort [x|x <- as, x < a] ++ [a] ++ quickSort [x|x <- as, x >= a]
