@interface MCMCommandOperationDelete
+ (BOOL)deleteContainerRootURL:(id)l userIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier preferDirectDelete:(BOOL)delete error:(id *)error;
+ (Class)incomingMessageClass;
+ (id)commandForOperationDeleteWithContainerIdentities:(id)identities removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise;
- (BOOL)_writeDeleteManifestsForItems:(id)items error:(id *)error;
- (BOOL)preflightClientAllowed;
- (MCMCommandOperationDelete)initWithContainerIdentities:(id)identities waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise;
- (MCMCommandOperationDelete)initWithManifests:(id)manifests waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise;
- (MCMCommandOperationDelete)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (id)_codeSignIdentifiersToRemoveFor:(id)for amendingCumulativeIdentifiers:(id)identifiers;
- (id)_containerIdentities;
- (id)_containersToDeleteRecursivelyStartingWithContainerIdentities:(id)identities error:(id *)error;
- (id)_deleteItems:(id)items directDelete:(BOOL)delete error:(id *)error;
- (id)_deleteManifest:(id)manifest;
- (id)_getManifestWithContainerIdentity:(id)identity;
- (id)_getOrCreateManifestWithContainerIdentity:(id)identity;
- (id)_groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:(id)identifiers;
- (id)_initWithContainerIdentities:(id)identities manifests:(id)manifests waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise;
- (id)_replyFromRelayToDaemonWithContainerIdentities:(id)identities;
- (void)_deleteManifestForContainerIdentity:(id)identity;
- (void)_relayContainerIdentities:(id)identities andAmendResult:(id)result;
- (void)_routeContainersToHandle:(id *)handle toRelay:(id *)relay;
- (void)execute;
@end

@implementation MCMCommandOperationDelete

- (BOOL)_writeDeleteManifestsForItems:(id)items error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  itemsCopy = items;
  v6 = [itemsCopy countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    errorCopy = error;
    obj = itemsCopy;
    v8 = 0;
    v9 = *v37;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * v10);
        cacheEntry = [v12 cacheEntry];
        containerPath = [cacheEntry containerPath];
        userIdentity = [containerPath userIdentity];

        context = [(MCMCommand *)self context];
        userIdentityCache = [context userIdentityCache];
        v18 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

        manifest = [v12 manifest];
        v30 = v11;
        v20 = [manifest deleteManifestAfterWritingUsingLibraryRepairForUser:v18 error:&v30];
        v8 = v30;

        v21 = v20 != 0;
        if (!v20)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            cacheEntry2 = [v12 cacheEntry];
            containerIdentity = [cacheEntry2 containerIdentity];
            *buf = 138412546;
            v32 = v8;
            v33 = 2112;
            v34 = containerIdentity;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to write delete manifest; error = %@, identity = %@", buf, 0x16u);
          }

          itemsCopy = obj;
          goto LABEL_13;
        }

        [v12 setManifest:v20];

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      itemsCopy = obj;
      v7 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_13:

    if (errorCopy && v8)
    {
      v23 = v8;
      *errorCopy = v8;
    }
  }

  else
  {

    v8 = 0;
    v21 = 1;
  }

  return v21;
}

- (void)_deleteManifestForContainerIdentity:(id)identity
{
  identityCopy = identity;
  manifests = [(MCMCommandOperationDelete *)self manifests];
  v5 = [manifests count];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MCMCommandOperationDelete *)self _getManifestWithContainerIdentity:identityCopy];
      if (v6)
      {
        v7 = [(MCMCommandOperationDelete *)self _deleteManifest:v6];
        if (v7)
        {
          manifests2 = [(MCMCommandOperationDelete *)self manifests];
          [manifests2 removeObject:v6];
        }
      }
    }
  }
}

- (id)_deleteManifest:(id)manifest
{
  v20 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  concreteContainerIdentity = [manifestCopy concreteContainerIdentity];
  userIdentity = [concreteContainerIdentity userIdentity];
  v9 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  v15 = 0;
  v10 = [manifestCopy deleteManifestAfterRemovingUsingLibraryRepairForUser:v9 error:&v15];
  v11 = v15;
  if (!v10)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      concreteContainerIdentity2 = [manifestCopy concreteContainerIdentity];
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = concreteContainerIdentity2;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Could not remove delete manifest; error = %@, identity = %@", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_getOrCreateManifestWithContainerIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(MCMCommandOperationDelete *)self _getManifestWithContainerIdentity:identityCopy];
  if (!v5)
  {
    v6 = [MCMDeleteManifest alloc];
    context = [(MCMCommand *)self context];
    userIdentityCache = [context userIdentityCache];
    v5 = [(MCMDeleteManifest *)v6 initWithConcreteContainerIdentity:identityCopy userIdentityCache:userIdentityCache];
  }

  return v5;
}

