@interface RMProfileStore
+ (id)profileStoreForOwner:(id)owner;
+ (id)profileStoreForOwner:(id)owner scope:(int64_t)scope;
- (BOOL)_removeDeclarationKeysForPayload:(id)payload error:(id *)error;
- (BOOL)_saveDeclarationKeysForPayload:(id)payload keys:(id)keys error:(id *)error;
- (RMProfileStore)initWithOwner:(id)owner scope:(int64_t)scope;
- (id)_createStoreReturningError:(id *)error;
- (id)_metadataKeyForPayload:(id)payload;
- (id)_newDeclarationsMap:(id)map error:(id *)error;
- (id)_oldDeclarationKeysForPayload:(id)payload store:(id)store error:(id *)error;
- (void)_applyDeclarationsForPayload:(id)payload declarations:(id)declarations completionHandler:(id)handler;
- (void)_findObserverStoreWithCompletionHandler:(id)handler;
- (void)_findProviderStoreWithCompletionHandler:(id)handler;
- (void)_removeDeclarationsForPayload:(id)payload completionHandler:(id)handler;
- (void)declarationIdentifiersForProfilePayloadIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)installProfile:(id)profile declarations:(id)declarations completionHandler:(id)handler;
- (void)observerStoreWithCompletionHandler:(id)handler;
- (void)providerStoreWithCompletionHandler:(id)handler;
- (void)removeProfile:(id)profile completionHandler:(id)handler;
@end

@implementation RMProfileStore

+ (id)profileStoreForOwner:(id)owner
{
  v3 = MEMORY[0x277D45F68];
  ownerCopy = owner;
  currentManagedDevice = [v3 currentManagedDevice];
  isSharediPad = [currentManagedDevice isSharediPad];

  v7 = [[RMProfileStore alloc] initWithOwner:ownerCopy scope:isSharediPad ^ 1u];

  return v7;
}

+ (id)profileStoreForOwner:(id)owner scope:(int64_t)scope
{
  ownerCopy = owner;
  v6 = [[RMProfileStore alloc] initWithOwner:ownerCopy scope:scope];

  return v6;
}

- (RMProfileStore)initWithOwner:(id)owner scope:(int64_t)scope
{
  ownerCopy = owner;
  v13.receiver = self;
  v13.super_class = RMProfileStore;
  v7 = [(RMProfileStore *)&v13 init];
  if (v7)
  {
    v8 = [ownerCopy copy];
    ownerIdentifier = v7->_ownerIdentifier;
    v7->_ownerIdentifier = v8;

    v7->_scope = scope;
    v10 = dispatch_queue_create("RMProfileStore", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;
  }

  return v7;
}

- (void)providerStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  providerStore = [(RMProfileStore *)self providerStore];

  if (providerStore)
  {
    providerStore2 = [(RMProfileStore *)self providerStore];
    handlerCopy[2](handlerCopy, providerStore2, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke;
    v7[3] = &unk_279B05BF0;
    v7[4] = self;
    v8 = handlerCopy;
    [(RMProfileStore *)self _findProviderStoreWithCompletionHandler:v7];
  }
}

void __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
    return;
  }

  [*(a1 + 32) setProviderStore:a2];
  v5 = [*(a1 + 32) providerStore];

  if (v5)
  {
LABEL_8:
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) providerStore];
    (*(v10 + 16))(v10, v11, 0);

    return;
  }

  v6 = *(a1 + 32);
  v13 = 0;
  v7 = [v6 _createStoreReturningError:&v13];
  v8 = v13;
  [*(a1 + 32) setProviderStore:v7];

  v9 = [*(a1 + 32) providerStore];

  if (v9)
  {

    goto LABEL_8;
  }

  v12 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)installProfile:(id)profile declarations:(id)declarations completionHandler:(id)handler
{
  profileCopy = profile;
  declarationsCopy = declarations;
  handlerCopy = handler;
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore installProfile:profileCopy declarations:declarationsCopy completionHandler:?];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke;
  v15[3] = &unk_279B05C40;
  v15[4] = self;
  v16 = profileCopy;
  v17 = declarationsCopy;
  v18 = handlerCopy;
  v12 = declarationsCopy;
  v13 = profileCopy;
  v14 = handlerCopy;
  [(RMProfileStore *)self providerStoreWithCompletionHandler:v15];
}

