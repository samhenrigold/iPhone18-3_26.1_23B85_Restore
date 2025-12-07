@interface VSAccountChannelsCenter
+ (id)_accountChannelsWithProviderID:(id)d;
+ (id)sharedCenter;
+ (void)_startOperationAndWaitForCompletion:(id)completion;
- (NSString)fileName;
- (NSURL)directoryURL;
- (NSURL)fileURL;
- (NSUndoManager)undoManager;
- (VSAccountChannelsCenter)init;
- (VSAccountChannelsCenter)initWithAccountStore:(id)store;
- (id)_removeLocallySavedAccountChannels;
- (id)_removeSavedAccountChannels;
- (id)_saveAccountChannels:(id)channels;
- (id)_savedAccountChannels;
- (id)_savedAccountChannelsForIdentityProviderID:(id)d storeIdentityProvider:(id)provider;
- (id)_storeIdentityProviderForAccount:(id)account;
- (void)_enqueueRemoveSavedAccountChannelsAndWait;
- (void)_enqueueSaveAccountChannelsAndWait:(id)wait;
- (void)_removeLocallySavedAccountChannels;
- (void)_removeSavedAccountChannelsWithCompletionHandler:(id)handler;
- (void)_saveAccountChannels:(id)channels withCompletionHandler:(id)handler;
- (void)_snapshotPreviousChannels;
- (void)fetchAccountChannelsWithCompletionHandler:(id)handler;
- (void)setUndoManager:(id)manager;
@end

@implementation VSAccountChannelsCenter

- (VSAccountChannelsCenter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAccountChannelsCenter)initWithAccountStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountStore parameter must not be nil."];
  }

  v11.receiver = self;
  v11.super_class = VSAccountChannelsCenter;
  v6 = [(VSAccountChannelsCenter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    v8 = dispatch_queue_create("VSAccountChannelsCenter Serial Queue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

+ (id)sharedCenter
{
  if (sharedCenter___vs_lazy_init_predicate_0 != -1)
  {
    +[VSAccountChannelsCenter sharedCenter];
  }

  v3 = sharedCenter___vs_lazy_init_variable_0;

  return v3;
}

void __39__VSAccountChannelsCenter_sharedCenter__block_invoke()
{
  v0 = [VSAccountChannelsCenter alloc];
  v3 = +[VSAccountStore sharedAccountStore];
  v1 = [(VSAccountChannelsCenter *)v0 initWithAccountStore:v3];
  v2 = sharedCenter___vs_lazy_init_variable_0;
  sharedCenter___vs_lazy_init_variable_0 = v1;
}

- (void)_snapshotPreviousChannels
{
  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  undoManager = [(VSAccountChannelsCenter *)self undoManager];
  if (undoManager)
  {
    _savedAccountChannels = [(VSAccountChannelsCenter *)self _savedAccountChannels];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke;
    v9[3] = &unk_278B748E8;
    v10 = undoManager;
    selfCopy = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke_2;
    v6[3] = &unk_278B74910;
    v7 = v10;
    selfCopy2 = self;
    [_savedAccountChannels unwrapObject:v9 error:v6];
  }
}

void __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 prepareWithInvocationTarget:v3];
  [v5 _enqueueSaveAccountChannelsAndWait:v4];
}

void __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) prepareWithInvocationTarget:*(a1 + 40)];
  [v1 _enqueueRemoveSavedAccountChannelsAndWait];
}

