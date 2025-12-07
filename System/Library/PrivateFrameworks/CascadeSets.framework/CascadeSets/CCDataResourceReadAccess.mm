@interface CCDataResourceReadAccess
+ (id)defaultInstanceWithUseCase:(id)case;
- (BOOL)_isDefaultPersonaRequestingUserResource:(id)resource;
- (BOOL)_shouldEnumerateContainer:(id)container;
- (BOOL)enumerateReadableSets:(id *)sets resourceOptions:(unsigned __int8)options setIdentifiers:(id)identifiers descriptors:(id)descriptors startAfterSet:(id)set sorted:(BOOL)sorted usingBlock:(id)block;
- (CCDataResourceReadAccess)initWithAssertionOverride:(id)override useCase:(id)case;
- (id)_requestAccessToResource:(id)resource error:(id *)error;
- (id)_requestAccessToSetsDirectoryWithOptions:(unsigned __int8)options error:(id *)error;
- (id)_sortedSetsFromProcessEntitlements:(id)entitlements filteredBySortedIdentifiers:(id)identifiers;
- (id)databaseReadAccessForSet:(id)set error:(id *)error;
@end

@implementation CCDataResourceReadAccess

+ (id)defaultInstanceWithUseCase:(id)case
{
  caseCopy = case;
  v4 = [objc_alloc(objc_opt_class()) initWithAssertionOverride:0 useCase:caseCopy];

  return v4;
}

- (CCDataResourceReadAccess)initWithAssertionOverride:(id)override useCase:(id)case
{
  overrideCopy = override;
  caseCopy = case;
  v14.receiver = self;
  v14.super_class = CCDataResourceReadAccess;
  v9 = [(CCDataResourceReadAccess *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assertionOverride, override);
    objc_storeStrong(&v10->_useCase, case);
    v11 = [objc_alloc(MEMORY[0x1E698E968]) initWithUseCase:caseCopy];
    accessClient = v10->_accessClient;
    v10->_accessClient = v11;
  }

  return v10;
}

- (id)databaseReadAccessForSet:(id)set error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  setCopy = set;
  toResourceSpecifier = [setCopy toResourceSpecifier];
  v8 = [(CCDataResourceReadAccess *)self _requestAccessToResource:toResourceSpecifier error:error];
  v9 = v8;
  if (!v8)
  {
    v22 = 0;
    goto LABEL_14;
  }

  container = [v8 container];
  v11 = [CCDataResource dataResourceForSet:setCopy inContainer:container];

  v28 = 0;
  v12 = [v11 databaseFileExists:&v28];
  v13 = v28;
  if (v12)
  {
    resourceStatus = [v11 resourceStatus];
    v15 = resourceStatus;
    if (!CCDataResourceStatusIsNotDiscoverable(resourceStatus))
    {
      databaseURL = [v11 databaseURL];
      v22 = [CCDatabaseReader readerForDatabaseAtURL:databaseURL accessAssertion:v9];

      goto LABEL_13;
    }

    v27 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v16 = MEMORY[0x1E696AEC0];
    v17 = CCDataResourceStatusToString(v15);
    v18 = [v16 stringWithFormat:@"Set not discoverable: %@ - %@", setCopy, v17];
    v30 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v27 errorWithDomain:@"com.apple.CascadeSets.Set" code:4 userInfo:v19];

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v20;
      _os_log_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    CCSetError(error, v20);
  }

  else
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      localizedFailureReason = [v13 localizedFailureReason];
      *buf = 138412546;
      v32 = setCopy;
      v33 = 2112;
      v34 = localizedFailureReason;
      _os_log_impl(&dword_1B6DB2000, v23, OS_LOG_TYPE_DEFAULT, "No such set: %@ - %@", buf, 0x16u);
    }

    CCSetError(error, v13);
  }

  v22 = 0;
LABEL_13:

LABEL_14:

  return v22;
}

