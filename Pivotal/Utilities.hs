module Pivotal.Utilities 
  (
    apiToken
  ) where

  import System.Environment (getEnv)

  apiToken :: IO String
  apiToken = getEnv "PIVOTAL_TRACKER_API_TOKEN"