void __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2;
  v11[3] = &unk_279B05C18;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v17 = a1[7];
  v15 = a1[5];
  v16 = a1[6];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];

    return [v2 _applyDeclarationsForPayload:v3 declarations:v4 completionHandler:v5];
  }

  else
  {
    v7 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2_cold_1(a1);
    }

    return (*(a1[9] + 16))();
  }
}

- (void)removeProfile:(id)profile completionHandler:(id)handler
{
  profileCopy = profile;
  handlerCopy = handler;
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore removeProfile:completionHandler:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__RMProfileStore_removeProfile_completionHandler___block_invoke;
  v11[3] = &unk_279B05C90;
  v12 = profileCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = profileCopy;
  v10 = handlerCopy;
  [(RMProfileStore *)self providerStoreWithCompletionHandler:v11];
}

void __50__RMProfileStore_removeProfile_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2;
  block[3] = &unk_279B05C68;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v16 = a1[6];
  v15 = a1[5];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[7];
    v4 = a1[8];

    return [v2 _removeDeclarationsForPayload:v3 completionHandler:v4];
  }

  else
  {
    v6 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2_cold_1(a1);
    }

    return (*(a1[8] + 16))();
  }
}

- (void)observerStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  observerStore = [(RMProfileStore *)self observerStore];

  if (observerStore)
  {
    observerStore2 = [(RMProfileStore *)self observerStore];
    handlerCopy[2](handlerCopy, observerStore2, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__RMProfileStore_observerStoreWithCompletionHandler___block_invoke;
    v7[3] = &unk_279B05BC0;
    v7[4] = self;
    v8 = handlerCopy;
    [(RMProfileStore *)self _findObserverStoreWithCompletionHandler:v7];
  }
}

void __53__RMProfileStore_observerStoreWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    [*(a1 + 32) setObserverStore:a2];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) observerStore];
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (void)declarationIdentifiersForProfilePayloadIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_279B05CB8;
  v11 = identifiersCopy;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = identifiersCopy;
  v9 = handlerCopy;
  [(RMProfileStore *)self observerStoreWithCompletionHandler:v10];
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2;
  block[3] = &unk_279B05C68;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v16 = a1[6];
  v15 = a1[5];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v3 = *(a1 + 56);
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v28;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = *(a1 + 40);
          v10 = [v9 observerStore];
          v26 = 0;
          v11 = [v9 _oldDeclarationKeysForPayload:v8 store:v10 error:&v26];
          v12 = v26;

          if (v12)
          {
            v20 = [MEMORY[0x277D45F58] profileStore];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1();
            }

            (*(*(a1 + 64) + 16))();
            goto LABEL_21;
          }

          v13 = [v11 allObjects];
          [v2 addObjectsFromArray:v13];
        }

        v5 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v2;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * j) declarationIdentifier];
          [v12 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v16);
    }

    (*(*(a1 + 64) + 16))();
LABEL_21:
  }

  else
  {
    v21 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_2(a1);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_findProviderStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _findProviderStoreWithCompletionHandler:];
  }

  scope = [(RMProfileStore *)self scope];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_279B05CE0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [RMProviderStore storesWithScope:scope completionHandler:v8];
}

