@interface OTClique(Framework)
+ (BOOL)recoverWithRecoveryKey:()Framework recoveryKey:error:;
+ (BOOL)setRecoveryKeyWithContext:()Framework recoveryKey:error:;
+ (NSObject)fetchAndHandleEscrowRecords:()Framework shouldFilter:error:;
+ (id)_fetchAccountWideSettingsDefaultWithForceFetch:()Framework useDefault:configuration:error:;
+ (id)createAndSetRecoveryKeyWithContext:()Framework error:;
+ (id)escrowCheck:()Framework isBackgroundCheck:error:;
+ (id)fetchAllEscrowRecords:()Framework error:;
+ (id)fetchEscrowRecords:()Framework error:;
+ (id)filterRecords:()Framework;
+ (id)filterViableSOSRecords:()Framework;
+ (id)handleRecoveryResults:()Framework recoveredInformation:record:performedSilentBurn:error:;
+ (id)performEscrowRecovery:()Framework cdpContext:escrowRecord:error:;
+ (id)performSilentEscrowRecovery:()Framework cdpContext:allRecords:error:;
+ (id)recordMatchingLabel:()Framework allRecords:;
+ (id)sortListPrioritizingiOSRecords:()Framework;
+ (id)totalTrustedPeers:()Framework error:;
+ (id)trustedFullPeers:()Framework error:;
+ (uint64_t)areRecoveryKeysDistrusted:()Framework error:;
+ (uint64_t)doesRecoveryKeyExistInOctagonAndIsCorrect:()Framework recoveryKey:error:;
+ (uint64_t)doesRecoveryKeyExistInSOSAndIsCorrect:()Framework recoveryKey:error:;
+ (uint64_t)ensureBackupKeyExistsinSOS:()Framework;
+ (uint64_t)invalidateEscrowCache:()Framework error:;
+ (uint64_t)isRecoveryKeySet:()Framework error:;
+ (uint64_t)isRecoveryKeySetInOctagon:()Framework error:;
+ (uint64_t)isRecoveryKeySetInSOS:()Framework error:;
+ (uint64_t)preflightRecoverOctagonUsingRecoveryKey:()Framework recoveryKey:error:;
+ (uint64_t)registerRecoveryKeyInSOSAndBackup:()Framework recoveryKey:error:;
+ (uint64_t)registerRecoveryKeyWithContext:()Framework recoveryKey:error:;
- (BOOL)removeLocalSecureElementIdentityPeerID:()Framework error:;
- (BOOL)removeRecoveryKey:()Framework error:;
- (BOOL)removeRecoveryKeyFromSOSWhenInCircle:()Framework error:;
- (BOOL)setAccountSetting:()Framework error:;
- (BOOL)setLocalSecureElementIdentity:()Framework error:;
- (BOOL)waitForPriorityViewKeychainDataRecovery:()Framework;
- (id)fetchAccountSettings:()Framework;
- (id)fetchTrustedSecureElementIdentities:()Framework;
- (id)tlkRecoverabilityForEscrowRecord:()Framework error:;
- (uint64_t)deliverAKDeviceListDelta:()Framework error:;
- (unint64_t)removeRecoveryKeyFromSOSWhenNOTInCircle:()Framework error:;
@end

@implementation OTClique(Framework)

- (BOOL)removeRecoveryKey:()Framework error:
{
  v35[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "Removing recovery key for context:%@", &buf, 0xCu);
  }

  v28[1] = 0;
  v8 = SOSCCThisDeviceIsInCircle();
  v9 = SOSCCIsSOSTrustAndSyncingEnabled();
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 1)
  {
    v28[0] = 0;
    [self removeRecoveryKeyFromSOSWhenInCircle:v6 error:v28];
    v11 = v28;
  }

  else
  {
    v27 = 0;
    [self removeRecoveryKeyFromSOSWhenNOTInCircle:v6 error:&v27];
    v11 = &v27;
  }

  v12 = *v11;
  if (v12)
  {
    v13 = secLogObjForScope();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    v14 = "octagon-remove-recovery-key, error removing recovery key from SOS: %@";
    v15 = v13;
    v16 = 12;
  }

  else
  {
    v13 = secLogObjForScope();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(buf) = 0;
    v14 = "Removed recovery key from SOS";
    v15 = v13;
    v16 = 2;
  }

  _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, v14, &buf, v16);
LABEL_15:

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35[0] = 0;
  obj = 0;
  v17 = [v6 makeOTControl:&obj];
  objc_storeStrong(v35, obj);
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v6];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __47__OTClique_Framework__removeRecoveryKey_error___block_invoke;
    v25[3] = &unk_1E833E7B0;
    v25[4] = &buf;
    [v17 removeRecoveryKey:v18 reply:v25];

    v19 = *(&buf + 1);
    if (a4)
    {
      v20 = *(*(&buf + 1) + 40);
      if (v20)
      {
        *a4 = v20;
        v19 = *(&buf + 1);
      }
    }

    v21 = *(v19 + 40) == 0;
  }

  else
  {
    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(&buf + 1) + 40);
      *v29 = 138412290;
      v30 = v23;
      _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v29, 0xCu);
    }

    v21 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  return v21;
}

- (unint64_t)removeRecoveryKeyFromSOSWhenNOTInCircle:()Framework error:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Removing recovery key when not in circle", buf, 2u);
  }

  v21 = 0;
  if (SOSCCPushResetCircle())
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "successfully pushed a reset circle", buf, 2u);
    }

    v8 = [v5 sbd];
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v9);
      v11 = [objc_alloc(*(v13 + 3448)) initWithUserActivityLabel:@"octagon-trust-remove-recovery-key-not-in-circle"];
    }

    v14 = v11;

    v20 = 0;
    LODWORD(v10) = [v14 removeRecoveryKeyFromBackup:&v20];
    v15 = v20;
    if (v15)
    {
      v10 = 0;
    }

    else
    {
      v10 = v10;
    }

    if (v10)
    {
      v16 = secLogObjForScope();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "removed recovery key from the backup", buf, 2u);
      }
    }

    else
    {
      v17 = secLogObjForScope();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to remove recovery key from the backup: %@", buf, 0xCu);
      }

      if (a4)
      {
        v18 = v15;
        *a4 = v15;
      }
    }
  }

  else
  {
    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v21;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to push: %@", buf, 0xCu);
    }

    v10 = 0;
    if (a4)
    {
      *a4 = v21;
    }
  }

  return v10;
}

- (BOOL)removeRecoveryKeyFromSOSWhenInCircle:()Framework error:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Removing recovery key when device is in circle", buf, 2u);
  }

  v31 = 0;
  v7 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:v5 error:&v31];
  v8 = v31;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v30 = 0;
    v14 = [MEMORY[0x1E697AA80] ensureBackupKeyExistsinSOS:&v30];
    v15 = v30;
    v16 = v15;
    if (!v14 || v15)
    {
      if (a4)
      {
        v21 = v15;
        v13 = 0;
        *a4 = v16;
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      if (SOSCCRegisterRecoveryPublicKey())
      {
        v17 = [v5 sbd];
        v19 = v17;
        if (v17)
        {
          v20 = v17;
        }

        else
        {
          gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v18);
          v20 = [objc_alloc(*(v23 + 3448)) initWithUserActivityLabel:@"octagon-trust-remove-recovery-key"];
        }

        v24 = v20;

        v25 = [v24 backupForRecoveryKeyWithInfo:0];
        v13 = v25 == 0;
        if (v25)
        {
          v26 = secLogObjForScope();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v25;
            _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to perform backup: %@", buf, 0xCu);
          }

          if (a4)
          {
            v27 = v25;
            *a4 = v25;
          }
        }

        else
        {
          v28 = secLogObjForScope();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9430000, v28, OS_LOG_TYPE_DEFAULT, "Removed recovery key from SOS", buf, 2u);
          }
        }

        goto LABEL_34;
      }

      v22 = secLogObjForScope();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = 0;
        _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to remove recovery key from SOS: %@", buf, 0xCu);
      }

      if (a4)
      {
        v13 = 0;
        *a4 = 0;
        goto LABEL_34;
      }
    }

    v13 = 0;
    goto LABEL_34;
  }

  v11 = secLogObjForScope();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v9;
    _os_log_impl(&dword_1C9430000, v11, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, recovery key not registered in SOS: %@", buf, 0xCu);
  }

  if (a4)
  {
    v12 = v9;
    v13 = 0;
    *a4 = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_35:

  return v13;
}

- (uint64_t)deliverAKDeviceListDelta:()Framework error:
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [self ctx];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Unimplemented deliverAKDeviceListDelta for context:%@", &v9, 0xCu);
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  return 0;
}

- (id)tlkRecoverabilityForEscrowRecord:()Framework error:
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "tlkRecoverabiltyForEscrowRecord invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    *&v31 = 0;
    *(&v31 + 1) = &v31;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35 = 0;
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    data = [v6 data];
    v16 = [self ctx];
    escrowFetchSource = [v16 escrowFetchSource];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__OTClique_Framework__tlkRecoverabilityForEscrowRecord_error___block_invoke;
    v25[3] = &unk_1E833E828;
    v25[4] = &v31;
    v25[5] = &buf;
    [v11 tlkRecoverabilityForEscrowRecordData:v14 recordData:data source:escrowFetchSource reply:v25];

    if (a4)
    {
      v18 = *(*(&buf + 1) + 40);
      if (v18)
      {
        *a4 = v18;
      }
    }

    v19 = secLogObjForScope();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(&v31 + 1) + 40);
      *v27 = 138412546;
      v28 = v20;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_1C9430000, v19, OS_LOG_TYPE_DEFAULT, "views %@ supported for record %@", v27, 0x16u);
    }

    v21 = *(*(&v31 + 1) + 40);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(&buf + 1) + 40);
      LODWORD(v31) = 138412290;
      *(&v31 + 4) = v23;
      _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v31, 0xCu);
    }

    v21 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);

  return v21;
}

- (BOOL)waitForPriorityViewKeychainDataRecovery:()Framework
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v5, OS_LOG_TYPE_DEFAULT, "waitForPriorityViewKeychainDataRecovery invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v7 = [self ctx];
  v8 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v9 = [v7 makeOTControl:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E697AA90]);
    v11 = [self ctx];
    v12 = [v10 initWithConfiguration:v11];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__OTClique_Framework__waitForPriorityViewKeychainDataRecovery___block_invoke;
    v19[3] = &unk_1E833E7B0;
    v19[4] = &buf;
    [v9 waitForPriorityViewKeychainDataRecovery:v12 reply:v19];

    v13 = *(&buf + 1);
    if (a3)
    {
      v14 = *(*(&buf + 1) + 40);
      if (v14)
      {
        *a3 = v14;
        v13 = *(&buf + 1);
      }
    }

    v15 = *(v13 + 40) == 0;
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(&buf + 1) + 40);
      *v21 = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v21, 0xCu);
    }

    v15 = 0;
    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  return v15;
}

- (id)fetchAccountSettings:()Framework
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v5, OS_LOG_TYPE_DEFAULT, "fetchAccountSettings invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v7 = [self ctx];
  v8 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v9 = [v7 makeOTControl:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    *&v20 = 0;
    *(&v20 + 1) = &v20;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v10 = objc_alloc(MEMORY[0x1E697AA90]);
    v11 = [self ctx];
    v12 = [v10 initWithConfiguration:v11];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__OTClique_Framework__fetchAccountSettings___block_invoke;
    v18[3] = &unk_1E833E760;
    v18[4] = &v20;
    v18[5] = &buf;
    [v9 fetchAccountSettings:v12 reply:v18];

    if (a3)
    {
      v13 = *(*(&buf + 1) + 40);
      if (v13)
      {
        *a3 = v13;
      }
    }

    v14 = *(*(&v20 + 1) + 40);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(&buf + 1) + 40);
      LODWORD(v20) = 138412290;
      *(&v20 + 4) = v16;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v20, 0xCu);
    }

    v14 = 0;
    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);

  return v14;
}

