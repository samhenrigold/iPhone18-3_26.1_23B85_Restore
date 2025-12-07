@interface LACPasscodeHelper
+ (id)sharedInstance;
- (BOOL)accountBlockedForUserID:(id)d;
- (BOOL)isPasscodeSetForUser:(unsigned int)user error:(id *)error;
- (LACPasscodeHelper)init;
- (double)passcodeSuccessAge;
- (id)_currentUserID;
- (id)_userNameFromUID:(id)d;
- (int)_verifyPasscodeUsingMKB:(id)b acmContext:(id)context userId:(id)id options:(id)options;
- (int64_t)_verifyPasscode:(id)passcode;
- (int64_t)createStash:(id)stash mode:(int)mode manifest:(id)manifest;
- (int64_t)verifyPasscode:(id)passcode;
- (int64_t)verifyPasscode:(id)passcode acmContext:(id)context userId:(id)id auditToken:(id *)token;
- (unsigned)_keybagHandleForUserId:(id)id;
- (void)_increaseFailedAttemptCountForUserID:(id)d;
- (void)_notifyObserversAboutUpdate;
- (void)_resetFailedAttemptCountForUserID:(id)d;
- (void)_updatePasscodeSuccessAgeWithUptime:(id)uptime;
- (void)keybagStateDidChange:(id)change;
@end

@implementation LACPasscodeHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[LACPasscodeHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_5;

  return v3;
}

uint64_t __35__LACPasscodeHelper_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACPasscodeHelper);
  v1 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (LACPasscodeHelper)init
{
  v15.receiver = self;
  v15.super_class = LACPasscodeHelper;
  v2 = [(LACPasscodeHelper *)&v15 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = [[LACKeyBagMKBAdapter alloc] initWithUserId:geteuid()];
    keyBagAdapter = v2->_keyBagAdapter;
    v2->_keyBagAdapter = v5;

    [(LACKeyBagMKBAdapter *)v2->_keyBagAdapter addObserver:v2];
    v7 = +[LACKeyBagProvider sharedInstance];
    keyBagProvider = v2->_keyBagProvider;
    v2->_keyBagProvider = v7;

    if (!+[LACMobileGestalt isSecureBootCapable])
    {
      v9 = MEMORY[0x1E695E0F8];
      v10 = [MEMORY[0x1E695E0F8] mutableCopy];
      failedAttemptsDictionary = v2->_failedAttemptsDictionary;
      v2->_failedAttemptsDictionary = v10;

      v12 = [v9 mutableCopy];
      backoffEndTimeDictionary = v2->_backoffEndTimeDictionary;
      v2->_backoffEndTimeDictionary = v12;
    }
  }

  return v2;
}

- (void)_updatePasscodeSuccessAgeWithUptime:(id)uptime
{
  if (uptime)
  {
    [uptime doubleValue];
    self->_lastPasscodeSuccessUptime = v4;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    self->_lastPasscodeSuccessUptime = v5;
  }
}

- (BOOL)isPasscodeSetForUser:(unsigned int)user error:(id *)error
{
  v5 = +[LACManagedConfiguration sharedInstance];
  isPasscodeSet = [v5 isPasscodeSet];

  if (error)
  {
    if (isPasscodeSet)
    {
      *error = 0;
    }

    else
    {
      v7 = [LACError errorWithCode:-5 debugDescription:@"Passcode not set."];
      *error = v7;
    }
  }

  return isPasscodeSet;
}

- (double)passcodeSuccessAge
{
  result = 0.0;
  if (self->_lastPasscodeSuccessUptime > 0.0)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v6 = v5;

    return v6 - self->_lastPasscodeSuccessUptime;
  }

  return result;
}

- (BOOL)accountBlockedForUserID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(LACPasscodeHelper *)self failedAttemptsForUserID:dCopy];
  v6 = [(LACPasscodeHelper *)self maxUnlockAttemptsForUserID:dCopy];
  v7 = v6;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = LACLogPasscode(v6);
    v9 = v8;
    if (v5 < v7)
    {
      v10 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v10 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v8, v10))
    {
      if (dCopy)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user %d", objc_msgSend(dCopy, "intValue")];
      }

      else
      {
        v11 = @"current user";
      }

      *buf = 138543874;
      v14 = v11;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1B0233000, v9, v10, "%{public}@ has %d failed passcode attempts out of %d", buf, 0x18u);
      if (dCopy)
      {
      }
    }
  }

  return v5 >= v7;
}

