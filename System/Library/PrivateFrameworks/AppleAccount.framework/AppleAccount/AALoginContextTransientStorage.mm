@interface AALoginContextTransientStorage
+ (id)sharedStorage;
- (AALoginContextTransientStorage)init;
- (id)_keychainItemForUsername:(id)username service:(id)service;
- (id)_readNonsensitiveParameters;
- (id)storedContext;
- (void)_deleteKeychainItemForUsername:(id)username service:(id)service;
- (void)_saveKeychainItem:(id)item forUsername:(id)username service:(id)service;
- (void)_saveNonsensitiveParameters:(id)parameters;
- (void)clear;
- (void)save:(id)save;
@end

@implementation AALoginContextTransientStorage

+ (id)sharedStorage
{
  if (sharedStorage_onceToken != -1)
  {
    +[AALoginContextTransientStorage sharedStorage];
  }

  v3 = sharedStorage_storage;

  return v3;
}

uint64_t __47__AALoginContextTransientStorage_sharedStorage__block_invoke()
{
  sharedStorage_storage = objc_alloc_init(AALoginContextTransientStorage);

  return MEMORY[0x1EEE66BB8]();
}

- (AALoginContextTransientStorage)init
{
  v6.receiver = self;
  v6.super_class = AALoginContextTransientStorage;
  v2 = [(AALoginContextTransientStorage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    clearLock = v2->_clearLock;
    v2->_clearLock = v3;
  }

  return v2;
}

- (void)save:(id)save
{
  v29 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  [(NSLock *)self->_clearLock lock];
  self->_hasBeenCleared = 0;
  [(NSLock *)self->_clearLock unlock];
  appleID = [saveCopy appleID];
  v6 = _AALogSystem(appleID);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (appleID)
  {
    if (v7)
    {
      *buf = 138412290;
      v28 = appleID;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: saving tokens for Apple ID %@...", buf, 0xCu);
    }

    v25 = @"AKTransientAppleID";
    v26 = appleID;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v6 = [v8 mutableCopy];

    altDSID = [saveCopy altDSID];
    if (altDSID)
    {
      [v6 setObject:altDSID forKeyedSubscript:@"AKTransientAltDSID"];
    }

    else
    {
      v10 = _AALogSystem(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: no altDSID in login context!", buf, 2u);
      }
    }

    dSID = [saveCopy DSID];

    if (dSID)
    {
      dSID2 = [saveCopy DSID];
      [v6 setObject:dSID2 forKeyedSubscript:@"AKTransientDSID"];
    }

    if ([saveCopy isBeneficiaryLogin])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(saveCopy, "isBeneficiaryLogin")}];
      [v6 setObject:v13 forKeyedSubscript:@"AKTransientIsBeneficiaryLogin"];
    }

    firstName = [saveCopy firstName];

    if (firstName)
    {
      firstName2 = [saveCopy firstName];
      [v6 setObject:firstName2 forKeyedSubscript:@"AKTransientFirstName"];
    }

    middleName = [saveCopy middleName];

    if (middleName)
    {
      middleName2 = [saveCopy middleName];
      [v6 setObject:middleName2 forKeyedSubscript:@"AKTransientMiddleName"];
    }

    lastName = [saveCopy lastName];

    if (lastName)
    {
      lastName2 = [saveCopy lastName];
      [v6 setObject:lastName2 forKeyedSubscript:@"AKTransientLastName"];
    }

    v20 = _AALogSystem([(AALoginContextTransientStorage *)self _saveNonsensitiveParameters:v6]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = appleID;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: saving tokens for Apple ID %@...", buf, 0xCu);
    }

    rawPassword = [saveCopy rawPassword];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:rawPassword forUsername:appleID service:@"com.apple.transient.rp"];

    continuationKey = [saveCopy continuationKey];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:continuationKey forUsername:appleID service:@"com.apple.transient.ck"];

    passwordResetKey = [saveCopy passwordResetKey];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:passwordResetKey forUsername:appleID service:@"com.apple.transient.prk"];

    cloudKitToken = [saveCopy cloudKitToken];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:cloudKitToken forUsername:appleID service:@"com.apple.transient.ckt"];
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: fatal error! No Apple ID in login context!", buf, 2u);
  }
}

