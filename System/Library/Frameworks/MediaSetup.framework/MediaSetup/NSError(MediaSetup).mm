@interface NSError(MediaSetup)
- (id)translateCKErrorToMSError;
- (uint64_t)CKErrorHasErrorCode:()MediaSetup;
- (uint64_t)CKErrorHasUnderlyingErrorCode:()MediaSetup;
- (uint64_t)isErrorFatal;
@end

@implementation NSError(MediaSetup)

- (id)translateCKErrorToMSError
{
  v44[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_21;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if ((v3 & 1) == 0)
  {
    goto LABEL_21;
  }

  code = [self code];
  if (code > 20)
  {
    if (code <= 109)
    {
      if (code == 21)
      {
        v21 = MEMORY[0x277CCA9B8];
        v31 = @"MSUserInfoErrorStringKey";
        v32 = @"CloudKit Change Token Expired";
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v7 = v21;
        v8 = 7;
        goto LABEL_27;
      }

      if (code == 23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      switch(code)
      {
        case 'n':
          v25 = MEMORY[0x277CCA9B8];
          v37 = @"MSUserInfoErrorStringKey";
          v38 = @"CloudKit Manatee Unavailable";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v7 = v25;
          v8 = 4;
          goto LABEL_27;
        case 'o':
          v22 = MEMORY[0x277CCA9B8];
          v27 = @"MSUserInfoErrorStringKey";
          v28 = @"CloudKit Unsynched Keychain error, Please try again after a while";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v7 = v22;
          v8 = 9;
          goto LABEL_27;
        case 'p':
          v9 = MEMORY[0x277CCA9B8];
          v35 = @"MSUserInfoErrorStringKey";
          v36 = @"CloudKit Manatee Missing Identity";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v7 = v9;
          v8 = 5;
          goto LABEL_27;
      }
    }

LABEL_21:
    selfCopy = self;
    goto LABEL_28;
  }

  if (code <= 5)
  {
    if (code == 1)
    {
      v23 = MEMORY[0x277CCA9B8];
      v29 = @"MSUserInfoErrorStringKey";
      v30 = @"Cannot recover from CKInternalError, Please file a radar";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v7 = v23;
      v8 = 8;
      goto LABEL_27;
    }

    if (code == 2)
    {
      userInfo = [self userInfo];
      v13 = [userInfo objectForKey:*MEMORY[0x277CBBFB0]];

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"CloudKit Partial Failure Error for %lu records", objc_msgSend(v13, "count")];
      v19 = MEMORY[0x277CCA9B8];
      v41 = @"MSUserInfoErrorStringKey";
      v42 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      selfCopy = [v19 errorWithDomain:@"com.apple.mediasetup.cloudkit.errorDomain" code:2 userInfo:v20];

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ((code - 6) < 2)
  {
LABEL_16:
    v10 = MEMORY[0x277CCACA8];
    userInfo2 = [self userInfo];
    v12 = [userInfo2 objectForKey:*MEMORY[0x277CBBF68]];
    v13 = [v10 stringWithFormat:@"CloudKit Throttled Error: Retry after - %@", v12];

    v14 = MEMORY[0x277CCA9B8];
    v33 = @"MSUserInfoErrorStringKey";
    v34 = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    selfCopy = [v14 errorWithDomain:@"com.apple.mediasetup.cloudkit.errorDomain" code:6 userInfo:v15];

LABEL_20:
    goto LABEL_28;
  }

  if (code == 11)
  {
    v24 = MEMORY[0x277CCA9B8];
    v43 = @"MSUserInfoErrorStringKey";
    v44[0] = @"CloudKit Unknown Item";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v7 = v24;
    v8 = 1;
    goto LABEL_27;
  }

  if (code != 14)
  {
    goto LABEL_21;
  }

  v5 = MEMORY[0x277CCA9B8];
  v39 = @"MSUserInfoErrorStringKey";
  v40 = @"CloudKit Server Record Changed";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v7 = v5;
  v8 = 3;
LABEL_27:
  selfCopy = [v7 errorWithDomain:@"com.apple.mediasetup.cloudkit.errorDomain" code:v8 userInfo:v6];

LABEL_28:

  return selfCopy;
}

- (uint64_t)CKErrorHasErrorCode:()MediaSetup
{
  if (CKErrorIsCode())
  {

    return [self CKErrorHasUnderlyingErrorCode:a3];
  }

  else
  {
    domain = [self domain];
    if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
    {
      code = [self code];

      if (code == a3)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }
}

- (uint64_t)CKErrorHasUnderlyingErrorCode:()MediaSetup
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self || !CKErrorIsCode())
  {
    return 0;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CBBFB0]];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = *MEMORY[0x277CBBF50];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        domain = [v13 domain];
        if ([domain isEqualToString:v11])
        {
          code = [v13 code];

          if (code == a3)
          {
            v16 = 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (uint64_t)isErrorFatal
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"com.apple.mediasetup.cloudkit.errorDomain"];

  if (v3 && [self code] == 10)
  {
    return 1;
  }

  domain2 = [self domain];
  v5 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

  if (v5)
  {
    v6 = [self code] - 4097;
    if (v6 <= 4 && ((1 << v6) & 0x15) != 0)
    {
      return 1;
    }
  }

  domain3 = [self domain];
  v9 = [domain3 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v9)
  {
    return 0;
  }

  code = [self code];
  result = 1;
  if ((code > 0x17 || ((1 << code) & 0x80C0C0) == 0) && code - 110 >= 3)
  {
    return 0;
  }

  return result;
}

@end