- (int64_t)createStash:(id)stash mode:(int)mode manifest:(id)manifest
{
  v24 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  v7 = MEMORY[0x1E695DEF0];
  stashCopy = stash;
  bytes = [stashCopy bytes];
  v10 = [stashCopy length];

  v11 = [v7 dataWithBytes:bytes length:v10];
  if (manifestCopy)
  {
    v12 = MKBKeyBagKeyStashCreateWithManifest();
    v13 = v12;
    v14 = LACLogPasscode(v12);
    v15 = v14;
    if (v13)
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v16 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v14, v16))
    {
      v22 = 67109120;
      v23 = v13;
      v17 = "create stash with manifest: %d";
LABEL_12:
      _os_log_impl(&dword_1B0233000, v15, v16, v17, &v22, 8u);
    }
  }

  else
  {
    v18 = MKBKeyBagKeyStashCreateWithMode();
    v13 = v18;
    v19 = LACLogPasscode(v18);
    v15 = v19;
    if (v13)
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v16 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v19, v16))
    {
      v22 = 67109120;
      v23 = v13;
      v17 = "create stash with mode: %d";
      goto LABEL_12;
    }
  }

  if (v13)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (int64_t)verifyPasscode:(id)passcode acmContext:(id)context userId:(id)id auditToken:(id *)token
{
  contextCopy = context;
  passcodeCopy = passcode;
  v11 = [LACMutablePasscodeVerificationRequest alloc];
  v12 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v12;
  v13 = [(LACMutablePasscodeVerificationRequest *)v11 initWithPasscode:passcodeCopy acmContext:contextCopy rawAuditToken:v16];

  v14 = [(LACPasscodeHelper *)self verifyPasscode:v13];
  return v14;
}

- (int64_t)verifyPasscode:(id)passcode
{
  v12 = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v5 = LACLogPasscode(passcodeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = passcodeCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Passcode verification will start: %{public}@", &v10, 0xCu);
  }

  v6 = [(LACPasscodeHelper *)self _verifyPasscode:passcodeCopy];
  v7 = LACLogPasscode(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Passcode verification did finish: %{public}@", &v10, 0xCu);
  }

  return v6;
}

- (int64_t)_verifyPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcode = [passcodeCopy passcode];
  acmContext = [passcodeCopy acmContext];
  userId = [passcodeCopy userId];
  policy = [passcodeCopy policy];
  options = [passcodeCopy options];
  bioLockoutRecovery = [passcodeCopy bioLockoutRecovery];

  if ([acmContext length])
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __37__LACPasscodeHelper__verifyPasscode___block_invoke;
    v44[3] = &unk_1E7A965E0;
    v44[4] = self;
    v41 = passcode;
    v39 = passcode;
    v45 = v39;
    v11 = acmContext;
    v46 = v11;
    v12 = userId;
    v47 = v12;
    v13 = options;
    v48 = v13;
    v49 = bioLockoutRecovery;
    v14 = __37__LACPasscodeHelper__verifyPasscode___block_invoke(v44);
    if ((v14 + 14) < 2)
    {
      [(LACPasscodeHelper *)self _increaseFailedAttemptCountForUserID:v12];
      if ([(LACPasscodeHelper *)self accountBlockedForUserID:v12])
      {
        v21 = 4;
      }

      else
      {
        v21 = 2;
      }
    }

    else if (v14 == -3)
    {
      [(LACPasscodeHelper *)self _increaseFailedAttemptCountForUserID:v12];
      v21 = 1;
    }

    else if (v14)
    {
      v21 = 3;
    }

    else
    {
      [(LACPasscodeHelper *)self _resetFailedAttemptCountForUserID:v12];
      if (policy == 1010)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:1026];
        v16 = [v13 objectForKeyedSubscript:v15];

        v17 = [MEMORY[0x1E696AD98] numberWithInteger:1028];
        v18 = [v13 objectForKeyedSubscript:v17];

        if (v18)
        {
          intValue = [v18 intValue];
        }

        else
        {
          intValue = 1;
        }

        v21 = [(LACPasscodeHelper *)self createStash:v39 mode:intValue manifest:v16, v39];
      }

      else
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:1044];
        v23 = [v13 objectForKeyedSubscript:v22];
        bOOLValue = [v23 BOOLValue];

        if (bOOLValue)
        {
          v25 = [[LACACMHelper alloc] initWithExternalizedContext:v11];
          v43 = 0;
          v26 = [(LACACMHelper *)v25 setData:v39 type:5 error:&v43];
          v27 = v43;
          v28 = v27;
          if (!v26)
          {
            v29 = LACLogPasscode(v27);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(LACPasscodeHelper *)v28 _verifyPasscode:v29];
            }
          }
        }

        v30 = [MEMORY[0x1E696AD98] numberWithInteger:{1060, v39}];
        v31 = [v13 objectForKeyedSubscript:v30];
        bOOLValue2 = [v31 BOOLValue];

        if (bOOLValue2)
        {
          v33 = [[LACACMHelper alloc] initWithExternalizedContext:v11];
          v42 = 0;
          v34 = [(LACACMHelper *)v33 setData:v40 type:7 error:&v42];
          v35 = v42;
          v36 = v35;
          passcode = v41;
          if (!v34)
          {
            v37 = LACLogPasscode(v35);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [(LACPasscodeHelper *)v36 _verifyPasscode:v37];
            }
          }

          v21 = 0;
          goto LABEL_32;
        }

        v21 = 0;
      }
    }

    passcode = v41;
LABEL_32:

    goto LABEL_33;
  }

  v20 = LACLogPasscode(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [LACPasscodeHelper _verifyPasscode:v20];
  }

  v21 = 3;
LABEL_33:

  return v21;
}