- (id)_getManifestWithContainerIdentity:(id)identity
{
  v18 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  manifests = [(MCMCommandOperationDelete *)self manifests];
  v6 = [manifests countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(manifests);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        concreteContainerIdentity = [v9 concreteContainerIdentity];
        v11 = [concreteContainerIdentity isEqualToContainerIdentity:identityCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [manifests countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:(id)identifiers
{
  v45 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v25 = objc_opt_new();
  v5 = [gCodeSigningMapping copyReferenceCountSetForContainerClass:7];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = identifiersCopy;
  v23 = [obj countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v23)
  {
    v22 = *v42;
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        v8 = [gCodeSigningMapping groupContainerIdentifiersAssociatedWithIdentifier:v7 containerClass:7];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              [v5 removeObject:v13];
              v14 = [v5 countForObject:v13];
              if (v14)
              {
                v15 = v14;
                v16 = container_log_handle_for_category();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v30 = v13;
                  v31 = 2048;
                  v32 = v15;
                  v33 = 2112;
                  v34 = v7;
                  _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_INFO, "Ref count for [%@] will reach %lu after removing [%@]", buf, 0x20u);
                }
              }

              else
              {
                context = [(MCMCommand *)self context];
                userIdentityCache = [context userIdentityCache];
                v26[0] = MEMORY[0x1E69E9820];
                v26[1] = 3221225472;
                v26[2] = __89__MCMCommandOperationDelete__groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers___block_invoke;
                v26[3] = &unk_1E86AF8F0;
                v26[4] = self;
                v26[5] = v13;
                v28 = 7;
                v26[6] = v7;
                v27 = v25;
                [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v26];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v36 objects:v35 count:16];
          }

          while (v10);
        }

        v6 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v23);
  }

  v19 = [v25 copy];

  return v19;
}

void __89__MCMCommandOperationDelete__groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 globalConfiguration];
  v6 = [v5 staticConfig];
  v7 = [v6 configForContainerClass:*(a1 + 64)];

  v20 = 1;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) context];
  v10 = [v9 userIdentityCache];
  v11 = [MCMContainerIdentity containerIdentityWithUserIdentity:v3 identifier:v8 containerConfig:v7 platform:0 transient:0 userIdentityCache:v10 error:&v20];

  v12 = container_log_handle_for_category();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = [v3 shortDescription];
      *buf = 138412802;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "Ref count for [%@] will reach zero after removing [%@]; queueing ui=%@ for delete.", buf, 0x20u);
    }

    [*(a1 + 56) addObject:v11];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = v20;
      error_description = container_get_error_description();
      *buf = 138412802;
      v22 = v17;
      v23 = 2048;
      v24 = v18;
      v25 = 2080;
      v26 = error_description;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not generate identity for [%@] during group reconciliation; error = (%llu) %s", buf, 0x20u);
    }
  }
}

