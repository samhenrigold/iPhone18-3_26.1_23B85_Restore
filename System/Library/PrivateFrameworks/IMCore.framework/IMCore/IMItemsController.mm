@interface IMItemsController
+ (id)_charactersToIgnoreWhenParsingTextContent;
- (BOOL)_isSentMessage:(id)message;
- (BOOL)_trimIfNeeded;
- (IMItem)firstNonAssociatedItem;
- (IMItem)lastNonAssociatedItem;
- (IMMessageItem)lastIncomingFinishedMessageItem;
- (id)_appendArchivedItemsToItemsArray:(id)array;
- (id)_firstMessage;
- (id)_initWithItems:(id)items;
- (id)_itemForGUID:(id)d;
- (id)_lastFinishedMessage;
- (id)_lastIncomingFinishedMessageItemWithTextContent;
- (id)_lastIncomingMessage;
- (id)_lastMessage;
- (id)_lastMessageItemMatchingCriteria:(id)criteria;
- (id)_lastMessageItemWithService:(id)service;
- (id)_lastMessageItemWithServiceCapability:(id)capability;
- (id)_lastPendingSatelliteSendMessage;
- (id)_lastRelatedIncomingFinishedMessageTextContentWithLimit:(int64_t)limit;
- (id)_lastSentMessage;
- (id)_sentMessagesSinceInterworking;
- (unint64_t)_indexOfItem:(id)item;
- (void)_didReplaceItem:(__CFArray *)item oldItem:(id)oldItem idx:(int64_t)idx;
- (void)_handleItem:(id)item forChatStyle:(unsigned __int8)style keepExistingIndex:(BOOL)index messageComingFromStorage:(BOOL)storage;
- (void)_mergeItems:(id)items;
- (void)_removeAllItemsSkippingCallToItemsDidChange:(BOOL)change;
- (void)_removeItem:(id)item;
- (void)_replaceAndSortItemsWithUnsortedItems:(id)items;
- (void)_replaceItems:(id)items skipCallToItemsDidChange:(BOOL)change;
- (void)_replaceStaleTypingMessage;
- (void)_resortItems;
- (void)_setSortID:(id)d;
- (void)assignSortIDsToItems:(id)items shouldRecalculateSortIDForAllMessages:(BOOL)messages;
- (void)dealloc;
- (void)setCapacity:(unint64_t)capacity;
@end

@implementation IMItemsController

- (id)_lastFinishedMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_9:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isTypingMessage] & 1) == 0 && (objc_msgSend(v5, "isSuggestedActionResponse") & 1) == 0 && objc_msgSend(v5, "isLastMessageCandidate") && !objc_msgSend(v5, "isRCSEncryptionTest"))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

  return v5;
}

- (BOOL)_trimIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  items = self->_items;
  Count = CFArrayGetCount(items);
  v5 = self->_capacity + 5;
  if (Count > v5)
  {
    v15.location = 0;
    v15.length = Count - v5;
    CFArrayReplaceValues(items, v15, 0, 0);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:Count];
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "We are trimming items as our count (count: %@) is over the maxCapacity (maxCapacity: %@)", &v10, 0x16u);
      }
    }
  }

  return Count > v5;
}

- (id)_lastMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isLastMessageCandidate])
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  return v5;
}

- (IMMessageItem)lastIncomingFinishedMessageItem
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_8:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isFromMe] & 1) == 0 && (objc_msgSend(v5, "isTypingMessage") & 1) == 0 && (objc_msgSend(v5, "isLastMessageCandidate"))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_8;
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  items = self->_items;
  if (items)
  {
    CFRelease(items);
  }

  v4.receiver = self;
  v4.super_class = IMItemsController;
  [(IMItemsController *)&v4 dealloc];
}

- (void)setCapacity:(unint64_t)capacity
{
  if (self->_capacity != capacity)
  {
    self->_capacity = capacity;
    if ([(IMItemsController *)self _trimIfNeeded])
    {
      items = self->_items;

      [(IMItemsController *)self _itemsDidChange:items];
    }
  }
}