- (BOOL)setAccountSetting:()Framework error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "setAccountSetting invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__OTClique_Framework__setAccountSetting_error___block_invoke;
    v21[3] = &unk_1E833E7B0;
    v21[4] = &buf;
    [v11 setAccountSetting:v14 setting:v6 reply:v21];

    v15 = *(&buf + 1);
    if (a4)
    {
      v16 = *(*(&buf + 1) + 40);
      if (v16)
      {
        *a4 = v16;
        v15 = *(&buf + 1);
      }
    }

    v17 = *(v15 + 40) == 0;
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v23 = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v23, 0xCu);
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  return v17;
}

- (id)fetchTrustedSecureElementIdentities:()Framework
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v5, OS_LOG_TYPE_DEFAULT, "fetchTrustedSecureElementIdentities invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v7 = [self ctx];
  v8 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v9 = [v7 makeOTControl:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    *&v20 = 0;
    *(&v20 + 1) = &v20;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v10 = objc_alloc(MEMORY[0x1E697AA90]);
    v11 = [self ctx];
    v12 = [v10 initWithConfiguration:v11];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__OTClique_Framework__fetchTrustedSecureElementIdentities___block_invoke;
    v18[3] = &unk_1E833E7D8;
    v18[4] = &v20;
    v18[5] = &buf;
    [v9 fetchTrustedSecureElementIdentities:v12 reply:v18];

    if (a3)
    {
      v13 = *(*(&buf + 1) + 40);
      if (v13)
      {
        *a3 = v13;
      }
    }

    v14 = *(*(&v20 + 1) + 40);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(&buf + 1) + 40);
      LODWORD(v20) = 138412290;
      *(&v20 + 4) = v16;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v20, 0xCu);
    }

    v14 = 0;
    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);

  return v14;
}

- (BOOL)removeLocalSecureElementIdentityPeerID:()Framework error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "removeLocalSecureElementIdentityPeerID invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__OTClique_Framework__removeLocalSecureElementIdentityPeerID_error___block_invoke;
    v21[3] = &unk_1E833E7B0;
    v21[4] = &buf;
    [v11 removeLocalSecureElementIdentityPeerID:v14 secureElementIdentityPeerID:v6 reply:v21];

    v15 = *(&buf + 1);
    if (a4)
    {
      v16 = *(*(&buf + 1) + 40);
      if (v16)
      {
        *a4 = v16;
        v15 = *(&buf + 1);
      }
    }

    v17 = *(v15 + 40) == 0;
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v23 = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v23, 0xCu);
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  return v17;
}

- (BOOL)setLocalSecureElementIdentity:()Framework error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "setLocalSecureElementIdentity invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__OTClique_Framework__setLocalSecureElementIdentity_error___block_invoke;
    v21[3] = &unk_1E833E7B0;
    v21[4] = &buf;
    [v11 setLocalSecureElementIdentity:v14 secureElementIdentity:v6 reply:v21];

    v15 = *(&buf + 1);
    if (a4)
    {
      v16 = *(*(&buf + 1) + 40);
      if (v16)
      {
        *a4 = v16;
        v15 = *(&buf + 1);
      }
    }

    v17 = *(v15 + 40) == 0;
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v23 = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v23, 0xCu);
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  return v17;
}

+ (id)escrowCheck:()Framework isBackgroundCheck:error:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = secLogObjForScope();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    context = [v7 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v8, OS_LOG_TYPE_DEFAULT, "escrowCheck invoked for context: %@", &buf, 0xCu);
  }

  v25 = 0;
  v10 = [v7 makeOTControl:&v25];
  v11 = v25;
  if (v10)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v12 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__OTClique_Framework__escrowCheck_isBackgroundCheck_error___block_invoke;
    v18[3] = &unk_1E833E8F0;
    v18[4] = &buf;
    v18[5] = &v19;
    [v10 escrowCheck:v12 isBackgroundCheck:a4 reply:v18];

    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      v14 = 0;
      if (a5)
      {
        *a5 = v13;
      }
    }

    else
    {
      v14 = v20[5];
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v16 = v11;
      v14 = 0;
      *a5 = v11;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (uint64_t)areRecoveryKeysDistrusted:()Framework error:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "areRecoveryKeysDistrusted invoked for context: %@", &buf, 0xCu);
  }

  v23 = 0;
  v8 = [v5 makeOTControl:&v23];
  v9 = v23;
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__OTClique_Framework__areRecoveryKeysDistrusted_error___block_invoke;
    v18[3] = &unk_1E833E850;
    v18[4] = &buf;
    v18[5] = &v19;
    [v8 areRecoveryKeysDistrusted:v10 reply:v18];

    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v20 + 24))
        {
          v16 = @"contains";
        }

        else
        {
          v16 = @"does not contain";
        }

        *v24 = 138412290;
        v25 = v16;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "Octagon circle %@ distrusted recovery keys", v24, 0xCu);
      }

      v12 = *(v20 + 24);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v14 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12 & 1;
}

+ (id)trustedFullPeers:()Framework error:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "trustedFullPeers invoked for context: %@", &buf, 0xCu);
  }

  v25 = 0;
  v8 = [v5 makeOTControl:&v25];
  v9 = v25;
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__OTClique_Framework__trustedFullPeers_error___block_invoke;
    v18[3] = &unk_1E833E8C8;
    v18[4] = &buf;
    v18[5] = &v19;
    [v8 trustedFullPeers:v10 reply:v18];

    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v20[5];
        *v26 = 138412290;
        v27 = v16;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "Number of trusted Octagon full peers: %@", v26, 0xCu);
      }

      v12 = v20[5];
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v14 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)totalTrustedPeers:()Framework error:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "totalTrustedPeers invoked for context: %@", &buf, 0xCu);
  }

  v25 = 0;
  v8 = [v5 makeOTControl:&v25];
  v9 = v25;
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__OTClique_Framework__totalTrustedPeers_error___block_invoke;
    v18[3] = &unk_1E833E8C8;
    v18[4] = &buf;
    v18[5] = &v19;
    [v8 totalTrustedPeers:v10 reply:v18];

    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v20[5];
        *v26 = 138412290;
        v27 = v16;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "Number of trusted Octagon peers: %@", v26, 0xCu);
      }

      v12 = v20[5];
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v14 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (uint64_t)preflightRecoverOctagonUsingRecoveryKey:()Framework recoveryKey:error:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "Preflight using recovery key for context: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  obj[1] = 0;
  if ((SecPasswordValidatePasswordFormat() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:41 description:@"malformed recovery key"];
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 138412290;
      v27 = v11;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "octagon-preflight-recovery-key: recovery failed validation with error:%@", v26, 0xCu);
    }

    if (a5)
    {
      v16 = v11;
      v14 = 0;
      *a5 = v11;
      goto LABEL_19;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v10 = (*(&buf + 1) + 40);
  obj[0] = *(*(&buf + 1) + 40);
  v11 = [v7 makeOTControl:obj];
  objc_storeStrong(v10, obj[0]);
  if (!v11)
  {
    v17 = secLogObjForScope();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(&buf + 1) + 40);
      *v26 = 138412290;
      v27 = v18;
      _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v26, 0xCu);
    }

    if (a5)
    {
      v11 = 0;
      v14 = 0;
      *a5 = *(*(&buf + 1) + 40);
      goto LABEL_19;
    }

    v11 = 0;
    goto LABEL_18;
  }

  v12 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__OTClique_Framework__preflightRecoverOctagonUsingRecoveryKey_recoveryKey_error___block_invoke;
  v20[3] = &unk_1E833E850;
  v20[4] = &v22;
  v20[5] = &buf;
  [v11 preflightRecoverOctagonUsingRecoveryKey:v12 recoveryKey:v8 reply:v20];

  if (a5)
  {
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      *a5 = v13;
    }
  }

  v14 = *(v23 + 24);
LABEL_19:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&buf, 8);

  return v14 & 1;
}