- (id)_deleteItems:(id)items directDelete:(BOOL)delete error:(id *)error
{
  deleteCopy = delete;
  v76 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  context = objc_autoreleasePoolPush();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = itemsCopy;
  v56 = [obj countByEnumeratingWithState:&v72 objects:v71 count:16];
  if (v56)
  {
    selfCopy = self;
    v9 = 0;
    v55 = *v73;
    v52 = deleteCopy;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v72 + 1) + 8 * i);
        cacheEntry = [v11 cacheEntry];
        containerPath = [cacheEntry containerPath];
        identifier = [cacheEntry identifier];
        userIdentity = [containerPath userIdentity];
        containerPathIdentifier = [containerPath containerPathIdentifier];
        containerClass = [containerPath containerClass];
        containerRootURL = [containerPath containerRootURL];
        containerIdentity = [cacheEntry containerIdentity];
        v62 = v9;
        v57 = containerRootURL;
        v58 = containerPathIdentifier;
        LODWORD(containerPathIdentifier) = [MCMCommandOperationDelete deleteContainerRootURL:containerRootURL userIdentity:userIdentity containerClass:containerClass containerPathIdentifier:containerPathIdentifier preferDirectDelete:deleteCopy error:&v62];
        v18 = v62;

        v9 = v18;
        if (containerPathIdentifier)
        {
          v19 = container_log_handle_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            path = [v57 path];
            *buf = 138412546;
            v64 = path;
            v65 = 2112;
            v66 = containerIdentity;
            _os_log_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEFAULT, "DELETED: [%@] %@", buf, 0x16u);
          }

          v21 = container_log_handle_for_category();
          if (os_signpost_enabled(v21))
          {
            codeSignInfo = [clientIdentity codeSignInfo];
            identifier2 = [codeSignInfo identifier];
            v24 = identifier2;
            *buf = 138478595;
            v25 = @"<unknown>";
            if (identifier2)
            {
              v25 = identifier2;
            }

            v64 = v58;
            v65 = 2113;
            v66 = identifier;
            v67 = 2050;
            v68 = containerClass;
            v69 = 2113;
            v70 = v25;
            _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeletedContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  clientIdentifier=%{private, signpost.description:attribute}@ ", buf, 0x2Au);
          }

          [v53 addObject:cacheEntry];
          codeSignIdentifiersToRemove = [v11 codeSignIdentifiersToRemove];
          if (codeSignIdentifiersToRemove)
          {
            v27 = codeSignIdentifiersToRemove;
            codeSignIdentifiersToRemove2 = [v11 codeSignIdentifiersToRemove];
            v29 = [codeSignIdentifiersToRemove2 count];

            if (v29)
            {
              v30 = container_log_handle_for_category();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                codeSignIdentifiersToRemove3 = [v11 codeSignIdentifiersToRemove];
                *buf = 138412290;
                v64 = codeSignIdentifiersToRemove3;
                _os_log_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_DEFAULT, "Removing codesign info for [%@]", buf, 0xCu);
              }

              v32 = gCodeSigningMapping;
              codeSignIdentifiersToRemove4 = [v11 codeSignIdentifiersToRemove];
              v34 = [v32 removeCodeSigningDictionaryForIdentifiers:codeSignIdentifiersToRemove4];
            }
          }

          manifest = [v11 manifest];

          if (manifest)
          {
            manifest2 = [v11 manifest];
            v37 = selfCopy;
            v38 = [(MCMCommandOperationDelete *)selfCopy _deleteManifest:manifest2];
            v39 = identifier;
          }

          else
          {
            manifest2 = container_log_handle_for_category();
            v37 = selfCopy;
            v39 = identifier;
            if (os_log_type_enabled(manifest2, OS_LOG_TYPE_DEBUG))
            {
              containerIdentity2 = [cacheEntry containerIdentity];
              *buf = 138412290;
              v64 = containerIdentity2;
              _os_log_debug_impl(&dword_1DF2C3000, manifest2, OS_LOG_TYPE_DEBUG, "No delete manifest URL; identity = %@", buf, 0xCu);
            }
          }

          context2 = [(MCMCommand *)v37 context];
          containerCache = [context2 containerCache];
          transient = [containerPath transient];
          v61 = 0;
          v43 = [containerCache removeContainerForUserIdentity:userIdentity contentClass:containerClass identifier:v39 transient:transient error:&v61];
          v9 = v61;

          if (v43)
          {
            deleteCopy = v52;
          }

          else
          {
            v44 = container_log_handle_for_category();
            deleteCopy = v52;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v64 = containerIdentity;
              v65 = 2112;
              v66 = v9;
              _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Failed to remove from cache %@; error = %@", buf, 0x16u);
            }

            v9 = 0;
          }
        }

        else
        {
          v39 = identifier;
        }
      }

      v56 = [obj countByEnumeratingWithState:&v72 objects:v71 count:16];
    }

    while (v56);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (error && v9)
  {
    v46 = v9;
    *error = v9;
  }

  return v53;
}

- (id)_containersToDeleteRecursivelyStartingWithContainerIdentities:(id)identities error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(identitiesCopy, "count")}];
  allObjects = [identitiesCopy allObjects];
  v8 = [allObjects mutableCopy];

  v34 = identitiesCopy;
  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(identitiesCopy, "count")}];
  v38 = [MEMORY[0x1E695DFA8] set];
  v36 = v8;
  v37 = v9;
  selfCopy = self;
  while (1)
  {
    lastObject = [v8 lastObject];
    [v8 removeLastObject];
    if (lastObject)
    {
      do
      {
        containerIdentity = [lastObject containerIdentity];
        v12 = [v9 containsObject:containerIdentity];

        if ((v12 & 1) == 0)
        {
          containerIdentity2 = [lastObject containerIdentity];
          [v9 addObject:containerIdentity2];

          context = [(MCMCommand *)self context];
          containerCache = [context containerCache];
          v40 = 0;
          v16 = [containerCache entryForContainerIdentity:lastObject error:&v40];
          v39 = v40;

          if (v16 && ([v16 metadataMinimal], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v18 = v17;
            v19 = [(MCMCommandOperationDelete *)self _codeSignIdentifiersToRemoveFor:v17 amendingCumulativeIdentifiers:v38];
            containerIdentity3 = [v16 containerIdentity];
            v21 = [(MCMCommandOperationDelete *)self _getOrCreateManifestWithContainerIdentity:containerIdentity3];

            do
            {
              v22 = [[MCMCommandOperationDeleteItem alloc] initWithCacheEntry:v16 codeSignIdentifiersToRemove:v19 manifest:v21];
              if (v22)
              {
                [v6 addObject:v22];
              }

              else
              {
                v23 = container_log_handle_for_category();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  shortDescription = [v18 shortDescription];
                  *buf = 138412290;
                  v42 = shortDescription;
                  _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Could not create delete item; metadata = %@", buf, 0xCu);
                }
              }

              next = [v16 next];

              v16 = next;
            }

            while (next);

            self = selfCopy;
            v8 = v36;
            v9 = v37;
            v27 = v39;
          }

          else
          {
            v26 = container_log_handle_for_category();
            v27 = v39;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v42 = v39;
              v43 = 2112;
              v44 = lastObject;
              _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Could not find container from container identity queued for delete; error = %@, identity = %@", buf, 0x16u);
            }

            if ([v39 type] == 21)
            {
              [(MCMCommandOperationDelete *)self _deleteManifestForContainerIdentity:lastObject];
            }
          }
        }

        lastObject2 = [v8 lastObject];

        [v8 removeLastObject];
        lastObject = lastObject2;
      }

      while (lastObject2);
    }

    if (!v38)
    {
      v30 = 0;
      goto LABEL_28;
    }

    if (![v38 count])
    {
      break;
    }

    v29 = [(MCMCommandOperationDelete *)self _groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:v38];
    v30 = [MEMORY[0x1E695DFA8] set];

    if (!v29 || ![v29 count])
    {

      goto LABEL_28;
    }

    allObjects2 = [v29 allObjects];
    [v8 addObjectsFromArray:allObjects2];

    v9 = v37;
    v38 = v30;
  }

  v30 = v38;
