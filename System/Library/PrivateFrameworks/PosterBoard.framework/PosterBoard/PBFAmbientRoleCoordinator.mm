@interface PBFAmbientRoleCoordinator
+ (id)subscribedEvents;
+ (id)supportedAttributes;
+ (id)supportedChangeTypes;
- (BOOL)_executeAmbientChargerConfigurationUpdateForPosterUUID:(id)d newAmbientChargerConfiguration:(id)configuration currentCollection:(id)collection storage:(id)storage error:(id *)error;
- (BOOL)_executeChange:(id)change storage:(id)storage outEvents:(id *)events error:(id *)error;
- (BOOL)_prepareAttributesForIngestionForPoster:(id)poster existingAttributes:(id)attributes incomingAttributes:(id)incomingAttributes proposedAttributesToDelete:(id *)delete proposedAttributesToUpdate:(id *)update storage:(id)storage currentCollection:(id)collection error:(id *)self0;
- (BOOL)finalizeChangesWithChangeHandler:(id)handler outEvents:(id *)events error:(id *)error;
- (BOOL)notifyEventWasReceived:(id)received changes:(id *)changes storage:(id)storage;
- (BOOL)synchronizeFileSystemAttributesForStorage:(id)storage error:(id *)error;
- (BOOL)validateEventIsRelevant:(id)relevant;
- (PBFAmbientRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers;
- (id)_ambientIncomingPosterConfigurationForDescriptor:(id)descriptor referenceIncomingPosterConfiguration:(id)configuration error:(id *)error;
- (id)_sortedPosterUUIDsByExtensionIdentifierFromStorage:(id)storage;
- (id)defaultAttribute:(id)attribute forNewPosterFromProvider:(id)provider;
- (id)defaultAttributesForNewPosterFromProvider:(id)provider;
- (id)determineActivePosterConfigurationForStorage:(id)storage context:(id)context;
- (id)sortedPosterUUIDsFromStorage:(id)storage;
- (id)sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:(id)identifier;
- (void)noteDidResetRoleCoordinator:(id)coordinator;
@end

@implementation PBFAmbientRoleCoordinator

- (PBFAmbientRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers
{
  v8 = *MEMORY[0x277D3EE98];
  v10.receiver = self;
  v10.super_class = PBFAmbientRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:storage modelCoordinatorProvider:provider providers:providers];
}

- (id)determineActivePosterConfigurationForStorage:(id)storage context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
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
  pbf_activeChargerIdentifier = [contextCopy pbf_activeChargerIdentifier];
  v11 = [contextCopy pbf_currentActivePosterForRole:role];
  v12 = v11;
  if (pbf_activeChargerIdentifier)
  {
    orderedPosters = [v8 orderedPosters];
    array = [orderedPosters array];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __82__PBFAmbientRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke;
    v25 = &unk_2782C6CD0;
    v15 = v8;
    v26 = v15;
    v16 = pbf_activeChargerIdentifier;
    v27 = v16;
    v17 = [array bs_firstObjectPassingTest:&v22];
    if (!v17)
    {
      if (v12)
      {
        selectedPoster = v12;
      }

      else
      {
        selectedPoster = [v15 selectedPoster];
      }

      v17 = selectedPoster;
      v20 = PBFLogRoleCoordinator(selectedPoster);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = v17;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "No existing configuration tied to charger identifier %{public}@, selecting the active configuration %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v11)
    {
      selectedPoster2 = v11;
    }

    else
    {
      selectedPoster2 = [v8 selectedPoster];
    }

    v17 = selectedPoster2;
  }

  return v17;
}

uint64_t __82__PBFAmbientRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) attributeForPoster:a2 ofType:*MEMORY[0x277D3EEA0]];
  v4 = [v3 isAssociatedWithChargerIdentifier:*(a1 + 40)];

  return v4;
}

- (BOOL)synchronizeFileSystemAttributesForStorage:(id)storage error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v59.receiver = self;
  v59.super_class = PBFAmbientRoleCoordinator;
  if ([(PBFPosterRoleCoordinator *)&v59 synchronizeFileSystemAttributesForStorage:storageCopy error:error])
  {
    role = [(PBFPosterRoleCoordinator *)self role];
    v7 = PBFLogRoleCoordinator(role);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = role;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] synchronizeFileSystemAttributesForStorage", buf, 0xCu);
    }

    modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v8 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [v8 orderedPosters];
    v52 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v52)
    {
      v51 = *v56;
      v53 = *MEMORY[0x277D3EEA0];
      v54 = *MEMORY[0x277D3EEA8];
      errorCopy = error;
      v42 = storageCopy;
      selfCopy = self;
      v50 = v8;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v56 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v55 + 1) + 8 * i);
          pbf_posterProvider = [v10 pbf_posterProvider];
          supportedAttributes = [objc_opt_class() supportedAttributes];
          v13 = [v8 attributesForPoster:v10 ofTypes:supportedAttributes];

          v14 = [v13 objectForKeyedSubscript:v53];

          if (!v14)
          {
            v15 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:v53 forNewPosterFromProvider:pbf_posterProvider];
            v16 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v53, 0, 0, v15, 0, storageCopy, error);

            if (!v16)
            {
              goto LABEL_29;
            }
          }

          v17 = [v8 configuredPropertiesForPoster:v10];
          ambientConfiguration = [v17 ambientConfiguration];

          v19 = [v13 objectForKey:v54];
          v20 = [pbf_posterProvider isEqual:@"com.apple.ambient.AmbientUI.InfographPoster"];
          if (!v20 || [ambientConfiguration supportedDataLayout] == 2 && (v20 = objc_msgSend(v19, "supportedDataLayout"), v20 == 2))
          {
            v21 = PBFLogRoleCoordinator(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v61 = role;
              v62 = 2114;
              v63 = v10;
              _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronizing Ambient configuration for poster %{public}@", buf, 0x16u);
            }

            v22 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v54, ambientConfiguration, v19, 0, 0, storageCopy, error);
            v23 = 0;
            v24 = v19;
            v25 = 0;
            if (!v22)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v48 = v19;
            v23 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:v54 forNewPosterFromProvider:pbf_posterProvider];
            _path = [v10 _path];
            serverIdentity = [_path serverIdentity];
            descriptorIdentifier = [serverIdentity descriptorIdentifier];

            v29 = [modelCoordinatorProvider pbf_posterExtensionStoreCoordinatorForProviderIdentifier:pbf_posterProvider error:0];
            v30 = [v29 dynamicDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
            v31 = v30;
            v46 = v29;
            v47 = descriptorIdentifier;
            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = [v29 staticDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
            }

            v33 = v32;

            v34 = MEMORY[0x277D3EDE8];
            pathOfLatestVersion = [v33 pathOfLatestVersion];
            v25 = [v34 loadAmbientConfigurationForPath:pathOfLatestVersion error:0];

            v37 = PBFLogRoleCoordinator(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v61 = role;
              v62 = 2114;
              v63 = v10;
              _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to fix Ambient configuration for poster %{public}@", buf, 0x16u);
            }

            storageCopy = v42;
            v38 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v54, 0, 0, v23, v25, v42, errorCopy);

            error = errorCopy;
            v24 = v48;
            if ((v38 & 1) == 0)
            {
LABEL_28:

              v8 = v50;
LABEL_29:

              v39 = 0;
              goto LABEL_30;
            }
          }

          self = selfCopy;
          v8 = v50;
        }

        v52 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }

    v39 = 1;
LABEL_30:
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)defaultAttributesForNewPosterFromProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = PBFAmbientRoleCoordinator;
  v5 = [(PBFPosterRoleCoordinator *)&v13 defaultAttributesForNewPosterFromProvider:providerCopy];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x277D3EEA0];
  v8 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:*MEMORY[0x277D3EEA0] forNewPosterFromProvider:providerCopy];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x277D3EEA8];
  v10 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:*MEMORY[0x277D3EEA8] forNewPosterFromProvider:providerCopy];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:v9];
  }

  v11 = [v6 copy];

  return v11;
}

