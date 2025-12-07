@interface SFCollaborationItem
+ (id)collaborationItemForFileURL:(id)l itemProvider:(id)provider activityItem:(id)item defaultCollaboration:(BOOL)collaboration managedFileURL:(id)rL;
+ (id)collaborationItemForItemProvider:(id)provider activityItem:(id)item isURLProviderSupported:(BOOL)supported;
- (BOOL)isLoading;
- (BOOL)isPostShare;
- (NSArray)sendCopyItemPlaceholderValues;
- (NSArray)sendCopyItems;
- (NSString)description;
- (SFCollaborationItem)initWithItemProvider:(id)provider activityItem:(id)item placeholderActivityItem:(id)activityItem defaultCollaboration:(BOOL)collaboration;
- (id)_optionsSummary;
- (id)createCollaborationFooterViewModel;
- (id)workQueue;
- (void)_didLoadMetadata:(id)metadata;
- (void)_didLoadOptions:(id)options ckOptions:(id)ckOptions;
- (void)_didLoadSendCopyRepresentation:(id)representation;
- (void)_loadMetadataIfNeeded;
- (void)_loadOptionsIfNeeded;
- (void)_loadSendCopyRepresentationIfNeeded;
- (void)_startLoading;
- (void)_updateLoadingState;
- (void)registerChangeObserver:(id)observer;
- (void)setCanAddPeople:(id)people;
- (void)setCloudSharingResult:(id)result;
- (void)setShareOptions:(id)options;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation SFCollaborationItem

+ (id)collaborationItemForItemProvider:(id)provider activityItem:(id)item isURLProviderSupported:(BOOL)supported
{
  supportedCopy = supported;
  providerCopy = provider;
  itemCopy = item;
  v9 = [SFCollaborationUtilities isCKShareItemProvider:providerCopy];
  v10 = [SFCollaborationUtilities isSWYActivityItemProvider:providerCopy];
  if (v9 || v10)
  {
    if (v9)
    {
      v12 = [[_SFCKShareCollaborationItem alloc] initWithItemProvider:providerCopy activityItem:itemCopy];
    }

    else
    {
      v12 = [[_SFSWYCollaborationItem alloc] initWithItemProvider:providerCopy activityItem:itemCopy isURLProviderSupported:supportedCopy];
    }

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)collaborationItemForFileURL:(id)l itemProvider:(id)provider activityItem:(id)item defaultCollaboration:(BOOL)collaboration managedFileURL:(id)rL
{
  collaborationCopy = collaboration;
  lCopy = l;
  rLCopy = rL;
  itemCopy = item;
  providerCopy = provider;
  absoluteString = [lCopy absoluteString];
  if (!IsAppleInternalBuild())
  {

    absoluteString = @"<redacted>";
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    [SFCollaborationItem collaborationItemForFileURL:a2 itemProvider:self activityItem:absoluteString defaultCollaboration:? managedFileURL:?];
  }

  v18 = [[_SFFPShareCollaborationItem alloc] initWithFileURL:lCopy itemProvider:providerCopy activityItem:itemCopy defaultCollaboration:collaborationCopy managedFileURL:rLCopy];

  return v18;
}

- (SFCollaborationItem)initWithItemProvider:(id)provider activityItem:(id)item placeholderActivityItem:(id)activityItem defaultCollaboration:(BOOL)collaboration
{
  collaborationCopy = collaboration;
  v40 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  itemCopy = item;
  activityItemCopy = activityItem;
  v27.receiver = self;
  v27.super_class = SFCollaborationItem;
  v14 = [(SFCollaborationItem *)&v27 init];
  if (v14)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v14->_identifier;
    v14->_identifier = uUID;

    objc_storeStrong(&v14->_itemProvider, provider);
    objc_storeStrong(&v14->_activityItem, item);
    objc_storeStrong(&v14->_placeholderActivityItem, activityItem);
    v17 = objc_alloc_init(SFChangePublisher);
    changePublisher = v14->_changePublisher;
    v14->_changePublisher = v17;

    v14->_defaultCollaboration = collaborationCopy;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    contentIdentifier = v14->_contentIdentifier;
    v14->_contentIdentifier = bundleIdentifier;

    v23 = share_sheet_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "no";
      v25 = v14->_identifier;
      *buf = 138413571;
      if (collaborationCopy)
      {
        v24 = "yes";
      }

      v29 = v14;
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = providerCopy;
      v34 = 2113;
      v35 = itemCopy;
      v36 = 2113;
      v37 = activityItemCopy;
      v38 = 2080;
      v39 = v24;
      _os_log_impl(&dword_1A9662000, v23, OS_LOG_TYPE_DEFAULT, "%@: identifier:%@ itemProvider:%@ activityItem:%{private}@ placeholderActivityItem:%{private}@ defaultCollaboration:%s", buf, 0x3Eu);
    }

    [(SFCollaborationItem *)v14 _startLoading];
  }

  return v14;
}