- (void)assignSortIDsToItems:(id)items shouldRecalculateSortIDForAllMessages:(BOOL)messages
{
  messagesCopy = messages;
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count] != 1)
  {
    v8 = itemsCopy;
    v9 = v8;
    v19 = itemsCopy;
    if (messagesCopy)
    {
      v10 = [v8 sortedArrayUsingComparator:&unk_1F1B6E0C0];

      v9 = v10;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v12)
    {
LABEL_20:

      itemsCopy = v19;
      goto LABEL_21;
    }

    v13 = v12;
    v14 = *v21;
    v15 = 1;
LABEL_7:
    v16 = 0;
    while (1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v20 + 1) + 8 * v16);
      unsentIsFromMeItem = 0;
      if ([(IMItemsController *)self _shouldPinUnsentMessagesToBottom]&& !messagesCopy)
      {
        unsentIsFromMeItem = [v17 unsentIsFromMeItem];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([v17 isTypingMessage] | unsentIsFromMeItem))
        {
          goto LABEL_17;
        }
      }

      else if (unsentIsFromMeItem)
      {
LABEL_17:
        [v17 setSortID:0];
        goto LABEL_18;
      }

      [v17 setSortID:v15++];
LABEL_18:
      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }
    }
  }

  firstObject = [itemsCopy firstObject];
  [firstObject setSortID:1];

LABEL_21:
}

- (id)_initWithItems:(id)items
{
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = IMItemsController;
  v5 = [(IMItemsController *)&v12 init];
  if (v5)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

    if (isGroupTypingIndicatorsEnabled)
    {
      v8 = objc_alloc_init(IMGroupTypingTrackingController);
      typingTrackingController = v5->_typingTrackingController;
      v5->_typingTrackingController = v8;

      [(IMGroupTypingTrackingController *)v5->_typingTrackingController setDelegate:v5];
    }

    if (itemsCopy)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, itemsCopy);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    v5->_items = MutableCopy;
    v5->_capacity = CFArrayGetCount(MutableCopy);
    [(IMItemsController *)v5 assignSortIDsToItems:itemsCopy];
  }

  return v5;
}

- (void)_handleItem:(id)item forChatStyle:(unsigned __int8)style keepExistingIndex:(BOOL)index messageComingFromStorage:(BOOL)storage
{
  indexCopy = index;
  itemCopy = item;
  items = self->_items;
  v11 = _IMItemsControllerGetTypingMessage(items);
  v31 = itemCopy;
  objc_opt_class();
  v12 = (objc_opt_isKindOfClass() & 1) != 0 && [v31 associatedMessageType] == 3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hasEditedParts = [v31 hasEditedParts];
  }

  else
  {
    hasEditedParts = 0;
  }

  _IMItemsControllerHandleItem(self, items, v31, (v12 | hasEditedParts) & 1, 1, indexCopy, storage);
  v14 = _IMItemsControllerGetTypingMessage(items);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

  if ((isGroupTypingIndicatorsEnabled & 1) == 0 && v11 != v14)
  {
    if (v11)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__replaceStaleTypingMessage object:0];
    }

    if (v14)
    {
      v17 = _IMTypingMessageTimeout();
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceReferenceDate];
      v20 = v19;
      time = [v14 time];
      [time timeIntervalSinceReferenceDate];
      v23 = v17 - (v20 - v22) + 1.0;
      v24 = 0.0;
      if (v23 >= 0.0)
      {
        v25 = _IMTypingMessageTimeout();
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceReferenceDate];
        v28 = v27;
        time2 = [v14 time];
        [time2 timeIntervalSinceReferenceDate];
        v24 = v25 - (v28 - v30) + 1.0;
      }

      [(IMItemsController *)self performSelector:sel__replaceStaleTypingMessage withObject:0 afterDelay:v24];
    }
  }

  [(IMItemsController *)self _itemsDidChange:items];
}

- (void)_removeItem:(id)item
{
  items = self->_items;
  v5 = _IMItemsControllerIndexOfExistingItem(items, item, 0);
  if (v5 != -1)
  {
    CFArrayRemoveValueAtIndex(items, v5);

    [(IMItemsController *)self _itemsDidChange:items];
  }
}

