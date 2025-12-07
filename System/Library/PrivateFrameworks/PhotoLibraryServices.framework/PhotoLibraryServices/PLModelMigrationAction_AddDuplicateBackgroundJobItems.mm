@interface PLModelMigrationAction_AddDuplicateBackgroundJobItems
- (char)_currentDuplicateProcessingStatusWithManagedObjectContext:(id)context;
- (id)_convertToPLManagedAssetOIDsFromSelectionOIDs:(id)ds managedObjectContext:(id)context error:(id *)error;
- (id)_managedAssetOIDsFromAdditionalAssetAttributesOIDs:(id)ds managedObjectContext:(id)context error:(id *)error;
- (id)_managedAssetOIDsFromDuplicateAlbumOIDs:(id)ds managedObjectContext:(id)context error:(id *)error;
- (id)_validObjectIDFromChange:(id)change entityDescriptionMap:(id)map;
- (int64_t)_processTransactionIterator:(id)iterator managedObjectContext:(id)context error:(id *)error;
- (int64_t)_processWithLimitedSelection:(id)selection managedObjectContext:(id)context error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)_cleanupLegacyProcessingTokensWithManagedObjectContext:(id)context;
- (void)_setupPropertiesWithManagedObjectContext:(id)context;
- (void)_updateDuplicateProcessingStatusIfNeededWithStatus:(char)status shouldSave:(BOOL)save managedObjectContext:(id)context;
@end

@implementation PLModelMigrationAction_AddDuplicateBackgroundJobItems

- (void)_cleanupLegacyProcessingTokensWithManagedObjectContext:(id)context
{
  contextCopy = context;
  [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastDuplicateDetectorProcessingToken" value:0 managedObjectContext:contextCopy];
  [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastInitialDuplicateDetectorProcessingCompletedToken" value:0 managedObjectContext:contextCopy];
}

- (char)_currentDuplicateProcessingStatusWithManagedObjectContext:(id)context
{
  v3 = [PLGlobalKeyValue globalValueForKey:@"DuplicateProcessingStatus" managedObjectContext:context];
  intValue = [v3 intValue];

  return intValue;
}

- (void)_updateDuplicateProcessingStatusIfNeededWithStatus:(char)status shouldSave:(BOOL)save managedObjectContext:(id)context
{
  statusCopy = status;
  contextCopy = context;
  if ([(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _currentDuplicateProcessingStatusWithManagedObjectContext:?]!= statusCopy)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithChar:statusCopy];
    [PLGlobalKeyValue setGlobalValue:v7 forKey:@"DuplicateProcessingStatus" managedObjectContext:contextCopy];

    [(PLModelMigrationActionBackground *)self saveWithManagedObjectContext:contextCopy error:0];
  }
}

- (void)_setupPropertiesWithManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E695D5B8];
  contextCopy = context;
  v6 = +[PLAdditionalAssetAttributes entityName];
  v32 = [v4 entityForName:v6 inManagedObjectContext:contextCopy];

  attributesByName = [v32 attributesByName];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [attributesByName objectForKeyedSubscript:@"sceneAnalysisTimestamp"];
  [v8 addObject:v9];

  v10 = [attributesByName objectForKeyedSubscript:@"sceneAnalysisVersion"];
  [v8 addObject:v10];

  v11 = [attributesByName objectForKeyedSubscript:@"originalStableHash"];
  [v8 addObject:v11];

  v12 = [v8 copy];
  additionalAttributesPropertiesToInclude = self->_additionalAttributesPropertiesToInclude;
  self->_additionalAttributesPropertiesToInclude = v12;

  [v8 removeAllObjects];
  v14 = MEMORY[0x1E695D5B8];
  v15 = +[PLManagedAsset entityName];
  v16 = [v14 entityForName:v15 inManagedObjectContext:contextCopy];

  attributesByName2 = [v16 attributesByName];
  v18 = [attributesByName2 objectForKeyedSubscript:@"hidden"];
  [v8 addObject:v18];

  v19 = [attributesByName2 objectForKeyedSubscript:@"trashedState"];
  [v8 addObject:v19];

  v20 = [attributesByName2 objectForKeyedSubscript:@"kindSubtype"];
  [v8 addObject:v20];

  v21 = [attributesByName2 objectForKeyedSubscript:@"adjustmentTimestamp"];
  [v8 addObject:v21];

  v22 = [attributesByName2 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];
  [v8 addObject:v22];

  v23 = [v8 copy];
  managedAssetPropertiesToInclude = self->_managedAssetPropertiesToInclude;
  self->_managedAssetPropertiesToInclude = v23;

  [v8 removeAllObjects];
  v25 = MEMORY[0x1E695D5B8];
  v26 = +[PLDuplicateAlbum entityName];
  v27 = [v25 entityForName:v26 inManagedObjectContext:contextCopy];

  attributesByName3 = [v27 attributesByName];
  v29 = [attributesByName3 objectForKeyedSubscript:@"processingVersion"];
  [v8 addObject:v29];

  v30 = [v8 copy];
  duplicateAlbumPropertiesToInclude = self->_duplicateAlbumPropertiesToInclude;
  self->_duplicateAlbumPropertiesToInclude = v30;
}