- (BOOL)enumerateReadableSets:(id *)sets resourceOptions:(unsigned __int8)options setIdentifiers:(id)identifiers descriptors:(id)descriptors startAfterSet:(id)set sorted:(BOOL)sorted usingBlock:(id)block
{
  optionsCopy = options;
  v81 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  setCopy = set;
  blockCopy = block;
  v12 = MEMORY[0x1E698E9D8];
  identifiersCopy = identifiers;
  current = [v12 current];
  v45 = [identifiersCopy sortedArrayUsingDescriptors:MEMORY[0x1E695E0F0]];

  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  if (([current hasDatavaultEntitlement] & 1) != 0 || objc_msgSend(current, "processType") == 8)
  {
    v14 = [(CCDataResourceReadAccess *)self _requestAccessToSetsDirectoryWithOptions:optionsCopy error:sets];
    container = [v14 container];
    obj = v14;
    LOBYTE(v14) = container == 0;

    if (v14)
    {
      v21 = 0;
      v53 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      v53 = 1;
      do
      {
        if ([v45 count])
        {
          v18 = [v45 objectAtIndex:v17 - 1];
        }

        else
        {
          v18 = 0;
        }

        v67 = v16;
        container2 = [obj container];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke;
        v63[3] = &unk_1E7C8B9A8;
        v64 = blockCopy;
        v65 = &v72;
        v66 = &v68;
        LOBYTE(v43) = sorted;
        v20 = [CCDataResource enumerateDataResources:&v67 setIdentifier:v18 descriptors:descriptorsCopy container:container2 includingTombstoned:0 startAfterSet:setCopy sorted:v43 usingBlock:v63];
        v21 = v67;

        v53 &= v20;
        if (v17 >= [v45 count])
        {
          break;
        }

        ++v17;
        v16 = v21;
      }

      while (*(v73 + 24) != 1);
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v69[3];
        if (v53)
        {
          v24 = @"Success";
        }

        else
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failure, error: %@", v21];
        }

        *buf = 134218242;
        v78 = v23;
        v79 = 2112;
        v80 = v24;
        _os_log_impl(&dword_1B6DB2000, v22, OS_LOG_TYPE_DEFAULT, "Enumerated %lu readable sets for sets-directory-entitled process with result: %@", buf, 0x16u);
        if ((v53 & 1) == 0)
        {
        }
      }

      if (v21)
      {
        CCSetError(sets, v21);
      }
    }
  }

  else
  {
    v25 = [(CCDataResourceReadAccess *)self _sortedSetsFromProcessEntitlements:current filteredBySortedIdentifiers:v45];
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [CCDataResourceReadAccess enumerateReadableSets:v25 resourceOptions:v26 setIdentifiers:? descriptors:? startAfterSet:? sorted:? usingBlock:?];
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v25;
    v21 = 0;
    v27 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
    if (v27)
    {
      v28 = *v60;
      v53 = 1;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v60 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v59 + 1) + 8 * i);
          v31 = objc_alloc(MEMORY[0x1E698E9F8]);
          v32 = [v31 initWithType:4 name:v30 descriptors:MEMORY[0x1E695E0F0] options:optionsCopy];
          v33 = [(CCDataResourceReadAccess *)self _requestAccessToResource:v32 error:sets];
          container3 = [v33 container];
          v35 = [(CCDataResourceReadAccess *)self _shouldEnumerateContainer:container3];

          if (v35)
          {
            v58 = v21;
            container4 = [v33 container];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke_21;
            v54[3] = &unk_1E7C8B9A8;
            v55 = blockCopy;
            v56 = &v72;
            v57 = &v68;
            LOBYTE(v43) = sorted;
            v37 = [CCDataResource enumerateDataResources:&v58 setIdentifier:v30 descriptors:descriptorsCopy container:container4 includingTombstoned:0 startAfterSet:setCopy sorted:v43 usingBlock:v54];
            v38 = v58;

            v53 &= v37;
            v21 = v38;
          }
        }

        v27 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
      }

      while (v27);
    }

    else
    {
      v53 = 1;
    }

    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v69[3];
      if (v53)
      {
        v41 = @"Success";
      }

      else
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failure, error: %@", v21];
      }

      *buf = 134218242;
      v78 = v40;
      v79 = 2112;
      v80 = v41;
      _os_log_impl(&dword_1B6DB2000, v39, OS_LOG_TYPE_DEFAULT, "Enumerated %lu readable sets for sets-entitled process with result: %@", buf, 0x16u);
      if ((v53 & 1) == 0)
      {
      }
    }

    if (v21)
    {
      CCSetError(sets, v21);
    }
  }

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v53 & 1;
}

void __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v8 = 0;
  v5 = [a2 setWithError:&v8];
  v6 = v8;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      (*(a1[4] + 16))();
      ++*(*(a1[6] + 8) + 24);
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

void __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke_21(void *a1, void *a2, _BYTE *a3)
{
  v8 = 0;
  v5 = [a2 setWithError:&v8];
  v6 = v8;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      (*(a1[4] + 16))();
      ++*(*(a1[6] + 8) + 24);
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

- (id)_sortedSetsFromProcessEntitlements:(id)entitlements filteredBySortedIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = [MEMORY[0x1E698E970] policyForProcess:entitlements connectionFlags:0 useCase:self->_useCase];
  v8 = [v7 explicitlyAuthorizedResourcesOfType:4 withAccessMode:1];
  v9 = v8;
  if (identifiersCopy)
  {
    v10 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = identifiersCopy;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if ([v9 containsObject:{v16, v18}])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = [v8 sortedArrayUsingDescriptors:MEMORY[0x1E695E0F0]];
  }

  return v10;
}

