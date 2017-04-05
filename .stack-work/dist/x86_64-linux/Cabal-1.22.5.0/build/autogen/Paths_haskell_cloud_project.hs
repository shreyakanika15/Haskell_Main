module Paths_haskell_cloud_project (
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
version = Version [0,0,0,1] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/kanika/Desktop/CloudHaskellAssignment/.stack-work/install/x86_64-linux/lts-6.30/7.10.3/bin"
libdir     = "/home/kanika/Desktop/CloudHaskellAssignment/.stack-work/install/x86_64-linux/lts-6.30/7.10.3/lib/x86_64-linux-ghc-7.10.3/haskell-cloud-project-0.0.0.1-55zbgFPQqiU33nRQgLzUPs"
datadir    = "/home/kanika/Desktop/CloudHaskellAssignment/.stack-work/install/x86_64-linux/lts-6.30/7.10.3/share/x86_64-linux-ghc-7.10.3/haskell-cloud-project-0.0.0.1"
libexecdir = "/home/kanika/Desktop/CloudHaskellAssignment/.stack-work/install/x86_64-linux/lts-6.30/7.10.3/libexec"
sysconfdir = "/home/kanika/Desktop/CloudHaskellAssignment/.stack-work/install/x86_64-linux/lts-6.30/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_cloud_project_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_cloud_project_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_cloud_project_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_cloud_project_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_cloud_project_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
