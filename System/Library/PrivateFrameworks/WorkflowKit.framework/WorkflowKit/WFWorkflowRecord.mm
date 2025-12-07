@interface WFWorkflowRecord
+ (id)defaultAccessResourcePerWorkflowStates;
+ (id)defaultIcon;
+ (id)defaultInputClasses;
+ (id)defaultLastMigratedClientVersion;
+ (id)defaultLastSavedOnDeviceName;
+ (id)defaultSmartPromptPerWorkflowStates;
+ (id)defaultWorkflowTypes;
+ (id)workflowSubtitleForActionCount:(unint64_t)count savedSubtitle:(id)subtitle;
+ (void)updateCoherenceLibraryWithTypesForWorkflow:(id)workflow workflowTypes:(id)types existingWorkflowTypes:(id)workflowTypes database:(id)database;
- (BOOL)addWatchWorkflowTypeIfEligible;
- (BOOL)addWatchWorkflowTypeIfEligibleWithIneligibleActionIdentifiers:(id)identifiers;
- (BOOL)isEligibleForWatch;
- (BOOL)isEligibleForWatchWithIneligibleActionIdentifiers:(id)identifiers;
- (BOOL)loadFromPeaceData:(id)data keyImageData:(id)imageData error:(id *)error;
- (BOOL)saveChangesToStorage:(id)storage error:(id *)error;
- (WFWorkflowRecord)initWithPeaceCloudKitRecord:(id)record error:(id *)error;
- (WFWorkflowRecord)initWithPeaceCoreDataModel:(id)model error:(id *)error;
- (id)fileRepresentation;
- (void)addWatchWorkflowType;
- (void)setActions:(id)actions;
@end

@implementation WFWorkflowRecord

+ (id)defaultLastMigratedClientVersion
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];

  return v3;
}

+ (id)defaultIcon
{
  v2 = objc_alloc_init(MEMORY[0x1E69E0E00]);

  return v2;
}

+ (id)defaultWorkflowTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69E1460];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)defaultSmartPromptPerWorkflowStates
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)defaultLastSavedOnDeviceName
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  name = [currentDevice name];

  return name;
}

+ (id)defaultAccessResourcePerWorkflowStates
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)defaultInputClasses
{
  v2 = +[WFWorkflow supportedInputClassNames];
  array = [v2 array];

  return array;
}

- (BOOL)loadFromPeaceData:(id)data keyImageData:(id)imageData error:(id *)error
{
  v32[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:1 format:0 error:error];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_4549(v11, v12);

  if (v13)
  {
    v31[0] = @"WFLWorkflowActions";
    v31[1] = @"WFLWorkflowActionIdentifier";
    v32[0] = @"WFWorkflowActions";
    v32[1] = @"WFWorkflowActionIdentifier";
    v31[2] = @"WFLWorkflowActionParameters";
    v31[3] = @"com.apple.WorkflowKit.actions.handle-intent";
    v32[2] = @"WFWorkflowActionParameters";
    v32[3] = @"is.workflow.actions.sirikit.donation.handle";
    v31[4] = @"com.apple.WorkflowKit.actions.open-user-activity";
    v32[4] = @"is.workflow.actions.useractivity.open";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];
    v15 = WFMapPropertyListStrings(v13, v14);
    v16 = [v13 objectForKeyedSubscript:@"WFWorkflowActions"];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 objectMatchingKey:@"WFWorkflowActionIdentifier" value:@"is.workflow.actions.useractivity.open"];

    [v19 setValue:imageDataCopy forKey:@"UserActivityImageData"];
    v20 = [v13 objectForKeyedSubscript:@"WFLWorkflowDescription"];
    v21 = objc_opt_class();
    v22 = WFEnforceClass_4549(v20, v21);
    [(WFWorkflowRecord *)self setWorkflowSubtitle:v22];

    v23 = [v13 objectForKeyedSubscript:@"WFLWorkflowAssociatedAppBundleIdentifier"];
    v24 = objc_opt_class();
    v25 = WFEnforceClass_4549(v23, v24);
    [(WFWorkflowRecord *)self setAssociatedAppBundleIdentifier:v25];

    v26 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"name", @"actions", 0}];
    v27 = [WFWorkflowFile alloc];
    v28 = [v13 objectForKeyedSubscript:@"WFLWorkflowName"];
    v29 = [(WFWorkflowFile *)v27 initWithDictionary:v13 name:v28];

    [(WFRecord *)self loadFromStorage:v29 properties:v26];
  }

  objc_autoreleasePoolPop(v10);
  return v13 != 0;
}