void __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = v6;
      v20 = v5;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if ([v12 type] == 2)
          {
            v13 = [v12 metadataValueForKey:@"RMProfileStoreIdentifier" error:0];
            v14 = [*(a1 + 32) ownerIdentifier];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              v16 = v12;

              goto LABEL_17;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_17:
      v6 = v19;
      v5 = v20;
    }

    else
    {
      v16 = 0;
    }

    v18 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_1(v16);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_findObserverStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _findObserverStoreWithCompletionHandler:];
  }

  scope = [(RMProfileStore *)self scope];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_279B05CE0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [RMObserverStore storesWithScope:scope completionHandler:v8];
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v17 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_3(a1);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v24 = v6;
  v25 = v5;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {
LABEL_12:

LABEL_20:
    v20 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_2(a1);
    }

    v21 = MEMORY[0x277D45F40];
    v22 = *(a1 + 40);
    v18 = [*(a1 + 32) ownerIdentifier];
    v23 = [v21 createManagementSourceNotFoundErrorWithIdentifier:v18];
    (*(v22 + 16))(v22, 0, v23);

    goto LABEL_23;
  }

  v10 = v9;
  v11 = *v27;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v27 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v26 + 1) + 8 * v12);
    if ([v13 type] != 2)
    {
      goto LABEL_10;
    }

    v14 = [v13 metadataValueForKey:@"RMProfileStoreIdentifier" error:0];
    v15 = [*(a1 + 32) ownerIdentifier];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      break;
    }

LABEL_10:
    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v18 = v13;

  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_1(v18);
  }

  (*(*(a1 + 40) + 16))();
LABEL_23:
  v7 = v24;
  v5 = v25;

LABEL_24:
}

- (id)_createStoreReturningError:(id *)error
{
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _createStoreReturningError:];
  }

  v6 = objc_opt_new();
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2;
  v42 = __Block_byref_object_dispose__2;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  scope = [(RMProfileStore *)self scope];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__RMProfileStore__createStoreReturningError___block_invoke;
  v28[3] = &unk_279B05D08;
  v30 = &v38;
  v31 = &v32;
  v8 = v6;
  v29 = v8;
  [RMProviderStore createStoreWithType:2 scope:scope defaultToInteractive:0 dataSeparated:0 options:0 completionHandler:v28];
  [v8 waitForCompletion];
  if (v39[5])
  {
    profileStore2 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(profileStore2, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _createStoreReturningError:];
    }

    if (error && (v10 = v39[5]) != 0)
    {
      v11 = 0;
      *error = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v33[5];
    ownerIdentifier = [(RMProfileStore *)self ownerIdentifier];
    v27 = 0;
    v14 = [v12 setMetadataValue:ownerIdentifier forKey:@"RMProfileStoreIdentifier" error:&v27];
    v15 = v27;

    if (v14)
    {
      v11 = v33[5];
    }

    else
    {
      profileStore3 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(profileStore3, OS_LOG_TYPE_ERROR))
      {
        [RMProfileStore _createStoreReturningError:];
      }

      v17 = objc_opt_new();
      identifier = [v33[5] identifier];
      scope2 = [(RMProfileStore *)self scope];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __45__RMProfileStore__createStoreReturningError___block_invoke_26;
      v24[3] = &unk_279B05D30;
      v26 = &v38;
      v20 = v17;
      v25 = v20;
      [RMProviderStore removeStoreWithIdentifier:identifier scope:scope2 completionHandler:v24];

      [v20 waitForCompletion];
      if (v39[5])
      {
        profileStore4 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(profileStore4, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _createStoreReturningError:];
        }
      }

      if (error && v15)
      {
        v22 = v15;
        *error = v15;
      }

      v11 = 0;
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v11;
}

void __45__RMProfileStore__createStoreReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  [*(a1 + 32) complete];
}

void __45__RMProfileStore__createStoreReturningError___block_invoke_26(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) complete];
}

