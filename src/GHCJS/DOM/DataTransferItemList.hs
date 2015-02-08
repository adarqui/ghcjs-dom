{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataTransferItemList
       (ghcjs_dom_data_transfer_item_list_item, dataTransferItemListItem,
        ghcjs_dom_data_transfer_item_list_clear, dataTransferItemListClear,
        ghcjs_dom_data_transfer_item_list_addFile,
        dataTransferItemListAddFile, ghcjs_dom_data_transfer_item_list_add,
        dataTransferItemListAdd,
        ghcjs_dom_data_transfer_item_list_get_length,
        dataTransferItemListGetLength, DataTransferItemList,
        IsDataTransferItemList, castToDataTransferItemList,
        gTypeDataTransferItemList, toDataTransferItemList)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_data_transfer_item_list_item ::
        JSRef DataTransferItemList -> Word -> IO (JSRef DataTransferItem)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
dataTransferItemListItem ::
                         (MonadIO m, IsDataTransferItemList self) =>
                           self -> Word -> m (Maybe DataTransferItem)
dataTransferItemListItem self index
  = liftIO
      ((ghcjs_dom_data_transfer_item_list_item
          (unDataTransferItemList (toDataTransferItemList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_data_transfer_item_list_clear ::
        JSRef DataTransferItemList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.clear Mozilla DataTransferItemList.clear documentation> 
dataTransferItemListClear ::
                          (MonadIO m, IsDataTransferItemList self) => self -> m ()
dataTransferItemListClear self
  = liftIO
      (ghcjs_dom_data_transfer_item_list_clear
         (unDataTransferItemList (toDataTransferItemList self)))
 
foreign import javascript unsafe "$1[\"add\"]($2)"
        ghcjs_dom_data_transfer_item_list_addFile ::
        JSRef DataTransferItemList -> JSRef File -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.addFile Mozilla DataTransferItemList.addFile documentation> 
dataTransferItemListAddFile ::
                            (MonadIO m, IsDataTransferItemList self, IsFile file) =>
                              self -> Maybe file -> m ()
dataTransferItemListAddFile self file
  = liftIO
      (ghcjs_dom_data_transfer_item_list_addFile
         (unDataTransferItemList (toDataTransferItemList self))
         (maybe jsNull (unFile . toFile) file))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        ghcjs_dom_data_transfer_item_list_add ::
        JSRef DataTransferItemList -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
dataTransferItemListAdd ::
                        (MonadIO m, IsDataTransferItemList self, ToJSString data',
                         ToJSString type') =>
                          self -> data' -> type' -> m ()
dataTransferItemListAdd self data' type'
  = liftIO
      (ghcjs_dom_data_transfer_item_list_add
         (unDataTransferItemList (toDataTransferItemList self))
         (toJSString data')
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_data_transfer_item_list_get_length ::
        JSRef DataTransferItemList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.length Mozilla DataTransferItemList.length documentation> 
dataTransferItemListGetLength ::
                              (MonadIO m, IsDataTransferItemList self) => self -> m Int
dataTransferItemListGetLength self
  = liftIO
      (ghcjs_dom_data_transfer_item_list_get_length
         (unDataTransferItemList (toDataTransferItemList self)))
#else
module GHCJS.DOM.DataTransferItemList (
  ) where
#endif