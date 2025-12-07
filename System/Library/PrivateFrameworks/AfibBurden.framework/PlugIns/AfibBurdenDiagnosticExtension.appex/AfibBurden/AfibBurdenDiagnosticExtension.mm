@interface AfibBurdenDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation AfibBurdenDiagnosticExtension

- (id)attachmentList
{
  v3 = ab_get_framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attachmentList called: calling attachmentsForParameters with empty dictionary", v6, 2u);
  }

  v4 = [(AfibBurdenDiagnosticExtension *)self attachmentsForParameters:&__NSDictionary0__struct];

  return v4;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = ab_get_framework_log(parametersCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", buf, 0xCu);
  }

  v5 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (([v5 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.TapToRadar"))
  {
    v6 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    bOOLValue = [v6 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v34 = ab_get_framework_log(v8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v35 = "no consent provided. skipping attachments.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
      }

LABEL_23:

      v33 = &__NSArray0__struct;
      goto LABEL_28;
    }
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:@"/Library/Preferences/Logging/Subsystems/com.apple.Health.AFibBurden.plist"];

  if ((v10 & 1) == 0)
  {
    v34 = ab_get_framework_log(v11);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "no logging profile installed. skipping force analysis";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  out_token = -1;
  v12 = notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
  if (out_token == -1)
  {
    v26 = ab_get_framework_log(v12);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100002E40(v26);
    }

    v33 = &__NSArray0__struct;
  }

  else
  {
    v13 = dispatch_semaphore_create(0);
    v14 = objc_alloc_init(HKHealthStore);
    v15 = [[HKHRAFibBurdenControl alloc] initWithHealthStore:v14];
    v16 = [[ABFeatureStatusDiagnosticManager alloc] initWithLoggingDirectoryPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" healthStore:v14];
    v48[0] = v16;
    v17 = [[ABSampleDiagnosticManager alloc] initWithLoggingDirectoryPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" healthStore:v14 numberOfWeeks:10];
    v48[1] = v17;
    v18 = [[ABSevenDayAnalysisBreadcrumbDiagnosticManager alloc] initWithLoggingDirectoryPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" control:v15];
    v48[2] = v18;
    v19 = [NSArray arrayWithObjects:v48 count:3];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v41 + 1) + 8 * i) performDiagnosticsAndWriteToFile];
        }

        v22 = [v20 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v22);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100002A44;
    v37[3] = &unk_100008328;
    v40 = out_token;
    v25 = v15;
    v38 = v25;
    v26 = v13;
    v39 = v26;
    [v25 deleteAllTachogramClassificationsWithCompletion:v37];
    v27 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v26, v27);
    notify_cancel(out_token);
    v28 = +[NSFileManager defaultManager];
    v29 = [v28 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" error:0];

    v31 = ab_get_framework_log(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v29;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "diagnostics generated files : %{public}@", buf, 0xCu);
    }

    v32 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics"];
    [v32 setShouldCompress:&__kCFBooleanTrue];
    [v32 setDeleteOnAttach:&__kCFBooleanTrue];
    v46 = v32;
    v33 = [NSArray arrayWithObjects:&v46 count:1];
  }

LABEL_28:

  return v33;
}

@end