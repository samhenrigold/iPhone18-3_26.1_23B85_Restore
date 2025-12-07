@interface IMChatItemFilterController
- (BOOL)itemMatchesFilter:(id)filter;
- (IMChat)chat;
- (IMChatItemFilterController)initWithChat:(id)chat;
- (IMMessage)firstMessage;
- (IMMessage)lastMessage;
- (NSArray)chatItems;
- (id)_itemsMatchingFilter:(id)filter guids:(id)guids;
- (void)_itemsDidChange:(id)change;
- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems;
- (void)_postNotification:(id)notification userInfo:(id)info;
- (void)_replaceStaleChatItems;
- (void)_setupChatItemRules;
- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post;
- (void)dealloc;
- (void)insertHistoricalMessages:(id)messages queryID:(id)d hasMessagesBefore:(BOOL)before hasMessagesAfter:(BOOL)after isReplacingItems:(BOOL)items;
- (void)insertItem:(id)item;
- (void)performActionDisallowingItemInsert:(id)insert;
- (void)removeItem:(id)item;
- (void)replaceItems:(id)items;
@end

@implementation IMChatItemFilterController

- (IMChatItemFilterController)initWithChat:(id)chat
{
  chatCopy = chat;
  v10.receiver = self;
  v10.super_class = IMChatItemFilterController;
  v5 = [(IMItemsController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(IMChatItemFilterController *)v5 setChat:chatCopy];
    v7 = [objc_alloc(MEMORY[0x1E69A6158]) initWithTarget:v6 action:sel__updateChatItemsForChatItemUpdater];
    chatItemsUpdater = v6->_chatItemsUpdater;
    v6->_chatItemsUpdater = v7;

    v6->_hasEarlierMessagesToLoad = 0;
    v6->_hasRecentMessagesToLoad = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(IMScheduledUpdater *)self->_chatItemsUpdater invalidate];
  v3.receiver = self;
  v3.super_class = IMChatItemFilterController;
  [(IMItemsController *)&v3 dealloc];
}

- (IMMessage)firstMessage
{
  _firstMessage = [(IMItemsController *)self _firstMessage];
  message = [_firstMessage message];

  return message;
}

- (NSArray)chatItems
{
  chatItemRules = self->_chatItemRules;
  if (!chatItemRules)
  {
    [(IMChatItemFilterController *)self _setupChatItemRules];
    chatItemRules = self->_chatItemRules;
  }

  return [(IMChatItemRules *)chatItemRules _chatItems];
}

- (IMMessage)lastMessage
{
  _lastMessage = [(IMItemsController *)self _lastMessage];
  message = [_lastMessage message];

  return message;
}

- (void)insertHistoricalMessages:(id)messages queryID:(id)d hasMessagesBefore:(BOOL)before hasMessagesAfter:(BOOL)after isReplacingItems:(BOOL)items
{
  v33 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dCopy = d;
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messagesCopy, "count")}];
    *buf = 136315394;
    *&buf[4] = "[IMChatItemFilterController insertHistoricalMessages:queryID:hasMessagesBefore:hasMessagesAfter:isReplacingItems:]";
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "%s archivedMessages: %@", buf, 0x16u);
  }

  self->_hasEarlierMessagesToLoad = before;
  self->_hasRecentMessagesToLoad = after;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = sub_1A8259B90;
  v31 = sub_1A825AEF4;
  v16 = messagesCopy;
  v32 = v16;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1A82FE28C;
  v22 = &unk_1E7811F80;
  v17 = dCopy;
  selfCopy = self;
  v25 = buf;
  beforeCopy = before;
  afterCopy = after;
  itemsCopy = items;
  v23 = v17;
  v18 = _Block_copy(&v19);
  [(IMChatItemFilterController *)self _updateChatItemsWithReason:@"history query" block:v18, v19, v20, v21, v22];

  _Block_object_dispose(buf, 8);
}

- (void)_itemsDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = IMChatItemFilterController;
  [(IMItemsController *)&v4 _itemsDidChange:change];
  [(IMScheduledUpdater *)self->_chatItemsUpdater setNeedsUpdate];
}

- (void)insertItem:(id)item
{
  v12 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([(IMChatItemFilterController *)self itemMatchesFilter:itemCopy])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [itemCopy guid];
      v8 = 136315394;
      v9 = "[IMChatItemFilterController insertItem:]";
      v10 = 2112;
      v11 = guid;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "%s inserting %@, matches filter", &v8, 0x16u);
    }

    chat = [(IMChatItemFilterController *)self chat];
    -[IMItemsController _handleItem:forChatStyle:](self, "_handleItem:forChatStyle:", itemCopy, [chat chatStyle]);
  }
}

