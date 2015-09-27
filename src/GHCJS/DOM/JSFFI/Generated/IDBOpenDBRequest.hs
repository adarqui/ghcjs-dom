{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBOpenDBRequest
       (blocked, upgradeNeeded, IDBOpenDBRequest, castToIDBOpenDBRequest,
        gTypeIDBOpenDBRequest)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onblocked Mozilla IDBOpenDBRequest.onblocked documentation> 
blocked :: EventName IDBOpenDBRequest IDBVersionChangeEvent
blocked = unsafeEventName (toJSString "blocked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onupgradeneeded Mozilla IDBOpenDBRequest.onupgradeneeded documentation> 
upgradeNeeded :: EventName IDBOpenDBRequest IDBVersionChangeEvent
upgradeNeeded = unsafeEventName (toJSString "upgradeneeded")