- (id)storedContext
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_clearLock lock];
  hasBeenCleared = self->_hasBeenCleared;
  unlock = [(NSLock *)self->_clearLock unlock];
  if (hasBeenCleared)
  {
    v5 = 0;
  }

  else
  {
    v6 = _AALogSystem(unlock);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: retrieving stored login response parameters...", &v24, 2u);
    }

    _readNonsensitiveParameters = [(AALoginContextTransientStorage *)self _readNonsensitiveParameters];
    v8 = _readNonsensitiveParameters;
    if (_readNonsensitiveParameters)
    {
      v9 = [_readNonsensitiveParameters objectForKeyedSubscript:@"AKTransientAppleID"];
      v10 = [v8 objectForKeyedSubscript:@"AKTransientAltDSID"];
      v11 = _AALogSystem(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: found stored login response parameters for %@!", &v24, 0xCu);
      }

      v5 = [[AAStorableLoginContext alloc] initWithAppleID:v9 altDSID:v10];
      v12 = [v8 objectForKeyedSubscript:@"AKTransientDSID"];
      [(AAStorableLoginContext *)v5 setDSID:v12];

      v13 = [v8 objectForKeyedSubscript:@"AKTransientIsBeneficiaryLogin"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[AAStorableLoginContext setBeneficiaryLogin:](v5, "setBeneficiaryLogin:", [v13 BOOLValue]);
      }

      v14 = [v8 objectForKeyedSubscript:@"AKTransientFirstName"];
      [(AAStorableLoginContext *)v5 setFirstName:v14];

      v15 = [v8 objectForKeyedSubscript:@"AKTransientMiddleName"];
      [(AAStorableLoginContext *)v5 setMiddleName:v15];

      v16 = [v8 objectForKeyedSubscript:@"AKTransientLastName"];
      [(AAStorableLoginContext *)v5 setLastName:v16];

      v18 = _AALogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: retrieving temporary keychain items Apple ID %@!", &v24, 0xCu);
      }

      v19 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v9 service:@"com.apple.transient.rp"];
      [(AAStorableLoginContext *)v5 setRawPassword:v19];

      v20 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v9 service:@"com.apple.transient.ck"];
      [(AAStorableLoginContext *)v5 setContinuationKey:v20];

      v21 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v9 service:@"com.apple.transient.prk"];
      [(AAStorableLoginContext *)v5 setPasswordResetKey:v21];

      v22 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v9 service:@"com.apple.transient.ckt"];
      [(AAStorableLoginContext *)v5 setCloudKitToken:v22];
    }

    else
    {
      v9 = _AALogSystem(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: no known stored Apple ID.", &v24, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)clear
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_clearLock lock];
  self->_hasBeenCleared = 1;
  [(NSLock *)self->_clearLock unlock];
  _readNonsensitiveParameters = [(AALoginContextTransientStorage *)self _readNonsensitiveParameters];
  v4 = _readNonsensitiveParameters;
  if (_readNonsensitiveParameters)
  {
    v5 = [_readNonsensitiveParameters objectForKeyedSubscript:@"AKTransientAppleID"];
    v6 = _AALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: removing stored login response parameters for Apple ID %@...", &v8, 0xCu);
    }

    v7 = _AALogSystem([(AALoginContextTransientStorage *)self _saveNonsensitiveParameters:0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: removing temporary keychain items...", &v8, 2u);
    }

    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.rp"];
    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.ck"];
    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.prk"];
    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.ckt"];
  }

  else
  {
    v5 = _AALogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: nothing to clear.", &v8, 2u);
    }
  }
}

- (void)_saveNonsensitiveParameters:(id)parameters
{
  CFPreferencesSetAppValue(@"AAStoredLoginContext", parameters, @"com.apple.appleaccount.notbackedup");
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.appleaccount.notbackedup", v3, v4);
}

- (id)_readNonsensitiveParameters
{
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.appleaccount.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"AAStoredLoginContext", @"com.apple.appleaccount.notbackedup", v2, v3);

  return v4;
}

