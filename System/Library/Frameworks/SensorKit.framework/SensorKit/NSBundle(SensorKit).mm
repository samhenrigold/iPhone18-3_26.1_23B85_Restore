@interface NSBundle(SensorKit)
+ (uint64_t)_sr_validateRequiredFieldsForBundleIdentifier:()SensorKit sensors:error:;
- (uint64_t)_sr_validateRequiredFieldsForSensors:()SensorKit error:;
@end

@implementation NSBundle(SensorKit)

+ (uint64_t)_sr_validateRequiredFieldsForBundleIdentifier:()SensorKit sensors:error:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];
  objc_opt_self();
  v9 = [(NSBundle *)MEMORY[0x1E696AAE8] sk_bundleWithIdentifier:a3 partnerAppDirectoryURL:v8];
  if (v9)
  {

    return [v9 _sr_validateRequiredFieldsForSensors:a4 error:a5];
  }

  else
  {
    if (a5)
    {
      v11 = *MEMORY[0x1E696A578];
      v12[0] = @"Bundle couldn't be found";
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:20480 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
    }

    return 0;
  }
}

- (uint64_t)_sr_validateRequiredFieldsForSensors:()SensorKit error:
{
  v28 = *MEMORY[0x1E69E9840];
  if (![self sk_usageDescription])
  {
    if (a4)
    {
      v16 = @"NSSensorKitUsageDescription";
      v17 = 20481;
LABEL_21:
      v18 = [SRError invalidInfoPlistErrorWithMissingKey:v16 code:v17];
      result = 0;
      *a4 = v18;
      return result;
    }

    return 0;
  }

  if (![self sk_privacyURL])
  {
    if (a4)
    {
      v16 = @"NSSensorKitPrivacyPolicyURL";
      v17 = 20482;
      goto LABEL_21;
    }

    return 0;
  }

  if (![self objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      v16 = @"NSSensorKitUsageDetail";
      v17 = 20483;
      goto LABEL_21;
    }

    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = *v22;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(a3);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      v13 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v11), "infoPlistAuthorizationCategory"}];
      if (!v13)
      {
        if (_MergedGlobals_6 != -1)
        {
          dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
        }

        v19 = qword_1EE02AB38;
        if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v11;
          _os_log_error_impl(&dword_1C914D000, v19, OS_LOG_TYPE_ERROR, "Failed to find Info.plist authorization category key for %{public}@", buf, 0xCu);
          if (!a4)
          {
            goto LABEL_31;
          }
        }

        else if (!a4)
        {
          goto LABEL_31;
        }

        v20 = [SRError errorWithCode:8194];
LABEL_30:
        *a4 = v20;
        goto LABEL_31;
      }

      v14 = v13;
      if (![objc_msgSend(self "sk_perCategoryDetailDescription")])
      {
        if (a4)
        {
          v20 = [SRError invalidInfoPlistErrorWithMissingKey:v14 code:20484];
          goto LABEL_30;
        }

LABEL_31:
        objc_autoreleasePoolPop(v12);
        return 0;
      }

      objc_autoreleasePoolPop(v12);
    }

    v8 = [a3 countByEnumeratingWithState:&v21 objects:v27 count:16];
    result = 1;
    if (v8)
    {
      continue;
    }

    return result;
  }
}

@end