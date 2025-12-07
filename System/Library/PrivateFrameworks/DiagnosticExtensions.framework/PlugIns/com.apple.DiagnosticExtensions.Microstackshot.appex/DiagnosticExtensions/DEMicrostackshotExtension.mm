@interface DEMicrostackshotExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DEMicrostackshotExtension

- (id)attachmentList
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  [v3 setObject:v4 forKeyedSubscript:@"endDate"];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  [v3 setObject:v5 forKeyedSubscript:@"startDate"];

  v6 = PLQueryRegistered();
  v7 = [v6 objectForKeyedSubscript:@"microstackshots"];
  NSLog(@"[DEMicrostackshotExtension] attachmentList: %@\n", v7);
  v9 = PowerMSSLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "attachmentList: %@", buf, 0xCu);
  }

  v10 = [DEAttachmentItem attachmentWithPath:v7];
  [v2 addObject:v10];

  return v2;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = PowerMSSLog(parametersCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "parameters: %@", buf, 0xCu);
  }

  v5 = [parametersCopy objectForKey:@"from"];

  if (v5)
  {
    v5 = [parametersCopy objectForKeyedSubscript:@"from"];
  }

  v6 = [parametersCopy objectForKey:@"to"];

  if (v6)
  {
    v6 = [parametersCopy objectForKeyedSubscript:@"to"];
  }

  if (v5 && !v6)
  {
    v7 = [NSDate dateWithTimeInterval:v5 sinceDate:86400.0];
LABEL_10:
    v6 = v7;
    goto LABEL_15;
  }

  if (v5 || !v6)
  {
    if (!(v5 | v6))
    {
      v5 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
      v7 = [NSDate dateWithTimeIntervalSinceNow:0.0];
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [NSDate dateWithTimeInterval:v6 sinceDate:-86400.0];
  }

LABEL_15:
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:v6 forKeyedSubscript:@"endDate"];
  [v8 setObject:v5 forKeyedSubscript:@"startDate"];
  v9 = PLQueryRegistered();
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"microstackshots"];
    NSLog(@"[DEMicrostackshotExtension] attachmentsForParameters(parameters=%@): %@\n", parametersCopy, v11);
    v13 = PowerMSSLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100001184(v11, v13);
    }

    v14 = +[NSFileManager defaultManager];
    v15 = [v14 fileExistsAtPath:v11];
    if (v15)
    {
      v16 = [DEAttachmentItem attachmentWithPath:v11];
      [v16 setDeleteOnAttach:&__kCFBooleanTrue];
      [v16 setShouldCompress:&__kCFBooleanTrue];
      v19 = v16;
      v17 = [NSArray arrayWithObjects:&v19 count:1];
    }

    else
    {
      v16 = PowerMSSLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000011FC(v16);
      }

      v17 = &__NSArray0__struct;
    }
  }

  else
  {
    v11 = PowerMSSLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100001240(v11);
    }

    v17 = &__NSArray0__struct;
  }

  return v17;
}

@end