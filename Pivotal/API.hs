module Pivotal.API
  (
    Project (..)
  , getProjects
  ) where

  import Network.HTTP 
  import Network.Stream (Result)
  import Pivotal.Utilities (apiToken)

  data Project = Project Int

  getProjects :: [Project]
  getProjects = undefined

  parseProjects :: IO (Result (Response ty)) -> [Project]
  parseProjects = undefined
