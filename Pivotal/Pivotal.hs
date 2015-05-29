module Pivotal 
  (
    getProjectList
  ) where

  import Pivotal.API (Project, getProjects)

  getProjectList :: [Project]
  getProjectList = getProjects

