{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLUListElement
       (js_setCompact, setCompact, js_getCompact, getCompact, js_setType,
        setType, js_getType, getType, HTMLUListElement,
        castToHTMLUListElement, gTypeHTMLUListElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        js_setCompact :: JSRef HTMLUListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLUListElement -> Bool -> m ()
setCompact self val
  = liftIO (js_setCompact (unHTMLUListElement self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: JSRef HTMLUListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLUListElement -> m Bool
getCompact self = liftIO (js_getCompact (unHTMLUListElement self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        JSRef HTMLUListElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.type Mozilla HTMLUListElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLUListElement -> val -> m ()
setType self val
  = liftIO (js_setType (unHTMLUListElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef HTMLUListElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.type Mozilla HTMLUListElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLUListElement -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unHTMLUListElement self)))