- (id)_validObjectIDFromChange:(id)change entityDescriptionMap:(id)map
{
  changeCopy = change;
  mapCopy = map;
  changedObjectID = [changeCopy changedObjectID];
  changeType = [changeCopy changeType];
  if (changeType == 1)
  {
    v15 = objc_msgSend_entity(changedObjectID);
    v16 = +[PLAdditionalAssetAttributes entityName];
    v17 = [mapCopy objectForKeyedSubscript:v16];
    if ([v15 isEqual:v17])
    {
      updatedProperties = [changeCopy updatedProperties];
      v19 = [updatedProperties intersectsSet:self->_additionalAttributesPropertiesToInclude];
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_msgSend_entity(changedObjectID);
    v21 = +[PLManagedAsset entityName];
    v22 = [mapCopy objectForKeyedSubscript:v21];
    if ([v20 isEqual:v22])
    {
      updatedProperties2 = [changeCopy updatedProperties];
      v24 = [updatedProperties2 intersectsSet:self->_managedAssetPropertiesToInclude];

      v19 |= v24;
    }

    v25 = objc_msgSend_entity(changedObjectID);
    v26 = +[PLDuplicateAlbum entityName];
    v27 = [mapCopy objectForKeyedSubscript:v26];
    if ([v25 isEqual:v27])
    {
      updatedProperties3 = [changeCopy updatedProperties];
      v29 = [updatedProperties3 intersectsSet:self->_duplicateAlbumPropertiesToInclude];

      if (((v29 | v19) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    v14 = changedObjectID;
    goto LABEL_13;
  }

  if (!changeType)
  {
    v10 = objc_msgSend_entity(changedObjectID);
    v11 = +[PLAdditionalAssetAttributes entityName];
    v12 = [mapCopy objectForKeyedSubscript:v11];
    v13 = [v10 isEqual:v12];

    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

- (id)_managedAssetOIDsFromDuplicateAlbumOIDs:(id)ds managedObjectContext:(id)context error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (objc_msgSend_count(dsCopy))
  {
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLDuplicateAlbum entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];
    [v13 setPredicate:dsCopy];

    v71[0] = @"assets";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
    [v13 setRelationshipKeyPathsForPrefetching:v15];

    v35 = 0;
    v16 = [contextCopy executeFetchRequest:v13 error:&v35];
    v17 = v35;
    if (v16)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __124__PLModelMigrationAction_AddDuplicateBackgroundJobItems__managedAssetOIDsFromDuplicateAlbumOIDs_managedObjectContext_error___block_invoke;
      v33[3] = &unk_1E7564BD8;
      v18 = v10;
      v34 = v18;
      [v16 enumerateObjectsUsingBlock:v33];
      v10 = v34;
LABEL_17:

      v10 = v18;
      goto LABEL_18;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];

      if (!logger)
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to fetch oids for %{public}@. Error: %@", buf, 0x16u);
        }

        if (error)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v24 = objc_opt_class();
      v32 = NSStringFromClass(v24);
      v36 = 138543618;
      v37 = v32;
      v38 = 2112;
      v39 = v17;
      v25 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to fetch oids for %{public}@. Error: %@", &v36, 22);

      logger2 = [(PLModelMigrationActionBackground *)self logger];
      [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1873, 16}];

      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (error)
    {
LABEL_12:
      v27 = v17;
      v18 = 0;
      *error = v17;
      goto LABEL_17;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v10;
}

- (id)_managedAssetOIDsFromAdditionalAssetAttributesOIDs:(id)ds managedObjectContext:(id)context error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (objc_msgSend_count(dsCopy))
  {
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLAdditionalAssetAttributes entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];
    [v13 setPredicate:dsCopy];

    v71[0] = @"asset";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
    [v13 setPropertiesToFetch:v15];

    [v13 setResultType:2];
    v35 = 0;
    v16 = [contextCopy executeFetchRequest:v13 error:&v35];
    v17 = v35;
    if (v16)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __135__PLModelMigrationAction_AddDuplicateBackgroundJobItems__managedAssetOIDsFromAdditionalAssetAttributesOIDs_managedObjectContext_error___block_invoke;
      v33[3] = &unk_1E7574658;
      v18 = v10;
      v34 = v18;
      [v16 enumerateObjectsUsingBlock:v33];
      v10 = v34;
LABEL_17:

      v10 = v18;
      goto LABEL_18;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];

      if (!logger)
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to fetch oids for %{public}@. Error: %@", buf, 0x16u);
        }

        if (error)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v24 = objc_opt_class();
      v32 = NSStringFromClass(v24);
      v36 = 138543618;
      v37 = v32;
      v38 = 2112;
      v39 = v17;
      v25 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to fetch oids for %{public}@. Error: %@", &v36, 22);

      logger2 = [(PLModelMigrationActionBackground *)self logger];
      [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1848, 16}];

      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (error)
    {
LABEL_12:
      v27 = v17;
      v18 = 0;
      *error = v17;
      goto LABEL_17;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v10;
}

