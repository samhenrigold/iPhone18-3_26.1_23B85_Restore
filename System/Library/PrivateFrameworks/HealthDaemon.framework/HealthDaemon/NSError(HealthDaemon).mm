@interface NSError(HealthDaemon)
- (BOOL)hd_containsCKDuplicateRecordError;
- (BOOL)hd_containsCKMissingZoneError;
- (double)hd_cloudKitRetryDelay;
- (id)hd_cloudKitErrorRequiringUserAction;
- (id)hd_errorForAnalytics;
- (id)hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:()HealthDaemon;
- (id)hd_errorSurfacingFatalCloudKitPartialFailure;
- (id)hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics;
- (uint64_t)hd_isCloudKitErrorQuotaExceeded;
- (uint64_t)hd_isCorruptionError;
- (uint64_t)hd_isManateeIdentityLossError;
- (uint64_t)hd_shouldPreventCloudKitCacheUpdate;
- (void)hd_enumerateCloudKitPartialErrorsByKeyWithHandler:()HealthDaemon;
- (void)hd_enumerateCloudKitPartialErrorsWithHandler:()HealthDaemon;
@end

@implementation NSError(HealthDaemon)

- (uint64_t)hd_isCloudKitErrorQuotaExceeded
{
  v17 = *MEMORY[0x277D85DE8];
  if ([self hk_isHealthKitError] && objc_msgSend(self, "code") == 711)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:0x283C1FA68];

    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 |= [*(*(&v12 + 1) + 8 * i) code] == 25;
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  domain = [self domain];
  v10 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v10)
  {
    v6 = [self code] == 25;
  }

  return v6 & 1;
}

- (id)hd_cloudKitErrorRequiringUserAction
{
  v41 = *MEMORY[0x277D85DE8];
  if (![self hk_isHealthKitError])
  {
    goto LABEL_16;
  }

  if ([self hk_isHealthKitErrorWithCode:703])
  {
    selfCopy = self;
    goto LABEL_34;
  }

  if ([self code] != 711)
  {
    userInfo = [self userInfo];
    v11 = *MEMORY[0x277CCA7E8];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v12)
    {
      userInfo2 = [self userInfo];
      v4 = [userInfo2 objectForKeyedSubscript:v11];

      hd_cloudKitErrorRequiringUserAction = [v4 hd_cloudKitErrorRequiringUserAction];
      goto LABEL_19;
    }

LABEL_16:
    domain = [self domain];
    v15 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

    if (v15)
    {
      _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain = [(NSError *)self _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain];
      v4 = _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain;
      if (_hd_cloudKitErrorRequiringUserActionFromCKErrorDomain)
      {
        hd_cloudKitErrorRequiringUserAction = _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain;
        goto LABEL_19;
      }

      if ([self code] == 2)
      {
        userInfo3 = [self userInfo];
        v18 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v38 = 2114;
          v39 = v18;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ partial error: %{public}@", buf, 0x16u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        allValues = [v18 allValues];
        v21 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v28;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(allValues);
              }

              v25 = *(*(&v27 + 1) + 8 * i);
              if ([v25 code] != 22)
              {
                selfCopy = [(NSError *)v25 _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain];

                goto LABEL_20;
              }
            }

            v22 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }
      }
    }

LABEL_33:
    selfCopy = 0;
    goto LABEL_34;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  userInfo4 = [self userInfo];
  v4 = [userInfo4 objectForKeyedSubscript:0x283C1FA68];

  v5 = [v4 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v5)
  {
LABEL_13:

    goto LABEL_33;
  }

  v6 = v5;
  v7 = *v32;
LABEL_7:
  v8 = 0;
  while (1)
  {
    if (*v32 != v7)
    {
      objc_enumerationMutation(v4);
    }

    hd_cloudKitErrorRequiringUserAction = [*(*(&v31 + 1) + 8 * v8) hd_cloudKitErrorRequiringUserAction];
    if (hd_cloudKitErrorRequiringUserAction)
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

LABEL_19:
  selfCopy = hd_cloudKitErrorRequiringUserAction;
LABEL_20:

LABEL_34:

  return selfCopy;
}