- (void)_replaceItems:(id)items skipCallToItemsDidChange:(BOOL)change
{
  itemsCopy = items;
  items = self->_items;
  _IMItemsControllerReplaceItems(self, items, itemsCopy);
  capacity = self->_capacity;
  if (capacity <= [itemsCopy count])
  {
    v8 = [itemsCopy count];
  }

  else
  {
    v8 = self->_capacity;
  }

  self->_capacity = v8;
  [(IMItemsController *)self assignSortIDsToItems:items];
  if (!change)
  {
    [(IMItemsController *)self _itemsDidChange:items];
  }
}

- (void)_replaceAndSortItemsWithUnsortedItems:(id)items
{
  v4 = [items mutableCopy];
  if ([(__CFArray *)v4 count]>= 2)
  {
    _IMItemsControllerSortItems(v4);
  }

  [(IMItemsController *)self _replaceItems:v4];
}

- (void)_removeAllItemsSkippingCallToItemsDidChange:(BOOL)change
{
  items = self->_items;
  CFArrayRemoveAllValues(items);
  if (!change)
  {

    [(IMItemsController *)self _itemsDidChange:items];
  }
}

- (void)_replaceStaleTypingMessage
{
  v8 = *MEMORY[0x1E69E9840];
  items = self->_items;
  v4 = _IMItemsControllerGetTypingMessage(items);
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Replacing stale typing indicator: %@)", &v6, 0xCu);
      }
    }

    _IMItemsControllerHandleItem(self, items, v4, 0, 0, 0, 0);
    [(IMItemsController *)self _itemsDidChange:items];
  }
}

- (void)_resortItems
{
  Count = CFArrayGetCount(self->_items);
  MutableCopy = CFArrayCreateMutableCopy(0, Count, self->_items);
  _IMItemsControllerSortItems(MutableCopy);
  [(IMItemsController *)self _replaceItems:MutableCopy];

  CFRelease(MutableCopy);
}

- (void)_setSortID:(id)d
{
  v58 = *MEMORY[0x1E69E9840];
  dCopy = d;
  _items = [(IMItemsController *)self _items];
  lastObject = [_items lastObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)lastObject isTypingMessage])
  {
    v38 = [(__CFString *)lastObject isFromMe]^ 1;
  }

  else
  {
    v38 = 0;
  }

  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([(__CFString *)lastObject isTypingMessage]& 1) == 0 && [(__CFString *)lastObject sortID]== 0;
  if (((v38 | v4) & 1) != 0 && ![(IMItemsController *)self _shouldPinUnsentMessagesToBottom])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (v38)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        *buf = 138412802;
        v53 = v7;
        v54 = 2112;
        if (v4)
        {
          v6 = @"YES";
        }

        v55 = v6;
        v56 = 2112;
        v57 = lastObject;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setting the sort ID from item before the last item -- lastItemIsTypingMessage %@ lastItemIsErrorCase %@ Last item %@", buf, 0x20u);
      }
    }

    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "*** ---- Trying to fix a bad sort ID -- Printing All Items -- Please file a radar ---- ***", buf, 2u);
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      _items2 = [(IMItemsController *)self _items];
      v10 = [_items2 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v10)
      {
        v11 = *v47;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v47 != v11)
            {
              objc_enumerationMutation(_items2);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v53 = v13;
                _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "\t\t%@", buf, 0xCu);
              }
            }
          }

          v10 = [_items2 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v10);
      }
    }

    _items3 = [(IMItemsController *)self _items];
    v16 = [_items3 count];

    v17 = v16 >= 2;
    v18 = v16 - 2;
    if (v17)
    {
      _items4 = [(IMItemsController *)self _items];
      v20 = [_items4 objectAtIndex:v18];

      lastObject = v20;
    }
  }

  if ([(IMItemsController *)self _shouldPinUnsentMessagesToBottom])
  {
    if ([dCopy unsentIsFromMeItem])
    {
      goto LABEL_55;
    }

    sortID = [(__CFString *)lastObject sortID];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    _items5 = [(IMItemsController *)self _items];
    reverseObjectEnumerator = [_items5 reverseObjectEnumerator];

    v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v24)
    {
      v25 = *v43;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v43 != v25)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v27 = *(*(&v42 + 1) + 8 * j);
          if ([v27 sortID])
          {
            sortID = [v27 sortID];
            goto LABEL_53;
          }
        }

        v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_53:
  }

  else
  {
    sortID = [(__CFString *)lastObject sortID];
  }

  [dCopy setSortID:sortID + 1];