- (NSArray)sendCopyItems
{
  array = [MEMORY[0x1E695DF70] array];
  sendCopyRepresentation = [(SFCollaborationItem *)self sendCopyRepresentation];
  type = [(SFCollaborationItem *)self type];
  if (!type)
  {
    sendCopyRepresentationURL = [(SFCollaborationItem *)self sendCopyRepresentationURL];

    if (!sendCopyRepresentationURL)
    {
      activityItem = [(SFCollaborationItem *)self activityItem];

      sendCopyRepresentation = activityItem;
    }

    goto LABEL_9;
  }

  if (type != 2 && type != 1)
  {
    goto LABEL_9;
  }

  if (!sendCopyRepresentation)
  {
    itemProvider = [(SFCollaborationItem *)self itemProvider];
    supportsShareSheetSendCopyRepresentation = [itemProvider supportsShareSheetSendCopyRepresentation];

    if (!supportsShareSheetSendCopyRepresentation)
    {
      goto LABEL_11;
    }

    sendCopyRepresentation = [(SFCollaborationItem *)self itemProvider];
LABEL_9:
    if (!sendCopyRepresentation)
    {
      goto LABEL_11;
    }
  }

  [array addObject:sendCopyRepresentation];

LABEL_11:
  sendCopyActivityItems = [(SFCollaborationItem *)self sendCopyActivityItems];
  [array addObjectsFromArray:sendCopyActivityItems];

  v11 = [array copy];

  return v11;
}

- (NSArray)sendCopyItemPlaceholderValues
{
  array = [MEMORY[0x1E695DF70] array];
  sendCopyRepresentation = [(SFCollaborationItem *)self sendCopyRepresentation];
  type = [(SFCollaborationItem *)self type];
  if (!type)
  {
    selfCopy = self;
    sendCopyRepresentationURL = [(SFCollaborationItem *)selfCopy sendCopyRepresentationURL];

    if (sendCopyRepresentationURL)
    {
      [(SFCollaborationItem *)selfCopy sendCopyRepresentationURL];
    }

    else
    {
      [(SFCollaborationItem *)selfCopy fileURL];
    }
    v10 = ;

    sendCopyRepresentation = v10;
    goto LABEL_11;
  }

  if (type != 2 && type != 1)
  {
    goto LABEL_11;
  }

  if (!sendCopyRepresentation)
  {
    itemProvider = [(SFCollaborationItem *)self itemProvider];
    supportsShareSheetSendCopyRepresentation = [itemProvider supportsShareSheetSendCopyRepresentation];

    if (!supportsShareSheetSendCopyRepresentation)
    {
      goto LABEL_13;
    }

    sendCopyRepresentation = [(SFCollaborationItem *)self itemProvider];
LABEL_11:
    if (!sendCopyRepresentation)
    {
      goto LABEL_13;
    }
  }

  [array addObject:sendCopyRepresentation];

LABEL_13:
  sendCopyActivityItemValues = [(SFCollaborationItem *)self sendCopyActivityItemValues];
  [array addObjectsFromArray:sendCopyActivityItemValues];

  v12 = [array copy];

  return v12;
}

- (id)workQueue
{
  if (workQueue_onceToken != -1)
  {
    [SFCollaborationItem workQueue];
  }

  v3 = workQueue_workQueue;

  return v3;
}

