@interface STUnique
+ (BOOL)_updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:(BOOL)enabled inContext:(id)context error:(id *)error;
+ (BOOL)addHistoryToken:(id)token toMetadataForStore:(id)store error:(id *)error;
+ (Class)_internalClassForSerializableClassName:(id)name;
+ (id)cloudToLocalMapping;
+ (id)historyTokenFromStore:(id)store;
+ (id)localToCloudMapping;
+ (id)mirroredEntityNames;
- (BOOL)areLocalChangesInterestingWithError:(id *)error;
- (BOOL)migrateWithError:(id *)error;
- (BOOL)migrateWithExportNeeded:(BOOL *)needed error:(id *)error;
- (STUnique)initWithPersistenceController:(id)controller;
- (void)newResolveConflictsBetweenLocalDeltas:(id)deltas cloudDeltas:(id)cloudDeltas;
- (void)resolveConflictsBetweenLocalDeltas:(id)deltas cloudDeltas:(id)cloudDeltas;
@end

@implementation STUnique

- (STUnique)initWithPersistenceController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = STUnique;
  v6 = [(STUnique *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, controller);
  }

  return v7;
}

+ (id)localToCloudMapping
{
  if (localToCloudMapping_oneTime != -1)
  {
    +[STUnique localToCloudMapping];
  }

  v3 = localToCloudMapping_entityMapping;

  return v3;
}

void __31__STUnique_localToCloudMapping__block_invoke()
{
  v0 = localToCloudMapping_entityMapping;
  localToCloudMapping_entityMapping = &unk_1F3059E58;
}

+ (id)cloudToLocalMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__STUnique_cloudToLocalMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cloudToLocalMapping_oneTime != -1)
  {
    dispatch_once(&cloudToLocalMapping_oneTime, block);
  }

  v2 = cloudToLocalMapping_entityMapping;

  return v2;
}

void __31__STUnique_cloudToLocalMapping__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) localToCloudMapping];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v1 objectForKeyedSubscript:v8];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = cloudToLocalMapping_entityMapping;
  cloudToLocalMapping_entityMapping = v2;
}

+ (id)mirroredEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__STUnique_mirroredEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mirroredEntityNames_oneTime != -1)
  {
    dispatch_once(&mirroredEntityNames_oneTime, block);
  }

  v2 = mirroredEntityNames_entityNames;

  return v2;
}

void __31__STUnique_mirroredEntityNames__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) localToCloudMapping];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{2 * objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v2 addObject:v8];
        v9 = [v1 objectForKeyedSubscript:v8];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = mirroredEntityNames_entityNames;
  mirroredEntityNames_entityNames = v2;
}

+ (Class)_internalClassForSerializableClassName:(id)name
{
  v3 = _internalClassForSerializableClassName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[STUnique _internalClassForSerializableClassName:];
  }

  v5 = [_internalClassForSerializableClassName__mapping objectForKeyedSubscript:nameCopy];

  v6 = NSClassFromString(v5);

  return v6;
}

void __51__STUnique__internalClassForSerializableClassName___block_invoke()
{
  v13[10] = *MEMORY[0x1E69E9840];
  v0 = +[STTestSyncableObject serializableClassName];
  v13[0] = @"STTestSyncableObject";
  v1 = +[STBlueprint serializableClassName];
  v12[1] = v1;
  v13[1] = @"STBlueprint";
  v2 = +[STFamilyOrganizationSettings serializableClassName];
  v12[2] = v2;
  v13[2] = @"STFamilyOrganizationSettings";
  v3 = +[STiCloudOrganizationSettings serializableClassName];
  v12[3] = v3;
  v13[3] = @"STiCloudOrganizationSettings";
  v4 = +[STUserDeviceState serializableClassName];
  v12[4] = v4;
  v13[4] = @"STUserDeviceState";
  v5 = +[STInstalledApp serializableClassName];
  v12[5] = v5;
  v13[5] = @"STInstalledApp";
  v6 = +[STLocalOrganization serializableClassName];
  v12[6] = v6;
  v13[6] = @"STLocalOrganization";
  v7 = +[STiCloudOrganization serializableClassName];
  v12[7] = v7;
  v13[7] = @"STiCloudOrganization";
  v8 = +[STFamilyOrganization serializableClassName];
  v12[8] = v8;
  v13[8] = @"STFamilyOrganization";
  v9 = +[STAppException serializableClassName];
  v12[9] = v9;
  v13[9] = @"STAppException";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:10];
  v11 = _internalClassForSerializableClassName__mapping;
  _internalClassForSerializableClassName__mapping = v10;
}

