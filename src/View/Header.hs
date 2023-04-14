{-# LANGUAGE OverloadedStrings #-}


module View.Header where


import Bem.Scheme
import View.Search

import Bem.Miso.View.Html
import Bem.Miso.View.Mk.Mk
import Control.Monad.Reader
import Miso
import Miso.String


mkHeader :: Reader MisoString (BlkElem ())
mkHeader = do
    userName <- ask
    mkBlkElem (NonVoidHtmlElem header_)
        ( []
        , [ blkElem (NonVoidHtmlElem span_)
                ([], [text "Logo"])
                Logo
                []
                Root
                Root_Logo
                []
          , span_ [] [text userName]
          , search Search [Search_Dark] Header Header_Search []
          ]
        )