void __32__SFCollaborationItem_workQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.sharing.sfcollaborationitem.work-queue", 0);
  v1 = workQueue_workQueue;
  workQueue_workQueue = v0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = SFCollaborationItem;
  v4 = [(SFCollaborationItem *)&v15 description];
  identifier = [(SFCollaborationItem *)self identifier];
  type = [(SFCollaborationItem *)self type];
  itemProvider = [(SFCollaborationItem *)self itemProvider];
  activityItem = [(SFCollaborationItem *)self activityItem];
  placeholderActivityItem = [(SFCollaborationItem *)self placeholderActivityItem];
  options = [(SFCollaborationItem *)self options];
  sendCopyRepresentation = [(SFCollaborationItem *)self sendCopyRepresentation];
  canAddPeople = [(SFCollaborationItem *)self canAddPeople];
  v13 = [v3 stringWithFormat:@"%@ identifier:%@, type:%ld, itemProvider:%@, activityItem:%@, placeholderActivityItem:%@, options:%@, sendCopyRepresentation:%@, canAddPeople:%@", v4, identifier, type, itemProvider, activityItem, placeholderActivityItem, options, sendCopyRepresentation, canAddPeople];

  return v13;
}

- (void)_startLoading
{
  [(SFCollaborationItem *)self setIsLoadingCanAddPeople:1];
  [(SFCollaborationItem *)self _loadMetadataIfNeeded];
  [(SFCollaborationItem *)self _loadOptionsIfNeeded];

  [(SFCollaborationItem *)self _loadSendCopyRepresentationIfNeeded];
}

- (void)_loadMetadataIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "No metadata to load: %@", &v4, 0xCu);
  }
}

- (void)_loadOptionsIfNeeded
{
  options = [(SFCollaborationItem *)self options];

  if (!options)
  {
    [(SFCollaborationItem *)self setIsLoadingOptions:1];
    objc_initWeak(&location, self);
    itemProvider = [(SFCollaborationItem *)self itemProvider];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke;
    v5[3] = &unk_1E788CDB8;
    objc_copyWeak(&v6, &location);
    [SFCollaborationUtilities loadShareOptionsForItemProvider:itemProvider completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke_2;
  block[3] = &unk_1E788CD90;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didLoadOptions:*(a1 + 32) ckOptions:*(a1 + 40)];
}

- (void)_loadSendCopyRepresentationIfNeeded
{
  sendCopyRepresentation = [(SFCollaborationItem *)self sendCopyRepresentation];
  if (sendCopyRepresentation)
  {
  }

  else
  {
    itemProvider = [(SFCollaborationItem *)self itemProvider];
    supportsShareSheetSendCopyRepresentation = [itemProvider supportsShareSheetSendCopyRepresentation];

    if (supportsShareSheetSendCopyRepresentation)
    {
      [(SFCollaborationItem *)self setIsLoadingSendCopyRepresentation:1];
      objc_initWeak(&location, self);
      itemProvider2 = [(SFCollaborationItem *)self itemProvider];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke;
      v7[3] = &unk_1E788CDE0;
      objc_copyWeak(&v8, &location);
      [SFCollaborationUtilities loadSendCopyRepresentationIfNeededForItemProvider:itemProvider2 completion:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke_2;
  v5[3] = &unk_1E788AEA0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadSendCopyRepresentation:*(a1 + 32)];
}

- (void)_didLoadMetadata:(id)metadata
{
  v14 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v5 = share_sheet_log(metadataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = metadataCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did load metadata:%@", &v12, 0xCu);
  }

  v7 = share_sheet_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    defaultShareOptions = [metadataCopy defaultShareOptions];
    v9 = [SFCollaborationUtilities descriptionForShareOptions:defaultShareOptions];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "loaded options:%@", &v12, 0xCu);
  }

  [(SFCollaborationItem *)self setIsLoadingMetadata:0];
  if (metadataCopy)
  {
    [(SFCollaborationItem *)self setMetadata:metadataCopy];
    defaultShareOptions2 = [metadataCopy defaultShareOptions];
    [(SFCollaborationItem *)self setShareOptions:defaultShareOptions2];

    changePublisher = [(SFCollaborationItem *)self changePublisher];
    [changePublisher publishChangeDescriptor:1 forObservable:self];
  }

  [(SFCollaborationItem *)self _updateLoadingState];
}

- (void)_didLoadOptions:(id)options ckOptions:(id)ckOptions
{
  v12 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  ckOptionsCopy = ckOptions;
  v8 = share_sheet_log(ckOptionsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [SFCollaborationUtilities descriptionForShareOptions:optionsCopy];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "did load options:%@", &v10, 0xCu);
  }

  [(SFCollaborationItem *)self setIsLoadingOptions:0];
  if (ckOptionsCopy && [(SFCollaborationItem *)self type]== 1)
  {
    [(SFCollaborationItem *)self setCkOptions:ckOptionsCopy];
  }

  if (optionsCopy)
  {
    [(SFCollaborationItem *)self setShareOptions:optionsCopy];
  }

  [(SFCollaborationItem *)self _updateLoadingState];
}