- (BOOL)areLocalChangesInterestingWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  persistenceController = [(STUnique *)self persistenceController];
  localStore = [persistenceController localStore];
  if (localStore)
  {
    newBackgroundContext = [persistenceController newBackgroundContext];
    [newBackgroundContext setName:@"Analyze"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__STUnique_areLocalChangesInterestingWithError___block_invoke;
    v12[3] = &unk_1E7CE7A10;
    v12[4] = self;
    v13 = localStore;
    v8 = newBackgroundContext;
    v14 = v8;
    v15 = &v17;
    v16 = &v23;
    [v8 performBlockAndWait:v12];
    if (error)
    {
      v9 = v18[5];
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = *(v24 + 24);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:6 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v10 & 1;
}

void __48__STUnique_areLocalChangesInterestingWithError___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) historyTokenFromStore:*(a1 + 40)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v15 = 0;
  v7 = [v2 deltasForStore:v4 inManagedObjectContext:v5 sinceToken:v3 ignoreAuthor:@"STUnique" finalToken:&v15 error:&obj];
  v8 = v15;
  objc_storeStrong((v6 + 40), obj);
  if ([v7 count])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 56) + 8);
    v13 = *(v11 + 40);
    [v9 addHistoryToken:v8 toMetadataForStore:v10 error:&v13];
    objc_storeStrong((v11 + 40), v13);
    v12 = +[STLog mirroring];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __48__STUnique_areLocalChangesInterestingWithError___block_invoke_cold_1();
    }
  }
}

