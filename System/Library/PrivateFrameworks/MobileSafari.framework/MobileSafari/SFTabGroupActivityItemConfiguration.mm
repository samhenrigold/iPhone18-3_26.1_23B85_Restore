@interface SFTabGroupActivityItemConfiguration
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (SFTabGroupActivityItemConfiguration)initWithTabGroup:(id)group inTabGroupManager:(id)manager existingShare:(id)share icon:(id)icon;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key;
- (id)activityItemsConfigurationMetadataForKey:(id)key;
- (void)_beginSharingTabGroupWithCompletionHandler:(id)handler;
- (void)_presentSharedTabGroupsManateePrompt;
- (void)dealloc;
- (void)updateMetadataIcon:(id)icon;
@end

@implementation SFTabGroupActivityItemConfiguration

- (SFTabGroupActivityItemConfiguration)initWithTabGroup:(id)group inTabGroupManager:(id)manager existingShare:(id)share icon:(id)icon
{
  groupCopy = group;
  managerCopy = manager;
  shareCopy = share;
  iconCopy = icon;
  v40.receiver = self;
  v40.super_class = SFTabGroupActivityItemConfiguration;
  v15 = [(SFTabGroupActivityItemConfiguration *)&v40 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_tabGroup, group);
    objc_storeStrong(&v16->_tabGroupManager, manager);
    v17 = [shareCopy copy];
    existingShare = v16->_existingShare;
    v16->_existingShare = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    itemProvider = v16->_itemProvider;
    v16->_itemProvider = v19;

    title = [(WBTabGroup *)v16->_tabGroup title];
    [(NSItemProvider *)v16->_itemProvider setSuggestedName:title];

    v22 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    linkMetadata = v16->_linkMetadata;
    v16->_linkMetadata = v22;

    title2 = [(WBTabGroup *)v16->_tabGroup title];
    [(LPLinkMetadata *)v16->_linkMetadata setTitle:title2];

    v25 = objc_alloc_init(MEMORY[0x1E696EC78]);
    [v25 setType:5];
    v26 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:iconCopy properties:v25];
    [(LPLinkMetadata *)v16->_linkMetadata setImage:v26];

    v27 = UIImagePNGRepresentation(iconCopy);
    v28 = [objc_alloc(MEMORY[0x1E695B868]) initWithAllowedParticipantPermissionOptions:2 allowedParticipantAccessOptions:2];
    [v28 setSupportAllowingAddedParticipantsToInviteOthers:1];
    if (shareCopy)
    {
      [shareCopy setObject:v27 forKeyedSubscript:*MEMORY[0x1E695B820]];
      v29 = v16->_itemProvider;
      safari_cloudTabsContainer = [MEMORY[0x1E695B888] safari_cloudTabsContainer];
      [(NSItemProvider *)v29 registerCKShare:shareCopy container:safari_cloudTabsContainer allowedSharingOptions:v28];
    }

    else
    {
      objc_initWeak(&location, v16);
      v31 = v16->_itemProvider;
      safari_cloudTabsContainer2 = [MEMORY[0x1E695B888] safari_cloudTabsContainer];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __93__SFTabGroupActivityItemConfiguration_initWithTabGroup_inTabGroupManager_existingShare_icon___block_invoke;
      v35[3] = &unk_1E721C278;
      objc_copyWeak(&v38, &location);
      v36 = groupCopy;
      v37 = v27;
      [(NSItemProvider *)v31 registerCKShareWithContainer:safari_cloudTabsContainer2 allowedSharingOptions:v28 preparationHandler:v35];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    v33 = v16;
  }

  return v16;
}