- (id)defaultAttribute:(id)attribute forNewPosterFromProvider:(id)provider
{
  attributeCopy = attribute;
  providerCopy = provider;
  if ([attributeCopy isEqual:*MEMORY[0x277D3EEA8]])
  {
    if ([providerCopy isEqual:@"com.apple.ambient.AmbientUI.InfographPoster"])
    {
      v7 = 2;
    }

    else if ([providerCopy isEqual:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"])
    {
      v7 = 1;
    }

    else if ([providerCopy isEqual:@"com.apple.ClockPoster.ClockPosterExtension"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277D3ED28]) initWithSupportedDataLayout:v7];
  }

  else
  {
    if (![attributeCopy isEqual:*MEMORY[0x277D3EEA0]])
    {
      v9 = 0;
      goto LABEL_14;
    }

    v8 = objc_alloc_init(MEMORY[0x277D3ED20]);
  }

  v9 = v8;
LABEL_14:

  return v9;
}

+ (id)supportedAttributes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PBFAmbientRoleCoordinator_supportedAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedAttributes_onceToken_1 != -1)
  {
    dispatch_once(&supportedAttributes_onceToken_1, block);
  }

  v2 = supportedAttributes_supportedAttributes_1;

  return v2;
}

void __48__PBFAmbientRoleCoordinator_supportedAttributes__block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFAmbientRoleCoordinator;
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

  [v5 addObject:*MEMORY[0x277D3EEA8]];
  [v5 addObject:*MEMORY[0x277D3EEA0]];
  v6 = [v5 copy];
  v7 = supportedAttributes_supportedAttributes_1;
  supportedAttributes_supportedAttributes_1 = v6;
}

+ (id)subscribedEvents
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PBFAmbientRoleCoordinator_subscribedEvents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (subscribedEvents_onceToken_0 != -1)
  {
    dispatch_once(&subscribedEvents_onceToken_0, block);
  }

  v2 = subscribedEvents_subscribedEvents_0;

  return v2;
}