- (BOOL)migrateWithExportNeeded:(BOOL *)needed error:(id *)error
{
  v10 = 0;
  v6 = [(STUnique *)self migrateWithError:&v10];
  v7 = v10;
  if (needed)
  {
    *needed = v6;
  }

  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (BOOL)migrateWithError:(id *)error
{
  v5 = +[STLog mirroring];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STUnique migrateWithError:v5];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  persistenceController = [(STUnique *)self persistenceController];
  localStore = [persistenceController localStore];
  cloudStore = [persistenceController cloudStore];
  v9 = cloudStore;
  if (localStore && cloudStore)
  {
    newBackgroundContext = [persistenceController newBackgroundContext];
    [newBackgroundContext setTransactionAuthor:@"STUnique"];
    [newBackgroundContext setName:@"Migrate"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__STUnique_migrateWithError___block_invoke;
    v16[3] = &unk_1E7CE7A38;
    v11 = newBackgroundContext;
    v17 = v11;
    v18 = v9;
    v19 = localStore;
    selfCopy = self;
    v21 = &v34;
    v22 = &v30;
    v23 = &v24;
    [v11 performBlockAndWait:v16];
    if (error)
    {
      if ((v31[3] & 1) == 0)
      {
        v12 = v25[5];
        if (v12)
        {
          *error = v12;
        }
      }
    }

    v13 = +[STLog mirroring];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [STUnique migrateWithError:v13];
    }

    v14 = *(v35 + 24);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:6 userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  return v14 & 1;
}

void __29__STUnique_migrateWithError___block_invoke(uint64_t a1)
{
  v163 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v151 = 0;
  v121 = v2;
  v6 = [v2 initializeCachesWithManagedObjectContext:v3 withCloudStore:v4 andLocalStore:v5 error:&v151];
  v7 = v151;
  v8 = v7;
  v9 = 0x1E7CE5000uLL;
  if (!v6)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if (!v7)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  v10 = objc_opt_new();
  v11 = [*(a1 + 56) historyTokenFromStore:*(a1 + 48)];
  v112 = [*(a1 + 56) historyTokenFromStore:*(a1 + 40)];
  v12 = +[STLog mirroring];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __29__STUnique_migrateWithError___block_invoke_cold_1();
  }

  v13 = +[STLog mirroring];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __29__STUnique_migrateWithError___block_invoke_cold_2();
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v149 = v8;
  v150 = 0;
  v16 = v8;
  v17 = [v10 deltasForStore:v14 inManagedObjectContext:v15 sinceToken:v11 ignoreAuthor:@"STUnique" finalToken:&v150 error:&v149];
  v111 = v150;
  v18 = v149;

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v147 = v18;
  v148 = 0;
  v21 = [v10 deltasForStore:v19 inManagedObjectContext:v20 sinceToken:v112 ignoreAuthor:@"STUnique" finalToken:&v148 error:&v147];
  v110 = v148;
  v122 = v147;

  v113 = v17;
  if ([v17 count] && objc_msgSend(v21, "count"))
  {
    [*(a1 + 56) newResolveConflictsBetweenLocalDeltas:v17 cloudDeltas:v21];
  }

  v118 = a1;
  v108 = v11;
  v109 = v10;
  v106 = v21;
  if ([v21 count])
  {
    v114 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count", v21)}];
    v22 = +[STLog mirroring];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v21 count];
      *buf = 134217984;
      v157 = v23;
      _os_log_impl(&dword_1B831F000, v22, OS_LOG_TYPE_DEFAULT, "Detected %lu cloud changes", buf, 0xCu);
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v24 = [v21 allValues];
    v25 = [v24 countByEnumeratingWithState:&v143 objects:v162 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v144;
      v116 = v24;
      v115 = *v144;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v144 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v143 + 1) + 8 * i);
          if ([v29 changeType] != 2)
          {
            v34 = [v29 dictionary];
            v32 = [v34 objectForKeyedSubscript:@"class"];

            if (v32)
            {
              v35 = [STUnique _internalClassForSerializableClassName:v32];
              if (v35)
              {
                v36 = v35;
                v37 = [v29 dictionary];
                v38 = *(a1 + 32);
                v139 = v122;
                v39 = [(objc_class *)v36 fetchOrCreateWithDictionaryRepresentation:v37 inContext:v38 error:&v139];
                v40 = v139;

                if (v37 && v39)
                {
                  v161[0] = v39;
                  v160[0] = @"object";
                  v160[1] = @"dictionary";
                  v41 = [v29 dictionary];
                  v161[1] = v41;
                  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:v160 count:2];
                  [v114 addObject:v42];

                  v24 = v116;
                }

                else
                {
                  v41 = +[STLog mirroring];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v157 = v40;
                    _os_log_error_impl(&dword_1B831F000, v41, OS_LOG_TYPE_ERROR, "Could not find/create local object: %{public}@", buf, 0xCu);
                  }
                }

                v43 = +[STLog mirroring];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v29 uniqueIdentifier];
                  *buf = 138543618;
                  v157 = v36;
                  v158 = 2114;
                  v159 = v44;
                  _os_log_impl(&dword_1B831F000, v43, OS_LOG_TYPE_DEFAULT, "Mirroring change: Updated local object (%{public}@) %{public}@", buf, 0x16u);

                  v24 = v116;
                }

                v27 = v115;
                goto LABEL_36;
              }

              v37 = [*(v9 + 3824) mirroring];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v157 = v32;
                _os_log_error_impl(&dword_1B831F000, v37, OS_LOG_TYPE_ERROR, "External to internal mapping missing for: %@", buf, 0xCu);
              }
            }

            else
            {
              v37 = [*(v9 + 3824) mirroring];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                __29__STUnique_migrateWithError___block_invoke_cold_3(&v140, v141, v37);
              }
            }

            v40 = v122;
LABEL_36:

            v122 = v40;
            a1 = v118;
            v9 = 0x1E7CE5000;
            goto LABEL_37;
          }

          v30 = [*(v9 + 3824) mirroring];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v29 uniqueIdentifier];
            *buf = 138543362;
            v157 = v31;
            _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, "Mirroring change: Deleted local copy of %{public}@", buf, 0xCu);
          }

          v32 = [v29 uniqueIdentifier];
          v33 = *(a1 + 32);
          v142 = 0;
          [v121 deleteLocalObjectWithUniqueIdentifier:v32 managedObjectContext:v33 error:&v142];
