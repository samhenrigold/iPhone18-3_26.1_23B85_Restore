@interface NSError(HomeKitCKError)
- (id)hmd_actualCKErrorFromCKErrorPartialFailure:()HomeKitCKError;
- (id)hmd_conciseCKError;
- (id)hmd_convertedCKError;
- (id)hmd_hmErrorFromCKError;
- (id)hmd_retryAfterCKError;
- (uint64_t)hmd_isCKError;
- (uint64_t)hmd_isNonRecoverableCKError;
- (uint64_t)hmd_isUnderlyingCKError;
- (void)hmd_isRecordConflictCKError;
@end

@implementation NSError(HomeKitCKError)

- (void)hmd_isRecordConflictCKError
{
  result = [self hmd_isCKError];
  if (result)
  {
    code = [self code];
    return (code == 14 || code == 11);
  }

  return result;
}

- (id)hmd_retryAfterCKError
{
  v22 = *MEMORY[0x277D85DE8];
  if ([self hmd_isCKError] & 1) != 0 || (objc_msgSend(self, "hmd_isUnderlyingCKError"))
  {
    if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      allValues = [v3 allValues];
      v5 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v18;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v18 != v7)
            {
              objc_enumerationMutation(allValues);
            }

            hmd_retryAfterCKError = [*(*(&v17 + 1) + 8 * i) hmd_retryAfterCKError];
            if (hmd_retryAfterCKError)
            {
              v15 = hmd_retryAfterCKError;

              goto LABEL_22;
            }
          }

          v6 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    userInfo2 = [self userInfo];
    hmd_retryAfterCKError2 = [userInfo2 hmf_numberForKey:*MEMORY[0x277CBBF68]];
  }

  else
  {
    userInfo3 = [self userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    userInfo2 = v14;

    if (!userInfo2)
    {
      v15 = 0;
      goto LABEL_20;
    }

    hmd_retryAfterCKError2 = [userInfo2 hmd_retryAfterCKError];
  }

  v15 = hmd_retryAfterCKError2;
LABEL_20:

LABEL_22:

  return v15;
}

- (id)hmd_convertedCKError
{
  if ([self hmd_isCKError])
  {
    selfCopy = self;
  }

  else
  {
    userInfo = [self userInfo];
    v4 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    if (v4 && [v4 hmd_isCKError])
    {
      selfCopy = v4;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (uint64_t)hmd_isNonRecoverableCKError
{
  result = [self hmd_isCKError];
  if (result)
  {
    code = [self code];
    result = 1;
    if (code > 0x12 || ((1 << code) & 0x4932A) == 0)
    {
      return code == 131;
    }
  }

  return result;
}

- (uint64_t)hmd_isUnderlyingCKError
{
  domain = [self domain];
  v2 = [domain isEqualToString:*MEMORY[0x277CBC120]];

  return v2;
}

- (uint64_t)hmd_isCKError
{
  domain = [self domain];
  v2 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  return v2;
}

- (id)hmd_hmErrorFromCKError
{
  if (([self hmd_isCKError] & 1) == 0)
  {
    selfCopy = self;
    goto LABEL_10;
  }

  code = [self code];
  if ((code - 3) >= 2)
  {
    if (code == 9)
    {
      v3 = 1010;
      goto LABEL_9;
    }

    if (code != 23)
    {
      v3 = 52;
      goto LABEL_9;
    }
  }

  v3 = 78;
LABEL_9:
  selfCopy = [MEMORY[0x277CCA9B8] hmErrorWithCode:v3 description:0 reason:0 suggestion:0 underlyingError:self];
LABEL_10:

  return selfCopy;
}

- (id)hmd_conciseCKError
{
  v22 = *MEMORY[0x277D85DE8];
  if ([self hmd_isCKError])
  {
    userInfo = [self userInfo];
    v3 = [userInfo mutableCopy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    userInfo2 = [self userInfo];
    allKeys = [userInfo2 allKeys];

    v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if (([ckErrorUserInfoKeys containsObject:v10] & 1) == 0)
          {
            [v3 removeObjectForKey:v10];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v11 = MEMORY[0x277CCA9B8];
    domain = [self domain];
    code = [self code];
    v14 = objc_msgSend_copy(v3);
    selfCopy = [v11 errorWithDomain:domain code:code userInfo:v14];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)hmd_actualCKErrorFromCKErrorPartialFailure:()HomeKitCKError
{
  v4 = a3;
  if (![self hmd_isCKError] || objc_msgSend(self, "code") != 2 || (objc_msgSend(self, "userInfo"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", *MEMORY[0x277CBBFB0]), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v4), selfCopy = objc_claimAutoreleasedReturnValue(), v6, v5, !selfCopy))
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end