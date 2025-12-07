@interface WFDatabaseMergePolicy
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error;
- (WFDatabase)database;
@end

@implementation WFDatabaseMergePolicy

- (WFDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  conflictsCopy = conflicts;
  v55.receiver = self;
  v55.super_class = WFDatabaseMergePolicy;
  v46 = [(NSMergePolicy *)&v55 resolveOptimisticLockingVersionConflicts:conflictsCopy error:error];
  database = [(WFDatabaseMergePolicy *)self database];
  persistenceMode = [database persistenceMode];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = conflictsCopy;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      v11 = 0;
      do
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * v11);
        newVersionNumber = [v12 newVersionNumber];
        sourceObject = [v12 sourceObject];
        v15 = sourceObject;
        if (newVersionNumber)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_35;
          }

          v17 = getWFDatabaseLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v58 = "[WFDatabaseMergePolicy resolveOptimisticLockingVersionConflicts:error:]";
            v59 = 2112;
            v60 = v12;
            _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s Found coherence library conflict: %@", buf, 0x16u);
          }

          sourceObject2 = [v12 sourceObject];
          v19 = objc_opt_class();
          v20 = sourceObject2;
          if (v20 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = getWFGeneralLogObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              v24 = objc_opt_class();
              *buf = 136315906;
              v58 = "WFEnforceClass";
              v59 = 2114;
              v60 = v20;
              v61 = 2114;
              v62 = v24;
              v63 = 2114;
              v64 = v19;
              v25 = v24;
              _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s Found coherence library conflict: %@", buf, 0x2Au);
            }

            v15 = 0;
          }

          else
          {
            v15 = v20;
          }

          persistedSnapshot = [v12 persistedSnapshot];
          v27 = [persistedSnapshot objectForKey:@"data"];

          if (v27)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          cachedSnapshot = [v12 cachedSnapshot];
          v31 = [cachedSnapshot objectForKey:@"data"];

          if (v31)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v31;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;

          v34 = [WFLibrary alloc];
          identifier = [v15 identifier];
          managedObjectContext = [(WFLibrary *)v34 initWithIdentifier:identifier data:v29];

          v36 = [WFLibrary alloc];
          identifier2 = [v15 identifier];
          sourceObject3 = [(WFLibrary *)v36 initWithIdentifier:identifier2 data:v33];

          v50 = 0;
          v38 = [(WFLibrary *)managedObjectContext mergeWithOther:sourceObject3 error:&v50];
          v39 = v50;

          if (!v38)
          {
            v40 = getWFCoherenceLogObject();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v58 = "[WFDatabaseMergePolicy resolveOptimisticLockingVersionConflicts:error:]";
              v59 = 2112;
              v60 = v39;
              _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_ERROR, "%s Could not merge libraries: %@", buf, 0x16u);
            }
          }

          v49 = v39;
          v41 = [(WFLibrary *)managedObjectContext capsuleDataWithPersistenceMode:persistenceMode error:&v49];
          v42 = v49;

          if (v41)
          {
            if (v42)
            {
LABEL_33:

              goto LABEL_34;
            }
          }

          else
          {
            v43 = getWFCoherenceLogObject();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v58 = "[WFDatabaseMergePolicy resolveOptimisticLockingVersionConflicts:error:]";
              v59 = 2112;
              v60 = v42;
              _os_log_impl(&dword_1CA256000, v43, OS_LOG_TYPE_ERROR, "%s Could not fetch library capsule data: %@", buf, 0x16u);
            }

            if (v42)
            {
              goto LABEL_33;
            }
          }

          [v15 setData:v41];
          [v15 setSyncHash:{+[WFLibraryRecord syncHashFromData:](WFLibraryRecord, "syncHashFromData:", v41)}];
          goto LABEL_33;
        }

        managedObjectContext = [sourceObject managedObjectContext];
        sourceObject3 = [v12 sourceObject];
        [(WFLibrary *)managedObjectContext deleteObject:sourceObject3];
LABEL_34:

LABEL_35:
        ++v11;
      }

      while (v9 != v11);
      v44 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      v9 = v44;
    }

    while (v44);
  }

  return v46;
}

@end