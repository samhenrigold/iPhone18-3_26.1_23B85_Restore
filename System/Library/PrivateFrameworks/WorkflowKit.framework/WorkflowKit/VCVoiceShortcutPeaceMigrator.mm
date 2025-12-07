@interface VCVoiceShortcutPeaceMigrator
+ (void)migrateFromCloudKitIntoDatabaseIfNecessary:(id)necessary;
- (BOOL)migrateObject:(id)object error:(id *)error;
- (BOOL)migrateWithError:(id *)error;
- (BOOL)saveRecord:(id)record withIdentifier:(id)identifier error:(id *)error;
- (VCVoiceShortcutPeaceMigrator)initWithDatabase:(id)database;
@end

@implementation VCVoiceShortcutPeaceMigrator

- (BOOL)saveRecord:(id)record withIdentifier:(id)identifier error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  identifierCopy = identifier;
  database = [(VCVoiceShortcutPeaceMigrator *)self database];
  name = [recordCopy name];

  if (name)
  {
    v70 = 0;
    v12 = [[WFWorkflow alloc] initWithRecord:recordCopy reference:0 storageProvider:0 error:&v70];
    v13 = v70;
    if (v12)
    {
      v14 = [identifierCopy length];
      v15 = getWFPeaceMigrationLogObject();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
          v73 = 2114;
          v74 = identifierCopy;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Migrating voice shortcut with identifier %{public}@", buf, 0x16u);
        }

        actions = [(WFWorkflow *)v12 actions];
        firstObject = [actions firstObject];

        v19 = firstObject;
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v24 = v20;

        intent = [v24 intent];

        if (!intent || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v32 = [database referenceForWorkflowID:identifierCopy];
          if (v32)
          {
            intent = v32;
            v27 = getWFPeaceMigrationLogObject();
            v21 = 1;
            if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
              v73 = 2114;
              v74 = identifierCopy;
              _os_log_impl(&dword_1CA256000, &v27->super, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) was migrated previously", buf, 0x16u);
            }
          }

          else
          {
            v66 = v19;
            v27 = [[WFWorkflowCreationOptions alloc] initWithRecord:recordCopy];
            [(WFWorkflowCreationOptions *)v27 setIdentifier:identifierCopy];
            [recordCopy addWatchWorkflowTypeIfEligible];
            v68 = 0;
            v33 = [database createWorkflowWithOptions:v27 error:&v68];
            v34 = v68;
            v21 = v33 != 0;

            if (!v33)
            {
              v35 = v27;
              v36 = getWFPeaceMigrationLogObject();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315650;
                v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
                v73 = 2114;
                v74 = identifierCopy;
                v75 = 2114;
                v76 = v34;
                _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Failed to save new shortcut for voice shortcut (%{public}@): %{public}@", buf, 0x20u);
              }

              v27 = v35;
              if (error)
              {
                v37 = v34;
                *error = v34;
              }
            }

            intent = 0;
            v19 = v66;
          }

          goto LABEL_52;
        }

        v26 = [intent workflowForIntentInDatabase:database];
        v27 = v26;
        if (!v26)
        {
          v31 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            workflow = [intent workflow];
            spokenPhrase = [workflow spokenPhrase];
            workflow2 = [intent workflow];
            [workflow2 vocabularyIdentifier];
            v40 = v39 = v31;
            *buf = 136315906;
            v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v73 = 2114;
            v74 = identifierCopy;
            v75 = 2112;
            v76 = spokenPhrase;
            v77 = 2114;
            v78 = v40;
            _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_ERROR, "%s Voice shortcut (%{public}@) references a nonexistent shortcut %@, with identifier %{public}@", buf, 0x2Au);

            v31 = v39;
            v27 = 0;
          }

          v21 = 0;
          goto LABEL_51;
        }

        v65 = v19;
        [(WFWorkflowCreationOptions *)v26 name];
        v28 = v64 = v27;
        name2 = [recordCopy name];
        isEqualToString = objc_msgSend_isEqualToString_(v28);

        if (isEqualToString)
        {
          v27 = v64;
          v31 = getWFPeaceMigrationLogObject();
          v21 = 1;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v73 = 2114;
            v74 = identifierCopy;
            _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) references a shortcut of the same name", buf, 0x16u);
          }

          v19 = v65;
          goto LABEL_51;
        }

        [MEMORY[0x1E695DFD8] setWithObjects:{@"name", @"legacyName", 0}];
        v69[1] = 0;
        v61 = v27 = v64;
        v41 = [database recordWithDescriptor:v64 properties:? error:?];
        v63 = 0;
        v60 = v41;
        if (!v41)
        {
          v46 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            name3 = [(WFWorkflowCreationOptions *)v64 name];
            identifier = [(WFWorkflowCreationOptions *)v64 identifier];
            *buf = 136315906;
            v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v73 = 2114;
            v74 = identifierCopy;
            v75 = 2112;
            v76 = name3;
            v77 = 2114;
            v78 = identifier;
            _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_FAULT, "%s Voice shortcut (%{public}@) failed to load existing shortcut %@, with identifier %{public}@", buf, 0x2Au);

            v27 = v64;
          }

          v45 = v46;
          v21 = 0;
          v19 = v65;
          goto LABEL_49;
        }

        legacyName = [v41 legacyName];
        v43 = [legacyName length];

        if (v43)
        {
          v44 = getWFPeaceMigrationLogObject();
          v21 = 1;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v73 = 2114;
            v74 = identifierCopy;
            _os_log_impl(&dword_1CA256000, v44, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) references a shortcut that already has a legacy name", buf, 0x16u);
          }

          v45 = v44;
          v27 = v64;
          v19 = v65;
          goto LABEL_49;
        }

        name4 = [v41 name];
        [v41 setLegacyName:name4];

        name5 = [recordCopy name];
        [v41 setName:name5];

        getWFPeaceMigrationLogObject();
        v53 = v52 = v41;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          name6 = [v52 name];
          legacyName2 = [v52 legacyName];
          *buf = 136315906;
          v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
          v73 = 2114;
          v74 = identifierCopy;
          v75 = 2112;
          v76 = name6;
          v77 = 2112;
          v78 = legacyName2;
          v55 = legacyName2;
          _os_log_impl(&dword_1CA256000, v53, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) references a shortcut with a different name. Swapping the name to %@ and moving %@ to the legacyName", buf, 0x2Au);
        }

        v69[0] = 0;
        v27 = v64;
        v56 = [database saveRecord:v52 withDescriptor:v64 error:v69];
        v59 = v69[0];
        if (v56)
        {
          v21 = 1;
          v19 = v65;
        }

        else
        {
          v57 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v73 = 2114;
            v74 = identifierCopy;
            v75 = 2114;
            v76 = v59;
            _os_log_impl(&dword_1CA256000, v57, OS_LOG_TYPE_FAULT, "%s Failed to save existing shortcut for voice shortcut (%{public}@): %{public}@", buf, 0x20u);
          }

          v19 = v65;
          if (error)
          {
            v45 = v59;
            v21 = 0;
            *error = v45;
LABEL_49:
            v31 = v63;
LABEL_50:

LABEL_51:
LABEL_52:

            goto LABEL_53;
          }

          v21 = 0;
        }

        v31 = v63;
        v45 = v59;
        goto LABEL_50;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Voice shortcut record does not have an associated identifier", buf, 0xCu);
      }
    }

    else
    {
      v22 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
        v73 = 2114;
        v74 = v13;
        _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Voice shortcut workflow data failed to open: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v23 = v13;
        v21 = 0;
        *error = v13;
LABEL_53:

        goto LABEL_54;
      }
    }

    v21 = 0;
    goto LABEL_53;
  }

  v13 = getWFPeaceMigrationLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v72 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Workflow record is missing a name and cannot be migrated", buf, 0xCu);
  }

  v21 = 0;