void __45__PBFAmbientRoleCoordinator_subscribedEvents__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB58];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___PBFAmbientRoleCoordinator;
  v2 = objc_msgSendSuper2(&v6, sel_subscribedEvents);
  v3 = [v1 setWithSet:v2];

  [v3 addObject:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"];
  [v3 addObject:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  [v3 addObject:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"];
  v4 = [v3 copy];
  v5 = subscribedEvents_subscribedEvents_0;
  subscribedEvents_subscribedEvents_0 = v4;
}

- (BOOL)validateEventIsRelevant:(id)relevant
{
  v34 = *MEMORY[0x277D85DE8];
  relevantCopy = relevant;
  v31.receiver = self;
  v31.super_class = PBFAmbientRoleCoordinator;
  if ([(PBFPosterRoleCoordinator *)&v31 validateEventIsRelevant:relevantCopy])
  {
    eventType = [relevantCopy eventType];
    if (([eventType isEqual:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"] & 1) == 0 && !objc_msgSend(eventType, "isEqual:", @"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"))
    {
      v21 = 1;
      goto LABEL_25;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    fromValue = [relevantCopy fromValue];
    v7 = [fromValue countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(fromValue);
        }

        role = [*(*(&v27 + 1) + 8 * v10) role];
        role2 = [(PBFPosterRoleCoordinator *)self role];
        v13 = [role isEqual:role2];

        if (!v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [fromValue countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      fromValue = [relevantCopy toValue];
      v14 = [fromValue countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (!v14)
      {
        v21 = 1;
        goto LABEL_23;
      }

      v15 = v14;
      v16 = *v24;
LABEL_14:
      v17 = 0;
      while (1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(fromValue);
        }

        role3 = [*(*(&v23 + 1) + 8 * v17) role];
        role4 = [(PBFPosterRoleCoordinator *)self role];
        v20 = [role3 isEqual:role4];

        if (!v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [fromValue countByEnumeratingWithState:&v23 objects:v32 count:16];
          v21 = 1;
          if (v15)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }
      }
    }

    v21 = 0;
LABEL_23:

LABEL_25:
    goto LABEL_26;
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (BOOL)notifyEventWasReceived:(id)received changes:(id *)changes storage:(id)storage
{
  v240 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  storageCopy = storage;
  if (![(PBFAmbientRoleCoordinator *)self validateEventIsRelevant:receivedCopy])
  {
    LOBYTE(v12) = 0;
    goto LABEL_145;
  }

  role = [(PBFPosterRoleCoordinator *)self role];
  eventType = [receivedCopy eventType];
  v10 = objc_opt_new();
  selfCopy = self;
  if (storageCopy)
  {
    storage = storageCopy;
  }

  else
  {
    storage = [(PBFPosterRoleCoordinator *)self storage];
  }

  v157 = storage;
  v156 = receivedCopy;
  if ([eventType isEqual:{@"PBFPosterDataStoreEventTypeDescriptorsUpdated", storageCopy}])
  {
    if (![eventType isEqual:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"])
    {
      goto LABEL_12;
    }

LABEL_10:
    v14 = [PBFPosterRoleCoordinatorChange refreshRoleCoordinator:role];
    [v10 addObject:v14];

    v15 = 0;
    goto LABEL_137;
  }

  v13 = [eventType isEqual:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  if ([eventType isEqual:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"])
  {
    goto LABEL_10;
  }

  if (!v13)
  {
    goto LABEL_91;
  }

LABEL_12:
  if (![MEMORY[0x277D3EF30] ambientPosterAutocreationSupported])
  {
LABEL_91:
    v15 = 0;
LABEL_92:
    v186.receiver = selfCopy;
    v186.super_class = PBFAmbientRoleCoordinator;
    v187 = 0;
    v12 = [(PBFPosterRoleCoordinator *)&v186 notifyEventWasReceived:v156 changes:&v187 storage:v157];
    changesCopy2 = changes;
    if (v12)
    {
      [v10 addObjectsFromArray:v187];
    }

    goto LABEL_138;
  }

  v16 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v157];
  if ([eventType isEqual:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"])
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  relatedProviders = [v156 relatedProviders];
  anyObject = [relatedProviders anyObject];

  relatedProviders2 = [v156 relatedProviders];
  v21 = [relatedProviders2 count];

  if (v21 != 1)
  {
    [PBFAmbientRoleCoordinator notifyEventWasReceived:a2 changes:self storage:?];
  }

  v160 = [(PBFAmbientRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:anyObject];
  toValue = [v156 toValue];
  v171 = anyObject;
  if ([anyObject isEqual:@"com.apple.PosterTester.SamplePoster"])
  {
    modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v24 = [modelCoordinatorProvider providerForExtensionIdentifier:anyObject];

    posterExtensionInfoPlist = [v24 posterExtensionInfoPlist];
    pbf_supportsGallery = [posterExtensionInfoPlist pbf_supportsGallery];

    if ((pbf_supportsGallery & 1) == 0)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v28 = [standardUserDefaults stringArrayForKey:@"ShowSamplePoster"];
      v29 = [v28 containsObject:anyObject];

      if ((v29 & 1) == 0)
      {

        toValue = MEMORY[0x277CBEBF8];
      }
    }
  }

  v163 = v10;
  v168 = objc_opt_new();
  v170 = objc_opt_new();
  v172 = objc_opt_new();
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v30 = toValue;
  v31 = [v30 countByEnumeratingWithState:&v223 objects:v239 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v224;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v224 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v223 + 1) + 8 * i);
        _path = [v35 _path];
        serverIdentity = [_path serverIdentity];
        type = [serverIdentity type];

        if (type == v17)
        {
          _path2 = [v35 _path];
          descriptorIdentifier = [_path2 descriptorIdentifier];

          if (descriptorIdentifier)
          {
            [v170 setObject:v35 forKeyedSubscript:descriptorIdentifier];
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v223 objects:v239 count:16];
    }

    while (v32);
  }

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v179 = v16;
  orderedPosters = [v16 orderedPosters];
  v42 = [orderedPosters countByEnumeratingWithState:&v219 objects:v238 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v220;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v220 != v44)
        {
          objc_enumerationMutation(orderedPosters);
        }

        v46 = *(*(&v219 + 1) + 8 * j);
        pbf_posterProvider = [v46 pbf_posterProvider];
        v48 = [pbf_posterProvider isEqual:v171];

        if (v48)
        {
          _path3 = [v46 _path];
          descriptorIdentifier2 = [_path3 descriptorIdentifier];

          if (descriptorIdentifier2 || ([v46 pbf_posterProvider], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "isEqualToString:", @"com.apple.ambient.AmbientUI.InfographPoster"), v51, descriptorIdentifier2 = @"InfographPoster", v52))
          {
            v53 = [v170 objectForKeyedSubscript:descriptorIdentifier2];

            if (v53)
            {
              v54 = [v172 objectForKey:descriptorIdentifier2];
              if (!v54)
              {
                v54 = objc_opt_new();
                [v172 setObject:v54 forKeyedSubscript:descriptorIdentifier2];
              }

              [v54 addObject:v46];
            }

            else
            {
              [v168 addObject:v46];
            }
          }
        }
      }

      v43 = [orderedPosters countByEnumeratingWithState:&v219 objects:v238 count:16];
    }

    while (v43);
  }

  v169 = objc_opt_new();
  v174 = objc_opt_new();
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v55 = v30;
  v56 = [v55 countByEnumeratingWithState:&v215 objects:v237 count:16];
  v10 = v163;
  if (!v56)
  {
LABEL_90:

    goto LABEL_99;
  }

  v57 = v56;
  v58 = *v216;
  v173 = *MEMORY[0x277D3EEA8];
  v161 = *v216;
  v162 = v55;
LABEL_51:
  v59 = 0;
  v164 = v57;
  while (1)
  {
    if (*v216 != v58)
    {
      objc_enumerationMutation(v55);
    }

    v60 = *(*(&v215 + 1) + 8 * v59);
    _path4 = [v60 _path];
    descriptorIdentifier3 = [_path4 descriptorIdentifier];

    v63 = [v172 objectForKeyedSubscript:descriptorIdentifier3];
    v177 = v60;
    if ([v63 count])
    {
      v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      v212 = 0u;
      v178 = v63;
      v64 = [v178 countByEnumeratingWithState:&v211 objects:v236 count:16];
      if (v64)
      {
        v65 = v64;
        v165 = v59;
        v166 = v63;
        v167 = descriptorIdentifier3;
        v66 = *v212;
        v68 = v60;
        v67 = v178;
        v176 = *v212;
        do
        {
          v69 = 0;
          v181 = v65;
          do
          {
            if (*v212 != v66)
            {
              objc_enumerationMutation(v67);
            }

            v70 = *(*(&v211 + 1) + 8 * v69);
            v71 = [v70 loadAmbientConfigurationWithError:0];
            if (![v71 creationBehavior])
            {
              ambientConfiguration = [v68 ambientConfiguration];
              displayNameLocalizationKey = [v68 displayNameLocalizationKey];
              displayNameLocalizationKey2 = [v70 displayNameLocalizationKey];
              v75 = BSEqualStrings();

              v76 = [ambientConfiguration isEqualToAmbientConfiguration:v71];
              v77 = v76;
              if (!v75 || (v76 & 1) == 0)
              {
                v78 = [v70 loadConfiguredPropertiesWithError:0];
                v184 = [v78 mutableCopy];

                supportedAttributes = [objc_opt_class() supportedAttributes];
                v80 = [v179 attributesForPoster:v70 ofTypes:supportedAttributes];
                v81 = [v80 mutableCopy];
                v82 = v81;
                if (v81)
                {
                  v83 = v81;
                }

                else
                {
                  v83 = objc_opt_new();
                }

                obj = v83;

                if ((v75 & 1) == 0)
                {
                  v84 = [objc_alloc(MEMORY[0x277D3EDD0]) initWithDisplayNameLocalizationKey:displayNameLocalizationKey];
                  [v184 setOtherMetadata:v84];
                }

                if ((v77 & 1) == 0)
                {
                  [v184 setAmbientConfiguration:ambientConfiguration];
                  [obj setObject:ambientConfiguration forKeyedSubscript:v173];
                }

                v85 = [MEMORY[0x277D3EB88] temporaryPathForRole:role];
                _path5 = [v70 _path];
                [v85 copyContentsOfPath:_path5 error:0];

                v87 = objc_alloc(MEMORY[0x277D3ECE0]);
                pbf_posterUUID = [v70 pbf_posterUUID];
                _path6 = [v70 _path];
                serverIdentity2 = [_path6 serverIdentity];
                v91 = [v87 initWithUpdatedPath:v85 updatedPosterUUID:pbf_posterUUID sourceIdentity:serverIdentity2 configuredProperties:v184 attributes:obj];

                [v91 trackTemporaryState:v85];
                [v174 addObject:v91];

                v68 = v177;
                v67 = v178;
                v66 = v176;
              }

              v65 = v181;
            }

            ++v69;
          }

          while (v65 != v69);
          v65 = [v67 countByEnumeratingWithState:&v211 objects:v236 count:16];
        }

        while (v65);
        v55 = v162;
        v10 = v163;
        v58 = v161;
        v57 = v164;
        v59 = v165;
        v63 = v166;
        descriptorIdentifier3 = v167;
      }

      goto LABEL_88;
    }

    ambientConfiguration2 = [v60 ambientConfiguration];
    v93 = ambientConfiguration2;
    if (ambientConfiguration2)
    {
      v94 = ambientConfiguration2;
    }

    else
    {
      v95 = [v160 objectForKeyedSubscript:v173];
      v96 = v95;
      if (v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = objc_opt_new();
      }

      v94 = v97;
    }

    v178 = v94;
    creationBehavior = [v94 creationBehavior];
    if (creationBehavior)
    {
      v99 = PBFLogRoleCoordinator(creationBehavior);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v233 = v177;
        _os_log_impl(&dword_21B526000, v99, OS_LOG_TYPE_DEFAULT, "Skipping descriptor '%{public}@'; creation behavior is to not auto-create", buf, 0xCu);
      }

      goto LABEL_87;
    }

    v210 = 0;
    v99 = [(PBFAmbientRoleCoordinator *)selfCopy _ambientIncomingPosterConfigurationForDescriptor:v177 referenceIncomingPosterConfiguration:0 error:&v210];
    v100 = v210;
    v101 = v100;
    if (v100 || !v99)
    {
      break;
    }

    [v169 setObject:v99 forKeyedSubscript:descriptorIdentifier3];
LABEL_87:

LABEL_88:
    if (++v59 == v57)
    {
      v57 = [v55 countByEnumeratingWithState:&v215 objects:v237 count:16];
      if (v57)
      {
        goto LABEL_51;
      }

      goto LABEL_90;
    }
  }

  if (v100)
  {
    v103 = v100;
  }

  else
  {
    v104 = MEMORY[0x277CCA9B8];
    v234 = *MEMORY[0x277CCA470];
    v235 = @"notifyEventWasReceived; Unable to copy descriptor into new configuration; bailing descriptor update.";
    v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
    v103 = [v104 pbf_generalErrorWithCode:0 userInfo:v105];
  }

  if (v103)
  {

    v15 = v179;
    goto LABEL_92;
  }

LABEL_99:
  v106 = objc_opt_new();
  v107 = [v55 sortedArrayUsingComparator:&__block_literal_global_35];

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  obja = v107;
  v108 = [obja countByEnumeratingWithState:&v206 objects:v231 count:16];
  if (v108)
  {
    v109 = v108;
    v185 = *v207;
    do
    {
      for (k = 0; k != v109; ++k)
      {
        if (*v207 != v185)
        {
          objc_enumerationMutation(obja);
        }

        _path7 = [*(*(&v206 + 1) + 8 * k) _path];
        descriptorIdentifier4 = [_path7 descriptorIdentifier];

        v113 = [v172 objectForKey:descriptorIdentifier4];
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __68__PBFAmbientRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke_2;
        v204[3] = &unk_2782C6498;
        v205 = v179;
        [v113 sortUsingComparator:v204];
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v114 = v113;
        v115 = [v114 countByEnumeratingWithState:&v200 objects:v230 count:16];
        if (v115)
        {
          v116 = v115;
          v117 = *v201;
          do
          {
            for (m = 0; m != v116; ++m)
            {
              if (*v201 != v117)
              {
                objc_enumerationMutation(v114);
              }

              pbf_posterUUID2 = [*(*(&v200 + 1) + 8 * m) pbf_posterUUID];
              [v106 addObject:pbf_posterUUID2];
            }

            v116 = [v114 countByEnumeratingWithState:&v200 objects:v230 count:16];
          }

          while (v116);
        }

        v120 = [v169 objectForKey:descriptorIdentifier4];
        v121 = v120;
        if (v120)
        {
          destinationUUID = [v120 destinationUUID];
          [v106 addObject:destinationUUID];
        }
      }

      v109 = [obja countByEnumeratingWithState:&v206 objects:v231 count:16];
    }

    while (v109);
  }

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v123 = v168;
  v124 = [v123 countByEnumeratingWithState:&v196 objects:v229 count:16];
  v10 = v163;
  if (v124)
  {
    v125 = v124;
    v126 = *v197;
    do
    {
      for (n = 0; n != v125; ++n)
      {
        if (*v197 != v126)
        {
          objc_enumerationMutation(v123);
        }

        pbf_posterUUID3 = [*(*(&v196 + 1) + 8 * n) pbf_posterUUID];
        v129 = [PBFPosterRoleCoordinatorChange removePosterFromRole:role matchingUUID:pbf_posterUUID3];
        [v163 addObject:v129];
      }

      v125 = [v123 countByEnumeratingWithState:&v196 objects:v229 count:16];
    }

    while (v125);
  }

  v195 = 0u;
  v193 = 0u;
  v194 = 0u;
  v192 = 0u;
  objectEnumerator = [v169 objectEnumerator];
  v131 = [objectEnumerator countByEnumeratingWithState:&v192 objects:v228 count:16];
  v15 = v179;
  if (v131)
  {
    v132 = v131;
    v133 = *v193;
    do
    {
      for (ii = 0; ii != v132; ++ii)
      {
        if (*v193 != v133)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v135 = [PBFPosterRoleCoordinatorChange addPosterToRole:role incomingPoster:*(*(&v192 + 1) + 8 * ii)];
        [v163 addObject:v135];
      }

      v132 = [objectEnumerator countByEnumeratingWithState:&v192 objects:v228 count:16];
    }

    while (v132);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v136 = v174;
  v137 = [v136 countByEnumeratingWithState:&v188 objects:v227 count:16];
  if (v137)
  {
    v138 = v137;
    v139 = *v189;
    do
    {
      for (jj = 0; jj != v138; ++jj)
      {
        if (*v189 != v139)
        {
          objc_enumerationMutation(v136);
        }

        v141 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:role incomingPoster:*(*(&v188 + 1) + 8 * jj)];
        [v163 addObject:v141];
      }

      v138 = [v136 countByEnumeratingWithState:&v188 objects:v227 count:16];
    }

    while (v138);
  }

  v142 = [(PBFAmbientRoleCoordinator *)selfCopy _sortedPosterUUIDsByExtensionIdentifierFromStorage:v157];
  v143 = [v142 mutableCopy];

  v144 = [v106 copy];
  [v143 setObject:v144 forKeyedSubscript:v171];

  v145 = [(PBFAmbientRoleCoordinator *)selfCopy sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:v143];
  v146 = [PBFPosterRoleCoordinatorChange reorderPostersForRole:role sortedPosterUUIDs:v145];
  [v163 addObject:v146];

LABEL_137:
  v12 = 1;
  changesCopy2 = changes;
LABEL_138:
  v147 = [v10 count];
  if (changesCopy2 && v147)
  {
    *changesCopy2 = [v10 copy];
  }

  v148 = objc_opt_class();
  role2 = [(PBFPosterRoleCoordinator *)selfCopy role];
  if (v15)
  {
    v150 = v148;
    receivedCopy = v156;
    [v150 dumpResultsForEvent:v156 role:role2 posterCollection:v15 changes:v10 eventWasHandled:v12];
    v151 = v157;
  }

  else
  {
    v151 = v157;
    v152 = [(PBFPosterRoleCoordinator *)selfCopy buildNewPosterCollectionFromStorage:v157];
    v153 = v148;
    receivedCopy = v156;
    [v153 dumpResultsForEvent:v156 role:role2 posterCollection:v152 changes:v10 eventWasHandled:v12];
  }

  storageCopy = v155;
LABEL_145:

  return v12;
}

uint64_t __68__PBFAmbientRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 ambientConfiguration];
  v6 = [v5 displayOrder];

  v7 = [v4 ambientConfiguration];

  v8 = [v7 displayOrder];
  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

uint64_t __68__PBFAmbientRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x277D3EED8];
  v7 = a3;
  v8 = [v5 attributeForPoster:a2 ofType:v6];
  v9 = [*(a1 + 32) attributeForPoster:v7 ofType:v6];

  v10 = [v8 creationDate];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v13 = v12;

  v14 = [v9 creationDate];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v17 = v16;

  if (v13)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (v13)
    {
      v19 = -1;
    }

    else
    {
      v19 = v17 != 0;
    }
  }

  else
  {
    v19 = [v17 compare:v13];
  }

  return v19;
}

- (BOOL)finalizeChangesWithChangeHandler:(id)handler outEvents:(id *)events error:(id *)error
{
  v153 = *MEMORY[0x277D85DE8];
  v138.receiver = self;
  v138.super_class = PBFAmbientRoleCoordinator;
  handlerCopy = handler;
  errorCopy = error;
  if (![PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:sel_finalizeChangesWithChangeHandler_outEvents_error_ outEvents:? error:?])
  {
    v36 = 0;
    goto LABEL_109;
  }

  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  role = [(PBFPosterRoleCoordinator *)self role];
  role2 = [(PBFPosterRoleCoordinator *)self role];
  v8 = [handlerCopy sortedPosterUUIDsForRole:role2 error:0];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v112 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v111 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
  if (v10)
  {
    v11 = *v131;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v131 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v130 + 1) + 8 * i);
        v14 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v13 extensionIdentifier:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"];
        if (v14)
        {
          [v9 setObject:v14 forKey:v13];
        }

        else
        {
          v14 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v13 extensionIdentifier:@"com.apple.ambient.AmbientUI.InfographPoster"];
          if (v14)
          {
            [v112 setObject:v14 forKey:v13];
          }

          else
          {
            v14 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v13 extensionIdentifier:@"com.apple.ClockPoster.ClockPosterExtension"];
            if (v14)
            {
              [v111 setObject:v14 forKey:v13];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
    }

    while (v10);
  }

  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __78__PBFAmbientRoleCoordinator_finalizeChangesWithChangeHandler_outEvents_error___block_invoke;
  v129[3] = &unk_2782C9518;
  v129[4] = &v134;
  [v9 enumerateKeysAndObjectsUsingBlock:v129];
  if ((v135[3] & 1) == 0)
  {
    v15 = [v9 count];
    if (v15)
    {
      v16 = PBFLogRoleCoordinator(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "All photo posters are hidden!", buf, 2u);
      }

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v17 = obj;
      v18 = [v17 countByEnumeratingWithState:&v125 objects:v151 count:16];
      if (!v18)
      {
        goto LABEL_31;
      }

      v108 = *v126;
      v105 = v17;
LABEL_21:
      v19 = 0;
      while (1)
      {
        if (*v126 != v108)
        {
          objc_enumerationMutation(v105);
        }

        v20 = *(*(&v125 + 1) + 8 * v19);
        v21 = [v9 objectForKey:v20];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 loadConfiguredPropertiesWithError:0];
          v24 = [v23 mutableCopy];

          ambientConfiguration = [v24 ambientConfiguration];
          v26 = [ambientConfiguration mutableCopy];

          [v26 setHidden:0];
          [v24 setAmbientConfiguration:v26];
          v27 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v24 forPosterWithinRole:role matchingUUID:v20];
          v124 = 0;
          v28 = [(PBFAmbientRoleCoordinator *)self _executeChange:v27 storage:handlerCopy outEvents:events error:&v124];
          v29 = v124;

          if (v28)
          {
            v38 = PBFLogRoleCoordinator(v30);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v148 = v22;
              _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "All photo posters are hidden so choosing to unhide poster: %@{public}", buf, 0xCu);
            }

            v37 = v105;
            goto LABEL_42;
          }

          v31 = PBFLogRoleCoordinator(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v148 = v22;
            v149 = 2114;
            v150 = v29;
            _os_log_error_impl(&dword_21B526000, v31, OS_LOG_TYPE_ERROR, "failed to unhide poster %{public}@: %{public}@", buf, 0x16u);
          }
        }

        if (v18 == ++v19)
        {
          v17 = v105;
          v18 = [v105 countByEnumeratingWithState:&v125 objects:v151 count:16];
          if (!v18)
          {
LABEL_31:

            v33 = PBFLogRoleCoordinator(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:v33 outEvents:? error:?];
            }

            if (errorCopy)
            {
              v34 = MEMORY[0x277CCA9B8];
              v145 = *MEMORY[0x277CCA470];
              v146 = @"Photos posters are all hidden and no poster could be found to un-hide";
              v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
              [v34 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v35];
              *errorCopy = v36 = 0;
              goto LABEL_107;
            }

            v36 = 0;
            goto LABEL_108;
          }

          goto LABEL_21;
        }
      }
    }
  }

  if (![v9 count])
  {
    v37 = PBFLogRoleCoordinator(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "No photo posters found; not checking for hidden", buf, 2u);
    }