- (void)removeItem:(id)item
{
  v11 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([(IMChatItemFilterController *)self itemMatchesFilter:itemCopy])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [itemCopy guid];
      v7 = 136315394;
      v8 = "[IMChatItemFilterController removeItem:]";
      v9 = 2112;
      v10 = guid;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "%s removing %@", &v7, 0x16u);
    }

    [(IMItemsController *)self _removeItem:itemCopy];
  }
}

- (void)replaceItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  itemsCopy = items;
  v6 = objc_alloc_init(v4);
  v7 = [(IMChatItemFilterController *)self _itemsMatchingFilter:itemsCopy guids:v6];

  if ([v7 count])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 componentsJoinedByString:{@", "}];
      v10 = 136315394;
      v11 = "[IMChatItemFilterController replaceItems:]";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%s replacing items %@", &v10, 0x16u);
    }

    [(IMItemsController *)self _replaceItems:v7];
  }
}

- (void)performActionDisallowingItemInsert:(id)insert
{
  insertCopy = insert;
  [(IMChatItemFilterController *)self setDisableItemInserts:1];
  insertCopy[2](insertCopy);

  [(IMChatItemFilterController *)self setDisableItemInserts:0];
}

- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post
{
  postCopy = post;
  v91 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    chat = [(IMChatItemFilterController *)self chat];
    guid = [chat guid];
    *buf = 138412546;
    v88 = guid;
    v89 = 2112;
    v90 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Update chat items (chatGUID: %@), reason: %@", buf, 0x16u);
  }

  v13 = self->_chatItemRules;
  if (self->_isUpdatingChatItems)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Update already in progress, executing update block", buf, 2u);
    }

    blockCopy[2](blockCopy);
    goto LABEL_73;
  }

  self->_isUpdatingChatItems = 1;
  blockCopy[2](blockCopy);
  [(IMScheduledUpdater *)self->_chatItemsUpdater setNeedsUpdate:0];
  self->_isUpdatingChatItems = 0;
  if (v13)
  {
    v70 = blockCopy;
    _items = [(IMItemsController *)self _items];
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(_items, "count")}];
      *buf = 138412290;
      v88 = v17;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "\tIMItem count = %@", buf, 0xCu);
    }

    _chatItems = [(IMChatItemRules *)v13 _chatItems];
    v19 = [_chatItems copy];
    _IMChatItemsReplaceWithChatItemsForItems(_chatItems, v13, _items);
    [(IMChatItemRules *)v13 _didProcessChatItems:_chatItems];
    array = v19;
    if (v19)
    {
      if (_chatItems)
      {
LABEL_12:
        v71 = reasonCopy;
        v72 = _items;
        v65 = postCopy;
        v69 = v13;
        [_chatItems differenceFromArray:array];
        v84 = 0;
        v68 = v85 = 0;
        IMIndexesFromOrderedCollectionDifference(v68, &v85, &v84);
        v20 = v85;
        v73 = v84;
        date = [MEMORY[0x1E695DF00] date];
        if ([v20 count])
        {
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = sub_1A82FF480;
          v82[3] = &unk_1E7811FA8;
          v83 = date;
          [_chatItems enumerateObjectsAtIndexes:v20 options:0 usingBlock:v82];
        }

        v66 = date;
        indexSet = [MEMORY[0x1E696AD50] indexSet];
        indexSet2 = [MEMORY[0x1E696AD50] indexSet];
        v22 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(array, "count")}];
        v23 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(_chatItems, "count")}];
        [v22 removeIndexes:v73];
        v67 = v20;
        [v23 removeIndexes:v20];
        firstIndex = [v22 firstIndex];
        firstIndex2 = [v23 firstIndex];
        selfCopy = self;
        if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = firstIndex2;
          if (firstIndex2 != 0x7FFFFFFFFFFFFFFFLL)
          {
            do
            {
              v27 = [array objectAtIndex:firstIndex];
              v28 = [_chatItems objectAtIndex:v26];
              if (v27 != v28)
              {
                [indexSet2 addIndex:v26];
                _timeAdded = [v27 _timeAdded];
                [v28 _setTimeAdded:_timeAdded];

                self = selfCopy;
              }

              if ([(IMChatItemRules *)self->_chatItemRules _shouldReloadChatItem:v28 oldChatItem:v27])
              {
                [indexSet addIndex:v26];
              }

              firstIndex = [v22 indexGreaterThanIndex:firstIndex];
              v26 = [v23 indexGreaterThanIndex:v26];
            }

            while (firstIndex != 0x7FFFFFFFFFFFFFFFLL && v26 != 0x7FFFFFFFFFFFFFFFLL);
          }
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v30 = _chatItems;
        v31 = [v30 countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = 0;
          v34 = *v79;
          v13 = v69;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v79 != v34)
              {
                objc_enumerationMutation(v30);
              }

              _timeStale = [*(*(&v78 + 1) + 8 * i) _timeStale];
              v37 = _timeStale;
              if (_timeStale)
              {
                v38 = [_timeStale earlierDate:v33];

                if (v38 == v37)
                {
                  v39 = v37;

                  v33 = v39;
                }
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v78 objects:v86 count:16];
          }

          while (v32);

          v40 = v72;
          v41 = v67;
          if (v33)
          {
            _nextStaleTime = [(IMChatItemRules *)v69 _nextStaleTime];
            v43 = [v33 isEqualToDate:_nextStaleTime];

            reasonCopy = v71;
            self = selfCopy;
            if ((v43 & 1) == 0)
            {
              v44 = IMLogHandleForCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v88 = v33;
                _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "\tSchedule _replaceStaleChatItems for nextStaleTime:%@", buf, 0xCu);
              }

              [(IMChatItemRules *)v69 _setNextStaleTime:v33];
              [v33 timeIntervalSinceReferenceDate];
              v46 = v45;
              [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
              v47 = 0.0;
              if (v46 > v48)
              {
                [v33 timeIntervalSinceReferenceDate];
                v50 = v49;
                [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
                v47 = v50 - v51;
              }

              [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel__replaceStaleChatItems object:0];
              [(IMChatItemFilterController *)selfCopy performSelector:sel__replaceStaleChatItems withObject:0 afterDelay:v47];
            }
          }

          else
          {
            reasonCopy = v71;
            self = selfCopy;
          }
        }

        else
        {

          v33 = 0;
          v40 = v72;
          v13 = v69;
          v41 = v67;
        }

        if ([v73 count] || objc_msgSend(v41, "count") || objc_msgSend(indexSet, "count") || objc_msgSend(indexSet2, "count"))
        {
          v53 = IMLogHandleForCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            chat2 = [(IMChatItemFilterController *)self chat];
            chat3 = [(IMChatItemFilterController *)self chat];
            guid2 = [chat3 guid];
            *buf = 138412546;
            v88 = chat2;
            v89 = 2112;
            v90 = guid2;
            _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "\tchat: %@, guid: %@", buf, 0x16u);

            self = selfCopy;
            v40 = v72;
          }

          if ([v41 count])
          {
            v57 = IMLogHandleForCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v88 = v41;
              _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
            }
          }

          if ([v73 count])
          {
            v58 = IMLogHandleForCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v88 = v73;
              _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
            }
          }

          if ([indexSet count])
          {
            v59 = IMLogHandleForCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v88 = indexSet;
              _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
            }
          }

          if ([indexSet2 count])
          {
            v60 = IMLogHandleForCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v88 = indexSet2;
              _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
            }
          }

          v61 = IMLogHandleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(array, "count")}];
            v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
            *buf = 138412546;
            v88 = v62;
            v89 = 2112;
            v90 = v63;
            _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "\toldChatItems: %@, newChatItems: %@", buf, 0x16u);

            v40 = v72;
          }

          if (v65)
          {
            [(IMChatItemFilterController *)self _postIMChatItemsDidChangeNotificationWithInserted:v41 removed:v73 reload:indexSet regenerate:indexSet2 oldChatItems:array newChatItems:v30];
          }
        }

        else
        {
          v64 = IMLogHandleForCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "\tDon't post update, no significant updates to chatItems.", buf, 2u);
          }
        }

        blockCopy = v70;
        goto LABEL_73;
      }
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      if (_chatItems)
      {
        goto LABEL_12;
      }
    }

    _chatItems = [MEMORY[0x1E695DF70] array];
    goto LABEL_12;
  }

  v52 = IMLogHandleForCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "ChatItem Rules undefined, skipping update.", buf, 2u);
  }

