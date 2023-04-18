{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}


module View.Search where


import Bem.Scheme

import Bem.Miso.View.Html
import Bem.Miso.View.Mk.Mk
import Bem.Utl.Intr
import Miso
import Bem.Miso.Utl.Utl


search :: FromBlkNoModsElem (View ())
search
    =
    blkNoModsElem (NonVoidHtmlElem section_)
        ( []
        , ([ blkElem (VoidHtmlElem input_)
                 [placeholder_ "Text to search"]
                 TextInput
                 [TextInput_Dark]
                 Search
                 Search_TextInput
                 [SearchTextInput_Size Big]
           , blkElem (VoidHtmlElem input_)
                 [type_ "button", value_ "Search"]
                 Btn
                 [Btn_Dark]
                 Search
                 Search_Btn
                 [SearchBtn_Size Big]
           ]
          )
        )