LABEL_42:
  }

  if (![v112 count])
  {
    v40 = PBFLogRoleCoordinator(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "No Infograph posters found; skipping bad ambient configuration state check", buf, 2u);
    }

LABEL_66:

    if ([v111 count])
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      allValues = [v111 allValues];
      v61 = [allValues countByEnumeratingWithState:&v115 objects:v141 count:16];
      v35 = allValues;
      if (v61)
      {
        v98 = *v116;
LABEL_69:
        v100 = v61;
        v62 = 0;
        while (1)
        {
          if (*v116 != v98)
          {
            objc_enumerationMutation(allValues);
          }

          v63 = *(*(&v115 + 1) + 8 * v62);
          v64 = PBFLogRoleCoordinator(v61);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v148 = v63;
            _os_log_impl(&dword_21B526000, v64, OS_LOG_TYPE_DEFAULT, "Checking %{public}@ for bad ambient configuration.. ", buf, 0xCu);
          }

          v65 = objc_alloc(MEMORY[0x277D3ED80]);
          _path = [v63 _path];
          v67 = [v65 _initWithPath:_path];

          if (!v67)
          {
            goto LABEL_89;
          }

          v68 = [v63 loadConfiguredPropertiesWithError:0];
          v69 = [v68 mutableCopy];
          v70 = v69;
          if (v69)
          {
            v110 = v69;
          }

          else
          {
            v71 = MEMORY[0x277D3EDD8];
            role3 = [(PBFPosterRoleCoordinator *)self role];
            v110 = [v71 defaultConfiguredPropertiesForRole:role3];
          }

          displayNameLocalizationKey = [v67 displayNameLocalizationKey];
          otherMetadata = [v110 otherMetadata];
          displayNameLocalizationKey2 = [otherMetadata displayNameLocalizationKey];
          v76 = [displayNameLocalizationKey isEqual:displayNameLocalizationKey2];

          if ((v76 & 1) == 0)
          {
            v77 = objc_alloc(MEMORY[0x277D3EDD0]);
            displayNameLocalizationKey3 = [v67 displayNameLocalizationKey];
            v79 = [v77 initWithDisplayNameLocalizationKey:displayNameLocalizationKey3];
            [v110 setOtherMetadata:v79];
          }

          ambientConfiguration2 = [v67 ambientConfiguration];
          v80 = [v63 loadAmbientConfigurationWithError:0];
          editingBehavior = [ambientConfiguration2 editingBehavior];
          if (editingBehavior != [v80 editingBehavior])
          {
            break;
          }

          if ((v76 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_88:

LABEL_89:
          if (v100 == ++v62)
          {
            v61 = [allValues countByEnumeratingWithState:&v115 objects:v141 count:16];
            v36 = 1;
            if (v61)
            {
              goto LABEL_69;
            }

            goto LABEL_106;
          }
        }

        v82 = [v80 mutableCopy];
        [v82 setEditingBehavior:{objc_msgSend(ambientConfiguration2, "editingBehavior")}];
        v83 = [v82 copy];
        [v110 setAmbientConfiguration:v83];

LABEL_84:
        pbf_posterUUID = [v63 pbf_posterUUID];
        v85 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v110 forPosterWithinRole:role matchingUUID:pbf_posterUUID];
        v114 = 0;
        v86 = [(PBFAmbientRoleCoordinator *)self _executeChange:v85 storage:handlerCopy outEvents:events error:&v114];
        v87 = v114;

        if (!v86)
        {
          v93 = PBFLogRoleCoordinator(v88);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
          }

          if (errorCopy)
          {
            v94 = MEMORY[0x277CCA9B8];
            v139 = *MEMORY[0x277CCA470];
            v140 = @"Unable to correct editing behavior for clock poster";
            v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
            *errorCopy = [v94 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v95];
          }

          goto LABEL_105;
        }

        v89 = PBFLogRoleCoordinator(v88);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v148 = v63;
          _os_log_impl(&dword_21B526000, v89, OS_LOG_TYPE_DEFAULT, "Correcting editing behavior for poster %{public}@", buf, 0xCu);
        }

        goto LABEL_88;
      }
    }

    else
    {
      v35 = PBFLogRoleCoordinator(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "No Clock posters found; skipping bad ambient configuration state check", buf, 2u);
      }
    }

    v36 = 1;
    goto LABEL_107;
  }

  v123 = 0u;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  allValues = [v112 allValues];
  v39 = [allValues countByEnumeratingWithState:&v120 objects:v144 count:16];
  v40 = allValues;
  if (!v39)
  {
    goto LABEL_66;
  }

  v99 = *v121;
