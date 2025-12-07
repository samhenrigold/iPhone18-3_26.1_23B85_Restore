@interface CKMediaObjectAssetMenuBuilder
- (CKMediaObjectAssetMenuBuilderDelegate)delegate;
- (id)_copyActionForChatItems:(id)items;
- (id)_deleteMenuForChatItems:(id)items;
- (id)_exportActionForChatItems:(id)items;
- (id)_exportMenuForChatItem:(id)item;
- (id)_forwardActionForChatItems:(id)items;
- (id)_forwardAndCopyMenuForChatItems:(id)items;
- (id)_openActionForChatItems:(id)items;
- (id)_quickLookActionForChatItems:(id)items cursorChatItem:(id)item;
- (id)_quickLookAndOpenActionsForChatItems:(id)items cursorChatItem:(id)item;
- (id)_quickLookAndOpenMenuForChatItems:(id)items cursorChatItem:(id)item;
- (id)_replyActionForChatItem:(id)item;
- (id)_tapbackActionForChatItem:(id)item;
- (id)_tapbackAndReplyMenuForChatItems:(id)items;
- (id)_tapbackElementsForChatItem:(id)item;
- (id)contextMenuForChatItems:(id)items cursorChatItem:(id)item isCMM:(BOOL)m;
- (void)_copyChatItems:(id)items;
- (void)_deleteChatItems:(id)items;
- (void)_forwardChatItems:(id)items;
- (void)_openFile:(id)file;
- (void)_openFiles:(id)files;
- (void)_quickLookChatItem:(id)item;
- (void)_replyToChatItem:(id)item;
- (void)_tapbackChatItem:(id)item;
@end

@implementation CKMediaObjectAssetMenuBuilder

- (id)contextMenuForChatItems:(id)items cursorChatItem:(id)item isCMM:(BOOL)m
{
  itemsCopy = items;
  itemCopy = item;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CKMediaObjectAssetMenuBuilder_contextMenuForChatItems_cursorChatItem_isCMM___block_invoke;
  aBlock[3] = &unk_1E72ED128;
  aBlock[4] = &v19;
  v10 = _Block_copy(aBlock);
  v11 = [(CKMediaObjectAssetMenuBuilder *)self _quickLookAndOpenMenuForChatItems:itemsCopy cursorChatItem:itemCopy];
  v10[2](v10, v11);

  v12 = [(CKMediaObjectAssetMenuBuilder *)self _exportMenuForChatItem:itemsCopy];
  v10[2](v10, v12);

  if (!m)
  {
    v13 = [(CKMediaObjectAssetMenuBuilder *)self _tapbackAndReplyMenuForChatItems:itemsCopy];
    v10[2](v10, v13);
  }

  v14 = [(CKMediaObjectAssetMenuBuilder *)self _forwardAndCopyMenuForChatItems:itemsCopy];
  v10[2](v10, v14);

  if (!m)
  {
    v15 = [(CKMediaObjectAssetMenuBuilder *)self _deleteMenuForChatItems:itemsCopy];
    v10[2](v10, v15);
  }

  if ([v20[5] count])
  {
    v16 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v20[5]];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v16;
}

void *__78__CKMediaObjectAssetMenuBuilder_contextMenuForChatItems_cursorChatItem_isCMM___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    return [*(*(result[4] + 8) + 40) addObject:a2];
  }

  return result;
}

- (id)_quickLookAndOpenMenuForChatItems:(id)items cursorChatItem:(id)item
{
  v4 = [(CKMediaObjectAssetMenuBuilder *)self _quickLookAndOpenActionsForChatItems:items cursorChatItem:item];
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_quickLookAndOpenActionsForChatItems:(id)items cursorChatItem:(id)item
{
  v6 = MEMORY[0x1E695DF70];
  itemCopy = item;
  itemsCopy = items;
  array = [v6 array];
  v10 = [(CKMediaObjectAssetMenuBuilder *)self _quickLookActionForChatItems:itemsCopy cursorChatItem:itemCopy];

  v11 = [(CKMediaObjectAssetMenuBuilder *)self _openActionForChatItems:itemsCopy];

  if (v10)
  {
    [array addObject:v10];
  }

  if (v11)
  {
    [array addObject:v11];
  }

  return array;
}

- (id)_quickLookActionForChatItems:(id)items cursorChatItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  inited = objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69DC628];
  v10 = CKFrameworkBundle(inited);
  v11 = [v10 localizedStringForKey:@"QUICK_LOOK_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__CKMediaObjectAssetMenuBuilder__quickLookActionForChatItems_cursorChatItem___block_invoke;
  v15[3] = &unk_1E72EBF48;
  objc_copyWeak(&v17, &location);
  v12 = itemCopy;
  v16 = v12;
  v13 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __77__CKMediaObjectAssetMenuBuilder__quickLookActionForChatItems_cursorChatItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _quickLookChatItem:*(a1 + 32)];
}

