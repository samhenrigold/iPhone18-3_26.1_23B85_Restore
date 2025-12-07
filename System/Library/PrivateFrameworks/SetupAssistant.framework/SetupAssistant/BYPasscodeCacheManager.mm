@interface BYPasscodeCacheManager
- (BOOL)storePasscode:(id)passcode;
- (BYPasscodeCacheManager)initWithFeatureFlags:(id)flags;
- (id)cachedPasscode;
- (int)_passcodeType;
- (unint64_t)_secretTypeCorrespondingToPasscodeType:(int)type;
- (void)_updateCachedLocalSecret:(id)secret;
- (void)cachePasscode:(id)passcode retrievable:(BOOL)retrievable;
- (void)persistPasscodeStash;
- (void)uncachePasscode;
- (void)updateCoreCDPStateControllerWithPasscode:(id)passcode;
@end

@implementation BYPasscodeCacheManager

- (BYPasscodeCacheManager)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v9.receiver = self;
  v9.super_class = BYPasscodeCacheManager;
  v6 = [(BYPasscodeCacheManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_stashedFd = -1;
    objc_storeStrong(&v6->_featureFlags, flags);
  }

  return v7;
}

- (void)cachePasscode:(id)passcode retrievable:(BOOL)retrievable
{
  retrievableCopy = retrievable;
  v41[1] = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v7 = passcodeCopy;
  if (!self->_isCached && [passcodeCopy length])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _buddyFinished, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorCoalesce);
    v13 = objc_alloc_init(getSecureBackupClass(v9, v10, v11, v12));
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v14 = getkSecureBackupPassphraseKeySymbolLoc_ptr;
    v39 = getkSecureBackupPassphraseKeySymbolLoc_ptr;
    if (!getkSecureBackupPassphraseKeySymbolLoc_ptr)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getkSecureBackupPassphraseKeySymbolLoc_block_invoke;
      v34 = &unk_1E7D02730;
      v35 = &v36;
      v15 = CloudServicesLibrary_0();
      v37[3] = dlsym(v15, "kSecureBackupPassphraseKey");
      getkSecureBackupPassphraseKeySymbolLoc_ptr = *(v35[1] + 24);
      v14 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v14)
    {
      +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
      __break(1u);
    }

    v40 = *v14;
    v41[0] = v7;
    v16 = MEMORY[0x1E695DF20];
    v17 = v40;
    v18 = [v16 dictionaryWithObjects:v41 forKeys:&v40 count:1];

    v19 = [v13 cachePassphraseWithInfo:v18];
    [v7 dataUsingEncoding:4];
    v20 = MKBKeyBagKeyStashCreateWithMode();
    v21 = _BYLoggingFacility(v20);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(BYPasscodeCacheManager *)v20 cachePasscode:v22 retrievable:v23, v24, v25, v26, v27, v28];
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, "Keybag stash created successfully", &v31, 2u);
    }

    if (retrievableCopy)
    {
      self->_retrievable = [(BYPasscodeCacheManager *)self storePasscode:v7];
    }

    v29 = [(BYPasscodeCacheManager *)self featureFlags:v31];
    isUseCDPContextSecretInsteadOfSBDSecretEnabled = [v29 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

    if (isUseCDPContextSecretInsteadOfSBDSecretEnabled)
    {
      [(BYPasscodeCacheManager *)self _updateCachedLocalSecret:v7];
    }

    self->_isCached = 1;
  }
}

- (void)uncachePasscode
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = self;
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, a2, a3, "Failed to clear keybag stash with error %d", a5, a6, a7, a8, v8);
}