LABEL_54:

  return v21;
}

- (BOOL)migrateObject:(id)object error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  entity = [objectCopy entity];
  name = [entity name];
  isEqualToString = objc_msgSend_isEqualToString_(name);

  if (isEqualToString)
  {
    v10 = [objectCopy valueForKey:@"identifier"];
    v11 = objc_opt_class();
    v12 = v10;
    if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = getWFGeneralLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v32 = "WFEnforceClass";
        v33 = 2114;
        v34 = v12;
        v35 = 2114;
        v36 = objc_opt_class();
        v37 = 2114;
        v38 = v11;
        v16 = v36;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Previously migrated voice shortcuts, will not migrate them again", buf, 0x2Au);
      }

      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v30 = 0;
    v17 = [[WFWorkflowRecord alloc] initWithPeaceCoreDataModel:objectCopy error:&v30];
    v18 = v30;
    if (v17)
    {
      uUIDString = [v13 UUIDString];
      v29 = 0;
      v14 = [(VCVoiceShortcutPeaceMigrator *)self saveRecord:v17 withIdentifier:uUIDString error:&v29];
      v20 = v29;

      v21 = getWFPeaceMigrationLogObject();
      v22 = v21;
      if (v14)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          uUIDString2 = [v13 UUIDString];
          *buf = 136315394;
          v32 = "[VCVoiceShortcutPeaceMigrator migrateObject:error:]";
          v33 = 2114;
          v34 = uUIDString2;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_INFO, "%s Successfully saved voice shortcut (%{public}@) to database", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315650;
          v32 = "[VCVoiceShortcutPeaceMigrator migrateObject:error:]";
          v33 = 2112;
          v34 = objectCopy;
          v35 = 2114;
          v36 = v18;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Failed to convert %@ to a workflow record: %{public}@", buf, 0x20u);
        }

        if (error)
        {
          v27 = v20;
          *error = v20;
        }
      }
    }

    else
    {
      v24 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        uUIDString3 = [v13 UUIDString];
        *buf = 136315650;
        v32 = "[VCVoiceShortcutPeaceMigrator migrateObject:error:]";
        v33 = 2114;
        v34 = uUIDString3;
        v35 = 2114;
        v36 = v18;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Failed to convert voice shortcut (%{public}@) to a workflow record: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v26 = v18;
        v14 = 0;
        *error = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)migrateWithError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = os_transaction_create();
  database = [(VCVoiceShortcutPeaceMigrator *)self database];
  context = [database context];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__19437;
  v29 = __Block_byref_object_dispose__19438;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__VCVoiceShortcutPeaceMigrator_migrateWithError___block_invoke;
  aBlock[3] = &unk_1E83764D8;
  v8 = context;
  v21 = v8;
  selfCopy = self;
  v23 = &v25;
  v24 = &v31;
  v9 = _Block_copy(aBlock);
  database2 = [(VCVoiceShortcutPeaceMigrator *)self database];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__VCVoiceShortcutPeaceMigrator_migrateWithError___block_invoke_205;
  v18[3] = &unk_1E8376500;
  v11 = v9;
  v19 = v11;
  [database2 performTransactionWithReason:@"peace migration" block:v18 error:0];

  if (v26[5])
  {
    v12 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v26[5];
      *buf = 136315394;
      v36 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]";
      v37 = 2114;
      v38 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Shortcut migration from CoreData failed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v14 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Shortcut migration from CoreData succeeded", buf, 0xCu);
    }

    if (v32[3])
    {
      v15 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]";
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s At least one voice shortcut was migrated, marking migration as complete", buf, 0xCu);
      }

      [WFCloudKitSyncSession setVoiceShortcutMigrationDidRun:1];
    }
  }

  if (error)
  {
    *error = v26[5];
  }

  v16 = v26[5] == 0;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

