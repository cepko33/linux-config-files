-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Config.Kde
import XMonad.Config.Xfce
import XMonad.Layout.Spacing

-- main = do
--      session <- getEnv "DESKTOP_SESSION"
--        xmonad  $ maybe desktopConfig desktop session
-- 
-- desktop "gnome" = gnomeConfig 
-- desktop "kde" = kde4Config
-- desktop "xfce" = xfceConfig
-- desktop "xmonad-gnome" = gnomeConfig
-- desktop _ = desktopConfig

main = xmonad $ desktopConfig { layoutHook  = myLayout 
			      , borderWidth = 0       }

myLayout = spacing 20 $ Tall 1 (3/100) (1/2) 
