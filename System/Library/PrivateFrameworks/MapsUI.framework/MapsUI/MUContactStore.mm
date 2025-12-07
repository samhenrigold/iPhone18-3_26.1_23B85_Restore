@interface MUContactStore
- (BOOL)_calculateIfContainerIsGuardianRestricted;
- (BOOL)isGuardianRestrictedCNContainer;
- (CNContactStore)cnContactStore;
- (MUContactStore)init;
- (void)_contactStoreDidChange;
- (void)_invokeObservers;
- (void)fetchContactForPickerDisplayUsingContact:(id)contact callbackQueue:(id)queue completion:(id)completion;
- (void)fetchStoredContactForMatchingMapItem:(id)item callbackQueue:(id)queue completion:(id)completion;
- (void)fetchUnifiedContactForIdentifier:(id)identifier callbackQueue:(id)queue completion:(id)completion;
- (void)removeMapsDataFromContact:(id)contact callbackQueue:(id)queue completion:(id)completion;
@end

@implementation MUContactStore

- (BOOL)_calculateIfContainerIsGuardianRestricted
{
  v13[1] = *MEMORY[0x1E69E9840];
  cnContactStore = [(MUContactStore *)self cnContactStore];
  defaultContainerIdentifier = [cnContactStore defaultContainerIdentifier];

  if (defaultContainerIdentifier)
  {
    v5 = MEMORY[0x1E695CE48];
    v13[0] = defaultContainerIdentifier;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];

    cnContactStore2 = [(MUContactStore *)self cnContactStore];
    v9 = [cnContactStore2 containersMatchingPredicate:v7 error:0];

    if ([v9 count] == 1)
    {
      firstObject = [v9 firstObject];
      isGuardianRestricted = [firstObject isGuardianRestricted];
    }

    else
    {
      isGuardianRestricted = 0;
    }
  }

  else
  {
    isGuardianRestricted = 0;
  }

  return isGuardianRestricted;
}

- (void)fetchStoredContactForMatchingMapItem:(id)item callbackQueue:(id)queue completion:(id)completion
{
  v29[3] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695CD78];
  itemCopy = item;
  v12 = [v10 alloc];
  v13 = *MEMORY[0x1E695C410];
  v29[0] = *MEMORY[0x1E695C2E0];
  v29[1] = v13;
  v29[2] = *MEMORY[0x1E695C328];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v15 = [v12 initWithKeysToFetch:v14];

  v16 = MEMORY[0x1E695CD58];
  _mapsDataString = [itemCopy _mapsDataString];

  v18 = [v16 predicateForContactMatchingMapString:_mapsDataString];
  [v15 setPredicate:v18];

  [v15 setSortOrder:1];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke;
  block[3] = &unk_1E82197D0;
  objc_copyWeak(&v27, &location);
  v24 = v15;
  v25 = queueCopy;
  v26 = completionCopy;
  v20 = completionCopy;
  v21 = queueCopy;
  v22 = v15;
  dispatch_async(queue, block);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cnContactStore];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__12685;
    v15[4] = __Block_byref_object_dispose__12686;
    v16 = 0;
    v5 = *(a1 + 32);
    v13[4] = v15;
    v14 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke_61;
    v13[3] = &unk_1E8219820;
    [v4 enumerateContactsWithFetchRequest:v5 error:&v14 usingBlock:v13];
    v6 = v14;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke_2;
    block[3] = &unk_1E8219848;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = v15;
    v10 = v6;
    v8 = v6;
    dispatch_async(v7, block);

    _Block_object_dispose(v15, 8);
  }
}

void __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke_61(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  *a3 = 1;
}

- (void)fetchContactForPickerDisplayUsingContact:(id)contact callbackQueue:(id)queue completion:(id)completion
{
  v29[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  queueCopy = queue;
  completionCopy = completion;
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v29[0] = descriptorForRequiredKeys;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v13 = [contactCopy areKeysAvailable:v12];

  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke;
    block[3] = &unk_1E821A618;
    v27 = contactCopy;
    v28 = completionCopy;
    v14 = completionCopy;
    v15 = contactCopy;
    dispatch_async(queueCopy, block);
  }

  else
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_2;
    v19[3] = &unk_1E82197F8;
    objc_copyWeak(&v24, &location);
    v19[4] = self;
    v20 = contactCopy;
    v21 = descriptorForRequiredKeys;
    v22 = queueCopy;
    v23 = completionCopy;
    v17 = completionCopy;
    v18 = contactCopy;
    dispatch_async(queue, v19);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) cnContactStore];
    v4 = [*(a1 + 40) identifier];
    v19[0] = *(a1 + 48);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = 0;
    v6 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:v5 error:&v18];
    v7 = v18;

    v8 = *(a1 + 56);
    if (v7)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_4;
      v11[3] = &unk_1E821B8D8;
      v9 = &v14;
      v14 = *(a1 + 64);
      v10 = &v12;
      v12 = *(a1 + 40);
      v13 = v7;
      dispatch_async(v8, v11);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_3;
      block[3] = &unk_1E821A618;
      v9 = &v17;
      v17 = *(a1 + 64);
      v10 = &v16;
      v16 = v6;
      dispatch_async(v8, block);
    }
  }
}