LABEL_46:
  v106 = v39;
  v41 = 0;
  while (1)
  {
    if (*v121 != v99)
    {
      objc_enumerationMutation(allValues);
    }

    v42 = *(*(&v120 + 1) + 8 * v41);
    v43 = PBFLogRoleCoordinator(v39);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v42;
      _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "Checking %{public}@ for bad ambient configuration supported data layout state", buf, 0xCu);
    }

    v44 = [v42 loadAmbientConfigurationWithError:0];
    supportedDataLayout = [v44 supportedDataLayout];
    if (supportedDataLayout == 2)
    {
      goto LABEL_61;
    }

    v46 = PBFLogRoleCoordinator(supportedDataLayout);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      supportedDataLayout2 = [v44 supportedDataLayout];
      *buf = 138543618;
      v148 = v42;
      v149 = 2048;
      v150 = supportedDataLayout2;
      _os_log_impl(&dword_21B526000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ has bad supported data layout state: %lu", buf, 0x16u);
    }

    v48 = [v44 mutableCopy];
    [v48 setSupportedDataLayout:2];
    v49 = [v42 loadConfiguredPropertiesWithError:0];
    v50 = [v49 mutableCopy];
    v51 = v50;
    if (v50)
    {
      v109 = v50;
    }

    else
    {
      v52 = MEMORY[0x277D3EDD8];
      role4 = [(PBFPosterRoleCoordinator *)self role];
      v109 = [v52 defaultConfiguredPropertiesForRole:role4];
    }

    v54 = [v48 copy];
    [v109 setAmbientConfiguration:v54];

    pbf_posterUUID2 = [v42 pbf_posterUUID];
    v56 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v109 forPosterWithinRole:role matchingUUID:pbf_posterUUID2];
    v119 = 0;
    v57 = [(PBFAmbientRoleCoordinator *)self _executeChange:v56 storage:handlerCopy outEvents:events error:&v119];
    v58 = v119;

    if (!v57)
    {
      break;
    }

    v60 = PBFLogRoleCoordinator(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v148 = v42;
      _os_log_impl(&dword_21B526000, v60, OS_LOG_TYPE_DEFAULT, "correcting ambient widget configuration for poster %{public}@", buf, 0xCu);
    }