void __49__VCVoiceShortcutPeaceMigrator_migrateWithError___block_invoke(void *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = 0x1E695D000uLL;
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"VCVoiceShortcutManagedObject"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isMarkedAsDeleted == NO"];
  [v3 setPredicate:v4];

  v5 = a1[4];
  v56 = 0;
  v6 = [v5 executeFetchRequest:v3 error:&v56];
  v7 = v56;
  v42 = v6;
  v43 = v3;
  v41 = v56;
  if (v41)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    v8 = getWFPeaceMigrationLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
LABEL_5:

      goto LABEL_6;
    }

    v9 = *(*(a1[6] + 8) + 40);
    *buf = 136315394;
    v58 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]_block_invoke";
    v59 = 2114;
    v60 = v9;
    v10 = "%s Failed to fetch voice shortcuts from CoreData: %{public}@";
    v11 = v8;
    v12 = OS_LOG_TYPE_FAULT;
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_1CA256000, v11, v12, v10, buf, v13);
    goto LABEL_5;
  }

  if (![v6 count])
  {
    v8 = getWFPeaceMigrationLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v58 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]_block_invoke";
    v10 = "%s No voice shortcuts found in CoreData database";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_4;
  }

  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = a1[5];
        v51 = 0;
        v22 = [v21 migrateObject:v19 error:&v51];
        v23 = v51;
        v24 = v51;
        if (v22)
        {
          ++*(*(a1[7] + 8) + 24);
        }

        else
        {
          v25 = *(a1[6] + 8);
          v27 = *(v25 + 40);
          v26 = (v25 + 40);
          if (!v27)
          {
            objc_storeStrong(v26, v23);
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v16);
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = [&unk_1F4A9B4A0 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v45)
    {
      v44 = *v48;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(&unk_1F4A9B4A0);
          }

          v29 = *(*(&v47 + 1) + 8 * j);
          v30 = v2;
          v31 = [*(v2 + 1504) fetchRequestWithEntityName:v29];
          v32 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v31];
          v33 = a1[4];
          v46 = 0;
          v34 = [v33 executeRequest:v32 error:&v46];
          v35 = v46;
          v36 = [v34 result];
          if (v36)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;

          v39 = [v38 BOOLValue];
          if ((v39 & 1) == 0)
          {
            v40 = getWFPeaceMigrationLogObject();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315650;
              v58 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]_block_invoke";
              v59 = 2114;
              v60 = v29;
              v61 = 2114;
              v62 = v35;
              _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_FAULT, "%s Failed to delete migrated %{public}@s: %{public}@", buf, 0x20u);
            }
          }

          v2 = v30;
        }

        v45 = [&unk_1F4A9B4A0 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v45);
    }
  }