- (id)_convertToPLManagedAssetOIDsFromSelectionOIDs:(id)ds managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v8 = MEMORY[0x1E695D5B8];
  dsCopy = ds;
  v10 = +[PLAdditionalAssetAttributes entityName];
  v11 = [v8 entityForName:v10 inManagedObjectContext:contextCopy];

  v12 = MEMORY[0x1E695D5B8];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 entityForName:v13 inManagedObjectContext:contextCopy];

  v15 = MEMORY[0x1E695D5B8];
  v16 = +[PLDuplicateAlbum entityName];
  v17 = [v15 entityForName:v16 inManagedObjectContext:contextCopy];

  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:objc_msgSend_count(dsCopy)];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __130__PLModelMigrationAction_AddDuplicateBackgroundJobItems__convertToPLManagedAssetOIDsFromSelectionOIDs_managedObjectContext_error___block_invoke;
  v44[3] = &unk_1E7564BB0;
  v21 = v11;
  v45 = v21;
  v22 = v19;
  v46 = v22;
  v23 = v17;
  v47 = v23;
  v24 = v20;
  v48 = v24;
  v25 = v14;
  v49 = v25;
  v26 = v18;
  v50 = v26;
  selfCopy = self;
  [dsCopy enumerateObjectsUsingBlock:v44];

  v43 = 0;
  v27 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _managedAssetOIDsFromAdditionalAssetAttributesOIDs:v22 managedObjectContext:contextCopy error:&v43];
  v28 = v43;
  if (!v27)
  {
LABEL_7:

    v35 = v28;
    v32 = 0;
    errorCopy2 = error;
    if (error)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v40 = v25;
  v29 = v23;
  v30 = v21;
  allObjects = [v27 allObjects];
  [v26 addObjectsFromArray:allObjects];

  v42 = v28;
  v32 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _managedAssetOIDsFromDuplicateAlbumOIDs:v24 managedObjectContext:contextCopy error:&v42];
  v33 = v42;

  if (!v32)
  {
    v28 = v33;
    v21 = v30;
    v23 = v29;
    v25 = v40;
    goto LABEL_7;
  }

  allObjects2 = [v32 allObjects];
  [v26 addObjectsFromArray:allObjects2];

  v35 = v33;
  v21 = v30;
  v23 = v29;
  v25 = v40;
  errorCopy2 = error;
  if (!v26)
  {
    if (error)
    {
LABEL_5:
      v37 = v35;
      v26 = 0;
      *errorCopy2 = v35;
      goto LABEL_9;
    }

LABEL_8:
    v26 = 0;
  }