LABEL_61:
    if (v106 == ++v41)
    {
      v39 = [allValues countByEnumeratingWithState:&v120 objects:v144 count:16];
      if (!v39)
      {
        v40 = allValues;
        goto LABEL_66;
      }

      goto LABEL_46;
    }
  }

  v90 = PBFLogRoleCoordinator(v59);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
  {
    [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
  }

  if (errorCopy)
  {
    v91 = MEMORY[0x277CCA9B8];
    v142 = *MEMORY[0x277CCA470];
    v143 = @"Unable to correct invalid supported data layout type for infograph";
    v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    *errorCopy = [v91 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v92];
  }

LABEL_105:
  v36 = 0;
LABEL_106:
  v35 = allValues;
LABEL_107:

LABEL_108:
  _Block_object_dispose(&v134, 8);
LABEL_109:

  return v36;
}

void __78__PBFAmbientRoleCoordinator_finalizeChangesWithChangeHandler_outEvents_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 loadAmbientConfigurationWithError:0];
  v7 = [v6 hidden];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)supportedChangeTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PBFAmbientRoleCoordinator_supportedChangeTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedChangeTypes_onceToken_1 != -1)
  {
    dispatch_once(&supportedChangeTypes_onceToken_1, block);
  }

  v2 = supportedChangeTypes_supportedChangeTypes_1;

  return v2;
}

void __49__PBFAmbientRoleCoordinator_supportedChangeTypes__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v9[0] = @"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [v2 setWithArray:v3];

  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFAmbientRoleCoordinator;
  v5 = objc_msgSendSuper2(&v8, sel_supportedChangeTypes);
  [v4 unionSet:v5];

  v6 = [v4 copy];
  v7 = supportedChangeTypes_supportedChangeTypes_1;
  supportedChangeTypes_supportedChangeTypes_1 = v6;
}

