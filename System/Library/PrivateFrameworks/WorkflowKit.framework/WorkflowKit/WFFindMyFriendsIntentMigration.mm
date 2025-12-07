@interface WFFindMyFriendsIntentMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
+ (id)classNameConversion;
+ (id)launchIdConversion;
+ (id)parameterConversion;
- (BOOL)convertParametersAndUpdateIntent:(id *)intent;
- (BOOL)updateBundleIdentifierForIntent:(id)intent;
- (BOOL)updateClassNameForIntent:(id)intent;
- (void)migrateWorkflow;
@end

@implementation WFFindMyFriendsIntentMigration

- (BOOL)convertParametersAndUpdateIntent:(id *)intent
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *intent;
  launchId = [v4 launchId];
  _className = [v4 _className];
  v7 = +[WFFindMyFriendsIntentMigration parameterConversion];
  v8 = [v7 objectForKeyedSubscript:launchId];
  v9 = [v8 objectForKeyedSubscript:_className];
  backingStore = [v4 backingStore];
  if (backingStore && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{launchId, 0}];
    [MEMORY[0x1E696E878] sharedConnection];
    v44 = v51 = 0;
    v45 = v11;
    v12 = [v44 loadSchemasForBundleIdentifiers:v11 error:&v51];
    v13 = v51;
    v46 = [v12 objectForKey:launchId];

    if (v13)
    {
      v14 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v54 = "[WFFindMyFriendsIntentMigration convertParametersAndUpdateIntent:]";
        v55 = 2114;
        v56 = launchId;
        v57 = 2114;
        v58 = _className;
        v59 = 2114;
        v60 = v13;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Error loading schema for %{public}@ when converting %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    v43 = v13;
    if (v46)
    {
      intentCopy = intent;
      v39 = v8;
      v40 = v7;
      v42 = launchId;
      v15 = objc_alloc(MEMORY[0x1E696E880]);
      [v4 identifier];
      v17 = v16 = backingStore;
      v41 = _className;
      v18 = [v15 _initWithIdentifier:v17 schema:v46 name:_className data:0];

      v37 = v16;
      _objectDescription = [v16 _objectDescription];
      attributes = [_objectDescription attributes];
      allValues = [attributes allValues];
      v22 = [allValues valueForKey:@"propertyName"];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v48;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v47 + 1) + 8 * i);
            v29 = [v9 objectForKeyedSubscript:v28];
            v30 = v29;
            if (v29)
            {
              v31 = v29;
            }

            else
            {
              v31 = v28;
            }

            v32 = v31;

            v33 = [v4 valueForKey:v28];
            [v18 setValue:v33 forKey:v32];
          }

          v25 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v25);
      }

      v34 = v18;
      *intentCopy = v18;
      v35 = [v9 count] != 0;

      _className = v41;
      launchId = v42;
      v8 = v39;
      v7 = v40;
      backingStore = v37;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {

    v35 = 0;
  }

  return v35;
}

- (BOOL)updateClassNameForIntent:(id)intent
{
  intentCopy = intent;
  v4 = +[WFFindMyFriendsIntentMigration classNameConversion];
  launchId = [intentCopy launchId];
  v6 = [v4 objectForKeyedSubscript:launchId];

  _className = [intentCopy _className];
  v8 = [v6 objectForKeyedSubscript:_className];

  if (v8)
  {
    _codableDescription = [intentCopy _codableDescription];
    if (_codableDescription && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [_codableDescription setClassName:v8];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)updateBundleIdentifierForIntent:(id)intent
{
  intentCopy = intent;
  v4 = +[WFFindMyFriendsIntentMigration launchIdConversion];
  launchId = [intentCopy launchId];
  v6 = [v4 objectForKeyedSubscript:launchId];

  if (v6)
  {
    [intentCopy _setLaunchId:v6];
  }

  return v6 != 0;
}

- (void)migrateWorkflow
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v32;
    v7 = @"is.workflow.actions.sirikit.donation.handle";
    *&v4 = 136315394;
    v26 = v4;
    do
    {
      v8 = 0;
      v27 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v11 = [v9 objectForKey:actionIdentifierKey];
        isEqualToString = objc_msgSend_isEqualToString_(v11);

        if (isEqualToString)
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v14 = [v9 objectForKey:actionParametersKey];

          v15 = WFExtractDonatedIntentFromSerializedParameters(v14);
          if (v15)
          {
            v16 = v15;
            v17 = v6;
            v18 = v7;
            v19 = [(WFFindMyFriendsIntentMigration *)self updateBundleIdentifierForIntent:v15];
            v20 = [(WFFindMyFriendsIntentMigration *)self updateClassNameForIntent:v16];
            v30 = v16;
            v21 = [(WFFindMyFriendsIntentMigration *)self convertParametersAndUpdateIntent:&v30];
            v22 = v30;

            if (v19 || v20 || v21)
            {
              v29 = 0;
              v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v29];
              v24 = v29;
              if (v23)
              {
                [v14 setObject:v23 forKey:@"IntentData"];
                v7 = v18;
              }

              else
              {
                v25 = getWFWorkflowMigrationLogObject();
                v7 = v18;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = v26;
                  v36 = "[WFFindMyFriendsIntentMigration migrateWorkflow]";
                  v37 = 2114;
                  v38 = v24;
                  _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s Error archiving intent data: %{public}@", buf, 0x16u);
                }
              }

              v6 = v17;
            }

            else
            {
              v7 = v18;
              v6 = v17;
            }

            v5 = v27;
          }

          else
          {
            v22 = 0;
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
}

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  versionCopy = version;
  if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.sirikit.donation.handle", migration))
  {
    v6 = WFCompareBundleVersions(versionCopy, @"900") == 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)parameterConversion
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"LocateDeviceIntent";
  v5[1] = @"PlaySoundIntent";
  v6[0] = &unk_1F4A99FF0;
  v6[1] = &unk_1F4A9A018;
  v7 = @"com.apple.findmy";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v3;
}

+ (id)classNameConversion
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"com.apple.findmy";
  v5[0] = @"FMIPLocateIntent";
  v5[1] = @"FMIPPlaySoundIntent";
  v6[0] = @"LocateDeviceIntent";
  v6[1] = @"PlaySoundIntent";
  v5[2] = @"FMFLocateIntent";
  v6[2] = @"LocateIntent";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v3;
}

+ (id)launchIdConversion
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.mobileme.fmf1";
  v4[1] = @"com.apple.mobileme.fmip1";
  v5[0] = @"com.apple.findmy";
  v5[1] = @"com.apple.findmy";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end