LABEL_28:
  v32 = [v6 copy];

  return v32;
}

- (id)_codeSignIdentifiersToRemoveFor:(id)for amendingCumulativeIdentifiers:(id)identifiers
{
  v48 = *MEMORY[0x1E69E9840];
  forCopy = for;
  identifiersCopy = identifiers;
  containerClass = [forCopy containerClass];
  if (containerClass > 0xB || ((1 << containerClass) & 0xED4) == 0)
  {
    goto LABEL_8;
  }

  containerClass2 = [forCopy containerClass];
  v11 = 0;
  v12 = 0;
  if (containerClass2 != 7 && containerClass2 != 13)
  {
    context = [(MCMCommand *)self context];
    containerCache = [context containerCache];
    containerIdentity = [forCopy containerIdentity];
    v16 = [containerCache countContainersForOtherUserIdentitiesWithIdentity:containerIdentity error:0];

    if (v16)
    {
LABEL_8:
      v11 = 0;
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    v19 = MEMORY[0x1E695DFA8];
    identifier = [forCopy identifier];
    v12 = [v19 setWithObject:identifier];

    childParentMapCache = [gCodeSigningMapping childParentMapCache];
    identifier2 = [forCopy identifier];
    v23 = [childParentMapCache childBundleIdentifiersForParentIdentifier:identifier2];

    if (v23)
    {
      [v12 unionSet:v23];
    }

    if (!v12)
    {
      v11 = 0;
      goto LABEL_10;
    }

    if ([forCopy transient])
    {
      v43 = 1;
      userIdentity = [forCopy userIdentity];
      identifier3 = [forCopy identifier];
      containerIdentity2 = [forCopy containerIdentity];
      containerConfig = [containerIdentity2 containerConfig];
      platform = [forCopy platform];
      context2 = [(MCMCommand *)self context];
      userIdentityCache = [context2 userIdentityCache];
      v30 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentity identifier:identifier3 containerConfig:containerConfig platform:platform transient:0 userIdentityCache:userIdentityCache error:&v43];

      if (v30)
      {
        context3 = [(MCMCommand *)self context];
        containerCache2 = [context3 containerCache];
        v42 = 0;
        v33 = [containerCache2 entryForContainerIdentity:v30 error:&v42];
        v34 = v42;

        if (v33)
        {
          v41 = v34;
          v35 = [v33 metadataWithError:&v41];
          v11 = v41;

          if (v35)
          {
            v36 = container_log_handle_for_category();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              identifier4 = [forCopy identifier];
              *buf = 138412546;
              v45 = identifier4;
              v46 = 2112;
              v47 = 0;
              _os_log_debug_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_DEBUG, "Skipping removal of code sign mapping since container to be deleted [%@] is transient and there's a permanent one; error = %@", buf, 0x16u);
            }

            goto LABEL_9;
          }
        }

        else
        {
          v11 = v34;
        }

        goto LABEL_30;
      }

      v37 = container_log_handle_for_category();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        shortDescription = [forCopy shortDescription];
        *buf = 138412546;
        v45 = shortDescription;
        v46 = 2048;
        v47 = v43;
        _os_log_error_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_ERROR, "Could not construct container identity from %@ to check for permanent copy: %llu", buf, 0x16u);
      }
    }

    v11 = 0;