- (id)_storeIdentityProviderForAccount:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  identityProviderID = [accountCopy identityProviderID];

  forceUnwrapObject = [identityProviderID forceUnwrapObject];

  v26 = 0;
  v8 = VSLoadInterfaceFramework(&v26);
  v9 = v26;
  v10 = v9;
  if (v8)
  {
    v11 = [objc_alloc(NSClassFromString(@"VSIdentityProviderFetchOperation")) initWithIdentityProviderID:forceUnwrapObject];
    [v11 setFetchFromStoreOnly:1];
    identityProviderFetchOperationBlock = [(VSAccountChannelsCenter *)self identityProviderFetchOperationBlock];

    if (identityProviderFetchOperationBlock)
    {
      identityProviderFetchOperationBlock2 = [(VSAccountChannelsCenter *)self identityProviderFetchOperationBlock];
      v15 = identityProviderFetchOperationBlock2[2]();

      v11 = v15;
    }

    v16 = VSDefaultLogObject(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = forceUnwrapObject;
      _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Fetching store identity provider for ID: %@", buf, 0xCu);
    }

    [objc_opt_class() _startOperationAndWaitForCompletion:v11];
    result = [v11 result];
    forceUnwrapObject2 = [result forceUnwrapObject];

    object = [forceUnwrapObject2 object];
    v20 = VSDefaultLogObject(object);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (object)
    {
      if (v21)
      {
        *buf = 138412290;
        v28 = forceUnwrapObject;
        v22 = "Successfully fetched identity provider for ID: %@";
        v23 = v20;
        v24 = 12;
LABEL_14:
        _os_log_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }
    }

    else if (v21)
    {
      *buf = 0;
      v22 = "Unable to fetch store identity provider for provider ID. Adam ID will be set to nil";
      v23 = v20;
      v24 = 2;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v11 = VSErrorLogObject(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [VSAccountChannelsCenter _storeIdentityProviderForAccount:];
  }

  object = 0;
LABEL_16:

  return object;
}

- (id)_savedAccountChannelsForIdentityProviderID:(id)d storeIdentityProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  _savedAccountChannels = [(VSAccountChannelsCenter *)self _savedAccountChannels];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke;
  v27[3] = &unk_278B74938;
  selfCopy = self;
  v30 = &v31;
  v28 = dCopy;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19;
  v23 = &unk_278B74960;
  selfCopy2 = self;
  v26 = &v31;
  v10 = v28;
  v25 = v10;
  [_savedAccountChannels unwrapObject:v27 error:&v20];
  v11 = v32[5];
  uniqueID = [providerCopy uniqueID];
  forceUnwrapObject = [uniqueID forceUnwrapObject];
  [v11 setAdamID:forceUnwrapObject];

  v14 = v32[5];
  providerInfo = [providerCopy providerInfo];
  forceUnwrapObject2 = [providerInfo forceUnwrapObject];
  [v14 setProviderInfo:forceUnwrapObject2];

  v17 = v32[5];
  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountChannels parameter must not be nil."];
    v17 = v32[5];
  }

  v18 = v17;

  _Block_object_dispose(&v31, 8);

  return v18;
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 providerID];
  v5 = [v4 isEqualToString:*(a1 + 32)];
  if (v5)
  {
    v6 = VSDefaultLogObject(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 channelIDs];
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Serialized account channels successfuly loaded and the provider matches the account provider. Channels: %@", &v15, 0xCu);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = v3;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = VSErrorLogObject(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_cold_1((a1 + 32), v4, v11);
    }

    v12 = [*(a1 + 40) _removeSavedAccountChannels];
    v13 = [objc_opt_class() _accountChannelsWithProviderID:*(a1 + 32)];
    v14 = *(*(a1 + 48) + 8);
    v10 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19(uint64_t a1)
{
  v2 = VSErrorLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19_cold_1();
  }

  v3 = [*(a1 + 32) _removeSavedAccountChannels];
  v4 = [objc_opt_class() _accountChannelsWithProviderID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_savedAccountChannels
{
  v39 = *MEMORY[0x277D85DE8];
  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v5 = VSDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VSAccountChannelsCenter _savedAccountChannels]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__10;
  v37 = __Block_byref_object_dispose__10;
  v38 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  accountStore = [(VSAccountChannelsCenter *)self accountStore];
  firstAccount = [accountStore firstAccount];

  if (firstAccount)
  {
    accountStore2 = [(VSAccountChannelsCenter *)self accountStore];
    firstAccount2 = [accountStore2 firstAccount];
    channelsData = [firstAccount2 channelsData];
    v11 = [VSOptional optionalWithObject:channelsData];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke;
    v25[3] = &unk_278B74988;
    v25[4] = self;
    v25[5] = &buf;
    [v11 conditionallyUnwrapObject:v25];
  }

  v12 = *(*(&buf + 1) + 40);
  if (!v12)
  {
    fileURL = [(VSAccountChannelsCenter *)self fileURL];
    v14 = objc_alloc_init(VSFileReadOperation);
    v15 = VSDefaultLogObject([(VSFileReadOperation *)v14 setSource:fileURL]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 138412290;
      v33 = fileURL;
      _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "Reading account channels archive at: %@", v32, 0xCu);
    }

    [objc_opt_class() _startOperationAndWaitForCompletion:v14];
    result = [(VSFileReadOperation *)v14 result];
    forceUnwrapObject = [result forceUnwrapObject];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_26;
    v24[3] = &unk_278B749B0;
    v24[4] = &buf;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2;
    v23[3] = &unk_278B73450;
    v23[4] = &v26;
    [forceUnwrapObject unwrapObject:v24 error:v23];

    v12 = *(*(&buf + 1) + 40);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_28;
  v22[3] = &unk_278B749B0;
  v22[4] = &v26;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32;
  v21[3] = &unk_278B74318;
  v21[4] = &v26;
  [v12 conditionallyUnwrapObject:v22 otherwise:v21];
  v18 = v27[5];
  if (!v18)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
    v18 = v27[5];
  }

  v19 = v18;
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&buf, 8);

  return v19;
}

