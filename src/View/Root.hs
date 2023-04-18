{-# LANGUAGE OverloadedStrings #-}


module View.Root where


import Bem.Scheme
import View.Header

import Bem.Miso.Utl.Utl
import Control.Monad.Reader
import Miso
import Miso.String


mkRoot :: Reader MisoString (View ())
mkRoot = do
    BlkElem header <- mkHeader
    return
        $ div_
              [class_ "Root"]
              [header Header [Header_Dark] Root Root_Header []]
