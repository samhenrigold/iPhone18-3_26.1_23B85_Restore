@interface _SFFPShareCollaborationItem
- (BOOL)hasSeparateSendCopyRepresentation;
- (BOOL)isCollaborativeURL;
- (_SFFPShareCollaborationItem)initWithFileURL:(id)l itemProvider:(id)provider activityItem:(id)item defaultCollaboration:(BOOL)collaboration managedFileURL:(id)rL;
- (id)_defaultLoadingOptionsSummary;
- (void)_loadMetadataIfNeeded;
- (void)loadCopyRepresentationURLWithCompletionHandler:(id)handler;
@end

@implementation _SFFPShareCollaborationItem

- (_SFFPShareCollaborationItem)initWithFileURL:(id)l itemProvider:(id)provider activityItem:(id)item defaultCollaboration:(BOOL)collaboration managedFileURL:(id)rL
{
  collaborationCopy = collaboration;
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  providerCopy = provider;
  itemCopy = item;
  rLCopy = rL;
  if (!providerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = itemCopy;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:lCopy];
    }

    providerCopy = v17;
  }

  if (lCopy && providerCopy && ([providerCopy canLoadObjectOfClass:objc_opt_class()] & 1) == 0)
  {
    [providerCopy registerObject:lCopy visibility:0];
  }

  v18 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/icloud/"];
  v29.receiver = self;
  v29.super_class = _SFFPShareCollaborationItem;
  v19 = [(SFCollaborationItem *)&v29 initWithItemProvider:providerCopy activityItem:itemCopy placeholderActivityItem:v18 defaultCollaboration:collaborationCopy];
  if (v19)
  {
    v19->_isShared = [SFCollaborationUtilities isSharedFileURL:lCopy isLocalStorageFileURL:&v19->_isLocalStorage isiCloudDriveFileURL:&v19->_isiCloudDrive isInSharedFolder:&v19->_isInSharedFolder];
    v19->_isThirdPartyFileProviderBacked = [SFCollaborationUtilities isThirdPartyFileProviderBackedURL:lCopy];
    objc_storeStrong(&v19->_fileURL, l);
    objc_storeStrong(&v19->_managedFileURL, rL);
    v20 = share_sheet_log([(SFCollaborationItem *)v19 setType:0]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "no";
      isiCloudDrive = v19->_isiCloudDrive;
      isInSharedFolder = v19->_isInSharedFolder;
      isThirdPartyFileProviderBacked = v19->_isThirdPartyFileProviderBacked;
      if (v19->_isShared)
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      *buf = 138413570;
      if (isiCloudDrive)
      {
        v26 = "yes";
      }

      else
      {
        v26 = "no";
      }

      v31 = v19;
      v32 = 2112;
      if (isInSharedFolder)
      {
        v27 = "yes";
      }

      else
      {
        v27 = "no";
      }

      v33 = lCopy;
      if (isThirdPartyFileProviderBacked)
      {
        v21 = "yes";
      }

      v34 = 2080;
      v35 = v25;
      v36 = 2080;
      v37 = v26;
      v38 = 2080;
      v39 = v27;
      v40 = 2080;
      v41 = v21;
      _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "%@: fileURL:%@ isShared:%s isiCloudDrive:%s isInSharedFolder:%s isThirdPartyFileProviderBacked:%s", buf, 0x3Eu);
    }

    [(_SFFPShareCollaborationItem *)v19 _loadMetadataIfNeeded];
  }

  return v19;
}

- (void)_loadMetadataIfNeeded
{
  fileURL = [(_SFFPShareCollaborationItem *)self fileURL];

  if (fileURL)
  {
    managedFileURL = [(_SFFPShareCollaborationItem *)self managedFileURL];
    v5 = managedFileURL;
    if (managedFileURL)
    {
      fileURL2 = managedFileURL;
    }

    else
    {
      fileURL2 = [(_SFFPShareCollaborationItem *)self fileURL];
    }

    v7 = fileURL2;

    [(SFCollaborationItem *)self setIsLoadingMetadata:1];
    workQueue = [(SFCollaborationItem *)self workQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke;
    v10[3] = &unk_1E788A658;
    v11 = v7;
    selfCopy = self;
    v9 = v7;
    dispatch_async(workQueue, v10);
  }
}

- (BOOL)isCollaborativeURL
{
  if ([(_SFFPShareCollaborationItem *)self isiCloudDrive])
  {
    return 1;
  }

  if ([(_SFFPShareCollaborationItem *)self isiCloudDrive])
  {
    return 0;
  }

  metadata = [(SFCollaborationItem *)self metadata];
  v3 = metadata != 0;

  return v3;
}

- (BOOL)hasSeparateSendCopyRepresentation
{
  itemProvider = [(SFCollaborationItem *)self itemProvider];
  v3 = [SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:itemProvider];

  return v3;
}

- (id)_defaultLoadingOptionsSummary
{
  if ([(_SFFPShareCollaborationItem *)self isiCloudDrive]&& ![(_SFFPShareCollaborationItem *)self isShared])
  {
    v3 = +[SFCollaborationUtilities defaultCKOptionsSummary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)loadCopyRepresentationURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(_SFFPShareCollaborationItem *)self hasSeparateSendCopyRepresentation]&& ([(_SFFPShareCollaborationItem *)self sendCopyRepresentationURL], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    objc_initWeak(&location, self);
    itemProvider = [(SFCollaborationItem *)self itemProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78___SFFPShareCollaborationItem_loadCopyRepresentationURLWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E788CE58;
    objc_copyWeak(&v11, &location);
    v10 = handlerCopy;
    [SFCollaborationUtilities loadiWorkCopyRepresentationURLForItemProvider:itemProvider completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    sendCopyRepresentationURL = [(_SFFPShareCollaborationItem *)self sendCopyRepresentationURL];
    if (sendCopyRepresentationURL)
    {
      (*(handlerCopy + 2))(handlerCopy, sendCopyRepresentationURL);
    }

    else
    {
      fileURL = [(_SFFPShareCollaborationItem *)self fileURL];
      (*(handlerCopy + 2))(handlerCopy, fileURL);
    }
  }
}

@end