LABEL_30:
    if ([v12 count])
    {
      [identifiersCopy unionSet:v12];
    }
  }

LABEL_10:
  v17 = [v12 copy];

  return v17;
}

- (id)_containerIdentities
{
  v21 = *MEMORY[0x1E69E9840];
  containerIdentities = [(MCMCommandOperationDelete *)self containerIdentities];
  v4 = containerIdentities;
  v5 = MEMORY[0x1E695E0F0];
  if (containerIdentities)
  {
    v5 = containerIdentities;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  manifests = [(MCMCommandOperationDelete *)self manifests];
  v9 = [manifests countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(manifests);
        }

        concreteContainerIdentity = [*(*(&v17 + 1) + 8 * i) concreteContainerIdentity];
        [v7 addObject:concreteContainerIdentity];
      }

      v10 = [manifests countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (id)_replyFromRelayToDaemonWithContainerIdentities:(id)identities
{
  v81 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  __s[1] = 0;
  v4 = xpc_array_create(0, 0);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v5 = identitiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v77 objects:v76 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v78;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v78 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v77 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          *v48 = 1;
          v12 = [v11 createLibsystemContainerWithError:v48];
          if (v12)
          {
            v13 = v12;
            v14 = xpc_dictionary_create(0, 0, 0);
            container_xpc_encode_container_object();
            xpc_array_append_value(v4, v14);
            MEMORY[0x1E12D3190](v13);
          }

          else
          {
            v14 = container_log_handle_for_category();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = *v48;
              error_description = container_get_error_description();
              *buf = 138412802;
              *&v68[0] = v11;
              WORD4(v68[0]) = 2048;
              *(v68 + 10) = v15;
              WORD1(v68[1]) = 2080;
              *(&v68[1] + 4) = error_description;
              _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not allocate container object for delete relay using %@: (%llu) %s", buf, 0x20u);
            }
          }
        }

        else
        {
          v11 = container_log_handle_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&v68[0] = v10;
            _os_log_fault_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_FAULT, "Non-libsystem identity encountered when constructing delete relay: %@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v77 objects:v76 count:16];
    }

    while (v7);
  }

  selfCopy2 = self;
  waitForDiskSpaceReclaim = [(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim];
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v19, "Command", 3uLL);
  xpc_dictionary_set_uint64(v19, "Flags", waitForDiskSpaceReclaim);
  xpc_dictionary_set_value(v19, "ContainersArray", v4);
  v20 = container_log_handle_for_category();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = MEMORY[0x1E12D46E0](v19);
    __s[0] = v22;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    current_persona_originator_info = voucher_get_current_persona_originator_info();
    v45 = DWORD2(v73);
    v43 = DWORD1(v74);
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    current_persona_proximate_info = voucher_get_current_persona_proximate_info();
    v40 = DWORD1(v71);
    v41 = DWORD2(v70);
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    *buf = 2;
    current_persona = voucher_get_current_persona();
    if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
    {
      v39 = "<unknown>";
      v26 = "NOPERSONA";
    }

    else
    {
      if ((DWORD1(v68[0]) - 2) > 4)
      {
        v26 = "<unknown>";
      }

      else
      {
        v26 = off_1E86AF910[DWORD1(v68[0]) - 2];
      }

      v39 = &v68[5] + 4;
    }

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43 & ~(current_persona_originator_info >> 31);
      v28 = v45 & ~(current_persona_originator_info >> 31);
      v46 = v40 & ~(current_persona_proximate_info >> 31);
      v29 = v41 & ~(current_persona_proximate_info >> 31);
      v30 = geteuid();
      v31 = getuid();
      *v48 = 67111427;
      *&v48[4] = current_persona;
      v49 = 2082;
      v50 = v26;
      v51 = 2082;
      v52 = v39;
      v53 = 1024;
      v54 = v28;
      v55 = 1024;
      v56 = v44;
      selfCopy2 = self;
      v57 = 1024;
      v58 = v29;
      v59 = 1024;
      v60 = v46;
      v61 = 1024;
      v62 = v30;
      v63 = 1024;
      v64 = v31;
      v65 = 2081;
      v66 = v22;
      _os_log_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEFAULT, "Container delete; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, message = %{private}s", v48, 0x4Au);
    }

    if (v22)
    {
      free(v22);
      memset_s(__s, 8uLL, 0, 8uLL);
    }
  }

  *v48 = 1;
  container_xpc_set_use_shared_connection();
  context = [(MCMCommand *)selfCopy2 context];
  clientIdentity = [context clientIdentity];
  [clientIdentity createLibsystemClient];

  v34 = container_client_copy_encoded_xpc_object();
  if (v34)
  {
    v35 = 0;
    if (*v48 == 1)
    {
      xpc_dictionary_set_value(v19, "ProxyForClient", v34);
      v35 = container_xpc_send_sync_message();
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = container_error_copy_unlocalized_description();
  *&v73 = v36;
  v37 = container_log_handle_for_category();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&v68[0] = v36;
    _os_log_debug_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_DEBUG, "Delete relay response: %s", buf, 0xCu);
  }

  if (v36)
  {
    free(v36);
    memset_s(&v73, 8uLL, 0, 8uLL);
  }

  container_free_client();
  container_error_free();

  return v35;
}