LABEL_9:

  v38 = v26;
  return v26;
}

- (int64_t)_processWithLimitedSelection:(id)selection managedObjectContext:(id)context error:(id *)error
{
  v114 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  contextCopy = context;
  if (objc_msgSend_count(selectionCopy))
  {
    v77 = 0;
    v10 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _convertToPLManagedAssetOIDsFromSelectionOIDs:selectionCopy managedObjectContext:contextCopy error:&v77];
    v11 = v77;
    if (!v10)
    {
      v36 = PLMigrationGetLog();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      if (v37)
      {
        logger = [(PLModelMigrationActionBackground *)self logger];

        if (logger)
        {
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          buf = 0u;
          v83 = 0u;
          v39 = PLMigrationGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v80 = 138412290;
          v81 = v11;
          v41 = _os_log_send_and_compose_impl(v40, 0, &buf, 512, &dword_19BF1F000, v39, 16, "Failed to convert selection oids. Error: %@", &v80, 12);

          logger2 = [(PLModelMigrationActionBackground *)self logger];
          [logger2 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1753, 16}];

          if (v41 != &buf)
          {
            free(v41);
          }
        }

        else
        {
          v57 = PLMigrationGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v11;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to convert selection oids. Error: %@", &buf, 0xCu);
          }
        }
      }

      if (error)
      {
        v58 = v11;
        *error = v11;
      }

      v35 = 3;
      goto LABEL_71;
    }

    if (!objc_msgSend_count(v10))
    {
      v35 = 1;
LABEL_71:

      goto LABEL_72;
    }

    selfCopy = self;
    v12 = MEMORY[0x1E695D5E0];
    v13 = +[PLManagedAsset entityName];
    v14 = [v12 fetchRequestWithEntityName:v13];

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v10];
    [v14 setPredicate:v15];

    [v14 setResultType:2];
    v79 = @"uuid";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
    [v14 setPropertiesToFetch:v16];

    v76 = v11;
    v17 = [contextCopy executeFetchRequest:v14 error:&v76];
    v68 = v76;

    v70 = contextCopy;
    if (v17)
    {
      errorCopy = error;
      v65 = v10;
      v66 = selectionCopy;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v67 = v17;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v73;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v73 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v72 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
            if (v23)
            {
              v24 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v23 jobType:6 jobFlags:3 inManagedObjectContext:contextCopy];
            }

            else
            {
              v25 = PLMigrationGetLog();
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

              contextCopy = v70;
              if (v26)
              {
                logger3 = [(PLModelMigrationActionBackground *)selfCopy logger];

                if (logger3)
                {
                  v112 = 0u;
                  v113 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v90 = 0u;
                  v91 = 0u;
                  v88 = 0u;
                  v89 = 0u;
                  v86 = 0u;
                  v87 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  buf = 0u;
                  v83 = 0u;
                  v28 = PLMigrationGetLog();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    v29 = 3;
                  }

                  else
                  {
                    v29 = 2;
                  }

                  LOWORD(v80) = 0;
                  LODWORD(v63) = 2;
                  v30 = _os_log_send_and_compose_impl(v29, 0, &buf, 512, &dword_19BF1F000, v28, 1, "Asset with missing uuid, skipping", &v80, v63);

                  logger4 = [(PLModelMigrationActionBackground *)selfCopy logger];
                  [logger4 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1778, 1}];

                  if (v30 != &buf)
                  {
                    free(v30);
                  }
                }

                else
                {
                  v32 = PLMigrationGetLog();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_INFO, "Asset with missing uuid, skipping", &buf, 2u);
                  }
                }

                contextCopy = v70;
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v20);
      }

      v71 = v68;
      v33 = [contextCopy save:&v71];
      v34 = v71;

      if (v33)
      {
        v35 = 1;
        v11 = v34;
        v10 = v65;
        selectionCopy = v66;
        contextCopy = v70;
        v17 = v67;
LABEL_70:

        goto LABEL_71;
      }

      v50 = PLMigrationGetLog();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

      selectionCopy = v66;
      error = errorCopy;
      if (v51)
      {
        logger5 = [(PLModelMigrationActionBackground *)selfCopy logger];

        if (logger5)
        {
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          buf = 0u;
          v83 = 0u;
          v53 = PLMigrationGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }

          v80 = 138412290;
          v81 = v34;
          LODWORD(v63) = 12;
          v55 = _os_log_send_and_compose_impl(v54, 0, &buf, 512, &dword_19BF1F000, v53, 0, "Save failed. Error: %@", &v80, v63);

          logger6 = [(PLModelMigrationActionBackground *)selfCopy logger];
          [logger6 logWithMessage:v55 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1786, 0}];

          if (v55 != &buf)
          {
            free(v55);
          }
        }

        else
        {
          v60 = PLMigrationGetLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v34;
            _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Save failed. Error: %@", &buf, 0xCu);
          }
        }
      }

      v10 = v65;
      v17 = v67;
      if (!errorCopy)
      {
        v35 = 3;
        v11 = v34;
        goto LABEL_69;
      }

      v11 = v34;