- (id)_requestAccessToResource:(id)resource error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (self->_assertionOverride)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assertionOverride = self->_assertionOverride;
      *buf = 138412290;
      v32 = assertionOverride;
      _os_log_impl(&dword_1B6DB2000, v7, OS_LOG_TYPE_DEFAULT, "Skipping read only access request with assertion override: %@", buf, 0xCu);
    }

    v9 = self->_assertionOverride;
  }

  else if ([(CCDataResourceReadAccess *)self _isDefaultPersonaRequestingUserResource:resourceCopy])
  {
    v10 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    currentPersonaIdentifierLoggingDescription = [MEMORY[0x1E698E9D0] currentPersonaIdentifierLoggingDescription];
    v13 = [v11 stringWithFormat:@"Cannot request access for user-domain resource: %@ as persona: %@", resourceCopy, currentPersonaIdentifierLoggingDescription];
    v38[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v15 = [v10 errorWithDomain:@"com.apple.CascadeSets.Set" code:3 userInfo:v14];

    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 description];
      *buf = 138412290;
      v32 = v17;
      _os_log_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_DEFAULT, "Skipping access request: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    accessClient = self->_accessClient;
    v28 = 0;
    v9 = [(BMAccessClient *)accessClient requestAccessToResource:resourceCopy mode:1 error:&v28];
    v19 = v28;
    v20 = __biome_log_for_category();
    v21 = v20;
    if (v9)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        useCase = self->_useCase;
        *buf = 138412546;
        v32 = resourceCopy;
        v33 = 2112;
        v34 = useCase;
        _os_log_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEFAULT, "[BiomeAccess] CCDataResourceReadAccess obtained access assertion for %@ using useCase: %@", buf, 0x16u);
      }

      v23 = v9;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = self->_useCase;
        *buf = 138412802;
        v32 = resourceCopy;
        v33 = 2112;
        v34 = v27;
        v35 = 2112;
        v36 = v19;
        _os_log_error_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_ERROR, "[BiomeAccess] CCDataResourceReadAccess could not obtain access assertion for %@ using useCase: %@ with error: %@", buf, 0x20u);
      }

      if (v19)
      {
        v29 = *MEMORY[0x1E696AA08];
        v30 = v19;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      }

      else
      {
        v24 = 0;
      }

      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:3 userInfo:v24];

      CCSetError(error, v25);
      v19 = v25;
    }
  }

  return v9;
}

- (id)_requestAccessToSetsDirectoryWithOptions:(unsigned __int8)options error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (self->_assertionOverride)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      assertionOverride = self->_assertionOverride;
      *buf = 138412290;
      v22 = assertionOverride;
      _os_log_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_INFO, "Skipping access request with assertion override: %@", buf, 0xCu);
    }

    v7 = self->_assertionOverride;
  }

  else
  {
    v9 = [MEMORY[0x1E698E9C8] allSetsResourceSpecifierWithOptions:options];
    accessClient = self->_accessClient;
    v20 = 0;
    v7 = [(BMAccessClient *)accessClient requestAccessToResource:v9 mode:1 error:&v20];
    v11 = v20;
    v12 = __biome_log_for_category();
    v13 = v12;
    if (v7)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        useCase = self->_useCase;
        container = [(BMAccessAssertion *)v7 container];
        *buf = 138412546;
        v22 = useCase;
        v23 = 2112;
        v24 = container;
        _os_log_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEFAULT, "[BiomeAccess] CCDataResourceReadAccess obtained access assertion for sets directory using useCase: %@ container: %@", buf, 0x16u);
      }

      v16 = v7;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CCDataResourceReadAccess *)self _requestAccessToSetsDirectoryWithOptions:v11 error:v13];
      }

      if (v11)
      {
        v25 = *MEMORY[0x1E696AA08];
        v26[0] = v11;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:3 userInfo:v17];

      CCSetError(error, v18);
      v11 = v18;
    }
  }

  return v7;
}

- (BOOL)_isDefaultPersonaRequestingUserResource:(id)resource
{
  resourceCopy = resource;
  if ([MEMORY[0x1E698E9D0] currentPersonaIsDefault])
  {
    name = [resourceCopy name];
    v5 = BMServiceDomainOverrideLookupFromConfigurationForSet();

    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldEnumerateContainer:(id)container
{
  containerCopy = container;
  if (containerCopy)
  {
    currentPersonaIdentifier = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    if (!currentPersonaIdentifier || (v5 = currentPersonaIdentifier, v6 = [MEMORY[0x1E698E9D0] currentPersonaIsDefault], objc_msgSend(containerCopy, "personaIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v5, v6 == v8))
    {
      v10 = 1;
      goto LABEL_9;
    }

    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CCDataResourceReadAccess *)containerCopy _shouldEnumerateContainer:v9];
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)enumerateReadableSets:(uint64_t)a1 resourceOptions:(NSObject *)a2 setIdentifiers:descriptors:startAfterSet:sorted:usingBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Resolved entitled set identifiers to enumerate data resources on disk %@", &v2, 0xCu);
}

- (void)_requestAccessToSetsDirectoryWithOptions:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "[BiomeAccess] CCDataResourceReadAccess could not obtain access assertion for sets directory using useCase: %@ with error: %@", &v4, 0x16u);
}

- (void)_shouldEnumerateContainer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698E9D0] currentPersonaIdentifierLoggingDescription];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Skip enumerating container: %@ as persona: %@", &v5, 0x16u);
}

@end