- (BOOL)_executeChange:(id)change storage:(id)storage outEvents:(id *)events error:(id *)error
{
  v99[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  storageCopy = storage;
  changeType = [changeCopy changeType];
  if (![changeType isEqual:@"PBFPosterRoleCoordinatorChangeTypeAddPoster"])
  {
    goto LABEL_24;
  }

  userInfo = [changeCopy userInfo];
  v14 = [userInfo objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration"];

  if (v14)
  {
    attributes = [v14 attributes];
    v16 = [attributes count];

    if (v16)
    {
LABEL_23:

LABEL_24:
      userInfo2 = [changeCopy userInfo];
      v14 = [userInfo2 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType"];

      userInfo3 = [changeCopy userInfo];
      v40 = [userInfo3 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      if ([v14 isEqual:*MEMORY[0x277D3EEA0]] && ((objc_msgSend(changeType, "isEqual:", @"PBFPosterRoleCoordinatorChangeTypeAssignAttribute") & 1) != 0 || objc_msgSend(changeType, "isEqual:", @"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute")))
      {
        userInfo4 = [changeCopy userInfo];
        v42 = [userInfo4 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttribute"];

        v43 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
        v30 = [(PBFAmbientRoleCoordinator *)self _executeAmbientChargerConfigurationUpdateForPosterUUID:v40 newAmbientChargerConfiguration:v42 currentCollection:v43 storage:storageCopy error:error];
      }

      else if ([changeType isEqual:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties"])
      {
        v90 = changeType;
        v92 = storageCopy;
        v94 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
        v44 = [v94 posterWithUUID:v40];
        userInfo5 = [changeCopy userInfo];
        v46 = [userInfo5 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties"];

        if (v40 && v44 && v46)
        {
          eventsCopy = events;
          v84 = v46;
          _path = [v44 _path];
          serverIdentity = [_path serverIdentity];

          selfCopy = self;
          supportedAttributes = [objc_opt_class() supportedAttributes];
          v50 = [v94 attributesForPoster:v44 ofTypes:supportedAttributes];
          v51 = [v50 mutableCopy];
          v52 = v51;
          if (v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = objc_opt_new();
          }

          v61 = v53;
          errorCopy = error;

          ambientConfiguration = [v84 ambientConfiguration];
          if (ambientConfiguration)
          {
            v63 = *MEMORY[0x277D3EEA8];
            v64 = [v61 objectForKey:*MEMORY[0x277D3EEA8]];
            v65 = [ambientConfiguration isEqual:v64];

            if ((v65 & 1) == 0)
            {
              [v61 setObject:ambientConfiguration forKeyedSubscript:v63];
              v66 = *MEMORY[0x277D3EED8];
              v67 = [v61 objectForKeyedSubscript:*MEMORY[0x277D3EED8]];
              v68 = v67;
              if (v67)
              {
                v69 = v67;
              }

              else
              {
                v69 = objc_opt_new();
              }

              v70 = v69;

              usageMetadataWithUpdatedLastModifiedDate = [v70 usageMetadataWithUpdatedLastModifiedDate];

              [v61 setObject:usageMetadataWithUpdatedLastModifiedDate forKeyedSubscript:v66];
            }
          }

          v72 = objc_alloc(MEMORY[0x277D3ECE0]);
          _path2 = [v44 _path];
          pbf_posterUUID = [v44 pbf_posterUUID];
          v75 = serverIdentity;
          v81 = serverIdentity;
          v46 = v84;
          v79 = v61;
          v76 = [v72 initWithUpdatedPath:_path2 updatedPosterUUID:pbf_posterUUID sourceIdentity:v75 configuredProperties:v84 attributes:v61];

          v77 = ambientConfiguration;
          v60 = v94;
          v30 = [(PBFPosterRoleCoordinator *)selfCopy _ingestIncomingPosterConfiguration:v76 change:changeCopy currentCollection:v94 storage:v92 outEvents:eventsCopy error:errorCopy];
        }

        else
        {
          v54 = MEMORY[0x277CCA9B8];
          v96[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
          v55 = [changeCopy description];
          v56 = v55;
          v57 = @"(null change)";
          if (v55)
          {
            v57 = v55;
          }

          v96[1] = @"posterUUIDToUpdate";
          v97[0] = v57;
          v58 = @"(null uuid)";
          if (v40)
          {
            v58 = v40;
          }

          v97[1] = v58;
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
          *error = [v54 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v59];

          v30 = 0;
          v60 = v94;
        }

        changeType = v90;
        storageCopy = v92;
      }

      else
      {
        v95.receiver = self;
        v95.super_class = PBFAmbientRoleCoordinator;
        v30 = [(PBFPosterRoleCoordinator *)&v95 _executeChange:changeCopy storage:storageCopy outEvents:events error:error];
      }

      goto LABEL_52;
    }

    sourceIdentity = [v14 sourceIdentity];
    provider = [sourceIdentity provider];

    sourceIdentity2 = [v14 sourceIdentity];
    descriptorIdentifier = [sourceIdentity2 descriptorIdentifier];

    if (![descriptorIdentifier length])
    {
LABEL_22:

      goto LABEL_23;
    }

    selfCopy2 = self;
    modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    errorCopy2 = error;
    v22 = [modelCoordinatorProvider pbf_posterExtensionStoreCoordinatorForProviderIdentifier:provider error:error];
    if (v22)
    {
      v23 = v22;
      v93 = modelCoordinatorProvider;
      v24 = [v22 dynamicDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
      v25 = v24;
      eventsCopy2 = events;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = [v23 staticDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
      }

      v31 = v26;

      pathOfLatestVersion = [v31 pathOfLatestVersion];
      v91 = pathOfLatestVersion;
      if (pathOfLatestVersion)
      {
        v89 = v31;
        v80 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:pathOfLatestVersion];
        v33 = [PBFAmbientRoleCoordinator _ambientIncomingPosterConfigurationForDescriptor:selfCopy2 referenceIncomingPosterConfiguration:"_ambientIncomingPosterConfigurationForDescriptor:referenceIncomingPosterConfiguration:error:" error:?];

        if (v33)
        {
          role = [(PBFPosterRoleCoordinator *)selfCopy2 role];
          v35 = [PBFPosterRoleCoordinatorChange addPosterToRole:role incomingPoster:v33];

          v14 = v33;
          changeCopy = v35;
        }

        else
        {
          v14 = 0;
        }

        v37 = v93;

        v31 = v89;
        v36 = v33 != 0;
      }

      else
      {
        v36 = 1;
        v37 = v93;
      }

      self = selfCopy2;
      error = errorCopy2;
      events = eventsCopy2;
      if (v36)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_41:
    v30 = 0;
LABEL_52:

    goto LABEL_53;
  }

  if (error)
  {
    v27 = MEMORY[0x277CCA9B8];
    v98 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
    v28 = [changeCopy description];
    v14 = v28;
    v29 = @"(null change)";
    if (v28)
    {
      v29 = v28;
    }

    v99[0] = v29;
    provider = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    *error = [v27 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:provider];
    goto LABEL_41;
  }

  v30 = 0;
LABEL_53:

  return v30;
}

- (BOOL)_prepareAttributesForIngestionForPoster:(id)poster existingAttributes:(id)attributes incomingAttributes:(id)incomingAttributes proposedAttributesToDelete:(id *)delete proposedAttributesToUpdate:(id *)update storage:(id)storage currentCollection:(id)collection error:(id *)self0
{
  posterCopy = poster;
  incomingAttributesCopy = incomingAttributes;
  storageCopy = storage;
  collectionCopy = collection;
  v36 = 0;
  v37 = 0;
  v35.receiver = self;
  v35.super_class = PBFAmbientRoleCoordinator;
  LODWORD(attributes) = [(PBFPosterRoleCoordinator *)&v35 _prepareAttributesForIngestionForPoster:posterCopy existingAttributes:attributes incomingAttributes:incomingAttributesCopy proposedAttributesToDelete:&v37 proposedAttributesToUpdate:&v36 storage:storageCopy currentCollection:collectionCopy error:error];
  v19 = v37;
  v20 = v36;
  v21 = v20;
  if (attributes)
  {
    updateCopy = update;
    v22 = [v20 mutableCopy];
    v23 = *MEMORY[0x277D3EEA8];
    v32 = v22;
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D3EEA8]];
    if (!v24)
    {
      v24 = [objc_alloc(MEMORY[0x277D3ED28]) initWithSupportedDataLayout:3];
      [v32 setObject:v24 forKeyedSubscript:v23];
    }

    v25 = [incomingAttributesCopy objectForKey:*MEMORY[0x277D3EEA0]];
    if (v25 && (v34 = 0, [(PBFAmbientRoleCoordinator *)self _executeAmbientChargerConfigurationUpdateForPosterUUID:posterCopy newAmbientChargerConfiguration:v25 currentCollection:collectionCopy storage:storageCopy error:&v34], (v26 = v34) != 0))
    {
      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      v27 = 0;
      v28 = v32;
    }

    else
    {
      v28 = v32;
      if (delete)
      {
        v29 = v19;
        *delete = v19;
      }

      if (updateCopy)
      {
        *updateCopy = [v32 copy];
      }

      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_executeAmbientChargerConfigurationUpdateForPosterUUID:(id)d newAmbientChargerConfiguration:(id)configuration currentCollection:(id)collection storage:(id)storage error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  collectionCopy = collection;
  storageCopy = storage;
  v13 = [collectionCopy posterWithUUID:dCopy];
  v14 = [collectionCopy posterWithUUID:dCopy];
  v15 = *MEMORY[0x277D3EEA0];
  v16 = [collectionCopy attributeForPoster:v14 ofType:*MEMORY[0x277D3EEA0]];

  v77 = v16;
  if ([v16 isEqual:configurationCopy])
  {
    v17 = 1;
  }

  else
  {
    v72 = v15;
    v65 = v13;
    v68 = dCopy;
    v69 = collectionCopy;
    v18 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    associatedChargerIdentifiers = [configurationCopy associatedChargerIdentifiers];
    v20 = [associatedChargerIdentifiers countByEnumeratingWithState:&v90 objects:v96 count:16];
    v71 = configurationCopy;
    if (v20)
    {
      v21 = v20;
      v22 = *v91;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v91 != v22)
          {
            objc_enumerationMutation(associatedChargerIdentifiers);
          }

          v24 = *(*(&v90 + 1) + 8 * i);
          associatedChargerIdentifiers2 = [v77 associatedChargerIdentifiers];
          if ([associatedChargerIdentifiers2 containsObject:v24])
          {
          }

          else
          {
            associatedChargerIdentifiers3 = [configurationCopy associatedChargerIdentifiers];
            v27 = [associatedChargerIdentifiers3 containsObject:v24];

            configurationCopy = v71;
            if (v27)
            {
              [v18 addObject:v24];
              goto LABEL_15;
            }
          }
        }

        v21 = [associatedChargerIdentifiers countByEnumeratingWithState:&v90 objects:v96 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    v86 = 0u;
    v28 = v18;
    dCopy = v68;
    collectionCopy = v69;
    v29 = v72;
    v64 = [v28 countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v64)
    {
      v30 = *v87;
      v63 = v28;
      v61 = *v87;
      do
      {
        v31 = 0;
        do
        {
          if (*v87 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v66 = v31;
          v32 = *(*(&v86 + 1) + 8 * v31);
          orderedPosters = [collectionCopy orderedPosters];
          array = [orderedPosters array];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __147__PBFAmbientRoleCoordinator__executeAmbientChargerConfigurationUpdateForPosterUUID_newAmbientChargerConfiguration_currentCollection_storage_error___block_invoke;
          v83[3] = &unk_2782C6CD0;
          v73 = collectionCopy;
          v74 = v32;
          v84 = v73;
          v85 = v32;
          v35 = [array bs_filter:v83];

          if ([v35 count])
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v62 = v35;
            obj = v35;
            v36 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v80;
              while (2)
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v80 != v38)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v40 = *(*(&v79 + 1) + 8 * j);
                  v41 = [v73 attributeForPoster:v40 ofType:v29];
                  v42 = [v41 mutableCopy];
                  [v42 disassociateFromChargerIdentifier:v74];
                  associatedChargerIdentifiers4 = [v42 associatedChargerIdentifiers];
                  v44 = [associatedChargerIdentifiers4 count];

                  if (!v44)
                  {

                    v42 = 0;
                  }

                  pbf_posterUUID = [v40 pbf_posterUUID];
                  role = [(PBFPosterRoleCoordinator *)self role];
                  encodeJSON = [v42 encodeJSON];
                  v78 = 0;
                  v48 = [storageCopy mutateAttributeForPoster:pbf_posterUUID roleId:role attributeId:v29 attributePayload:encodeJSON error:&v78];
                  v49 = v78;

                  if ((v48 & 1) == 0)
                  {
                    if (error)
                    {
                      v57 = v49;
                      *error = v49;
                    }

                    v17 = 0;
                    role3 = v84;
                    v28 = v63;
                    usageMetadataWithUpdatedLastModifiedDate = v63;
                    dCopy = v68;
                    configurationCopy = v71;
                    goto LABEL_43;
                  }

                  v29 = v72;
                }

                v37 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }
            }

            dCopy = v68;
            collectionCopy = v69;
            configurationCopy = v71;
            v35 = v62;
            v28 = v63;
            v30 = v61;
          }

          v31 = v66 + 1;
        }

        while (v66 + 1 != v64);
        v64 = [v28 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v64);
    }

    role2 = [(PBFPosterRoleCoordinator *)self role];
    encodeJSON2 = [configurationCopy encodeJSON];
    v52 = [storageCopy mutateAttributeForPoster:dCopy roleId:role2 attributeId:v29 attributePayload:encodeJSON2 error:error];

    if (v52)
    {
      v53 = *MEMORY[0x277D3EED8];
      v54 = [collectionCopy attributeForPoster:v65 ofType:*MEMORY[0x277D3EED8]];
      if (v54)
      {
        v55 = v54;
        usageMetadataWithUpdatedLastModifiedDate = [v54 usageMetadataWithUpdatedLastModifiedDate];
      }

      else
      {
        usageMetadataWithUpdatedLastModifiedDate = objc_opt_new();
      }

      role3 = [(PBFPosterRoleCoordinator *)self role];
      encodeJSON3 = [usageMetadataWithUpdatedLastModifiedDate encodeJSON];
      [storageCopy mutateAttributeForPoster:dCopy roleId:role3 attributeId:v53 attributePayload:encodeJSON3 error:0];

      v17 = 1;
LABEL_43:

      collectionCopy = v69;
    }

    else
    {
      v17 = 1;
    }

    v13 = v65;
  }

  return v17;
}

uint64_t __147__PBFAmbientRoleCoordinator__executeAmbientChargerConfigurationUpdateForPosterUUID_newAmbientChargerConfiguration_currentCollection_storage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) attributeForPoster:a2 ofType:*MEMORY[0x277D3EEA0]];
  v4 = [v3 isAssociatedWithChargerIdentifier:*(a1 + 40)];

  return v4;
}

- (id)sortedPosterUUIDsFromStorage:(id)storage
{
  v4 = MEMORY[0x277D3EF30];
  storageCopy = storage;
  if ([v4 ambientPosterDateCreatedOrderingSupported])
  {
    v9.receiver = self;
    v9.super_class = PBFAmbientRoleCoordinator;
    v6 = [(PBFPosterRoleCoordinator *)&v9 sortedPosterUUIDsFromStorage:storageCopy];
  }

  else
  {
    v7 = [(PBFAmbientRoleCoordinator *)self _sortedPosterUUIDsByExtensionIdentifierFromStorage:storageCopy];

    v6 = [(PBFAmbientRoleCoordinator *)self sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:v7];
  }

  return v6;
}

- (id)sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:(id)identifier
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v3 = [identifierCopy mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v7 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [&unk_282D0A2B8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = @"com.apple.PosterTester.SamplePoster";
    v11 = *v45;
    v37 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(&unk_282D0A2B8);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        if (![v13 isEqual:v10])
        {
          goto LABEL_13;
        }

        v14 = v11;
        v15 = v6;
        v16 = v10;
        modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
        v18 = [modelCoordinatorProvider providerForExtensionIdentifier:v13];

        posterExtensionInfoPlist = [v18 posterExtensionInfoPlist];
        pbf_supportsGallery = [posterExtensionInfoPlist pbf_supportsGallery];

        if ((pbf_supportsGallery & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "stringArrayForKey:", @"ShowSamplePoster"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v13), v22, v21, v23))
        {

          v10 = v16;
          v6 = v15;
          v11 = v14;
          v7 = v37;
LABEL_13:
          v18 = [identifierCopy objectForKeyedSubscript:v13];
          array = [v18 array];
          [v7 addObjectsFromArray:array];

          [v6 removeObjectForKey:v13];
          goto LABEL_14;
        }

        v10 = v16;
        v6 = v15;
        v11 = v14;
        v7 = v37;
LABEL_14:

        ++v12;
      }

      while (v9 != v12);
      v25 = [&unk_282D0A2B8 countByEnumeratingWithState:&v44 objects:v49 count:16];
      v9 = v25;
    }

    while (v25);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  allKeys = [v6 allKeys];
  v27 = [allKeys sortedArrayUsingSelector:sel_localizedCompare_];

  v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v40 + 1) + 8 * i);
        v33 = [identifierCopy objectForKeyedSubscript:v32];
        array2 = [v33 array];
        [v7 addObjectsFromArray:array2];

        [v6 removeObjectForKey:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v29);
  }

  v35 = [v7 copy];

  return v35;
}