- (void)_routeContainersToHandle:(id *)handle toRelay:(id *)relay
{
  v30 = *MEMORY[0x1E69E9840];
  _containerIdentities = [(MCMCommandOperationDelete *)self _containerIdentities];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = _containerIdentities;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        disposition = [v12 disposition];
        if (disposition)
        {
          if (disposition == 2)
          {
            v14 = v6;
          }

          else
          {
            if (disposition != 1)
            {
              continue;
            }

            v14 = v5;
          }

          [v14 addObject:v12];
        }

        else
        {
          v15 = container_log_handle_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            context = [(MCMCommand *)self context];
            clientIdentity = [context clientIdentity];
            *buf = 138412546;
            v22 = v12;
            v23 = 2112;
            v24 = clientIdentity;
            _os_log_fault_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_FAULT, "Attempt to delete container for different user or container class not supported, ignored: %@; client: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v9);
  }

  if (handle)
  {
    *handle = [v5 copy];
  }

  if (relay)
  {
    *relay = [v6 copy];
  }
}

- (void)_relayContainerIdentities:(id)identities andAmendResult:(id)result
{
  identitiesCopy = identities;
  resultCopy = result;
  if ([identitiesCopy count])
  {
    v7 = [(MCMCommandOperationDelete *)self _replyFromRelayToDaemonWithContainerIdentities:identitiesCopy];
    if (v7)
    {
      [resultCopy mergeWithXPCResult:v7];
    }
  }
}

- (void)execute
{
  v64 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v53 = 0;
  v54 = 0;
  [(MCMCommandOperationDelete *)self _routeContainersToHandle:&v54 toRelay:&v53];
  v3 = v54;
  v46 = v53;
  v47 = v3;
  if (![(MCMCommandOperationReclaimDiskSpace *)v3 count])
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Nothing to delete locally", buf, 2u);
    }

    v5 = 0;
    v11 = 0;
    goto LABEL_45;
  }

  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v3;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Queueing containers for deletion: %@", buf, 0xCu);
  }

  v52 = 0;
  v5 = [(MCMCommandOperationDelete *)self _containersToDeleteRecursivelyStartingWithContainerIdentities:v3 error:&v52];
  v6 = v52;
  if (!v5)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v61 = v6;
      v62 = 2112;
      v63 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to collect identities for deletion; error = %@, staring set = %@", buf, 0x16u);
    }

    v11 = 0;
    v5 = 0;
    if (v6)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (![(MCMCommandOperationReclaimDiskSpace *)v5 count])
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v61 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "Collected zero identities for deletion; starting set = %@", buf, 0xCu);
    }

    v11 = 0;
    if (v6)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  manifests = [(MCMCommandOperationDelete *)self manifests];
  v8 = [(MCMCommandOperationReclaimDiskSpace *)manifests count];
  v9 = v8 == 0;
  if (v8)
  {
LABEL_7:

    goto LABEL_23;
  }

  v14 = [(MCMCommandOperationReclaimDiskSpace *)v5 count]> 1;

  if (v14)
  {
    v51 = v6;
    v15 = [(MCMCommandOperationDelete *)self _writeDeleteManifestsForItems:v5 error:&v51];
    manifests = v51;

    if (!v15)
    {
      if ([(MCMCommandOperationReclaimDiskSpace *)manifests category]!= 1 || [(MCMCommandOperationReclaimDiskSpace *)manifests POSIXerrno]!= 28)
      {
        v22 = container_log_handle_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v61 = manifests;
          v62 = 2112;
          v63 = v5;
          _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to write manifest for deletion; error = %@, containers = %@", buf, 0x16u);
        }

        goto LABEL_34;
      }

      v21 = container_log_handle_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = v5;
        _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Failed to write manifest for deletion because ENOSPC, ignoring and enabling direct delete; containers = %@", buf, 0xCu);
      }

      v6 = 0;
      goto LABEL_7;
    }

    v9 = 0;
    v6 = manifests;
  }

  else
  {
    v9 = 0;
  }