- (void)_didLoadSendCopyRepresentation:(id)representation
{
  v9 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = share_sheet_log(representationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = representationCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did load send copy representation:%@", &v7, 0xCu);
  }

  [(SFCollaborationItem *)self setIsLoadingSendCopyRepresentation:0];
  if (representationCopy)
  {
    [(SFCollaborationItem *)self setSendCopyRepresentation:representationCopy];
    changePublisher = [(SFCollaborationItem *)self changePublisher];
    [changePublisher publishChangeDescriptor:8 forObservable:self];
  }

  [(SFCollaborationItem *)self _updateLoadingState];
}

- (void)setCanAddPeople:(id)people
{
  v13 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  v6 = peopleCopy;
  if (peopleCopy)
  {
    v7 = share_sheet_log(peopleCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [v6 BOOLValue];
      v9 = @"NO";
      if (bOOLValue)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "did load can add people:%@", &v11, 0xCu);
    }

    [(SFCollaborationItem *)self setIsLoadingCanAddPeople:0];
    objc_storeStrong(&self->_canAddPeople, people);
    changePublisher = [(SFCollaborationItem *)self changePublisher];
    [changePublisher publishChangeDescriptor:16 forObservable:self];

    [(SFCollaborationItem *)self _updateLoadingState];
  }
}

- (void)_updateLoadingState
{
  v8 = *MEMORY[0x1E69E9840];
  isLoading = [(SFCollaborationItem *)self isLoading];
  if ((isLoading & 1) == 0)
  {
    v4 = share_sheet_log(isLoading);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Did finish loading for collaboration item:%@", &v6, 0xCu);
    }

    changePublisher = [(SFCollaborationItem *)self changePublisher];
    [changePublisher publishChangeDescriptor:4 forObservable:self];
  }
}

- (BOOL)isLoading
{
  if ([(SFCollaborationItem *)self isLoadingMetadata]|| [(SFCollaborationItem *)self isLoadingOptions]|| [(SFCollaborationItem *)self isLoadingSendCopyRepresentation])
  {
    return 1;
  }

  return [(SFCollaborationItem *)self isLoadingCanAddPeople];
}

- (BOOL)isPostShare
{
  type = [(SFCollaborationItem *)self type];
  if (type)
  {
    if (type == 1)
    {
      itemProvider = [(SFCollaborationItem *)self itemProvider];
      v5 = [SFCollaborationUtilities isPostCKShareItemProvider:itemProvider];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(SFCollaborationItem *)self isShared];
  }
}

- (void)registerChangeObserver:(id)observer
{
  observerCopy = observer;
  changePublisher = [(SFCollaborationItem *)self changePublisher];
  [changePublisher registerChangeObserver:observerCopy];
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  changePublisher = [(SFCollaborationItem *)self changePublisher];
  [changePublisher unregisterChangeObserver:observerCopy];
}