- (BOOL)storePasscode:(id)passcode
{
  v59[1] = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v5 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  domain = [v5 stringByAppendingPathComponent:uUIDString];
  fileSystemRepresentation = [domain fileSystemRepresentation];

  v10 = open_dprotected_np(fileSystemRepresentation, 1794, 1, 0, 384);
  if ((v10 & 0x80000000) != 0)
  {
    v16 = _BYLoggingFacility(v10);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      v28 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v25 = __error();
    v26 = strerror(*v25);
    *buf = 136315138;
    v55 = v26;
    v27 = "Failed to open temporary file for caching: %s";
LABEL_14:
    _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = unlink(fileSystemRepresentation);
  if ((v12 & 0x80000000) == 0)
  {
    v58 = @"passcode";
    v59[0] = passcodeCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v53 = 0;
    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:&v53];
    v15 = v53;
    v16 = v15;
    if (v14)
    {
      v17 = ftruncate(v11, [v14 length]);
      if ((v17 & 0x80000000) != 0)
      {
        v38 = _BYLoggingFacility(v17);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = __error();
          v40 = strerror(*v39);
          *buf = 136315138;
          v55 = v40;
          _os_log_impl(&dword_1B862F000, v38, OS_LOG_TYPE_DEFAULT, "Unable to truncate cache file: %s", buf, 0xCu);
        }

        v41 = close(v11);
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v24 = _BYLoggingFacility(v41);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v18 = pwrite(v11, [v14 bytes], objc_msgSend(v14, "length"), 0);
        if (v18 < 0)
        {
          v44 = _BYLoggingFacility(v18);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = __error();
            v46 = strerror(*v45);
            *buf = 136315138;
            v55 = v46;
            _os_log_impl(&dword_1B862F000, v44, OS_LOG_TYPE_DEFAULT, "Unable to write cache file: %s", buf, 0xCu);
          }

          v47 = close(v11);
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          v24 = _BYLoggingFacility(v47);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v19 = v18;
          v20 = [v14 length];
          if (v19 >= v20)
          {
            self->_stashedFd = v11;
            v28 = 1;
LABEL_46:

            goto LABEL_47;
          }

          v21 = _BYLoggingFacility(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v14 length];
            *buf = 134218240;
            v55 = v19;
            v56 = 2048;
            v57 = v22;
            _os_log_impl(&dword_1B862F000, v21, OS_LOG_TYPE_DEFAULT, "Incomplete data written to cache file: read %ld, expected %lu", buf, 0x16u);
          }

          v23 = close(v11);
          if ((v23 & 0x80000000) == 0)
          {
LABEL_45:
            v28 = 0;
            goto LABEL_46;
          }

          v24 = _BYLoggingFacility(v23);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
LABEL_44:

            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v33 = _BYLoggingFacility(v15);
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        if (_BYIsInternalInstall(v34, v35))
        {
          v36 = 0;
          v37 = v16;
        }

        else if (v16)
        {
          v48 = MEMORY[0x1E696AEC0];
          domain = [v16 domain];
          v37 = [v48 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v16, "code")];
          v36 = 1;
        }

        else
        {
          v36 = 0;
          v37 = 0;
        }

        *buf = 138543362;
        v55 = v37;
        _os_log_impl(&dword_1B862F000, v33, OS_LOG_TYPE_DEFAULT, "Unable to serialize cache data: %{public}@", buf, 0xCu);
        if (v36)
        {
        }
      }

      v49 = close(v11);
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v24 = _BYLoggingFacility(v49);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }

    v50 = __error();
    v51 = strerror(*v50);
    *buf = 136315138;
    v55 = v51;
    _os_log_impl(&dword_1B862F000, v24, OS_LOG_TYPE_DEFAULT, "Failed closing temporary file: %s", buf, 0xCu);
    goto LABEL_44;
  }

  v29 = _BYLoggingFacility(v12);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = __error();
    v31 = strerror(*v30);
    *buf = 136315138;
    v55 = v31;
    _os_log_impl(&dword_1B862F000, v29, OS_LOG_TYPE_DEFAULT, "Failed to unlink temporary file for caching: %s", buf, 0xCu);
  }

  v32 = close(v11);
  if ((v32 & 0x80000000) != 0)
  {
    v16 = _BYLoggingFacility(v32);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v42 = __error();
    v43 = strerror(*v42);
    *buf = 136315138;
    v55 = v43;
    v27 = "Failed closing temporary file: %s";
    goto LABEL_14;
  }

  v28 = 0;
LABEL_48:

  return v28;
}

