module Bem.Init where


import Bem.Cfg.Cfg
import Miso.String
import qualified Bem.Miso.Utl.Utl as MisoBem


mks :: MisoBem.Mks () MisoString
mks = MisoBem.init defCfg