- (WFWorkflowRecord)initWithPeaceCoreDataModel:(id)model error:(id *)error
{
  modelCopy = model;
  v7 = [modelCopy valueForKey:@"serializedWorkflowData"];
  v8 = objc_opt_class();
  v9 = WFEnforceClass_1501(v7, v8);

  v10 = [modelCopy valueForKey:@"keyImageData"];
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(v10, v11);

  v13 = [modelCopy valueForKey:@"phrase"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_1501(v13, v14);

  v16 = [modelCopy valueForKey:@"dateCreated"];
  v17 = objc_opt_class();
  v18 = WFEnforceClass_1501(v16, v17);

  v19 = [modelCopy valueForKey:@"dateLastModified"];

  v20 = objc_opt_class();
  v21 = WFEnforceClass_1501(v19, v20);

  v22 = [(WFRecord *)self initWithStorage:0];
  v23 = v22;
  if (v22 && [(WFWorkflowRecord *)v22 loadFromPeaceData:v9 keyImageData:v12 error:error])
  {
    name = [(WFWorkflowRecord *)v23 name];
    [(WFWorkflowRecord *)v23 setWorkflowSubtitle:name];

    [(WFWorkflowRecord *)v23 setName:v15];
    [(WFWorkflowRecord *)v23 setCreationDate:v18];
    [(WFWorkflowRecord *)v23 setModificationDate:v21];
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (WFWorkflowRecord)initWithPeaceCloudKitRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = [(WFRecord *)self initWithStorage:0];
  if (v7)
  {
    encryptedValuesByKey = [recordCopy encryptedValuesByKey];
    v9 = [encryptedValuesByKey objectForKeyedSubscript:@"serializedWorkflowData"];

    if (v9)
    {
      encryptedValuesByKey2 = [recordCopy encryptedValuesByKey];
      v11 = [encryptedValuesByKey2 objectForKeyedSubscript:@"keyImageData"];

      if ([(WFWorkflowRecord *)v7 loadFromPeaceData:v9 keyImageData:v11 error:error])
      {
        name = [(WFWorkflowRecord *)v7 name];
        [(WFWorkflowRecord *)v7 setWorkflowSubtitle:name];

        encryptedValuesByKey3 = [recordCopy encryptedValuesByKey];
        v14 = [encryptedValuesByKey3 objectForKeyedSubscript:@"phrase"];

        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
          [(WFWorkflowRecord *)v7 setName:v15];
        }

        else
        {
          [(WFWorkflowRecord *)v7 setName:0];
        }

        creationDate = [recordCopy creationDate];
        [(WFWorkflowRecord *)v7 setCreationDate:creationDate];

        modificationDate = [recordCopy modificationDate];
        [(WFWorkflowRecord *)v7 setModificationDate:modificationDate];

        v16 = v7;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)saveChangesToStorage:(id)storage error:(id *)error
{
  v36[2] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  name = [(WFWorkflowRecord *)self name];
  wf_isEmpty = [name wf_isEmpty];

  if (wf_isEmpty)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[WFWorkflowRecord saveChangesToStorage:error:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Could not save workflow record because name was empty", buf, 0xCu);
    }

    v10 = MEMORY[0x1E696ABC0];
    v35[0] = *MEMORY[0x1E696A588];
    v11 = WFLocalizedString(@"Invalid Name");
    v36[0] = v11;
    v35[1] = *MEMORY[0x1E696A578];
    v12 = WFLocalizedString(@"Please enter a name for this shortcut.");
    v36[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    *error = [v10 errorWithDomain:@"WFWorkflowErrorDomain" code:0 userInfo:v13];

    v14 = 0;
  }

  else
  {
    wantedEncryptedSchemaVersion = [(WFWorkflowRecord *)self wantedEncryptedSchemaVersion];
    v16 = +[WFCloudKitWorkflow latestEncryptedSchemaVersion];
    if (wantedEncryptedSchemaVersion != v16)
    {
      v17 = v16;
      v18 = getWFWalrusLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(WFWorkflowRecord *)self name];
        *buf = 136315906;
        v28 = "[WFWorkflowRecord saveChangesToStorage:error:]";
        v29 = 2112;
        v30 = name2;
        v31 = 2048;
        v32 = wantedEncryptedSchemaVersion;
        v33 = 2048;
        v34 = v17;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEFAULT, "%s Saving %@ to storage, but Walrus version is wrong; fixing <old: %lld, new: %lld>", buf, 0x2Au);
      }

      [(WFWorkflowRecord *)self setWantedEncryptedSchemaVersion:v17];
    }

    modifiedPropertiesSinceLastSave = [(WFRecord *)self modifiedPropertiesSinceLastSave];
    v21 = [modifiedPropertiesSinceLastSave count];

    if (v21)
    {
      date = [MEMORY[0x1E695DF00] date];
      [(WFWorkflowRecord *)self setModificationDate:date];

      currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
      name3 = [currentDevice name];
      [(WFWorkflowRecord *)self setLastSavedOnDeviceName:name3];
    }

    v26.receiver = self;
    v26.super_class = WFWorkflowRecord;
    v14 = [(WFRecord *)&v26 saveChangesToStorage:storageCopy error:error];
  }

  return v14;
}

- (id)fileRepresentation
{
  v3 = [WFWorkflowFile alloc];
  v4 = objc_opt_new();
  name = [(WFWorkflowRecord *)self name];
  v6 = [(WFWorkflowFile *)v3 initWithDictionary:v4 name:name performMigration:0];

  [(WFRecord *)self writeToStorage:v6 error:0];

  return v6;
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  v5 = [actionsCopy copy];
  actions = self->_actions;
  self->_actions = v5;

  [(WFWorkflowRecord *)self willChangeValueForKey:@"actionCount"];
  v7 = [actionsCopy count];

  self->_actionCount = v7;
  [(WFWorkflowRecord *)self didChangeValueForKey:@"actionCount"];

  [(WFRecord *)self markPropertyModifiedIfNecessary:@"actionCount"];
}

+ (void)updateCoherenceLibraryWithTypesForWorkflow:(id)workflow workflowTypes:(id)types existingWorkflowTypes:(id)workflowTypes database:(id)database
{
  workflowCopy = workflow;
  databaseCopy = database;
  v11 = MEMORY[0x1E695DFA8];
  workflowTypesCopy = workflowTypes;
  typesCopy = types;
  v14 = [v11 setWithArray:typesCopy];
  v15 = [MEMORY[0x1E695DFD8] setWithArray:workflowTypesCopy];
  [v14 minusSet:v15];

  v16 = [MEMORY[0x1E695DFA8] setWithArray:workflowTypesCopy];

  v17 = [MEMORY[0x1E695DFD8] setWithArray:typesCopy];

  [v16 minusSet:v17];
  v23 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __108__WFWorkflowRecord_updateCoherenceLibraryWithTypesForWorkflow_workflowTypes_existingWorkflowTypes_database___block_invoke;
  v24[3] = &unk_1E837F368;
  v25 = v14;
  v26 = databaseCopy;
  v27 = workflowCopy;
  v28 = v16;
  v18 = v16;
  v19 = workflowCopy;
  v20 = databaseCopy;
  v21 = v14;
  [v20 performTransactionWithReason:@"update workflow types" block:v24 error:&v23];
  v22 = v23;
}

void __108__WFWorkflowRecord_updateCoherenceLibraryWithTypesForWorkflow_workflowTypes_existingWorkflowTypes_database___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__WFWorkflowRecord_updateCoherenceLibraryWithTypesForWorkflow_workflowTypes_existingWorkflowTypes_database___block_invoke_2;
  v7[3] = &unk_1E837B660;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v7];
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__WFWorkflowRecord_updateCoherenceLibraryWithTypesForWorkflow_workflowTypes_existingWorkflowTypes_database___block_invoke_198;
  v4[3] = &unk_1E837B660;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __108__WFWorkflowRecord_updateCoherenceLibraryWithTypesForWorkflow_workflowTypes_existingWorkflowTypes_database___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WFWorkflowCollectionIdentifierForWorkflowType(v3);
  if (v4)
  {
    v5 = [*(a1 + 32) library];
    v6 = *(a1 + 40);
    v10 = 0;
    [v5 insertShortcutWithIdentifier:v6 atIndex:0 toCollection:v4 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = getWFCoherenceLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "+[WFWorkflowRecord updateCoherenceLibraryWithTypesForWorkflow:workflowTypes:existingWorkflowTypes:database:]_block_invoke_2";
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Failed to add workflow to collection. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) libraryDidChange];
      v9 = *(a1 + 32);
      v8 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v4 objectType:2];
      [v9 addPendingUpdatedDescriptor:v8];
    }
  }

  else
  {
    v7 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "+[WFWorkflowRecord updateCoherenceLibraryWithTypesForWorkflow:workflowTypes:existingWorkflowTypes:database:]_block_invoke";
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to add workflow to collection because of unknown workflow type: %{public}@", buf, 0x16u);
    }
  }
}