LABEL_23:
  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v5;
    _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Deleting containers: %@", buf, 0xCu);
  }

  v50 = v6;
  v11 = [(MCMCommandOperationDelete *)self _deleteItems:v5 directDelete:v9 error:&v50];
  manifests = v50;

  if (!v11)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v61 = manifests;
      v62 = 2112;
      v63 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Failed to delete containers; error = %@, containers = %@", buf, 0x16u);
    }

LABEL_34:
    v11 = 0;
    goto LABEL_35;
  }

  if (![v11 count])
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v61 = manifests;
      v62 = 2112;
      v63 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Deleted zero containers; error = %@, containers = %@", buf, 0x16u);
    }
  }

LABEL_35:
  v6 = manifests;
  if (manifests)
  {
LABEL_36:
    v19 = [(MCMResultBase *)[MCMResultOperationDelete alloc] initWithError:v6];
    v20 = 0;
    goto LABEL_55;
  }

LABEL_45:
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = v11;
  v25 = [v11 countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (v25)
  {
    v26 = *v57;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v11);
        }

        v28 = *(*(&v56 + 1) + 8 * i);
        containerPath = [v28 containerPath];
        [v23 addObject:containerPath];

        containerIdentity = [v28 containerIdentity];
        [v24 addObject:containerIdentity];
      }

      v25 = [v11 countByEnumeratingWithState:&v56 objects:v55 count:16];
    }

    while (v25);
  }

  v31 = [MCMResultOperationDelete alloc];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  v34 = [(MCMResultWithContainersArrayBase *)v31 initWithContainerPaths:v23 containerIdentities:v24 includePath:1 clientIdentity:clientIdentity skipSandboxExtensions:1];

  [(MCMCommandOperationDelete *)self _relayContainerIdentities:v46 andAmendResult:v34];
  v35 = [MCMResultPromise alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __36__MCMCommandOperationDelete_execute__block_invoke;
  v48[3] = &unk_1E86AF8C8;
  v48[4] = self;
  v19 = v34;
  v49 = v19;
  v36 = [(MCMResultPromise *)v35 initWithCompletion:v48];
  v37 = [MCMCommandOperationReclaimDiskSpace alloc];
  LODWORD(v31) = [(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim];
  context2 = [(MCMCommand *)self context];
  reply = [(MCMCommand *)self reply];
  v40 = [(MCMCommandOperationReclaimDiskSpace *)v37 initWithAsynchronously:v31 ^ 1 context:context2 resultPromise:v36 handoffForReply:reply];

  v41 = container_log_handle_for_category();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    command = [objc_opt_class() command];
    *buf = 134218240;
    v61 = v40;
    v62 = 2048;
    v63 = command;
    _os_log_debug_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEBUG, "Completed delete, executing command <%p; %llu>...", buf, 0x16u);
  }

  [(MCMCommandOperationReclaimDiskSpace *)v40 execute];
  v6 = 0;
  v20 = 1;
LABEL_55:
  v42 = +[MCMTestLocks sharedInstance];
  [v42 waitOnLock:11];

  if (!v20 || ![(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim])
  {
    resultPromise = [(MCMCommand *)self resultPromise];
    [resultPromise completeWithResult:v19];
  }

  objc_autoreleasePoolPop(context);
}

id __36__MCMCommandOperationDelete_execute__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) waitForDiskSpaceReclaim])
  {
    v4 = [*(a1 + 32) resultPromise];
    [v4 completeWithResult:*(a1 + 40)];
  }

  return v3;
}

- (BOOL)preflightClientAllowed
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  containerIdentities = [(MCMCommandOperationDelete *)self containerIdentities];
  v6 = [containerIdentities countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(containerIdentities);
        }

        if (![clientIdentity isAllowedToPerformOperationType:2 containerIdentity:*(*(&v13 + 1) + 8 * i) part:0 partDomain:0 access:0])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [containerIdentities countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (MCMCommandOperationDelete)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = MCMCommandOperationDelete;
  v10 = [(MCMCommand *)&v16 initWithMessage:messageCopy context:context reply:reply];
  if (v10)
  {
    concreteContainerIdentities = [messageCopy concreteContainerIdentities];
    containerIdentities = v10->_containerIdentities;
    v10->_containerIdentities = concreteContainerIdentities;

    v13 = [MEMORY[0x1E695DFA8] set];
    manifests = v10->_manifests;
    v10->_manifests = v13;

    v10->_removeAllCodeSignInfo = 0;
    v10->_waitForDiskSpaceReclaim = [messageCopy waitForDiskSpaceReclaim];
    objc_storeStrong(&v10->_message, message);
  }

  return v10;
}

