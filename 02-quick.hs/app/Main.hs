module Main where

import Prelude
import System.Environment (getEnv)
import Data.List.Split (splitOn)

import QS (quickSort)

main :: IO ()
main = do
  list <- getEnv "LIST"
  let toBeSorted :: [Integer]
      toBeSorted = map read $ splitOn "," list
  print $ (show toBeSorted) ++ ": " ++ (show (quickSort toBeSorted))
