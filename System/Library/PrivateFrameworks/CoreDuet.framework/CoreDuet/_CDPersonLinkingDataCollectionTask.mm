@interface _CDPersonLinkingDataCollectionTask
- (_CDPersonLinkingDataCollectionTask)initWithFile:(id)file activity:(id)activity;
- (id)eventFromDict:(id)dict;
- (id)eventFromFile:(id)file;
- (void)execute;
@end

@implementation _CDPersonLinkingDataCollectionTask

- (_CDPersonLinkingDataCollectionTask)initWithFile:(id)file activity:(id)activity
{
  fileCopy = file;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = _CDPersonLinkingDataCollectionTask;
  v9 = [(_CDPersonLinkingDataCollectionTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, file);
    v11 = [(_CDPersonLinkingDataCollectionTask *)v10 eventFromFile:fileCopy];
    event = v10->_event;
    v10->_event = v11;

    objc_storeStrong(&v10->_activity, activity);
  }

  return v10;
}

- (id)eventFromDict:(id)dict
{
  v34 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = objc_opt_new();
  v5 = [dictCopy objectForKeyedSubscript:@"userID"];
  v24 = v4;
  [v4 setUserID:v5];

  v27 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = dictCopy;
  obj = [dictCopy objectForKeyedSubscript:@"pairs"];
  v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v28)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = objc_opt_new();
        v10 = objc_opt_new();
        v11 = [v7 objectForKeyedSubscript:@"sourcePerson"];
        v12 = [v11 objectForKeyedSubscript:@"name"];
        [v9 setName:v12];

        v13 = [v7 objectForKeyedSubscript:@"sourcePerson"];
        v14 = [v13 objectForKeyedSubscript:@"emails"];
        [v9 setEmails:v14];

        v15 = [v7 objectForKeyedSubscript:@"targetPerson"];
        v16 = [v15 objectForKeyedSubscript:@"name"];
        [v10 setName:v16];

        v17 = [v7 objectForKeyedSubscript:@"targetPerson"];
        v18 = [v17 objectForKeyedSubscript:@"emails"];
        [v10 setEmails:v18];

        [v8 setSourcePerson:v9];
        [v8 setTargetPerson:v10];
        v19 = [v7 objectForKeyedSubscript:@"grade"];
        [v8 setGrade:{objc_msgSend(v19, "BOOLValue")}];

        v20 = [v7 objectForKeyedSubscript:@"confidence"];
        [v20 floatValue];
        [v8 setConfidence:?];

        v21 = [v7 objectForKeyedSubscript:@"reason"];
        [v8 setReason:v21];

        [v27 addObject:v8];
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v28);
  }

  [v24 setPairs:v27];

  return v24;
}

- (void)execute
{
  sharedInstance = [getPETEventTracker2Class() sharedInstance];
  if (self->_event)
  {
    v6 = sharedInstance;
    [sharedInstance logMessage:?];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    file = [(_CDPersonLinkingDataCollectionTask *)self file];
    [defaultManager removeItemAtPath:file error:0];

    sharedInstance = v6;
  }
}

- (id)eventFromFile:(id)file
{
  fileCopy = file;
  v13 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy options:2 error:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_CDPersonLinkingDataCollectionTask *)fileCopy eventFromFile:v6, v7];
    }

    v8 = 0;
  }

  else
  {
    v12 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v12];
    v7 = v12;
    if (v7)
    {
      v10 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_CDPersonLinkingDataCollectionTask *)v7 eventFromFile:v10];
      }

      v8 = 0;
    }

    else
    {
      v8 = [(_CDPersonLinkingDataCollectionTask *)self eventFromDict:v9];
    }
  }

  return v8;
}

- (void)eventFromFile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error reading person linking data from file %@: %@", &v3, 0x16u);
}

- (void)eventFromFile:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving person linking data: %@", &v2, 0xCu);
}

@end