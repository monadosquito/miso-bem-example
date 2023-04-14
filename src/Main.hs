{-# LANGUAGE CPP #-}
{-# LANGUAGE OverloadedStrings #-}


import View.Root

import Control.Monad.Reader
import Language.Javascript.JSaddle.Warp
import Miso


main :: IO ()
main
    =
    runApp
        $ startApp
              App { events = defaultEvents
                  , initialAction = ()
                  , logLevel = Off
                  , model = "Monadosquito"
                  , mountPoint = Nothing
                  , subs = []
                  , update = \_ mdl -> noEff mdl
                  , view = runReader mkRoot
                  }


#ifndef __GHCJS__
runApp :: JSM () -> IO ()
runApp = debug 8000
#else
runApp :: IO () -> IO ()
runApp = id
#endif
