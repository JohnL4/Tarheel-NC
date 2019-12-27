module AsPatternsSpec where

import Test.Hspec

import AsPatterns

main :: IO ()
main = hspec $ do
  describe "AsPattern test" $ do
    it "Works" $
      listFunkiness "abc" == "bcabc"
  
