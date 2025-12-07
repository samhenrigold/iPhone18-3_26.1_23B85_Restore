@interface PBFLockScreenRoleCoordinator
+ (id)supportedAttributes;
+ (id)supportedChangeTypes;
- (BOOL)_executeChange:(id)change storage:(id)storage outEvents:(id *)events error:(id *)error;
- (BOOL)_prepareAttributesForIngestionForPoster:(id)poster existingAttributes:(id)attributes incomingAttributes:(id)incomingAttributes proposedAttributesToDelete:(id *)delete proposedAttributesToUpdate:(id *)update storage:(id)storage currentCollection:(id)collection error:(id *)self0;
- (BOOL)notifyEventWasReceived:(id)received changes:(id *)changes storage:(id)storage;
- (BOOL)synchronizeFileSystemAttributesForStorage:(id)storage error:(id *)error;
- (PBFLockScreenRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers;
- (id)defaultAttributesForNewPosterFromProvider:(id)provider;
- (id)determineActivePosterConfigurationForStorage:(id)storage context:(id)context;
@end

@implementation PBFLockScreenRoleCoordinator

- (PBFLockScreenRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers
{
  v8 = *MEMORY[0x277D3EEF0];
  v10.receiver = self;
  v10.super_class = PBFLockScreenRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:storage modelCoordinatorProvider:provider providers:providers];
}

- (BOOL)synchronizeFileSystemAttributesForStorage:(id)storage error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v30.receiver = self;
  v30.super_class = PBFLockScreenRoleCoordinator;
  errorCopy = error;
  if ([(PBFPosterRoleCoordinator *)&v30 synchronizeFileSystemAttributesForStorage:storageCopy error:error])
  {
    [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v29 = 0u;
    obj = [v24 orderedPosters];
    v23 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v23)
    {
      v22 = *v27;
      v7 = *MEMORY[0x277D3EEB8];
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          selfCopy = self;
          supportedAttributes = [objc_opt_class() supportedAttributes];
          v12 = [v24 attributesForPoster:v9 ofTypes:supportedAttributes];

          v13 = [v24 configuredPropertiesForPoster:v9];
          focusConfiguration = [v13 focusConfiguration];

          v15 = [v12 objectForKey:v7];
          v16 = PBFLogRoleCoordinator(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            role = [(PBFPosterRoleCoordinator *)selfCopy role];
            *buf = 138543874;
            v32 = role;
            v33 = 2112;
            v34 = v9;
            v35 = 2112;
            v36 = focusConfiguration;
            _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronizing configuration for poster %@ with disk focus %@", buf, 0x20u);
          }

          v18 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v9, v7, focusConfiguration, v15, 0, 0, storageCopy, errorCopy);
          if (!v18)
          {
            v19 = 0;
            goto LABEL_15;
          }

          self = selfCopy;
        }

        v23 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)defaultAttributesForNewPosterFromProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = PBFLockScreenRoleCoordinator;
  providerCopy = provider;
  v5 = [(PBFPosterRoleCoordinator *)&v12 defaultAttributesForNewPosterFromProvider:providerCopy];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x277D3EDB0];
  role = [(PBFPosterRoleCoordinator *)self role];
  v9 = [v7 defaultHomeScreenConfigurationForProvider:providerCopy role:role];

  [v6 setObject:v9 forKey:*MEMORY[0x277D3EEC0]];
  v10 = [v6 copy];

  return v10;
}

