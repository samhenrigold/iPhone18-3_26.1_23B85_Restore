@interface SFCollaborationCompositionDictionaryProvider
- (SFCollaborationCompositionDictionaryProvider)initWithItemProvider:(id)provider delegate:(id)delegate;
- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item;
- (void)observable:(id)observable didChange:(unint64_t)change;
@end

@implementation SFCollaborationCompositionDictionaryProvider

- (SFCollaborationCompositionDictionaryProvider)initWithItemProvider:(id)provider delegate:(id)delegate
{
  v23[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = SFCollaborationCompositionDictionaryProvider;
  v8 = [(SFCollaborationCompositionDictionaryProvider *)&v22 init];
  if (v8)
  {
    v9 = [SFCollaborationItemsProvider alloc];
    v23[0] = providerCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v11 = [(SFCollaborationItemsProvider *)v9 initWithActivityItems:v10 delegate:v8];
    collaborationItemsProvider = v8->_collaborationItemsProvider;
    v8->_collaborationItemsProvider = v11;

    v13 = objc_alloc_init(DummySFCollaborationService);
    collaborationService = v8->_collaborationService;
    v8->_collaborationService = v13;

    objc_storeStrong(&v8->_delegate, delegate);
    collaborationItemsProvider = [(SFCollaborationCompositionDictionaryProvider *)v8 collaborationItemsProvider];
    collaborationItems = [collaborationItemsProvider collaborationItems];
    firstObject = [collaborationItems firstObject];

    if (firstObject)
    {
      collaborationItemsProvider2 = [(SFCollaborationCompositionDictionaryProvider *)v8 collaborationItemsProvider];
      collaborationItems2 = [collaborationItemsProvider2 collaborationItems];
      firstObject2 = [collaborationItems2 firstObject];
      [firstObject2 registerChangeObserver:v8];
    }
  }

  return v8;
}

- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = item;
  v4 = MEMORY[0x1E695DEC8];
  itemCopy = item;
  v6 = [v4 arrayWithObjects:v8 count:1];

  return v6;
}

- (void)observable:(id)observable didChange:(unint64_t)change
{
  changeCopy = change;
  v27[1] = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if ((changeCopy & 4) != 0)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__15;
    v25 = __Block_byref_object_dispose__15;
    v26 = [SFCollaborationUtilities baseCollaborationDictionaryFromCollaborationItem:observableCopy];
    if ([observableCopy type] == 1)
    {
      objc_initWeak(&location, self);
      itemProvider = [observableCopy itemProvider];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__SFCollaborationCompositionDictionaryProvider_observable_didChange___block_invoke;
      v18[3] = &unk_1E78901B8;
      objc_copyWeak(&v19, &location);
      v18[4] = &v21;
      [SFCollaborationUtilities loadCKShareItemProvider:itemProvider completionHandler:v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else if ([observableCopy type] == 2)
    {
      pendingCollaboration = [observableCopy pendingCollaboration];
      [v22[5] setObject:pendingCollaboration forKeyedSubscript:@"SFPendingCollaborationKey"];

      delegate = [(SFCollaborationCompositionDictionaryProvider *)self delegate];
      [delegate dictionaryDidBecomeAvailable:v22[5] forProvider:self];
    }

    else if (![observableCopy type] && objc_msgSend(observableCopy, "conformsToProtocol:", &unk_1F1D8B9D0))
    {
      fileURL = [observableCopy fileURL];
      v27[0] = fileURL;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v12 = [SFCollaborationUtilities fileShareDictionaryFromFileURLItems:v11];
      [v22[5] setObject:v12 forKeyedSubscript:@"fileObjects"];

      fileURL2 = [observableCopy fileURL];
      v14 = fileURL2;
      [fileURL2 fileSystemRepresentation];
      v15 = sandbox_extension_issue_file();

      if (v15)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
        [v22[5] setObject:v16 forKeyedSubscript:@"token"];
      }

      delegate2 = [(SFCollaborationCompositionDictionaryProvider *)self delegate];
      [delegate2 dictionaryDidBecomeAvailable:v22[5] forProvider:self];
    }

    _Block_object_dispose(&v21, 8);
  }
}

void __69__SFCollaborationCompositionDictionaryProvider_observable_didChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [SFCollaborationUtilities ckShareDictionaryFromCKShare:v6 setupInfo:v5];

  [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:@"CKShare"];
  v8 = [WeakRetained delegate];
  [v8 dictionaryDidBecomeAvailable:*(*(*(a1 + 32) + 8) + 40) forProvider:WeakRetained];
}

@end