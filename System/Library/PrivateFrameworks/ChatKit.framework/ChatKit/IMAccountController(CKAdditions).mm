@interface IMAccountController(CKAdditions)
- (id)__ck_bestAccountForAddress:()CKAdditions;
- (id)__ck_bestAccountForAddresses:()CKAdditions;
- (id)__ck_bestAccountForAddresses:()CKAdditions withFallbackService:;
- (id)__ck_defaultAccountForService:()CKAdditions;
- (id)fallbackServiceForAddresses:()CKAdditions;
@end

@implementation IMAccountController(CKAdditions)

- (id)__ck_defaultAccountForService:()CKAdditions
{
  v3 = a3;
  if (CKIsRunningUITests(v3, v4))
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    simulatedChats = [mEMORY[0x1E69A5AF8] simulatedChats];
    firstObject = [simulatedChats firstObject];

    account = [firstObject account];
  }

  else
  {
    account = IMPreferredAccountForService();
  }

  return account;
}

- (id)__ck_bestAccountForAddresses:()CKAdditions
{
  v4 = a3;
  v5 = [self fallbackServiceForAddresses:v4];
  v6 = [self __ck_bestAccountForAddresses:v4 withFallbackService:v5];

  return v6;
}

- (id)fallbackServiceForAddresses:()CKAdditions
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectAtIndexedSubscript:0];
      __im_isChatBot = [v5 __im_isChatBot];

      if (__im_isChatBot)
      {
        rcsService = [MEMORY[0x1E69A5CA0] rcsService];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  rcsService = [MEMORY[0x1E69A5CA0] iMessageService];
LABEL_7:
  v8 = rcsService;

  return v8;
}

- (id)__ck_bestAccountForAddresses:()CKAdditions withFallbackService:
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (CKIsRunningUITests(v7, v8))
  {
    v29 = v7;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    simulatedChats = [mEMORY[0x1E69A5AF8] simulatedChats];

    obj = simulatedChats;
    v32 = [simulatedChats countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v32)
    {
      v31 = *v38;
LABEL_4:
      v11 = 0;
      while (1)
      {
        v12 = v6;
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v11);
        array = [MEMORY[0x1E695DF70] array];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        participants = [v13 participants];
        v16 = [participants countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(participants);
              }

              v20 = [*(*(&v33 + 1) + 8 * i) ID];
              v21 = IMStripFormattingFromAddress();
              [array addObject:v21];
            }

            v17 = [participants countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v17);
        }

        v6 = v12;
        if ([array isEqualToArray:v12])
        {
          break;
        }

        if (++v11 == v32)
        {
          v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v32)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      account = [v13 account];

      v7 = v29;
      if (account)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_17:

      v7 = v29;
    }

    mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    simulatedChats2 = [mEMORY[0x1E69A5AF8]2 simulatedChats];
    firstObject = [simulatedChats2 firstObject];

    account = [firstObject account];
  }

  else
  {
    account = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService();
    if ([account _isUsableForSending])
    {
      goto LABEL_24;
    }

    firstObject = [MEMORY[0x1E69A5CA0] smsService];
    if (firstObject)
    {
      v26 = [self accountsForService:firstObject];
      __imFirstObject = [v26 __imFirstObject];

      account = __imFirstObject;
    }
  }

LABEL_24:

  return account;
}

- (id)__ck_bestAccountForAddress:()CKAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11[0] = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    array = [v4 arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695DEC8];
    v5 = 0;
    array = [v7 array];
  }

  v8 = array;

  v9 = [self __ck_bestAccountForAddresses:v8];

  return v9;
}

@end