- (id)determineActivePosterConfigurationForStorage:(id)storage context:(id)context
{
  v78 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  contextCopy = context;
  if (storageCopy)
  {
    [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
  }

  else
  {
    [(PBFPosterRoleCoordinator *)self posterCollection];
  }
  v8 = ;
  role = [(PBFPosterRoleCoordinator *)self role];
  v10 = [contextCopy pbf_desiredActiveConfigurationForRole:role];

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__9;
  v68 = __Block_byref_object_dispose__9;
  v69 = [v8 posterWithUUID:v10];
  v11 = [(PBFPosterRoleCoordinator *)self posterConfigurationsSortedByLastActivatedDate:v8];
  v56 = v11;
  if (v10)
  {
    v12 = PBFLogRoleCoordinator(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      role2 = [(PBFPosterRoleCoordinator *)self role];
      v14 = v65[5];
      *buf = 138543874;
      v71 = role2;
      v72 = 2114;
      v73 = v14;
      v74 = 2114;
      v75 = v10;
      _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: %{public}@/%{public}@ as active poster configuration", buf, 0x20u);
    }
  }

  pbf_activeFocusMode = [contextCopy pbf_activeFocusMode];
  if (v10)
  {
    v16 = 1;
  }

  else
  {
    v16 = pbf_activeFocusMode == 0;
  }

  v17 = !v16;

  if (v17)
  {
    pbf_activeFocusMode2 = [contextCopy pbf_activeFocusMode];
    activityUniqueIdentifier = [pbf_activeFocusMode2 activityUniqueIdentifier];

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke;
    v60[3] = &unk_2782C9328;
    v20 = v8;
    v61 = v20;
    v21 = activityUniqueIdentifier;
    v62 = v21;
    v63 = &v64;
    v22 = [v56 enumerateObjectsWithOptions:2 usingBlock:v60];
    if (v65[5])
    {
      v23 = PBFLogRoleCoordinator(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v21;
        v54 = storageCopy;
        role3 = [(PBFPosterRoleCoordinator *)self role];
        v24 = v65[5];
        v25 = [v20 configuredPropertiesForPoster:v24];
        focusConfiguration = [v25 focusConfiguration];
        pbf_activeFocusMode3 = [contextCopy pbf_activeFocusMode];
        activityUniqueIdentifier2 = [pbf_activeFocusMode3 activityUniqueIdentifier];
        *buf = 138544130;
        v71 = role3;
        v72 = 2112;
        v73 = v24;
        v74 = 2112;
        v75 = focusConfiguration;
        v76 = 2112;
        v77 = activityUniqueIdentifier2;
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: %@ with focus configuration: %@ associated with active focus mode identifier: %@ as active poster configuration", buf, 0x2Au);

        v21 = v53;
        storageCopy = v54;
      }
    }

    else
    {
      v23 = PBFLogRoleCoordinator(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v21;
        role4 = [(PBFPosterRoleCoordinator *)self role];
        pbf_activeFocusMode4 = [contextCopy pbf_activeFocusMode];
        activityUniqueIdentifier3 = [pbf_activeFocusMode4 activityUniqueIdentifier];
        *buf = 138543618;
        v71 = role4;
        v72 = 2112;
        v73 = activityUniqueIdentifier3;
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: did not find poster associated with active focus mode identifier: %@", buf, 0x16u);

        v21 = v29;
      }
    }
  }

  if (!v65[5])
  {
    selectedPoster = [v8 selectedPoster];
    v34 = selectedPoster == 0;

    if (!v34)
    {
      selectedPoster2 = [v8 selectedPoster];
      v36 = v65[5];
      v65[5] = selectedPoster2;

      v38 = PBFLogRoleCoordinator(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        role5 = [(PBFPosterRoleCoordinator *)self role];
        v40 = v65[5];
        *buf = 138543618;
        v71 = role5;
        v72 = 2112;
        v73 = v40;
        _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: using selected poster: %@ as active poster configuration", buf, 0x16u);
      }

      v41 = [v8 configuredPropertiesForPoster:v65[5]];
      focusConfiguration2 = [v41 focusConfiguration];

      if (focusConfiguration2)
      {
        v44 = PBFLogRoleCoordinator(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          role6 = [(PBFPosterRoleCoordinator *)self role];
          v46 = v65[5];
          *buf = 138543618;
          v71 = role6;
          v72 = 2112;
          v73 = v46;
          _os_log_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: selected poster: %@ is still tied to a focus", buf, 0x16u);
        }
      }
    }
  }

  v47 = v65[5];
  if (!v47)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke_5;
    v57[3] = &unk_2782C9350;
    v58 = v8;
    v59 = &v64;
    v48 = PBFLogRoleCoordinator([v56 enumerateObjectsWithOptions:2 usingBlock:v57]);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      role7 = [(PBFPosterRoleCoordinator *)self role];
      v50 = v65[5];
      *buf = 138543618;
      v71 = role7;
      v72 = 2112;
      v73 = v50;
      _os_log_impl(&dword_21B526000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: using most recently used poster: %@ with no focus as active poster configuration", buf, 0x16u);
    }

    v47 = v65[5];
  }

  v51 = v47;

  _Block_object_dispose(&v64, 8);

  return v51;
}

