module Paths_TrackerRadiator (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/toddmohney/workspace/tracker_radiator/.cabal-sandbox/bin"
libdir     = "/Users/toddmohney/workspace/tracker_radiator/.cabal-sandbox/lib/x86_64-osx-ghc-7.8.3/TrackerRadiator-0.1.0.0"
datadir    = "/Users/toddmohney/workspace/tracker_radiator/.cabal-sandbox/share/x86_64-osx-ghc-7.8.3/TrackerRadiator-0.1.0.0"
libexecdir = "/Users/toddmohney/workspace/tracker_radiator/.cabal-sandbox/libexec"
sysconfdir = "/Users/toddmohney/workspace/tracker_radiator/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "TrackerRadiator_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "TrackerRadiator_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "TrackerRadiator_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "TrackerRadiator_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "TrackerRadiator_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
