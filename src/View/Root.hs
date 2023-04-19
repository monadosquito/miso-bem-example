{-# LANGUAGE OverloadedStrings #-}


module View.Root where


import Bem.Scheme
import View.Header

import Bem.Miso.Utl.Utl
import Miso
import Miso.String


mkRoot :: MkSingleton' () MisoString
mkRoot = do
    BlkNoModsElem header <- mkHeader
    return
        $ div_
              [class_ "Root"]
              [header Header [Header_Dark] Root Root_Header]