void __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(a1 + 32) configuredPropertiesForPoster:?];
  v8 = [v7 focusConfiguration];

  v9 = [v8 activityUUID];
  v10 = [v9 isEqual:*(a1 + 40)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) configuredPropertiesForPoster:?];
  v8 = [v7 focusConfiguration];

  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)notifyEventWasReceived:(id)received changes:(id *)changes storage:(id)storage
{
  receivedCopy = received;
  storageCopy = storage;
  if ([(PBFPosterRoleCoordinator *)self validateEventIsRelevant:receivedCopy])
  {
    role = [(PBFPosterRoleCoordinator *)self role];
    v11 = objc_opt_new();
    v17.receiver = self;
    v17.super_class = PBFLockScreenRoleCoordinator;
    v18 = 0;
    v12 = [(PBFPosterRoleCoordinator *)&v17 notifyEventWasReceived:receivedCopy changes:&v18 storage:storageCopy];
    if (v12)
    {
      [v11 addObjectsFromArray:v18];
    }

    v13 = [v11 count];
    if (changes && v13)
    {
      *changes = [v11 copy];
    }

    v14 = objc_opt_class();
    v15 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
    [v14 dumpResultsForEvent:receivedCopy role:role posterCollection:v15 changes:v11 eventWasHandled:v12];
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

+ (id)supportedAttributes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBFLockScreenRoleCoordinator_supportedAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedAttributes_onceToken_0 != -1)
  {
    dispatch_once(&supportedAttributes_onceToken_0, block);
  }

  v2 = supportedAttributes_supportedAttributes_0;

  return v2;
}

void __51__PBFLockScreenRoleCoordinator_supportedAttributes__block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFLockScreenRoleCoordinator;
  v1 = objc_msgSendSuper2(&v8, sel_supportedAttributes);
  v2 = [v1 mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  [v5 addObject:*MEMORY[0x277D3EEB8]];
  [v5 addObject:*MEMORY[0x277D3EEC0]];
  v6 = [v5 copy];
  v7 = supportedAttributes_supportedAttributes_0;
  supportedAttributes_supportedAttributes_0 = v6;
}

+ (id)supportedChangeTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PBFLockScreenRoleCoordinator_supportedChangeTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedChangeTypes_onceToken_0 != -1)
  {
    dispatch_once(&supportedChangeTypes_onceToken_0, block);
  }

  v2 = supportedChangeTypes_supportedChangeTypes_0;

  return v2;
}

void __52__PBFLockScreenRoleCoordinator_supportedChangeTypes__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v9[0] = @"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [v2 setWithArray:v3];

  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFLockScreenRoleCoordinator;
  v5 = objc_msgSendSuper2(&v8, sel_supportedChangeTypes);
  [v4 unionSet:v5];

  v6 = [v4 copy];
  v7 = supportedChangeTypes_supportedChangeTypes_0;
  supportedChangeTypes_supportedChangeTypes_0 = v6;
}