LABEL_37:
        }

        v26 = [v24 countByEnumeratingWithState:&v143 objects:v162 count:16];
      }

      while (v26);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = v114;
    v45 = [obj countByEnumeratingWithState:&v135 objects:v155 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v136;
      v48 = @"class";
      v49 = @"object";
      do
      {
        v50 = 0;
        v117 = v46;
        do
        {
          if (*v136 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v135 + 1) + 8 * v50);
          v52 = [v51 objectForKeyedSubscript:v49];
          v53 = [v51 objectForKeyedSubscript:@"dictionary"];
          [v52 updateWithDictionaryRepresentation:v53];
          v54 = [v53 objectForKeyedSubscript:v48];
          if ([(objc_class *)[STUnique _internalClassForSerializableClassName:?], "isEqual:", objc_opt_class()])
          {
            v55 = [v53 objectForKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
            v56 = v55;
            if (v55)
            {
              v57 = v48;
              v58 = v47;
              v59 = v49;
              v60 = [v55 BOOLValue];
              v61 = *(v118 + 32);
              v134 = 0;
              v62 = [STUnique _updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:v60 inContext:v61 error:&v134];
              v63 = v134;
              if (!v62)
              {
                v64 = +[STLog mirroring];
                if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543362;
                  v157 = v63;
                  _os_log_fault_impl(&dword_1B831F000, v64, OS_LOG_TYPE_FAULT, "Failed to update Screen Time settings: %{public}@", buf, 0xCu);
                }
              }

              v49 = v59;
              v47 = v58;
              v48 = v57;
              v46 = v117;
            }
          }

          ++v50;
        }

        while (v46 != v50);
        v46 = [obj countByEnumeratingWithState:&v135 objects:v155 count:16];
      }

      while (v46);
    }

    a1 = v118;
    v11 = v108;
    v10 = v109;
  }

  if ([v113 count])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v65 = +[STLog mirroring];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v113 count];
      *buf = 134217984;
      v157 = v66;
      _os_log_impl(&dword_1B831F000, v65, OS_LOG_TYPE_DEFAULT, "Detected %lu local changes", buf, 0xCu);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v67 = [v113 allValues];
    obja = [v67 countByEnumeratingWithState:&v130 objects:v154 count:16];
    if (obja)
    {
      v68 = *v131;
      do
      {
        v69 = 0;
        do
        {
          if (*v131 != v68)
          {
            objc_enumerationMutation(v67);
          }

          v70 = *(*(&v130 + 1) + 8 * v69);
          if ([v70 changeType] == 2)
          {
            v71 = [v70 uniqueIdentifier];
            v72 = *(a1 + 32);
            v129 = 0;
            v73 = [v121 deleteCloudObjectWithUniqueIdentifier:v71 managedObjectContext:v72 error:&v129];
            v74 = v129;

            if (v73)
            {
              v75 = [v73 BOOLValue];
              v76 = +[STLog mirroring];
              v77 = v76;
              if (v75)
              {
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = [v70 uniqueIdentifier];
                  *buf = 138543362;
                  v157 = v78;
                  _os_log_impl(&dword_1B831F000, v77, OS_LOG_TYPE_DEFAULT, "Mirroring change: Deleted cloud copy of %{public}@", buf, 0xCu);
                  goto LABEL_68;
                }
              }

              else if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                __29__STUnique_migrateWithError___block_invoke_cold_5(v152, v70, &v153, v77);
              }
            }

            else
            {
              v77 = +[STLog mirroring];
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                v78 = [v70 uniqueIdentifier];
                *buf = 138543618;
                v157 = v78;
                v158 = 2114;
                v159 = v74;
                _os_log_error_impl(&dword_1B831F000, v77, OS_LOG_TYPE_ERROR, "Mirroring change: Failed to delete cloud copy of %{public}@: %{public}@", buf, 0x16u);
LABEL_68:
              }
            }

            goto LABEL_81;
          }

          v79 = [v70 dictionary];
          v74 = [v79 objectForKeyedSubscript:@"class"];

          if (v74)
          {
            v80 = [STUnique _internalClassForSerializableClassName:v74];
            if (v80)
            {
              v81 = v80;
              v82 = [v70 uniqueIdentifier];
              v83 = [v70 dictionary];
              v84 = *(a1 + 32);
              v126 = v122;
              v85 = [v121 updateCloudObjectWithUniqueIdentifier:v82 dictionary:v83 managedObjectContext:v84 error:&v126];
              v86 = v126;

              v73 = +[STLog mirroring];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v87 = [v70 uniqueIdentifier];
                *buf = 138543618;
                v157 = v81;
                v158 = 2114;
                v159 = v87;
                _os_log_impl(&dword_1B831F000, v73, OS_LOG_TYPE_DEFAULT, "Mirroring change: Updated cloud object (%{public}@) %{public}@", buf, 0x16u);
              }

              v122 = v86;
              a1 = v118;
            }

            else
            {
              v73 = +[STLog mirroring];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v157 = v74;
                _os_log_error_impl(&dword_1B831F000, v73, OS_LOG_TYPE_ERROR, "External to internal mapping missing for: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v73 = +[STLog mirroring];
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              __29__STUnique_migrateWithError___block_invoke_cold_4(&v127, v128, v73);
            }
          }

