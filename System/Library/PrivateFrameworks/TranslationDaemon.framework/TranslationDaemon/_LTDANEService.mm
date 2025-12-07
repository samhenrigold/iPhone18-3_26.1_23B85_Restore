@interface _LTDANEService
+ (int64_t)capability;
+ (int64_t)capabilityForSubType:(id)type error:(id *)error;
+ (void)initialize;
@end

@implementation _LTDANEService

+ (void)initialize
{
  _dataProvider = objc_opt_class();
  if (_LTIsInternalInstall())
  {
    v2 = _dataProvider;

    [v2 logCapabilities];
  }
}

+ (int64_t)capability
{
  if (![objc_msgSend(self "dataProvider")])
  {
    return 0;
  }

  v3 = [objc_msgSend(self "dataProvider")];
  v7 = 0;
  v4 = [self capabilityForSubType:v3 error:&v7];
  v5 = v7;

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (int64_t)capabilityForSubType:(id)type error:(id *)error
{
  typeCopy = type;
  if ([typeCopy length])
  {
    v6 = [_LTDConfigurationService aneConfigurationWithError:0];
    v7 = [v6 capabilityForSubType:typeCopy];
    if (v7)
    {
      v8 = v7;
LABEL_4:
      v9 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v13 = [typeCopy substringToIndex:1];
    subTypes = [v6 subTypes];
    v15 = [subTypes count];
    if (v15 - 1 < 0)
    {
LABEL_12:
    }

    else
    {
      v16 = v15;
      while (1)
      {
        v17 = [subTypes objectAtIndex:--v16];
        if ([v17 hasPrefix:v13])
        {
          break;
        }

        if (v16 <= 0)
        {
          goto LABEL_12;
        }
      }

      v8 = [v6 capabilityForSubType:v17];

      if (v8)
      {
        goto LABEL_4;
      }
    }

    v9 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:1 description:@"Unhandled ANE subtype" userInfo:0];
    v19 = _LTOSLogAssets(v9, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[_LTDANEService capabilityForSubType:error:];
      if (error)
      {
        goto LABEL_15;
      }
    }

    else if (error)
    {
LABEL_15:
      v20 = v9;
      v8 = 0;
      *error = v9;
      goto LABEL_22;
    }

    v8 = 0;
    goto LABEL_22;
  }

  v9 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:1 description:@"Unhandled ANE subtype" userInfo:0];
  v11 = _LTOSLogAssets(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[_LTDANEService capabilityForSubType:error:];
    if (error)
    {
      goto LABEL_7;
    }

LABEL_19:
    v8 = 0;
    goto LABEL_23;
  }

  if (!error)
  {
    goto LABEL_19;
  }

LABEL_7:
  v12 = v9;
  v8 = 0;
  *error = v9;
LABEL_23:

  return v8;
}

@end