- (BOOL)_executeChange:(id)change storage:(id)storage outEvents:(id *)events error:(id *)error
{
  v86[2] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  storageCopy = storage;
  changeType = [changeCopy changeType];
  v13 = [changeType isEqual:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties"];

  if (v13)
  {
    v14 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
    userInfo = [changeCopy userInfo];
    v16 = [userInfo objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

    v17 = [v14 posterWithUUID:v16];
    userInfo2 = [changeCopy userInfo];
    v19 = [userInfo2 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties"];

    if (v16)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    v82 = v19;
    if (v20 || v19 == 0)
    {
      v22 = MEMORY[0x277CCA9B8];
      v85[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v23 = [changeCopy description];
      v24 = v23;
      v25 = @"(null change)";
      if (v23)
      {
        v25 = v23;
      }

      v85[1] = @"posterUUIDToUpdate";
      v26 = @"(null uuid)";
      if (v16)
      {
        v26 = v16;
      }

      v86[0] = v25;
      v86[1] = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
      v28 = v27 = v16;
      [v22 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v28];
      *error = v29 = 0;
      goto LABEL_39;
    }

    v78 = v16;
    eventsCopy = events;
    _path = [v17 _path];
    serverIdentity = [_path serverIdentity];

    v83 = 0;
    v32 = [v14 isPosterConfigurationAnAssociatedPoster:v17 parentPoster:&v83];
    v33 = v83;
    errorCopy = error;
    v81 = serverIdentity;
    v76 = storageCopy;
    v77 = v17;
    selfCopy = self;
    if (v32)
    {
      v34 = MEMORY[0x277D3ECE0];
      v35 = v83;
      v36 = [v34 alloc];
      _path2 = [v17 _path];
      pbf_posterUUID = [v17 pbf_posterUUID];
      pbf_posterUUID2 = [v35 pbf_posterUUID];
      supportedAttributes = [objc_opt_class() supportedAttributes];
      v41 = v17;
      v42 = v33;
      pbf_posterUUID3 = [v14 attributesForPoster:v41 ofTypes:supportedAttributes];
      v24 = [v36 initWithUpdatedPath:_path2 updatedPosterUUID:pbf_posterUUID parentPosterUUID:pbf_posterUUID2 sourceIdentity:serverIdentity configuredProperties:v82 attributes:pbf_posterUUID3];
LABEL_38:

      storageCopy = v76;
      v29 = [(PBFPosterRoleCoordinator *)selfCopy _ingestIncomingPosterConfiguration:v24 change:changeCopy currentCollection:v14 storage:v76 outEvents:eventsCopy error:errorCopy];

      v28 = v81;
      v17 = v77;
      v27 = v78;
LABEL_39:

      goto LABEL_40;
    }

    v74 = v83;
    v44 = v83;
    supportedAttributes2 = [objc_opt_class() supportedAttributes];
    v73 = v14;
    v46 = [v14 attributesForPoster:v17 ofTypes:supportedAttributes2];
    v47 = [v46 mutableCopy];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = objc_opt_new();
    }

    v50 = v49;

    pbf_posterUUID = [v82 focusConfiguration];
    if (pbf_posterUUID)
    {
      v51 = *MEMORY[0x277D3EEB8];
      v52 = [v50 objectForKey:*MEMORY[0x277D3EEB8]];
      v53 = [pbf_posterUUID isEqual:v52];

      if (v53)
      {
        v72 = 0;
      }

      else
      {
        [v50 setObject:pbf_posterUUID forKeyedSubscript:v51];
        v72 = 1;
      }
    }

    else
    {
      allKeys = [v50 allKeys];
      v55 = *MEMORY[0x277D3EEB8];
      v72 = [allKeys containsObject:*MEMORY[0x277D3EEB8]];

      [v50 removeObjectForKey:v55];
    }

    homeScreenConfiguration = [v82 homeScreenConfiguration];
    if (homeScreenConfiguration)
    {
      v57 = *MEMORY[0x277D3EEC0];
      v58 = [v50 objectForKey:*MEMORY[0x277D3EEC0]];
      v59 = [homeScreenConfiguration isEqual:v58];

      if (v59)
      {
        v60 = homeScreenConfiguration;
        if (!v72)
        {
LABEL_37:
          v70 = objc_alloc(MEMORY[0x277D3ECE0]);
          supportedAttributes = [v17 _path];
          pbf_posterUUID3 = [v17 pbf_posterUUID];
          v24 = [v70 initWithUpdatedPath:supportedAttributes updatedPosterUUID:pbf_posterUUID3 sourceIdentity:v81 configuredProperties:v82 attributes:v50];
          _path2 = v50;
          v14 = v73;
          v42 = v74;
          pbf_posterUUID2 = v60;
          goto LABEL_38;
        }
      }

      else
      {
        v60 = homeScreenConfiguration;
        [v50 setObject:homeScreenConfiguration forKeyedSubscript:v57];
      }
    }

    else
    {
      v60 = 0;
      allKeys2 = [v50 allKeys];
      v62 = *MEMORY[0x277D3EEC0];
      v63 = [allKeys2 containsObject:*MEMORY[0x277D3EEC0]];

      [v50 removeObjectForKey:v62];
      if (((v63 | v72) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v64 = *MEMORY[0x277D3EED8];
    v65 = [v50 objectForKeyedSubscript:*MEMORY[0x277D3EED8]];
    v66 = v65;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = objc_opt_new();
    }

    v68 = v67;

    usageMetadataWithUpdatedLastModifiedDate = [v68 usageMetadataWithUpdatedLastModifiedDate];

    [v50 setObject:usageMetadataWithUpdatedLastModifiedDate forKeyedSubscript:v64];
    goto LABEL_37;
  }

  v84.receiver = self;
  v84.super_class = PBFLockScreenRoleCoordinator;
  v29 = [(PBFPosterRoleCoordinator *)&v84 _executeChange:changeCopy storage:storageCopy outEvents:events error:error];
LABEL_40:

  return v29;
}

- (BOOL)_prepareAttributesForIngestionForPoster:(id)poster existingAttributes:(id)attributes incomingAttributes:(id)incomingAttributes proposedAttributesToDelete:(id *)delete proposedAttributesToUpdate:(id *)update storage:(id)storage currentCollection:(id)collection error:(id *)self0
{
  v37 = *MEMORY[0x277D85DE8];
  posterCopy = poster;
  collectionCopy = collection;
  v30.receiver = self;
  v30.super_class = PBFLockScreenRoleCoordinator;
  v18 = [(PBFPosterRoleCoordinator *)&v30 _prepareAttributesForIngestionForPoster:posterCopy existingAttributes:attributes incomingAttributes:incomingAttributes proposedAttributesToDelete:delete proposedAttributesToUpdate:update storage:storage currentCollection:collectionCopy error:error];
  if (v18 && [*delete containsObject:*MEMORY[0x277D3EEB8]])
  {
    v19 = [collectionCopy posterWithUUID:posterCopy];
    v20 = MEMORY[0x277D3EDE8];
    _path = [v19 _path];
    v22 = [v20 removeFocusConfigurationForPath:_path error:error];

    v24 = PBFLogRoleCoordinator(v23);
    v25 = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        role = [(PBFPosterRoleCoordinator *)self role];
        role2 = role;
        if (error)
        {
          v28 = *error;
        }

        else
        {
          v28 = @"[unknown error]";
        }

        *buf = 138543874;
        v32 = role;
        v33 = 2114;
        v34 = posterCopy;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_21B526000, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove focus configuration after attribute deletion for poster %{public}@: %{public}@", buf, 0x20u);
        goto LABEL_9;
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      role2 = [(PBFPosterRoleCoordinator *)self role];
      *buf = 138543618;
      v32 = role2;
      v33 = 2114;
      v34 = posterCopy;
      _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed focus configuration after attribute deletion for poster %{public}@", buf, 0x16u);
LABEL_9:
    }
  }

  return v18;
}

@end