LABEL_81:

          v69 = v69 + 1;
        }

        while (obja != v69);
        v88 = [v67 countByEnumeratingWithState:&v130 objects:v154 count:16];
        obja = v88;
      }

      while (v88);
    }

    v11 = v108;
    v10 = v109;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if (v111)
    {
      v90 = *(a1 + 48);
      v89 = *(a1 + 56);
      v125 = v122;
      [v89 addHistoryToken:v111 toMetadataForStore:v90 error:&v125];
      v91 = v125;

      v92 = +[STLog mirroring];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        __48__STUnique_areLocalChangesInterestingWithError___block_invoke_cold_1();
      }

      v122 = v91;
    }

    if (v110)
    {
      v93 = *(a1 + 56);
      v94 = *(a1 + 40);
      v124 = v122;
      [v93 addHistoryToken:v110 toMetadataForStore:v94 error:&v124];
      v95 = v124;

      v96 = +[STLog mirroring];
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        __29__STUnique_migrateWithError___block_invoke_cold_7();
      }

      v97 = v95;
    }

    else
    {
      v97 = v122;
    }

    v98 = [*(a1 + 56) persistenceController];
    v99 = *(a1 + 32);
    v123 = v97;
    v100 = [v98 saveContext:v99 error:&v123];
    v101 = v123;

    *(*(*(a1 + 72) + 8) + 24) = v100;
    v122 = v101;
  }

  v8 = v122;
  if (v122)
  {
LABEL_101:
    v102 = +[STLog mirroring];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      __29__STUnique_migrateWithError___block_invoke_cold_8();
    }

    v103 = STXPCSafeErrorFromCoreDataError(v8, 6);
    v104 = *(*(a1 + 80) + 8);
    v105 = *(v104 + 40);
    *(v104 + 40) = v103;
  }

LABEL_104:
}

- (void)newResolveConflictsBetweenLocalDeltas:(id)deltas cloudDeltas:(id)cloudDeltas
{
  v28 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  cloudDeltasCopy = cloudDeltas;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [deltasCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138543362;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [deltasCopy objectForKeyedSubscript:{v13, v20}];
        v15 = [cloudDeltasCopy objectForKeyedSubscript:v13];
        v16 = v15;
        if (v15)
        {
          if ([v15 changeType] == 1)
          {
            if ([v14 changeType] == 1)
            {
              [deltasCopy removeObjectForKey:v13];
              v17 = +[STLog mirroring];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v20;
                v26 = v13;
                v18 = v17;
                v19 = "Conflict: remote change and local change: %{public}@";
                goto LABEL_15;
              }

LABEL_16:

              goto LABEL_17;
            }

            [cloudDeltasCopy removeObjectForKey:v13];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = v20;
            v26 = v13;
            v18 = v17;
            v19 = "Conflict: remote change and local delete: %{public}@";
          }

          else
          {
            [deltasCopy removeObjectForKey:v13];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = v20;
            v26 = v13;
            v18 = v17;
            v19 = "Conflict: remote delete: %{public}@";
          }

LABEL_15:
          _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          goto LABEL_16;
        }

LABEL_17:
      }

      v10 = [allKeys countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }
}

