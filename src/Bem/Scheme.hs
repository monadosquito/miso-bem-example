{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE StandaloneDeriving #-}


module Bem.Scheme where


import Bem.Utl.Utl
import Data.Kind


data Blk (e :: Type -> Type) b where
         Btn :: Blk NoElem BtnMod
         Header :: Blk HeaderElem HeaderMod
         Logo :: Blk NoElem NoMod
         Root :: Blk RootElem NoMod
         Search :: Blk SearchElem SearchMod
         TextInput :: Blk NoElem TextInputMod
deriving instance Show (Blk e b)

data BtnMod = Btn_Dark deriving Show

data HeaderMod = Header_Dark deriving Show

data HeaderElem m where
         Header_Logo :: HeaderElem NoMod
         Header_Search :: HeaderElem NoMod
deriving instance Show (HeaderElem m)

data RootElem m where
         Root_Header :: RootElem NoMod
         Root_Logo :: RootElem NoMod
deriving instance Show (RootElem m)

data SearchBtnMod = SearchBtn_Size Size deriving Show

data SearchTextInputMod = SearchTextInput_Size Size deriving Show

data SearchElem m where
         Search_Btn :: SearchElem SearchBtnMod
         Search_TextInput :: SearchElem SearchTextInputMod
deriving instance Show (SearchElem m)

data SearchMod = Search_Dark deriving Show

data Size = Big | Small deriving Show

data TextInputMod = TextInput_Dark deriving Show
