{-# LANGUAGE OverloadedStrings #-}


module View.Header where


import Bem.Scheme
import View.Search

import Bem.Miso.View.Html
import Control.Monad.Reader
import Miso
import Miso.String
import Bem.Miso.Utl.Utl

import Bem.Init


mkHeader :: Reader MisoString (BlkNoModsElem ())
mkHeader = do
    userName <- ask
    _mkBlkNoModsElem mks (NonVoidHtmlElem header_)
        ( []
        , [ noModsBlkNoModsElem (NonVoidHtmlElem span_)
                ([], [text "Logo"])
                Logo
                Root
                Root_Logo
          , span_ [] [text userName]
          , search Search [Search_Dark] Header Header_Search []
          ]
        )
