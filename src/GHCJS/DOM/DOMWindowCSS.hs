{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMWindowCSS
       (ghcjs_dom_dom_window_css_supports, domWindowCSSSupports,
        DOMWindowCSS, IsDOMWindowCSS, castToDOMWindowCSS,
        gTypeDOMWindowCSS, toDOMWindowCSS)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS
foreign import javascript unsafe
        "($1[\"supports\"]($2, $3) ? 1 : 0)"
        ghcjs_dom_dom_window_css_supports ::
        JSRef DOMWindowCSS -> JSString -> JSString -> IO Bool
#else
ghcjs_dom_dom_window_css_supports ::
                                    JSRef DOMWindowCSS -> JSString -> JSString -> IO Bool
ghcjs_dom_dom_window_css_supports = undefined
#endif

domWindowCSSSupports ::
                     (IsDOMWindowCSS self, ToJSString property, ToJSString value) =>
                       self -> property -> value -> IO Bool
domWindowCSSSupports self property value
  = ghcjs_dom_dom_window_css_supports
      (unDOMWindowCSS (toDOMWindowCSS self))
      (toJSString property)
      (toJSString value)

#else
module GHCJS.DOM.DOMWindowCSS (
  module Graphics.UI.Gtk.WebKit.DOM.DOMWindowCSS
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMWindowCSS
#endif