- (void)_applyDeclarationsForPayload:(id)payload declarations:(id)declarations completionHandler:(id)handler
{
  v104 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  declarationsCopy = declarations;
  handlerCopy = handler;
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _applyDeclarationsForPayload:declarationsCopy declarations:? completionHandler:?];
  }

  v63 = objc_opt_new();
  v95 = 0;
  v62 = [(RMProfileStore *)self _newDeclarationsMap:declarationsCopy error:&v95];
  v8 = v95;
  if (v8)
  {
    v9 = v8;
    profileStore2 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(profileStore2, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _applyDeclarationsForPayload:declarations:completionHandler:];
    }

    handlerCopy[2](handlerCopy, v9);
  }

  else
  {
    v11 = MEMORY[0x277CBEB98];
    allKeys = [v62 allKeys];
    v55 = [v11 setWithArray:allKeys];

    providerStore = [(RMProfileStore *)self providerStore];
    v94 = 0;
    v54 = [(RMProfileStore *)self _oldDeclarationKeysForPayload:payloadCopy store:providerStore error:&v94];
    v9 = v94;

    if (v9)
    {
      profileStore3 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(profileStore3, OS_LOG_TYPE_ERROR))
      {
        __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1();
      }

      handlerCopy[2](handlerCopy, v9);
    }

    else
    {
      v64 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v55, "count")}];
      v93 = 0;
      v91 = 0;
      v92 = 0;
      [RMStoreDeclarationKey synchronizeOldKeys:v54 newKeys:v55 returningUnchangedKeys:&v93 returningApplyKeys:&v92 returningRemoveKeys:&v91];
      v53 = v93;
      v15 = v92;
      v52 = v91;
      profileStore4 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(profileStore4, OS_LOG_TYPE_DEBUG))
      {
        [RMProfileStore _applyDeclarationsForPayload:v15 declarations:? completionHandler:?];
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = v15;
      v17 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
      if (v17)
      {
        v60 = *v88;
        do
        {
          v18 = 0;
          do
          {
            if (*v88 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v87 + 1) + 8 * v18);
            v20 = objc_autoreleasePoolPush();
            applyKey = [v19 applyKey];
            v22 = MEMORY[0x277D46018];
            v23 = [v62 objectForKeyedSubscript:applyKey];
            v24 = [v22 loadData:v23 serializationType:1 error:0];

            v25 = objc_opt_new();
            v81 = 0;
            v82 = &v81;
            v83 = 0x3032000000;
            v84 = __Block_byref_object_copy__2;
            v85 = __Block_byref_object_dispose__2;
            v86 = 0;
            profileStore5 = [MEMORY[0x277D45F58] profileStore];
            if (os_log_type_enabled(profileStore5, OS_LOG_TYPE_DEBUG))
            {
              declarationIdentifier = [v24 declarationIdentifier];
              [(RMProfileStore *)declarationIdentifier _applyDeclarationsForPayload:v101 declarations:&v102 completionHandler:profileStore5];
            }

            providerStore2 = [(RMProfileStore *)self providerStore];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke;
            v77[3] = &unk_279B05D58;
            v29 = v24;
            v78 = v29;
            v80 = &v81;
            v30 = v25;
            v79 = v30;
            [providerStore2 saveDeclaration:v29 completionHandler:v77];

            [v30 waitForCompletion];
            if (v82[5])
            {
              profileStore6 = [MEMORY[0x277D45F58] profileStore];
              if (os_log_type_enabled(profileStore6, OS_LOG_TYPE_ERROR))
              {
                declarationIdentifier2 = [applyKey declarationIdentifier];
                *buf = 138543618;
                v98 = declarationIdentifier2;
                v99 = 2114;
                v100 = 0;
                _os_log_error_impl(&dword_261E36000, profileStore6, OS_LOG_TYPE_ERROR, "Failed to save declaration %{public}@: %{public}@", buf, 0x16u);
              }

              declarationIdentifier3 = [applyKey declarationIdentifier];
              [v63 addObject:declarationIdentifier3];

              replaceKey = [v19 replaceKey];
              LOBYTE(declarationIdentifier3) = replaceKey == 0;

              if ((declarationIdentifier3 & 1) == 0)
              {
                replaceKey2 = [v19 replaceKey];
                [v64 addObject:replaceKey2];
              }
            }

            else
            {
              [v64 addObject:applyKey];
            }

            _Block_object_dispose(&v81, 8);
            objc_autoreleasePoolPop(v20);
            ++v18;
          }

          while (v17 != v18);
          v17 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
        }

        while (v17);
      }

      [v64 unionSet:v53];
      profileStore7 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(profileStore7, OS_LOG_TYPE_DEBUG))
      {
        [RMProfileStore _applyDeclarationsForPayload:v52 declarations:? completionHandler:?];
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v61 = v52;
      v37 = [v61 countByEnumeratingWithState:&v73 objects:v96 count:16];
      if (v37)
      {
        v38 = *v74;
        do
        {
          v39 = 0;
          do
          {
            if (*v74 != v38)
            {
              objc_enumerationMutation(v61);
            }

            v40 = *(*(&v73 + 1) + 8 * v39);
            v41 = objc_autoreleasePoolPush();
            v42 = objc_opt_new();
            v81 = 0;
            v82 = &v81;
            v83 = 0x3032000000;
            v84 = __Block_byref_object_copy__2;
            v85 = __Block_byref_object_dispose__2;
            v86 = 0;
            providerStore3 = [(RMProfileStore *)self providerStore];
            declarationIdentifier4 = [v40 declarationIdentifier];
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32;
            v70[3] = &unk_279B05D58;
            v70[4] = v40;
            v72 = &v81;
            v45 = v42;
            v71 = v45;
            [providerStore3 deleteDeclarationWithIdentifier:declarationIdentifier4 completionHandler:v70];

            [v45 waitForCompletion];
            if (v82[5])
            {
              profileStore8 = [MEMORY[0x277D45F58] profileStore];
              if (os_log_type_enabled(profileStore8, OS_LOG_TYPE_ERROR))
              {
                declarationIdentifier5 = [v40 declarationIdentifier];
                *buf = 138543618;
                v98 = declarationIdentifier5;
                v99 = 2114;
                v100 = 0;
                _os_log_error_impl(&dword_261E36000, profileStore8, OS_LOG_TYPE_ERROR, "Failed to delete declaration %{public}@: %{public}@", buf, 0x16u);
              }

              declarationIdentifier6 = [v40 declarationIdentifier];
              [v63 addObject:declarationIdentifier6];

              [v64 addObject:v40];
            }

            _Block_object_dispose(&v81, 8);
            objc_autoreleasePoolPop(v41);
            ++v39;
          }

          while (v37 != v39);
          v37 = [v61 countByEnumeratingWithState:&v73 objects:v96 count:16];
        }

        while (v37);
      }

      v69 = 0;
      [(RMProfileStore *)self _saveDeclarationKeysForPayload:payloadCopy keys:v64 error:&v69];
      v49 = v69;
      if (v49)
      {
        profileStore9 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(profileStore9, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _applyDeclarationsForPayload:declarations:completionHandler:];
        }
      }

      providerStore4 = [(RMProfileStore *)self providerStore];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33;
      v66[3] = &unk_279B05808;
      v9 = v49;
      v67 = v9;
      v68 = handlerCopy;
      [providerStore4 applyChangesWithCompletionHandler:v66];
    }
  }
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(a1 + 40) complete];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(a1 + 40) complete];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_removeDeclarationsForPayload:(id)payload completionHandler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  handlerCopy = handler;
  profileStore = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _removeDeclarationsForPayload:completionHandler:];
  }

  v30 = objc_opt_new();
  providerStore = [(RMProfileStore *)self providerStore];
  v50 = 0;
  v25 = [(RMProfileStore *)self _oldDeclarationKeysForPayload:payloadCopy store:providerStore error:&v50];
  v7 = v50;

  if (!v7)
  {
    v29 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v25, "count")}];
    profileStore2 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(profileStore2, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _removeDeclarationsForPayload:v25 completionHandler:?];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v25;
    v10 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v10)
    {
      v11 = *v47;
      do
      {
        v12 = 0;
        do
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v46 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = objc_opt_new();
          v40 = 0;
          v41 = &v40;
          v42 = 0x3032000000;
          v43 = __Block_byref_object_copy__2;
          v44 = __Block_byref_object_dispose__2;
          v45 = 0;
          providerStore2 = [(RMProfileStore *)self providerStore];
          declarationIdentifier = [v13 declarationIdentifier];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke;
          v37[3] = &unk_279B05D58;
          v37[4] = v13;
          v39 = &v40;
          v18 = v15;
          v38 = v18;
          [providerStore2 deleteDeclarationWithIdentifier:declarationIdentifier completionHandler:v37];

          [v18 waitForCompletion];
          if (v41[5])
          {
            profileStore3 = [MEMORY[0x277D45F58] profileStore];
            if (os_log_type_enabled(profileStore3, OS_LOG_TYPE_ERROR))
            {
              declarationIdentifier2 = [v13 declarationIdentifier];
              *buf = 138543618;
              v52 = declarationIdentifier2;
              v53 = 2114;
              v54 = 0;
              _os_log_error_impl(&dword_261E36000, profileStore3, OS_LOG_TYPE_ERROR, "Failed to delete declaration %{public}@: %{public}@", buf, 0x16u);
            }

            declarationIdentifier3 = [v13 declarationIdentifier];
            [v30 addObject:declarationIdentifier3];

            [v29 addObject:v13];
          }

          _Block_object_dispose(&v40, 8);
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v10);
    }

    if ([v29 count])
    {
      v35 = 0;
      [(RMProfileStore *)self _saveDeclarationKeysForPayload:payloadCopy keys:v29 error:&v35];
      v22 = v35;
      if (v22)
      {
        profileStore4 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(profileStore4, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _applyDeclarationsForPayload:declarations:completionHandler:];
        }

LABEL_27:
      }
    }

    else
    {
      v36 = 0;
      [(RMProfileStore *)self _removeDeclarationKeysForPayload:payloadCopy error:&v36];
      v22 = v36;
      if (v22)
      {
        profileStore4 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(profileStore4, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _removeDeclarationsForPayload:completionHandler:];
        }

        goto LABEL_27;
      }
    }

    providerStore3 = [(RMProfileStore *)self providerStore];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke_34;
    v32[3] = &unk_279B05808;
    v7 = v22;
    v33 = v7;
    v34 = handlerCopy;
    [providerStore3 applyChangesWithCompletionHandler:v32];

    goto LABEL_29;
  }

  profileStore5 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore5, OS_LOG_TYPE_ERROR))
  {
    __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1();
  }

  (*(handlerCopy + 2))(handlerCopy, v7);
