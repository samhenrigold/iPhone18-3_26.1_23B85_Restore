@interface _CDVisionSignalGradingDataCollectionTask
- (_CDVisionSignalGradingDataCollectionTask)initWithFile:(id)file activity:(id)activity;
- (id)eventFromDict:(id)dict;
- (id)eventFromFile:(id)file;
- (void)execute;
@end

@implementation _CDVisionSignalGradingDataCollectionTask

- (_CDVisionSignalGradingDataCollectionTask)initWithFile:(id)file activity:(id)activity
{
  fileCopy = file;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = _CDVisionSignalGradingDataCollectionTask;
  v9 = [(_CDVisionSignalGradingDataCollectionTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, file);
    v11 = [(_CDVisionSignalGradingDataCollectionTask *)v10 eventFromFile:fileCopy];
    event = v10->_event;
    v10->_event = v11;

    objc_storeStrong(&v10->_activity, activity);
  }

  return v10;
}

- (void)execute
{
  sharedInstance = [getPETEventTracker2Class() sharedInstance];
  if (self->_event)
  {
    v6 = sharedInstance;
    [sharedInstance logMessage:?];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    file = [(_CDVisionSignalGradingDataCollectionTask *)self file];
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
      [(_CDVisionSignalGradingDataCollectionTask *)fileCopy eventFromFile:v6, v7];
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
        [(_CDVisionSignalGradingDataCollectionTask *)v7 eventFromFile:v10];
      }

      v8 = 0;
    }

    else
    {
      v8 = [(_CDVisionSignalGradingDataCollectionTask *)self eventFromDict:v9];
    }
  }

  return v8;
}

- (id)eventFromDict:(id)dict
{
  v59 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v38 = objc_opt_new();
  v4 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = dictCopy;
  obj = [dictCopy objectForKeyedSubscript:@"visionGrades"];
  v5 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  v39 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = @"identifier";
    v8 = 0x1E7366000uLL;
    v9 = *v53;
    do
    {
      v10 = 0;
      v40 = v6;
      do
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = objc_opt_new();
        v13 = [v11 objectForKeyedSubscript:v7];
        [v12 setIdentifier:v13];

        v14 = [v11 objectForKeyedSubscript:@"imageGrade"];
        [v12 setImageGrade:{objc_msgSend(v14, "BOOLValue")}];

        v15 = [v11 objectForKeyedSubscript:@"numPeople"];
        [v12 setNumPeople:{objc_msgSend(v15, "intValue")}];

        v16 = [v11 objectForKeyedSubscript:@"cameraRollGrade"];
        [v12 setCameraRollGrade:{objc_msgSend(v16, "BOOLValue")}];

        v17 = [v11 objectForKeyedSubscript:@"extractedGrade"];
        [v12 setExtractedGrade:{objc_msgSend(v17, "BOOLValue")}];

        if ([v12 extractedGrade])
        {
          v18 = v9;
          v19 = v8;
          v20 = v7;
          v21 = objc_opt_new();
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v22 = [v11 objectForKeyedSubscript:@"extractedIds"];
          v23 = [v22 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v49;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v49 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [v21 addObject:{*(*(&v48 + 1) + 8 * i), v38}];
              }

              v24 = [v22 countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v24);
          }

          [v12 setExtractedSignals:v21];
          v7 = v20;
          v8 = v19;
          v9 = v18;
          v4 = v39;
          v6 = v40;
        }

        [v4 addObject:{v12, v38}];

        objc_autoreleasePoolPop(context);
        ++v10;
      }

      while (v10 != v6);
      v6 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v6);
  }

  [v38 setVisionGrades:v4];
  v27 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = [v42 objectForKeyedSubscript:@"popularityDict"];
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v45;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v44 + 1) + 8 * j);
        v34 = objc_opt_new();
        [v34 setIdentifier:v33];
        v35 = [v42 objectForKeyedSubscript:@"popularityDict"];
        v36 = [v35 objectForKeyedSubscript:v33];
        [v34 setCount:{objc_msgSend(v36, "intValue")}];

        [v27 addObject:v34];
      }

      v30 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v30);
  }

  [v38 setPopularityEntries:v27];

  return v38;
}

- (void)eventFromFile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error reading vision signal grading data from file %@: %@", &v3, 0x16u);
}

- (void)eventFromFile:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving vision siginal grading data: %@", &v2, 0xCu);
}

@end