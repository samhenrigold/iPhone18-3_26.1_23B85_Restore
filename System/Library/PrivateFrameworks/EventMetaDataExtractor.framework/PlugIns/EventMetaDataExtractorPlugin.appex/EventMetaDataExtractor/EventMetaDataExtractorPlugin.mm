@interface EventMetaDataExtractorPlugin
+ (void)sendAnalyticsForTask:(id)task extractorOutput:(id)output startTime:(id)time;
- (id)performTask:(id)task error:(id *)error;
@end

@implementation EventMetaDataExtractorPlugin

+ (void)sendAnalyticsForTask:(id)task extractorOutput:(id)output startTime:(id)time
{
  taskCopy = task;
  outputCopy = output;
  timeCopy = time;
  v27[0] = @"taskName";
  v27[1] = @"extractionStatus";
  v28[0] = taskCopy;
  v28[1] = &__kCFBooleanFalse;
  v27[2] = @"extractionFailureCode";
  v10 = [outputCopy objectForKeyedSubscript:@"errorCode"];
  v28[2] = v10;
  v27[3] = @"executionTime";
  [timeCopy timeIntervalSinceNow];
  v12 = [NSNumber numberWithInt:(v11 * -10.0)];
  v27[4] = @"eventCategory";
  v28[3] = v12;
  v28[4] = @"Unknown";
  v13 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
  v14 = [v13 mutableCopy];

  v15 = [taskCopy isEqual:@"EventSuggestionsFromMessage"] ^ 1;
  if (!outputCopy)
  {
    LOBYTE(v15) = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = [outputCopy objectForKeyedSubscript:@"events"];
    if (v16)
    {
      v17 = [outputCopy objectForKeyedSubscript:@"events"];
      v18 = [v17 count] == 0;

      if (!v18)
      {
        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractionStatus"];
        v19 = [outputCopy objectForKeyedSubscript:@"events"];
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v20 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
        [v14 setObject:v21 forKeyedSubscript:@"eventCategory"];
      }
    }
  }

  v22 = [taskCopy isEqual:@"TitleSuggestionFromMessage"];
  v23 = v22 ^ 1;
  if (!outputCopy)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = [outputCopy objectForKeyedSubscript:@"title"];
    v25 = v24 == 0;

    if (!v25)
    {
      [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractionStatus"];
      v22 = [v14 setObject:@"N/A" forKeyedSubscript:@"eventCategory"];
    }
  }

  v26 = extractionLogHandle(v22);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BECC(v14, v26);
  }

  AnalyticsSendEvent();
}

- (id)performTask:(id)task error:(id *)error
{
  taskCopy = task;
  v28 = +[NSDate date];
  parameters = [taskCopy parameters];
  v7 = [parameters stringValueForKey:@"TaskName" defaultValue:0];

  parameters2 = [taskCopy parameters];
  v29 = [parameters2 stringValueForKey:@"AssetFolderPath" defaultValue:0];

  parameters3 = [taskCopy parameters];
  v10 = [parameters3 stringValueForKey:@"ConfigFile" defaultValue:@"config.plist"];

  parameters4 = [taskCopy parameters];
  v27 = [parameters4 stringValueForKey:@"InputMessage" defaultValue:0];

  v13 = extractionLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = @"1.0.1";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "EventMetaDataExtractorPlugin - Version:%@ Performing Task: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = sub_100013744;
  v46 = sub_100013754;
  v47 = 0;
  v42[0] = @"EventSuggestionsFromMessage";
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10001375C;
  v35[3] = &unk_1000ACB00;
  v38 = buf;
  v14 = [[EMDEEventExtractor alloc] initWithConfigFile:v10 assetFolderPath:v29 error:error];
  v36 = v14;
  v15 = v27;
  v37 = v15;
  errorCopy = error;
  v16 = objc_retainBlock(v35);
  v42[1] = @"TitleSuggestionFromMessage";
  v43[0] = v16;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000137B0;
  v30[3] = &unk_1000ACB00;
  v33 = buf;
  v17 = v14;
  v31 = v17;
  v18 = v15;
  v32 = v18;
  errorCopy2 = error;
  v19 = objc_retainBlock(v30);
  v43[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

  v21 = [v20 objectForKeyedSubscript:v7];
  v22 = v21[2]();

  v23 = [MLRTaskResult alloc];
  v24 = [v23 initWithJSONResult:*(*&buf[8] + 40) unprivatizedVector:0];
  v25 = extractionLogHandle(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *v40 = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "EventMetaDataExtractorPlugin - Returning result for task: %@", v40, 0xCu);
  }

  [objc_opt_class() sendAnalyticsForTask:v7 extractorOutput:*(*&buf[8] + 40) startTime:v28];
  _Block_object_dispose(buf, 8);

  return v24;
}

@end