LABEL_29:
}

void __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(a1 + 40) complete];
}

void __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_newDeclarationsMap:(id)map error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = mapCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
    obj = v8;
    v11 = *v26;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      v24 = 0;
      v15 = [MEMORY[0x277D46018] loadData:v13 serializationType:1 error:&v24];
      v16 = v24;
      if (v16)
      {
        break;
      }

      providerStore = [(RMProfileStore *)self providerStore];
      v18 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"ProfileSubscriber" store:providerStore declaration:v15];

      [v7 setObject:v13 forKey:v18];
      objc_autoreleasePoolPop(v14);
      if (v10 == ++v12)
      {
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v16;

    objc_autoreleasePoolPop(v14);
    v8 = obj;

    if (errorCopy)
    {
      v20 = v19;
      v7 = 0;
      *errorCopy = v20;
      v19 = v20;
      goto LABEL_12;
    }

    v7 = 0;
  }

  else
  {
LABEL_9:
    v19 = 0;
    v20 = v8;
LABEL_12:
  }

  return v7;
}

- (id)_oldDeclarationKeysForPayload:(id)payload store:(id)store error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v9 = [(RMProfileStore *)self _metadataKeyForPayload:payload];
  v30 = 0;
  v10 = [storeCopy metadataValueForKey:v9 error:&v30];
  v11 = v30;
  if (v11)
  {
    profileStore = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(profileStore, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
    }

    if (error)
    {
      v13 = v11;
      *error = v11;
    }

    goto LABEL_23;
  }

  if (!v10)
  {
    profileStore2 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(profileStore2, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    profileStore2 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(profileStore2, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
    }

LABEL_22:

LABEL_23:
    v22 = objc_opt_new();
    goto LABEL_24;
  }

  v25 = storeCopy;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [RMStoreDeclarationKey newDeclarationKey:*(*(&v26 + 1) + 8 * i)];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v17);
  }

  profileStore3 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(profileStore3, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
  }

  v22 = [MEMORY[0x277CBEB98] setWithArray:v14];

  storeCopy = v25;
