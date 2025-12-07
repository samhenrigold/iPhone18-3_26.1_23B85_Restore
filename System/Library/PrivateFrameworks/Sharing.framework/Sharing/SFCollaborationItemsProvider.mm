@interface SFCollaborationItemsProvider
- (BOOL)supportsCollaboration;
- (BOOL)supportsSendCopy;
- (NSArray)placeholderActivityItems;
- (SFCollaborationItemsProvider)initWithActivityItems:(id)items delegate:(id)delegate managedFileURL:(id)l isURLProviderSupported:(BOOL)supported;
- (SFCollaborationItemsProviderDelegate)delegate;
- (id)activityItemsForActivity:(id)activity collaborationResult:(id)result isCollaborative:(BOOL)collaborative;
- (id)collaborationItemForActivityItem:(id)item;
- (id)collaborationItemsRequest:(id)request resolveActivityItem:(id)item;
- (id)collaborationServiceForItemsRequest:(id)request;
- (void)_didCompleteCollaborationItems:(id)items;
- (void)_updateCollaborationItems;
- (void)setActivityItems:(id)items;
- (void)setCollaborationItems:(id)items;
@end

@implementation SFCollaborationItemsProvider

- (void)_updateCollaborationItems
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  currentRequest = [(SFCollaborationItemsProvider *)self currentRequest];

  if (currentRequest)
  {
    currentRequest2 = [(SFCollaborationItemsProvider *)self currentRequest];
    [currentRequest2 cancel];

    v4 = [(SFCollaborationItemsProvider *)self setCurrentRequest:0];
  }

  v6 = share_sheet_log(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activityItems = [(SFCollaborationItemsProvider *)self activityItems];
    *buf = 138477827;
    v33 = activityItems;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "update collaboration items for activityItems:%{private}@", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
  v10 = [activityItems2 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v12 = *v29;
    *&v11 = 138478083;
    v23 = v11;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(activityItems2);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v14, v23];
        v16 = v15;
        if (v15)
        {
          v17 = share_sheet_log(v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v33 = v16;
            v34 = 2113;
            v35 = v14;
            _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "did found cached collaboration item:%{private}@ for activityItem:%{private}@", buf, 0x16u);
          }

          [array addObject:v16];
        }

        else
        {
          [array2 addObject:v14];
        }
      }

      v10 = [activityItems2 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v18 = [array2 count];
  if (v18)
  {
    v19 = share_sheet_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v33 = array2;
      _os_log_impl(&dword_1A9662000, v19, OS_LOG_TYPE_DEFAULT, "request collaboration items for activity items:%{private}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v20 = [_SFCollaborationItemsRequest alloc];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke;
    v25[3] = &unk_1E7890420;
    v26 = array;
    objc_copyWeak(&v27, buf);
    v21 = [(_SFCollaborationItemsRequest *)v20 initWithActivityItems:array2 completionHandler:v25];
    [(_SFCollaborationItemsRequest *)v21 setDelegate:self];
    [(_SFCollaborationItemsRequest *)v21 setSupportsMultipleCollaboration:[(SFCollaborationItemsProvider *)self supportsMultipleCollaboration]];
    managedFileURL = [(SFCollaborationItemsProvider *)self managedFileURL];
    [(_SFCollaborationItemsRequest *)v21 setManagedFileURL:managedFileURL];

    [(_SFCollaborationItemsRequest *)v21 setIsURLProviderSupported:[(SFCollaborationItemsProvider *)self isURLProviderSupported]];
    [(SFCollaborationItemsProvider *)self setCurrentRequest:v21];
    [(_SFCollaborationItemsRequest *)v21 perform];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SFCollaborationItemsProvider *)self setCollaborationItems:array];
  }
}

void __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke_2;
  v8[3] = &unk_1E78903F8;
  v9 = *(a1 + 32);
  v7 = v5;
  v10 = v7;
  objc_copyWeak(&v11, (a1 + 40));
  sf_dispatch_on_main_queue(v8);
  objc_destroyWeak(&v11);
}

void __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didCompleteCollaborationItems:v3];
}