void __108__WFWorkflowRecord_updateCoherenceLibraryWithTypesForWorkflow_workflowTypes_existingWorkflowTypes_database___block_invoke_198(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WFWorkflowCollectionIdentifierForWorkflowType(v3);
  if (v4)
  {
    v5 = [*(a1 + 32) library];
    v6 = *(a1 + 40);
    v10 = 0;
    [v5 removeShortcutWithIdentifier:v6 fromCollectionWithIdentifier:v4 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = getWFCoherenceLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "+[WFWorkflowRecord updateCoherenceLibraryWithTypesForWorkflow:workflowTypes:existingWorkflowTypes:database:]_block_invoke";
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Failed to remove workflow from collection. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) libraryDidChange];
      v9 = *(a1 + 32);
      v8 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v4 objectType:2];
      [v9 addPendingUpdatedDescriptor:v8];
    }
  }

  else
  {
    v7 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "+[WFWorkflowRecord updateCoherenceLibraryWithTypesForWorkflow:workflowTypes:existingWorkflowTypes:database:]_block_invoke";
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to remove workflow from collection because of unknown workflow type: %{public}@", buf, 0x16u);
    }
  }
}

+ (id)workflowSubtitleForActionCount:(unint64_t)count savedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v6 = subtitleCopy;
  if (count == 1 && subtitleCopy)
  {
    v7 = subtitleCopy;
  }

  else
  {
    v7 = [WFWorkflow localizedSubtitleWithActionCount:count];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isEligibleForWatchWithIneligibleActionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  actions = [(WFWorkflowRecord *)self actions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__WFWorkflowRecord_WatchEligibility__isEligibleForWatchWithIneligibleActionIdentifiers___block_invoke;
  v10[3] = &unk_1E837F9E0;
  v11 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [actions if_firstObjectPassingTest:v10];
  v8 = v7 == 0;

  return v8;
}

uint64_t __88__WFWorkflowRecord_WatchEligibility__isEligibleForWatchWithIneligibleActionIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectForKeyedSubscript:@"WFWorkflowActionIdentifier"];
  if (v5)
  {
    v6 = [*(a1 + 32) containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

- (BOOL)isEligibleForWatch
{
  v3 = +[WFActionRegistry sharedRegistry];
  identifiersOfActionsDisabledOnWatch = [v3 identifiersOfActionsDisabledOnWatch];

  LOBYTE(self) = [(WFWorkflowRecord *)self isEligibleForWatchWithIneligibleActionIdentifiers:identifiersOfActionsDisabledOnWatch];
  return self;
}

- (BOOL)addWatchWorkflowTypeIfEligibleWithIneligibleActionIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[WFWorkflowRecord(WatchEligibility) addWatchWorkflowTypeIfEligibleWithIneligibleActionIdentifiers:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Adding watch workflow type to record %@", &v10, 0x16u);
  }

  workflowTypes = [(WFWorkflowRecord *)self workflowTypes];
  v7 = [workflowTypes containsObject:*MEMORY[0x1E69E1470]];

  if ((v7 & 1) == 0)
  {
    if (![(WFWorkflowRecord *)self isEligibleForWatchWithIneligibleActionIdentifiers:identifiersCopy])
    {
      v8 = 0;
      goto LABEL_8;
    }

    [(WFWorkflowRecord *)self addWatchWorkflowType];
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (BOOL)addWatchWorkflowTypeIfEligible
{
  v3 = +[WFActionRegistry sharedRegistry];
  identifiersOfActionsDisabledOnWatch = [v3 identifiersOfActionsDisabledOnWatch];

  LOBYTE(self) = [(WFWorkflowRecord *)self addWatchWorkflowTypeIfEligibleWithIneligibleActionIdentifiers:identifiersOfActionsDisabledOnWatch];
  return self;
}

- (void)addWatchWorkflowType
{
  v10 = *MEMORY[0x1E69E9840];
  workflowTypes = [(WFWorkflowRecord *)self workflowTypes];
  v4 = [workflowTypes arrayByAddingObject:*MEMORY[0x1E69E1470]];
  [(WFWorkflowRecord *)self setWorkflowTypes:v4];

  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[WFWorkflowRecord(WatchEligibility) addWatchWorkflowType]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Added watch workflow type to workflow %@", &v6, 0x16u);
  }
}

@end