void __93__SFTabGroupActivityItemConfiguration_initWithTabGroup_inTabGroupManager_existingShare_icon___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __93__SFTabGroupActivityItemConfiguration_initWithTabGroup_inTabGroupManager_existingShare_icon___block_invoke_2;
    v5[3] = &unk_1E721C250;
    v6 = a1[4];
    objc_copyWeak(&v9, a1 + 6);
    v7 = a1[5];
    v8 = v3;
    [WeakRetained _beginSharingTabGroupWithCompletionHandler:v5];

    objc_destroyWeak(&v9);
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void __93__SFTabGroupActivityItemConfiguration_initWithTabGroup_inTabGroupManager_existingShare_icon___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = [*(a1 + 32) uuid];
    [v6 postNotificationName:@"SFTabGroupDidBeginSharingNotification" object:v7];
  }

  if ([v5 safari_matchesErrorDomain:*MEMORY[0x1E69C8B38] andCode:2])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _presentSharedTabGroupsManateePrompt];
  }

  [v9 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E695B820]];
  (*(*(a1 + 48) + 16))();
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_itemProvider;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)activityItemsConfigurationMetadataForKey:(id)key
{
  if ([key isEqual:*MEMORY[0x1E69DDA78]])
  {
    title = [(WBTabGroup *)self->_tabGroup title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key
{
  if ([key isEqualToString:*MEMORY[0x1E69DDA68]])
  {
    v5 = self->_linkMetadata;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateMetadataIcon:(id)icon
{
  if (!self->_existingShare)
  {
    v5 = MEMORY[0x1E696EC78];
    iconCopy = icon;
    v8 = objc_alloc_init(v5);
    [v8 setType:5];
    v7 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:iconCopy properties:v8];

    [(LPLinkMetadata *)self->_linkMetadata setImage:v7];
  }
}

- (void)_beginSharingTabGroupWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  existingShare = self->_existingShare;
  if (existingShare)
  {
    (*(handlerCopy + 2))(handlerCopy, existingShare, 0);
  }

  else
  {
    pendingShareCompletionHandlers = self->_pendingShareCompletionHandlers;
    if (pendingShareCompletionHandlers)
    {
      v8 = _Block_copy(handlerCopy);
      [(NSMutableArray *)pendingShareCompletionHandlers addObject:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DF70];
      v10 = _Block_copy(handlerCopy);
      v11 = [v9 arrayWithObject:v10];
      v12 = self->_pendingShareCompletionHandlers;
      self->_pendingShareCompletionHandlers = v11;

      v15 = WBS_LOG_CHANNEL_PREFIXTabGroup(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        tabGroup = self->_tabGroup;
        v17 = v15;
        uuid = [(WBTabGroup *)tabGroup uuid];
        *buf = 138543362;
        v24 = uuid;
        _os_log_impl(&dword_18B7AC000, v17, OS_LOG_TYPE_INFO, "Requesting share for tab group with UUID %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      tabGroupManager = self->_tabGroupManager;
      uuid2 = [(WBTabGroup *)self->_tabGroup uuid];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __82__SFTabGroupActivityItemConfiguration__beginSharingTabGroupWithCompletionHandler___block_invoke;
      v21[3] = &unk_1E721C2A0;
      objc_copyWeak(&v22, buf);
      [(WBTabGroupManager *)tabGroupManager beginSharingTabGroupWithUUID:uuid2 completionHandler:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }
}

void __82__SFTabGroupActivityItemConfiguration__beginSharingTabGroupWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SFTabGroupActivityItemConfiguration__beginSharingTabGroupWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E721C0B8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __82__SFTabGroupActivityItemConfiguration__beginSharingTabGroupWithCompletionHandler___block_invoke_2(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  v5 = a1[4];
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(WeakRetained, v3);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = *(v4 + 5);
      v9 = v6;
      v10 = [v8 uuid];
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_18B7AC000, v9, OS_LOG_TYPE_INFO, "Received share for tab group with UUID %{public}@", buf, 0xCu);

LABEL_7:
    }
  }

  else if (v7)
  {
    v11 = *(v4 + 5);
    v12 = v6;
    v10 = [v11 uuid];
    v13 = [a1[5] safari_privacyPreservingDescription];
    *buf = 138543618;
    v26 = v10;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_18B7AC000, v12, OS_LOG_TYPE_INFO, "Failed to get share for tab group with UUID %{public}@, %{public}@", buf, 0x16u);

    goto LABEL_7;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(v4 + 3);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v20 + 1) + 8 * v18) + 16))(*(*(&v20 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  objc_storeStrong(v4 + 1, a1[4]);
  v19 = *(v4 + 3);
  *(v4 + 3) = 0;

LABEL_16:
}

- (void)_presentSharedTabGroupsManateePrompt
{
  v2 = +[SFSystemAlert sharedTabGroupsManateeAlert];
  [v2 scheduleWithCompletionBlock:&__block_literal_global_7];
}

void __75__SFTabGroupActivityItemConfiguration__presentSharedTabGroupsManateePrompt__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/"];
    v3 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v3 openSensitiveURL:v4 withOptions:0];
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  pendingShareCompletionHandlers = self->_pendingShareCompletionHandlers;
  if (pendingShareCompletionHandlers)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = pendingShareCompletionHandlers;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v11 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = self->_pendingShareCompletionHandlers;
    self->_pendingShareCompletionHandlers = 0;
  }

  v10.receiver = self;
  v10.super_class = SFTabGroupActivityItemConfiguration;
  [(SFTabGroupActivityItemConfiguration *)&v10 dealloc];
}

@end