- (void)resolveConflictsBetweenLocalDeltas:(id)deltas cloudDeltas:(id)cloudDeltas
{
  v63 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  cloudDeltasCopy = cloudDeltas;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  allKeys = [deltasCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    v36 = cloudDeltasCopy;
    v37 = deltasCopy;
    v34 = *v55;
    v35 = allKeys;
    do
    {
      v11 = 0;
      v38 = v9;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        v13 = [deltasCopy objectForKeyedSubscript:v12];
        v14 = [cloudDeltasCopy objectForKeyedSubscript:v12];
        if (v14)
        {
          v45 = v13;
          v15 = v12;
          v16 = v14;
          v39 = v11;
          v40 = v14;
          if ([v14 changeType] == 1)
          {
            if ([v13 changeType] == 1)
            {
              v17 = +[STLog mirroring];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v61 = v15;
                v18 = v17;
                v19 = "Conflict: remote insert and local insert: %{public}@";
                goto LABEL_44;
              }

LABEL_45:
              v13 = v45;
LABEL_46:

              v11 = v39;
              v14 = v40;
              goto LABEL_47;
            }

            if ([v13 changeType] == 2)
            {
              [v13 inserted];
              v17 = +[STLog mirroring];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v61 = v15;
                _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Conflict: remote insert and local update: %{public}@", buf, 0xCu);
              }

              goto LABEL_46;
            }

            [cloudDeltasCopy removeObjectForKey:v15];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_45;
            }

            *buf = 138543362;
            v61 = v15;
            v18 = v17;
            v19 = "Conflict: remote insert and local delete: %{public}@";
          }

          else if ([v16 changeType] == 2)
          {
            v20 = v15;
            if ([v13 changeType] == 1)
            {
              v17 = +[STLog mirroring];
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              *buf = 138543362;
              v61 = v15;
              v18 = v17;
              v19 = "Conflict: remote update and local insert: %{public}@";
            }

            else
            {
              if ([v13 changeType] == 2)
              {
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                obj = [v40 updatedProperties];
                v43 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
                if (v43)
                {
                  v42 = *v51;
                  do
                  {
                    v21 = 0;
                    do
                    {
                      if (*v51 != v42)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v44 = v21;
                      v22 = *(*(&v50 + 1) + 8 * v21);
                      v46 = 0u;
                      v47 = 0u;
                      v48 = 0u;
                      v49 = 0u;
                      updatedProperties = [v45 updatedProperties];
                      v24 = [updatedProperties copy];

                      v25 = [v24 countByEnumeratingWithState:&v46 objects:v58 count:16];
                      if (v25)
                      {
                        v26 = v25;
                        v27 = *v47;
                        do
                        {
                          for (i = 0; i != v26; ++i)
                          {
                            if (*v47 != v27)
                            {
                              objc_enumerationMutation(v24);
                            }

                            v29 = *(*(&v46 + 1) + 8 * i);
                            name = [v22 name];
                            name2 = [v29 name];
                            v32 = [name isEqualToString:name2];

                            if (v32)
                            {
                              name3 = [v29 name];
                              [v45 removePropertyWithName:name3];
                            }
                          }

                          v20 = v15;
                          v26 = [v24 countByEnumeratingWithState:&v46 objects:v58 count:16];
                        }

                        while (v26);
                      }

                      v21 = v44 + 1;
                    }

                    while (v44 + 1 != v43);
                    v43 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
                  }

                  while (v43);
                }

                v17 = +[STLog mirroring];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v61 = v20;
                  _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Conflict: remote update and local update: %{public}@", buf, 0xCu);
                }

                cloudDeltasCopy = v36;
                deltasCopy = v37;
                v10 = v34;
                allKeys = v35;
                v9 = v38;
                goto LABEL_45;
              }

              [cloudDeltasCopy removeObjectForKey:v15];
              v17 = +[STLog mirroring];
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              *buf = 138543362;
              v61 = v15;
              v18 = v17;
              v19 = "Conflict: remote update and local delete: %{public}@";
            }
          }

          else
          {
            [deltasCopy removeObjectForKey:v15];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_45;
            }

            *buf = 138543362;
            v61 = v15;
            v18 = v17;
            v19 = "Conflict: remote delete: %{public}@";
          }