- (uint64_t)hd_isManateeIdentityLossError
{
  v18 = *MEMORY[0x277D85DE8];
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 112)
  {
    return 1;
  }

  if ([self code] != 2)
  {
    return 0;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v4 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = [v7 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        hd_isManateeIdentityLossError = [v10 hd_isManateeIdentityLossError];

        if (hd_isManateeIdentityLossError)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      v4 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v4;
}

- (uint64_t)hd_shouldPreventCloudKitCacheUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 111)
  {
    return 1;
  }

  if ([self code] != 2)
  {
    return 0;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v4 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = [v7 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        hd_shouldPreventCloudKitCacheUpdate = [v10 hd_shouldPreventCloudKitCacheUpdate];

        if (hd_shouldPreventCloudKitCacheUpdate)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      v4 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v4;
}

- (id)hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:()HealthDaemon
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if ((v6 & 1) == 0)
  {
LABEL_20:
    selfCopy = self;
    goto LABEL_25;
  }

  if ([self code] != 2)
  {
    if (v4[2](v4, self))
    {
      selfCopy = 0;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  userInfo = [self userInfo];
  v8 = *MEMORY[0x277CBBFB0];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134217984;
    v37 = [v9 count];
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%ld partial errors", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [v9 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v13)
  {
    selfCopy = 0;
LABEL_23:

    goto LABEL_24;
  }

  v14 = v13;
  v27 = v8;
  selfCopy2 = self;
  v15 = 0;
  v16 = *v33;
  v29 = 1;
  obj = allKeys;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v33 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v32 + 1) + 8 * i);
      ++v15;
      v19 = v9;
      v20 = [v9 objectForKeyedSubscript:{v18, v27}];
      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v37 = v15;
        v38 = 2114;
        v39 = v20;
        v40 = 2114;
        v41 = v18;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "     %2ld: Partial error: %{public}@, ID: %{public}@", buf, 0x20u);
      }

      if ((v4[2](v4, v20) & 1) == 0)
      {
        [v30 setObject:v20 forKeyedSubscript:v18];
        v29 = 0;
      }

      v9 = v19;
    }

    v14 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  }

  while (v14);

  if ((v29 & 1) == 0)
  {
    userInfo2 = [selfCopy2 userInfo];
    allKeys = [userInfo2 mutableCopy];

    [allKeys setObject:v30 forKeyedSubscript:v27];
    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    domain2 = [selfCopy2 domain];
    selfCopy = [v24 initWithDomain:domain2 code:objc_msgSend(selfCopy2 userInfo:{"code"), allKeys}];

    goto LABEL_23;
  }

  selfCopy = 0;
LABEL_24:

LABEL_25:

  return selfCopy;
}

- (uint64_t)hd_isCorruptionError
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v2 = selfCopy;
  v3 = *MEMORY[0x277CCA7E8];
  while (([v2 hk_isHealthKitErrorWithCode:106] & 1) == 0 && (objc_msgSend(v2, "hd_isDatabaseCorruptionError") & 1) == 0 && (objc_msgSend(v2, "hd_isNotADatabaseError") & 1) == 0)
  {
    userInfo = [v2 userInfo];
    v5 = [userInfo objectForKeyedSubscript:v3];

    v2 = v5;
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (id)hd_errorSurfacingFatalCloudKitPartialFailure
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBBF50];
  if ([self hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:2])
  {
    userInfo = [self userInfo];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [v4 allValues];
    selfCopy = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (selfCopy)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != selfCopy; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 code] != 11 && objc_msgSend(v9, "code") != 22)
          {
            selfCopy = v9;
            goto LABEL_17;
          }
        }

        selfCopy = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (selfCopy)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else if ([self hk_isInternalFailureError] && (objc_msgSend(self, "hk_underlyingErrorWithDomain:", v2), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    selfCopy = [v10 hd_errorSurfacingFatalCloudKitPartialFailure];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBBF50];
  if ([self hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:2])
  {
    userInfo = [self userInfo];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [v4 allValues];
    selfCopy = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (selfCopy)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != selfCopy; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 code] != 22)
          {
            selfCopy = v9;
            goto LABEL_16;
          }
        }

        selfCopy = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (selfCopy)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else if ([self hk_isInternalFailureError] && (objc_msgSend(self, "hk_underlyingErrorWithDomain:", v2), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    selfCopy = [v10 hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)hd_errorForAnalytics
{
  v35[1] = *MEMORY[0x277D85DE8];
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCBDA8]];

  userInfo2 = [self userInfo];
  v5 = userInfo2;
  if (v3)
  {
    v6 = [userInfo2 hk_filter:&__block_literal_global_311];

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    domain = [self domain];
    v9 = [v7 initWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v6}];
    hd_errorForAnalytics = [v9 hd_errorForAnalytics];

    v11 = MEMORY[0x277CCACA8];
    localizedDescription = [hd_errorForAnalytics localizedDescription];
    v13 = [v11 stringWithFormat:@"%@: %@", v3, localizedDescription];

    v34 = *MEMORY[0x277CCA450];
    v35[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    selfCopy = [hd_errorForAnalytics hk_errorByAddingEntriesToUserInfo:v14];

    goto LABEL_25;
  }

  v16 = *MEMORY[0x277CCA7E8];
  v17 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v17)
  {
    selfCopy = self;
    goto LABEL_25;
  }

  if ([self hk_isInternalFailureError])
  {
    selfCopy2 = v17;
  }

  else
  {
    selfCopy2 = self;
  }

  v19 = selfCopy2;
  userInfo3 = [v19 userInfo];
  v21 = [userInfo3 objectForKeyedSubscript:v16];

  if (!v21)
  {
    selfCopy3 = v19;
LABEL_23:
    selfCopy = selfCopy3;
    goto LABEL_24;
  }

  domain2 = [v19 domain];
  if ([domain2 isEqualToString:*MEMORY[0x277CCA050]])
  {
    if ([v19 code] == 256)
    {

LABEL_20:
      selfCopy3 = v21;
      goto LABEL_23;
    }

    code = [v19 code];

    if (code == 512)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  domain3 = [v19 domain];
  v25 = [domain3 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v25)
  {
    selfCopy3 = [v19 hd_errorSurfacingFatalCloudKitPartialFailure];
    goto LABEL_23;
  }

  domain4 = [self domain];
  if (![domain4 isEqualToString:*MEMORY[0x277D10A78]])
  {

    goto LABEL_22;
  }

  code2 = [self code];

  if (code2 != 2)
  {
LABEL_22:
    selfCopy3 = self;
    goto LABEL_23;
  }

  hd_sqliteExtendedErrorCode = [self hd_sqliteExtendedErrorCode];
  v29 = MEMORY[0x277CCA9B8];
  domain5 = [v21 domain];
  userInfo4 = [v21 userInfo];
  selfCopy = [v29 errorWithDomain:domain5 code:hd_sqliteExtendedErrorCode userInfo:userInfo4];

LABEL_24:
LABEL_25:

  return selfCopy;
}

