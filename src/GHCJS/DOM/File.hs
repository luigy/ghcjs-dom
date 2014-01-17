{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.File
       (ghcjs_dom_file_get_name, fileGetName,
        ghcjs_dom_file_get_webkit_relative_path, fileGetWebkitRelativePath,
        File, IsFile, castToFile, gTypeFile, toFile)
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
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_file_get_name :: JSRef File -> IO JSString
#else 
ghcjs_dom_file_get_name :: JSRef File -> IO JSString
ghcjs_dom_file_get_name = undefined
#endif
 
fileGetName ::
            (IsFile self, FromJSString result) => self -> IO result
fileGetName self
  = fromJSString <$> (ghcjs_dom_file_get_name (unFile (toFile self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitRelativePath\"]"
        ghcjs_dom_file_get_webkit_relative_path ::
        JSRef File -> IO JSString
#else 
ghcjs_dom_file_get_webkit_relative_path ::
                                          JSRef File -> IO JSString
ghcjs_dom_file_get_webkit_relative_path = undefined
#endif
 
fileGetWebkitRelativePath ::
                          (IsFile self, FromJSString result) => self -> IO result
fileGetWebkitRelativePath self
  = fromJSString <$>
      (ghcjs_dom_file_get_webkit_relative_path (unFile (toFile self)))
#else
module GHCJS.DOM.File (
  module Graphics.UI.Gtk.WebKit.DOM.File
  ) where
import Graphics.UI.Gtk.WebKit.DOM.File
#endif
