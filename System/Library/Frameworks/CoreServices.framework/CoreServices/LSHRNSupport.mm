@interface LSHRNSupport
+ (BOOL)deviceConfiguredForHRN;
+ (id)vendorIDFromVendorName:(id)name seedData:(id)data error:(id *)error;
+ (void)invalidateCache;
+ (void)setActivationRecordOverride:(BOOL)override;
+ (void)setFeatureFlagOverride:(BOOL)override;
@end

@implementation LSHRNSupport

+ (BOOL)deviceConfiguredForHRN
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (MobileActivationLibrary(void)::frameworkLibrary || (MobileActivationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileActivation.framework/MobileActivation", 2)) != 0)
  {
    if (initActivationObserver(void)::once != -1)
    {
      +[LSHRNSupport deviceConfiguredForHRN];
    }

    os_unfair_lock_lock(&hrnLock);
    if ((checkedFeatureFlag & 1) == 0)
    {
      if (featureFlagOverride)
      {
        v2 = featureFlagOverride == 1;
      }

      else
      {
        v2 = _os_feature_enabled_impl();
      }

      isHRN = v2;
      checkedFeatureFlag = 1;
    }

    if (checkedActivationRecord & 1) != 0 || (isHRN)
    {
      goto LABEL_28;
    }

    switch(activationRecordOverride)
    {
      case -1:
        v15 = @"DeviceConfigurationFlags";
        v16 = &unk_1EEF8EFC0;
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        if (v4)
        {
          goto LABEL_22;
        }

        break;
      case 0:
        v14 = 0;
        v6 = softLinkMAECopyActivationRecordWithError;
        if (softLinkMAECopyActivationRecordWithError)
        {
          v4 = softLinkMAECopyActivationRecordWithError(&v14);
          v6 = v14;
        }

        else
        {
          v4 = 0;
        }

        v11 = v6;
        v12 = v11;
        if (!v4)
        {
          v13 = _LSDefaultLog(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[LSHRNSupport deviceConfiguredForHRN];
          }
        }

LABEL_16:
        if (!v4)
        {
          break;
        }

LABEL_22:
        checkedActivationRecord = 1;
        v7 = [v4 objectForKeyedSubscript:{@"DeviceConfigurationFlags", v14}];
        v8 = v7;
        if (v7)
        {
          isHRN = (~[v7 integerValue] & 0x21) == 0;
        }

        else
        {
          v9 = _LSDefaultLog(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            +[LSHRNSupport deviceConfiguredForHRN];
          }
        }

        break;
      case 1:
        v17 = @"DeviceConfigurationFlags";
        v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:33];
        v18[0] = v3;
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

        goto LABEL_16;
    }

LABEL_28:
    os_unfair_lock_unlock(&hrnLock);
    v5 = isHRN;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

+ (void)invalidateCache
{
  os_unfair_lock_lock(&hrnLock);
  checkedFeatureFlag = 0;
  checkedActivationRecord = 0;

  os_unfair_lock_unlock(&hrnLock);
}

+ (void)setActivationRecordOverride:(BOOL)override
{
  v3 = 1;
  if (!override)
  {
    v3 = -1;
  }

  activationRecordOverride = v3;
}

+ (void)setFeatureFlagOverride:(BOOL)override
{
  v3 = 1;
  if (!override)
  {
    v3 = -1;
  }

  featureFlagOverride = v3;
}

+ (id)vendorIDFromVendorName:(id)name seedData:(id)data error:(id *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dataCopy = data;
  v17[0] = 0;
  v17[1] = 0;
  [nameCopy UTF8String];
  strlen([nameCopy UTF8String]);
  Hkdf = CCKDFParametersCreateHkdf();
  if (Hkdf)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CCStatusErrorDomain" code:Hkdf userInfo:0];
    v11 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[LSHRNSupport vendorIDFromVendorName:seedData:error:];
    }
  }

  else
  {
    v12 = dataCopy;
    [dataCopy bytes];
    [dataCopy length];
    if (!CCDeriveKey())
    {
      v14 = 0;
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v17];
      goto LABEL_8;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CCStatusErrorDomain" code:0 userInfo:0];
    v11 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[LSHRNSupport vendorIDFromVendorName:seedData:error:];
    }
  }

  v13 = 0;
  v14 = v10;
LABEL_8:
  if (error && v14)
  {
    v15 = v14;
    *error = v14;
  }

  return v13;
}

@end