LABEL_24:

  return v22;
}

- (BOOL)_saveDeclarationKeysForPayload:(id)payload keys:(id)keys error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  keysCopy = keys;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = keysCopy;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v26 + 1) + 8 * v15) key];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v17 = [(RMProfileStore *)self _metadataKeyForPayload:payloadCopy];
  providerStore = [(RMProfileStore *)self providerStore];
  v25 = 0;
  v19 = [providerStore setMetadataValue:v10 forKey:v17 error:&v25];
  v20 = v25;

  profileStore = [MEMORY[0x277D45F58] profileStore];
  v22 = profileStore;
  if (v19)
  {
    if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _saveDeclarationKeysForPayload:keys:error:];
    }
  }

  else
  {
    if (os_log_type_enabled(profileStore, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _saveDeclarationKeysForPayload:keys:error:];
    }

    if (error && v20)
    {
      v23 = v20;
      *error = v20;
    }
  }

  return v19;
}

- (BOOL)_removeDeclarationKeysForPayload:(id)payload error:(id *)error
{
  v6 = [(RMProfileStore *)self _metadataKeyForPayload:payload];
  providerStore = [(RMProfileStore *)self providerStore];
  v14 = 0;
  v8 = [providerStore setMetadataValue:0 forKey:v6 error:&v14];
  v9 = v14;

  profileStore = [MEMORY[0x277D45F58] profileStore];
  v11 = profileStore;
  if (v8)
  {
    if (os_log_type_enabled(profileStore, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _removeDeclarationKeysForPayload:error:];
    }
  }

  else
  {
    if (os_log_type_enabled(profileStore, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _removeDeclarationKeysForPayload:error:];
    }

    if (error && v9)
    {
      v12 = v9;
      *error = v9;
    }
  }

  return v8;
}