LABEL_6:
}

- (VCVoiceShortcutPeaceMigrator)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutPeaceMigrator.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v12.receiver = self;
  v12.super_class = VCVoiceShortcutPeaceMigrator;
  v7 = [(VCVoiceShortcutPeaceMigrator *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_database, database);
    v9 = v8;
  }

  return v8;
}

+ (void)migrateFromCloudKitIntoDatabaseIfNecessary:(id)necessary
{
  v23 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (+[WFCloudKitSyncSession voiceShortcutMigrationDidRun])
  {
    v4 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Previously migrated voice shortcuts, will not migrate them again", buf, 0xCu);
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    v4 = [v5 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0] allowPlaceholder:0 error:0];
    applicationState = [v4 applicationState];
    isInstalled = [applicationState isInstalled];

    if (isInstalled)
    {
      v8 = os_transaction_create();
      v9 = [[VCVoiceShortcutPeaceMigrator alloc] initWithDatabase:necessaryCopy];
      v10 = [VCCKVoiceShortcutFetcher alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke;
      v19[3] = &unk_1E8376F80;
      v20 = v9;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke_175;
      v17 = &unk_1E8379BE0;
      v18 = v8;
      v11 = v8;
      v12 = v9;
      v13 = [(VCCKVoiceShortcutFetcher *)v10 initWithRecordHandler:v19 completionHandler:&v14];
      [(VCCKVoiceShortcutFetcher *)v13 start:v14];
    }

    else
    {
      v12 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]";
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Shortcuts app is not installed, will not attempt to migrate voice shortcuts from Peace", buf, 0xCu);
      }
    }
  }
}

void __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v16 = 0;
  v5 = [[WFWorkflowRecord alloc] initWithPeaceCloudKitRecord:v3 error:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v3 recordID];
    v9 = [v8 recordName];
    v15 = 0;
    v10 = [v7 saveRecord:v5 withIdentifier:v9 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = getWFPeaceMigrationLogObject();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v13 = [v3 recordID];
      v14 = [v13 recordName];
      *buf = 136315650;
      v18 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to save CloudKit record (%{public}@): %{public}@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }
  }

  else
  {
    v11 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 recordID];
      v13 = [v12 recordName];
      *buf = 136315650;
      v18 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to convert CloudKit record (%{public}@) into a workflow record: %{public}@", buf, 0x20u);
      goto LABEL_7;
    }
  }

LABEL_9:

  objc_autoreleasePoolPop(v4);
}

void __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke_175(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFPeaceMigrationLogObject();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_INFO, "%s Successfully migrated voice shortcuts from CloudKit", &v7, 0xCu);
    }

    [WFCloudKitSyncSession setVoiceShortcutMigrationDidRun:1];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to migrate all CloudKit records: %{public}@", &v7, 0x16u);
    }
  }
}

@end