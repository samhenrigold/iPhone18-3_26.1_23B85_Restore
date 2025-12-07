@interface MXMUncacheConfiguration
+ (id)configWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation MXMUncacheConfiguration

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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Invalid dictionary received. Unable to create MXMUncacheConfiguration.", buf, 2u);
    }

    if (error)
    {
      v36 = NSLocalizedDescriptionKey;
      v37 = @"uncacheConfigDictionary is not a valid dictionary.";
      v9 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *error = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v9];
    }
  }

  v10 = objc_alloc_init(MXMUncacheConfiguration);
  v11 = [v7 valueForKey:@"filepath"];

  if (v11)
  {
    v12 = [v7 valueForKey:@"filepath"];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      v34 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithFormat:@"%@ is not a string type.", @"filepath"];
      v35 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v15];
    }

    v16 = [v7 valueForKey:@"filepath"];
    v17 = [v16 copy];
    [(MXMUncacheConfiguration *)v10 setFilepath:v17];
  }

  v18 = [v7 valueForKey:@"requiredForTestContinuation"];

  if (v18)
  {
    v19 = [v7 valueForKey:@"requiredForTestContinuation"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if ((v20 & 1) == 0)
    {
      v32 = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v33 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *error = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v22];
    }

    v23 = [v7 valueForKey:@"requiredForTestContinuation"];
    if ([v23 unsignedLongValue])
    {
      v24 = [v7 valueForKey:@"requiredForTestContinuation"];
      unsignedLongValue = [v24 unsignedLongValue];

      if (unsignedLongValue == 1)
      {
LABEL_18:
        v27 = [v7 valueForKey:@"requiredForTestContinuation"];
        -[MXMUncacheConfiguration setRequiredForTestContinuation:](v10, "setRequiredForTestContinuation:", [v27 BOOLValue]);

        goto LABEL_19;
      }

      v30 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v31 = v23;
      v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *error = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v26];
    }

    goto LABEL_18;
  }

LABEL_19:

  return v10;
}

@end