+ (BOOL)recoverWithRecoveryKey:()Framework recoveryKey:error:
{
  v85[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "Recovering account trust using recovery key for context:%@", &buf, 0xCu);
  }

  v75 = 0;
  if (SecPasswordValidatePasswordFormat())
  {
    v74 = 0;
    v10 = [MEMORY[0x1E697AA80] doesRecoveryKeyExistInSOSAndIsCorrect:v7 recoveryKey:v8 error:&v74];
    v11 = v74;
    v73 = 0;
    v12 = [MEMORY[0x1E697AA80] doesRecoveryKeyExistInOctagonAndIsCorrect:v7 recoveryKey:v8 error:&v73];
    v61 = v73;
    if (v61)
    {
      domain = [v61 domain];
      if (![domain isEqualToString:*MEMORY[0x1E697AB20]])
      {
        goto LABEL_27;
      }

      v14 = [v61 code] == 31;

      if (v14)
      {
        userInfo = [v61 userInfo];
        v16 = *MEMORY[0x1E696AA08];
        domain = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        if (domain)
        {
          v13Domain = [domain domain];
          if (![v13Domain isEqualToString:*MEMORY[0x1E697AB28]])
          {
LABEL_26:

            goto LABEL_27;
          }

          v18 = [domain code] == 3;

          if (v18)
          {
            userInfo2 = [domain userInfo];
            v20 = [userInfo2 objectForKeyedSubscript:v16];

            if (v20)
            {
              domain2 = [v20 domain];
              if ([domain2 isEqualToString:*MEMORY[0x1E696A768]])
              {
                v22 = [v20 code] == -25308;

                if (v22)
                {
                  v23 = secLogObjForScope();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v20;
                    _os_log_impl(&dword_1C9430000, v23, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: device is locked %@", &buf, 0xCu);
                  }

                  v24 = v20;
                  if (a5)
                  {
                    v25 = v20;
                    v24 = v20;
                    *a5 = v20;
                  }

                  goto LABEL_102;
                }
              }

              else
              {
              }

              v13Domain = v20;
            }

            else
            {
              v13Domain = 0;
            }

            goto LABEL_26;
          }
        }

LABEL_27:
      }
    }

    if (v10 != 3 && v12 != 3)
    {
      v29 = secLogObjForScope();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9430000, v29, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: recovery key will not work for both SOS and Octagon", &buf, 2u);
      }

      if (!a5)
      {
        goto LABEL_102;
      }

      if (v10 == 1 && v12 == 1)
      {
        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:64 description:@"Recovery key is not registered"];
LABEL_98:
        v28 = 0;
        *a5 = v30;
        goto LABEL_103;
      }

      if (v12 != 2 && v10 != 2)
      {
        if (v61)
        {
          v35 = v61;
          v28 = 0;
          *a5 = v61;
LABEL_103:

          goto LABEL_104;
        }

        v36 = SOSCCIsSOSTrustAndSyncingEnabled();
        if (v11)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        if (v37 == 1)
        {
          v38 = v11;
          v28 = 0;
          *a5 = v11;
          goto LABEL_103;
        }
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is not correct"];
      goto LABEL_98;
    }

    if (v10 != 3)
    {
      goto LABEL_72;
    }

    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v31 = [v8 dataUsingEncoding:4];
      if (!v31)
      {
        if (!a5)
        {
LABEL_102:
          v28 = 0;
          goto LABEL_103;
        }

        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:41 description:@"Malformed recovery key"];
        goto LABEL_98;
      }

      v32 = [v7 sbd];
      v34 = v32;
      if (v32)
      {
        v60 = v32;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v33);
        v60 = [objc_alloc(*(v39 + 3448)) initWithUserActivityLabel:@"octagon-trust-recover-with-recovery-key"];
      }

      v72 = 0;
      v40 = [v60 restoreKeychainWithBackupPassword:v31 error:&v72];
      v41 = v72;
      if (v40)
      {
        v42 = secLogObjForScope();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9430000, v42, OS_LOG_TYPE_DEFAULT, "restoreKeychainWithBackupPassword succeeded", &buf, 2u);
        }
      }

      else
      {
        v43 = secLogObjForScope();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v41;
          _os_log_impl(&dword_1C9430000, v43, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: restoreKeychainWithBackupPassword returned error: %@", &buf, 0xCu);
        }

        if (v12 != 3)
        {
          if (a5)
          {
            if (v41)
            {
              v44 = v41;
              v45 = v41;
            }

            else
            {
              v45 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:66 description:@"Restore Keychain With Backup Password Failed"];
            }

            *a5 = v45;
          }

          goto LABEL_102;
        }
      }
    }

    if (v12 == 1)
    {
      if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0 && [v7 octagonCapableRecordsExist])
      {
        v46 = secLogObjForScope();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9430000, v46, OS_LOG_TYPE_DEFAULT, "Recovery key exists in SOS but not in Octagon and this platform does not support SOS.  Octagon records exist, forcing iCSC restore", &buf, 2u);
        }

        if (!a5)
        {
          goto LABEL_102;
        }

        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:65 description:{@"recover with recovery key configuration not supported, forcing iCSC restore"}];
        goto LABEL_98;
      }

      v47 = 1;
    }

    else
    {
LABEL_72:
      v47 = 0;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy_;
    v84 = __Block_byref_object_dispose_;
    v85[0] = 0;
    obj = 0;
    v48 = [v7 makeOTControl:&obj];
    objc_storeStrong(v85, obj);
    if (v48)
    {
      if (v47)
      {
        v49 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
        *&v76 = 0;
        *(&v76 + 1) = &v76;
        v77 = 0x3032000000;
        v78 = __Block_byref_object_copy_;
        v79 = __Block_byref_object_dispose_;
        v80 = 0;
        v69[0] = 0;
        v69[1] = v69;
        v69[2] = 0x3032000000;
        v69[3] = __Block_byref_object_copy_;
        v69[4] = __Block_byref_object_dispose_;
        v70 = 0;
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke;
        v68[3] = &unk_1E833E760;
        v68[4] = &v76;
        v68[5] = v69;
        [v48 fetchAccountWideSettingsWithForceFetch:1 arguments:v49 reply:v68];
        if ([*(*(&v76 + 1) + 40) hasWalrus])
        {
          walrus = [*(*(&v76 + 1) + 40) walrus];
          enabled = [walrus enabled];
        }

        else
        {
          enabled = 0;
        }

        isGuitarfish = [v7 isGuitarfish];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_2;
        v63[3] = &unk_1E833E8A0;
        p_buf = &buf;
        v64 = v48;
        v65 = v7;
        v66 = v8;
        BYTE1(v59) = enabled;
        LOBYTE(v59) = isGuitarfish;
        [v64 resetAndEstablish:v49 resetReason:5 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:v59 accountIsW:v63 reply:?];

        _Block_object_dispose(v69, 8);
        _Block_object_dispose(&v76, 8);

        goto LABEL_92;
      }

      if (v12 == 3)
      {
        v49 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_151;
        v62[3] = &unk_1E833E7B0;
        v62[4] = &buf;
        [v48 recoverWithRecoveryKey:v49 recoveryKey:v8 reply:v62];
LABEL_92:

        v57 = *(*(&buf + 1) + 40);
        if (a5 && v57)
        {
          *a5 = v57;
          v57 = *(*(&buf + 1) + 40);
        }

        v28 = v57 == 0;
        goto LABEL_96;
      }

      v55 = secLogObjForScope();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v76) = 0;
        _os_log_impl(&dword_1C9430000, v55, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: joining with recovery key failed, recovery key is not correct in Octagon", &v76, 2u);
      }

      if (a5)
      {
        v54 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is not correct"];
        goto LABEL_88;
      }
    }

    else
    {
      v52 = secLogObjForScope();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(*(&buf + 1) + 40);
        LODWORD(v76) = 138412290;
        *(&v76 + 4) = v53;
        _os_log_impl(&dword_1C9430000, v52, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: unable to create otcontrol: %@", &v76, 0xCu);
      }

      if (a5)
      {
        v54 = *(*(&buf + 1) + 40);
LABEL_88:
        v28 = 0;
        *a5 = v54;
LABEL_96:

        _Block_object_dispose(&buf, 8);
        goto LABEL_103;
      }
    }

    v28 = 0;
    goto LABEL_96;
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:41 description:@"Malformed Recovery Key" underlying:v75];

  v26 = secLogObjForScope();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: recovery failed validation with error:%@", &buf, 0xCu);
  }

  if (a5)
  {
    v27 = v11;
    v28 = 0;
    *a5 = v11;
  }

  else
  {
    v28 = 0;
  }

LABEL_104:

  return v28;
}

+ (uint64_t)doesRecoveryKeyExistInOctagonAndIsCorrect:()Framework recoveryKey:error:
{
  v34[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v9 = [v7 makeOTControl:&v26];
  v10 = v26;
  if (v9)
  {
    *&v30 = 0;
    *(&v30 + 1) = &v30;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34[0] = 0;
    obj = 0;
    v11 = [MEMORY[0x1E697AA80] isRecoveryKeySetInOctagon:v7 error:&obj];
    objc_storeStrong(v34, obj);
    if (v11 && !*(*(&v30 + 1) + 40))
    {
      v20 = secLogObjForScope();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9430000, v20, OS_LOG_TYPE_DEFAULT, "recovery key is registered in Octagon, checking if it is correct", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v28 = 0x2020000000;
      v29 = 0;
      v21 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __83__OTClique_Framework__doesRecoveryKeyExistInOctagonAndIsCorrect_recoveryKey_error___block_invoke;
      v24[3] = &unk_1E833E850;
      v24[4] = &v30;
      v24[5] = &buf;
      [v9 preflightRecoverOctagonUsingRecoveryKey:v21 recoveryKey:v8 reply:v24];

      if (*(*(&buf + 1) + 24) && !*(*(&v30 + 1) + 40))
      {
        v18 = 3;
      }

      else
      {
        if (a5)
        {
          v22 = *(*(&v30 + 1) + 40);
          if (v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is incorrect"];
          }

          *a5 = v23;
        }

        v18 = 2;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v12 = secLogObjForScope();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(&v30 + 1) + 40);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: recovery key not registered in Octagon, error: %@", &buf, 0xCu);
      }

      if (a5)
      {
        v14 = *(*(&v30 + 1) + 40);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:64 description:@"Recovery key does not exist in Octagon"];
        }

        *a5 = v15;
      }

      v18 = 1;
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v30) = 138412290;
      *(&v30 + 4) = v10;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: unable to create otcontrol: %@", &v30, 0xCu);
    }

    if (a5)
    {
      v17 = v10;
      v18 = 0;
      *a5 = v10;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

+ (uint64_t)doesRecoveryKeyExistInSOSAndIsCorrect:()Framework recoveryKey:error:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v29 = 0;
  v9 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:v7 error:&v29];
  v10 = v29;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "recovery key is registered in SOS", buf, 2u);
    }

    v16 = [v7 sbd];
    v18 = v16;
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v17);
      v19 = [objc_alloc(*(v20 + 3448)) initWithUserActivityLabel:@"octagon-trust-verify-recovery-key"];
    }

    v21 = v19;

    v28 = 0;
    v22 = [v21 verifyRecoveryKey:v8 error:&v28];
    v23 = v28;
    v12 = v23;
    if (!v22 || v23)
    {
      v25 = secLogObjForScope();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v25, OS_LOG_TYPE_DEFAULT, "recovery key is NOT correct in SOS", buf, 2u);
      }

      if (a5)
      {
        if (v12)
        {
          v26 = v12;
        }

        else
        {
          v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is incorrect"];
        }

        *a5 = v26;
      }

      v24 = 2;
    }

    else
    {
      v24 = 3;
    }
  }

  else
  {
    v12 = v10;
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: Recovery Key not registered in SOS: %@", buf, 0xCu);
    }

    if (a5)
    {
      if (v12)
      {
        v14 = v12;
        *a5 = v12;
      }

      else
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:64 description:@"Recovery key does not exist in Octagon"];
      }
    }

    v24 = 1;
  }

  return v24;
}

+ (uint64_t)isRecoveryKeySet:()Framework error:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Checking recovery key status for context:%@", buf, 0xCu);
  }

  v14 = 0;
  v7 = [MEMORY[0x1E697AA80] isRecoveryKeySetInOctagon:v5 error:&v14];
  v8 = v14;
  v13 = 0;
  v9 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:v5 error:&v13];
  v10 = v13;
  if (a4)
  {
    if ((v9 & 1) == 0 && (v7 & 1) == 0)
    {
      v11 = v8;
      if (v8 || (v11 = v10) != 0)
      {
        *a4 = v11;
      }
    }
  }

  return (v7 | v9) & 1;
}

+ (uint64_t)isRecoveryKeySetInSOS:()Framework error:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Checking SOS recovery key status for context:%@", buf, 0xCu);
  }

  v7 = [v5 sbd];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v8);
    v10 = [objc_alloc(*(v11 + 3448)) initWithUserActivityLabel:@"octagon-trust-is-recovery-key-in-sos"];
  }

  v12 = v10;

  v19 = 0;
  v13 = [v12 isRecoveryKeySet:&v19];
  v14 = v19;
  if (v14)
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "octagon-is-recovery-key-set-in-sos: failed to check the recovery key in SOS: %@", buf, 0xCu);
    }

    if (a4)
    {
      v16 = v14;
      *a4 = v14;
    }
  }

  else
  {
    v17 = secLogObjForScope();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v21) = v13;
      _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "recovery key set in SOS: %{BOOL}d", buf, 8u);
    }
  }

  return v13;
}

+ (uint64_t)isRecoveryKeySetInOctagon:()Framework error:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Checking Octagon recovery key status for context:%@", &buf, 0xCu);
  }

  v20 = 0;
  v7 = [v5 makeOTControl:&v20];
  v8 = v20;
  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v9 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__OTClique_Framework__isRecoveryKeySetInOctagon_error___block_invoke;
    v15[3] = &unk_1E833E850;
    v15[4] = &buf;
    v15[5] = &v16;
    [v7 isRecoveryKeySet:v9 reply:v15];

    if (a4)
    {
      v10 = *(*(&buf + 1) + 40);
      if (v10)
      {
        *a4 = v10;
      }
    }

    v11 = *(v17 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v13 = v8;
      v11 = 0;
      *a4 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

+ (BOOL)setRecoveryKeyWithContext:()Framework recoveryKey:error:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    context = [v7 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "setRecoveryKeyWithContext invoked for context: %@", &buf, 0xCu);
  }

  v20 = 0;
  v11 = [v7 makeOTControl:&v20];
  v12 = v20;
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v13 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__OTClique_Framework__setRecoveryKeyWithContext_recoveryKey_error___block_invoke;
    v19[3] = &unk_1E833E7B0;
    v19[4] = &buf;
    [v11 createRecoveryKey:v13 recoveryKey:v8 reply:v19];

    v14 = *(*(&buf + 1) + 40);
    v15 = v14 == 0;
    if (a5 && v14)
    {
      *a5 = v14;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "failed to make OTControl object: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v17 = v12;
      v15 = 0;
      *a5 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (id)createAndSetRecoveryKeyWithContext:()Framework error:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    context = [v6 context];
    *buf = 138412290;
    v23 = context;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "createAndSetRecoveryKeyWithContext invoked for context: %@", buf, 0xCu);
  }

  v21[1] = 0;
  v9 = SecRKCreateRecoveryKeyString();
  v10 = 0;
  v11 = v10;
  if (!v9 || v10)
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "octagon-create-recovery-key, failed to create recovery key error: %@", buf, 0xCu);
    }

    if (a4)
    {
      v17 = v11;
      v15 = 0;
      *a4 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v21[0] = 0;
    v12 = [self registerRecoveryKeyWithContext:v6 recoveryKey:v9 error:v21];
    v13 = v21[0];
    v14 = v13;
    if (!v12 || v13)
    {
      v18 = secLogObjForScope();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v14;
        _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "octagon-create-recovery-key, failed to register recovery key error: %@", buf, 0xCu);
      }

      v15 = 0;
      if (a4 && v14)
      {
        v19 = v14;
        v15 = 0;
        *a4 = v14;
      }
    }

    else
    {
      v15 = v9;
    }
  }

  return v15;
}