- (id)cachedPasscode
{
  v40 = *MEMORY[0x1E69E9840];
  featureFlags = [(BYPasscodeCacheManager *)self featureFlags];
  if ([featureFlags isUseCDPContextSecretInsteadOfSBDSecretEnabled])
  {
    cachedLocalSecret = [(BYPasscodeCacheManager *)self cachedLocalSecret];
    validatedSecret = [cachedLocalSecret validatedSecret];

    if (validatedSecret)
    {
      v8 = _BYLoggingFacility(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 136315138;
        *&buf.st_mode = "[BYPasscodeCacheManager cachedPasscode]";
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "%s: Returning property value.", &buf, 0xCu);
      }

      cachedLocalSecret2 = [(BYPasscodeCacheManager *)self cachedLocalSecret];
      validatedSecret2 = [cachedLocalSecret2 validatedSecret];
      goto LABEL_36;
    }
  }

  else
  {
  }

  stashedFd = self->_stashedFd;
  if (stashedFd < 0)
  {
    validatedSecret2 = 0;
    goto LABEL_37;
  }

  memset(&buf, 0, sizeof(buf));
  v12 = fstat(stashedFd, &buf);
  if ((v12 & 0x80000000) != 0)
  {
    cachedLocalSecret2 = _BYLoggingFacility(v12);
    if (os_log_type_enabled(cachedLocalSecret2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_stashedFd;
      v23 = __error();
      v24 = strerror(*v23);
      *v37 = 67109378;
      *v38 = v22;
      *&v38[4] = 2080;
      *&v38[6] = v24;
      _os_log_impl(&dword_1B862F000, cachedLocalSecret2, OS_LOG_TYPE_DEFAULT, "Failed to stat file (%d): %s", v37, 0x12u);
    }

    validatedSecret2 = 0;
    goto LABEL_36;
  }

  v13 = objc_alloc(MEMORY[0x1E695DF88]);
  cachedLocalSecret2 = [v13 initWithLength:buf.st_size];
  v14 = self->_stashedFd;
  mutableBytes = [cachedLocalSecret2 mutableBytes];
  v16 = pread(v14, mutableBytes, buf.st_size, 0);
  if (v16 < 0)
  {
    v18 = _BYLoggingFacility(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v25 = __error();
      v26 = strerror(*v25);
      *v37 = 136315138;
      *v38 = v26;
      v19 = "Unable to read secure file: %s";
      v20 = v18;
      v21 = 12;
      goto LABEL_19;
    }
  }

  else
  {
    v17 = v16;
    if (v16 >= buf.st_size)
    {
      v36 = 0;
      v27 = [MEMORY[0x1E696AE40] propertyListWithData:cachedLocalSecret2 options:0 format:0 error:&v36];
      v18 = v36;
      if (v27)
      {
        validatedSecret2 = [v27 objectForKeyedSubscript:@"passcode"];
      }

      else
      {
        v28 = [cachedLocalSecret2 length];
        if (v28)
        {
          v29 = _BYLoggingFacility(v28);
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (v30)
          {
            if (_BYIsInternalInstall(v30, v31))
            {
              v32 = 0;
              v33 = v18;
            }

            else if (v18)
            {
              v34 = MEMORY[0x1E696AEC0];
              domain = [v18 domain];
              v33 = [v34 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v18, "code")];
              v32 = 1;
            }

            else
            {
              v32 = 0;
              v33 = 0;
            }

            *v37 = 138543362;
            *v38 = v33;
            _os_log_impl(&dword_1B862F000, v29, OS_LOG_TYPE_DEFAULT, "Unable to decode secure file: %{public}@", v37, 0xCu);
            if (v32)
            {
            }
          }
        }

        validatedSecret2 = 0;
      }

      goto LABEL_35;
    }

    v18 = _BYLoggingFacility(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 134218240;
      *v38 = v17;
      *&v38[8] = 2048;
      *&v38[10] = buf.st_size;
      v19 = "Unable to read secure file; read %ld, expected %lld";
      v20 = v18;
      v21 = 22;
LABEL_19:
      _os_log_impl(&dword_1B862F000, v20, OS_LOG_TYPE_DEFAULT, v19, v37, v21);
    }
  }

  validatedSecret2 = 0;
LABEL_35:

LABEL_36:
LABEL_37:

  return validatedSecret2;
}

- (void)persistPasscodeStash
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = self;
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, a2, a3, "Failed to persist keybag stash with error %d", a5, a6, a7, a8, v8);
}

