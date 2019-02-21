module CompassSpec where

import Test.Hspec

import Compass

main :: IO ()
main = hspec $ do
  describe "bearing" $ do
    it "North is 0" $ do
      bearing North == 0
    it "East is 90" $ do
      bearing East == 90
    it "South is 180" $ do
      bearing South == 180
    it "West is 270" $ do
      bearing West == 270
  describe "bearingCase" $ do
    it "North is 0" $ do
      bearingCase North == 0
    it "East is 90" $ do
      bearingCase East == 90
    it "South is 180" $ do
      bearingCase South == 180
    it "West is 270" $ do
      bearingCase West == 270
  describe "bearingPat" $ do
    it "North is 0" $ do
      bearingPat North == 0
    it "East is 90" $ do
      bearingPat East == 90
    it "South is 180" $ do
      bearingPat South == 180
    it "West is 270" $ do
      bearingPat West == 270
  describe "bearingGd" $ do
    it "North is 0" $ do
      bearingGd North == 0
    it "East is 90" $ do
      bearingGd East == 90
    it "South is 180" $ do
      bearingGd South == 180
    it "West is 270" $ do
      bearingGd West == 270
  
