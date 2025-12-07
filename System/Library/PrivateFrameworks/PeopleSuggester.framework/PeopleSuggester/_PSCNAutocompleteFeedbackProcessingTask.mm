@interface _PSCNAutocompleteFeedbackProcessingTask
+ (id)bookmarkFileNameForImplicit:(BOOL)implicit;
+ (id)bundleIDsToProcess;
+ (id)loadBookmarkTimeOverImplicit:(BOOL)implicit from:(id)from;
+ (id)sourceBundleIDsToIgnore;
+ (void)persistBookmarkTime:(id)time overImplicit:(BOOL)implicit to:(id)to;
+ (void)runWithInferredEnterAndExit:(BOOL)exit overImplicit:(BOOL)implicit eventFilter:(id)filter;
- (void)execute;
@end

@implementation _PSCNAutocompleteFeedbackProcessingTask

+ (id)bundleIDsToProcess
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = +[_PSConstants mobileFacetimeBundleId];
  v5 = +[_PSConstants macFacetimeBundleId];
  v6 = [v3 initWithObjects:{v4, v5, 0}];

  objc_autoreleasePoolPop(v2);

  return v6;
}

+ (id)sourceBundleIDsToIgnore
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"pstool", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

+ (id)bookmarkFileNameForImplicit:(BOOL)implicit
{
  if (implicit)
  {
    v3 = @".metadata.archive";
  }

  else
  {
    v3 = @"-explicit.metadata.archive";
  }

  v4 = [@"CNA" stringByAppendingString:v3];

  return v4;
}

+ (void)persistBookmarkTime:(id)time overImplicit:(BOOL)implicit to:(id)to
{
  implicitCopy = implicit;
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v17 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:time requiringSecureCoding:1 error:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = v10;
    v12 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackProcessingTask: Could not archive bookmark time. %@", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  v13 = MEMORY[0x1E695DFF8];
  v14 = [self bookmarkFileNameForImplicit:implicitCopy];
  v15 = [v13 URLWithString:v14 relativeToURL:toCopy];
  v16 = 0;
  [v9 writeToURL:v15 options:0 error:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_PSCNAutocompleteFeedbackProcessingTask persistBookmarkTime:overImplicit:to:];
    }

    goto LABEL_7;
  }

LABEL_8:
}

