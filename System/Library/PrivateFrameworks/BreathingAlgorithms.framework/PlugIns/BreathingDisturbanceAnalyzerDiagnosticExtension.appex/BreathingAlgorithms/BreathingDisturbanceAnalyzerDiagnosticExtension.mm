@interface BreathingDisturbanceAnalyzerDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation BreathingDisturbanceAnalyzerDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v3 = sub_100002E38(parametersCopy);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = parametersCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", buf, 0xCu);
  }

  v78 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (([v78 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v78, "isEqualToString:", @"com.apple.TapToRadar"))
  {
    v4 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    bOOLValue = [v4 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v6 = &__NSArray0__struct;
      goto LABEL_65;
    }

    v74 = 1;
  }

  else
  {
    v74 = 0;
  }

  v73 = dispatch_semaphore_create(0);
  v7 = NSTemporaryDirectory();
  v79 = [v7 stringByAppendingPathComponent:@"BreathingAlgorithms"];

  v9 = sub_100002E38(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v79;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to create directory at: %{public}@", buf, 0xCu);
  }

  v10 = +[NSFileManager defaultManager];
  v87 = 0;
  v11 = [v10 createDirectoryAtPath:v79 withIntermediateDirectories:1 attributes:0 error:&v87];
  v76 = v87;

  if (v11)
  {
    v13 = sub_100002E38(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v79;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully created directory at: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v13 = sub_100002E38(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10000C154(v79, v76, v13);
    }
  }

  v14 = v79;
  v15 = sub_100002E38(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attempting to run force analysis", buf, 2u);
  }

  v16 = objc_opt_new();
  v17 = [[HKSHSleepApneaControl alloc] initWithHealthStore:v16];
  v18 = v17;
  if (v17)
  {
    getDateIntervalOfLastAnalysis = [v17 getDateIntervalOfLastAnalysis];
    v20 = getDateIntervalOfLastAnalysis;
    if (getDateIntervalOfLastAnalysis)
    {
      v21 = sub_100002E38(getDateIntervalOfLastAnalysis);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Date interval of last analysis: %{public}@", buf, 0xCu);
      }

      v88 = 0;
      v22 = [v18 getSamplesFromLastAnalysisWithError:&v88];
      v23 = v88;
      v24 = v23;
      if (v23)
      {
        v25 = sub_100002E38(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Error getting samples from last analysis: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v26 = sub_100002E38(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v22 count];
          v28 = [v20 description];
          *buf = 134349314;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Attempting to write %{public}lu samples and analysis interval of %{public}@ to a file", buf, 0x16u);
        }

        v29 = [BABreathingDisturbanceAnalyzerFileHandler filePath:v14 withPrefixFilename:@"input-last-analysis"];
        [BABreathingDisturbanceAnalyzerFileHandler writeSamplesToJsonFile:v22 withDateInterval:v20 withOutputFilePath:v29];

        v31 = sub_100002E38(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v22 count];
          v33 = [v20 description];
          *buf = 134349314;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Running analysis with %{public}lu samples and analysis interval of %{public}@", buf, 0x16u);
        }

        v34 = objc_msgSend_analyzeSamples_dateInterval_(BABreathingDisturbanceAnalyzer);
        v35 = sub_100002E38(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Attempting to write analysis to a file", v91, 2u);
        }

        v36 = *buf;
        *v91 = v36;
        v37 = *&buf[8];
        v92 = v37;
        v93 = buf[16];
        v38 = [BABreathingDisturbanceAnalyzerFileHandler filePath:v14 withPrefixFilename:@"output-last-analysis"];
        if (BABreathingDisturbanceAnalyzerFileHandler)
        {
          [BABreathingDisturbanceAnalyzerFileHandler writeAnalysisToJsonFile:v91 withOutputFilePath:v38];
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = sub_100002E38(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Date interval from last analysis is nil. Skip running force analysis", buf, 2u);
      }
    }
  }

  else
  {
    v20 = sub_100002E38(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_10000C1DC(v20);
    }
  }

  v70 = v73;
  v71 = v14;
  v39 = sub_100002E38(v71);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Attempting to collect Breathing Disturbance Samples", buf, 2u);
  }

  v40 = +[NSDate date];
  v69 = objc_alloc_init(NSDateComponents);
  [v69 setDay:-45];
  v41 = +[NSCalendar currentCalendar];
  v42 = [v41 dateByAddingComponents:v69 toDate:v40 options:0];
  v43 = [HKQuery predicateForSamplesWithStartDate:v42 endDate:v40 options:0];
  v44 = sub_100002E38(v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    predicateFormat = [v43 predicateFormat];
    *buf = 138543362;
    *&buf[4] = predicateFormat;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "datePredicate.predicateFormat: %{public}@", buf, 0xCu);
  }

  v46 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleSleepingBreathingDisturbances];
  v47 = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:1];
  v48 = [HKSampleQuery alloc];
  *v91 = v47;
  v49 = [NSArray arrayWithObjects:v91 count:1];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100001D04;
  v95 = &unk_1000144B8;
  v50 = v42;
  v96 = v50;
  v51 = v40;
  v97 = v51;
  v80 = v71;
  v98 = v80;
  dsema = v70;
  v99 = dsema;
  v52 = [v48 initWithSampleType:v46 predicate:v43 limit:0 sortDescriptors:v49 resultsHandler:buf];

  v53 = objc_opt_new();
  [v52 setIncludeAutomaticTimeZones:1];
  [v53 executeQuery:v52];

  v54 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(dsema, v54);
  if (v74)
  {
    v75 = [NSRegularExpression regularExpressionWithPattern:@".*\\.json" options:0 error:0];
    v72 = [NSURL fileURLWithPath:v80 isDirectory:1];
    [BreathingDisturbanceAnalyzerDiagnosticExtension filesInDir:"filesInDir:matchingPattern:excludingPattern:" matchingPattern:? excludingPattern:?];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v6 = v84 = 0u;
    v55 = [v6 countByEnumeratingWithState:&v83 objects:v90 count:16];
    v56 = v55;
    if (v55)
    {
      v57 = *v84;
      do
      {
        v58 = 0;
        do
        {
          if (*v84 != v57)
          {
            objc_enumerationMutation(v6);
          }

          v59 = *(*(&v83 + 1) + 8 * v58);
          v60 = sub_100002E38(v55);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            path = [v59 path];
            *buf = 138543362;
            *&buf[4] = path;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Returning: %{public}@", buf, 0xCu);
          }

          v55 = [v59 setDeleteOnAttach:&__kCFBooleanTrue];
          v58 = v58 + 1;
        }

        while (v56 != v58);
        v55 = [v6 countByEnumeratingWithState:&v83 objects:v90 count:16];
        v56 = v55;
      }

      while (v55);
    }
  }

  else
  {
    v62 = +[NSFileManager defaultManager];
    v63 = [v62 fileExistsAtPath:v80];

    if (v63)
    {
      v75 = [DEAttachmentItem attachmentWithPath:v80];
      [v75 setShouldCompress:&__kCFBooleanTrue];
      v65 = sub_100002E38([v75 setDeleteOnAttach:&__kCFBooleanTrue]);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [v75 path];
        *buf = 138543362;
        *&buf[4] = path2;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Returning an attachment from loggingPath %{public}@", buf, 0xCu);
      }

      v89 = v75;
      v6 = [NSArray arrayWithObjects:&v89 count:1];
    }

    else
    {
      v67 = sub_100002E38(v64);
      v75 = v67;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v80;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "loggingPath: %{public}@ does not exist. Returning an empty list", buf, 0xCu);
      }

      v6 = &__NSArray0__struct;
    }
  }

LABEL_65:

  return v6;
}

@end