+ (uint64_t)registerRecoveryKeyWithContext:()Framework recoveryKey:error:
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    context = [v7 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "registerRecoveryKeyWithContext invoked for context: %@", &buf, 0xCu);
  }

  v31 = 0;
  v11 = [v7 makeOTControl:&v31];
  v12 = v31;
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = 0;
    v13 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __72__OTClique_Framework__registerRecoveryKeyWithContext_recoveryKey_error___block_invoke;
    v30[3] = &unk_1E833E7B0;
    v30[4] = &buf;
    [v11 createRecoveryKey:v13 recoveryKey:v8 reply:v30];

    v14 = *(*(&buf + 1) + 40);
    if (v14)
    {
      v15 = 0;
      if (a5)
      {
        *a5 = v14;
      }
    }

    else
    {
      v29 = 0;
      LODWORD(v15) = [MEMORY[0x1E697AA80] registerRecoveryKeyInSOSAndBackup:v7 recoveryKey:v8 error:&v29];
      v18 = v29;
      if (v18)
      {
        v15 = 0;
      }

      else
      {
        v15 = v15;
      }

      if ((v15 & 1) == 0)
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x3032000000;
        v26 = __Block_byref_object_copy_;
        v27 = __Block_byref_object_dispose_;
        v28 = 0;
        v19 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __72__OTClique_Framework__registerRecoveryKeyWithContext_recoveryKey_error___block_invoke_97;
        v22[3] = &unk_1E833E7B0;
        v22[4] = &v23;
        [v11 removeRecoveryKey:v19 reply:v22];

        if (a5)
        {
          v20 = v18;
          if (v18 || (v20 = v24[5]) != 0)
          {
            *a5 = v20;
          }
        }

        _Block_object_dispose(&v23, 8);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "failed to make OTControl object: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v17 = v12;
      v15 = 0;
      *a5 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (uint64_t)registerRecoveryKeyInSOSAndBackup:()Framework recoveryKey:error:
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v42[1] = 0;
  v9 = SOSCCThisDeviceIsInCircle();
  if (!SOSCCIsSOSTrustAndSyncingEnabled() || v9)
  {
    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "device is not participating in SOS, skipping recovery key registration", buf, 2u);
    }

LABEL_14:
    v20 = 1;
    goto LABEL_37;
  }

  v42[0] = 0;
  v10 = [MEMORY[0x1E697AA80] ensureBackupKeyExistsinSOS:v42];
  v11 = v42[0];
  v12 = v11;
  if (!v10 || v11)
  {
    if (!a5)
    {
LABEL_36:
      v20 = 0;
      goto LABEL_37;
    }

    v21 = v11;
    v20 = 0;
    *a5 = v12;
  }

  else
  {
    v12 = SecRKCreateRecoveryKeyWithError();
    v13 = 0;
    v14 = v13;
    if (v12 && !v13)
    {
      if ((SecRKRegisterBackupPublicKey() & 1) == 0)
      {
        v33 = secLogObjForScope();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = 0;
          _os_log_impl(&dword_1C9430000, v33, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SecRKRegisterBackupPublicKey() failed: %@", buf, 0xCu);
        }

        if (a5)
        {
          *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:11 description:@"Failed to register backup public key"];
        }

        goto LABEL_36;
      }

      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "successfully registered recovery key for SOS", buf, 2u);
      }

      v16 = [v7 sbd];
      v18 = v16;
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v17);
        v19 = [objc_alloc(*(v34 + 3448)) initWithUserActivityLabel:@"octagon-trust-register-recovery-key"];
      }

      v35 = v19;

      v36 = [v35 backupForRecoveryKeyWithInfo:0];
      if (v36)
      {
        v37 = v36;
        v38 = secLogObjForScope();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v37;
          _os_log_impl(&dword_1C9430000, v38, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key: failed to perform backup: %@", buf, 0xCu);
        }

        if (a5)
        {
          v39 = v37;
          *a5 = v37;
        }

        goto LABEL_36;
      }

      v41 = secLogObjForScope();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v41, OS_LOG_TYPE_DEFAULT, "created iCloud Identity backup", buf, 2u);
      }

      goto LABEL_14;
    }

    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v14;
      _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SecRKCreateRecoveryKeyWithError() failed: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"SecRKCreateRecoveryKeyWithError() failed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [MEMORY[0x1E697AA80] isCloudServicesAvailable];
    Helper_x10__kSecureBackupErrorDomain = gotLoadHelper_x10__kSecureBackupErrorDomain(v24);
    v29 = *(v28 + 3704);
    if (v30)
    {
      v26 = v29;
      v31 = 24;
    }

    else
    {
      v31 = -4;
    }

    v32 = [v25 errorWithDomain:*v26 code:v31 userInfo:{dictionary, Helper_x10__kSecureBackupErrorDomain}];
    if (a5)
    {
      v32 = v32;
      *a5 = v32;
    }

    v20 = 0;
    v12 = v14;
  }

LABEL_37:

  return v20;
}

+ (uint64_t)ensureBackupKeyExistsinSOS:()Framework
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = SOSCCCopyMyPeerInfo();
  if (v4)
  {
    v5 = SOSPeerInfoCopyBackupKey();
    CFRelease(v4);
    if (v5)
    {
      CFRelease(v5);
      v6 = secLogObjForScope();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "backup key already registered", buf, 2u);
      }

      return 1;
    }

    v9 = SecPasswordGenerate();
    v10 = v9;
    if (v9)
    {
      v11 = [v9 dataUsingEncoding:4];
      v12 = SOSCCCopyMyPeerWithNewDeviceRecoverySecret();
      if (v12)
      {
        v13 = v12;
        v14 = secLogObjForScope();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9430000, v14, OS_LOG_TYPE_DEFAULT, "registered backup key", buf, 2u);
        }

        CFRelease(v13);
        return 1;
      }

      v16 = secLogObjForScope();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = 0;
        _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SOSCCCopyMyPeerWithNewDeviceRecoverySecret() failed: %@", buf, 0xCu);
      }

      if (a3)
      {
        *a3 = 0;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = 0;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SecPasswordGenerate() failed: %@", buf, 0xCu);
      }

      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    v8 = secLogObjForScope();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_impl(&dword_1C9430000, v8, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SOSCCCopyMyPeerInfo() failed: %@", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = 0;
    }
  }

  return 0;
}

+ (id)_fetchAccountWideSettingsDefaultWithForceFetch:()Framework useDefault:configuration:error:
{
  v29[2] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = secLogObjForScope();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&dword_1C9430000, v10, OS_LOG_TYPE_DEFAULT, "fetchAccountWideSettings invoked for context:%@ forceFetch:%{BOOL}d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29[0] = 0;
  obj = 0;
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v29, obj);
  if (v11)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v12 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v9];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __101__OTClique_Framework___fetchAccountWideSettingsDefaultWithForceFetch_useDefault_configuration_error___block_invoke;
    v18[3] = &unk_1E833E800;
    v19 = a4;
    v18[4] = &v21;
    v18[5] = buf;
    [v11 fetchAccountWideSettingsWithForceFetch:a3 arguments:v12 reply:v18];

    if (a6)
    {
      v13 = *(*&buf[8] + 40);
      if (v13)
      {
        *a6 = v13;
      }
    }

    v14 = *(*(&v21 + 1) + 40);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*&buf[8] + 40);
      LODWORD(v21) = 138412290;
      *(&v21 + 4) = v16;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v21, 0xCu);
    }

    v14 = 0;
    if (a6)
    {
      *a6 = *(*&buf[8] + 40);
    }
  }

  _Block_object_dispose(buf, 8);

  return v14;
}

+ (uint64_t)invalidateEscrowCache:()Framework error:
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    altDSID = [v5 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "invalidateEscrowCache invoked for context:%@, altdsid:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28[0] = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  obj = 0;
  v9 = [v5 makeOTControl:&obj];
  objc_storeStrong(v28, obj);
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__OTClique_Framework__invalidateEscrowCache_error___block_invoke;
    v17[3] = &unk_1E833E788;
    v17[4] = &v19;
    v17[5] = buf;
    [v9 invalidateEscrowCache:v10 reply:v17];

    if (a4)
    {
      v11 = *(*&buf[8] + 40);
      if (v11)
      {
        *a4 = v11;
      }
    }

    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "invalidateEscrowCache complete", v23, 2u);
    }
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*&buf[8] + 40);
      *v23 = 138412290;
      v24 = v14;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v23, 0xCu);
    }

    if (a4)
    {
      *a4 = *(*&buf[8] + 40);
    }
  }

  v15 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(buf, 8);

  return v15 & 1;
}