- (void)_quickLookChatItem:(id)item
{
  itemCopy = item;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  [delegate menuBuilder:self quickLookChatItem:itemCopy];
}

- (id)_openActionForChatItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        mediaObject = [*(*(&v23 + 1) + 8 * i) mediaObject];
        fileURL = [mediaObject fileURL];
        path = [fileURL path];

        if (path)
        {
          [v5 addObject:path];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    inited = objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69DC628];
    v15 = CKFrameworkBundle(inited);
    v16 = [v15 localizedStringForKey:@"OPEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__CKMediaObjectAssetMenuBuilder__openActionForChatItems___block_invoke;
    v19[3] = &unk_1E72EBF48;
    objc_copyWeak(&v21, &location);
    v20 = v5;
    v17 = [v14 actionWithTitle:v16 image:0 identifier:0 handler:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __57__CKMediaObjectAssetMenuBuilder__openActionForChatItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openFiles:*(a1 + 32)];
}

- (void)_openFiles:(id)files
{
  v14 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [filesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(filesCopy);
        }

        [(CKMediaObjectAssetMenuBuilder *)self _openFile:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [filesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_openFile:(id)file
{
  v3 = MEMORY[0x1E695DFF8];
  fileCopy = file;
  v6 = [[v3 alloc] initFileURLWithPath:fileCopy];

  if (v6)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openURL:v6 configuration:0 completionHandler:0];
  }
}

- (id)_exportMenuForChatItem:(id)item
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObjectAssetMenuBuilder *)self _exportActionForChatItems:item];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69DCC60];
    v9[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v7 = [v5 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_exportActionForChatItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 canExport])
        {
          mediaObject = [v10 mediaObject];
          [v4 addObject:mediaObject];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v12 = [v4 count];
  if (v12)
  {
    v13 = MEMORY[0x1E69DC628];
    v14 = CKFrameworkBundle(v12);
    v15 = [v14 localizedStringForKey:@"SEARCH_ADD_TO_PHOTOS_LIBRARY" value:&stru_1F04268F8 table:@"ChatKit"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__CKMediaObjectAssetMenuBuilder__exportActionForChatItems___block_invoke;
    v18[3] = &unk_1E72EC060;
    v19 = v4;
    v16 = [v13 actionWithTitle:v15 image:0 identifier:0 handler:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __59__CKMediaObjectAssetMenuBuilder__exportActionForChatItems___block_invoke(uint64_t a1)
{
  v2 = [[CKMediaObjectExportManager alloc] initWithMediaObjects:*(a1 + 32)];
  [(CKMediaObjectExportManager *)v2 setMetricsSource:*MEMORY[0x1E69A7658]];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__CKMediaObjectAssetMenuBuilder__exportActionForChatItems___block_invoke_2;
  v3[3] = &unk_1E72EC088;
  v4 = *(a1 + 32);
  [(CKMediaObjectExportManager *)v2 exportQueuedMediaObjectsWithCompletion:v3];
}

void __59__CKMediaObjectAssetMenuBuilder__exportActionForChatItems___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Successfully quick saved media objects: %@", &v10, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Error quick saving media objects. error: %@, mediaObjects: %@", &v10, 0x16u);
    }

    goto LABEL_9;
  }
}

- (id)_tapbackAndReplyMenuForChatItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] == 1 && (-[CKMediaObjectAssetMenuBuilder delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "shouldHideInteractionsForMenuBuilder:", self), v5, (v6 & 1) == 0))
  {
    firstObject = [itemsCopy firstObject];
    array = [MEMORY[0x1E695DF70] array];
    v10 = [(CKMediaObjectAssetMenuBuilder *)self _tapbackElementsForChatItem:firstObject];
    if (v10)
    {
      [array addObjectsFromArray:v10];
    }

    v11 = [(CKMediaObjectAssetMenuBuilder *)self _replyActionForChatItem:firstObject];
    if (v11)
    {
      [array addObject:v11];
    }

    if ([array count])
    {
      v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:array];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_tapbackActionForChatItem:(id)item
{
  itemCopy = item;
  inited = objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v7 = CKFrameworkBundle(inited);
  v8 = [v7 localizedStringForKey:@"TAPBACK_DETAILS_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CKMediaObjectAssetMenuBuilder__tapbackActionForChatItem___block_invoke;
  v12[3] = &unk_1E72EBF48;
  objc_copyWeak(&v14, &location);
  v9 = itemCopy;
  v13 = v9;
  v10 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __59__CKMediaObjectAssetMenuBuilder__tapbackActionForChatItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tapbackChatItem:*(a1 + 32)];
}

- (id)_tapbackElementsForChatItem:(id)item
{
  itemCopy = item;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  v6 = [delegate menuBuilder:self tapbackElementsForChatItem:itemCopy];

  return v6;
}

- (void)_tapbackChatItem:(id)item
{
  itemCopy = item;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  [delegate menuBuilder:self tapbackChatItem:itemCopy];
}

- (id)_replyActionForChatItem:(id)item
{
  itemCopy = item;
  inited = objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v7 = CKFrameworkBundle(inited);
  v8 = [v7 localizedStringForKey:@"INLINE_REPLY_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CKMediaObjectAssetMenuBuilder__replyActionForChatItem___block_invoke;
  v12[3] = &unk_1E72EBF48;
  objc_copyWeak(&v14, &location);
  v9 = itemCopy;
  v13 = v9;
  v10 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __57__CKMediaObjectAssetMenuBuilder__replyActionForChatItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _replyToChatItem:*(a1 + 32)];
}

- (void)_replyToChatItem:(id)item
{
  itemCopy = item;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  [delegate menuBuilder:self replyChatItem:itemCopy];
}

- (id)_forwardAndCopyMenuForChatItems:(id)items
{
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(CKMediaObjectAssetMenuBuilder *)self _forwardActionForChatItems:itemsCopy];
  if (v6)
  {
    [array addObject:v6];
  }

  v7 = [(CKMediaObjectAssetMenuBuilder *)self _copyActionForChatItems:itemsCopy];
  if (v7)
  {
    [array addObject:v7];
  }

  if ([array count])
  {
    v8 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:array];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_forwardActionForChatItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 canForward])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    inited = objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69DC628];
    v13 = CKFrameworkBundle(inited);
    v14 = [v13 localizedStringForKey:@"FORWARD_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__CKMediaObjectAssetMenuBuilder__forwardActionForChatItems___block_invoke;
    v17[3] = &unk_1E72EBF48;
    objc_copyWeak(&v19, &location);
    v18 = v6;
    v15 = [v12 actionWithTitle:v14 image:0 identifier:0 handler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __60__CKMediaObjectAssetMenuBuilder__forwardActionForChatItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _forwardChatItems:*(a1 + 32)];
}

- (void)_forwardChatItems:(id)items
{
  itemsCopy = items;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  [delegate menuBuilder:self forwardChatItems:itemsCopy];
}

- (id)_copyActionForChatItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 canCopy])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    inited = objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69DC628];
    v13 = CKFrameworkBundle(inited);
    v14 = [v13 localizedStringForKey:@"COPY" value:&stru_1F04268F8 table:@"ChatKit"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__CKMediaObjectAssetMenuBuilder__copyActionForChatItems___block_invoke;
    v17[3] = &unk_1E72EBF48;
    objc_copyWeak(&v19, &location);
    v18 = v5;
    v15 = [v12 actionWithTitle:v14 image:0 identifier:0 handler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __57__CKMediaObjectAssetMenuBuilder__copyActionForChatItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _copyChatItems:*(a1 + 32)];
}

- (void)_copyChatItems:(id)items
{
  itemsCopy = items;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  [delegate menuBuilder:self copyChatItems:itemsCopy];
}

- (id)_deleteMenuForChatItems:(id)items
{
  v19[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  inited = objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v7 = CKFrameworkBundle(inited);
  v8 = [v7 localizedStringForKey:@"DELETE_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__CKMediaObjectAssetMenuBuilder__deleteMenuForChatItems___block_invoke;
  v15[3] = &unk_1E72EBF48;
  objc_copyWeak(&v17, &location);
  v9 = itemsCopy;
  v16 = v9;
  v10 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v15];

  v11 = MEMORY[0x1E69DCC60];
  v19[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [v11 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __57__CKMediaObjectAssetMenuBuilder__deleteMenuForChatItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteChatItems:*(a1 + 32)];
}

- (void)_deleteChatItems:(id)items
{
  itemsCopy = items;
  delegate = [(CKMediaObjectAssetMenuBuilder *)self delegate];
  [delegate menuBuilder:self deleteChatItems:itemsCopy];
}

- (CKMediaObjectAssetMenuBuilderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end