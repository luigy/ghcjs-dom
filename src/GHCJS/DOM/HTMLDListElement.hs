{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDListElement
       (ghcjs_dom_htmld_list_element_set_compact,
        htmldListElementSetCompact,
        ghcjs_dom_htmld_list_element_get_compact,
        htmldListElementGetCompact, HTMLDListElement, IsHTMLDListElement,
        castToHTMLDListElement, gTypeHTMLDListElement, toHTMLDListElement)
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



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_htmld_list_element_set_compact ::
        JSRef HTMLDListElement -> Bool -> IO ()
#else 
ghcjs_dom_htmld_list_element_set_compact ::
                                           JSRef HTMLDListElement -> Bool -> IO ()
ghcjs_dom_htmld_list_element_set_compact = undefined
#endif
 
htmldListElementSetCompact ::
                           (IsHTMLDListElement self) => self -> Bool -> IO ()
htmldListElementSetCompact self val
  = ghcjs_dom_htmld_list_element_set_compact
      (unHTMLDListElement (toHTMLDListElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmld_list_element_get_compact ::
        JSRef HTMLDListElement -> IO Bool
#else 
ghcjs_dom_htmld_list_element_get_compact ::
                                           JSRef HTMLDListElement -> IO Bool
ghcjs_dom_htmld_list_element_get_compact = undefined
#endif
 
htmldListElementGetCompact ::
                           (IsHTMLDListElement self) => self -> IO Bool
htmldListElementGetCompact self
  = ghcjs_dom_htmld_list_element_get_compact
      (unHTMLDListElement (toHTMLDListElement self))
#else
module GHCJS.DOM.HTMLDListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDListElement
#endif