id __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [VSOptional optionalWithObject:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return [*(a1 + 32) _removeLocallySavedAccountChannels];
}

uint64_t __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_26(uint64_t a1, uint64_t a2)
{
  v3 = [VSOptional optionalWithObject:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_cold_1();
  }

  v5 = [VSFailable failableWithError:v3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_28(uint64_t a1, uint64_t a2)
{
  v3 = [VSAccountChannels deserializationResultWithData:a2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_30;
  v5[3] = &unk_278B749D8;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31;
  v4[3] = &unk_278B73450;
  v4[4] = v6;
  [v3 unwrapObject:v5 error:v4];
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Successfully read and deserialized account channels: %@", &v8, 0xCu);
  }

  v5 = [VSFailable failableWithObject:v3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31_cold_1();
  }

  v5 = [VSFailable failableWithError:v3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32(uint64_t a1)
{
  v2 = VSErrorLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32_cold_1();
  }

  v3 = VSPrivateError(-24, 0);
  v4 = [VSFailable failableWithError:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_enqueueRemoveSavedAccountChannelsAndWait
{
  v3 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will enqueue removing saved account channels.", buf, 2u);
  }

  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_not_V2(serialQueue);

  v5 = objc_alloc_init(VSSemaphore);
  serialQueue2 = [(VSAccountChannelsCenter *)self serialQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __68__VSAccountChannelsCenter__enqueueRemoveSavedAccountChannelsAndWait__block_invoke;
  v11 = &unk_278B73708;
  selfCopy = self;
  v13 = v5;
  v7 = v5;
  dispatch_async(serialQueue2, &v8);

  [(VSSemaphore *)v7 wait:v8];
}

uint64_t __68__VSAccountChannelsCenter__enqueueRemoveSavedAccountChannelsAndWait__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeSavedAccountChannels];
  v3 = *(a1 + 40);

  return [v3 signal];
}

- (id)_removeSavedAccountChannels
{
  v14 = *MEMORY[0x277D85DE8];
  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v5 = VSDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[VSAccountChannelsCenter _removeSavedAccountChannels]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v12, 0xCu);
  }

  [(VSAccountChannelsCenter *)self _snapshotPreviousChannels];
  accountStore = [(VSAccountChannelsCenter *)self accountStore];
  firstAccount = [accountStore firstAccount];

  if (firstAccount)
  {
    accountStore2 = [(VSAccountChannelsCenter *)self accountStore];
    firstAccount2 = [accountStore2 firstAccount];
    [firstAccount2 setChannelsData:0];
  }

  _removeLocallySavedAccountChannels = [(VSAccountChannelsCenter *)self _removeLocallySavedAccountChannels];

  return _removeLocallySavedAccountChannels;
}

- (id)_removeLocallySavedAccountChannels
{
  v11 = *MEMORY[0x277D85DE8];
  fileURL = [(VSAccountChannelsCenter *)self fileURL];
  v3 = objc_alloc_init(VSFileRemoveOperation);
  v4 = VSDefaultLogObject([(VSFileRemoveOperation *)v3 setFileURL:fileURL]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = fileURL;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Removing account channels archive at: %@", &v9, 0xCu);
  }

  [objc_opt_class() _startOperationAndWaitForCompletion:v3];
  error = [(VSFileRemoveOperation *)v3 error];
  v6 = error;
  if (error)
  {
    v7 = VSErrorLogObject(error);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VSAccountChannelsCenter _removeLocallySavedAccountChannels];
    }
  }

  else
  {
    v7 = VSDefaultLogObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Account channels archive successfully removed", &v9, 2u);
    }
  }

  return v6;
}

