@interface NNChangeSerializer
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
@end

@implementation NNChangeSerializer

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = changeCopy;
    v7 = +[NSMutableDictionary dictionary];
    resultIdentifier = [result resultIdentifier];
    if (resultIdentifier)
    {
      [v7 setObject:resultIdentifier forKeyedSubscript:@"identifier"];
    }

    requestDate = [result requestDate];
    if (requestDate)
    {
      [v7 setObject:requestDate forKeyedSubscript:@"date"];
    }

    v10 = [v7 copy];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v10 = 0;
      goto LABEL_16;
    }

    result = [changeCopy result];
    v10 = NNHeadlineSyncableResultFromResult(result, 1);
  }

  if (v5 && v10)
  {
    v21 = v5;
    v22 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v18 = 0;
    v13 = [NSPropertyListSerialization dataWithPropertyList:v12 format:200 options:0 error:&v18];
    v14 = v18;

    if (!v13)
    {
      v16 = NNSetupCompanionSyncLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100008EF8(v14, v16);
      }
    }

    goto LABEL_19;
  }

LABEL_16:
  v14 = NNSetupCompanionSyncLog(isKindOfClass);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = changeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Couldn't make data for change %@", buf, 0xCu);
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  v34 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v34];
  v7 = v34;
  v8 = v7;
  if (!v6)
  {
    v9 = NNSetupCompanionSyncLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100008F70(dataCopy, v8, v9);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v6;
    v12 = [v11 count];
    if (v12 != 1)
    {
      firstObject = NNSetupCompanionSyncLog(v12);
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "Expected a dictionary, got a %@", buf, 0xCu);
      }

      goto LABEL_23;
    }

    allKeys = [v11 allKeys];
    firstObject = [allKeys firstObject];

    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if ((v15 & 1) == 0)
    {
      v24 = NNSetupCompanionSyncLog(v15);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = firstObject;
        v37 = 2112;
        typeCopy = v11;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Invalid objects for ClassName %@ and Dictionary %@", buf, 0x16u);
      }

      goto LABEL_23;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [firstObject isEqualToString:v17];

    if (v18)
    {
      allValues = [v11 allValues];
      firstObject2 = [allValues firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v11 objectForKeyedSubscript:@"identifier"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v21 = 0;
        }

        v22 = [v11 objectForKeyedSubscript:@"date"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v22 = 0;
        }

        v23 = [[NNHeadlineRequestChange alloc] initWithResultIdentifier:v21 requestDate:v22];

        goto LABEL_35;
      }
    }

    else
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [firstObject isEqualToString:v27];

      if (!v28)
      {
        goto LABEL_23;
      }

      allValues2 = [v11 allValues];
      firstObject2 = [allValues2 firstObject];

      objc_opt_class();
      v30 = objc_opt_isKindOfClass();
      if (v30)
      {
        v23 = [[NNHeadlineResultChange alloc] initWithHeadlineResult:firstObject2];
        goto LABEL_35;
      }

      v31 = NNSetupCompanionSyncLog(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = firstObject2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Why does this change have an invalid result %@?", buf, 0xCu);
      }
    }

    v23 = 0;
LABEL_35:

    if (!v23)
    {
      goto LABEL_24;
    }

    v32 = [(NNHeadlineRequestChange *)v23 conformsToProtocol:&OBJC_PROTOCOL___SYChange];
    if (v32)
    {
      goto LABEL_24;
    }

    v33 = NNSetupCompanionSyncLog(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Invalid change %@", buf, 0xCu);
    }

LABEL_23:
    v23 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v11 = NNSetupCompanionSyncLog(isKindOfClass);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v36 = dataCopy;
    v37 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Expected a data object, got a %@ with type %ld", buf, 0x16u);
  }

  v23 = 0;
LABEL_25:

  return v23;
}

@end