- (id)_sortedPosterUUIDsByExtensionIdentifierFromStorage:(id)storage
{
  v23 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  role = [(PBFPosterRoleCoordinator *)self role];
  v6 = [storageCopy sortedPosterUUIDsForRole:role error:0];

  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [storageCopy extensionIdentifierForPosterUUID:v13 error:{0, v18}];
        v15 = [v7 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = objc_opt_new();
          [v7 setObject:v15 forKeyedSubscript:v14];
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

- (void)noteDidResetRoleCoordinator:(id)coordinator
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = PBFLogRoleCoordinator(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    role = [(PBFPosterRoleCoordinator *)self role];
    v6 = 138543362;
    v7 = role;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Populating ambient role coordinator epoch after role reset", &v6, 0xCu);
  }
}

- (id)_ambientIncomingPosterConfigurationForDescriptor:(id)descriptor referenceIncomingPosterConfiguration:(id)configuration error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  configurationCopy = configuration;
  role = [(PBFPosterRoleCoordinator *)self role];
  _path = [descriptorCopy _path];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];

  _path2 = [descriptorCopy _path];
  serverIdentity2 = [_path2 serverIdentity];
  descriptorIdentifier = [serverIdentity2 descriptorIdentifier];

  v16 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];
  _path3 = [descriptorCopy _path];
  v61 = 0;
  LOBYTE(serverIdentity2) = [v16 copyContentsOfPath:_path3 error:&v61];
  v18 = v61;

  if (serverIdentity2)
  {
    errorCopy = error;
    v19 = [(PBFAmbientRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:provider];
    ambientConfiguration = [descriptorCopy ambientConfiguration];
    v21 = ambientConfiguration;
    v58 = v19;
    v59 = descriptorIdentifier;
    v56 = v18;
    if (ambientConfiguration)
    {
      v22 = ambientConfiguration;
      v23 = *MEMORY[0x277D3EEA8];
    }

    else
    {
      v23 = *MEMORY[0x277D3EEA8];
      v26 = [v19 objectForKeyedSubscript:*MEMORY[0x277D3EEA8]];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = objc_opt_new();
      }

      v32 = v28;

      v19 = v58;
      v22 = v32;
    }

    v33 = [MEMORY[0x277D3ED60] defaultConfiguredPropertiesForRole:role];
    v34 = [v33 mutableCopy];

    v35 = [v19 mutableCopy];
    v36 = [v22 copy];
    [v35 setObject:v36 forKeyedSubscript:v23];

    v54 = v22;
    [v34 setAmbientConfiguration:v22];
    displayNameLocalizationKey = [descriptorCopy displayNameLocalizationKey];
    if (displayNameLocalizationKey)
    {
      [v16 setDisplayNameLocalizationKey:displayNameLocalizationKey];
    }

    v52 = displayNameLocalizationKey;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v53 = [MEMORY[0x277D3EB98] descriptorIdentityWithProvider:provider identifier:v59 role:role posterUUID:uUID version:0];
    v57 = provider;
    if (configurationCopy)
    {
      v51 = role;
      configuredProperties = [configurationCopy configuredProperties];
      [v34 mergeConfiguredProperties:configuredProperties];
      attributes = [configurationCopy attributes];
      if ([attributes count])
      {
        [v35 addEntriesFromDictionary:attributes];
      }

      v50 = v35;
      _path4 = [configurationCopy _path];
      v42 = [v16 copyContentsOfPath:_path4 error:errorCopy];

      if (!v42)
      {

        v25 = 0;
        v35 = v50;
        role = v51;
        provider = v57;
        v48 = v58;
        v43 = v34;
        v47 = v53;
        goto LABEL_23;
      }

      v43 = v34;
      destinationUUID = [configurationCopy destinationUUID];

      uUID = destinationUUID;
      v35 = v50;
      role = v51;
    }

    else
    {
      v43 = v34;
    }

    v45 = objc_alloc(MEMORY[0x277D3ECE0]);
    _path5 = [v16 _path];
    v47 = v53;
    v25 = [v45 initWithNewPath:_path5 destinationPosterUUID:uUID sourceIdentity:v53 configuredProperties:v43 attributes:v35];

    [v25 trackTemporaryState:v16];
    provider = v57;
    v48 = v58;
LABEL_23:

    descriptorIdentifier = v59;
    v18 = v56;
    goto LABEL_24;
  }

  if (error)
  {
    if (v18)
    {
      v24 = v18;
      v25 = 0;
      *error = v18;
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA470];
    v63[0] = @"_ambientIncomingPosterConfigurationForDescriptor initial copy; Unable to copy descriptor; bailing descriptor update.";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v31 = [v29 pbf_generalErrorWithCode:0 userInfo:v30];
    *error = v31;
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (void)notifyEventWasReceived:(const char *)a1 changes:(uint64_t)a2 storage:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[event relatedProviders] count] == 1"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBFAmbientRoleCoordinator.m";
    v16 = 1024;
    v17 = 255;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end