LABEL_44:
          _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          goto LABEL_45;
        }

LABEL_47:

        ++v11;
      }

      while (v11 != v9);
      v9 = [allKeys countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v9);
  }
}

+ (id)historyTokenFromStore:(id)store
{
  storeCopy = store;
  metadata = [storeCopy metadata];
  v5 = [metadata objectForKeyedSubscript:@"STUnique"];

  if (v5)
  {
    v10 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v10];
    v7 = v10;
    if (!v6)
    {
      v8 = +[STLog mirroring];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(STUnique *)storeCopy historyTokenFromStore:v7, v8];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)addHistoryToken:(id)token toMetadataForStore:(id)store error:(id *)error
{
  tokenCopy = token;
  storeCopy = store;
  metadata = [storeCopy metadata];
  v10 = [metadata mutableCopy];

  if (!tokenCopy)
  {
    [v10 removeObjectForKey:@"STUnique"];
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:error];
  if (v11)
  {
    [v10 setObject:v11 forKeyedSubscript:@"STUnique"];

LABEL_5:
    [storeCopy setMetadata:v10];
    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (BOOL)_updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:(BOOL)enabled inContext:(id)context error:(id *)error
{
  enabledCopy = enabled;
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v25 = 0;
  v8 = [STScreenTimeSettings fetchScreenTimeSettingsInContext:contextCopy error:&v25];
  v9 = v25;
  if (v8)
  {
    v24 = v9;
    v10 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v24];
    v11 = v24;

    v12 = v10 != 0;
    if (v10)
    {
      unmodeledManagingOrganizationSettings = [v10 unmodeledManagingOrganizationSettings];
      cloudSettings = [v10 cloudSettings];

      if (unmodeledManagingOrganizationSettings == cloudSettings)
      {
        if ([v8 screenTimeEnabled] != enabledCopy)
        {
          v20 = +[STLog mirroring];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = @"NO";
            if (enabledCopy)
            {
              v21 = @"YES";
            }

            v22 = v21;
            *buf = 138543362;
            v27 = v22;
            _os_log_impl(&dword_1B831F000, v20, OS_LOG_TYPE_DEFAULT, "Updating ScreenTimeEnabled setting to: %{public}@", buf, 0xCu);
          }

          [v8 setScreenTimeEnabled:enabledCopy];
        }
      }

      else
      {
        v15 = +[STLog mirroring];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "User is not using iCloud organization settings. Will not update Screen Time Settings based on iCloud organization settings.", buf, 2u);
        }
      }
    }

    else if (error)
    {
      v18 = +[STLog mirroring];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[STUnique _updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:inContext:error:];
      }

      v19 = v11;
      *error = v11;
    }
  }

  else
  {
    if (error)
    {
      v16 = +[STLog mirroring];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[STUnique _updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:inContext:error:];
      }

      v17 = v9;
      v12 = 0;
      *error = v9;
    }

    else
    {
      v12 = 0;
    }

    v11 = v9;
  }

  return v12;
}

void __29__STUnique_migrateWithError___block_invoke_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Cloud delta missing class key", buf, 2u);
}

void __29__STUnique_migrateWithError___block_invoke_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Local delta missing class key", buf, 2u);
}

void __29__STUnique_migrateWithError___block_invoke_cold_5(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1B831F000, a4, OS_LOG_TYPE_ERROR, "Mirroring change: Unable to delete cloud copy of %{public}@ : Missing cloud object", a1, 0xCu);
}

void __29__STUnique_migrateWithError___block_invoke_cold_8()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "Error occurred during mirroring migration: %{public}@", v1, 0xCu);
}

+ (void)historyTokenFromStore:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 138543874;
  v4 = @"STUnique";
  v5 = 2114;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Failed to deserialize history token for '%{public}@' in store: %{public}@\n%{public}@", &v3, 0x20u);
}

+ (void)_updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:inContext:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch local user: %{public}@", v1, 0xCu);
}

+ (void)_updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:inContext:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Failed to find Screen Time Settings: %{public}@", v1, 0xCu);
}

@end