- (SFCollaborationItemsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)supportsCollaboration
{
  collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
  firstObject = [collaborationItems firstObject];

  if (firstObject)
  {
    LODWORD(v5) = ![(SFCollaborationItemsProvider *)self multipleCollaborationItems];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (![firstObject type])
  {
    v6 = firstObject;
    if ([v6 defaultCollaboration] & 1) != 0 || (v7 = objc_msgSend(v6, "isiCloudDrive"), (v7))
    {
      isInSharedFolder = [v6 isInSharedFolder];
      if (isInSharedFolder)
      {
        v5 = share_sheet_log(isInSharedFolder);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [SFCollaborationItemsProvider supportsCollaboration];
        }
      }

      else
      {
        isThirdPartyFileProviderBacked = [v6 isThirdPartyFileProviderBacked];
        if (isThirdPartyFileProviderBacked)
        {
          v5 = share_sheet_log(isThirdPartyFileProviderBacked);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            [SFCollaborationItemsProvider supportsCollaboration];
          }
        }

        else
        {
          if ([v6 isLocalStorage])
          {
            goto LABEL_16;
          }

          isiCloudDrive = [v6 isiCloudDrive];
          if (isiCloudDrive)
          {
            goto LABEL_16;
          }

          v5 = share_sheet_log(isiCloudDrive);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            [SFCollaborationItemsProvider supportsCollaboration];
          }
        }
      }
    }

    else
    {
      v5 = share_sheet_log(v7);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [SFCollaborationItemsProvider supportsCollaboration];
      }
    }

    LOBYTE(v5) = 0;
LABEL_16:
  }

  return v5;
}

- (BOOL)supportsSendCopy
{
  collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
  firstObject = [collaborationItems firstObject];

  sendCopyItems = [firstObject sendCopyItems];
  v5 = [sendCopyItems count] != 0;

  return v5;
}

- (SFCollaborationItemsProvider)initWithActivityItems:(id)items delegate:(id)delegate managedFileURL:(id)l isURLProviderSupported:(BOOL)supported
{
  itemsCopy = items;
  delegateCopy = delegate;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = SFCollaborationItemsProvider;
  v13 = [(SFCollaborationItemsProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_supportsMultipleCollaboration = 0;
    objc_storeStrong(&v13->_managedFileURL, l);
    v14->_isURLProviderSupported = supported;
    v15 = [itemsCopy copy];
    activityItems = v14->_activityItems;
    v14->_activityItems = v15;

    objc_storeWeak(&v14->_delegate, delegateCopy);
    [(SFCollaborationItemsProvider *)v14 _updateCollaborationItems];
  }

  return v14;
}

- (id)activityItemsForActivity:(id)activity collaborationResult:(id)result isCollaborative:(BOOL)collaborative
{
  collaborativeCopy = collaborative;
  v64 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  resultCopy = result;
  v9 = share_sheet_log(resultCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    *buf = 138412290;
    v60 = activityType;
    _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Updating activity items including collaboration items for activityType:%@", buf, 0xCu);
  }

  activityItems = [(SFCollaborationItemsProvider *)self activityItems];
  if (!collaborativeCopy)
  {
    collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
    firstObject = [collaborationItems firstObject];
    sendCopyItems = [firstObject sendCopyItems];

    activityItems = firstObject;
    goto LABEL_41;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!activityCopy)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
    v17 = [activityItems2 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v46 = activityItems;
      v47 = 0;
      v19 = *v55;
      v20 = array;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(activityItems2);
          }

          v22 = *(*(&v54 + 1) + 8 * i);
          v23 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v22, v46, v47];
          v24 = v23;
          if (v23)
          {
            placeholderActivityItem = [v23 placeholderActivityItem];
            v26 = placeholderActivityItem;
            if (placeholderActivityItem)
            {
              v27 = share_sheet_log(placeholderActivityItem);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138478083;
                v60 = v22;
                v61 = 2113;
                v62 = v26;
                _os_log_impl(&dword_1A9662000, v27, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with placeholder:%{private}@", buf, 0x16u);
              }

              v20 = array;
              v28 = array;
              v29 = v26;
            }

            else
            {
              v28 = v20;
              v29 = v22;
            }

            [v28 addObject:v29];
          }
        }

        v18 = [activityItems2 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v18);
      goto LABEL_38;
    }

LABEL_39:
    collaborationItems = array;
    goto LABEL_40;
  }

  activityType2 = [activityCopy activityType];
  if (![SFCollaborationUtilities isHeroCollaborationActivityType:activityType2])
  {
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      goto LABEL_24;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
    v31 = [activityItems2 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v31)
    {
      v32 = v31;
      v46 = activityItems;
      v47 = activityCopy;
      v33 = *v51;
      v20 = array;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v51 != v33)
          {
            objc_enumerationMutation(activityItems2);
          }

          v35 = *(*(&v50 + 1) + 8 * j);
          v36 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v35, v46, v47];
          v37 = v36;
          if (v36)
          {
            identifier = [v36 identifier];
            collaborationItemIdentifier = [resultCopy collaborationItemIdentifier];
            v40 = [identifier isEqual:collaborationItemIdentifier];

            if (v40)
            {
              v42 = share_sheet_log(v41);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                sharingURL = [resultCopy sharingURL];
                *buf = 138478083;
                v60 = v35;
                v61 = 2112;
                v62 = sharingURL;
                _os_log_impl(&dword_1A9662000, v42, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with sharingURL:%@", buf, 0x16u);
              }

              sharingURL2 = [resultCopy sharingURL];
              v20 = array;
              [array addObject:sharingURL2];
            }

            else
            {
              v20 = array;
              [array addObject:v35];
            }
          }
        }

        v32 = [activityItems2 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v32);