uint64_t __37__LACPasscodeHelper__verifyPasscode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _verifyPasscodeUsingMKB:*(a1 + 40) acmContext:*(a1 + 48) userId:*(a1 + 56) options:*(a1 + 64)];
  if (!v2 && (*(a1 + 72) & 1) == 0)
  {
    v3 = +[LACPasscodeHelper sharedInstance];
    [v3 updatePasscodeSuccessAgeWithCurrentSystemUptime];
  }

  return v2;
}

- (int)_verifyPasscodeUsingMKB:(id)b acmContext:(id)context userId:(id)id options:(id)options
{
  v32[1] = *MEMORY[0x1E69E9840];
  bCopy = b;
  optionsCopy = options;
  contextCopy = context;
  v31 = @"DeviceHandle";
  v13 = [(LACPasscodeHelper *)self];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
  v32[0] = v14;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];

  data = [bCopy data];
  v16 = MKBVerifyPasswordWithContext();

  v18 = LACLogPasscode(v17);
  if (os_log_type_enabled(v18, (16 * (v16 != 0))))
  {
    v27 = 67109376;
    v28 = v13;
    v29 = 1024;
    v30 = v16;
    _os_log_impl(&dword_1B0233000, v18, (16 * (v16 != 0)), "MKB password verification for keybag %d returned %d", &v27, 0xEu);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:1043];
  v20 = [optionsCopy objectForKeyedSubscript:v19];

  bOOLValue = [v20 BOOLValue];
  if (bOOLValue)
  {
    data2 = [bCopy data];
    v16 = MKBUnlockDevice();

    v24 = LACLogPasscode(v23);
    v25 = 16 * (v16 != 0);
    if (os_log_type_enabled(v24, v25))
    {
      v27 = 67109376;
      v28 = v13;
      v29 = 1024;
      v30 = v16;
      _os_log_impl(&dword_1B0233000, v24, v25, "MKB device unlock for keybag %d returned %d", &v27, 0xEu);
    }
  }

  return v16;
}

- (void)_notifyObserversAboutUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = MEMORY[0x1E695DEC8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v5 = [v3 arrayWithArray:allObjects];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 passcodeSetDidChangeForHelper:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)keybagStateDidChange:(id)change
{
  state = [change state];
  keyBagDisabled = self->_keyBagDisabled;
  if (!keyBagDisabled || (state == 1) != [(NSNumber *)keyBagDisabled BOOLValue])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:state == 1];
    v7 = self->_keyBagDisabled;
    self->_keyBagDisabled = v6;

    [(LACPasscodeHelper *)self _notifyObserversAboutUpdate];
  }
}

- (unsigned)_keybagHandleForUserId:(id)id
{
  if (+[LACMobileGestalt isSharedIPad])
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

- (id)_currentUserID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = getuid();

  return [v2 numberWithUnsignedInt:v3];
}

- (id)_userNameFromUID:(id)d
{
  v3 = getpwuid([d unsignedIntValue]);
  if (v3)
  {
    if (*v3)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithCString:*v3 encoding:4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_increaseFailedAttemptCountForUserID:(id)d
{
  dCopy = d;
  if (!+[LACMobileGestalt isSecureBootCapable])
  {
    _currentUserID = dCopy;
    if (!dCopy)
    {
      _currentUserID = [(LACPasscodeHelper *)self _currentUserID];
    }

    dCopy = _currentUserID;
    v5 = [(NSMutableDictionary *)self->_failedAttemptsDictionary objectForKey:_currentUserID];

    if (!v5)
    {
      [(NSMutableDictionary *)self->_failedAttemptsDictionary setObject:&unk_1F26935C8 forKeyedSubscript:dCopy];
    }

    v6 = [(NSMutableDictionary *)self->_failedAttemptsDictionary objectForKeyedSubscript:dCopy];
    integerValue = [v6 integerValue];

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [(NSMutableDictionary *)self->_failedAttemptsDictionary setObject:v8 forKeyedSubscript:dCopy];

    if (integerValue >= 14)
    {
      date = [MEMORY[0x1E695DF00] date];
      v10 = [date dateByAddingTimeInterval:5.0];
      [(NSMutableDictionary *)self->_backoffEndTimeDictionary setObject:v10 forKeyedSubscript:dCopy];
    }
  }
}

- (void)_resetFailedAttemptCountForUserID:(id)d
{
  dCopy = d;
  if (!+[LACMobileGestalt isSecureBootCapable])
  {
    _currentUserID = dCopy;
    if (!dCopy)
    {
      _currentUserID = [(LACPasscodeHelper *)self _currentUserID];
    }

    dCopy = _currentUserID;
    [(NSMutableDictionary *)self->_failedAttemptsDictionary removeObjectForKey:_currentUserID];
    [(NSMutableDictionary *)self->_backoffEndTimeDictionary removeObjectForKey:dCopy];
  }
}

- (void)_verifyPasscode:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not inject secure password (%@)", &v2, 0xCu);
}

- (void)_verifyPasscode:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not inject extractable password (%@)", &v2, 0xCu);
}

@end