LABEL_55:
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFString sortID](lastObject, "sortID")}];
      guid = [(__CFString *)lastObject guid];
      v31 = guid;
      v32 = @"NO";
      *buf = 138412802;
      v53 = v29;
      v54 = 2112;
      if (v38)
      {
        v32 = @"YES";
      }

      v55 = guid;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "last item's sortID %@ guid %@ isTyping %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dCopy, "sortID")}];
      guid2 = [dCopy guid];
      unsentIsFromMeItem = [dCopy unsentIsFromMeItem];
      v37 = @"NO";
      *buf = 138412802;
      v53 = v34;
      v54 = 2112;
      if (unsentIsFromMeItem)
      {
        v37 = @"YES";
      }

      v55 = guid2;
      v56 = 2112;
      v57 = v37;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "set sortID %@ guid %@ itemIsUnsentAndFromMe %@", buf, 0x20u);
    }
  }
}

- (unint64_t)_indexOfItem:(id)item
{
  result = _IMItemsControllerIndexOfExistingItem(self->_items, item, 0);
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)_itemForGUID:(id)d
{
  dCopy = d;
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v7 = Count + 1;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(items, v7 - 2);
      guid = [v8 guid];
      v10 = [dCopy isEqualToString:guid];

      if (v10)
      {
        break;
      }

      if (--v7 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (void)_mergeItems:(id)items
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        guid = [v10 guid];
        v12 = [(IMItemsController *)self _itemForGUID:guid];

        if (!v12)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138412546;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Merging %@ items of %@ items", buf, 0x16u);
    }
  }

  if ([v5 count])
  {
    v16 = [(__CFArray *)self->_items arrayByAddingObjectsFromArray:v5];
    v17 = [v16 mutableCopy];

    _IMItemsControllerSortItems(v17);
    [(IMItemsController *)self _replaceItems:v17 skipCallToItemsDidChange:1];
  }
}

- (id)_firstMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(items, v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 isFirstMessageCandidate])
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  return v6;
}

- (IMItem)firstNonAssociatedItem
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(items, v5);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

- (IMItem)lastNonAssociatedItem
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (id)_sentMessagesSinceInterworking
{
  _lastInterworkedMessage = [(IMItemsController *)self _lastInterworkedMessage];
  if (_lastInterworkedMessage)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(IMItemsController *)self _indexOfItem:_lastInterworkedMessage];
    for (i = CFArrayGetCount(self->_items) - 1; i > v5; --i)
    {
      v7 = CFArrayGetValueAtIndex(self->_items, i);
      if ([(IMItemsController *)self _isSentMessage:v7])
      {
        [v4 addObject:v7];
      }
    }

    v8 = [v4 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isSentMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([messageCopy isTypingMessage] & 1) == 0 && (objc_msgSend(messageCopy, "isSuggestedActionResponse") & 1) == 0 && objc_msgSend(messageCopy, "isFromMe") && objc_msgSend(messageCopy, "isLastMessageCandidate"))
  {
    v4 = [messageCopy isRCSEncryptionTest] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_lastSentMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v5 = Count + 1;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(items, v5 - 2);
      if ([(IMItemsController *)self _isSentMessage:v6])
      {
        break;
      }

      if (--v5 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

- (id)_lastPendingSatelliteSendMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_11:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isTypingMessage] & 1) == 0 && (objc_msgSend(v5, "isSuggestedActionResponse") & 1) == 0 && objc_msgSend(v5, "isFromMe") && objc_msgSend(v5, "isLastMessageCandidate") && (objc_msgSend(v5, "isRCSEncryptionTest") & 1) == 0 && (objc_msgSend(v5, "isPendingSatelliteSend"))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_11;
      }
    }
  }

  return v5;
}

