@interface SecItemRateLimit
+ (id)instance;
+ (void)resetStaticRateLimit;
- (BOOL)consumeTokenFromBucket:(BOOL)bucket;
- (BOOL)isModifyingAPICallWithinLimits;
- (BOOL)isReadOnlyAPICallWithinLimits;
- (BOOL)shouldCountAPICalls;
- (SecItemRateLimit)init;
- (void)forceEnabled:(BOOL)enabled;
@end

@implementation SecItemRateLimit

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_9256);
  }

  v3 = ratelimit;

  return v3;
}

- (BOOL)isReadOnlyAPICallWithinLimits
{
  v2 = [(SecItemRateLimit *)self consumeTokenFromBucket:0];
  if (!v2)
  {
    v3 = secLogObjForScope("secitemratelimit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Readonly API rate exceeded", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)shouldCountAPICalls
{
  if (shouldCountAPICalls_shouldCountToken != -1)
  {
    dispatch_once(&shouldCountAPICalls_shouldCountToken, &__block_literal_global_7);
  }

  return shouldCountAPICalls_shouldCount;
}

- (BOOL)isModifyingAPICallWithinLimits
{
  v2 = [(SecItemRateLimit *)self consumeTokenFromBucket:1];
  if (!v2)
  {
    v3 = secLogObjForScope("secitemratelimit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Modifying API rate exceeded", v5, 2u);
    }
  }

  return v2;
}

uint64_t __28__SecItemRateLimit_instance__block_invoke()
{
  ratelimit = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SecItemRateLimit)init
{
  v10.receiver = self;
  v10.super_class = SecItemRateLimit;
  v2 = [(SecItemRateLimit *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_roCapacity = 0x1900000019;
    *&v2->_roRate = xmmword_18895E180;
    roBucket = v2->_roBucket;
    v2->_roBucket = 0;

    rwBucket = v3->_rwBucket;
    v3->_rwBucket = 0;

    v3->_forceEnabled = 0;
    v3->_limitMultiplier = 5.0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.keychain.secitemratelimit.dataqueue", v6);
    dataQueue = v3->_dataQueue;
    v3->_dataQueue = v7;
  }

  return v3;
}

void __39__SecItemRateLimit_shouldCountAPICalls__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_variant_allows_internal_security_policies())
  {
    if (gSecurityd)
    {
      v0 = secLogObjForScope("secitemratelimit");
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v1 = "gSecurityd non-nil, disabling SIRL for testing";
LABEL_7:
        _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, v1, &v14, 2u);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v0 = secLogObjForScope("secitemratelimit");
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      LOWORD(v14) = 0;
      v1 = "SIRL disabled via feature flag";
      goto LABEL_7;
    }

    v2 = SecTaskCreateFromSelf(0);
    v0 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1EFAAC658];
    if (!v2)
    {
      v11 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "secitemratelimit: unable to get task from self, disabling SIRL", &v14, 2u);
      }

      goto LABEL_8;
    }

    v14 = 0;
    v3 = csops_task(v2, 0, &v14, 4);
    v4 = v14;
    if (v3)
    {
      v4 = 0;
    }

    if ((v4 & 0xC000001) == 0x4000001 || (v4 & 0x1C000000) == 0x14000000)
    {
      v5 = SecTaskCopyIdentifier(v2, 11, 0);
      if (v5)
      {
        v6 = v5;
        [v0 addObjectsFromArray:&unk_1EFAAC670];
        v7 = [v0 containsObject:v6];
        v8 = secLogObjForScope("secitemratelimit");
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          if (v9)
          {
            v14 = 138412290;
            v15 = v6;
            _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "%@ exempt from SIRL", &v14, 0xCu);
          }
        }

        else
        {
          if (v9)
          {
            v14 = 138412290;
            v15 = v6;
            _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "valid/debugged platform binary %@ on internal release, enabling SIRL", &v14, 0xCu);
          }

          shouldCountAPICalls_shouldCount = 1;
        }

        CFRelease(v2);
        v10 = v6;
        goto LABEL_26;
      }

      v12 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v13 = "secitemratelimit: unable to get signing identifier, disabling SIRL";
        goto LABEL_34;
      }
    }

    else
    {
      v12 = secLogObjForScope("secitemratelimit");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v13 = "Not valid/debugged platform binary, disabling SIRL";
LABEL_34:
        _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 2u);
      }
    }

    v10 = v2;
LABEL_26:
    CFRelease(v10);
    goto LABEL_8;
  }

  v0 = secLogObjForScope("secitemratelimit");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v1 = "Not internal release, disabling SIRL";
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)consumeTokenFromBucket:(BOOL)bucket
{
  if ([(SecItemRateLimit *)self shouldCountAPICalls]|| self->_forceEnabled)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SecItemRateLimit_consumeTokenFromBucket___block_invoke;
    block[3] = &unk_1E70DDDD8;
    bucketCopy = bucket;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(dataQueue, block);
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __43__SecItemRateLimit_consumeTokenFromBucket___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = 28;
  }

  else
  {
    v3 = 24;
  }

  if (*(a1 + 48))
  {
    v4 = 40;
  }

  else
  {
    v4 = 32;
  }

  if (*(a1 + 48))
  {
    v5 = 64;
  }

  else
  {
    v5 = 56;
  }

  v13 = [MEMORY[0x1E695DF00] now];
  v6 = [v13 dateByAddingTimeInterval:-1.0 / *(v2 + v4) * *(v2 + v3)];
  v7 = *(v2 + v5);
  if (!v7 || ([v7 timeIntervalSinceDate:v6], v8 < 0.0))
  {
    objc_storeStrong((v2 + v5), v6);
  }

  v9 = [*(v2 + v5) dateByAddingTimeInterval:1.0 / *(v2 + v4)];
  v10 = *(v2 + v5);
  *(v2 + v5) = v9;

  [*(v2 + v5) timeIntervalSinceDate:v13];
  *(*(*(a1 + 40) + 8) + 24) = v11 <= 0.0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v12 = *(v2 + v5);
    *(v2 + v5) = 0;

    *(v2 + v3) = (*(*(a1 + 32) + 48) * *(v2 + v3));
    *(v2 + v4) = *(*(a1 + 32) + 48) * *(v2 + v4);
  }
}

- (void)forceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x1E69E9840];
  self->_forceEnabled = enabled;
  v5 = secLogObjForScope("secitemratelimit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v6 = "F";
    }

    else
    {
      v6 = "Not f";
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 1024;
    isEnabled = [(SecItemRateLimit *)self isEnabled];
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "%sorcing SIRL to be enabled (effective: %i)", &v7, 0x12u);
  }
}

+ (void)resetStaticRateLimit
{
  ratelimit = objc_opt_new();

  MEMORY[0x1EEE66BB8]();
}

@end