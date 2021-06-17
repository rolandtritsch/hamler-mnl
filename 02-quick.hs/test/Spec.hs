module Spec where

import Test.Hspec

import QS (quickSort)

run :: IO ()
run = hspec $ do
  describe "quickSort" $ do
    it "one" $ do
      quickSort [1] `shouldBe` [1]
    it "even" $ do
      quickSort [2,1] `shouldBe` [1,2]
    it "ordered" $ do
      quickSort [1,2,3] `shouldBe` [1,2,3]
    it "even" $ do
      quickSort [3,2,1] `shouldBe` [1,2,3]