- (void)_updateCachedLocalSecret:(id)secret
{
  v12 = *MEMORY[0x1E69E9840];
  secretCopy = secret;
  v5 = [(BYPasscodeCacheManager *)self _secretTypeCorrespondingToPasscodeType:[(BYPasscodeCacheManager *)self _passcodeType]];
  v6 = _BYLoggingFacility(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (secretCopy)
  {
    if (v7)
    {
      v10 = 136315138;
      v11 = "[BYPasscodeCacheManager _updateCachedLocalSecret:]";
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%s: Caching secret", &v10, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x1E69977F8]) initWithValidatedSecret:secretCopy secretType:v5];
  }

  else
  {
    if (v7)
    {
      v10 = 136315138;
      v11 = "[BYPasscodeCacheManager _updateCachedLocalSecret:]";
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%s: Removing saved CDP local secret", &v10, 0xCu);
    }

    v8 = 0;
  }

  cachedLocalSecret = self->_cachedLocalSecret;
  self->_cachedLocalSecret = v8;
}

- (int)_passcodeType
{
  v4 = 0;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  [mEMORY[0x1E69ADFB8] unlockScreenTypeWithOutSimplePasscodeType:&v4];

  return v4;
}

- (unint64_t)_secretTypeCorrespondingToPasscodeType:(int)type
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _BYLoggingFacility(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (type == -1)
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[BYPasscodeCacheManager _secretTypeCorrespondingToPasscodeType:]";
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "%s: Saving complex device secret type", &v8, 0xCu);
    }

    v6 = 3;
  }

  else
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[BYPasscodeCacheManager _secretTypeCorrespondingToPasscodeType:]";
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "%s: Saving simple device secret type", &v8, 0xCu);
    }

    v6 = 2;
  }

  return v6;
}

- (void)updateCoreCDPStateControllerWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = _BYLoggingFacility(passcodeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Updating CDP StateController", &v15, 2u);
  }

  featureFlags = [(BYPasscodeCacheManager *)self featureFlags];
  isUseCDPContextSecretInsteadOfSBDSecretEnabled = [featureFlags isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (isUseCDPContextSecretInsteadOfSBDSecretEnabled)
  {
    v8 = [(BYPasscodeCacheManager *)self _secretTypeCorrespondingToPasscodeType:[(BYPasscodeCacheManager *)self _passcodeType]];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = getCDPContextClass_softClass_0;
    v23 = getCDPContextClass_softClass_0;
    if (!getCDPContextClass_softClass_0)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getCDPContextClass_block_invoke_0;
      v18 = &unk_1E7D02730;
      v19 = &v20;
      __getCDPContextClass_block_invoke_0(&v15);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = objc_alloc_init(v9);
    [v11 setType:6];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v12 = getCDPStateControllerClass_softClass_0;
    v23 = getCDPStateControllerClass_softClass_0;
    if (!getCDPStateControllerClass_softClass_0)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getCDPStateControllerClass_block_invoke_0;
      v18 = &unk_1E7D02730;
      v19 = &v20;
      __getCDPStateControllerClass_block_invoke_0(&v15);
      v12 = v21[3];
    }

    v13 = v12;
    _Block_object_dispose(&v20, 8);
    v14 = [[v12 alloc] initWithContext:v11];
    [v14 localSecretChangedTo:passcodeCopy secretType:v8 completion:&__block_literal_global_26];
  }
}

void __67__BYPasscodeCacheManager_updateCoreCDPStateControllerWithPasscode___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _BYLoggingFacility(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__BYPasscodeCacheManager_updateCoreCDPStateControllerWithPasscode___block_invoke_cold_1(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Updated local secret: %d", v7, 8u);
  }
}

- (void)cachePasscode:(uint64_t)a3 retrievable:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, a2, a3, "Failed to create keybag stash with error %d", a5, a6, a7, a8, v8);
}

void __67__BYPasscodeCacheManager_updateCoreCDPStateControllerWithPasscode___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v4 = a1;
  v9 = *MEMORY[0x1E69E9840];
  v5 = _BYIsInternalInstall(a1, a2);
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    v2 = [v4 domain];
    v4 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v4, "code")];
  }

  *buf = 138412290;
  v8 = v4;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to update local secret: %@", buf, 0xCu);
  if (!v5)
  {
  }
}

@end