LABEL_67:
      v61 = v34;
      *error = v34;
      v35 = 3;
LABEL_69:
      contextCopy = v70;
      goto LABEL_70;
    }

    v43 = PLMigrationGetLog();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

    if (v44)
    {
      logger7 = [(PLModelMigrationActionBackground *)selfCopy logger];

      if (!logger7)
      {
        v59 = PLMigrationGetLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v68;
          _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Failed to fetch assets. Error: %@", &buf, 0xCu);
        }

        if (error)
        {
          goto LABEL_44;
        }

        goto LABEL_61;
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      buf = 0u;
      v83 = 0u;
      v46 = PLMigrationGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      v80 = 138412290;
      v81 = v68;
      v48 = _os_log_send_and_compose_impl(v47, 0, &buf, 512, &dword_19BF1F000, v46, 16, "Failed to fetch assets. Error: %@", &v80, 12);

      logger8 = [(PLModelMigrationActionBackground *)selfCopy logger];
      [logger8 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1769, 16}];

      if (v48 != &buf)
      {
        free(v48);
      }
    }

    if (error)
    {
LABEL_44:
      v11 = v68;
      v34 = v68;
      goto LABEL_67;
    }

LABEL_61:
    v35 = 3;
    v11 = v68;
    goto LABEL_70;
  }

  v35 = 1;
LABEL_72:

  return v35;
}

- (int64_t)_processTransactionIterator:(id)iterator managedObjectContext:(id)context error:(id *)error
{
  v57[3] = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  contextCopy = context;
  selfCopy = self;
  [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _setupPropertiesWithManagedObjectContext:contextCopy];
  v34 = +[PLAdditionalAssetAttributes entityName];
  v56[0] = v34;
  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLAdditionalAssetAttributes entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:contextCopy];
  v57[0] = v10;
  v11 = +[PLManagedAsset entityName];
  v56[1] = v11;
  v12 = MEMORY[0x1E695D5B8];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 entityForName:v13 inManagedObjectContext:contextCopy];
  v57[1] = v14;
  v15 = +[PLDuplicateAlbum entityName];
  v56[2] = v15;
  v16 = MEMORY[0x1E695D5B8];
  v17 = +[PLDuplicateAlbum entityName];
  v18 = [v16 entityForName:v17 inManagedObjectContext:contextCopy];
  v57[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__1060;
  v50 = __Block_byref_object_dispose__1061;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __112__PLModelMigrationAction_AddDuplicateBackgroundJobItems__processTransactionIterator_managedObjectContext_error___block_invoke;
  v36[3] = &unk_1E7564B88;
  v41 = v44;
  v36[4] = selfCopy;
  v22 = v19;
  v37 = v22;
  v23 = v21;
  v38 = v23;
  v24 = v20;
  v39 = v24;
  v42 = &v52;
  v25 = contextCopy;
  v40 = v25;
  v43 = &v46;
  [iteratorCopy enumerateRemainingTransactionsWithBlock:v36];
  if (v53[3] != 1)
  {
    v28 = v47[5];
LABEL_7:
    if (error)
    {
      v28 = v28;
      *error = v28;
    }

    goto LABEL_9;
  }

  if (objc_msgSend_count(v24))
  {
    v26 = (v47 + 5);
    obj = v47[5];
    v27 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)selfCopy _processWithLimitedSelection:v24 managedObjectContext:v25 error:&obj];
    objc_storeStrong(v26, obj);
    v53[3] = v27;
  }

  else
  {
    v27 = v53[3];
  }

  v28 = v47[5];
  if (v27 != 1)
  {
    goto LABEL_7;
  }