- (void)hd_enumerateCloudKitPartialErrorsWithHandler:()HealthDaemon
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v6)
  {
    if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      allValues = [v8 allValues];
      v10 = [allValues countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          v19 = 0;
          v4[2](v4, v14, &v19);
          if (v19)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [allValues countByEnumeratingWithState:&v15 objects:v20 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      v19 = 0;
      v4[2](v4, self, &v19);
    }
  }
}

- (void)hd_enumerateCloudKitPartialErrorsByKeyWithHandler:()HealthDaemon
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v6)
  {
    if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      allKeys = [v8 allKeys];
      v10 = [allKeys countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          v20 = 0;
          v15 = [v8 objectForKeyedSubscript:v14];
          v4[2](v4, v14, v15, &v20);

          if (v20)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [allKeys countByEnumeratingWithState:&v16 objects:v21 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      v20 = 0;
      v4[2](v4, 0, self, &v20);
    }
  }
}

- (double)hd_cloudKitRetryDelay
{
  v27 = *MEMORY[0x277D85DE8];
  domain = [self domain];
  v3 = *MEMORY[0x277CBBF50];
  v4 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v4 && ([self userInfo], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x277CBBF68]), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v9 = [self hk_isErrorInDomain:v3 code:2];
    userInfo = [self userInfo];
    v11 = userInfo;
    if (v9)
    {
      v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      allValues = [v12 allValues];
      v14 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        v8 = 0.0;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(allValues);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            if ([v18 code] != 11 && objc_msgSend(v18, "code") != 22)
            {
              [v18 hd_cloudKitRetryDelay];
              if (v8 < v19)
              {
                v8 = v19;
              }
            }
          }

          v15 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v15);
      }

      else
      {
        v8 = 0.0;
      }
    }

    else
    {
      v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      if (v12)
      {
        [v12 hd_cloudKitRetryDelay];
        v8 = v20;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  return v8;
}

- (BOOL)hd_containsCKDuplicateRecordError
{
  v21 = *MEMORY[0x277D85DE8];
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 2)
  {
    userInfo = [self userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [v5 allValues];
    v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v16 + 1) + 8 * i) hd_containsCKDuplicateRecordError])
          {

            return 1;
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    return 0;
  }

  if ([self code] != 14)
  {
    return 0;
  }

  userInfo2 = [self userInfo];
  v5 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v5)
  {
    return 0;
  }

  allValues = [v5 domain];
  if (![allValues isEqualToString:*MEMORY[0x277CBC120]] || objc_msgSend(v5, "code") != 2004)
  {
    goto LABEL_18;
  }

  userInfo3 = [v5 userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBF70]];
  v14 = [v13 isEqualToString:@"record to insert already exists"];

  return (v14 & 1) != 0;
}

- (BOOL)hd_containsCKMissingZoneError
{
  v19 = *MEMORY[0x277D85DE8];
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 2)
  {
    userInfo = [self userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allValues = [v5 allValues];
    v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v14 + 1) + 8 * i) hd_containsCKMissingZoneError])
          {

            return 1;
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    return 0;
  }

  if ([self code] != 26)
  {
    return 0;
  }

  userInfo2 = [self userInfo];
  v5 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v5)
  {
    return 0;
  }

  allValues = [v5 domain];
  if (([allValues isEqualToString:*MEMORY[0x277CBC120]] & 1) == 0)
  {
    goto LABEL_19;
  }

  code = [v5 code];

  return code == 2036;
}

@end