- (void)_enqueueSaveAccountChannelsAndWait:(id)wait
{
  waitCopy = wait;
  v5 = VSDefaultLogObject(waitCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will enqueue saving account channels.", buf, 2u);
  }

  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_not_V2(serialQueue);

  v7 = objc_alloc_init(VSSemaphore);
  serialQueue2 = [(VSAccountChannelsCenter *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__VSAccountChannelsCenter__enqueueSaveAccountChannelsAndWait___block_invoke;
  block[3] = &unk_278B73A28;
  block[4] = self;
  v12 = waitCopy;
  v13 = v7;
  v9 = v7;
  v10 = waitCopy;
  dispatch_async(serialQueue2, block);

  [(VSSemaphore *)v9 wait];
}

uint64_t __62__VSAccountChannelsCenter__enqueueSaveAccountChannelsAndWait___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveAccountChannels:*(a1 + 40)];
  v3 = *(a1 + 48);

  return [v3 signal];
}

- (id)_saveAccountChannels:(id)channels
{
  v18 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v7 = VSDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VSAccountChannelsCenter _saveAccountChannels:]";
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  [(VSAccountChannelsCenter *)self _snapshotPreviousChannels];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  serializationResult = [channelsCopy serializationResult];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke;
  v12[3] = &unk_278B74078;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_42;
  v11[3] = &unk_278B73450;
  v11[4] = &buf;
  [serializationResult unwrapObject:v12 error:v11];
  v9 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v9;
}

void __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) accountStore];
  v5 = [v4 firstAccount];

  if (v5)
  {
    v7 = [*(a1 + 32) accountStore];
    v8 = [v7 firstAccount];

    [v8 setChannelsData:v3];
    v9 = [*(a1 + 32) accountStore];
    v12[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v9 saveAccounts:v10 withCompletionHandler:&__block_literal_global_41];

    v11 = [*(a1 + 32) _removeLocallySavedAccountChannels];
  }

  else
  {
    v8 = VSErrorLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_cold_1();
    }
  }
}

void __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "VSAccountChannels save to keychain: success %d, error %@", v6, 0x12u);
  }
}

- (NSURL)fileURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = [VSOptional optionalWithObject:self->_fileURL];
  v3 = v8[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__VSAccountChannelsCenter_fileURL__block_invoke_2;
  v6[3] = &unk_278B74A40;
  v6[4] = self;
  v6[5] = &v7;
  [v3 conditionallyUnwrapObject:&__block_literal_global_45 otherwise:v6];
  forceUnwrapObject = [v8[5] forceUnwrapObject];
  _Block_object_dispose(&v7, 8);

  return forceUnwrapObject;
}

void __34__VSAccountChannelsCenter_fileURL__block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) directoryURL];
  v2 = [*(a1 + 32) fileName];
  v3 = [v7 URLByAppendingPathComponent:v2];
  v4 = [VSOptional optionalWithObject:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (void)_startOperationAndWaitForCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(VSSemaphore);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__VSAccountChannelsCenter__startOperationAndWaitForCompletion___block_invoke;
  v6[3] = &unk_278B733D8;
  v7 = v4;
  v5 = v4;
  [completionCopy setCompletionBlock:v6];
  [completionCopy start];

  [(VSSemaphore *)v5 wait];
}

+ (id)_accountChannelsWithProviderID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(VSAccountChannels);
  [(VSAccountChannels *)v4 setProviderID:dCopy];

  return v4;
}

- (void)_saveAccountChannels:(id)channels withCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  handlerCopy = handler;
  v8 = VSDefaultLogObject(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSAccountChannelsCenter _saveAccountChannels:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__VSAccountChannelsCenter__saveAccountChannels_withCompletionHandler___block_invoke;
  block[3] = &unk_278B73848;
  block[4] = self;
  v13 = channelsCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = channelsCopy;
  dispatch_async(serialQueue, block);
}

void __70__VSAccountChannelsCenter__saveAccountChannels_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveAccountChannels:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__VSAccountChannelsCenter__saveAccountChannels_withCompletionHandler___block_invoke_2;
    v4[3] = &unk_278B737F8;
    v6 = v3;
    v5 = v2;
    VSPerformCompletionHandler(v4);
  }
}

- (void)_removeSavedAccountChannelsWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VSDefaultLogObject(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSAccountChannelsCenter _removeSavedAccountChannelsWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__VSAccountChannelsCenter__removeSavedAccountChannelsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B73758;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(serialQueue, v8);
}

void __76__VSAccountChannelsCenter__removeSavedAccountChannelsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeSavedAccountChannels];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__VSAccountChannelsCenter__removeSavedAccountChannelsWithCompletionHandler___block_invoke_2;
    v4[3] = &unk_278B737F8;
    v6 = v3;
    v5 = v2;
    VSPerformCompletionHandler(v4);
  }
}

- (NSURL)directoryURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _defaultDirectoryURL = selfCopy->_directoryURL;
  if (!_defaultDirectoryURL)
  {
    _defaultDirectoryURL = [objc_opt_class() _defaultDirectoryURL];
    objc_storeStrong(&selfCopy->_directoryURL, _defaultDirectoryURL);
  }

  objc_sync_exit(selfCopy);

  if (!_defaultDirectoryURL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return _defaultDirectoryURL;
}

- (NSString)fileName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _defaultFileName = selfCopy->_fileName;
  if (!_defaultFileName)
  {
    _defaultFileName = [objc_opt_class() _defaultFileName];
    objc_storeStrong(&selfCopy->_fileName, _defaultFileName);
  }

  objc_sync_exit(selfCopy);

  if (!_defaultFileName)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return _defaultFileName;
}

- (NSUndoManager)undoManager
{
  accountStore = [(VSAccountChannelsCenter *)self accountStore];
  undoManager = [accountStore undoManager];

  return undoManager;
}

- (void)setUndoManager:(id)manager
{
  managerCopy = manager;
  accountStore = [(VSAccountChannelsCenter *)self accountStore];
  [accountStore setUndoManager:managerCopy];
}

- (void)fetchAccountChannelsWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VSDefaultLogObject(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSAccountChannelsCenter fetchAccountChannelsWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  serialQueue = [(VSAccountChannelsCenter *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B73758;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(serialQueue, v8);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278B73988;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchAccountsWithCompletionHandler:v4];
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_3;
  block[3] = &unk_278B73848;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_278B73960;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58;
  v4[3] = &unk_278B73910;
  v5 = *(a1 + 48);
  [v2 unwrapObject:v6 error:v4];
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 identityProviderID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_5;
    v13[3] = &unk_278B74A68;
    v6 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v4;
    v15 = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54;
    v11[3] = &unk_278B73938;
    v12 = *(a1 + 40);
    v7 = v4;
    [v5 conditionallyUnwrapObject:v13 otherwise:v11];
  }

  else
  {
    v8 = VSErrorLogObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4_cold_1();
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_56;
    v9[3] = &unk_278B73938;
    v10 = *(a1 + 40);
    VSPerformCompletionHandler(v9);
    v7 = v10;
  }
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _storeIdentityProviderForAccount:v4];
  v7 = [*(a1 + 32) _savedAccountChannelsForIdentityProviderID:v5 storeIdentityProvider:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_6;
  v9[3] = &unk_278B73758;
  v10 = v7;
  v11 = *(a1 + 48);
  v8 = v7;
  VSPerformCompletionHandler(v9);
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_6(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning account channels: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54(uint64_t a1)
{
  v2 = VSErrorLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54_cold_1();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_55;
  v3[3] = &unk_278B73938;
  v4 = *(a1 + 32);
  VSPerformCompletionHandler(v3);
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_55(uint64_t a1)
{
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning nil account channels due to no identity provider ID.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_56(uint64_t a1)
{
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning nil account channels due to no first account.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58_cold_1();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_59;
  v5[3] = &unk_278B73938;
  v6 = *(a1 + 32);
  VSPerformCompletionHandler(v5);
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_59(uint64_t a1)
{
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning nil account channels due to error.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_storeIdentityProviderForAccount:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Serialized account channels successfuly loaded but provider IDs (%@ vs %@) do not match those expected. Removing serialized account channels file and returning account channels object containing just the provider ID.", &v4, 0x16u);
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeLocallySavedAccountChannels
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end