- (void)_saveKeychainItem:(id)item forUsername:(id)username service:(id)service
{
  v37[7] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  usernameCopy = username;
  serviceCopy = service;
  v10 = serviceCopy;
  if (itemCopy)
  {
    if (serviceCopy)
    {
      v11 = [itemCopy dataUsingEncoding:4];
      v12 = v11;
      if (v11)
      {
        v13 = *MEMORY[0x1E697ABE8];
        v14 = *MEMORY[0x1E697AC30];
        v36[0] = *MEMORY[0x1E697ABD8];
        v36[1] = v14;
        v37[0] = v13;
        v37[1] = usernameCopy;
        v15 = *MEMORY[0x1E697AFF8];
        v36[2] = *MEMORY[0x1E697AE88];
        v36[3] = v15;
        v16 = *MEMORY[0x1E697B008];
        v37[2] = v10;
        v37[3] = v16;
        v17 = *MEMORY[0x1E697AEB0];
        v36[4] = *MEMORY[0x1E697AEC0];
        v36[5] = v17;
        v37[4] = &unk_1F2F24B98;
        v37[5] = MEMORY[0x1E695E110];
        v18 = *MEMORY[0x1E697B3C0];
        v36[6] = *MEMORY[0x1E697B3C0];
        v37[6] = v11;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:7];
        v20 = SecItemAdd(v19, 0);
        v21 = _AALogSystem(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          *buf = 138412802;
          v31 = usernameCopy;
          v32 = 2112;
          v33 = v10;
          v34 = 2112;
          v35 = v22;
          _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemAdd (u: %@, s: %@) result: %@", buf, 0x20u);
        }

        if (v20 == -25299)
        {
          v29 = v18;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          v24 = [(__CFDictionary *)v19 dictionaryWithValuesForKeys:v23];

          v25 = [(__CFDictionary *)v19 mutableCopy];
          [v25 removeObjectForKey:v18];
          v26 = SecItemUpdate(v25, v24);
          v27 = _AALogSystem(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [MEMORY[0x1E696AD98] numberWithInt:v26];
            *buf = 138412802;
            v31 = usernameCopy;
            v32 = 2112;
            v33 = v10;
            v34 = 2112;
            v35 = v28;
            _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemUpdate (u: %@, s: %@) result: %@", buf, 0x20u);
          }
        }
      }

      else
      {
        v19 = _AALogSystem(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: save error - could not encode item data", buf, 2u);
        }
      }
    }

    else
    {
      v12 = _AALogSystem(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: save error - given nil service!", buf, 2u);
      }
    }
  }
}

- (id)_keychainItemForUsername:(id)username service:(id)service
{
  v29[5] = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  serviceCopy = service;
  v7 = serviceCopy;
  if (!serviceCopy)
  {
    v11 = _AALogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AALoginContextTransientStorage: fetch error - given nil service!";
LABEL_12:
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  if (!usernameCopy)
  {
    v11 = _AALogSystem(serviceCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AALoginContextTransientStorage: fetch error - given nil username!";
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v8 = *MEMORY[0x1E697AE88];
  v28[0] = *MEMORY[0x1E697AC30];
  v28[1] = v8;
  v29[0] = usernameCopy;
  v29[1] = serviceCopy;
  v9 = *MEMORY[0x1E697B008];
  v10 = *MEMORY[0x1E697B318];
  v28[2] = *MEMORY[0x1E697AFF8];
  v28[3] = v10;
  v29[2] = v9;
  v29[3] = MEMORY[0x1E695E118];
  v28[4] = *MEMORY[0x1E697B380];
  v29[4] = *MEMORY[0x1E697B388];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:5];
  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  v13 = result;
  v14 = _AALogSystem(v12);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12 || !v13)
  {
    if (v12)
    {
      if (v15)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInt:v12];
        *buf = 138412802;
        v23 = usernameCopy;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemCopyMatching (u: %@, s: %@) failed: %@", buf, 0x20u);
      }
    }

    else if (v15)
    {
      *buf = 138412546;
      v23 = usernameCopy;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemCopyMatching (u: %@, s: %@) returned noErr and nil data!", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (v15)
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: successfully read keychain item %@", buf, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [v16 initWithData:result encoding:4];
  CFRelease(result);
LABEL_20:

  return v17;
}

- (void)_deleteKeychainItemForUsername:(id)username service:(id)service
{
  v22[3] = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  serviceCopy = service;
  v7 = serviceCopy;
  if (!serviceCopy)
  {
    v10 = _AALogSystem(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v15) = 0;
    v14 = "AALoginContextTransientStorage: delete error - given nil service!";
LABEL_10:
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, v14, &v15, 2u);
    goto LABEL_11;
  }

  if (!usernameCopy)
  {
    v10 = _AALogSystem(serviceCopy);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v15) = 0;
    v14 = "AALoginContextTransientStorage: delete error - given nil username!";
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E697B008];
  v9 = *MEMORY[0x1E697AC30];
  v21[0] = *MEMORY[0x1E697AFF8];
  v21[1] = v9;
  v22[0] = v8;
  v22[1] = usernameCopy;
  v21[2] = *MEMORY[0x1E697AE88];
  v22[2] = serviceCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v11 = SecItemDelete(v10);
  v12 = _AALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v15 = 138412802;
    v16 = usernameCopy;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemDelete (u: %@, s: %@) result: %@", &v15, 0x20u);
  }

LABEL_11:
}

@end