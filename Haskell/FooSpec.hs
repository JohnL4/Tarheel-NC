module FooSpec where

import Test.Hspec
-- import Foo -- Import the module containing the functions you wrote that you want to test.

-- This is all black magic at this point.  Don't worry about it, just do the
-- incantations.  The dollar signs are important, so pay attention to them.
main :: IO ()
main = hspec $ do
  describe "Some readable (English) phrase describing what you're testing in general" $ do
    it "Some phrase describing a specific single test you're performing" $
      -- Here you write some Boolean (true/false) expression that will be true
      -- when your test passes, and false otherwise
      1 == 1                    -- This test will succeed.
    it "Some other phrase for another test" $ do
      1 == 2                    -- This test will fail.