LABEL_9:

  v29 = v53[3];
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  return v29;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v115 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  if (([(PLGlobalValues *)v7 libraryCreateOptions]& 0x40) != 0)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_37;
    }

    logger = [(PLModelMigrationActionBackground *)self logger];

    if (!logger)
    {
      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, background jobs are disabled for this library", buf, 2u);
      }

      goto LABEL_37;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    *buf = 0u;
    v84 = 0u;
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT) ? 3 : 2;
    LOWORD(v81) = 0;
    v16 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 0, "Skipping migration processing, background jobs are disabled for this library", &v81, 2);

    logger2 = [(PLModelMigrationActionBackground *)self logger];
    [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1589, 0}];

    if (v16 == buf)
    {
      goto LABEL_37;
    }

LABEL_16:
    free(v16);
    goto LABEL_37;
  }

  v8 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _currentDuplicateProcessingStatusWithManagedObjectContext:contextCopy];
  if (v8 < 1)
  {
    [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0xFFFFFFFFLL shouldSave:1 managedObjectContext:contextCopy];
    v24 = [PLModelMigrationActionUtility getHistoryTokenWithAction:self key:@"LastDuplicateDetectorProcessingToken" managedObjectContext:contextCopy];
    if (!v24)
    {
      v33 = PLMigrationGetLog();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        logger3 = [(PLModelMigrationActionBackground *)self logger];

        if (logger3)
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          *buf = 0u;
          v84 = 0u;
          v36 = PLMigrationGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          LOWORD(v81) = 0;
          v38 = _os_log_send_and_compose_impl(v37, 0, buf, 512, &dword_19BF1F000, v36, 0, "Skipping migration processing, missing history token ", &v81, 2);

          logger4 = [(PLModelMigrationActionBackground *)self logger];
          [logger4 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1613, 0}];

          if (v38 != buf)
          {
            free(v38);
          }
        }

        else
        {
          v65 = PLMigrationGetLog();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, missing history token ", buf, 2u);
          }
        }
      }

      [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:contextCopy];
      v29 = 1;
      [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:1 managedObjectContext:contextCopy];
      [(PLModelMigrationActionBackground *)self finalizeProgress];
      goto LABEL_87;
    }

    v25 = [PLModelMigrationActionUtility getHistoryTokenWithAction:self key:@"LastInitialDuplicateDetectorProcessingCompletedToken" managedObjectContext:contextCopy];
    if (v25)
    {
      if ([PLModelMigrationActionUtility shouldProcessHistoryTokenWithAction:self token:v24 cutoffPercent:contextCopy managedObjectContext:0.5])
      {
        v76 = v25;
        v80 = 0;
        v26 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:v24 withManagedObjectObjectContext:contextCopy error:&v80];
        v27 = v80;
        v28 = v27;
        if (!v26)
        {
          v58 = PLMigrationGetLog();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

          if (v59)
          {
            logger5 = [(PLModelMigrationActionBackground *)self logger];

            if (logger5)
            {
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              *buf = 0u;
              v84 = 0u;
              v61 = PLMigrationGetLog();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = 3;
              }

              else
              {
                v62 = 2;
              }

              v81 = 138412290;
              v82 = v28;
              v63 = _os_log_send_and_compose_impl(v62, 0, buf, 512, &dword_19BF1F000, v61, 0, "Skipping migration processing, failed to create history transaction iterator. Error: %@", &v81, 12);

              logger6 = [(PLModelMigrationActionBackground *)self logger];
              [logger6 logWithMessage:v63 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1646, 0}];

              if (v63 != buf)
              {
                free(v63);
              }
            }

            else
            {
              v73 = PLMigrationGetLog();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v28;
                _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, failed to create history transaction iterator. Error: %@", buf, 0xCu);
              }
            }
          }

          if (error)
          {
            v74 = v28;
            *error = v28;
          }

          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:contextCopy];
          v29 = 1;
          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:1 managedObjectContext:contextCopy];
          goto LABEL_85;
        }

        v79 = v27;
        v29 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _processTransactionIterator:v26 managedObjectContext:contextCopy error:&v79];
        v30 = v79;

        if (v29 == 3)
        {
          pathManager = [(PLModelMigrationActionBackground *)self pathManager];
          [pathManager libraryURL];
          v69 = v75 = v26;
          v70 = PLIsFinalBackgroundMigrationRetryAttempt(v69);

          v26 = v75;
          if (v70)
          {
            [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:contextCopy];
            [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:0 managedObjectContext:contextCopy];
            v77 = v30;
            v31 = &v77;
LABEL_68:
            v29 = [(PLModelMigrationActionBackground *)self saveWithManagedObjectContext:contextCopy error:v31];
            v71 = *v31;

            v28 = v71;
            if (v29 == 1)
            {
LABEL_73:

LABEL_85:
              [(PLModelMigrationActionBackground *)self finalizeProgress];

              v25 = v76;
              goto LABEL_86;
            }

LABEL_71:
            if (error)
            {
              v72 = v28;
              *error = v28;
            }

            goto LABEL_73;
          }
        }

        else if (v29 == 1)
        {
          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:contextCopy];
          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:2 shouldSave:0 managedObjectContext:contextCopy];
          v78 = v30;
          v31 = &v78;
          goto LABEL_68;
        }

        v28 = v30;
        goto LABEL_71;
      }

      v53 = PLMigrationGetLog();
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

      if (v54)
      {
        logger7 = [(PLModelMigrationActionBackground *)self logger];

        if (logger7)
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          *buf = 0u;
          v84 = 0u;
          v56 = PLMigrationGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          LOWORD(v81) = 0;
          v48 = _os_log_send_and_compose_impl(v57, 0, buf, 512, &dword_19BF1F000, v56, 0, "Skipping migration processing, history token not in a valid state", &v81, 2);

          logger8 = [(PLModelMigrationActionBackground *)self logger];
          v50 = logger8;
          v51 = v48;
          v52 = 1634;
          goto LABEL_51;
        }

        v66 = PLMigrationGetLog();
        if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_77;
        }

        *buf = 0;
        v67 = "Skipping migration processing, history token not in a valid state";