- (id)_lastIncomingMessage
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_7:
    v5 = 0;
  }

  else
  {
    v4 = Count + 1;
    while (1)
    {
      v5 = CFArrayGetValueAtIndex(items, v4 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isFromMe] & 1) == 0 && (objc_msgSend(v5, "isLastMessageCandidate"))
      {
        break;
      }

      if (--v4 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return v5;
}

+ (id)_charactersToIgnoreWhenParsingTextContent
{
  if (qword_1EB2E9FF0 != -1)
  {
    sub_1A84DF790();
  }

  v3 = qword_1EB2E9FF8;

  return v3;
}

- (id)_lastIncomingFinishedMessageItemWithTextContent
{
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v4 = Count + 1;
  while (1)
  {
    v5 = CFArrayGetValueAtIndex(items, v4 - 2);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v5 isLastMessageCandidate])
    {
      goto LABEL_9;
    }

    body = [v5 body];
    string = [body string];
    v8 = +[IMItemsController _charactersToIgnoreWhenParsingTextContent];
    v9 = [string stringByRemovingCharactersFromSet:v8];

    if (([v5 isFromMe] & 1) == 0 && (objc_msgSend(v5, "isTypingMessage") & 1) == 0 && objc_msgSend(v9, "length"))
    {
      break;
    }

LABEL_9:
    if (--v4 <= 1)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return v5;
}

- (id)_lastRelatedIncomingFinishedMessageTextContentWithLimit:(int64_t)limit
{
  _lastIncomingFinishedMessageItemWithTextContent = [(IMItemsController *)self _lastIncomingFinishedMessageItemWithTextContent];
  if (!_lastIncomingFinishedMessageItemWithTextContent)
  {
    v17 = 0;
    goto LABEL_27;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  v8 = Count + 1;
  while (1)
  {
    v9 = CFArrayGetValueAtIndex(items, v8 - 2);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 isLastMessageCandidate])
    {
      goto LABEL_18;
    }

    body = [v9 body];
    string = [body string];
    v12 = +[IMItemsController _charactersToIgnoreWhenParsingTextContent];
    v13 = [string stringByRemovingCharactersFromSet:v12];

    if (v9 == _lastIncomingFinishedMessageItemWithTextContent)
    {
      [v21 addObject:v13];
      time = [v9 time];
      goto LABEL_15;
    }

    if ((v6 & 1) == 0)
    {
      v6 = 0;
      goto LABEL_17;
    }

    time = [v9 time];
    [time timeIntervalSinceDate:v7];
    v16 = v15;
    if (([v9 isFromMe] & 1) != 0 || (objc_msgSend(v9, "isTypingMessage") & 1) != 0 || !objc_msgSend(v13, "length") || fabs(v16) > 60.0 || objc_msgSend(v21, "count") >= limit)
    {
      break;
    }

    [v21 addObject:v13];
LABEL_15:

    v6 = 1;
    v7 = time;
LABEL_17:

LABEL_18:
    if (--v8 <= 1)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if ([v21 count])
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A82A96BC;
    v23[3] = &unk_1E7810C68;
    v17 = v18;
    v24 = v17;
    [v21 enumerateObjectsWithOptions:2 usingBlock:v23];
  }

  else
  {
    v17 = 0;
  }

LABEL_27:

  return v17;
}

- (id)_appendArchivedItemsToItemsArray:(id)array
{
  arrayCopy = array;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "appending archived items to current items array", buf, 2u);
    }
  }

  _items = [(IMItemsController *)self _items];
  v7 = [_items count];

  if (!v7)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v34 = 0;
      v20 = "Cannot append to either beginning or end as there are no previous items to append to";
      v21 = &v34;
LABEL_27:
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, v20, v21, 2u);
    }

LABEL_28:

    goto LABEL_29;
  }

  firstObject = [arrayCopy firstObject];
  messageID = [firstObject messageID];
  _items2 = [(IMItemsController *)self _items];
  lastMessageItem = [_items2 lastMessageItem];
  messageID2 = [lastMessageItem messageID];

  if (messageID == messageID2)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v33 = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Going to append the incoming messages to the end of the _items array", v33, 2u);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{1, objc_msgSend(arrayCopy, "count") - 1}];
    _items3 = [(IMItemsController *)self _items];
    _items5 = [arrayCopy objectsAtIndexes:v14];