+ (id)loadBookmarkTimeOverImplicit:(BOOL)implicit from:(id)from
{
  implicitCopy = implicit;
  v6 = MEMORY[0x1E695DEF0];
  v7 = MEMORY[0x1E695DFF8];
  fromCopy = from;
  v9 = [self bookmarkFileNameForImplicit:implicitCopy];
  v10 = [v7 URLWithString:v9 relativeToURL:fromCopy];

  v11 = [v6 dataWithContentsOfURL:v10 options:0 error:0];

  if (v11)
  {
    v17 = 0;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_msgSend(MEMORY[0x1E695DF00] fromData:"classForKeyedUnarchiver") error:{v11, &v17}];
    v13 = v17;
    if (v13)
    {
      v14 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[_PSCNAutocompleteFeedbackProcessingTask loadBookmarkTimeOverImplicit:from:];
      }

      v15 = 0;
    }

    else
    {
      v15 = v12;
    }
  }

  else
  {
    v13 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackProcessingTask: Could not read archive containing bookmark time (may not exist).", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

+ (void)runWithInferredEnterAndExit:(BOOL)exit overImplicit:(BOOL)implicit eventFilter:(id)filter
{
  implicitCopy = implicit;
  exitCopy = exit;
  v67 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v7 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (implicitCopy)
    {
      v8 = @"YES";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackProcessingTask: starting over implicit == %@.", &buf, 0xCu);
  }

  v51 = objc_opt_new();
  [v51 setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  v9 = MEMORY[0x1E695DFF8];
  peopleDirectory = [MEMORY[0x1E6997910] peopleDirectory];
  v11 = [v9 fileURLWithPath:peopleDirectory isDirectory:1];
  v12 = [v9 fileURLWithPath:@"Feedback" isDirectory:1 relativeToURL:v11];

  if (v12)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v13 = getBMStoreConfigClass_softClass_0;
    v62 = getBMStoreConfigClass_softClass_0;
    if (!getBMStoreConfigClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v64 = __getBMStoreConfigClass_block_invoke_0;
      v65 = &unk_1E7C23BF0;
      v66 = &v59;
      __getBMStoreConfigClass_block_invoke_0(&buf);
      v13 = v60[3];
    }

    v14 = v13;
    _Block_object_dispose(&v59, 8);
    path = [v12 path];
    v48 = [v13 newPrivateStreamDefaultConfigurationWithStoreBasePath:path];

    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v16 = getBMStoreStreamClass_softClass_0;
    v62 = getBMStoreStreamClass_softClass_0;
    if (!getBMStoreStreamClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v64 = __getBMStoreStreamClass_block_invoke_0;
      v65 = &unk_1E7C23BF0;
      v66 = &v59;
      __getBMStoreStreamClass_block_invoke_0(&buf);
      v16 = v60[3];
    }

    v17 = v16;
    _Block_object_dispose(&v59, 8);
    v46 = [[v16 alloc] initWithPrivateStreamIdentifier:@"CNA" storeConfig:v48];
    v18 = [objc_opt_class() loadBookmarkTimeOverImplicit:implicitCopy from:v12];
    v47 = v18;
    if (v18)
    {
      v50 = v18;
      v19 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v51 stringFromDate:v50];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackProcessingTask: Found bookmark from last time feedback was processed. Starting from %@", &buf, 0xCu);
      }
    }

    else
    {
      v50 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-2592000.0];
      v19 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v51 stringFromDate:v50];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackProcessingTask: No bookmark found from last time feedback processed. Starting from 30 days ago: %@", &buf, 0xCu);
      }
    }

    [v50 timeIntervalSinceReferenceDate];
    v45 = [v46 publisherFromStartTime:v24 + 1.0];
    v25 = MEMORY[0x1E69978F8];
    defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v27 = [v25 storeWithDirectory:defaultDatabaseDirectory readOnly:1];

    v28 = [_PSCNAutocompleteFeedbackInteractionIterator alloc];
    bundleIDsToProcess = [objc_opt_class() bundleIDsToProcess];
    v30 = [(_PSCNAutocompleteFeedbackInteractionIterator *)v28 initWithInteractionStore:v27 bundleIds:bundleIDsToProcess startDate:v50 batchSize:100];

    LOBYTE(v44) = implicitCopy;
    v31 = [[_PSCNAutocompleteFeedbackTracker alloc] initWithInteractionIterator:v30 maxSecondsBetweenImpressionAndAction:60 shouldInferEnterAndExit:exitCopy impressionLogger:&__block_literal_global_41 submodelImpressionLogger:&__block_literal_global_54 actionLogger:&__block_literal_global_57_0 defaultForIsImplicit:v44];
    sourceBundleIDsToIgnore = [objc_opt_class() sourceBundleIDsToIgnore];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __96___PSCNAutocompleteFeedbackProcessingTask_runWithInferredEnterAndExit_overImplicit_eventFilter___block_invoke_59;
    v54[3] = &unk_1E7C26D48;
    v58 = implicitCopy;
    v57 = filterCopy;
    v33 = sourceBundleIDsToIgnore;
    v55 = v33;
    v34 = v31;
    v56 = v34;
    v35 = MEMORY[0x1B8C8C060](v54);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __96___PSCNAutocompleteFeedbackProcessingTask_runWithInferredEnterAndExit_overImplicit_eventFilter___block_invoke_71;
    v52[3] = &unk_1E7C26D70;
    v36 = v34;
    v53 = v36;
    v37 = MEMORY[0x1B8C8C060](v52);
    v38 = [v45 sinkWithCompletion:v37 receiveInput:v35];
    stopTime = [(_PSCNAutocompleteFeedbackTracker *)v36 stopTime];

    if (stopTime)
    {
      v40 = objc_opt_class();
      stopTime2 = [(_PSCNAutocompleteFeedbackTracker *)v36 stopTime];
      [v40 persistBookmarkTime:stopTime2 overImplicit:implicitCopy to:v12];
    }

    [v27 closeStorage];
    v42 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = @"NO";
      if (implicitCopy)
      {
        v43 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v43;
      _os_log_impl(&dword_1B5ED1000, v42, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackProcessingTask: finished over implicit == %@.", &buf, 0xCu);
    }

    v22 = v48;
  }

  else
  {
    v21 = +[_PSLogging feedbackChannel];
    v22 = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[_PSCNAutocompleteFeedbackProcessingTask runWithInferredEnterAndExit:overImplicit:eventFilter:];
      v22 = v21;
    }
  }
}

- (void)execute
{
  [objc_opt_class() runOverExplicit];
  v2 = objc_opt_class();

  [v2 runOverImplicit];
}

+ (void)persistBookmarkTime:overImplicit:to:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)loadBookmarkTimeOverImplicit:from:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end