+ (id)performSilentEscrowRecovery:()Framework cdpContext:allRecords:error:
{
  v129 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v119 = a4;
  v10 = a5;
  v11 = secLogObjForScope();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    context = [v9 context];
    [v9 altDSID];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v124 = context;
    v125 = 2112;
    v126 = v13;
    _os_log_impl(&dword_1C9430000, v11, OS_LOG_TYPE_DEFAULT, "performSilentEscrowRecovery invoked for context:%@, altdsid:%@", buf, 0x16u);
  }

  v14 = objc_alloc(MEMORY[0x1E69ABBD8]);
  altDSID = [v9 altDSID];
  flowID = [v9 flowID];
  deviceSessionID = [v9 deviceSessionID];
  v18 = *MEMORY[0x1E69ABC10];
  v19 = MetricsOverrideTestsAreEnabled();
  v20 = *MEMORY[0x1E69ABBF0];
  LOBYTE(v109) = 1;
  v21 = [v14 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v18 testsAreEnabled:v19 canSendMetrics:v109 category:*MEMORY[0x1E69ABBF0]];

  if ([self isCloudServicesAvailable])
  {
    v22 = _OctagonSignpostLogSystem();
    v23 = _OctagonSignpostCreate();

    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    v112 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PerformSilentEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v124 = v23;
      _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformSilentEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v27 = [v9 sbd];
    v29 = v27;
    v115 = v10;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v28);
      v30 = [objc_alloc(*(v34 + 3448)) initWithUserActivityLabel:@"octagon-trust-perform-silent-recovery"];
    }

    v117 = v30;

    v35 = [OTEscrowTranslation supportedRestorePath:v119];
    v36 = secLogObjForScope();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v124) = v35;
      _os_log_impl(&dword_1C9430000, v36, OS_LOG_TYPE_DEFAULT, "restore path is supported? %{BOOL}d", buf, 8u);
    }

    v113 = v23;

    v116 = v9;
    if (v35)
    {
      v37 = _OctagonSignpostLogSystem();
      v38 = _OctagonSignpostCreate();

      v39 = _OctagonSignpostLogSystem();
      v40 = v39;
      v41 = v38 - 1;
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "RecoverSilentWithCDPContext", " enableTelemetry=YES ", buf, 2u);
      }

      v42 = v21;

      v43 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v124 = v38;
        _os_log_impl(&dword_1C9430000, v43, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverSilentWithCDPContext  enableTelemetry=YES ", buf, 0xCu);
      }

      v44 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID2 = [v116 altDSID];
      flowID2 = [v116 flowID];
      deviceSessionID2 = [v116 deviceSessionID];
      LOBYTE(v110) = 1;
      v48 = [v44 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:*MEMORY[0x1E69ABC18] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v110 category:v20];

      altDSID3 = [v116 altDSID];
      flowID3 = [v116 flowID];
      deviceSessionID3 = [v116 deviceSessionID];
      v122 = 0;
      v114 = [v117 recoverSilentWithCDPContext:v119 allRecords:v115 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 error:&v122];
      v52 = v122;

      if (v52)
      {
        v111 = v48;
        [v48 sendMetricWithResult:0 error:v52];
        v21 = v42;
        [v42 sendMetricWithResult:0 error:v52];
        Nanoseconds = _OctagonSignpostGetNanoseconds();
        v54 = _OctagonSignpostLogSystem();
        v55 = v54;
        if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
        {
          *buf = 67240192;
          LODWORD(v124) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v55, OS_SIGNPOST_INTERVAL_END, v38, "RecoverSilentWithCDPContext", " OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 8u);
        }

        v56 = _OctagonSignpostLogSystem();
        v10 = v115;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v124 = v38;
          v125 = 2048;
          v126 = Nanoseconds / 1000000000.0;
          v127 = 1026;
          v128 = 0;
          _os_log_impl(&dword_1C9430000, v56, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverSilentWithCDPContext  OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 0x1Cu);
        }

        v57 = _OctagonSignpostGetNanoseconds();
        v58 = _OctagonSignpostLogSystem();
        v59 = v58;
        if (v112 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
        {
          *buf = 67240192;
          LODWORD(v124) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v59, OS_SIGNPOST_INTERVAL_END, v113, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
        }

        v60 = _OctagonSignpostLogSystem();
        v9 = v116;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v124 = v113;
          v125 = 2048;
          v126 = v57 / 1000000000.0;
          v127 = 1026;
          v128 = 0;
          _os_log_impl(&dword_1C9430000, v60, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
        }

        if (a6)
        {
          v61 = v52;
          v33 = 0;
          *a6 = v52;
        }

        else
        {
          v33 = 0;
        }

LABEL_85:
        v31 = v117;
        v95 = v111;
LABEL_89:

        goto LABEL_90;
      }

      v83 = _OctagonSignpostGetNanoseconds();
      v84 = _OctagonSignpostLogSystem();
      v85 = v84;
      v21 = v42;
      if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        *buf = 67240192;
        LODWORD(v124) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v85, OS_SIGNPOST_INTERVAL_END, v38, "RecoverSilentWithCDPContext", " OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 8u);
      }

      v86 = _OctagonSignpostLogSystem();
      v10 = v115;
      v87 = v113;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v124 = v38;
        v125 = 2048;
        v126 = v83 / 1000000000.0;
        v127 = 1026;
        v128 = 1;
        _os_log_impl(&dword_1C9430000, v86, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverSilentWithCDPContext  OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 0x1Cu);
      }

      [v48 sendMetricWithResult:1 error:0];
    }

    else
    {
      v111 = [OTEscrowTranslation CDPRecordContextToDictionary:v119];
      v62 = _OctagonSignpostLogSystem();
      v63 = _OctagonSignpostCreate();

      v64 = _OctagonSignpostLogSystem();
      v65 = v64;
      v66 = v63 - 1;
      if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v65, OS_SIGNPOST_INTERVAL_BEGIN, v63, "PerformRecoveryFromSBD", " enableTelemetry=YES ", buf, 2u);
      }

      v67 = v21;

      v68 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v124 = v63;
        _os_log_impl(&dword_1C9430000, v68, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformRecoveryFromSBD  enableTelemetry=YES ", buf, 0xCu);
      }

      v69 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID4 = [v9 altDSID];
      flowID4 = [v9 flowID];
      deviceSessionID4 = [v9 deviceSessionID];
      LOBYTE(v110) = 1;
      v73 = [v69 initWithKeychainCircleMetrics:0 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:*MEMORY[0x1E69ABC28] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v110 category:v20];

      v121 = 0;
      v48 = v111;
      v52 = [v117 recoverWithInfo:v111 results:&v121];
      v114 = v121;
      if (v52)
      {
        [v73 sendMetricWithResult:0 error:v52];
        v21 = v67;
        [v67 sendMetricWithResult:0 error:v52];
        v74 = _OctagonSignpostGetNanoseconds();
        v75 = _OctagonSignpostLogSystem();
        v76 = v75;
        v10 = v115;
        if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
        {
          *buf = 67240192;
          LODWORD(v124) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v76, OS_SIGNPOST_INTERVAL_END, v63, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
        }

        v77 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v124 = v63;
          v125 = 2048;
          v126 = v74 / 1000000000.0;
          v127 = 1026;
          v128 = 0;
          _os_log_impl(&dword_1C9430000, v77, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
        }

        v78 = _OctagonSignpostGetNanoseconds();
        v79 = _OctagonSignpostLogSystem();
        v80 = v79;
        if (v112 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
        {
          *buf = 67240192;
          LODWORD(v124) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v80, OS_SIGNPOST_INTERVAL_END, v113, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
        }

        v81 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v124 = v113;
          v125 = 2048;
          v126 = v78 / 1000000000.0;
          v127 = 1026;
          v128 = 0;
          _os_log_impl(&dword_1C9430000, v81, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
        }

        if (a6)
        {
          v82 = v52;
          *a6 = v52;
        }

        v33 = 0;
        v9 = v116;
        goto LABEL_85;
      }

      v88 = _OctagonSignpostGetNanoseconds();
      v89 = _OctagonSignpostLogSystem();
      v90 = v89;
      v10 = v115;
      v21 = v67;
      if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
      {
        *buf = 67240192;
        LODWORD(v124) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v90, OS_SIGNPOST_INTERVAL_END, v63, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
      }

      v91 = _OctagonSignpostLogSystem();
      v87 = v113;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v124 = v63;
        v125 = 2048;
        v126 = v88 / 1000000000.0;
        v127 = 1026;
        v128 = 1;
        _os_log_impl(&dword_1C9430000, v91, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
      }

      [v73 sendMetricWithResult:1 error:0];
    }

    Helper_x8__kSecureBackupRecordLabelKey = gotLoadHelper_x8__kSecureBackupRecordLabelKey(v92);
    v52 = [v114 objectForKeyedSubscript:{**(v94 + 3880), Helper_x8__kSecureBackupRecordLabelKey}];
    v95 = [MEMORY[0x1E697AA80] recordMatchingLabel:v52 allRecords:v10];
    v120 = 0;
    v96 = [MEMORY[0x1E697AA80] handleRecoveryResults:v116 recoveredInformation:v114 record:v95 performedSilentBurn:1 error:&v120];
    v97 = v120;
    v98 = v97;
    if (!v96 || v97)
    {
      if (!v97)
      {
        v98 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:80 description:@"Failed to handle recovery results"];
      }

      [v21 sendMetricWithResult:0 error:v98];
      v103 = _OctagonSignpostGetNanoseconds();
      v104 = _OctagonSignpostLogSystem();
      v105 = v104;
      if (v112 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
      {
        *buf = 67240192;
        LODWORD(v124) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v105, OS_SIGNPOST_INTERVAL_END, v87, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
      }

      v106 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v124 = v87;
        v125 = 2048;
        v126 = v103 / 1000000000.0;
        v127 = 1026;
        v128 = 0;
        _os_log_impl(&dword_1C9430000, v106, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
      }

      if (a6)
      {
        v107 = v98;
        v33 = 0;
        *a6 = v98;
      }

      else
      {
        v33 = 0;
      }

      v9 = v116;
    }

    else
    {
      [v21 sendMetricWithResult:1 error:0];
      v99 = _OctagonSignpostGetNanoseconds();
      v100 = _OctagonSignpostLogSystem();
      v101 = v100;
      if (v112 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
      {
        *buf = 67240192;
        LODWORD(v124) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v101, OS_SIGNPOST_INTERVAL_END, v87, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
      }

      v102 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v124 = v87;
        v125 = 2048;
        v126 = v99 / 1000000000.0;
        v127 = 1026;
        v128 = 1;
        _os_log_impl(&dword_1C9430000, v102, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
      }

      v33 = v96;
      v98 = 0;
      v9 = v116;
    }

    v31 = v117;
    goto LABEL_89;
  }

  v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  [v21 sendMetricWithResult:0 error:v31];
  if (a6)
  {
    v32 = v31;
    v33 = 0;
    *a6 = v31;
  }

  else
  {
    v33 = 0;
  }

LABEL_90:

  return v33;
}

