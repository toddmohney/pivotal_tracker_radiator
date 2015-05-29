module Pivotal where
  import System.Environment (getEnv)

  api_token :: IO String
  api_token = getEnv "PIVOTAL_TRACKER_API_TOKEN"