- (id)createCollaborationFooterViewModel
{
  _optionsSummary = [(SFCollaborationItem *)self _optionsSummary];
  if (_optionsSummary)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getSLCollaborationFooterViewModelClass_softClass;
    v11 = getSLCollaborationFooterViewModelClass_softClass;
    if (!getSLCollaborationFooterViewModelClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getSLCollaborationFooterViewModelClass_block_invoke;
      v7[3] = &unk_1E788A938;
      v7[4] = &v8;
      __getSLCollaborationFooterViewModelClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithTitle:0 subtitle:0];
    [v5 setOptionsSummary:_optionsSummary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_optionsSummary
{
  if (![(SFCollaborationItem *)self _canShowOptions])
  {
    goto LABEL_10;
  }

  if (![(SFCollaborationItem *)self isLoading])
  {
    canAddPeople = [(SFCollaborationItem *)self canAddPeople];
    if (canAddPeople)
    {
      v6 = canAddPeople;
      canAddPeople2 = [(SFCollaborationItem *)self canAddPeople];
      bOOLValue = [canAddPeople2 BOOLValue];

      if (!bOOLValue)
      {
        v4 = @"SHARE_OPTIONS_CANNOT_ADD";
        goto LABEL_12;
      }
    }

    shareOptions = [(SFCollaborationItem *)self shareOptions];
    summary = [shareOptions summary];

    if (summary)
    {
      goto LABEL_14;
    }

    options = [(SFCollaborationItem *)self options];

    if (options)
    {
      v4 = @"SHARE_OPTIONS";
      goto LABEL_12;
    }

LABEL_10:
    summary = 0;
    goto LABEL_14;
  }

  _defaultLoadingOptionsSummary = [(SFCollaborationItem *)self _defaultLoadingOptionsSummary];
  if (!_defaultLoadingOptionsSummary)
  {
    v4 = @"PREPARING_SHARE_OPTIONS";
LABEL_12:
    _defaultLoadingOptionsSummary = SFLocalizedStringForKey(v4);
  }

  summary = _defaultLoadingOptionsSummary;
LABEL_14:

  return summary;
}

- (void)setShareOptions:(id)options
{
  optionsCopy = options;
  shareOptions = self->_shareOptions;
  if (shareOptions != optionsCopy)
  {
    v10 = optionsCopy;
    if (shareOptions)
    {
      self->_optionsChanged = 1;
    }

    objc_storeStrong(&self->_shareOptions, options);
    optionsGroups = [(_SWCollaborationShareOptions *)v10 optionsGroups];
    options = self->_options;
    self->_options = optionsGroups;

    changePublisher = [(SFCollaborationItem *)self changePublisher];
    [changePublisher publishChangeDescriptor:2 forObservable:self];

    optionsCopy = v10;
  }
}

- (void)setCloudSharingResult:(id)result
{
  resultCopy = result;
  if (self->_cloudSharingResult != resultCopy)
  {
    objc_storeStrong(&self->_cloudSharingResult, result);
    if ([(SFCollaborationItem *)self type]== 1)
    {
      error = [(SFCollaborationCloudSharingResult *)resultCopy error];
      v16 = 0;
      v7 = [SFCollaborationUtilities isOplockError:error updatedShare:&v16];
      v8 = v16;

      if (v7 && v8)
      {
        v10 = share_sheet_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Received updated share from oplock error, updating options", buf, 2u);
        }

        [(SFCollaborationItem *)self setUpdatedShare:v8];
        [(SFCollaborationItem *)self setIsLoadingOptions:1];
        ckOptions = [(SFCollaborationItem *)self ckOptions];
        v14 = 0;
        v12 = [SFCollaborationUtilities optionsFromCKShare:v8 previousCKOptions:ckOptions newCKOptions:&v14];
        v13 = v14;
        [(SFCollaborationItem *)self _didLoadOptions:v12 ckOptions:v13];
      }
    }
  }
}

+ (void)collaborationItemForFileURL:(uint64_t)a3 itemProvider:activityItem:defaultCollaboration:managedFileURL:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SFCollaborationItem.m" lineNumber:124 description:{@"url is not a fileURL: %@", a3}];
}

@end