+ (id)recordMatchingLabel:()Framework allRecords:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        label = [v10 label];
        v12 = [label isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)performEscrowRecovery:()Framework cdpContext:escrowRecord:error:
{
  v134 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v124 = a4;
  v10 = a5;
  v11 = secLogObjForScope();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    context = [v9 context];
    [v9 altDSID];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v129 = context;
    v130 = 2112;
    v131 = v13;
    _os_log_impl(&dword_1C9430000, v11, OS_LOG_TYPE_DEFAULT, "performEscrowRecovery invoked for context:%@, altdsid:%@", buf, 0x16u);
  }

  v14 = objc_alloc(MEMORY[0x1E69ABBD8]);
  altDSID = [v9 altDSID];
  flowID = [v9 flowID];
  deviceSessionID = [v9 deviceSessionID];
  v18 = *MEMORY[0x1E69ABC08];
  v19 = MetricsOverrideTestsAreEnabled();
  v20 = *MEMORY[0x1E69ABBF0];
  LOBYTE(v112) = 1;
  v21 = [v14 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v18 testsAreEnabled:v19 canSendMetrics:v112 category:*MEMORY[0x1E69ABBF0]];

  if ([self isCloudServicesAvailable])
  {
    v22 = _OctagonSignpostLogSystem();
    v23 = _OctagonSignpostCreate();

    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    v118 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PerformEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v129 = v23;
      _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v27 = [v9 sbd];
    v29 = v27;
    v122 = v10;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v28);
      v30 = [objc_alloc(*(v35 + 3448)) initWithUserActivityLabel:@"octagon-trust-perform-recovery"];
    }

    v120 = v30;

    v36 = [OTEscrowTranslation supportedRestorePath:v124];
    v37 = secLogObjForScope();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v129) = v36;
      _os_log_impl(&dword_1C9430000, v37, OS_LOG_TYPE_DEFAULT, "restore path is supported? %{BOOL}d", buf, 8u);
    }

    spid = v23;

    if (v36)
    {
      v38 = _OctagonSignpostLogSystem();
      v39 = _OctagonSignpostCreate();

      v40 = _OctagonSignpostLogSystem();
      v41 = v40;
      v42 = v39 - 1;
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "RecoverWithCDPContext", " enableTelemetry=YES ", buf, 2u);
      }

      v116 = v21;

      v43 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v129 = v39;
        _os_log_impl(&dword_1C9430000, v43, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverWithCDPContext  enableTelemetry=YES ", buf, 0xCu);
      }

      v44 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID2 = [v9 altDSID];
      flowID2 = [v9 flowID];
      deviceSessionID2 = [v9 deviceSessionID];
      LOBYTE(v113) = 1;
      v114 = [v44 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:*MEMORY[0x1E69ABC20] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v113 category:v20];

      altDSID3 = [v9 altDSID];
      flowID3 = [v9 flowID];
      deviceSessionID3 = [v9 deviceSessionID];
      v127 = 0;
      v32 = v120;
      v51 = [v120 recoverWithCDPContext:v124 escrowRecord:v122 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 error:&v127];
      v52 = v127;

      v53 = _OctagonSignpostGetNanoseconds() / 1000000000.0;
      v54 = _OctagonSignpostLogSystem();
      v55 = v54;
      v121 = v51;
      if (!v51 || v52)
      {
        v21 = v116;
        if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
        {
          *buf = 67240192;
          LODWORD(v129) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v55, OS_SIGNPOST_INTERVAL_END, v39, "RecoverWithCDPContext", " OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 8u);
        }

        v91 = _OctagonSignpostLogSystem();
        v10 = v122;
        v59 = v114;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v129 = v39;
          v130 = 2048;
          v131 = v53;
          v132 = 1026;
          v133 = 0;
          _os_log_impl(&dword_1C9430000, v91, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverWithCDPContext  OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 0x1Cu);
        }

        if (!v52)
        {
          v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:78 description:@"Failed to recover using CDP context"];
        }

        if (a6)
        {
          v92 = v52;
          *a6 = v52;
        }

        [v114 sendMetricWithResult:0 error:v52];
        [v116 sendMetricWithResult:0 error:v52];
        Nanoseconds = _OctagonSignpostGetNanoseconds();
        v94 = _OctagonSignpostLogSystem();
        v95 = v94;
        if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
        {
          *buf = 67240192;
          LODWORD(v129) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v95, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v96 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v129 = spid;
          v130 = 2048;
          v131 = Nanoseconds / 1000000000.0;
          v132 = 1026;
          v133 = 0;
          _os_log_impl(&dword_1C9430000, v96, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        goto LABEL_93;
      }

      v21 = v116;
      v56 = a6;
      if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
      {
        *buf = 67240192;
        LODWORD(v129) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v55, OS_SIGNPOST_INTERVAL_END, v39, "RecoverWithCDPContext", " OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 8u);
      }

      v57 = _OctagonSignpostLogSystem();
      v10 = v122;
      v58 = spid;
      v59 = v114;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v129 = v39;
        v130 = 2048;
        v131 = v53;
        v132 = 1026;
        v133 = 1;
        _os_log_impl(&dword_1C9430000, v57, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverWithCDPContext  OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 0x1Cu);
      }

      [v114 sendMetricWithResult:1 error:0];
    }

    else
    {
      v60 = v21;
      v61 = [OTEscrowTranslation CDPRecordContextToDictionary:v124];
      v59 = [v61 mutableCopy];

      escrowInformationMetadata = [v10 escrowInformationMetadata];
      v63 = [OTEscrowTranslation metadataToDictionary:escrowInformationMetadata];

      Helper_x8__kSecureBackupMetadataKey = gotLoadHelper_x8__kSecureBackupMetadataKey(v64);
      v117 = v63;
      [v59 setObject:v63 forKeyedSubscript:{**(v66 + 3816), Helper_x8__kSecureBackupMetadataKey}];
      recordId = [v122 recordId];
      Helper_x8__kSecureBackupRecordIDKey = gotLoadHelper_x8__kSecureBackupRecordIDKey(v68);
      [v59 setObject:recordId forKeyedSubscript:{**(v70 + 3872), Helper_x8__kSecureBackupRecordIDKey}];

      v71 = secLogObjForScope();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v129 = v59;
        _os_log_impl(&dword_1C9430000, v71, OS_LOG_TYPE_DEFAULT, "using sbdRecoveryArguments: %@", buf, 0xCu);
      }

      v72 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID4 = [v9 altDSID];
      flowID4 = [v9 flowID];
      deviceSessionID4 = [v9 deviceSessionID];
      LOBYTE(v113) = 1;
      v115 = [v72 initWithKeychainCircleMetrics:0 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:*MEMORY[0x1E69ABC28] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v113 category:v20];

      v76 = _OctagonSignpostLogSystem();
      v77 = _OctagonSignpostCreate();

      v78 = _OctagonSignpostLogSystem();
      v79 = v78;
      v80 = v77 - 1;
      if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v77, "PerformRecoveryFromSBD", " enableTelemetry=YES ", buf, 2u);
      }

      v81 = _OctagonSignpostLogSystem();
      v21 = v60;
      v32 = v120;
      v56 = a6;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v129 = v77;
        _os_log_impl(&dword_1C9430000, v81, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformRecoveryFromSBD  enableTelemetry=YES ", buf, 0xCu);
      }

      v126 = 0;
      v52 = [v120 recoverWithInfo:v59 results:&v126];
      v121 = v126;
      if (!v121 || v52)
      {
        if (!v52)
        {
          v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:79 description:@"Failed to recover with info"];
        }

        if (a6)
        {
          v97 = v52;
          *a6 = v52;
        }

        v98 = _OctagonSignpostGetNanoseconds();
        v99 = _OctagonSignpostLogSystem();
        v100 = v99;
        if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
        {
          *buf = 67240192;
          LODWORD(v129) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v100, OS_SIGNPOST_INTERVAL_END, v77, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
        }

        v101 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v129 = v77;
          v130 = 2048;
          v131 = v98 / 1000000000.0;
          v132 = 1026;
          v133 = 0;
          _os_log_impl(&dword_1C9430000, v101, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
        }

        v102 = _OctagonSignpostGetNanoseconds();
        v103 = _OctagonSignpostLogSystem();
        v104 = v103;
        v21 = v60;
        if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
        {
          *buf = 67240192;
          LODWORD(v129) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v104, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v105 = _OctagonSignpostLogSystem();
        v32 = v120;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v129 = spid;
          v130 = 2048;
          v131 = v102 / 1000000000.0;
          v132 = 1026;
          v133 = 0;
          _os_log_impl(&dword_1C9430000, v105, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        [v115 sendMetricWithResult:0 error:v52];
        [v60 sendMetricWithResult:0 error:v52];

        v34 = 0;
        v10 = v122;
        goto LABEL_94;
      }

      v82 = _OctagonSignpostGetNanoseconds();
      v83 = _OctagonSignpostLogSystem();
      v84 = v83;
      if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
      {
        *buf = 67240192;
        LODWORD(v129) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v84, OS_SIGNPOST_INTERVAL_END, v77, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
      }

      v85 = _OctagonSignpostLogSystem();
      v10 = v122;
      v58 = spid;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v129 = v77;
        v130 = 2048;
        v131 = v82 / 1000000000.0;
        v132 = 1026;
        v133 = 1;
        _os_log_impl(&dword_1C9430000, v85, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
      }

      [v115 sendMetricWithResult:1 error:0];
    }

    v125 = 0;
    v59 = [MEMORY[0x1E697AA80] handleRecoveryResults:v9 recoveredInformation:v121 record:v10 performedSilentBurn:0 error:&v125];
    v86 = v125;
    v52 = v86;
    if (v59 && !v86)
    {
      v87 = _OctagonSignpostGetNanoseconds();
      v88 = _OctagonSignpostLogSystem();
      v89 = v88;
      if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
      {
        *buf = 67240192;
        LODWORD(v129) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v89, OS_SIGNPOST_INTERVAL_END, v58, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
      }

      v90 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v129 = v58;
        v130 = 2048;
        v131 = v87 / 1000000000.0;
        v132 = 1026;
        v133 = 1;
        _os_log_impl(&dword_1C9430000, v90, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
      }

      [v21 sendMetricWithResult:1 error:0];
      v59 = v59;
      v52 = 0;
      v34 = v59;
      goto LABEL_94;
    }

    if (!v86)
    {
      v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:80 description:@"Failed to handle recovery results"];
    }

    v106 = _OctagonSignpostGetNanoseconds();
    v107 = _OctagonSignpostLogSystem();
    v108 = v107;
    if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
    {
      *buf = 67240192;
      LODWORD(v129) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v108, OS_SIGNPOST_INTERVAL_END, v58, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
    }

    v109 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v129 = v58;
      v130 = 2048;
      v131 = v106 / 1000000000.0;
      v132 = 1026;
      v133 = 0;
      _os_log_impl(&dword_1C9430000, v109, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
    }

    [v21 sendMetricWithResult:0 error:v52];
    if (v56)
    {
      v110 = v52;
      v34 = 0;
      *v56 = v52;
LABEL_94:

      goto LABEL_95;
    }

LABEL_93:
    v34 = 0;
    goto LABEL_94;
  }

  v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v32 = v31;
  if (a6)
  {
    v33 = v31;
    *a6 = v32;
  }

  [v21 sendMetricWithResult:0 error:v32];
  v34 = 0;
LABEL_95:

  return v34;
}

+ (id)handleRecoveryResults:()Framework recoveredInformation:record:performedSilentBurn:error:
{
  v152 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v123 = a4;
  v122 = a5;
  v13 = objc_alloc(MEMORY[0x1E69ABBD8]);
  altDSID = [v12 altDSID];
  flowID = [v12 flowID];
  deviceSessionID = [v12 deviceSessionID];
  v17 = *MEMORY[0x1E69ABBF8];
  v18 = MetricsOverrideTestsAreEnabled();
  v19 = *MEMORY[0x1E69ABBF0];
  LOBYTE(v106) = 1;
  v20 = [v13 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v17 testsAreEnabled:v18 canSendMetrics:v106 category:*MEMORY[0x1E69ABBF0]];

  if ([self isCloudServicesAvailable])
  {
    v116 = v19;
    v120 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v12];
    otControl = [v12 otControl];

    if (otControl)
    {
      otControl2 = [v12 otControl];
      v22 = 0;
    }

    else
    {
      v133 = 0;
      otControl2 = [v12 makeOTControl:&v133];
      v22 = v133;
    }

    v119 = v22;
    if (!otControl2)
    {
      v48 = secLogObjForScope();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v119;
        _os_log_impl(&dword_1C9430000, v48, OS_LOG_TYPE_DEFAULT, "octagontrust-handleRecoveryResults: unable to create otcontrol: %@", &buf, 0xCu);
      }

      v49 = v119;
      if (a7)
      {
        v50 = v119;
        v49 = v119;
        *a7 = v119;
      }

      [v20 sendMetricWithResult:0 error:v49];
      v26 = 0;
      goto LABEL_85;
    }

    v118 = [v123 objectForKeyedSubscript:@"bottleID"];
    v115 = [v123 objectForKeyedSubscript:@"bottleValid"];
    v27 = [v123 objectForKeyedSubscript:@"EscrowServiceEscrowData"];
    v117 = [v27 objectForKeyedSubscript:@"BottledPeerEntropy"];

    if (v117)
    {
      v28 = v118 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v114 = v29;
    if (v28 || ![v115 isEqualToString:@"valid"])
    {
      v39 = secLogObjForScope();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v118;
        _os_log_impl(&dword_1C9430000, v39, OS_LOG_TYPE_DEFAULT, "bottle %@ is not valid, resetting octagon", &buf, 0xCu);
      }

      v40 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID2 = [v12 altDSID];
      flowID2 = [v12 flowID];
      deviceSessionID2 = [v12 deviceSessionID];
      LOBYTE(v107) = 1;
      v44 = [v40 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:*MEMORY[0x1E69ABC00] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v107 category:v19];

      v45 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v12];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v148 = 0x3032000000;
      v149 = __Block_byref_object_copy_;
      v150 = __Block_byref_object_dispose_;
      v151 = 0;
      *&v142 = 0;
      *(&v142 + 1) = &v142;
      v143 = 0x3032000000;
      v144 = __Block_byref_object_copy_;
      v145 = __Block_byref_object_dispose_;
      v146 = 0;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __99__OTClique_Framework__handleRecoveryResults_recoveredInformation_record_performedSilentBurn_error___block_invoke_37;
      v126[3] = &unk_1E833E760;
      v126[4] = &buf;
      v126[5] = &v142;
      [otControl2 fetchAccountWideSettingsWithForceFetch:1 arguments:v45 reply:v126];
      if ([*(*(&buf + 1) + 40) hasWalrus])
      {
        walrus = [*(*(&buf + 1) + 40) walrus];
        enabled = [walrus enabled];
      }

      else
      {
        enabled = 0;
      }

      isGuitarfish = [v12 isGuitarfish];
      altDSID3 = [v12 altDSID];
      flowID3 = [v12 flowID];
      deviceSessionID3 = [v12 deviceSessionID];
      v125 = 0;
      LOBYTE(v110) = 1;
      LOBYTE(v108) = enabled;
      [v120 resetAndEstablish:3 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:isGuitarfish accountIsW:v108 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 canSendMetrics:v110 error:&v125];
      v55 = v125;

      if (v55)
      {
        v56 = secLogObjForScope();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v140 = 138412290;
          v141 = v55;
          _os_log_impl(&dword_1C9430000, v56, OS_LOG_TYPE_DEFAULT, "octagontrust-handleRecoveryResults: failed to reset octagon: %@", v140, 0xCu);
        }

        if (a7)
        {
          v57 = v55;
          *a7 = v55;
        }

        [v44 sendMetricWithResult:0 error:v55];
        [v20 sendMetricWithResult:0 error:v55];
      }

      else
      {
        v58 = secLogObjForScope();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *v140 = 0;
          _os_log_impl(&dword_1C9430000, v58, OS_LOG_TYPE_DEFAULT, "reset octagon succeeded", v140, 2u);
        }

        [v44 sendMetricWithResult:1 error:0];
      }

      _Block_object_dispose(&v142, 8);
      _Block_object_dispose(&buf, 8);

      if (v55)
      {
        goto LABEL_56;
      }

      v111 = 1;
      goto LABEL_58;
    }

    v30 = secLogObjForScope();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v118;
      _os_log_impl(&dword_1C9430000, v30, OS_LOG_TYPE_DEFAULT, "recovering from bottle: %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v148 = 0x3032000000;
    v149 = __Block_byref_object_copy_;
    v150 = __Block_byref_object_dispose_;
    v151 = 0;
    if (a6)
    {
      v31 = _OctagonSignpostLogSystem();
      v32 = _OctagonSignpostCreate();
      v112 = v33;
      v34 = v32;

      v35 = _OctagonSignpostLogSystem();
      v36 = v35;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        LOWORD(v142) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PerformOctagonJoinForSilent", " enableTelemetry=YES ", &v142, 2u);
      }

      v37 = _OctagonSignpostLogSystem();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LODWORD(v142) = 134217984;
      *(&v142 + 4) = v34;
      v38 = "BEGIN [%lld]: PerformOctagonJoinForSilent  enableTelemetry=YES ";
    }

    else
    {
      v59 = _OctagonSignpostLogSystem();
      v60 = _OctagonSignpostCreate();
      v112 = v61;
      v34 = v60;

      v62 = _OctagonSignpostLogSystem();
      v63 = v62;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
      {
        LOWORD(v142) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v63, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PerformOctagonJoinForNonSilent", " enableTelemetry=YES ", &v142, 2u);
      }

      v37 = _OctagonSignpostLogSystem();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LODWORD(v142) = 134217984;
      *(&v142 + 4) = v34;
      v38 = "BEGIN [%lld]: PerformOctagonJoinForNonSilent  enableTelemetry=YES ";
    }

    _os_log_impl(&dword_1C9430000, v37, OS_LOG_TYPE_DEFAULT, v38, &v142, 0xCu);