- (void)removeMapsDataFromContact:(id)contact callbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = [contact mutableCopy];
  [v10 setMapsData:0];
  if ([(MUContactStore *)self hasContactAccess])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_2;
    block[3] = &unk_1E82197D0;
    objc_copyWeak(&v20, &location);
    v17 = v10;
    v18 = queueCopy;
    v19 = completionCopy;
    v12 = v10;
    v13 = completionCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke;
    v22[3] = &unk_1E821A618;
    v23 = v10;
    v24 = completionCopy;
    v14 = v10;
    v15 = completionCopy;
    dispatch_async(queueCopy, v22);
  }
}

void __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v3 updateContact:*(a1 + 32)];
    v4 = [WeakRetained cnContactStore];
    v12 = 0;
    [v4 executeSaveRequest:v3 error:&v12];
    v5 = v12;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_3;
    v8[3] = &unk_1E821B8D8;
    v6 = *(a1 + 40);
    v11 = *(a1 + 48);
    v9 = v5;
    v10 = *(a1 + 32);
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 48);

    v2(v3, 0);
  }

  else
  {
    v5 = [*(a1 + 40) copy];
    (*(v1 + 16))(v1, v5, *(a1 + 32));
  }
}

- (CNContactStore)cnContactStore
{
  cnContactStore = self->_cnContactStore;
  if (!cnContactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_cnContactStore;
    self->_cnContactStore = v4;

    cnContactStore = self->_cnContactStore;
  }

  return cnContactStore;
}

- (void)fetchUnifiedContactForIdentifier:(id)identifier callbackQueue:(id)queue completion:(id)completion
{
  identifierCopy = identifier;
  queueCopy = queue;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MUContactStore_fetchUnifiedContactForIdentifier_callbackQueue_completion___block_invoke;
  block[3] = &unk_1E82197D0;
  objc_copyWeak(&v19, &location);
  v16 = identifierCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = identifierCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __76__MUContactStore_fetchUnifiedContactForIdentifier_callbackQueue_completion___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cnContactStore];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695CD58] descriptorForAllComparatorKeys];
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = 0;
    v8 = [v4 unifiedContactWithIdentifier:v5 keysToFetch:v7 error:&v18];
    v9 = v18;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__MUContactStore_fetchUnifiedContactForIdentifier_callbackQueue_completion___block_invoke_2;
    v14[3] = &unk_1E821B8D8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v16 = v9;
    v17 = v11;
    v15 = v8;
    v12 = v9;
    v13 = v8;
    dispatch_async(v10, v14);
  }
}

- (void)_invokeObservers
{
  objc_initWeak(&location, self);
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MUContactStore__invokeObservers__block_invoke;
  v4[3] = &unk_1E82197A8;
  objc_copyWeak(&v5, &location);
  [(GEOObserverHashTable *)observers enumerateObserversWithGroup:0 visitor:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__MUContactStore__invokeObservers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v4 contactStoreDidChange:WeakRetained];
  }
}

- (BOOL)isGuardianRestrictedCNContainer
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)_contactStoreDidChange
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MUContactStore__contactStoreDidChange__block_invoke;
  v4[3] = &unk_1E821BAC8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__MUContactStore__contactStoreDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _calculateIfContainerIsGuardianRestricted];
    geo_isolate_sync();
  }
}

- (MUContactStore)init
{
  v11.receiver = self;
  v11.super_class = MUContactStore;
  v2 = [(MUContactStore *)&v11 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = geo_isolater_create_with_format();
    propertyIsolator = v2->_propertyIsolator;
    v2->_propertyIsolator = v5;

    v7 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F452C3D0 queue:0];
    observers = v2->_observers;
    v2->_observers = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contactStoreDidChange name:*MEMORY[0x1E695C3D8] object:0];

    [(MUContactStore *)v2 _contactStoreDidChange];
  }

  return v2;
}

@end