- (id)_initWithContainerIdentities:(id)identities manifests:(id)manifests waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise
{
  v24 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  manifestsCopy = manifests;
  v23.receiver = self;
  v23.super_class = MCMCommandOperationDelete;
  v16 = [(MCMCommand *)&v23 initWithContext:context resultPromise:promise];
  v17 = v16;
  if (v16)
  {
    if (identitiesCopy)
    {
      v18 = identitiesCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_containerIdentities, v18);
    v19 = [manifestsCopy mutableCopy];
    v20 = v19;
    if (!v19)
    {
      v20 = [MEMORY[0x1E695DFA8] set];
    }

    objc_storeStrong(&v17->_manifests, v20);
    if (!v19)
    {
    }

    v17->_removeAllCodeSignInfo = info;
    v17->_waitForDiskSpaceReclaim = reclaim;
    message = v17->_message;
    v17->_message = 0;
  }

  return v17;
}

- (MCMCommandOperationDelete)initWithManifests:(id)manifests waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise
{

  return [(MCMCommandOperationDelete *)self _initWithContainerIdentities:0 manifests:manifests waitForDiskSpaceReclaim:reclaim removeAllCodeSignInfo:info context:context resultPromise:promise];
}

- (MCMCommandOperationDelete)initWithContainerIdentities:(id)identities waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise
{

  return [(MCMCommandOperationDelete *)self _initWithContainerIdentities:identities manifests:0 waitForDiskSpaceReclaim:reclaim removeAllCodeSignInfo:info context:context resultPromise:promise];
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

+ (BOOL)deleteContainerRootURL:(id)l userIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier preferDirectDelete:(BOOL)delete error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identityCopy = identity;
  identifierCopy = identifier;
  v15 = +[MCMFileManager defaultManager];
  if (delete)
  {
    v16 = 0;
LABEL_3:
    v17 = 0;
    goto LABEL_14;
  }

  v42 = identifierCopy;
  v18 = identityCopy;
  errorCopy = error;
  v20 = v18;
  v21 = [MCMContainerClassDeletedPath containerPathForUserIdentity:"containerPathForUserIdentity:containerClass:" containerClass:?];
  v46 = 0;
  v22 = [v21 createIfNecessaryWithError:&v46];
  v23 = v46;
  if ((v22 & 1) == 0)
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v48 = v23;
      v49 = 2112;
      v50 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to create deathrow directory; error = %@, class path = %@", buf, 0x16u);
    }

    v23 = 0;
  }

  classURL = [v21 classURL];
  v45 = v23;
  v26 = [v15 createTemporaryDirectoryInDirectoryURL:classURL withNamePrefix:@"deleting." error:&v45];
  v17 = v45;

  if (v26)
  {
    v27 = v22 ^ 1;
    error = errorCopy;
  }

  else
  {
    v28 = container_log_handle_for_category();
    error = errorCopy;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v48 = v17;
      v49 = 2112;
      v50 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Failed to create unique deathrow directory; error = %@, class path = %@", buf, 0x16u);
    }

    v17 = 0;
    v27 = 1;
  }

  identityCopy = v20;
  identifierCopy = v42;
  v16 = [v26 URLByAppendingPathComponent:v42 isDirectory:1];

  if ((v27 & 1) == 0)
  {
    v44 = v17;
    v36 = [v15 moveItemAtURL:lCopy toURL:v16 error:&v44];
    v30 = v44;

    if (v36)
    {
      goto LABEL_20;
    }

    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      path2 = [v16 path];
      *buf = 138412802;
      v48 = path;
      v49 = 2112;
      v50 = path2;
      v51 = 2112;
      v52 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Couldn't stage for deletion from [%@] to [%@]; trying a direct delete instead: %@", buf, 0x20u);
    }

    goto LABEL_3;
  }

LABEL_14:
  v43 = v17;
  v29 = [v15 removeItemAtURL:lCopy error:&v43];
  v30 = v43;

  if (v29)
  {
LABEL_20:
    v33 = 0;
    v35 = 1;
    goto LABEL_22;
  }

  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    path3 = [lCopy path];
    *buf = 138412546;
    v48 = path3;
    v49 = 2112;
    v50 = v30;
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Failed to delete container at %@: %@", buf, 0x16u);
  }

  v32 = [[MCMError alloc] initWithNSError:v30 url:lCopy defaultErrorType:28];
  v33 = v32;
  if (error)
  {
    v34 = v32;
    v35 = 0;
    *error = v33;
  }

  else
  {
    v35 = 0;
  }

LABEL_22:

  return v35;
}

+ (id)commandForOperationDeleteWithContainerIdentities:(id)identities removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise
{
  infoCopy = info;
  promiseCopy = promise;
  contextCopy = context;
  identitiesCopy = identities;
  v13 = [[self alloc] initWithContainerIdentities:identitiesCopy waitForDiskSpaceReclaim:0 removeAllCodeSignInfo:infoCopy context:contextCopy resultPromise:promiseCopy];

  return v13;
}

@end