LABEL_52:

    v64 = objc_alloc(MEMORY[0x1E69ABBD8]);
    altDSID4 = [v12 altDSID];
    flowID4 = [v12 flowID];
    deviceSessionID4 = [v12 deviceSessionID];
    LOBYTE(v107) = 1;
    v68 = [v64 initWithKeychainCircleMetrics:0 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:*MEMORY[0x1E69ABC30] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v107 category:v116];

    v69 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v12];
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __99__OTClique_Framework__handleRecoveryResults_recoveredInformation_record_performedSilentBurn_error___block_invoke;
    v127[3] = &unk_1E833E738;
    v70 = v68;
    v128 = v70;
    p_buf = &buf;
    v132 = a6;
    v130 = v34;
    v131 = v112;
    [otControl2 restoreFromBottle:v69 entropy:v117 bottleID:v118 reply:v127];

    v71 = *(*(&buf + 1) + 40);
    if (v71)
    {
      if (a7)
      {
        v72 = v71;
        *a7 = v71;
        v71 = *(*(&buf + 1) + 40);
      }

      [v20 sendMetricWithResult:0 error:v71];

      _Block_object_dispose(&buf, 8);
LABEL_56:
      v26 = 0;
LABEL_84:

LABEL_85:
      goto LABEL_86;
    }

    _Block_object_dispose(&buf, 8);
    v111 = 0;
LABEL_58:
    v73 = [v12 sbd];
    v75 = v73;
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v74);
      v76 = [objc_alloc(*(v77 + 3448)) initWithUserActivityLabel:@"octagon-trust-restore"];
    }

    v78 = v76;

    v79 = [MEMORY[0x1E695DFA8] set];
    [v79 addObject:@"iCloudIdentity"];
    [v79 addObject:@"PCS-MasterKey"];
    [v79 addObject:@"KeychainV0"];
    Helper_x8__kEscrowServiceRecordDataKey = gotLoadHelper_x8__kEscrowServiceRecordDataKey(v80);
    v83 = [v123 objectForKeyedSubscript:{**(v82 + 3512), Helper_x8__kEscrowServiceRecordDataKey}];
    if (v83)
    {
      Helper_x8__kSecureBackupKeybagDigestKey = gotLoadHelper_x8__kSecureBackupKeybagDigestKey(v84);
      v87 = [v83 objectForKeyedSubscript:{**(v86 + 3800), Helper_x8__kSecureBackupKeybagDigestKey}];
      Helper_x8__kSecureBackupBagPasswordKey = gotLoadHelper_x8__kSecureBackupBagPasswordKey(v88);
      v113 = [v83 objectForKeyedSubscript:{**(v90 + 3632), Helper_x8__kSecureBackupBagPasswordKey}];
      if (v87 && v113)
      {
        if (v114 && ([v115 isEqualToString:@"valid"] & 1) != 0)
        {
          v111 = 1;
        }

        v91 = objc_alloc(MEMORY[0x1E69ABBD8]);
        altDSID5 = [v12 altDSID];
        flowID5 = [v12 flowID];
        deviceSessionID5 = [v12 deviceSessionID];
        LOBYTE(v109) = 1;
        v95 = [v91 initWithKeychainCircleMetrics:0 altDSID:altDSID5 flowID:flowID5 deviceSessionID:deviceSessionID5 eventName:*MEMORY[0x1E69ABC38] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v109 category:v116];

        v124 = 0;
        [v78 restoreKeychainAsyncWithPassword:v113 keybagDigest:v87 haveBottledPeer:v111 viewsNotToBeRestored:v79 error:&v124];
        v96 = v124;
        if (v96)
        {
          v97 = secLogObjForScope();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v96;
            _os_log_impl(&dword_1C9430000, v97, OS_LOG_TYPE_DEFAULT, "octagontrust-handleRecoveryResults: error restoring keychain items: %@", &buf, 0xCu);
          }

          [v95 sendMetricWithResult:0 error:v96];
        }

        else
        {
          [v95 sendMetricWithResult:1 error:0];
        }

        [v20 sendMetricWithResult:1 error:0];
        v104 = v120;
      }

      else
      {
        v101 = secLogObjForScope();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9430000, v101, OS_LOG_TYPE_DEFAULT, "unable to request keychain restore, digest or password missing", &buf, 2u);
        }

        if (v87)
        {
          v134 = *MEMORY[0x1E69ABC48];
          v135 = MEMORY[0x1E695E118];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        }

        else
        {
          v136 = *MEMORY[0x1E69ABC40];
          v137 = MEMORY[0x1E695E118];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
        }
        v102 = ;
        [v20 addMetrics:v102];

        [v20 sendMetricWithResult:1 error:0];
        v103 = v120;
      }
    }

    else
    {
      v98 = secLogObjForScope();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9430000, v98, OS_LOG_TYPE_DEFAULT, "unable to request keychain restore, record data missing", &buf, 2u);
      }

      v138 = *MEMORY[0x1E69ABC50];
      v139 = MEMORY[0x1E695E118];
      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      [v20 addMetrics:v99];

      [v20 sendMetricWithResult:1 error:0];
      v100 = v120;
    }

    v26 = v120;
    goto LABEL_84;
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v24 = v23;
  if (a7)
  {
    v25 = v23;
    *a7 = v24;
  }

  [v20 sendMetricWithResult:0 error:v24];

  v26 = 0;
LABEL_86:

  return v26;
}

+ (id)fetchEscrowRecords:()Framework error:
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    altDSID = [v5 altDSID];
    v11 = 138412546;
    v12 = context;
    v13 = 2112;
    v14 = altDSID;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "fetching filtered escrow records for context:%@, altdsid:%@", &v11, 0x16u);
  }

  v9 = [MEMORY[0x1E697AA80] fetchAndHandleEscrowRecords:v5 shouldFilter:1 error:a4];

  return v9;
}

+ (id)fetchAllEscrowRecords:()Framework error:
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    altDSID = [v5 altDSID];
    v11 = 138412546;
    v12 = context;
    v13 = 2112;
    v14 = altDSID;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "fetching all escrow records for context :%@, altdsid:%@", &v11, 0x16u);
  }

  v9 = [MEMORY[0x1E697AA80] fetchAndHandleEscrowRecords:v5 shouldFilter:0 error:a4];

  return v9;
}

+ (NSObject)fetchAndHandleEscrowRecords:()Framework shouldFilter:error:
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _OctagonSignpostLogSystem();
  v8 = _OctagonSignpostCreate();

  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  v73 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9430000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchEscrowRecords", " enableTelemetry=YES ", buf, 2u);
  }

  serialNumber2 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(serialNumber2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&dword_1C9430000, serialNumber2, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEscrowRecords  enableTelemetry=YES ", buf, 0xCu);
  }

  v83 = 0;
  serialNumber5 = [MEMORY[0x1E697AA80] fetchEscrowRecordsInternal:v6 error:&v83];
  v74 = v83;
  if (v74)
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v74;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "octagontrust-fetchAndHandleEscrowRecords: failed to fetch escrow records: %@", buf, 0xCu);
    }

    if (a5)
    {
      *a5 = v74;
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v15 = _OctagonSignpostLogSystem();
    v16 = v15;
    if (v73 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v16, OS_SIGNPOST_INTERVAL_END, v8, "FetchEscrowRecords", " OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 8u);
    }

    array = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v8;
      v86 = 2048;
      v87 = Nanoseconds / 1000000000.0;
      v88 = 1026;
      v89 = 0;
      _os_log_impl(&dword_1C9430000, array, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowRecords  OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 0x1Cu);
    }

    v18 = 0;
    goto LABEL_68;
  }

  v70 = v8;
  v71 = v6;
  array = [MEMORY[0x1E695DF70] array];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v69 = serialNumber5;
  obj = serialNumber5;
  v78 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v78)
  {
    v77 = *v80;
    v76 = array;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v80 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [[OTEscrowRecord alloc] initWithData:*(*(&v79 + 1) + 8 * i)];
        escrowInformationMetadata = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        bottleValidity = [escrowInformationMetadata bottleValidity];
        if (bottleValidity)
        {
          v23 = bottleValidity;
          escrowInformationMetadata2 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          bottleValidity2 = [escrowInformationMetadata2 bottleValidity];
          v26 = [bottleValidity2 isEqualToString:&stru_1F48F2A78];

          if (!v26)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        recordViability = [(OTEscrowRecord *)v20 recordViability];
        if (recordViability <= 2)
        {
          v28 = off_1E833E910[recordViability];
          escrowInformationMetadata3 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          [escrowInformationMetadata3 setBottleValidity:v28];
        }

LABEL_28:
        recordId = [(OTEscrowRecord *)v20 recordId];
        if (!recordId || (v31 = recordId, -[OTEscrowRecord recordId](v20, "recordId"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isEqualToString:&stru_1F48F2A78], v32, v31, v33))
        {
          label = [(OTEscrowRecord *)v20 label];
          v35 = [label stringByReplacingOccurrencesOfString:*MEMORY[0x1E697AAD8] withString:&stru_1F48F2A78];
          v36 = [v35 mutableCopy];
          [(OTEscrowRecord *)v20 setRecordId:v36];
        }

        serialNumber = [(OTEscrowRecord *)v20 serialNumber];
        if (serialNumber)
        {
          serialNumber2 = [(OTEscrowRecord *)v20 serialNumber];
          if (![serialNumber2 isEqualToString:&stru_1F48F2A78])
          {
            goto LABEL_39;
          }
        }

        escrowInformationMetadata4 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        peerInfo = [escrowInformationMetadata4 peerInfo];
        if (!peerInfo)
        {

          if (!serialNumber)
          {
            goto LABEL_40;
          }

LABEL_39:

          goto LABEL_40;
        }

        v40 = peerInfo;
        escrowInformationMetadata5 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        peerInfo2 = [escrowInformationMetadata5 peerInfo];
        v43 = [peerInfo2 length];

        if (serialNumber)
        {
        }

        array = v76;
        if (v43)
        {
          escrowInformationMetadata6 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          peerInfo3 = [escrowInformationMetadata6 peerInfo];
          v46 = SOSPeerInfoCreateFromData();

          v55 = SOSPeerInfoCopySerialNumber();
          [(OTEscrowRecord *)v20 setSerialNumber:v55];

          serialNumber3 = [(OTEscrowRecord *)v20 serialNumber];
          if (!serialNumber3 || (v57 = serialNumber3, -[OTEscrowRecord serialNumber](v20, "serialNumber"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v58 isEqualToString:&stru_1F48F2A78], v58, v57, v59))
          {
            v60 = secLogObjForScope();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9430000, v60, OS_LOG_TYPE_DEFAULT, "attempted to use peer info's serial number and failed, using metadata", buf, 2u);
            }

            escrowInformationMetadata7 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
            serial = [escrowInformationMetadata7 serial];
            [(OTEscrowRecord *)v20 setSerialNumber:serial];
          }

          if (v46)
          {
            CFRelease(v46);
          }

          goto LABEL_57;
        }