LABEL_73:
}

- (void)_replaceStaleChatItems
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "(IMChatItemFilterController) _replaceStaleChatItems", buf, 2u);
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  chatItems = [(IMChatItemFilterController *)self chatItems];
  v5 = [chatItems countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(chatItems);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        _timeStale = [v10 _timeStale];
        if (_timeStale)
        {
          date = [MEMORY[0x1E695DF00] date];
          [date timeIntervalSinceReferenceDate];
          v14 = v13;
          [_timeStale timeIntervalSinceReferenceDate];
          v16 = v15;

          if (v14 >= v16)
          {
            _item = [v10 _item];
            _copy = _item;
            if (v7 != _item)
            {
              v19 = _item;

              _copy = [v19 _copy];
              [v27 addObject:_copy];
              v7 = v19;
            }
          }
        }
      }

      v6 = [chatItems countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v27;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v28 + 1) + 8 * j);
        chat = [(IMChatItemFilterController *)self chat];
        -[IMItemsController _handleItem:forChatStyle:](self, "_handleItem:forChatStyle:", v25, [chat chatStyle]);
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v22);
  }

  [(IMChatItemRules *)self->_chatItemRules _setNextStaleTime:0];
}

- (void)_postNotification:(id)notification userInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  infoCopy = info;
  v8 = +[IMChatRegistry sharedRegistry];
  isFirstLoad = [v8 isFirstLoad];

  if ((isFirstLoad & 1) == 0)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = notificationCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Notification posted: %@", &v12, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:notificationCopy object:self userInfo:infoCopy];
  }
}

- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems
{
  v34[6] = *MEMORY[0x1E69E9840];
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v33[0] = @"__kIMChatItemsInserted";
  indexSet = insertedCopy;
  if (!insertedCopy)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  v30 = indexSet;
  v34[0] = indexSet;
  v33[1] = @"__kIMChatItemsRemoved";
  indexSet2 = removedCopy;
  if (!removedCopy)
  {
    indexSet2 = [MEMORY[0x1E696AC90] indexSet];
  }

  v29 = indexSet2;
  v34[1] = indexSet2;
  v33[2] = @"__kIMChatItemsReload";
  indexSet3 = reloadCopy;
  if (!reloadCopy)
  {
    indexSet3 = [MEMORY[0x1E696AC90] indexSet];
  }

  v32 = removedCopy;
  v34[2] = indexSet3;
  v33[3] = @"__kIMChatItemsRegenerate";
  indexSet4 = regenerateCopy;
  if (!regenerateCopy)
  {
    indexSet4 = [MEMORY[0x1E696AC90] indexSet];
  }

  v23 = insertedCopy;
  v34[3] = indexSet4;
  v33[4] = @"__kIMChatItemsOldItems";
  array = itemsCopy;
  if (!itemsCopy)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v34[4] = array;
  v33[5] = @"__kIMChatItemsNewItems";
  array2 = chatItemsCopy;
  if (!chatItemsCopy)
  {
    array2 = [MEMORY[0x1E695DEC8] array];
  }

  v34[5] = array2;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:6];
  if (chatItemsCopy)
  {
    if (itemsCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (itemsCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  if (!regenerateCopy)
  {
  }

  if (reloadCopy)
  {
    if (v32)
    {
      goto LABEL_19;
    }

LABEL_25:

    if (v23)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (!v32)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  notificationName = [(IMChatItemFilterController *)self notificationName];

  if (notificationName)
  {
    notificationName2 = [(IMChatItemFilterController *)self notificationName];
    [(IMChatItemFilterController *)self _postNotification:notificationName2 userInfo:v26];
  }

  else
  {
    notificationName2 = IMLogHandleForCategory();
    if (os_log_type_enabled(notificationName2, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0330(notificationName2);
    }
  }
}

- (void)_setupChatItemRules
{
  v15 = *MEMORY[0x1E69E9840];
  iMCoreSetupTimingCollection = [MEMORY[0x1E69A6170] IMCoreSetupTimingCollection];
  [iMCoreSetupTimingCollection startTimingForKey:@"IMChatItemFilterController: Generate chat items"];
  generateChatItemRules = [(IMChatItemFilterController *)self generateChatItemRules];
  chatItemRules = self->_chatItemRules;
  self->_chatItemRules = generateChatItemRules;

  _items = [(IMItemsController *)self _items];
  v7 = self->_chatItemRules;
  _chatItems = [(IMChatItemRules *)v7 _chatItems];
  _IMChatItemsReplaceWithChatItemsForItems(_chatItems, v7, _items);
  [(IMChatItemRules *)v7 _didProcessChatItems:_chatItems];
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(_chatItems, "count")}];
    v11 = 136315394;
    v12 = "[IMChatItemFilterController _setupChatItemRules]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "%s Configuring chatItemRules and chatItems, count: %@", &v11, 0x16u);
  }

  [iMCoreSetupTimingCollection stopTimingForKey:@"IMChatItemFilterController: Generate chat items"];
}

- (id)_itemsMatchingFilter:(id)filter guids:(id)guids
{
  guidsCopy = guids;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82FFDAC;
  v10[3] = &unk_1E7811FD0;
  v10[4] = self;
  v11 = guidsCopy;
  v7 = guidsCopy;
  v8 = [filter __imArrayByApplyingBlock:v10];

  return v8;
}

- (BOOL)itemMatchesFilter:(id)filter
{
  v8 = *MEMORY[0x1E69E9840];
  disableItemInserts = [(IMChatItemFilterController *)self disableItemInserts];
  if (disableItemInserts)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[IMChatItemFilterController itemMatchesFilter:]";
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "%s returning NO, disableItemInserts enabled", &v6, 0xCu);
    }
  }

  return !disableItemInserts;
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

@end