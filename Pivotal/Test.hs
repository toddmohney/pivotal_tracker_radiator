{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}

module Test where
  import Control.Applicative
  import Control.Monad(mzero)
  import Data.Aeson
  import qualified Data.ByteString.Lazy as BS
  import GHC.Generics

  data Wizard = 
    Wizard { name :: String,
             job :: String
           } deriving (Show,Generic)

  instance FromJSON Wizard
  instance ToJSON Wizard


  getJSON :: IO BS.ByteString
  getJSON =  BS.readFile "simple.json"

  main :: IO ()
  main = do
    d <- (eitherDecode <$> getJSON) :: IO (Either String [Wizard])
    case d of
      Left err -> putStrLn ("Oh no! " ++ err)
      Right ps -> print ps