LABEL_38:
      collaborationItems = v20;
      activityItems = v46;
      activityCopy = v47;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_24:
  collaborationItems = [MEMORY[0x1E695DF70] array];
  activityItems2 = array;
LABEL_40:

  sendCopyItems = [collaborationItems copy];
LABEL_41:

  return sendCopyItems;
}

- (id)collaborationItemForActivityItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
  v6 = [collaborationItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(collaborationItems);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        activityItem = [v9 activityItem];
        v11 = itemCopy;
        v12 = v11;
        if (activityItem == v11)
        {

LABEL_15:
          v6 = v9;
          goto LABEL_16;
        }

        if ((itemCopy == 0) != (activityItem != 0))
        {
          v13 = [activityItem isEqual:v11];

          if (v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [collaborationItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v6;
}

- (NSArray)placeholderActivityItems
{
  activityItems = [(SFCollaborationItemsProvider *)self activityItems];
  v4 = [activityItems mutableCopy];

  activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__SFCollaborationItemsProvider_placeholderActivityItems__block_invoke;
  v12 = &unk_1E788F8C8;
  selfCopy = self;
  v14 = v4;
  v6 = v4;
  [activityItems2 enumerateObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __56__SFCollaborationItemsProvider_placeholderActivityItems__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) collaborationItemForActivityItem:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 placeholderActivityItem];
    v9 = v8;
    if (v8)
    {
      v10 = share_sheet_log(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138478083;
        v12 = v5;
        v13 = 2113;
        v14 = v9;
        _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with placeholder:%{private}@", &v11, 0x16u);
      }

      [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v9];
    }
  }
}

- (void)setActivityItems:(id)items
{
  itemsCopy = items;
  if (([itemsCopy isEqualToArray:self->_activityItems] & 1) == 0)
  {
    v4 = [itemsCopy copy];
    activityItems = self->_activityItems;
    self->_activityItems = v4;

    [(SFCollaborationItemsProvider *)self _updateCollaborationItems];
  }
}

- (void)setCollaborationItems:(id)items
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!-[SFCollaborationItemsProvider supportsMultipleCollaboration](self, "supportsMultipleCollaboration") && [itemsCopy count] >= 2)
  {
    firstObject = [itemsCopy firstObject];
    type = [firstObject type];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    itemsCopy = itemsCopy;
    v7 = [itemsCopy countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (!v7)
    {
LABEL_18:
      v16 = itemsCopy;
LABEL_19:

      itemsCopy = v16;
      goto LABEL_20;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        if ([*(*(&v21 + 1) + 8 * i) type])
        {
          if (v9 > 0)
          {
            goto LABEL_18;
          }

          v9 = 1;
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);

    if (type && v9 == 1)
    {
      v13 = share_sheet_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        firstObject2 = [itemsCopy firstObject];
        *buf = 138477827;
        v27 = firstObject2;
        _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring file collaboration objects in favour of non-file collaboration object because collaboration is not supported for multiple items. Assumption is that the file objects are send copy items. Collaboration item: %{private}@", buf, 0xCu);
      }

      firstObject3 = [itemsCopy firstObject];
      v25 = firstObject3;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];

      itemsCopy = firstObject3;
      goto LABEL_19;
    }
  }

LABEL_20:
  if (([itemsCopy isEqualToArray:{self->_collaborationItems, v21}] & 1) == 0)
  {
    v17 = [itemsCopy copy];
    collaborationItems = self->_collaborationItems;
    self->_collaborationItems = v17;

    v20 = share_sheet_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v27 = itemsCopy;
      _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "Did set collaborationItems:%{private}@", buf, 0xCu);
    }
  }
}

- (void)_didCompleteCollaborationItems:(id)items
{
  v8 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = share_sheet_log(itemsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = itemsCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did found collaboration items:%{private}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SFCollaborationItemsProvider *)self setCollaborationItems:itemsCopy];
  [(SFCollaborationItemsProvider *)self setCurrentRequest:0];
}

- (id)collaborationItemsRequest:(id)request resolveActivityItem:(id)item
{
  itemCopy = item;
  delegate = [(SFCollaborationItemsProvider *)self delegate];
  v7 = [delegate collaborationItemsProvider:self resolveActivityItem:itemCopy];

  return v7;
}

- (id)collaborationServiceForItemsRequest:(id)request
{
  delegate = [(SFCollaborationItemsProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SFCollaborationItemsProvider *)self delegate];
    v7 = [delegate2 collaborationServiceForItemsProvider:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end