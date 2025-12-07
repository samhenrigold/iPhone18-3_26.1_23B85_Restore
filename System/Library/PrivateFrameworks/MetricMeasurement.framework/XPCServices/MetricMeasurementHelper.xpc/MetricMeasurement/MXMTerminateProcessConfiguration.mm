@interface MXMTerminateProcessConfiguration
+ (id)configWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation MXMTerminateProcessConfiguration

+ (id)configWithDictionary:(id)dictionary error:(id *)error
{
  isKindOfClass = dictionary;
  v7 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v8 = _MXMGetLog(isKindOfClass, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Invalid dictionary received. Unable to create MXMTerminateProcessConfiguration.", buf, 2u);
    }

    if (error)
    {
      v43 = NSLocalizedDescriptionKey;
      v44 = @"terminateProcessConfigDictionary is not a valid dictionary.";
      v9 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *error = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v9];
    }
  }

  v10 = objc_alloc_init(MXMTerminateProcessConfiguration);
  v11 = [v7 valueForKey:@"processName"];

  if (v11)
  {
    v12 = [v7 valueForKey:@"processName"];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      v41 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithFormat:@"%@ is not a string type.", @"processName"];
      v42 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v15];
    }

    v16 = [v7 valueForKey:@"processName"];
    [(MXMTerminateProcessConfiguration *)v10 setProcessName:v16];
  }

  v17 = [v7 valueForKey:@"timeout"];

  if (v17)
  {
    v18 = [v7 valueForKey:@"timeout"];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      v39 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithFormat:@"%@ is not a double type.", @"timeout"];
      v40 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v21];
    }

    v22 = [v7 valueForKey:@"timeout"];
    [v22 doubleValue];
    [(MXMTerminateProcessConfiguration *)v10 setTimeout:?];
  }

  v23 = [v7 valueForKey:@"requiredForTestContinuation"];

  if (v23)
  {
    v24 = [v7 valueForKey:@"requiredForTestContinuation"];
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();

    if ((v25 & 1) == 0)
    {
      v37 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v38 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v27];
    }

    v28 = [v7 valueForKey:@"requiredForTestContinuation"];
    if ([v28 unsignedLongValue])
    {
      v29 = [v7 valueForKey:@"requiredForTestContinuation"];
      unsignedLongValue = [v29 unsignedLongValue];

      if (unsignedLongValue == 1)
      {
LABEL_22:
        v32 = [v7 valueForKey:@"requiredForTestContinuation"];
        -[MXMTerminateProcessConfiguration setRequiredForTestContinuation:](v10, "setRequiredForTestContinuation:", [v32 BOOLValue]);

        goto LABEL_23;
      }

      v35 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v36 = v28;
      v31 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *error = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v31];
    }

    goto LABEL_22;
  }

LABEL_23:

  return v10;
}

@end