LABEL_76:
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
LABEL_77:
      }
    }

    else
    {
      v43 = PLMigrationGetLog();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

      if (v44)
      {
        logger9 = [(PLModelMigrationActionBackground *)self logger];

        if (logger9)
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          *buf = 0u;
          v84 = 0u;
          v46 = PLMigrationGetLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = 3;
          }

          else
          {
            v47 = 2;
          }

          LOWORD(v81) = 0;
          v48 = _os_log_send_and_compose_impl(v47, 0, buf, 512, &dword_19BF1F000, v46, 0, "Skipping migration processing, missing initial processing token ", &v81, 2);

          logger8 = [(PLModelMigrationActionBackground *)self logger];
          v50 = logger8;
          v51 = v48;
          v52 = 1624;
LABEL_51:
          [logger8 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{v52, 0}];

          if (v48 != buf)
          {
            free(v48);
          }

          goto LABEL_78;
        }

        v66 = PLMigrationGetLog();
        if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_77;
        }

        *buf = 0;
        v67 = "Skipping migration processing, missing initial processing token ";
        goto LABEL_76;
      }
    }

LABEL_78:
    [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:contextCopy];
    v29 = 1;
    [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:1 managedObjectContext:contextCopy];
    [(PLModelMigrationActionBackground *)self finalizeProgress];
LABEL_86:

LABEL_87:
    goto LABEL_38;
  }

  v9 = v8;
  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger10 = [(PLModelMigrationActionBackground *)self logger];

    if (!logger10)
    {
      v40 = PLMigrationGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = PLStringFromDuplicateProcessingStatus(v9);
        *buf = 138543362;
        *&buf[4] = v41;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, based on processing status: %{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    *buf = 0u;
    v84 = 0u;
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT) ? 3 : 2;
    v15 = PLStringFromDuplicateProcessingStatus(v9);
    v81 = 138543362;
    v82 = v15;
    v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping migration processing, based on processing status: %{public}@", &v81, 12);

    logger11 = [(PLModelMigrationActionBackground *)self logger];
    [logger11 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1600, 0}];

    if (v16 != buf)
    {
      goto LABEL_16;
    }
  }

LABEL_37:
  [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:contextCopy];
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v29 = 1;
LABEL_38:

  return v29;
}

@end