LABEL_12:
    v17 = _items5;
    _items6 = [_items3 arrayByAddingObjectsFromArray:_items5];

    if (_items6)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  lastObject = [arrayCopy lastObject];
  messageID3 = [lastObject messageID];
  _items4 = [(IMItemsController *)self _items];
  firstMessageItem = [_items4 firstMessageItem];
  messageID4 = [firstMessageItem messageID];

  v27 = IMOSLoggingEnabled();
  if (messageID3 != messageID4)
  {
    if (!v27)
    {
      goto LABEL_29;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v31 = 0;
      v20 = "Cannot append to either beginning or end as there is a mismatch in messageIDs";
      v21 = &v31;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v27)
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Going to append the incoming messages to the beginning of the _items array", v32, 2u);
    }
  }

  if ([arrayCopy count] >= 2)
  {
    v29 = [arrayCopy count] - 1;
    v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v29}];
    _items3 = [arrayCopy objectsAtIndexes:v14];
    _items5 = [(IMItemsController *)self _items];
    goto LABEL_12;
  }

  _items6 = [(IMItemsController *)self _items];
  if (!_items6)
  {
LABEL_29:
    _items6 = arrayCopy;
  }

LABEL_30:

  return _items6;
}

- (id)_lastMessageItemMatchingCriteria:(id)criteria
{
  criteriaCopy = criteria;
  items = self->_items;
  Count = CFArrayGetCount(items);
  if (Count < 1)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    v7 = Count + 1;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(items, v7 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && [v8 isLastMessageCandidate] && (criteriaCopy[2](criteriaCopy, v8))
      {
        break;
      }

      if (--v7 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return v8;
}

- (id)_lastMessageItemWithService:(id)service
{
  serviceCopy = service;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82A9C68;
  v8[3] = &unk_1E7810C90;
  v9 = serviceCopy;
  v5 = serviceCopy;
  v6 = [(IMItemsController *)self _lastMessageItemMatchingCriteria:v8];

  return v6;
}

- (id)_lastMessageItemWithServiceCapability:(id)capability
{
  capabilityCopy = capability;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82A9D5C;
  v8[3] = &unk_1E7810C90;
  v9 = capabilityCopy;
  v5 = capabilityCopy;
  v6 = [(IMItemsController *)self _lastMessageItemMatchingCriteria:v8];

  return v6;
}

- (void)_didReplaceItem:(__CFArray *)item oldItem:(id)oldItem idx:(int64_t)idx
{
  oldItemCopy = oldItem;
  v9 = CFArrayGetValueAtIndex(item, idx);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_1A839343C;
    v26 = &unk_1E7813D58;
    v27 = v10;
    itemCopy = item;
    idxCopy = idx;
    v28 = oldItemCopy;
    v11 = _Block_copy(&v23);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

    if (isGroupTypingIndicatorsEnabled)
    {
      if ([v10 expireState] == 2)
      {
        CFArrayRemoveValueAtIndex(item, idx);
      }

      typingTrackingController = [(IMItemsController *)self typingTrackingController];
      currentTypingHandles = [typingTrackingController currentTypingHandles];
      v16 = [currentTypingHandles count];

      if (!v16)
      {
        v17 = _IMItemsControllerGetTypingMessage(item);
        if (v17)
        {
          v31.length = CFArrayGetCount(item);
          v31.location = 0;
          LastIndexOfValue = CFArrayGetLastIndexOfValue(item, v31, v17);
          CFArrayRemoveValueAtIndex(item, LastIndexOfValue);
        }
      }
    }

    else
    {
      v11[2](v11);
    }
  }

  else if ([oldItemCopy associatedMessageType] == 2 && objc_msgSend(v9, "associatedMessageType") == 2)
  {
    associatedMessageGUID = [oldItemCopy associatedMessageGUID];
    associatedMessageGUID2 = [v9 associatedMessageGUID];
    if ([associatedMessageGUID isEqualToString:associatedMessageGUID2])
    {
      consumedSessionPayloads = [oldItemCopy consumedSessionPayloads];
      v22 = [consumedSessionPayloads count];

      if (!v22)
      {
        goto LABEL_16;
      }

      associatedMessageGUID = [oldItemCopy consumedSessionPayloads];
      [v9 setConsumedSessionPayloads:associatedMessageGUID];
    }

    else
    {
    }
  }

LABEL_16:
}

@end