LABEL_40:
        serialNumber4 = [(OTEscrowRecord *)v20 serialNumber];
        if (serialNumber4)
        {
          serialNumber5 = [(OTEscrowRecord *)v20 serialNumber];
          if (([serialNumber5 isEqualToString:&stru_1F48F2A78] & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        escrowInformationMetadata8 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        serial2 = [escrowInformationMetadata8 serial];
        if (!serial2)
        {

          if (!serialNumber4)
          {
            goto LABEL_57;
          }

LABEL_48:

LABEL_49:
          goto LABEL_57;
        }

        v50 = serial2;
        escrowInformationMetadata9 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        serial3 = [escrowInformationMetadata9 serial];
        v53 = [serial3 isEqualToString:&stru_1F48F2A78];

        if (serialNumber4)
        {
        }

        array = v76;
        if ((v53 & 1) == 0)
        {
          serialNumber4 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          serial4 = [serialNumber4 serial];
          [(OTEscrowRecord *)v20 setSerialNumber:serial4];

          goto LABEL_49;
        }

LABEL_57:
        [array addObject:v20];
      }

      v78 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v78);
  }

  v63 = _OctagonSignpostGetNanoseconds();
  v64 = _OctagonSignpostLogSystem();
  v65 = v64;
  if (v73 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    *buf = 67240192;
    *&buf[4] = 1;
    _os_signpost_emit_with_name_impl(&dword_1C9430000, v65, OS_SIGNPOST_INTERVAL_END, v70, "FetchEscrowRecords", " OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 8u);
  }

  v66 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v70;
    v86 = 2048;
    v87 = v63 / 1000000000.0;
    v88 = 1026;
    v89 = 1;
    _os_log_impl(&dword_1C9430000, v66, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowRecords  OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 0x1Cu);
  }

  v6 = v71;
  serialNumber5 = v69;
  if (a4)
  {
    v67 = [MEMORY[0x1E697AA80] filterRecords:array];
  }

  else
  {
    v67 = array;
    array = v67;
  }

  v18 = v67;
LABEL_68:

  return v18;
}

+ (id)filterRecords:()Framework
{
  selfCopy = self;
  v112 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v97;
    do
    {
      v8 = 0;
      do
      {
        if (*v97 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v96 + 1) + 8 * v8);
        if (![v9 recordViability])
        {
          escrowInformationMetadata = [v9 escrowInformationMetadata];
          bottleId = [escrowInformationMetadata bottleId];
          if (bottleId)
          {
            v19 = bottleId;
            escrowInformationMetadata2 = [v9 escrowInformationMetadata];
            bottleId2 = [escrowInformationMetadata2 bottleId];
            v22 = [bottleId2 length];

            v16 = array;
            if (v22)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        if ([v9 recordViability] == 1)
        {
          escrowInformationMetadata3 = [v9 escrowInformationMetadata];
          bottleId3 = [escrowInformationMetadata3 bottleId];
          if (bottleId3)
          {
            v12 = bottleId3;
            escrowInformationMetadata4 = [v9 escrowInformationMetadata];
            bottleId4 = [escrowInformationMetadata4 bottleId];
            v15 = [bottleId4 length];

            v16 = array2;
            if (v15)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v16 = array3;
LABEL_16:
        [v16 addObject:v9];
        ++v8;
      }

      while (v6 != v8);
      v23 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
      v6 = v23;
    }

    while (v23);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v24 = array;
  v25 = [v24 countByEnumeratingWithState:&v92 objects:v110 count:16];
  v78 = v24;
  if (v25)
  {
    v26 = v25;
    v27 = *v93;
    v80 = *v93;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v93 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v92 + 1) + 8 * i);
        v30 = secLogObjForScope();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          label = [v29 label];
          escrowInformationMetadata5 = [v29 escrowInformationMetadata];
          serial = [escrowInformationMetadata5 serial];
          escrowInformationMetadata6 = [v29 escrowInformationMetadata];
          bottleId5 = [escrowInformationMetadata6 bottleId];
          silentAttemptAllowed = [v29 silentAttemptAllowed];
          *buf = 138413058;
          v103 = label;
          v104 = 2112;
          v105 = serial;
          v106 = 2112;
          v107 = bottleId5;
          v108 = 1024;
          v109 = silentAttemptAllowed;
          _os_log_impl(&dword_1C9430000, v30, OS_LOG_TYPE_DEFAULT, "viable record: %@ serial:%@ bottleID:%@ silent allowed:%{BOOL}d", buf, 0x26u);

          v24 = v78;
          v27 = v80;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v92 objects:v110 count:16];
    }

    while (v26);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v81 = array2;
  v37 = [v81 countByEnumeratingWithState:&v88 objects:v101 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v89;
    v76 = *v89;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v89 != v39)
        {
          objc_enumerationMutation(v81);
        }

        v41 = *(*(&v88 + 1) + 8 * j);
        v42 = secLogObjForScope();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          label2 = [v41 label];
          escrowInformationMetadata7 = [v41 escrowInformationMetadata];
          serial2 = [escrowInformationMetadata7 serial];
          escrowInformationMetadata8 = [v41 escrowInformationMetadata];
          bottleId6 = [escrowInformationMetadata8 bottleId];
          silentAttemptAllowed2 = [v41 silentAttemptAllowed];
          *buf = 138413058;
          v103 = label2;
          v104 = 2112;
          v105 = serial2;
          v106 = 2112;
          v107 = bottleId6;
          v108 = 1024;
          v109 = silentAttemptAllowed2;
          _os_log_impl(&dword_1C9430000, v42, OS_LOG_TYPE_DEFAULT, "partially viable record: %@ serial:%@ bottleID:%@ silent allowed:%{BOOL}d", buf, 0x26u);

          v39 = v76;
        }
      }

      v38 = [v81 countByEnumeratingWithState:&v88 objects:v101 count:16];
    }

    while (v38);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v83 = array3;
  v49 = [v83 countByEnumeratingWithState:&v84 objects:v100 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v85;
    v77 = *v85;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v85 != v51)
        {
          objc_enumerationMutation(v83);
        }

        v53 = *(*(&v84 + 1) + 8 * k);
        v54 = secLogObjForScope();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          label3 = [v53 label];
          escrowInformationMetadata9 = [v53 escrowInformationMetadata];
          serial3 = [escrowInformationMetadata9 serial];
          escrowInformationMetadata10 = [v53 escrowInformationMetadata];
          bottleId7 = [escrowInformationMetadata10 bottleId];
          silentAttemptAllowed3 = [v53 silentAttemptAllowed];
          *buf = 138413058;
          v103 = label3;
          v104 = 2112;
          v105 = serial3;
          v106 = 2112;
          v107 = bottleId7;
          v108 = 1024;
          v109 = silentAttemptAllowed3;
          _os_log_impl(&dword_1C9430000, v54, OS_LOG_TYPE_DEFAULT, "nonviable record: %@ serial:%@ bottleID:%@ silent allowed:%{BOOL}d", buf, 0x26u);

          v51 = v77;
        }
      }

      v50 = [v83 countByEnumeratingWithState:&v84 objects:v100 count:16];
    }

    while (v50);
  }

  if ([v78 count])
  {
    v61 = secLogObjForScope();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [v78 count];
      *buf = 67109120;
      LODWORD(v103) = v62;
      _os_log_impl(&dword_1C9430000, v61, OS_LOG_TYPE_DEFAULT, "Returning %d viable records", buf, 8u);
    }

    v63 = selfCopy;
    v64 = v78;
LABEL_55:
    array4 = [v63 sortListPrioritizingiOSRecords:{v64, selfCopy}];
LABEL_56:
    v68 = array4;
    goto LABEL_57;
  }

  if ([v81 count])
  {
    v65 = secLogObjForScope();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v81 count];
      *buf = 67109120;
      LODWORD(v103) = v66;
      _os_log_impl(&dword_1C9430000, v65, OS_LOG_TYPE_DEFAULT, "Returning %d partially viable records", buf, 8u);
    }

    v63 = selfCopy;
    v64 = v81;
    goto LABEL_55;
  }

  if (!SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v73 = secLogObjForScope();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v73, OS_LOG_TYPE_DEFAULT, "no viable records!", buf, 2u);
    }

    array4 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_56;
  }

  v70 = [selfCopy filterViableSOSRecords:v83];
  v71 = secLogObjForScope();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [v70 count];
    *buf = 67109120;
    LODWORD(v103) = v72;
    _os_log_impl(&dword_1C9430000, v71, OS_LOG_TYPE_DEFAULT, "Returning %d sos viable records", buf, 8u);
  }

  v68 = [selfCopy sortListPrioritizingiOSRecords:v70];

LABEL_57:

  return v68;
}

+ (id)sortListPrioritizingiOSRecords:()Framework
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        escrowInformationMetadata = [v9 escrowInformationMetadata];
        clientMetadata = [escrowInformationMetadata clientMetadata];
        if ([clientMetadata hasSecureBackupUsesNumericPassphrase])
        {
          [v9 escrowInformationMetadata];
          v13 = v12 = array;
          clientMetadata2 = [v13 clientMetadata];
          secureBackupUsesNumericPassphrase = [clientMetadata2 secureBackupUsesNumericPassphrase];

          array = v12;
          v16 = v12;
          if (secureBackupUsesNumericPassphrase)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v16 = array2;
LABEL_11:
        [v16 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  [array addObjectsFromArray:array2];

  return array;
}

+ (id)filterViableSOSRecords:()Framework
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 viabilityStatus] == 1)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

@end