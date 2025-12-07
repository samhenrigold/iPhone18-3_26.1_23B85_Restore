@interface SCUIAccountHelper
+ (BOOL)isiMessageLoggedIn;
+ (id)_getValidAccountAlias:(id)alias;
+ (id)bestHandleID:(id)d;
+ (id)bestiMessageServiceHandle;
@end

@implementation SCUIAccountHelper

+ (BOOL)isiMessageLoggedIn
{
  bestiMessageServiceHandle = [self bestiMessageServiceHandle];
  v3 = bestiMessageServiceHandle != 0;

  return v3;
}

+ (id)bestiMessageServiceHandle
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v3 = getIMServiceClass_softClass;
  v31 = getIMServiceClass_softClass;
  if (!getIMServiceClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getIMServiceClass_block_invoke;
    v26 = &unk_1E7FF2370;
    v27 = &v28;
    __getIMServiceClass_block_invoke(&v23);
    v3 = v29[3];
  }

  v4 = v3;
  _Block_object_dispose(&v28, 8);
  iMessageService = [v3 iMessageService];
  if (iMessageService)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v6 = getIMAccountControllerClass_softClass;
    v31 = getIMAccountControllerClass_softClass;
    if (!getIMAccountControllerClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getIMAccountControllerClass_block_invoke;
      v26 = &unk_1E7FF2370;
      v27 = &v28;
      __getIMAccountControllerClass_block_invoke(&v23);
      v6 = v29[3];
    }

    v7 = v6;
    _Block_object_dispose(&v28, 8);
    sharedInstance = [v6 sharedInstance];
    v9 = [sharedInstance activeAccountsForService:iMessageService];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v32 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [self _getValidAccountAlias:{v14, v19}];
          v16 = v15 == 0;

          if (!v16)
          {
            loginIMHandle = [v14 loginIMHandle];
            goto LABEL_16;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v32 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    loginIMHandle = 0;
LABEL_16:
  }

  else
  {
    loginIMHandle = 0;
  }

  return loginIMHandle;
}

+ (id)_getValidAccountAlias:(id)alias
{
  v14 = *MEMORY[0x1E69E9840];
  [alias aliases];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 scui_isValidAccountID])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)bestHandleID:(id)d
{
  dCopy = d;
  account = [dCopy account];
  if (account)
  {
    [self _getValidAccountAlias:account];
  }

  else
  {
    [dCopy ID];
  }
  v6 = ;

  return v6;
}

@end