- (id)_metadataKeyForPayload:(id)payload
{
  v3 = [payload dataUsingEncoding:4];
  dMCSHA256Hash = [v3 DMCSHA256Hash];
  dMCHexString = [dMCSHA256Hash DMCHexString];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"RMProfileStore", dMCHexString];

  return v6;
}

- (void)installProfile:(uint64_t)a1 declarations:(void *)a2 completionHandler:.cold.1(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) ownerIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)removeProfile:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) ownerIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 40) ownerIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_findProviderStoreWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_0(a1) ownerIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_findObserverStoreWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_0(a1) ownerIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_0(a1) ownerIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_createStoreReturningError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_applyDeclarationsForPayload:(void *)a1 declarations:completionHandler:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_applyDeclarationsForPayload:(void *)a1 declarations:completionHandler:.cold.4(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_applyDeclarationsForPayload:(void *)a3 declarations:(os_log_t)log completionHandler:.cold.5(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&dword_261E36000, log, OS_LOG_TYPE_DEBUG, "Saving declaration %{public}@", buf, 0xCu);
}

- (void)_applyDeclarationsForPayload:(void *)a1 declarations:completionHandler:.cold.6(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_0(a1) declarationIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_0(a1) declarationIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_removeDeclarationsForPayload:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeDeclarationsForPayload:(void *)a1 completionHandler:.cold.3(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_oldDeclarationKeysForPayload:store:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_oldDeclarationKeysForPayload:store:error:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_saveDeclarationKeysForPayload:keys:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_removeDeclarationKeysForPayload:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end