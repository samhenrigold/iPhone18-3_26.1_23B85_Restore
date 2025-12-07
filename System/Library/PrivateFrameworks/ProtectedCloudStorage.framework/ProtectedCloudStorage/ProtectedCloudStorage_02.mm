uint64_t KeychainSetICDP(uint64_t a1, int a2, CFErrorRef *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E697AA88]);
    [v7 setAltDSID:v6];
    v12 = 0;
    v8 = [MEMORY[0x1E697AA80] setCDPEnabled:v7 error:&v12];
    v9 = v12;
    if ((v8 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "setting Octagon CDP failed: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to determine altDSID, not setting Octagon CDP", buf, 2u);
  }

  v10 = KeychainSetSecurityDomainStatus(a1, kPCSiCloudServiceMarkerName[0], a2, a3);

  return v10;
}

uint64_t KeychainIsPlesio(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15 = 0;
  if (KeychainGetSecurityDomainStatus(a1, kPCSPlesioMarkerNewName[0], &v15, a2, a5, a6, a7, a8))
  {
    return 1;
  }

  else
  {
    return KeychainGetSecurityDomainStatus(a1, kPCSPlesioMarkerName[0], &v15, a2, v10, v11, v12, v13);
  }
}

uint64_t KeychainSetPlesio(uint64_t a1, int a2, CFErrorRef *a3)
{
  KeychainSetSecurityDomainStatus(a1, kPCSPlesioMarkerName[0], a2, a3);
  v6 = kPCSPlesioMarkerNewName[0];

  return KeychainSetSecurityDomainStatus(a1, v6, a2, a3);
}

uint64_t KeychainIsWalrus(uint64_t a1, uint64_t a2, const void **a3)
{
  if (KeychainIsWalrus_once != -1)
  {
    KeychainIsWalrus_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  if (objc_opt_class())
  {
    v7 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
    v8 = v7;
    if (v7)
    {
      if ((a2 & 1) == 0)
      {
        v9 = KeychainIsWalrus_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __KeychainIsWalrus_block_invoke_196;
        block[3] = &unk_1E7B18DE8;
        v26 = &v27;
        v25 = v7;
        dispatch_sync(v9, block);
        v10 = v28[5];
        if (v10)
        {
          v11 = [v10 walrus];
          v12 = [v11 enabled];

          v13 = 0;
          v14 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      v14 = objc_alloc_init(MEMORY[0x1E697AA88]);
      [v14 setAltDSID:v8];
      [v14 setContext:*MEMORY[0x1E697AAD0]];
      v23 = 0;
      v15 = [MEMORY[0x1E697AA80] fetchAccountWideSettingsDefaultWithForceFetch:a2 configuration:v14 error:&v23];
      v13 = v23;
      v16 = v28[5];
      v28[5] = v15;

      if (v28[5])
      {
        v17 = KeychainIsWalrus_queue;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __KeychainIsWalrus_block_invoke_2_197;
        v20[3] = &unk_1E7B18DC0;
        v21 = v8;
        v22 = &v27;
        dispatch_barrier_async(v17, v20);
        v18 = [v28[5] walrus];
        v12 = [v18 enabled];
      }

      else
      {
        v12 = 0;
        if (a3 && v13)
        {
          v13 = v13;
          v12 = 0;
          *a3 = v13;
        }
      }

      goto LABEL_16;
    }

    _PCSError(a3, 90, @"altDSID not available");
    v13 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  _PCSError(a3, 15, @"OctagonTrust not available");
  v13 = 0;
  v14 = 0;
  v12 = 0;
LABEL_17:
  _Block_object_dispose(&v27, 8);

  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t KeychainSetWalrus(uint64_t a1, uint64_t a2, const void **a3)
{
  if (objc_opt_class())
  {
    v6 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E697AA88]);
      [v7 setAltDSID:v6];
      [v7 setContext:*MEMORY[0x1E697AAD0]];
      v8 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v7];
      v9 = objc_alloc_init(MEMORY[0x1E69B7CC8]);
      v10 = objc_alloc_init(MEMORY[0x1E69B7CE8]);
      [v9 setWalrus:v10];

      v11 = [v9 walrus];
      [v11 setEnabled:a2];

      v16 = 0;
      v12 = [v8 setAccountSetting:v9 error:&v16];
      v13 = v16;
      v14 = v13;
      if (a3 && (v12 & 1) == 0)
      {
        v14 = v13;
        v12 = 0;
        *a3 = v14;
      }
    }

    else
    {
      _PCSError(a3, 90, @"altDSID not available");
      v14 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v12 = 0;
    }
  }

  else
  {
    _PCSError(a3, 15, @"OctagonTrust not available");
    return 0;
  }

  return v12;
}

void CopyValueValue(const __CFDictionary *a1, __CFDictionary *a2, void *key)
{
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {

    CFDictionarySetValue(a2, key, Value);
  }
}

CFIndex __KeychainCopyCurrentIdentity_block_invoke_136(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    *(v2 + 24) = 0;
    CFRelease(v3);
    v2 = *(*(a1 + 40) + 8);
  }

  return _PCSError((v2 + 24), 27, @"identity timed out fetching from local store");
}

CFComparisonResult IdentityAttributesCompare(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x1E697ACD0];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697ACD0]);
  v6 = CFDictionaryGetValue(a2, v4);
  if (!Value || ((v7 = v6, v8 = CFGetTypeID(Value), v8 == CFDateGetTypeID()) ? (v9 = v7 == 0) : (v9 = 1), v9 || (v10 = CFGetTypeID(v7), v10 != CFDateGetTypeID()) || (result = CFDateCompare(Value, v7, 0)) == kCFCompareEqualTo))
  {
    v12 = *MEMORY[0x1E697AC30];
    v13 = CFDictionaryGetValue(a1, *MEMORY[0x1E697AC30]);
    v14 = CFDictionaryGetValue(a2, v12);
    if (v13 && ((v15 = v14, v16 = CFGetTypeID(v13), v16 == CFStringGetTypeID()) ? (v17 = v15 == 0) : (v17 = 1), !v17 && (v18 = CFGetTypeID(v15), v18 == CFStringGetTypeID())))
    {

      return CFStringCompare(v13, v15, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void processQuery(uint64_t a1, void *a2)
{
  v3 = a2;
  cf = 0;
  v4 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  LODWORD(a1) = _PCSKeychainForwardTable(a1, &cf);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v4;
  if (a1)
  {
    goto LABEL_2;
  }

  if (!cf)
  {
    goto LABEL_10;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID() && CFArrayGetCount(cf))
  {
    v7 = cf;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __processQuery_block_invoke;
    v9[3] = &unk_1E7B192A8;
    v10 = v3;
    v12.length = CFArrayGetCount(v7);
    v12.location = 0;
    CFArrayApplyFunction(v7, v12, apply_block_1_1, v9);
    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }
  }

  else
  {
LABEL_2:
    v5 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v5);
    }
  }

LABEL_10:
}

void __processQuery_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v10 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E697B3C0]);
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFDataGetTypeID())
    {
      v6 = PCSIdentityCreateWithKeychainAttributes(theDict);
      if (v6)
      {
        v7 = v6;
        UpdateCKKSIdentity(v6, theDict);
        (*(*(a1 + 32) + 16))();
        CFRelease(v7);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to parse identity from keychain: %@", buf, 0xCu);
      }
    }
  }
}

void __KeychainCopyIdentities_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 32);
  PublicKey = PCSIdentityGetPublicKey(a2);

  CFDictionarySetValue(v3, PublicKey, a2);
}

void __KeychainCopyOrderedIdentities_block_invoke(void *a1, int a2, CFTypeRef cf2)
{
  v5 = a1[5];
  if (cf2 && v5)
  {
    if (CFEqual(v5, cf2))
    {
      return;
    }
  }

  else if (v5 == cf2)
  {
    return;
  }

  if (_PCSIdentityValidate(cf2, (*(a1[4] + 8) + 24), 0) && (*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v6 = a1[6];

    CFArrayAppendValue(v6, cf2);
  }
}

void __KeychainIsWalrus_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.ProtectedCloudStorage.OTAccountSettings", v0);
  v2 = KeychainIsWalrus_queue;
  KeychainIsWalrus_queue = v1;

  v3 = notify_register_dispatch("_CDPWalrusStateChangeDarwinNotification", &KeychainIsWalrus_cdpStateToken, KeychainIsWalrus_queue, &__block_literal_global_186);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = v4;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "notify_register_dispatch failed: %u", &v7, 8u);
    }
  }

  v5 = notify_register_dispatch("com.apple.security.octagon.peer-changed", &KeychainIsWalrus_peerChangeToken, KeychainIsWalrus_queue, &__block_literal_global_186);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = v6;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "notify_register_dispatch failed: %u", &v7, 8u);
    }
  }
}

void __KeychainIsWalrus_block_invoke_2()
{
  v0 = KeychainIsWalrus_cachedSettings;
  KeychainIsWalrus_cachedSettings = 0;
}

uint64_t __KeychainIsWalrus_block_invoke_196(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [KeychainIsWalrus_cachedSettings objectForKeyedSubscript:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __KeychainIsWalrus_block_invoke_2_197(uint64_t a1)
{
  v2 = KeychainIsWalrus_cachedSettings;
  if (!KeychainIsWalrus_cachedSettings)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = KeychainIsWalrus_cachedSettings;
    KeychainIsWalrus_cachedSettings = v3;

    v2 = KeychainIsWalrus_cachedSettings;
  }

  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 setObject:v6 forKeyedSubscript:v5];
}

CFNumberRef OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(0, kCFNumberIntType, a3);
}

void OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, void *a3)
{

  CopyValueValue(v3, v4, a3);
}

uint64_t MobileBackupLibraryCore(uint64_t a1)
{
  if (!MobileBackupLibraryCore_frameworkLibrary)
  {
    MobileBackupLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MobileBackupLibraryCore_frameworkLibrary;
}

uint64_t __MobileBackupLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileBackupLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMBManagerClass_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = MobileBackupLibraryCore(&v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v6);
  }

  free(v3);
LABEL_3:
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MBManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMBManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getMBManagerClass_block_invoke_cold_1();
    [(PCSMigrationState *)v4 clearMetadata];
  }
}

id LocalStorageCreatePath(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [v8 initWithFormat:@"%@/%@-%@.%@", v7, kPCSServiceName[0], a1, v6];

  return v9;
}

uint64_t PCSIdentityMigrateToiCDP(void *a1, void *a2)
{
  v7 = 0;
  v3 = PCSAccountMigrateToiCDP(0, a1, &v7);
  v4 = v7;
  v5 = v4;
  if (a2 && v4)
  {
    *a2 = v4;
  }

  return v3;
}

uint64_t _PCSIdentityMigrateEnableWalrus(const void *a1, const void **a2)
{
  v4 = os_transaction_create();
  v5 = +[PCSLockManager manager];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.protectedcloudstorage.migrateenablewalrus"];
  v7 = [v5 lockAssertion:v6];

  if ([v7 holdAssertion])
  {
    v8 = PCSIdentityMigrateEngineExecute(&migrateEnableWalrus, @"MigrateEnableWalrus", a1, a2);
    [v7 dropAssertion];
  }

  else
  {
    PCSMigrationLog(0, @"Failed to get lock assertion, failing migration step");
    _PCSError(a2, 151, @"Failed to get lock assertion");
    v8 = 0;
  }

  return v8;
}

uint64_t _PCSIdentityMigrateDisableWalrus(const void *a1, const void **a2)
{
  v4 = os_transaction_create();
  v5 = +[PCSLockManager manager];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.protectedcloudstorage.migratedisablewalrus"];
  v7 = [v5 lockAssertion:v6];

  if ([v7 holdAssertion])
  {
    v8 = PCSIdentityMigrateEngineExecute(&migrateDisableWalrus, @"MigrateDisableWalrus", a1, a2);
    [v7 dropAssertion];
  }

  else
  {
    PCSMigrationLog(0, @"Failed to get lock assertion, failing migration step");
    _PCSError(a2, 151, @"Failed to get lock assertion");
    v8 = 0;
  }

  return v8;
}

BOOL PCSIdentityHaveiCloudIdentityLocally(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:kPCSSetupDSIDAny[0]] & 1) == 0 && PCSCurrentPersonaMatchesDSID(v4))
  {
    v10 = __PCSCopyFromiCloudKeychain(a1, v4, 0, v5, v6, v7, v8, v9);
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL PCSIdentityiCDPSignOut(const void *a1, const void **a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a1)
  {
    __PCSDeleteFromKeychainICDP(a1, 0, a3, a4, a5, a6, a7, a8);
    __PCSDeleteKeyfile(a1, 0);
  }

  else
  {
    _PCSError(a2, 121, @"iCDPSignOut missing DSID");
  }

  return a1 != 0;
}

uint64_t __PCSDeleteKeyfile(const void *a1, const void **a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 != CFStringGetTypeID())
    {
      __PCSDeleteKeyfile_cold_1(a2);
      return 0;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v54[0] = @"backup";
    v54[1] = @"witness";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        v9 = 0;
        do
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = LocalStorageCreatePath(a1, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", *(*(&v40 + 1) + 8 * v9));
          v11 = [MEMORY[0x1E696AC08] defaultManager];
          [v11 removeItemAtPath:v10 error:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v40 objects:v55 count:16];
      }

      while (v7);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v52 = @"messages";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = LocalStorageCreatePath(a1, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", *(*(&v36 + 1) + 8 * v16));
          v18 = [MEMORY[0x1E696AC08] defaultManager];
          [v18 removeItemAtPath:v17 error:0];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v36 objects:v53 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v57[0] = @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup";
    v57[1] = @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup";
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v19 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v35 = *v49;
      do
      {
        v21 = 0;
        do
        {
          if (*v49 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v48 + 1) + 8 * v21);
          v23 = [MEMORY[0x1E696AC08] defaultManager];
          v24 = [v23 contentsOfDirectoryAtPath:v22 error:0];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v45;
            do
            {
              v29 = 0;
              do
              {
                if (*v45 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v44 + 1) + 8 * v29);
                v31 = [MEMORY[0x1E696AC08] defaultManager];
                v32 = [@"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup" stringByAppendingPathComponent:v30];
                [v31 removeItemAtPath:v32 error:0];

                ++v29;
              }

              while (v27 != v29);
              v27 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
            }

            while (v27);
          }

          ++v21;
        }

        while (v21 != v20);
        v20 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v20);
    }
  }

  return 1;
}

uint64_t PCSEngineLogStatus(void *a1)
{
  v1 = a1;
  cf = 0;
  v2 = PCSIdentitySetCreate([v1 options], 0, &cf);
  v3 = v2;
  if (v2)
  {
    v4 = _PCSIdentitySetCopyCurrentIdentityInternal(v2, kPCSServiceMaster, &cf);
    v5 = [v1 log];
    if (v4)
    {
      PCSMigrationLog(v5, @"Master identity: %@", v4);
    }

    else
    {
      PCSMigrationLog(v5, @"Failed getting master key: %@", cf);
      v8 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v8);
      }
    }

    IsICDP = PCSIdentitySetIsICDP(v3, &cf);
    v10 = cf;
    v11 = [v1 log];
    if (v10)
    {
      PCSMigrationLog(v11, @"Failed getting iCDPState: %@", cf);
    }

    else
    {
      PCSMigrationLog(v11, @"Local iCDP status is %d", IsICDP);
    }
  }

  else
  {
    v6 = [v1 log];
    PCSMigrationLog(v6, @"No local credential store: %@", cf);
    v7 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v7);
    }

    v4 = 0;
  }

  v12 = PCSCopyPIIClearedOptions([v1 options]);
  PCSMigrationLog([v1 log], @"PCS%@ options: %@", objc_msgSend(v1, "type"), v12);
  v13 = [MEMORY[0x1E69DF068] sharedManager];
  v14 = [v13 currentPersona];

  v15 = [v1 log];
  v16 = [v14 userPersonaUniqueString];
  PCSMigrationLog(v15, @"Current persona: %@", v16);

  if (v12)
  {
    CFRelease(v12);
  }

  v17 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v17);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 1;
}

uint64_t PCSEnginePreCheckKeychain(void *a1, uint64_t *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupStingray[0]);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && !CFBooleanGetValue(v6))
    {
      v13 = 1;
      goto LABEL_11;
    }
  }

  v8 = [v3 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupDSID[0]);
  if (!v9 || (v10 = v9, v11 = CFGetTypeID(v9), v11 != CFStringGetTypeID()))
  {
    PCSEnginePreCheckKeychain_cold_1(v3, a2);
    goto LABEL_9;
  }

  v12 = PCSCurrentPersonaMatchesDSID(v10);
  v13 = 1;
  if (a2 && !v12)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = kPCSErrorDomain;
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"Current persona does not match chosen dsid";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a2 = [v14 errorWithDomain:v15 code:152 userInfo:v16];

LABEL_9:
    v13 = 0;
  }

LABEL_11:

  return v13;
}

BOOL PCSEngineFetchMetaData(void *a1, void *a2)
{
  v3 = a1;
  [v3 clearMetadata];
  [v3 setMetadata:{__PCSCopyStingrayInfo(objc_msgSend(v3, "recordTypeForReading"), objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
  v4 = [v3 metadata];

  return v4 != 0;
}

uint64_t PCSEngineCheckForceUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 options];
  Value = CFDictionaryGetValue(v2, kPCSSetupForceUpdate[0]);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v4))
      {
        [v1 setModified:1];
      }
    }
  }

  if ([v1 metadata])
  {
    v6 = [v1 metadata];
    v7 = CFDictionaryGetValue(v6, *MEMORY[0x1E6994F70]);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (([v1 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v1, "iCDPHSMPlesio") & 1) == 0)
        {
          v10 = CFDictionaryGetValue(v8, *MEMORY[0x1E6994F78]);
          if (v10)
          {
            v11 = v10;
            v12 = CFGetTypeID(v10);
            if (v12 == CFBooleanGetTypeID())
            {
              [v1 setTriggerUpdate:CFBooleanGetValue(v11) != 0];
            }
          }
        }

        if ([v1 triggerUpdate])
        {
          [v1 setModified:1];
        }
      }
    }
  }

  return 1;
}

uint64_t PCSEngineDifferentOnDroppedKeys(void *a1)
{
  v1 = a1;
  if (([v1 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v1, "iCDPHSMPlesio"))
  {
    PCSEngineHaveSyncEnoughToCreateIdentities();
    if (v3)
    {
      [v1 setCurrentStep:&validationInNoTouchHSMContent];
    }

    else
    {
      [v1 setDone:1];
    }
  }

  return 1;
}

uint64_t PCSEngineEnsureClassicContent(void *a1, uint64_t *a2)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 recordTypeForReading];
  v5 = [v3 options];
  Value = CFDictionaryGetValue(v5, kPCSSetupUsername[0]);
  v7 = [v3 options];
  v8 = CFDictionaryGetValue(v7, kPCSSetupPassword[0]);
  v9 = [v3 options];
  v10 = CFDictionaryGetValue(v9, kPCSSetupDSID[0]);
  v11 = PCSCurrentPersonaMatchesDSID(v10);
  if (!a2 || v11)
  {
    if (![v3 metadata])
    {
      PCSEngineEnsureClassicContent_cold_5(v3, a2);
      goto LABEL_51;
    }

    v16 = [v3 metadata];
    v17 = CFDictionaryGetValue(v16, *MEMORY[0x1E6994E60]);
    v18 = v17;
    if (v17)
    {
      v19 = CFGetTypeID(v17);
      if (v19 == CFBooleanGetTypeID())
      {
        v20 = CFBooleanGetValue(v18) == 0;
      }

      else
      {
        v21 = CFGetTypeID(v18);
        if (v21 != CFNumberGetTypeID())
        {
          LODWORD(v18) = 0;
          goto LABEL_16;
        }

        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr))
        {
          v20 = valuePtr == 0;
        }

        else
        {
          v20 = 1;
        }
      }

      LODWORD(v18) = !v20;
    }

LABEL_16:
    if ([v3 iCDP] && (v18 & 1) == 0)
    {
      PCSEngineEnsureClassicContent_cold_6(v3, a2);
      goto LABEL_51;
    }

    if (!(v18 & 1 | (([v3 requireIdentityInHSM] & 1) == 0)))
    {
      _PCSErrorContext([v3 log], a2, 58, @"No writing allowed");
      v15 = 1;
      [v3 setNeedPassword:1];
      [v3 setDone:1];
      goto LABEL_49;
    }

    if (v18)
    {
      [v3 setClassicContent:{__PCSCopyFromiCloudKeychain(v4, v10, 0, v22, v23, v24, v25, v26)}];
      v31 = [v3 classicContent];
      if (!v31)
      {
        [v3 setClassicContent:{__PCSCopyFromKeychain(v4, Value, v10, 0, v27, v28, v29, v30)}];
      }

      if (![v3 classicContent])
      {
        if (!v10)
        {
          PCSEngineEnsureClassicContent_cold_4(v3, a2);
          goto LABEL_51;
        }

        if (![v3 classicContent])
        {
          [v3 options];
          PCSMigrationLog([v3 log], @"Attempting to obtain classicContent from HSM");
          [v3 setClassicContent:{__PCSCopyHSMData(v4, objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
        }

        if (![v3 classicContent])
        {
          PCSEngineEnsureClassicContent_cold_3(v3);
          goto LABEL_51;
        }

        if (!checkData(v3, a2))
        {
          goto LABEL_51;
        }

        v43 = [v3 classicContent];
        if (!__PCSStoreInKeychain(v4, v43, v10, a2, v44, v45, v46, v47))
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      PCSMigrationLog([v3 log], @"No need to use escrow proxy at this point");
      valuePtr = 0;
      if (!checkData(v3, &valuePtr))
      {
        v36 = [v3 log];
        PCSMigrationLog(v36, @"Merge required: %@", valuePtr);
        CFRelease(valuePtr);
        [v3 setEscrowMergeNeeded:{objc_msgSend(v3, "classicContent")}];
        [v3 options];
        [v3 setClassicContent:{__PCSCopyHSMData(v4, objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
        if (![v3 classicContent])
        {
          PCSEngineEnsureClassicContent_cold_2(v3);
LABEL_51:
          PCSEngineEnsureClassicContent_cold_7(v3, a2 != 0, a2, &valuePtr);
          v15 = valuePtr;
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (!v8)
      {
        PCSEngineEnsureClassicContent_cold_1(v3, a2);
        goto LABEL_51;
      }

      [v3 setClassicContent:{__PCSCopyFromiCloudKeychain(v4, v10, 0, v22, v23, v24, v25, v26)}];
      v31 = [v3 classicContent];
      if (!v31)
      {
        [v3 setClassicContent:{__PCSCopyFromKeychain(v4, Value, v10, 0, v37, v38, v39, v40)}];
      }

      if (![v3 classicContent])
      {
        [v3 setNewIdentity:1];
        v48 = pcsLogObjForScope("migration");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(valuePtr) = 0;
          _os_log_impl(&dword_1B229C000, v48, OS_LOG_TYPE_DEFAULT, "Classic content is missing; requesting new identities", &valuePtr, 2u);
        }

        goto LABEL_48;
      }

      PCSMigrationLog([v3 log], @"Detected missing/lost escrow data, will attempt to restore.");
      [v3 setEscrowMissing:1];
    }

    if (v31)
    {
      v41 = __PCSCopyFromKeychain(v4, Value, v10, 0, v32, v33, v34, v35);
      if (v41)
      {
        v42 = v41;
        if (!CFEqual(v41, [v3 classicContent]))
        {
          PCSMigrationLog([v3 log], @"sync and non sync keychain doesn't match!");
        }

        CFRelease(v42);
      }

      goto LABEL_48;
    }

LABEL_43:
    if (!__PCSStoreIniCloudKeychain(v4, [v3 classicContent], v10, a2))
    {
      goto LABEL_51;
    }

LABEL_48:
    v15 = 1;
    goto LABEL_49;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = kPCSErrorDomain;
  v51 = *MEMORY[0x1E696A578];
  v52[0] = @"Current persona does not match chosen dsid";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  *a2 = [v12 errorWithDomain:v13 code:152 userInfo:v14];

  v15 = 0;
LABEL_49:

  return v15;
}

uint64_t PCSEngineExtractKeys(void *a1, const void **a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [v3 recordTypeForReading];
  if (![v3 metadata])
  {
    v36 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v36);
    }

    goto LABEL_71;
  }

  if ([v3 newIdentity])
  {
    v4 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "New identites requested; creating empty set", buf, 2u);
    }

    [v3 clearSet];
    [v3 setSet:PCSIdentitySetCreateMutable(a2)];
    if ([v3 set])
    {
      v5 = 1;
      goto LABEL_60;
    }

    _PCSErrorOOM(a2);
LABEL_71:
    v5 = 0;
    goto LABEL_60;
  }

  v43 = 0;
  v6 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 classicContent];
    v8 = @"present";
    if (!v7)
    {
      v8 = @"not present";
    }

    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "extracting keys; classicContent is %@", buf, 0xCu);
  }

  if (![v3 classicContent])
  {
    v37 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v37);
    }

    v26 = 0;
    v20 = 0;
    v21 = 0;
    v10 = 0;
    goto LABEL_81;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, [v3 options]);
  v10 = MutableCopy;
  if (!MutableCopy)
  {
    _PCSErrorOOM(a2);
    goto LABEL_80;
  }

  CFDictionarySetValue(MutableCopy, kPCSSetupDontImportManatee[0], *MEMORY[0x1E695E4D0]);
  [v3 setSet:{PCSIdentitySetCreateFromExternalForm(v10, objc_msgSend(v3, "classicContent"), &v43, a2)}];
  v11 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v3 set];
    v13 = @"present";
    if (!v12)
    {
      v13 = @"not present";
    }

    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "parsed classicContent set is %@", buf, 0xCu);
  }

  if (![v3 set])
  {
    goto LABEL_80;
  }

  v14 = [v3 set];
  [v3 setEscrowIdentity:{_PCSIdentitySetCopyCurrentIdentityInternal(v14, kPCSServiceEscrow, 0)}];
  v15 = GetiCDPMetadata([v3 metadata]);
  if (!v15)
  {
    v29 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v3 escrowIdentity];
      v31 = @"present";
      if (!v30)
      {
        v31 = @"not present";
      }

      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&dword_1B229C000, v29, OS_LOG_TYPE_DEFAULT, "No 'iCDP' metadata present; (escrow identity is %@)", buf, 0xCu);
    }

    if ([v3 escrowIdentity])
    {
      v26 = 0;
      v20 = 0;
      v21 = 0;
      v27 = 0;
      goto LABEL_42;
    }

    PCSEngineExtractKeys_cold_5(v3);
    goto LABEL_80;
  }

  v16 = kPCSMetadataEscrowedKeys[0];
  Value = CFDictionaryGetValue(v15, kPCSMetadataEscrowedKeys[0]);
  if (Value)
  {
    v18 = Value;
    v19 = CFGetTypeID(Value);
    if (v19 == CFDataGetTypeID())
    {
      if ([v3 escrowIdentity])
      {
        v20 = PCSBackupCopyRecoveredKeysetWithIdentity([v3 escrowIdentity], v18, a2);
        if (!v20)
        {
          PCSEngineExtractKeys_cold_3(v3, a2, v42, buf);
          v26 = 0;
          v21 = 0;
          v27 = 0;
          v28 = *buf;
          goto LABEL_32;
        }

        v21 = CFRetain([v3 set]);
        [v3 clearSet];
        [v3 setSet:{PCSIdentitySetCreateFromExternalForm(v10, v20, 0, a2)}];
        v22 = pcsLogObjForScope("migration");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v3 set];
          v24 = @"present";
          if (!v23)
          {
            v24 = @"not present";
          }

          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&dword_1B229C000, v22, OS_LOG_TYPE_DEFAULT, "parsed identity set is %@", buf, 0xCu);
        }

        if ([v3 set])
        {
          v25 = [v3 set];
          v26 = _PCSIdentitySetCopyCurrentIdentityInternal(v25, kPCSServiceEscrow, a2);
          if (!v26 || !CFEqual(v26, [v3 escrowIdentity]))
          {
            PCSIdentitySetSetCurrentIdentity([v3 set], objc_msgSend(v3, "escrowIdentity"));
            [v3 setModified:1];
          }

          v27 = PCSIdentitySetCopyIdentities(v21, 0);
          context[0] = MEMORY[0x1E69E9820];
          context[1] = 3221225472;
          context[2] = __PCSEngineExtractKeys_block_invoke_571;
          context[3] = &unk_1E7B193D0;
          v41 = v3;
          CFDictionaryApplyFunction(v27, apply_block_2_3, context);
          v28 = v41;
          goto LABEL_32;
        }

        v26 = 0;
LABEL_81:
        v27 = 0;
        goto LABEL_66;
      }

      PCSEngineExtractKeys_cold_2(v3);
    }

    else
    {
      PCSEngineExtractKeys_cold_1(v3);
    }

LABEL_80:
    v26 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_81;
  }

  v28 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_1B229C000, v28, OS_LOG_TYPE_DEFAULT, "No serialized keys found (at key path %@)", buf, 0xCu);
  }

  v26 = 0;
  v20 = 0;
  v21 = 0;
  v27 = 0;
LABEL_32:

  if ((_PCSIsiCDPIsWalrus([v3 metadata]) & 1) == 0 && (_PCSIsiCDPIsPlesio(objc_msgSend(v3, "metadata")) & 1) == 0 && !objc_msgSend(v3, "escrowIdentity"))
  {
    PCSEngineExtractKeys_cold_4(v3);
    goto LABEL_66;
  }

LABEL_42:
  if ((v43 & 8) != 0 && ([v3 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v3, "iCDPHSMPlesio") & 1) == 0)
  {
    PCSEngineExtractKeys_cold_6(v3, a2);
    goto LABEL_66;
  }

  if (![v3 escrowMergeNeeded])
  {
    goto LABEL_50;
  }

  v32 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v32, OS_LOG_TYPE_DEFAULT, "Beginning escrow merge", buf, 2u);
  }

  v33 = PCSIdentitySetCreateFromExternalForm(0, [v3 escrowMergeNeeded], 0, a2);
  if (!v33)
  {
LABEL_66:
    v5 = 0;
    if (!v27)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v34 = v33;
  v27 = PCSIdentitySetCopyIdentities(v33, 0);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __PCSEngineExtractKeys_block_invoke_582;
  v38[3] = &unk_1E7B193D0;
  v39 = v3;
  CFDictionaryApplyFunction(v27, apply_block_2_3, v38);
  CFRelease(v34);

LABEL_50:
  v5 = 1;
  if (v27)
  {
LABEL_51:
    CFRelease(v27);
  }

LABEL_52:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_60:

  return v5;
}

uint64_t PCSEngineOverrideiCDP(void *a1, uint64_t *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (![v3 iCDP] || (objc_msgSend(v3, "iCDPArmed") & 1) == 0)
  {
    v4 = [v3 options];
    v5 = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
    v6 = [PCSAccountsModel altDSIDForDSID:v5];
    v7 = [v3 log];
    if (v6)
    {
      PCSMigrationLog(v7, @"No iCDP, now checking Octagon CDP status");
      v8 = objc_alloc_init(MEMORY[0x1E697AA88]);
      [v8 setAltDSID:v6];
      v9 = PCSCurrentPersonaMatchesDSID(v5);
      if (a2)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v18 = 0;
        v11 = [MEMORY[0x1E697AA80] getCDPStatus:v8 error:&v18];
        v12 = v18;
        switch(v11)
        {
          case 2:
            PCSMigrationLog([v3 log], @"Octagon CDP is enabled, overriding iCDP value");
            [v3 setICDP:1];
            [v3 setICDPArmed:1];
            [v3 setModified:1];
            break;
          case 1:
            PCSMigrationLog([v3 log], @"Octagon CDP is disabled");
            break;
          case 0:
            PCSMigrationLog([v3 log], @"Unable to check Octagon CDP status: %@", v12);
            break;
        }
      }

      else
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = kPCSErrorDomain;
        v19 = *MEMORY[0x1E696A578];
        v20[0] = @"Current persona does not match chosen dsid";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        *a2 = [v13 errorWithDomain:v14 code:152 userInfo:v15];

        v12 = 0;
      }

      if (!v10)
      {
        v16 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      PCSMigrationLog(v7, @"Unable to determine altDSID, skipping Octagon CDP check");
    }
  }

  v16 = 1;
LABEL_20:

  return v16;
}

uint64_t PCSEngineSynchronizeWithLocalstore(void *a1, uint64_t *a2)
{
  v3 = a1;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames(v3, v4);
  v6 = PCSIdentitySetCreate([v3 options], 0, a2);
  if (v6)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    if (Mutable)
    {
      v8 = Mutable;
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __PCSEngineSynchronizeWithLocalstore_block_invoke;
      context[3] = &unk_1E7B193F8;
      v9 = v3;
      v24 = v9;
      v25 = v8;
      v26.length = CFArrayGetCount(CFArrayOfNames);
      v26.location = 0;
      CFArrayApplyFunction(CFArrayOfNames, v26, apply_block_1_2, context);
      v10 = PCSIdentitySetCopyIdentities(v6, 0);
      if (v10)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __PCSEngineSynchronizeWithLocalstore_block_invoke_2;
        v19[3] = &unk_1E7B19420;
        v20 = v9;
        v21 = v8;
        v22 = v6;
        CFDictionaryApplyFunction(v10, apply_block_2_3, v19);
      }

      v11 = [v9 options];
      Value = CFDictionaryGetValue(v11, kPCSSetupPreferLocalKeyPreference[0]);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v13))
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __PCSEngineSynchronizeWithLocalstore_block_invoke_3;
            v16[3] = &unk_1E7B193F8;
            v18 = v6;
            v17 = v9;
            v27.length = CFArrayGetCount(CFArrayOfNames);
            v27.location = 0;
            CFArrayApplyFunction(CFArrayOfNames, v27, apply_block_1_2, v16);
          }
        }
      }

      CFRelease(v6);
      if (v10)
      {
        CFRelease(v10);
      }

      CFRelease(v8);

      v6 = 1;
    }

    else
    {
      CFRelease(v6);
      v6 = 0;
    }
  }

  return v6;
}

uint64_t PCSEngineSynchronizeLocalKeyFile(void *a1, const void **a2)
{
  cf = 0;
  v3 = a1;
  SynchronizeLocalKeyFile(v3, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", @"backup", &cf);
  SynchronizeLocalKeyFile(v3, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", @"messages", a2);

  v4 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v4);
  }

  return 1;
}

uint64_t PCSEngineStepValidateRegistry(void *a1)
{
  v1 = a1;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames(v1, v2);
  v4 = _PCSServiceItemsGetTooRolledServiceTypes(CFArrayOfNames);
  if (([v1 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v1, "iCDPHSMPlesio"))
  {
    PCSMigrationLog([v1 log], @"  Skipping registry validation");
  }

  else
  {
    if ([v1 oldRegistry])
    {
      v5 = [v1 options];
      Value = CFDictionaryGetValue(v5, kPCSSetupRegistryCleanup[0]);
      v9 = Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFBooleanGetTypeID()) && CFBooleanGetValue(v7) != 0;
      v10 = [v1 oldRegistry];
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __PCSEngineStepValidateRegistry_block_invoke;
      context[3] = &unk_1E7B19470;
      v16 = v4;
      v17 = v1;
      v18 = v9;
      CFDictionaryApplyFunction(v10, apply_block_2_3, context);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __PCSEngineStepValidateRegistry_block_invoke_2;
    v12[3] = &unk_1E7B19498;
    v13 = v4;
    v14 = v1;
    v19.length = CFArrayGetCount(CFArrayOfNames);
    v19.location = 0;
    CFArrayApplyFunction(CFArrayOfNames, v19, apply_block_1_2, v12);
  }

  return 1;
}

uint64_t PCSEngineStoreHSM(void *a1, CFErrorRef *a2)
{
  v3 = a1;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v92 = dispatch_semaphore_create(0);
  if ([v3 newIdentity] && (objc_msgSend(v3, "dropHSM") & 1) != 0)
  {
    goto LABEL_122;
  }

  if ([v3 newIdentity])
  {
    v4 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Creating new identity", buf, 2u);
    }

    if (GetClassicServiceArray_onceToken != -1)
    {
      PCSEngineStoreHSM_cold_1();
    }

    [v3 setNewHSMContent:{PCSIdentitySetCreateExternalForm(objc_msgSend(v3, "log"), objc_msgSend(v3, "set"), 1, GetClassicServiceArray_array, a2)}];
    if (![v3 newHSMContent])
    {
      goto LABEL_122;
    }

    [v3 setModified:1];
  }

  if ([v3 restoreHSM])
  {
    if ([v3 iCDPHSMWalrus] & 1) != 0 || (objc_msgSend(v3, "iCDPHSMPlesio"))
    {
      _PCSError(a2, 69, @"Asked to restore HSM content, but flag in HSM doesn't match");
      goto LABEL_122;
    }

    [v3 setNewHSMContent:{PCSStateCopyKeychainClassicIdentities(v3, 1, a2)}];
    if (![v3 newHSMContent])
    {
      goto LABEL_122;
    }

    [v3 setModified:1];
  }

  if ([v3 dropHSM])
  {
    if (([v3 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v3, "iCDPHSMPlesio") & 1) == 0)
    {
      _PCSError(a2, 69, @"Asked to drop HSM content, but flag in HSM already set");
      goto LABEL_122;
    }

    if (GetDroppedServiceArray_onceToken != -1)
    {
      PCSEngineStoreHSM_cold_2();
    }

    [v3 setNewHSMContent:{PCSIdentitySetCreateExternalForm(objc_msgSend(v3, "log"), objc_msgSend(v3, "set"), 1, GetDroppedServiceArray_array, a2)}];
    if (![v3 newHSMContent])
    {
      goto LABEL_122;
    }

    [v3 setModified:1];
  }

  if ([v3 escrowMissing])
  {
    [v3 setNewHSMContent:{CFRetain(objc_msgSend(v3, "classicContent"))}];
    [v3 setModified:1];
  }

  if ([v3 escrowMergeNeeded])
  {
    [v3 setNewHSMContent:0];
    [v3 setModified:1];
  }

  if ([v3 newHSMContent] && (objc_msgSend(v3, "dropHSM") & 1) == 0)
  {
    v5 = [v3 newHSMContent];
  }

  else
  {
    if (![v3 escrowMergeNeeded])
    {
      v6 = PCSStateCopyKeychainClassicIdentities(v3, 0, a2);
      if (!v6)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v5 = [v3 classicContent];
  }

  v6 = CFRetain(v5);
LABEL_33:
  v7 = PCSIdentitySetCreateFromExternalForm(0, v6, 0, a2);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    v8 = _PCSIdentitySetCopyCurrentIdentityInternal(v7, kPCSServiceEscrow, a2);
    v9 = v8;
    if (!v8)
    {
      _PCSError(a2, 70, @"Escrow identity not in escrowed set");
LABEL_121:
      CFRelease(v7);
      goto LABEL_122;
    }

    if (!PCSIdentityCheckWrappable(v8, a2))
    {
      ExternalForm = 0;
      v13 = 0;
      MutableForCFTypesWith = 0;
      cf = 0;
      value = 0;
      v91 = 0;
      v88 = 0;
      goto LABEL_107;
    }

    if (![v3 modified])
    {
      v88 = 0;
      cf = 0;
      value = 0;
      v91 = 0;
      v13 = 0;
      ExternalForm = 0;
LABEL_76:
      if ([v3 newIdentity])
      {
        v48 = pcsLogObjForScope("migration");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v48, OS_LOG_TYPE_DEFAULT, "New identity was requested, prepping new record creation", buf, 2u);
        }

        v86 = [v3 newHSMContent];
        MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v86, v49, v50, v51, v52, v53, v54, v55, *MEMORY[0x1E6994E60], *MEMORY[0x1E695E4D0]);
        applyOptions(v3, MutableForCFTypesWith);
        if ([v3 metadata])
        {
          v57 = [v3 metadata];
          v58 = *MEMORY[0x1E6994F68];
          v59 = CFDictionaryGetValue(v57, *MEMORY[0x1E6994F68]);
          if (v59)
          {
            CFDictionarySetValue(MutableForCFTypesWith, v58, v59);
          }

          else
          {
            PCSMigrationLog([v3 log], @"MetadataHashKey missing");
          }
        }

        v98 = MEMORY[0x1E69E9820];
        v99 = 3221225472;
        v100 = __PCSEngineStoreHSM_block_invoke_736;
        v101 = &unk_1E7B19538;
        v102 = v3;
        v104 = &v106;
        v105 = a2;
        v103 = v92;
        _PCSSecureBackupEnableWithInfo();
        __PCS_WAITING_FOR_COM_APPLE_SBD(v103);

        goto LABEL_107;
      }

      if ([v3 modified])
      {
        v60 = [v3 metadata];
        v61 = *MEMORY[0x1E6994F68];
        v62 = CFDictionaryGetValue(v60, *MEMORY[0x1E6994F68]);
        MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v62, v63, v64, v65, v66, v67, v68, v69, *MEMORY[0x1E6994E60], *MEMORY[0x1E695E4D0]);
        if (MutableForCFTypesWith)
        {
          applyOptions(v3, MutableForCFTypesWith);
          if ([v3 newHSMContent])
          {
            PCSMigrationLog([v3 log], @"New HSM content (update)");
            v70 = [v3 newHSMContent];
            CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E6994FB0], v70);
          }

          if (v62)
          {
            CFDictionarySetValue(MutableForCFTypesWith, v61, v62);
          }

          else
          {
            v72 = [v3 log];
            v73 = [v3 newHSMContent];
            v74 = "with content, this will not end well";
            if (!v73)
            {
              v74 = "no content";
            }

            PCSMigrationLog(v72, @"MetadataHashKey missing: %s", v74);
          }

          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __PCSEngineStoreHSM_block_invoke_2;
          v93[3] = &unk_1E7B19538;
          v75 = v3;
          v94 = v75;
          v96 = &v106;
          v97 = a2;
          v76 = v92;
          v95 = v76;
          v77 = MEMORY[0x1B2745320](v93);
          if ([v75 newHSMContent])
          {
            PCSMigrationLog([v75 log], @"StoreHSM Performing Enable");
            _PCSSecureBackupEnableWithInfo();
          }

          else
          {
            PCSMigrationLog([v75 log], @"StoreHSM Performing Update");
            _PCSSecureBackupUpdateMetadataWithInfo();
          }

          __PCS_WAITING_FOR_COM_APPLE_SBD(v76);
          if (a2)
          {
            if ((v107[3] & 1) == 0 && CFErrorGetCode(*a2) == 22)
            {
              Domain = CFErrorGetDomain(*a2);
              if (CFEqual(Domain, *MEMORY[0x1E6994DA8]))
              {
                PCSMigrationLog([v75 log], @"Congestion event happen restarting state machine: %@", *a2);
                v79 = *a2;
                if (*a2)
                {
                  *a2 = 0;
                  CFRelease(v79);
                }

                [v75 setRestart:1];
                *(v107 + 24) = 1;
              }
            }
          }

          goto LABEL_107;
        }

        _PCSErrorOOM(a2);
        goto LABEL_138;
      }

      MutableForCFTypesWith = 0;
      *(v107 + 24) = 1;
LABEL_107:
      CFRelease(v9);
      if (ExternalForm)
      {
        CFRelease(ExternalForm);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (MutableForCFTypesWith)
      {
        CFRelease(MutableForCFTypesWith);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v91)
      {
        CFRelease(v91);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v88)
      {
        CFRelease(v88);
      }

      goto LABEL_121;
    }

    v11 = [v3 set];
    v12 = _PCSIdentitySetCopyCurrentIdentityInternal(v11, kPCSServiceBladerunner, 0);
    v91 = v12;
    if (v12)
    {
      value = PCSIdentityCopyPublicKeyInfo(v12);
    }

    else
    {
      value = 0;
    }

    key = kPCSMetadataiCDP[0];
    v16 = [v3 iCDP];
    v17 = [v3 iCDPArmed];
    v25 = *MEMORY[0x1E695E4D0];
    if (v16)
    {
      v26 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v26 = *MEMORY[0x1E695E4C0];
    }

    v13 = CFDictionaryCreateMutableForCFTypesWith(v17, v18, v19, v20, v21, v22, v23, v24, key, v26);
    if (v13)
    {
      if ([v3 iCDPHSMWalrus])
      {
        v27 = kPCSMetadataiCDPWalrus;
LABEL_51:
        CFDictionarySetValue(v13, *v27, v25);
        v88 = 0;
        cf = 0;
        goto LABEL_58;
      }

      if ([v3 iCDPHSMPlesio])
      {
        v27 = kPCSMetadataiCDPDrop;
        goto LABEL_51;
      }

      if ([v3 escrowIdentity] && !CFEqual(objc_msgSend(v3, "escrowIdentity"), v9))
      {
        _PCSError(a2, 71, @"Escrow identity not same");
        ExternalForm = 0;
      }

      else
      {
        if ([v3 iCDPHSMWalrus])
        {
          _os_assert_log();
          _os_crash();
          PCSEngineStoreHSM_cold_3();
        }

        ExternalForm = PCSIdentitySetCreateExternalForm([v3 log], objc_msgSend(v3, "set"), 1, 0, a2);
        if (ExternalForm)
        {
          EscrowedKeysetWithIdentity = PCSBackupCreateEscrowedKeysetWithIdentity(v9, ExternalForm, 0, a2);
          v88 = ExternalForm;
          if (!EscrowedKeysetWithIdentity)
          {
            ExternalForm = 0;
            MutableForCFTypesWith = 0;
            cf = 0;
            goto LABEL_107;
          }

          cf = EscrowedKeysetWithIdentity;
          CFDictionarySetValue(v13, kPCSMetadataEscrowedKeys[0], EscrowedKeysetWithIdentity);
LABEL_58:
          if ([v3 stableMetadata] || (objc_msgSend(v3, "setStableMetadata:", CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])), objc_msgSend(v3, "stableMetadata")))
          {
            v29 = [v3 stableMetadata];
            v30 = kPCSSecureBackupCFStableEscrowKey[0];
            PublicKey = PCSIdentityGetPublicKey(v9);
            CFDictionarySetValue(v29, v30, PublicKey);
            ExternalForm = CFDictionaryCreateMutableForCFTypesWith(v32, v33, v34, v35, v36, v37, v38, v39, kPCSSecureBackupCFiCloudDataProtectionKey[0], v13);
            if (ExternalForm)
            {
              if ([v3 stableMetadata] && CFDictionaryGetCount(objc_msgSend(v3, "stableMetadata")) >= 1)
              {
                CFDictionarySetValue(ExternalForm, kPCSSecureBackupCFStableMetadataKey[0], [v3 stableMetadata]);
              }

              if (([v3 iCDPHSMWalrus] & 1) == 0)
              {
                v40 = [v3 iCDPHSMPlesio];
                v41 = value ? v40 : 1;
                if ((v41 & 1) == 0)
                {
                  CFDictionarySetValue(ExternalForm, *MEMORY[0x1E6994FB8], value);
                }
              }

              v42 = v3;
              CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames(v42, v43);
              v45 = _PCSServiceItemsGetTooRolledServiceTypes(CFArrayOfNames);
              if (([v42 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v42, "iCDPHSMPlesio"))
              {
                PCSMigrationLog([v42 log], @"  Skipping registry creation");
              }

              else
              {
                if ([v42 oldRegistry])
                {
                  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, [v42 oldRegistry]);
                }

                else
                {
                  MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                }

                v82 = MutableCopy;
                if (MutableCopy)
                {
                  if ([v42 removeFromRegistry])
                  {
                    theArray = [v42 removeFromRegistry];
                    context[0] = MEMORY[0x1E69E9820];
                    context[1] = 3221225472;
                    context[2] = __CreateKeyRegistry_block_invoke;
                    context[3] = &unk_1E7B193F8;
                    v118 = v42;
                    v119 = v82;
                    v120.length = CFArrayGetCount(theArray);
                    v120.location = 0;
                    CFArrayApplyFunction(theArray, v120, apply_block_1_2, context);
                  }

                  *buf = MEMORY[0x1E69E9820];
                  v111 = 3221225472;
                  v112 = __CreateKeyRegistry_block_invoke_2;
                  v113 = &unk_1E7B19588;
                  v116 = v82;
                  v83 = v45;
                  v114 = v83;
                  v84 = v42;
                  v115 = v84;
                  v121.length = CFArrayGetCount(CFArrayOfNames);
                  v121.location = 0;
                  CFArrayApplyFunction(CFArrayOfNames, v121, apply_block_1_2, buf);
                  v85 = CFRetain(v82);

                  CFRelease(v82);
                  if (v85)
                  {
                    CFDictionarySetValue(ExternalForm, kPCSSecureBackupCFSecureBackupKeyRegistry[0], v85);
                    CFRelease(v85);
                  }

                  goto LABEL_74;
                }
              }

LABEL_74:
              ClientInfo = PCSSupportGetClientInfo(v46, v47);
              if (ClientInfo)
              {
                CFDictionarySetValue(ExternalForm, kPCSSecureBackupCFVersionMetadataKey, ClientInfo);
              }

              goto LABEL_76;
            }

            _PCSErrorOOM(a2);
          }

          ExternalForm = 0;
LABEL_138:
          MutableForCFTypesWith = 0;
          goto LABEL_107;
        }
      }
    }

    else
    {
      _PCSErrorOOM(a2);
      ExternalForm = 0;
      v13 = 0;
    }

    MutableForCFTypesWith = 0;
    v88 = 0;
    cf = 0;
    goto LABEL_107;
  }

LABEL_122:
  v80 = *(v107 + 24);

  _Block_object_dispose(&v106, 8);
  return v80;
}

uint64_t PCSEngineStoreLocal(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = PCSIdentitySetCreate([v3 options], 0, a2);
  if (v4)
  {
    v5 = v4;
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __PCSEngineStoreLocal_block_invoke;
    v33 = &unk_1E7B195B0;
    v6 = v3;
    v34 = v6;
    v35 = v5;
    v7 = MEMORY[0x1B2745320](&v30);
    PCSIdentitySetEnumerateIdentities([v6 set], 0, v7);
    v8 = [v6 recordTypeForReading];
    if ([v6 newHSMContent] && (objc_msgSend(v6, "dropHSM") & 1) == 0 && (objc_msgSend(v6, "restoreHSM") & 1) == 0)
    {
      v9 = [v6 options];
      Value = CFDictionaryGetValue(v9, kPCSSetupDSID[0]);
      if (!PCSCurrentPersonaMatchesDSID(Value))
      {
        goto LABEL_15;
      }

      v11 = [v6 newHSMContent];
      if (!__PCSStoreInKeychain(v8, v11, Value, a2, v12, v13, v14, v15) || !__PCSStoreIniCloudKeychain(v8, [v6 newHSMContent], Value, a2))
      {
        goto LABEL_18;
      }
    }

    if (![v6 escrowMergeNeeded])
    {
LABEL_12:
      PCSEngineStoreLocal_cold_1(v6, v5);
      v28 = 1;
LABEL_13:
      CFRelease(v5);
LABEL_16:

      goto LABEL_17;
    }

    v16 = [v6 options];
    v17 = CFDictionaryGetValue(v16, kPCSSetupDSID[0]);
    if (PCSCurrentPersonaMatchesDSID(v17))
    {
      v18 = [v6 classicContent];
      if (__PCSStoreInKeychain(v8, v18, v17, a2, v19, v20, v21, v22))
      {
        v23 = [v6 classicContent];
        if (__PCSUpdateIniCloudKeychain(v8, v23, v17, a2, v24, v25, v26, v27))
        {
          goto LABEL_12;
        }
      }

LABEL_18:
      v28 = 0;
      goto LABEL_13;
    }

LABEL_15:
    _PCSError(a2, 152, @"current persona does not match dsid");
    v28 = 0;
    goto LABEL_16;
  }

  v28 = 0;
LABEL_17:

  return v28;
}

uint64_t PCSEngineStoreLocalKeyfile(void *a1, uint64_t *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (![v3 modified])
  {
    goto LABEL_16;
  }

  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFStringGetTypeID()))
  {
    _PCSErrorContext([v3 log], a2, 121, @"Missing parameter: dsid");
    goto LABEL_9;
  }

  if (!CFEqual(v6, kPCSSetupDSIDAny[0]))
  {
    v8 = PCSCurrentPersonaMatchesDSID(v6);
    if (a2 && !v8)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = kPCSErrorDomain;
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"Current persona does not match chosen dsid";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a2 = [v9 errorWithDomain:v10 code:152 userInfo:v11];

      goto LABEL_9;
    }

    if (!StoreLocalKeyfile(v3, v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", @"backup", 0, 0x20000000, a2))
    {
      goto LABEL_9;
    }

    v13 = LocalStorageCreatePath(v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", @"witness");
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    v15 = [MEMORY[0x1E695DF00] date];
    v16 = [v15 description];
    [v16 writeToFile:v14 atomically:0 encoding:4 error:0];

    v17 = +[PCSMobileBackup defaultMobileBackup];
    if ([v17 isBackupEnabled])
    {
      v22 = kPCSMessages3;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      StoreLocalKeyfile(v3, v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", @"messages", v18, 0x40000000, 0);
    }

    else
    {
      v19 = LocalStorageCreatePath(v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", @"messages");
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      [v20 removeItemAtPath:v19 error:0];
    }

LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

LABEL_9:
  v12 = 0;
LABEL_17:

  return v12;
}

uint64_t PCSEngineAddMissingCurrentPointers(void *a1, uint64_t *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!_PCSRunningInUnitTests())
  {
    if ([v3 iCDP])
    {
      v4 = [v3 options];
      Value = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
      if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFStringGetTypeID()))
      {
        _PCSErrorContext([v3 log], a2, 121, @"Missing parameter: dsid");
        goto LABEL_11;
      }

      v8 = PCSCurrentPersonaMatchesDSID(v6);
      if (a2 && !v8)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = kPCSErrorDomain;
        v17 = *MEMORY[0x1E696A578];
        v18[0] = @"Current persona does not match chosen dsid";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        *a2 = [v9 errorWithDomain:v10 code:152 userInfo:v11];

LABEL_11:
        v12 = 0;
        goto LABEL_12;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __PCSEngineAddMissingCurrentPointers_block_invoke;
      v14[3] = &unk_1E7B19628;
      v16 = v6;
      v15 = v3;
      PCSServiceItemsGetEachName(v14);
    }

    else
    {
      PCSMigrationLog([v3 log], @"CDP not enabled, skipping AddMissingCurrentPointers");
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

CFTypeRef PCSStateCopyKeychainClassicIdentities(void *a1, int a2, CFTypeRef *a3)
{
  v5 = a1;
  v6 = [v5 options];
  Value = CFDictionaryGetValue(v6, kPCSSetupDSID[0]);
  v8 = [v5 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupUsername[0]);
  v53 = 0;
  err = 0;
  v10 = [v5 recordTypeForReading];
  if (!Value || (v11 = v10, v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()))
  {
    _PCSError(a3, 3, @"DSID not a string");
    goto LABEL_9;
  }

  if (!PCSCurrentPersonaMatchesDSID(Value))
  {
    _PCSError(a3, 152, @"current persona does not match dsid");
    goto LABEL_9;
  }

  v18 = __PCSCopyFromiCloudKeychain(v11, Value, &err, v13, v14, v15, v16, v17);
  v23 = __PCSCopyFromKeychain(v11, v9, Value, &v53, v19, v20, v21, v22);
  v24 = 0;
  v25 = err;
  if (err && v53)
  {
    v24 = CFErrorGetCode(err) == -25300 && CFErrorGetCode(v53) == -25300;
    v25 = err;
  }

  if (v25)
  {
    err = 0;
    CFRelease(v25);
  }

  v26 = v53;
  if (v53)
  {
    v53 = 0;
    CFRelease(v26);
  }

  if (v18 && v23)
  {
    if (CFEqual(v18, v23))
    {
      CFRelease(v23);
      v23 = 0;
      goto LABEL_20;
    }

    _PCSError(a3, 74, @"local and iCKC not the same PCS keys");
    CFRelease(v23);
    CFRelease(v18);
LABEL_9:
    v18 = 0;
    goto LABEL_73;
  }

LABEL_20:
  if (v18)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  if (a2 && v27)
  {
    v28 = v5;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v59 = 0;
    v29 = [MEMORY[0x1E697AA20] controlObject:&v59];
    v30 = v59;
    v31 = v30;
    if (!v29)
    {
      if (a3)
      {
        *a3 = v30;
      }

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v64, 8);
      goto LABEL_65;
    }

    v32 = dispatch_semaphore_create(0);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __PCSFetchCKKSWithTimeout_block_invoke;
    v55[3] = &unk_1E7B19358;
    v57 = &v64;
    v58 = &v60;
    v33 = v32;
    v56 = v33;
    [v29 rpcFetchAndProcessChangesIfNoRecentFetch:@"ProtectedCloudStorage" reply:v55];
    v34 = dispatch_time(0, 20000000000);
    if (dispatch_semaphore_wait(v33, v34))
    {
      _PCSError(a3, 99, @"rpcFetchAndProcessChanges timed out");
      v35 = 0;
    }

    else
    {
      v36 = v61;
      if (a3)
      {
        v37 = v61[3];
        if (v37)
        {
          *a3 = CFRetain(v37);
          v36 = v61;
        }
      }

      v38 = v36[3];
      if (v38)
      {
        v36[3] = 0;
        CFRelease(v38);
      }

      v35 = *(v65 + 24);
    }

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    if (v35)
    {
      if (v18)
      {
        v39 = PCSIdentitySetCreateFromExternalForm(0, v18, 0, a3);
        if (!v39)
        {
          goto LABEL_65;
        }

        v40 = v39;
        v41 = _PCSIdentitySetCopyCurrentIdentityInternal(v39, kPCSServiceMaster, 0);
        v42 = _PCSIdentitySetCopyCurrentIdentityInternal(v40, kPCSServiceEscrow, 0);
        CFRelease(v40);
        if (v41 && v42)
        {
          CFRelease(v41);
          CFRelease(v42);
          ExternalForm = CFRetain(v18);
LABEL_68:

          if (v23)
          {
            CFRelease(v23);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v18 = ExternalForm;
          goto LABEL_73;
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }
      }

      v44 = [v28 set];
      v45 = _PCSIdentitySetCopyCurrentIdentityInternal(v44, kPCSServiceMaster, 0);
      if (v45)
      {
        goto LABEL_54;
      }

      Master = PCSIdentityCreateMaster(0, a3);
      if (Master)
      {
        v45 = Master;
        if (!PCSIdentitySetAddIdentityWithError([v28 set], Master, a3) || !PCSIdentitySetSetCurrentIdentityWithError(objc_msgSend(v28, "set"), v45, a3))
        {
LABEL_64:
          ExternalForm = 0;
LABEL_67:
          CFRelease(v45);
          goto LABEL_68;
        }

LABEL_54:
        if (GetClassicServiceArray_onceToken != -1)
        {
          PCSEngineStoreHSM_cold_1();
        }

        v47 = GetClassicServiceArray_array;
        if (CFArrayGetCount(GetClassicServiceArray_array) >= 1)
        {
          for (i = 0; i < CFArrayGetCount(v47); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v47, i);
            if (!CFEqual(ValueAtIndex, kPCSServiceMaster))
            {
              v50 = _PCSIdentitySetCopyCurrentIdentityInternal([v28 set], ValueAtIndex, 0);
              if (v50)
              {
                CFRelease(v50);
              }

              else
              {
                AddService();
                if ((v51 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }
            }
          }
        }

        ExternalForm = PCSIdentitySetCreateExternalForm([v28 log], objc_msgSend(v28, "set"), 1, v47, a3);
        goto LABEL_67;
      }
    }

LABEL_65:
    ExternalForm = 0;
    goto LABEL_68;
  }

  if (!v18)
  {
    v18 = v23;
    if (!v23)
    {
      _PCSError(a3, 74, @"no PCS keys in keychain!");
    }
  }

LABEL_73:

  return v18;
}

void sub_1B22CA1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const void *isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

void __PCSFetchCKKSWithTimeout_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  v4 = v3;
  *(*(*(a1 + 48) + 8) + 24) = v4;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __GetClassicServiceArray_block_invoke()
{
  v1[7] = *MEMORY[0x1E69E9840];
  v1[0] = kPCSServiceMaster;
  v1[1] = kPCSServiceBladerunner;
  v1[2] = kPCSServiceHyperion;
  v1[3] = kPCSServiceLiverpool;
  v1[4] = kPCSServiceEscrow;
  v1[5] = kPCSServiceFDE;
  v1[6] = kPCSServicePianoMover;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:7];
  GetClassicServiceArray_array = result;
  return result;
}

uint64_t PCSEngineValidateStepEnsureServicesHaveCurrentSet(void *a1)
{
  v1 = a1;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames(v1, v2);
  if ([v1 set])
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSEngineValidateStepEnsureServicesHaveCurrentSet_block_invoke;
    context[3] = &unk_1E7B19380;
    v6 = v1;
    v7.length = CFArrayGetCount(CFArrayOfNames);
    v7.location = 0;
    CFArrayApplyFunction(CFArrayOfNames, v7, apply_block_1_2, context);
  }

  return 1;
}

void __PCSEngineValidateStepEnsureServicesHaveCurrentSet_block_invoke(uint64_t a1, void *a2)
{
  if ((![*(a1 + 32) limitLocalStoring] || IsLocalStoringService(*(a1 + 32), a2)) && ((objc_msgSend(*(a1 + 32), "iCDP") & 1) != 0 || (PCSServiceItemTypeIsManatee(a2) & 1) == 0))
  {
    v4 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], a2, 0);
    if (v4)
    {
LABEL_6:

      CFRelease(v4);
      return;
    }

    v5 = PCSIdentitySetCopyOrderedIdentities([*(a1 + 32) set], a2);
    if (!v5)
    {
      return;
    }

    v6 = v5;
    if (!CFArrayGetCount(v5))
    {
      v4 = v6;
      goto LABEL_6;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], ValueAtIndex);
    CFRelease(v6);
    v8 = *(a1 + 32);

    [v8 setModified:1];
  }
}

BOOL IsLocalStoringService(void *a1, const void *a2)
{
  v3 = a1;
  if (![v3 limitLocalStoring])
  {
    IsLocalStoringService_cold_1();
  }

  v4 = [v3 limitLocalStoring];
  v7.length = CFArrayGetCount([v3 limitLocalStoring]);
  v7.location = 0;
  v5 = CFArrayContainsValue(v4, v7, a2) != 0;

  return v5;
}

BOOL checkData(void *a1, const void **a2)
{
  v3 = a1;
  Value = CFDictionaryGetValue([v3 metadata], @"SecureBackupStingrayMetadata");
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFDictionaryGetTypeID()))
  {
    PCSEngineEnsureClassicContent_cold_5(v3, a2);
LABEL_18:
    v14 = 0;
    goto LABEL_14;
  }

  v7 = CFDictionaryGetValue(v5, @"BackupKeybagSHA256");
  v8 = v7;
  if (!v7 && (v8 = CFDictionaryGetValue(v5, @"BackupKeybagDigest")) == 0 || (v9 = CFGetTypeID(v8), v9 != CFDataGetTypeID()))
  {
    checkData_cold_2(v3, a2);
    goto LABEL_18;
  }

  v10 = [v3 classicContent];
  Mutable = CFDataCreateMutable(0, 0);
  v12 = Mutable;
  if (!v7)
  {
    CFDataSetLength(Mutable, 20);
    if (v12)
    {
      ccsha1_di();
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  CFDataSetLength(Mutable, 32);
  if (!v12)
  {
LABEL_16:
    _PCSErrorOOM(a2);
    goto LABEL_18;
  }

  ccsha256_di();
LABEL_11:
  CFDataGetLength(v10);
  CFDataGetBytePtr(v10);
  CFDataGetMutableBytePtr(v12);
  ccdigest();
  v13 = CFEqual(v12, v8);
  v14 = v13 != 0;
  if (!v13)
  {
    checkData_cold_1(v3, a2);
  }

  CFRelease(v12);
LABEL_14:

  return v14;
}

void __PCSEngineExtractKeys_block_invoke_571(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v5)
  {

    CFRelease(v5);
  }

  else
  {
    PCSIdentitySetAddIdentity([*(a1 + 32) set], a3);
    v6 = *(a1 + 32);

    [v6 setModified:1];
  }
}

void __PCSEngineExtractKeys_block_invoke_582(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v5)
  {

    CFRelease(v5);
  }

  else
  {
    PCSIdentitySetAddIdentity([*(a1 + 32) set], a3);
    v6 = *(a1 + 32);

    [v6 setModified:1];
  }
}

void __PCSEngineSynchronizeWithLocalstore_block_invoke(uint64_t a1, const void *a2)
{
  v4 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], a2, 0);
  if (v4)
  {

    CFRelease(v4);
  }

  else
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void __PCSEngineSynchronizeWithLocalstore_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceName = PCSIdentityGetServiceName(a3);
  v7 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v7)
  {

    CFRelease(v7);
    return;
  }

  PCSMigrationLog([*(a1 + 32) log], @"adding local service to memory store: %@", a3);
  if (ServiceName && CFSetContainsValue(*(a1 + 40), ServiceName))
  {
    IsCurrentIdentity = _PCSIdentitySetIsCurrentIdentity(*(a1 + 48), a3);
    v9 = [*(a1 + 32) set];
    if (IsCurrentIdentity)
    {
      PCSIdentitySetSetCurrentIdentity(v9, a3);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = [*(a1 + 32) set];
  }

  PCSIdentitySetAddIdentity(v9, a3);
LABEL_11:
  IsManatee = _PCSIdentityIsManatee(a3);
  v11 = *(a1 + 32);
  if (IsManatee)
  {
    v12 = [v11 log];

    PCSMigrationLog(v12, @"was a manatee identity, skipping update of metadata");
  }

  else
  {

    [v11 setModified:1];
  }
}

void __PCSEngineSynchronizeWithLocalstore_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = _PCSIdentitySetCopyCurrentIdentityInternal(*(a1 + 40), a2, 0);
  if (v4)
  {
    v5 = v4;
    v6 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], a2, 0);
    if (v6)
    {
      v7 = v6;
      if (!CFEqual(v5, v6))
      {
        PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], v5);
      }

      CFRelease(v5);
    }

    else
    {
      PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], v5);
      v7 = v5;
    }

    CFRelease(v7);
  }
}

void SynchronizeLocalKeyFile(void *a1, void *a2, void *a3, const void **a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = _PCSServiceItemsGetTooRolledServiceTypes(v9);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__2;
  v37[4] = __Block_byref_object_dispose__2;
  v38 = 0;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = [v11 options];
  Value = CFDictionaryGetValue(v14, kPCSSetupDSID[0]);
  v16 = Value;
  if (!Value || (v17 = CFGetTypeID(Value), v17 != CFStringGetTypeID()))
  {
    _PCSErrorContext([v11 log], a4, 121, @"Missing parameter: dsid");
    goto LABEL_13;
  }

  v18 = PCSCurrentPersonaMatchesDSID(v16);
  if (a4)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = kPCSErrorDomain;
    v39 = *MEMORY[0x1E696A578];
    v40[0] = @"Current persona does not match chosen dsid";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    *a4 = [v24 errorWithDomain:v25 code:152 userInfo:v26];

LABEL_13:
    v22 = 0;
    v20 = 0;
LABEL_14:
    v21 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  if (kPCSSetupDSIDAny[0] && CFEqual(v16, kPCSSetupDSIDAny[0]))
  {
    goto LABEL_13;
  }

  v20 = LocalStorageCreatePath(v16, v12, v13);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_14;
  }

  v40[0] = 0;
  v21 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v20 options:0 error:v40];
  v22 = v40[0];
  if (v21)
  {
    v23 = PCSIdentitySetCreateFromExternalForm(0, v21, 0, a4);
    goto LABEL_15;
  }

  PCSMigrationLog([v11 log], @"Failed reading local backup: %@: %@", v12, v22);
  if (!a4)
  {
    goto LABEL_14;
  }

  v32 = *a4;
  if (*a4)
  {
    *a4 = 0;
    CFRelease(v32);
  }

  v22 = v22;
  v21 = 0;
  v23 = 0;
  *a4 = v22;
LABEL_15:

  if (v23)
  {
    v27 = PCSIdentitySetCopyIdentities(v23, 0);
    if (v27)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __SynchronizeLocalKeyFile_block_invoke;
      context[3] = &unk_1E7B19448;
      v34 = v11;
      v35 = v10;
      v36 = v37;
      CFDictionaryApplyFunction(v27, apply_block_2_3, context);
      CFRelease(v23);
      CFRelease(v27);
      if (a4)
      {
        v28 = *a4;
        if (*a4)
        {
          *a4 = 0;
          CFRelease(v28);
        }
      }
    }

    else
    {
      CFRelease(v23);
    }
  }

  else
  {
    v29 = [v11 log];
    if (a4)
    {
      v30 = *a4;
    }

    else
    {
      v30 = 0;
    }

    PCSMigrationLog(v29, @" open local storage failed: %@", v30);
    if (a4)
    {
      v31 = *a4;
      if (*a4)
      {
        *a4 = 0;
        CFRelease(v31);
      }
    }
  }

  _Block_object_dispose(v37, 8);
}

void sub_1B22CAF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SynchronizeLocalKeyFile_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceName = PCSIdentityGetServiceName(a3);
  v7 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v7)
  {

    CFRelease(v7);
    return;
  }

  if (_PCSIdentityIsManatee(a3) && (PCSIdentityIsNewManatee(a3) & 1) == 0)
  {
    PCSMigrationLog([*(a1 + 32) log], @"Skip recovering old manatee identity (%@) from keyfile", a3);
    return;
  }

  if (ServiceName && [*(a1 + 40) containsObject:ServiceName])
  {
    PCSMigrationLog([*(a1 + 32) log], @"Skip tooRolled identity (%@) from keyfile", a3);
    return;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (ServiceName)
    {
LABEL_12:
      v8 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], ServiceName, 0);
      goto LABEL_16;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD60] string];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (ServiceName)
    {
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_16:
  PCSIdentitySetAddIdentity([*(a1 + 32) set], a3);
  if (ServiceName && !v8)
  {
    PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], a3);
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Identity %@ of service %@ existed in backup (but not in local storage)\n", PCSIdentityGetPublicKey(a3), ServiceName];
  if (v8)
  {
    CFRelease(v8);
  }

  v12 = *(a1 + 32);

  [v12 setModified:1];
}

void __PCSEngineStepValidateRegistry_block_invoke(uint64_t a1, void *key)
{
  if ((PCSServiceItemTypeIsManatee(key) & 1) != 0 || [*(a1 + 32) containsObject:key])
  {
    PCSMigrationLog([*(a1 + 40) log], @"Registry contains Manatee service: %@", key);
    if (*(a1 + 48) == 1)
    {
      if (![*(a1 + 40) removeFromRegistry])
      {
        [*(a1 + 40) setRemoveFromRegistry:{CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])}];
      }

      CFArrayAppendValue([*(a1 + 40) removeFromRegistry], key);
      v4 = *(a1 + 40);

      [v4 setModified:1];
    }
  }
}

void __PCSEngineStepValidateRegistry_block_invoke_2(uint64_t a1, void *key)
{
  if (PCSServiceItemTypeIsManatee(key) & 1) != 0 || ([*(a1 + 32) containsObject:key])
  {
    return;
  }

  v4 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 40) set], key, 0);
  if (!v4 || (v5 = v4, v6 = PCSIdentityCheckValidPublicKey(v4, 0), CFRelease(v5), v6))
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    v8 = PCSIdentitySetCopyOrderedIdentities([*(a1 + 40) set], key);
    if (!v8)
    {
      goto LABEL_29;
    }

    v9 = v8;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSEngineStepValidateRegistry_block_invoke_3;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = Mutable;
    v28.length = CFArrayGetCount(v8);
    v28.location = 0;
    CFArrayApplyFunction(v9, v28, apply_block_1_2, context);
    CFRelease(v9);
    if (![*(a1 + 40) oldRegistry])
    {
      goto LABEL_29;
    }

    Value = CFDictionaryGetValue([*(a1 + 40) oldRegistry], key);
    if (PCSEngineIgnoreService(key))
    {
      if (Value)
      {
        [*(a1 + 40) setModified:1];
      }

      goto LABEL_10;
    }

    if (!Value || (v11 = CFGetTypeID(Value), v11 != CFDictionaryGetTypeID()) || (v12 = CFDictionaryGetValue(Value, kPCSSecureBackupCFKeyRegistryPublicIdentities[0]), !isArray(v12)) || (Count = CFArrayGetCount(v12)) == 0)
    {
LABEL_29:
      v23 = 1;
      goto LABEL_30;
    }

    v14 = Count;
    if (Count < 1)
    {
      if (!CFSetGetCount(Mutable))
      {
LABEL_10:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

      v23 = 0;
    }

    else
    {
      v26 = 0;
      v15 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15 - 1);
        if (!ValueAtIndex)
        {
          break;
        }

        v17 = ValueAtIndex;
        v18 = CFGetTypeID(ValueAtIndex);
        if (v18 != CFDataGetTypeID())
        {
          break;
        }

        v19 = PCSPublicIdentityCreateWithPublicKeyInfo(v17, 0);
        if (!v19)
        {
          PCSMigrationLog([*(a1 + 40) log], @"Failed to parse identity: %@", v17);
          break;
        }

        v20 = v19;
        ServiceName = PCSPublicIdentityGetServiceName(v19);
        v22 = ServiceName;
        v23 = ServiceName == 0;
        if (ServiceName)
        {
          if (CFEqual(ServiceName, key))
          {
            PublicID = PCSPublicIdentityGetPublicID(v20);
            if (PublicID)
            {
              v25 = PublicID;
              PCSMigrationLog([*(a1 + 40) log], @"Found identity %@ in registry for %@", PublicID, key);
              CFSetRemoveValue(Mutable, v25);
            }
          }

          else
          {
            PCSMigrationLog([*(a1 + 40) log], @"Need regen of registry since %@ have the service %@ (%@) in it", key, v20, v22);
            v26 = 1;
          }
        }

        CFRelease(v20);
        if (v15 < v14)
        {
          ++v15;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_42;
      }

      v23 = 1;
LABEL_42:
      if (!CFSetGetCount(Mutable))
      {
        if ((v26 & 1) == 0)
        {
LABEL_30:
          if (Mutable)
          {
            CFRelease(Mutable);
            if (!v23)
            {
              return;
            }
          }

          else if (!v23)
          {
            return;
          }

          goto LABEL_34;
        }

LABEL_44:
        PCSMigrationLog([*(a1 + 40) log], @"Triggering update for metadata");
        [*(a1 + 40) setModified:1];
        goto LABEL_30;
      }
    }

    PCSMigrationLog([*(a1 + 40) log], @"Identities not in registry, updating needed: %@", key);
    goto LABEL_44;
  }

LABEL_34:
  if (![*(a1 + 40) missingFromRegistry])
  {
    [*(a1 + 40) setMissingFromRegistry:{CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])}];
  }

  CFArrayAppendValue([*(a1 + 40) missingFromRegistry], key);
  [*(a1 + 40) setModified:1];
}

void __PCSEngineStepValidateRegistry_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  PublicKey = PCSIdentityGetPublicKey(a2);

  CFSetAddValue(v2, PublicKey);
}

void __PCSEngineStepValidateLooseLeaves_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDataGetTypeID())
    {
      v5 = PCSBackupCopyRecoveredKeyWithIdentitySet([*(a1 + 32) set], *(a1 + 40), cf, 0);
      if (v5)
      {
        v6 = v5;
        PublicKey = PCSIdentityGetPublicKey(v5);
        v8 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], PublicKey);
        if (v8)
        {
          CFRelease(v8);
        }

        else
        {
          PCSMigrationLog([*(a1 + 32) log], @"Identity %@ not found locally, adding it from LooseLeaves", v6);
          PCSIdentitySetAddIdentity([*(a1 + 32) set], v6);
          [*(a1 + 32) setModified:1];
        }

        CFDictionarySetValue(*(a1 + 56), PublicKey, v6);

        CFRelease(v6);
      }

      else
      {
        PCSMigrationLog([*(a1 + 32) log], @"Service %@ have an un-decrypted item", *(a1 + 48));
      }
    }
  }
}

uint64_t __PCSEngineStepValidateLooseLeaves_block_invoke_2(uint64_t a1, uint64_t a2)
{
  PublicKey = PCSIdentityGetPublicKey(a2);
  result = CFDictionaryContainsKey(*(a1 + 40), PublicKey);
  if (!result)
  {
    result = _PCSIdentityIsManatee(a2);
    if ((result & 1) == 0)
    {
      AddLeaf(*(a1 + 48), [*(a1 + 32) escrowIdentity], a2);
      PCSMigrationLog([*(a1 + 32) log], @"Local identity %@ missing in LooseLeaves, adding it", a2);
      v6 = *(a1 + 32);

      return [v6 setModified:1];
    }
  }

  return result;
}

void AddLeaf(__CFArray *a1, uint64_t a2, uint64_t a3)
{
  EscrowedKeyWithIdentity = PCSBackupCreateEscrowedKeyWithIdentity(a2, a3, 0);
  if (EscrowedKeyWithIdentity)
  {
    v5 = EscrowedKeyWithIdentity;
    CFArrayAppendValue(a1, EscrowedKeyWithIdentity);

    CFRelease(v5);
  }
}

uint64_t __PCSEngineStepValidateLooseLeaves_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _PCSIdentityIsManatee(a3);
  if ((result & 1) == 0)
  {
    AddLeaf(*(a1 + 40), [*(a1 + 32) escrowIdentity], a3);
    PCSMigrationLog([*(a1 + 32) log], @"Re-adding preexisting LooseLeaves identity %@", a3);
    v6 = *(a1 + 32);

    return [v6 setModified:1];
  }

  return result;
}

void applyOptions(void *a1, __CFDictionary *a2)
{
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupUsername[0]);
  v6 = [v3 options];
  v7 = CFDictionaryGetValue(v6, kPCSSetupPassword[0]);
  v8 = [v3 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupAuthToken[0]);
  v10 = [v3 options];
  v11 = CFDictionaryGetValue(v10, kPCSSetupEscrowURL[0]);
  v12 = [v3 options];
  v13 = CFDictionaryGetValue(v12, kPCSSetupiCloudEnvironment[0]);
  v14 = [v3 options];

  v15 = CFDictionaryGetValue(v14, kPCSSetupDSID[0]);
  if (Value)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994DD0], Value);
  }

  if (v7)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994E10], v7);
  }

  if (v9)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994DE0], v9);
  }

  if (v11)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994E00], v11);
  }

  if (v15)
  {
    if (!PCSCurrentPersonaMatchesDSID(v15))
    {
      return;
    }

    CFDictionarySetValue(a2, *MEMORY[0x1E6994DF0], v15);
  }

  if (v13)
  {
    v16 = *MEMORY[0x1E6994E20];

    CFDictionarySetValue(a2, v16, v13);
  }
}

intptr_t __PCSEngineStoreHSM_block_invoke_736(uint64_t a1, const void *a2)
{
  if (a2)
  {
    PCSMigrationLog([*(a1 + 32) log], @"_PCSSecureBackupEnableWithInfo: %@", a2);
    v4 = *(a1 + 56);
    if (v4)
    {
      *v4 = a2;
      CFRetain(a2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

intptr_t __PCSEngineStoreHSM_block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = [*(a1 + 32) log];
  v5 = [*(a1 + 32) newHSMContent];
  v6 = "Enable";
  if (!v5)
  {
    v6 = "UpdateMetadata";
  }

  PCSMigrationLog(v4, @"_PCSSecureBackup%sWithInfo: %@", v6, a2);
  if (a2)
  {
    if (*(a1 + 56))
    {
      **(a1 + 56) = CFRetain(a2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

uint64_t __GetDroppedServiceArray_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = kPCSServiceFDE;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:1];
  GetDroppedServiceArray_array = result;
  return result;
}

void __CreateKeyRegistry_block_invoke(uint64_t a1, const void *a2)
{
  PCSMigrationLog([*(a1 + 32) log], @"  Removing Manatee service from registry: %@", a2);
  v4 = *(a1 + 40);

  CFDictionaryRemoveValue(v4, a2);
}

void __CreateKeyRegistry_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = 0;
  if (PCSEngineIgnoreService(a2))
  {
    v4 = *(a1 + 48);

    CFDictionaryRemoveValue(v4, a2);
  }

  else if ((PCSServiceItemTypeIsManatee(a2) & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = PCSIdentitySetCopyPublishableIdentities([*(a1 + 40) set], a2, &v16);
    if (v5)
    {
      PCSMigrationLog([*(a1 + 40) log], @"  Updating service %@ registry", a2);
      Value = CFDictionaryGetValue(v5, kPCSSecureBackupCFKeyRegistryPublicIdentities[0]);
      if (Value)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFArrayGetTypeID())
        {
          v14[0] = 0;
          v14[1] = v14;
          v14[2] = 0x2020000000;
          v15 = 0;
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __CreateKeyRegistry_block_invoke_3;
          v11[3] = &unk_1E7B19560;
          v12 = *(a1 + 40);
          v13 = v14;
          v9 = v11;
          v18.length = CFArrayGetCount(v7);
          v18.location = 0;
          CFArrayApplyFunction(v7, v18, apply_block_1_2, v9);

          _Block_object_dispose(v14, 8);
        }
      }

      CFDictionarySetValue(*(a1 + 48), a2, v5);
    }

    v10 = v16;
    if (v16)
    {
      v16 = 0;
      CFRelease(v10);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void sub_1B22CBEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CreateKeyRegistry_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) log];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  PCSMigrationLog(v4, @"     %d: %@", v6, a2);
}

void __PCSEngineStoreLocal_block_invoke(uint64_t a1, uint64_t a2)
{
  PublicKey = PCSIdentityGetPublicKey(a2);
  if (![*(a1 + 32) limitLocalStoring] || (ServiceName = PCSIdentityGetServiceName(a2)) != 0 && IsLocalStoringService(*(a1 + 32), ServiceName))
  {
    IsManatee = _PCSIdentityIsManatee(a2);
    v7 = PCSIdentitySetCopyIdentity(*(a1 + 40), PublicKey);
    if (v7)
    {
      CFRelease(v7);
      if (IsManatee)
      {
        return;
      }
    }

    else
    {
      PCSMigrationLog([*(a1 + 32) log], @"adding service to localStore: %@", a2);
      PCSIdentitySetAddIdentity(*(a1 + 40), a2);
      [*(a1 + 32) setModified:1];
      if (IsManatee)
      {
        return;
      }
    }

    if (_PCSIdentitySetIsCurrentIdentity([*(a1 + 32) set], a2) && (_PCSIdentitySetIsCurrentIdentity(*(a1 + 40), a2) & 1) == 0)
    {
      PCSMigrationLog([*(a1 + 32) log], @"marking identity current: %@", a2);
      PCSIdentitySetSetCurrentIdentity(*(a1 + 40), a2);
      v8 = *(a1 + 32);

      [v8 setModified:1];
    }
  }
}

BOOL StoreLocalKeyfile(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, const void **a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  ExternalForm = PCSIdentitySetCreateExternalForm(0, [a1 set], 0, v15, a7);

  if (ExternalForm)
  {
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    [v17 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];

    v18 = LocalStorageCreatePath(a2, v13, v14);
    v19 = v18 != 0;
    if (v18)
    {
      [(__CFData *)ExternalForm writeToFile:v18 options:a6 error:0];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __PCSEngineAddMissingCurrentPointers_block_invoke(uint64_t a1, __CFString *key)
{
  v53[9] = *MEMORY[0x1E69E9840];
  if ((PCSServiceItemTypeIsManatee(key) & 1) == 0)
  {
    v4 = dispatch_semaphore_create(0);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    if (PCSServiceItemGetCKKSViewByName(key))
    {
      PCSServiceItemGetAccessGroupByName(key);
      cf[1] = MEMORY[0x1E69E9820];
      cf[2] = 3221225472;
      cf[3] = __PCSEngineAddMissingCurrentPointers_block_invoke_844;
      cf[4] = &unk_1E7B195D8;
      v36 = &v44;
      v37 = &v40;
      v5 = *(a1 + 40);
      v38 = key;
      v39 = v5;
      v6 = v4;
      v35 = v6;
      SecItemFetchCurrentItemAcrossAllDevices();
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v45 + 24) == 1)
      {
        v7 = pcsLogObjForScope("ckks");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = key;
          _os_log_impl(&dword_1B229C000, v7, OS_LOG_TYPE_DEFAULT, "Found current item pointer for service %@", buf, 0xCu);
        }

        if (v41[3])
        {
          v8 = [*(a1 + 32) set];
          if ((_PCSIdentitySetIsCurrentIdentity(v8, v41[3]) & 1) == 0)
          {
            v9 = pcsLogObjForScope("ckks");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = key;
              _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Current item for %@ does not have current bit set, attempting to fix", buf, 0xCu);
            }

            cf[0] = 0;
            v10 = [*(a1 + 32) set];
            if ((PCSIdentitySetSetCurrentIdentityWithError(v10, v41[3], cf) & 1) == 0)
            {
              v11 = pcsLogObjForScope("ckks");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v49 = cf[0];
                _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "Failed to set current bit: %@", buf, 0xCu);
              }
            }

            v12 = cf[0];
            if (cf[0])
            {
              cf[0] = 0;
              CFRelease(v12);
            }
          }
        }

        v13 = v41[3];
        if (v13)
        {
          v41[3] = 0;
          CFRelease(v13);
        }
      }

      else
      {
        IndexByName = PCSServiceItemGetIndexByName(key);
        if (IndexByName)
        {
          v16 = *MEMORY[0x1E697AFF8];
          v53[0] = *MEMORY[0x1E697B018];
          v17 = *MEMORY[0x1E697AEF8];
          v52[0] = v16;
          v52[1] = v17;
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IndexByName | 0x10000];
          v19 = *MEMORY[0x1E697B310];
          v53[1] = v18;
          v53[2] = MEMORY[0x1E695E118];
          v20 = *MEMORY[0x1E697B318];
          v52[2] = v19;
          v52[3] = v20;
          v21 = *MEMORY[0x1E697B320];
          v53[3] = MEMORY[0x1E695E118];
          v53[4] = MEMORY[0x1E695E118];
          v22 = *MEMORY[0x1E697AEB0];
          v52[4] = v21;
          v52[5] = v22;
          v23 = *MEMORY[0x1E697AE70];
          v53[5] = MEMORY[0x1E695E118];
          v53[6] = kPCSServiceName[0];
          v24 = *MEMORY[0x1E697AE80];
          v52[6] = v23;
          v52[7] = v24;
          v53[7] = *(a1 + 40);
          v52[8] = *MEMORY[0x1E697AEA8];
          v53[8] = PCSServiceItemGetViewHintByName(key);
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:9];

          cf[0] = 0;
          v26 = SecItemCopyMatching(v25, cf);
          if (v26)
          {
            v27 = pcsLogObjForScope("ckks");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v49 = key;
              v50 = 1024;
              v51 = v26;
              _os_log_impl(&dword_1B229C000, v27, OS_LOG_TYPE_DEFAULT, "Failed to get current in local keychain for service %@: %d", buf, 0x12u);
            }
          }

          else
          {
            v28 = cf[0];
            if (cf[0])
            {
              v29 = [cf[0] objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];

              v30 = [v28 objectForKeyedSubscript:*MEMORY[0x1E697AE68]];

              if (v29 && v30)
              {
                PCSServiceItemGetAccessGroupByName(key);
                v32 = v28;
                v33 = v6;
                SecItemSetCurrentItemAcrossAllDevices();
                dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
              }

              else
              {
                v31 = pcsLogObjForScope("ckks");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v49 = key;
                  _os_log_impl(&dword_1B229C000, v31, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS pref and digest %@", buf, 0xCu);
                }
              }
            }
          }
        }

        else
        {
          v25 = pcsLogObjForScope("ckks");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = key;
            _os_log_impl(&dword_1B229C000, v25, OS_LOG_TYPE_DEFAULT, "Failed to get service ID for %@", buf, 0xCu);
          }
        }
      }

      v14 = v35;
    }

    else
    {
      v14 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = key;
        _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS view for service %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }
}

void sub_1B22CC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __PCSEngineAddMissingCurrentPointers_block_invoke_844(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && !a3)
  {
    goto LABEL_6;
  }

  v6 = pcsLogObjForScope("ckks");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS current item pointer for service %@: %@", &v9, 0x16u);
  }

  if (a2)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = PCSIdentityCreateFromPersistentReference(a2, *(a1 + 64));
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __PCSEngineAddMissingCurrentPointers_block_invoke_847(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("ckks");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = a2;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Failed to setting CKKS current for service %@: %@", &v10, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Set CKKS current for service %@ to the identity: %@", &v10, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t PCSEnginePreCheckHSMWrite(void *a1, const void **a2)
{
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupStingray[0]);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && !CFBooleanGetValue(v6))
    {
      goto LABEL_8;
    }
  }

  v8 = [v3 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupUsername[0]);
  v10 = [v3 options];
  v11 = CFDictionaryGetValue(v10, kPCSSetupPassword[0]);
  if (!v9 || (v12 = v11, v13 = CFGetTypeID(v9), v13 != CFStringGetTypeID()))
  {
    PCSEnginePreCheckHSMWrite_cold_2(v3, a2);
LABEL_12:
    v15 = 0;
    goto LABEL_9;
  }

  if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFStringGetTypeID()))
  {
    PCSEnginePreCheckHSMWrite_cold_1(v3, a2);
    goto LABEL_12;
  }

LABEL_8:
  v15 = 1;
LABEL_9:

  return v15;
}

uint64_t PCSEngineStepEnableiCDP(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setICDP:{objc_msgSend(v1, "iCDPHSM")}];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMWalrus:0];
  [v1 setICDPHSMPlesio:0];

  return 1;
}

uint64_t PCSEngineNotifyKeyChanges(void *a1)
{
  v1 = a1;
  if (([v1 modified] & 1) != 0 || objc_msgSend(v1, "newIdentity"))
  {
    notify_post("com.apple.ProtectedCloudStorage.updatedKeys");
    _PCSPostHaveCredentials();
  }

  return 1;
}

Class __getAKAccountManagerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B19648;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (AuthKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
  }

  getAKAccountManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void PCSEngineFixOctagonW(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E69B7CC8];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x1E69B7CE8]);
  [v9 setEnabled:a3];
  [v8 setWalrus:v9];
  v14 = 0;
  v10 = [v7 setAccountSetting:v8 error:&v14];

  v11 = v14;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    PCSMigrationLog([v5 log], @"Failed to set account setting :%@", v11);
  }
}

uint64_t PCSEngineStepEnableiCDPIfArmed(void *a1, const void **a2)
{
  v3 = a1;
  v4 = [v3 newIdentity];
  if (v4)
  {
    _PCSError(a2, 62, @"can't close door with new identity");
  }

  else
  {
    [v3 setModified:1];
    if ([v3 iCDPHSMArmed])
    {
      [v3 setICDPArmed:{objc_msgSend(v3, "iCDPHSMArmed")}];
      v5 = [v3 iCDPHSMArmed];
    }

    else
    {
      [v3 setICDPArmed:{objc_msgSend(v3, "iCDPHSM")}];
      v5 = [v3 iCDPHSM];
    }

    [v3 setICDP:v5];
    [v3 setICDPHSMWalrus:0];
    [v3 setICDPHSMPlesio:0];
  }

  return v4 ^ 1u;
}

uint64_t PCSEngineStepDropStingray(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setDropHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPPlesio:1];
  [v1 setICDPHSMPlesio:1];

  return 1;
}

uint64_t PCSEngineFailOnNotDroppedKeys(void *a1, const void **a2)
{
  v3 = a1;
  if ([v3 iCDPHSMWalrus] & 1) != 0 || (objc_msgSend(v3, "iCDPHSMPlesio"))
  {
    v4 = 1;
  }

  else
  {
    _PCSError(a2, 160, @"Keys was NOT dropped from HSM");
    v4 = 0;
  }

  return v4;
}

uint64_t PCSEngineStepUndropStingray(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setRestoreHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMPlesio:0];

  return 1;
}

uint64_t PCSEngineUnsetCurrentItems(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (_os_feature_enabled_impl())
  {
    v4 = PCSIdentitySetCreate([v3 options], 0, a2);
    v5 = v4;
    if (v4)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v6 = _PCSServiceItemsGetNoRollStingrayServiceTypes(v4);
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __PCSEngineUnsetCurrentItems_block_invoke;
      v18[3] = &unk_1E7B19668;
      v8 = v6;
      v19 = v8;
      v20 = v3;
      v22 = &v28;
      v23 = v5;
      v9 = v7;
      v21 = v9;
      PCSServiceItemsGetEachName(v18);
      if (*(v29 + 24) == 1)
      {
        _PCSError(a2, 4, @"Failed to make one or more current identities non-current");
      }

      else if (_PCSRunningInUnitTests())
      {
        *(v25 + 24) = 1;
      }

      else
      {
        v10 = dispatch_semaphore_create(0);
        v11 = off_1ED6F2380;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __PCSEngineUnsetCurrentItems_block_invoke_2;
        v14[3] = &unk_1E7B18B68;
        v16 = &v24;
        v17 = a2;
        v12 = v10;
        v15 = v12;
        v11(@"com.apple.ProtectedCloudStorage", v9, @"ProtectedCloudStorage", v14);
        dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      }

      CFRelease(v5);
      LOBYTE(v5) = *(v25 + 24);

      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(&v28, 8);
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

void sub_1B22CD3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSEngineStepEnableWalrus(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setDropHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMWalrus:1];

  return 1;
}

uint64_t PCSEngineAddMissingCurrentPointersWithFFCheck(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (_os_feature_enabled_impl())
  {
    v4 = 1;
  }

  else
  {
    v4 = PCSEngineAddMissingCurrentPointers(v3, a2);
  }

  return v4;
}

uint64_t PCSEngineStepInitiateKeyRolling(void *a1, uint64_t *a2)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!_os_feature_enabled_impl())
  {
    v5 = +[PCSAnalytics logger];
    [v5 logSuccessForEvent:@"PCSEventInitiateKeyRolling"];
    [v3 setModified:1];
    v6 = [v3 options];
    Value = CFDictionaryGetValue(v6, kPCSSetupDSID[0]);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()))
    {
      v10 = PCSCurrentPersonaMatchesDSID(v8);
      if (!a2 || v10)
      {
        v15 = _PCSServiceItemsGetNoRollStingrayServiceTypes(v10);
        v45 = 0;
        v46 = &v45;
        v47 = 0x2020000000;
        v48 = 0;
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0;
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __PCSEngineStepInitiateKeyRolling_block_invoke;
        v30 = &unk_1E7B19690;
        v16 = v15;
        v31 = v16;
        v17 = v3;
        v35 = &v41;
        v36 = v8;
        v32 = v17;
        v33 = &v45;
        v34 = &v37;
        PCSServiceItemsGetEachName(&v27);
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%u", @"PCSEventMarkForKeyRolling", *(v46 + 6)];
        if (*(v42 + 6) || *(v38 + 6))
        {
          v19 = [v17 log];
          PCSMigrationLog(v19, @"While marking identities for rolling: %u marked, %u failed to find, %u failed to mark", *(v46 + 6), *(v42 + 6), *(v38 + 6), v27, v28, v29, v30, v31);
          v20 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:158 userInfo:0];
          v49[0] = @"markedToRoll";
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v46 + 6)];
          v50[0] = v21;
          v49[1] = @"failedToMark";
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v42 + 6)];
          v50[1] = v22;
          v49[2] = @"notFoundToMark";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v38 + 6)];
          v50[2] = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];
          [v5 logRecoverableError:v20 forEvent:v18 withAttributes:v24];
        }

        else
        {
          [v5 logSuccessForEvent:v18];
        }

        v25 = objc_alloc_init(MEMORY[0x1E695E000]);
        v26 = [MEMORY[0x1E695DF00] distantPast];
        [v25 setObject:v26 forKey:kPCSSettingStingrayRoll];

        _Block_object_dispose(&v37, 8);
        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(&v45, 8);

        v4 = 1;
        goto LABEL_10;
      }

      v11 = MEMORY[0x1E696ABC0];
      v12 = kPCSErrorDomain;
      v51 = *MEMORY[0x1E696A578];
      v52[0] = @"Current persona does not match chosen dsid";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      *a2 = [v11 errorWithDomain:v12 code:152 userInfo:v13];
    }

    else
    {
      _PCSErrorContext([v3 log], a2, 121, @"Missing parameter: dsid");
    }

    v4 = 0;
LABEL_10:

    goto LABEL_11;
  }

  PCSMigrationLog([v3 log], @"Feature enabled, skipping");
  v4 = 1;
LABEL_11:

  return v4;
}

void sub_1B22CD914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PCSEngineUnsetCurrentItems_block_invoke(uint64_t a1, __CFString *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((PCSServiceItemTypeIsManatee(a2) & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    AccessGroupByName = PCSServiceItemGetAccessGroupByName(a2);
    if (CFEqual(@"com.apple.ProtectedCloudStorage", AccessGroupByName))
    {
      CKKSViewByName = PCSServiceItemGetCKKSViewByName(a2);
      if (CFEqual(@"ProtectedCloudStorage", CKKSViewByName))
      {
        v11 = 0;
        v7 = PCSIdentitySetUnsetCurrentIdentity(*(a1 + 64), a2, &v11);
        v8 = *(a1 + 40);
        if (v7)
        {
          if (PCSIdentitySetUnsetCurrentIdentity([v8 set], a2, &v11))
          {
            [*(a1 + 48) addObject:a2];
            goto LABEL_13;
          }

          v10 = [*(a1 + 40) log];
          PCSMigrationLog(v10, @"Failed to unset current identity in set: %@", v11);
        }

        else
        {
          v9 = [v8 log];
          PCSMigrationLog(v9, @"Failed to unset current identity: %@", v11);
        }
      }

      else
      {
        PCSMigrationLog([*(a1 + 40) log], @"Incorrect view for %@", a2);
      }
    }

    else
    {
      PCSMigrationLog([*(a1 + 40) log], @"Incorrect access group for %@", a2);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_13:
  objc_autoreleasePoolPop(v4);
}

intptr_t __PCSEngineUnsetCurrentItems_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  v3 = *(*(a1 + 40) + 8);
  if (cf)
  {
    *(v3 + 24) = 0;
    if (*(a1 + 48))
    {
      **(a1 + 48) = CFRetain(cf);
    }
  }

  else
  {
    *(v3 + 24) = 1;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void __PCSEngineStepInitiateKeyRolling_block_invoke(uint64_t a1, const __CFNumber *a2)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if ((PCSServiceItemTypeIsManatee(a2) & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    IndexByName = PCSServiceItemGetIndexByName(a2);
    if (IndexByName)
    {
      v6 = IndexByName;
      v7 = *MEMORY[0x1E697B018];
      v8 = *MEMORY[0x1E697AEB0];
      v21[0] = *MEMORY[0x1E697AFF8];
      v21[1] = v8;
      v9 = MEMORY[0x1E695E118];
      v22[0] = v7;
      v22[1] = MEMORY[0x1E695E118];
      v10 = *MEMORY[0x1E697AE80];
      v21[2] = *MEMORY[0x1E697AE70];
      v21[3] = v10;
      v11 = *(a1 + 72);
      v22[2] = kPCSServiceName[0];
      v22[3] = v11;
      v21[4] = *MEMORY[0x1E697AEF8];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IndexByName | 0x10000];
      v22[4] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

      v19 = *MEMORY[0x1E697AD10];
      v20 = v9;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = qword_1ED6F2358(v13, v14);
      if (v15 == -25300)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        PCSMigrationLog([*(a1 + 40) log], @"Failed to find identity for service %@ to mark for rolling", a2);
      }

      else if (v15)
      {
        ++*(*(*(a1 + 64) + 8) + 24);
        PCSMigrationLog([*(a1 + 40) log], @"Failed to mark identities for service %@ for rolling: %d", a2, v15);
      }

      else
      {
        ++*(*(*(a1 + 48) + 8) + 24);
        v16 = [*(a1 + 40) options];
        v17 = CFDictionaryGetValue(v16, kPCSSetupCallbackMarkNegative[0]);
        v18 = v17;
        if (v17)
        {
          (*(v17 + 16))(v17, *(a1 + 72), v6);
        }
      }
    }

    else
    {
      PCSMigrationLog([*(a1 + 40) log], @"Failed to get service ID for %@", a2);
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t PCSEngineStepDisableWalrus(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setRestoreHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMWalrus:0];

  return 1;
}

BOOL PCSEngineExitOnDroppedKeys(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (([v3 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v3, "iCDPHSMPlesio"))
  {
    v4 = v3;
    v5 = 1;
    [v4 setDone:1];
    if (![v4 set])
    {
      [v4 setSet:{PCSIdentitySetCreate(objc_msgSend(v4, "options"), 0, a2)}];
      v5 = [v4 set] != 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __GetLegacyServiceArray_block_invoke()
{
  v1[11] = *MEMORY[0x1E69E9840];
  v1[0] = kPCSServiceMaster;
  v1[1] = kPCSServiceBladerunner;
  v1[2] = kPCSServiceHyperion;
  v1[3] = kPCSServiceLiverpool;
  v1[4] = kPCSServiceEscrow;
  v1[5] = kPCSServiceFDE;
  v1[6] = kPCSServicePianoMover;
  v1[7] = kPCSServiceBackup;
  v1[8] = kPCSServiceSharing;
  v1[9] = kPCSServiceGaming;
  v1[10] = kPCSServiceBTPairing;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:11];
  _MergedGlobals_0 = result;
  return result;
}

uint64_t PCSEngineDifferentOniCDP(void *a1)
{
  v1 = a1;
  cf = 0;
  if ([v1 iCDPHSM] && (objc_msgSend(v1, "triggerUpdate") & 1) == 0)
  {
    PCSEngineDifferentOniCDP_cold_1(v1, &cf);
  }

  else
  {
    v2 = [v1 log];
    v3 = _PCSYESNO([v1 iCDPHSM]);
    v4 = _PCSYESNO([v1 triggerUpdate]);
    PCSMigrationLog(v2, @"DifferentOniCDP: %@ triggerUpdate: %@", v3, v4);
  }

  v5 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v5);
  }

  return 1;
}

BOOL PCSEngineCreateEmptyKeyset(void *a1, const void **a2)
{
  v3 = a1;
  [v3 clearSet];
  [v3 setSet:PCSIdentitySetCreateMutable(a2)];
  v4 = [v3 set];

  return v4 != 0;
}

uint64_t PCSEnginePreCheckHSMRead(void *a1, const void **a2)
{
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupStingray[0]);
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && !CFBooleanGetValue(v6) || (v8 = [v3 options], (v9 = CFDictionaryGetValue(v8, kPCSSetupUsername[0])) != 0) && (v10 = CFGetTypeID(v9), v10 == CFStringGetTypeID()))
  {
    v11 = 1;
  }

  else
  {
    PCSEnginePreCheckHSMWrite_cold_2(v3, a2);
    v11 = 0;
  }

  return v11;
}

BOOL PCSEngineForceRecover(void *a1, const void **a2)
{
  v3 = a1;
  [v3 setClassicContent:{__PCSCopyHSMData(0, objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
  v4 = [v3 classicContent];

  return v4 != 0;
}

CFIndex OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return _PCSErrorContext(a1, v4, 57, a4);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return PCSIdentityMigrateEngineRun(v0, v1);
}

void sub_1B22CF048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PCSCacheCurrentIdentitiesForServices(uint64_t a1, unsigned int a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  if (_os_feature_enabled_impl())
  {
    v4 = +[PCSCKKSOutOfBandFetchCache cache];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __PCSCacheCurrentIdentitiesForServices_block_invoke;
    v24[3] = &unk_1E7B197D0;
    v24[4] = &v31;
    v24[5] = &v25;
    [v4 getCurrentIdentities:a1 result:v24];

    if ([v26[5] count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = v26[5];
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v36 count:16];
      if (v7)
      {
        v8 = *v21;
        v9 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            AccessGroupByName = PCSServiceItemGetAccessGroupByName(v11);
            CKKSViewByName = PCSServiceItemGetCKKSViewByName(v11);
            if (AccessGroupByName)
            {
              v14 = CKKSViewByName == 0;
            }

            else
            {
              v14 = 1;
            }

            if (v14)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                PCSCacheCurrentIdentitiesForServices_cold_1(buf, v11, &buf[4]);
              }
            }

            else
            {
              v15 = [objc_alloc(MEMORY[0x1E697AA28]) initWithIdentifier:v11 accessGroup:AccessGroupByName zoneID:CKKSViewByName];
              [v5 addObject:v15];
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v20 objects:v36 count:16];
        }

        while (v7);
      }

      if (!v32[3])
      {
        v32[3] = PCSIdentitySetCreateMutable(0);
      }

      v19 = v18;
      SecItemFetchCurrentItemOutOfBand();
    }

    else
    {
      (*(v18 + 2))(v18, v32[3], 0);
      v17 = v32[3];
      if (v17)
      {
        v32[3] = 0;
        CFRelease(v17);
      }
    }
  }

  else
  {
    *buf = 0;
    _PCSError(buf, 164, @"feature disabled");
    (*(v18 + 2))(v18, 0, *buf);
    v16 = *buf;
    if (*buf)
    {
      *buf = 0;
      CFRelease(v16);
    }
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

void sub_1B22CF500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PCSCacheCurrentIdentitiesForServices_block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __PCSCacheCurrentIdentitiesForServices_block_invoke_53(void *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    cf = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = *(*(a1[5] + 8) + 40);
          v14 = [v12 identifier];
          [v13 removeObject:v14];

          v15 = [v12 decryptedRecord];
          v16 = PCSIdentityCreateWithKeychainAttributes(v15);

          v17 = *(a1[6] + 8);
          v18 = *(v17 + 24);
          if (v16)
          {
            v19 = cf == 0;
          }

          else
          {
            v19 = 0;
          }

          if (!v19)
          {
            if (v18)
            {
              *(v17 + 24) = 0;
              CFRelease(v18);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_21;
          }

          PCSIdentitySetAddIdentity(v18, v16);
          PCSIdentitySetSetCurrentIdentity(*(*(a1[6] + 8) + 24), v16);
          CFRelease(v16);
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if (*(*(a1[6] + 8) + 24))
    {
      v20 = cf == 0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = +[PCSCKKSOutOfBandFetchCache cache];
      [v21 cacheCurrentIdentityFetchResult:*(*(a1[6] + 8) + 24) notFound:*(*(a1[5] + 8) + 40)];
    }

    (*(a1[4] + 16))();
    v22 = *(a1[6] + 8);
    v23 = *(v22 + 24);
    if (v23)
    {
      *(v22 + 24) = 0;
      CFRelease(v23);
    }

    v24 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v24);
    }
  }
}

void PCSCacheCurrentIdentitiesForDefaultServicesForceFetch(unsigned int a1, void *a2)
{
  v3 = a2;
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"com.apple.homekit");
  CFSetAddValue(Mutable, @"com.apple.siri.data");
  PCSCacheCurrentIdentitiesForServices(Mutable, a1, v3);

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t PCSCacheCopyIdentity(uint64_t a1)
{
  v2 = +[PCSCKKSOutOfBandFetchCache cache];
  v3 = [v2 copyIdentity:a1];

  return v3;
}

void _PCSCKKSOutOfBandFetchIdentities(void *a1, void *a2, unsigned int a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v6 = a2;
  v21 = a4;
  IndexByName = PCSServiceItemGetIndexByName(v6);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v7 = +[PCSCKKSOutOfBandFetchCache cache];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___PCSCKKSOutOfBandFetchIdentities_block_invoke;
  v30[3] = &unk_1E7B197D0;
  v30[4] = &v37;
  v30[5] = &v31;
  [v7 getPCSIdentities:v22 forServiceID:IndexByName result:v30];

  v8 = v38[3];
  if (v8)
  {
    v21[2](v21, v8, 0);
    v9 = v38[3];
    if (v9)
    {
      v38[3] = 0;
      CFRelease(v9);
    }
  }

  else if ([v32[5] count])
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v32[5];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v42 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          AccessGroupByName = PCSServiceItemGetAccessGroupByName(v6);
          CKKSViewByName = PCSServiceItemGetCKKSViewByName(v6);
          if (AccessGroupByName && (v17 = CKKSViewByName) != 0)
          {
            v18 = objc_alloc(MEMORY[0x1E697AA40]);
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IndexByName];
            v20 = [v18 initWithServiceNumber:v19 accessGroup:AccessGroupByName publicKey:v14 zoneID:v17];

            [v23 addObject:v20];
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            PCSCacheCurrentIdentitiesForServices_cold_1(buf, v6, &buf[4]);
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v26 objects:v42 count:16];
      }

      while (v11);
    }

    v25 = v21;
    SecItemFetchPCSIdentityOutOfBand();
  }

  else
  {
    v21[2](v21, 0, 0);
  }

  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
}

void sub_1B22CFCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PCSServiceItemDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      a1[2] = 0;
      CFRelease(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      a1[5] = 0;
      CFRelease(v3);
    }

    v4 = a1[6];
    if (v4)
    {
      a1[6] = 0;
      CFRelease(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      a1[4] = 0;
      CFRelease(v5);
    }

    v6 = a1[7];
    if (v6)
    {
      a1[7] = 0;
      CFRelease(v6);
    }

    v7 = a1[8];
    if (v7)
    {
      a1[8] = 0;
      CFRelease(v7);
    }

    v8 = a1[11];
    if (v8)
    {
      a1[11] = 0;

      CFRelease(v8);
    }
  }
}

uint64_t PCSServiceItemCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (v5 != v6)
      {
        return 0;
      }
    }

    else
    {
      result = CFEqual(v5, v6);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(a1 + 40);
    v9 = *(a2 + 40);
    if (v8 && v9)
    {
      return CFEqual(v8, v9) != 0;
    }

    else
    {
      return v8 == v9;
    }
  }

  return result;
}

CFStringRef PCSServiceItemCopyDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SI@%p", a1);
  v4 = @"NA";
  v5 = *(a1 + 40);
  if (!v5)
  {
    v5 = @"NA";
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (!v6)
  {
    v6 = @"NA";
  }

  if (!v7)
  {
    v7 = @"NA";
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 64);
  }

  v8 = 121;
  if (*(a1 + 79))
  {
    v8 = 89;
  }

  if (*(a1 + 78))
  {
    v9 = 75;
  }

  else
  {
    v9 = 107;
  }

  v10 = 101;
  if (*(a1 + 77))
  {
    v10 = 69;
  }

  v11 = 97;
  if (*(a1 + 76))
  {
    v11 = 65;
  }

  v12 = 109;
  if (*(a1 + 74))
  {
    v12 = 77;
  }

  v13 = 114;
  if (*(a1 + 73))
  {
    v13 = 82;
  }

  v14 = 45;
  if (*(a1 + 72))
  {
    v14 = 55;
  }

  v15 = CFStringCreateWithFormat(v2, 0, @"<%@: [name/oldName: %@/%@] [viewHint: %@] [class: %@] [keyDescription: %@] [number: %@] [%c%c%c%c%c%c%c] %08d %08x [accessGroup: %@]", v3, *(a1 + 16), v5, v6, v7, v4, *(a1 + 32), v14, v13, v12, v11, v10, v9, v8, *(a1 + 28), *(a1 + 80), *(a1 + 88));
  if (v3)
  {
    CFRelease(v3);
  }

  return v15;
}

CFIndex PCSServiceItemsCount()
{
  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v1 = PCSServiceItemsInit_localServiceItems;

  return CFDictionaryGetCount(v1);
}

void PCSServiceItemsInfoIteration(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemsInfoIteration_block_invoke;
  v3[3] = &unk_1E7B19848;
  v4 = v1;
  v2 = v1;
  PCSServiceItemsIterate(v3);
}

void PCSServiceItemsGetEachName(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemsGetEachName_block_invoke;
  v3[3] = &unk_1E7B19848;
  v4 = v1;
  v2 = v1;
  PCSServiceItemsIterate(v3);
}

uint64_t PCSServiceItemsGetCFArrayOfNames(uint64_t a1, uint64_t a2)
{
  if (PCSServiceItemsGetCFArrayOfNames_once != -1)
  {
    PCSServiceItemsGetCFArrayOfNames_cold_1();
  }

  return PCSServiceItemsGetCFArrayOfNames_array;
}

void __PCSServiceItemsGetCFArrayOfNames_block_invoke()
{
  PCSServiceItemsGetCFArrayOfNames_array = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);

  PCSServiceItemsIterate(&__block_literal_global_59);
}

void __PCSServiceItemsGetCFArrayOfNames_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!CFEqual(kPCSServiceRaw, *(a3 + 16)))
  {
    v4 = PCSServiceItemsGetCFArrayOfNames_array;
    v5 = *(a3 + 16);

    CFArrayAppendValue(v4, v5);
  }
}

uint64_t PCSServiceItemsGetCFArraySortedByIndex(uint64_t a1, uint64_t a2)
{
  if (PCSServiceItemsGetCFArraySortedByIndex_once != -1)
  {
    PCSServiceItemsGetCFArraySortedByIndex_cold_1();
  }

  return PCSServiceItemsGetCFArraySortedByIndex_array;
}

void __PCSServiceItemsGetCFArraySortedByIndex_block_invoke()
{
  PCSServiceItemsGetCFArraySortedByIndex_array = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  PCSServiceItemsIterate(&__block_literal_global_63);
  v0 = PCSServiceItemsGetCFArraySortedByIndex_array;
  v1.length = CFArrayGetCount(PCSServiceItemsGetCFArraySortedByIndex_array);
  v1.location = 0;

  CFArraySortValues(v0, v1, compareServiceItemIndex, 0);
}

uint64_t compareServiceItemIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = v2 < v3;
  v5 = v2 != v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void PCSServiceItemsGetInfoSortedByIndex(void *a1)
{
  v6 = a1;
  if (PCSServiceItemsGetCFArraySortedByIndex_once != -1)
  {
    PCSServiceItemsGetCFArraySortedByIndex_cold_1();
  }

  v1 = PCSServiceItemsGetCFArraySortedByIndex_array;
  Count = CFArrayGetCount(PCSServiceItemsGetCFArraySortedByIndex_array);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      (*(v6 + 2))(v6, *(ValueAtIndex + 6), ValueAtIndex[2], *(ValueAtIndex + 74), *(ValueAtIndex + 73), *(ValueAtIndex + 7), ValueAtIndex[7], ValueAtIndex[6]);
    }
  }
}

uint64_t PCSServiceItemTypeIsShareableManatee(void *key)
{
  if (!key)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (v2)
  {
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if (CFEqual(*(v2 + 16), @"Raw"))
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

LABEL_9:
  if (!PCSServiceItemTypeIsManatee(key))
  {
    goto LABEL_11;
  }

  v3 = *(v2 + 75);
  return v3 & 1;
}

void sub_1B22D0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemCanRoll(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (v2)
  {
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!CFEqual(*(v2 + 16), @"Raw"))
  {
    v3 = *(v2 + 73);
    return v3 & 1;
  }

LABEL_8:
  v3 = 0;
  return v3 & 1;
}

void sub_1B22D097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemRequireAuthorship(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (!v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  _Block_object_dispose(&v6, 8);
LABEL_7:
  v3 = *(v2 + 76);
  return v3 & 1;
}

void sub_1B22D0A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *PCSServiceItemGetFlagsByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 80);
  }

  return key;
}

void sub_1B22D0BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *PCSServiceItemGetRollIntervalByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 28);
  }

  return key;
}

void sub_1B22D0CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *PCSServiceItemGetAccessClassByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 56);
  }

  return key;
}

void sub_1B22D0DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemEscrowManateeIdentityByName(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (!v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  _Block_object_dispose(&v6, 8);
LABEL_7:
  v3 = *(v2 + 77);
  return v3 & 1;
}

void sub_1B22D0F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemAllowKeyExportByIndex(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PCSServiceItemGetByIndex_block_invoke;
  v4[3] = &unk_1E7B19890;
  v5 = a1;
  v4[4] = &v6;
  PCSServiceItemsIterate(v4);
  v1 = v7[3];
  _Block_object_dispose(&v6, 8);
  if (v1 && (*(v1 + 74) & 1) == 0)
  {
    v2 = *(v1 + 78);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1B22D0FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemAnonymousSharingByIndex(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PCSServiceItemGetByIndex_block_invoke;
  v4[3] = &unk_1E7B19890;
  v5 = a1;
  v4[4] = &v6;
  PCSServiceItemsIterate(v4);
  v1 = v7[3];
  _Block_object_dispose(&v6, 8);
  if (v1)
  {
    v2 = *(v1 + 79);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1B22D10B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemGetViewHintByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

void sub_1B22D1184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PCSServiceItemGetAccessGroupByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 88))
  {
    return *(v1 + 88);
  }

  return kPCSDefaultKeychainGroup[0];
}

void sub_1B22D1264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemGetNumberByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_1B22D1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex PCSServiceItemsCountByFlags(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __PCSServiceItemsCountByFlags_block_invoke;
    v3[3] = &unk_1E7B19890;
    v4 = a1;
    v3[4] = &v5;
    PCSServiceItemsIterate(v3);
    v1 = v6[3];
  }

  else
  {
    v1 = PCSServiceItemsCount() - 1;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_1B22D1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSServiceItemsCountByFlags_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 80) & *(result + 40)) != 0)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

id _PCSServiceItemsGetTooRolledServiceTypes(uint64_t a1)
{
  if (_PCSServiceItemsGetTooRolledServiceTypes_onceToken != -1)
  {
    _PCSServiceItemsGetTooRolledServiceTypes_cold_1();
  }

  v2 = _PCSServiceItemsGetTooRolledServiceTypes_tooRolled;

  return v2;
}

id _PCSServiceItemsGetNoRollStingrayServiceTypes(uint64_t a1)
{
  if (_PCSServiceItemsGetNoRollStingrayServiceTypes_once != -1)
  {
    _PCSServiceItemsGetNoRollStingrayServiceTypes_cold_1();
  }

  v2 = _PCSServiceItemsGetNoRollStingrayServiceTypes_noRoll;

  return v2;
}

id _PCSServiceItemsGetAllManateeServices(uint64_t a1, uint64_t a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (PCSServiceItemsGetCFArrayOfNames_once != -1)
  {
    PCSServiceItemsGetCFArrayOfNames_cold_1();
  }

  v2 = PCSServiceItemsGetCFArrayOfNames_array;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = _PCSServiceItemsGetTooRolledServiceTypes(v3);
  v16[0] = kPCSiCloudAccountsAttestationFramework;
  v16[1] = kPCSSafariSharedBookmarks;
  v16[2] = @"Messages2";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = ___PCSServiceItemsGetAllManateeServices_block_invoke;
  context[3] = &unk_1E7B198B8;
  v13 = v4;
  v14 = v5;
  v6 = v3;
  v15 = v6;
  v7 = v5;
  v8 = v4;
  v17.length = CFArrayGetCount(v2);
  v17.location = 0;
  CFArrayApplyFunction(v2, v17, apply_block_1_3, context);
  v9 = v15;
  v10 = v6;

  return v6;
}

const void *__PCSServiceItemGetByName_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 40);
  v6 = *(a1 + 40);
  if (result)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (result != v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = CFEqual(result, v6);
  if (result)
  {
LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

id _PCSGuitarfishDeriveRecoveryTokenWrap(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  if (v7 == [v6 length])
  {
    v8 = [v6 length];
    v9 = [MEMORY[0x1E695DF88] dataWithLength:v8];
    v10 = [v5 bytes];
    v11 = [v6 bytes];
    for (i = [v9 mutableBytes]; v8; --v8)
    {
      v14 = *v10++;
      v13 = v14;
      v15 = *v11++;
      *i++ = v15 ^ v13;
    }
  }

  else if (a3)
  {
    v16 = [v5 length];
    [v6 length];
    PCSErrorCreate(20, @"Mismatched lengths of input keys: %lu, %lu", v17, v18, v19, v20, v21, v22, v16);
    *a3 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id _PCSGuitarfishDerivePTokenFromPRecoveryAndMnemonic(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___PCSGuitarfishDerivePTokenFromPRecoveryAndMnemonic_block_invoke;
  v10[3] = &unk_1E7B19998;
  v10[4] = &v17;
  v10[5] = &v11;
  PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v6, v10);
  v7 = v12[5];
  if (v7)
  {
    v8 = 0;
    if (a3)
    {
      *a3 = v7;
    }
  }

  else
  {
    v8 = _PCSGuitarfishDeriveRecoveryTokenWrap(v5, v18[5], a3);
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void sub_1B22D1C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void PCSGuitarfishDeriveRecoveryKeyFromMnemonic(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MnemonicRepresentation seedFromMnemonic:a1];
  if (v4)
  {
    v5 = [@"GuitarfishSalt" dataUsingEncoding:4];
    ccsha512_di();
    [v4 length];
    [v4 bytes];
    [v5 length];
    [v5 bytes];
    [@"key" lengthOfBytesUsingEncoding:4];
    [@"key" UTF8String];
    if (cchkdf())
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = kPCSErrorDomain;
      v19 = *MEMORY[0x1E696A578];
      v20 = @"Unable to derive key from input entropy";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:{1, v21}];
      v9 = [v6 errorWithDomain:v7 code:147 userInfo:v8];
      (*(v3 + 2))(v3, 0, 0, v9);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v21 length:{32, v21}];
      ccsha512_di();
      [v4 length];
      [v4 bytes];
      [v5 length];
      [v5 bytes];
      [@"pid" lengthOfBytesUsingEncoding:4];
      [@"pid" UTF8String];
      if (cchkdf())
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = kPCSErrorDomain;
        v17 = *MEMORY[0x1E696A578];
        v18 = @"Unable to derive pid from input entropy";
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:{1, v21}];
        v16 = [v14 errorWithDomain:v15 code:147 userInfo:v9];
        (*(v3 + 2))(v3, v8, 0, v16);
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v21 length:{32, v21}];
        (*(v3 + 2))(v3, v8, v9, 0);
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = kPCSErrorDomain;
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"unable to derive seed from stored mnemonic";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [v10 errorWithDomain:v11 code:18 userInfo:v12];
    (*(v3 + 2))(v3, 0, 0, v13);
  }
}

__CFData *_PCSGuitarfishWrapDataWithAESKey(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  if ([(__CFData *)v6 length]== 16 || [(__CFData *)v6 length]== 24 || [(__CFData *)v6 length]== 32)
  {
    v17 = _PCSStingrayCopyEncryptedData(v6, v5);
    if (!v17)
    {
      _PCSNSError(a3, 12, @"unable to encrypt data with AES key", v12, v13, v14, v15, v16, v19);
    }
  }

  else
  {
    _PCSNSError(a3, 165, @"bad key length", v7, v8, v9, v10, v11, v19);
    v17 = 0;
  }

  return v17;
}

__CFData *_PCSGuitarfishUnwrapDataWithAESKey(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  if ([(__CFData *)v6 length]== 16 || [(__CFData *)v6 length]== 24 || [(__CFData *)v6 length]== 32)
  {
    v17 = _PCSStingrayCopyDecryptedData(v6, v5);
    if (!v17)
    {
      _PCSNSError(a3, 13, @"unable to decrypt data with AES key", v12, v13, v14, v15, v16, v19);
    }
  }

  else
  {
    _PCSNSError(a3, 165, @"bad key length", v7, v8, v9, v10, v11, v19);
    v17 = 0;
  }

  return v17;
}

id _PCSGuitarfishWrapKeyWithAESKey(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  wrappedKeyLen = CCSymmetricWrappedSize(1u, [v6 length]);
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:wrappedKeyLen];
  v8 = [v7 mutableBytes];
  v9 = *MEMORY[0x1E69E94C8];
  v10 = *MEMORY[0x1E69E94D0];
  v11 = [v5 bytes];
  v12 = [v5 length];

  v13 = [v6 bytes];
  v14 = [v6 length];

  v15 = CCSymmetricKeyWrap(1u, v9, v10, v11, v12, v13, v14, v8, &wrappedKeyLen);
  if (v15)
  {
    v16 = v15;
    v17 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v28 = v16;
      _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Unable to wrap data: %d", buf, 8u);
    }

    if (a3)
    {
      PCSErrorCreate(12, @"Unable to wrap data: %d", v18, v19, v20, v21, v22, v23, v16);
      *a3 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = v7;
  }

  return v24;
}

id _PCSGuitarfishUnwrapKeyWithAESKey(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  rawKeyLen = CCSymmetricUnwrappedSize(1u, [v6 length]);
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:rawKeyLen];
  v8 = [v7 mutableBytes];
  v9 = *MEMORY[0x1E69E94C8];
  v10 = *MEMORY[0x1E69E94D0];
  v11 = [v5 bytes];
  v12 = [v5 length];

  v13 = [v6 bytes];
  v14 = [v6 length];

  v15 = CCSymmetricKeyUnwrap(1u, v9, v10, v11, v12, v13, v14, v8, &rawKeyLen);
  if (v15)
  {
    v16 = v15;
    v17 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v28 = v16;
      _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Unable to unwrap data: %d", buf, 8u);
    }

    if (a3)
    {
      PCSErrorCreate(13, @"Unable to unwrap data: %d", v18, v19, v20, v21, v22, v23, v16);
      *a3 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = v7;
  }

  return v24;
}

void PCSGuitarfishGetRecoveryTokenInfo(void *a1, void *a2)
{
  v152[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = a2;
  v133 = 0;
  v134 = &v133;
  v135 = 0x3032000000;
  v136 = __Block_byref_object_copy__4;
  v137 = __Block_byref_object_dispose__4;
  v138 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  if (!v3)
  {
    v18 = 0;
LABEL_9:
    v15 = PCSErrorCreate(121, @"Missing DSID in parameters", v4, v5, v6, v7, v8, v9, v86);
    (*(v10 + 2))(v10, 2, v18, 0, 0, v15);
    goto LABEL_17;
  }

  v11 = [v3 objectForKey:@"forcedMnemonicForTesting"];
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v13, OS_LOG_TYPE_DEFAULT, "PCSGetRecoveryTokenInfo using provided mnemonic", buf, 2u);
    }

    v14 = [v3 objectForKey:@"forcedMnemonicForTesting"];
    v15 = 0;
    v16 = v134[5];
    v134[5] = v14;
    goto LABEL_6;
  }

  v19 = [v3 objectForKeyedSubscript:kPCSSetupDSID[0]];
  v15 = v19;
  if (!v19)
  {
    v18 = v130[3];
    goto LABEL_9;
  }

  if (!PCSCurrentPersonaMatchesDSID(v19))
  {
    v32 = v130[3];
    v33 = PCSErrorCreate(152, @"Current persona does not match chosen dsid", v20, v21, v22, v23, v24, v25, v86);
    (*(v10 + 2))(v10, 2, v32, 0, 0, v33);

    goto LABEL_17;
  }

  v26 = dispatch_semaphore_create(0);
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke;
  v125[3] = &unk_1E7B199C0;
  v127 = &v133;
  v128 = &v129;
  v27 = v26;
  v126 = v27;
  _PCSGuitarfishGetKeychainItem(@"RecoveryToken", v15, v125);
  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  *buf = 0;
  v120 = buf;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__4;
  v123 = __Block_byref_object_dispose__4;
  v124 = 0;
  v28 = dispatch_semaphore_create(0);

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_120;
  v115[3] = &unk_1E7B199C0;
  v117 = buf;
  v118 = &v129;
  v16 = v28;
  v116 = v16;
  _PCSGuitarfishGetKeychainItem(@"WrappingKey", v15, v115);
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v120 + 5) && v134[5])
  {
    goto LABEL_14;
  }

  v114 = 0;
  v151 = kPCSSetupDSID[0];
  v152[0] = v15;
  v34 = __PCSCopyStingrayInfo(1, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:&v151 count:1], &v114);
  v35 = v34;
  v36 = v114;
  if (v114 || !v34)
  {
    v130[3] |= 2uLL;
    (*(v10 + 2))(v10, 2);
LABEL_32:

LABEL_63:
    _Block_object_dispose(buf, 8);

    goto LABEL_17;
  }

  v37 = *MEMORY[0x1E6994F70];
  v38 = [v34 objectForKeyedSubscript:*MEMORY[0x1E6994F70]];
  v39 = v38 == 0;

  if (v39)
  {
    v130[3] |= 2uLL;
    v53 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v144) = 0;
      _os_log_impl(&dword_1B229C000, v53, OS_LOG_TYPE_DEFAULT, "No Guitarfish Primary Record to decode", &v144, 2u);
    }

    v54 = v130[3];
    v36 = PCSErrorCreate(238, @"No Primary Guitarfish Record. Account needs PCSGuitarfishSetupIdentities or migration.", v55, v56, v57, v58, v59, v60, v86);
    (*(v10 + 2))(v10, 2, v54, 0, 0, v36);
    goto LABEL_32;
  }

  v40 = [v35 objectForKeyedSubscript:v37];
  v41 = [v40 objectForKeyedSubscript:*MEMORY[0x1E6994E48]];
  v42 = [v41 objectForKeyedSubscript:kPCSSecureBackupCFiCloudDataProtectionKey[0]];
  v43 = [v42 objectForKeyedSubscript:@"SecureBackupWrappedKeys"];

  v44 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [v43 base64EncodedStringWithOptions:0];
    LODWORD(v144) = 138412290;
    *(&v144 + 4) = v45;
    _os_log_impl(&dword_1B229C000, v44, OS_LOG_TYPE_DEFAULT, "OuterBlob: %@", &v144, 0xCu);
  }

  if (!v43)
  {
    v61 = v130[3] | 2;
    v130[3] = v61;
    v62 = PCSErrorCreate(200, @"Failed to decode Outer blob, potential missing guitarfish record", v46, v47, v48, v49, v50, v51, v86);
    (*(v10 + 2))(v10, 1, v61, 0, 0, v62);
LABEL_61:

LABEL_62:
    goto LABEL_63;
  }

  if (*(v120 + 5))
  {
    v52 = v134;
LABEL_51:
    if (!v52[5])
    {
      *&v144 = 0;
      *(&v144 + 1) = &v144;
      v145 = 0x3032000000;
      v146 = __Block_byref_object_copy__4;
      v147 = __Block_byref_object_dispose__4;
      v148 = 0;
      v81 = dispatch_semaphore_create(0);

      v82 = *(v120 + 5);
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_134;
      v94[3] = &unk_1E7B19A38;
      v96 = &v133;
      v97 = &v129;
      v98 = &v144;
      v16 = v81;
      v95 = v16;
      _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v82, v43, v94);
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v83 = *(*(&v144 + 1) + 40);
      if (v83)
      {
        (*(v10 + 2))(v10, 1, v130[3], 0, 0, *(*(&v144 + 1) + 40));
      }

      else if (*(v120 + 5) && (v130[3] & 0x20) != 0)
      {
        v84 = dispatch_semaphore_create(0);

        v85 = *(v120 + 5);
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_136;
        v91[3] = &unk_1E7B19A60;
        v93 = &v129;
        v16 = v84;
        v92 = v16;
        _PCSGuitarfishSetKeychainItem(@"WrappingKey", v15, v85, v91);
        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      }

      _Block_object_dispose(&v144, 8);
      if (v83)
      {
        goto LABEL_62;
      }

      v52 = v134;
    }

    goto LABEL_52;
  }

  v149 = kPCSSetupDSID[0];
  v150 = v15;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
  v113 = 0;
  v63 = PCSIdentitySetCreate(v62, 0, &v113);
  if (v113 || !v63)
  {
    v73 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v144) = 138412290;
      *(&v144 + 4) = v113;
      _os_log_impl(&dword_1B229C000, v73, OS_LOG_TYPE_DEFAULT, "no identity set available, unable to attempt silent repair: %@", &v144, 0xCu);
    }

    v130[3] |= 0x200uLL;
  }

  else
  {
    v86 = v63;
    *&v144 = 0;
    *(&v144 + 1) = &v144;
    v145 = 0x3032000000;
    v146 = __Block_byref_object_copy__4;
    v147 = __Block_byref_object_dispose__4;
    v148 = 0;
    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__4;
    v111 = __Block_byref_object_dispose__4;
    v112 = 0;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_127;
    v106[3] = &unk_1E7B199E8;
    v106[4] = &v144;
    v106[5] = &v107;
    _PCSBackupGuitarfishDecodeOuterRecord(v43, v106);
    v64 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [*(*(&v144 + 1) + 40) base64EncodedStringWithOptions:{0, v86}];
      LODWORD(v141) = 138412290;
      *(&v141 + 4) = v65;
      _os_log_impl(&dword_1B229C000, v64, OS_LOG_TYPE_DEFAULT, "wrappedKey: %@", &v141, 0xCu);
    }

    v71 = (v108 + 5);
    v72 = v108[5];
    if (v72)
    {
      obj = v108[5];
      _PCSNSError(&obj, 200, @"Failed to decode Outer blob", v66, v67, v68, v69, v70, v86);
      objc_storeStrong(v71, obj);
      v130[3] |= 2uLL;
      (*(v10 + 2))(v10, 1);
    }

    else if (*(*(&v144 + 1) + 40))
    {
      *&v141 = 0;
      *(&v141 + 1) = &v141;
      v142 = 0x2020000000;
      v143 = 0;
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v104 = 0;
      v139 = kPCSSetupService[0];
      v140 = kPCSServiceEscrow;
      v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_132;
      v100[3] = &unk_1E7B19A10;
      v100[4] = &v101;
      v100[5] = &v144;
      v100[6] = &v141;
      PCSIdentitySetEnumerateIdentities(v86, v74, v100);
      v75 = v102[3];
      if (v75)
      {
        v76 = *(v120 + 5);
        *(v120 + 5) = v75;
      }

      else
      {
        v130[3] |= 2uLL;
        v76 = pcsLogObjForScope("Guitarfish");
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *v99 = 0;
          _os_log_impl(&dword_1B229C000, v76, OS_LOG_TYPE_DEFAULT, "unable to unwrap wrapping key with escrow identities", v99, 2u);
        }
      }

      _Block_object_dispose(&v101, 8);
      _Block_object_dispose(&v141, 8);
    }

    _Block_object_dispose(&v107, 8);

    _Block_object_dispose(&v144, 8);
    if (v72)
    {
      goto LABEL_61;
    }
  }

  v52 = v134;
  if (*(v120 + 5))
  {
    goto LABEL_51;
  }

LABEL_52:
  v77 = v130[3];
  if (!v52[5])
  {
    v62 = PCSErrorCreate(39, @"no stored mnemonic available, silent recovery failed, needs repair", v46, v47, v48, v49, v50, v51, v86);
    (*(v10 + 2))(v10, 1, v77, 0, 0, v62);
    goto LABEL_61;
  }

  if ((v77 & 0x10) != 0)
  {
    v78 = dispatch_semaphore_create(0);

    v79 = [v134[5] componentsJoinedByString:@" "];
    v80 = [v79 dataUsingEncoding:4];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_141;
    v88[3] = &unk_1E7B19A60;
    v90 = &v129;
    v16 = v78;
    v89 = v16;
    _PCSGuitarfishSetKeychainItem(@"RecoveryToken", v15, v80, v88);

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_14:
  _Block_object_dispose(buf, 8);

LABEL_6:
  *buf = 0;
  v120 = buf;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__4;
  v123 = __Block_byref_object_dispose__4;
  v124 = 0;
  *&v144 = 0;
  *(&v144 + 1) = &v144;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy__4;
  v147 = __Block_byref_object_dispose__4;
  v148 = 0;
  v17 = v134[5];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_142;
  v87[3] = &unk_1E7B19A88;
  v87[4] = &v144;
  v87[5] = &v129;
  v87[6] = buf;
  PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v17, v87);
  if (*(v120 + 5))
  {
    (*(v10 + 2))(v10, 1, v130[3], 0, 0);
  }

  else
  {
    v29 = v130[3];
    v30 = v134[5];
    v31 = [*(*(&v144 + 1) + 40) base64EncodedStringWithOptions:0];
    (*(v10 + 2))(v10, 0, v29, v30, v31, 0);
  }

  _Block_object_dispose(&v144, 8);

  _Block_object_dispose(buf, 8);
LABEL_17:

  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v133, 8);
}

void sub_1B22D3568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void _PCSGuitarfishGetKeychainItem(void *a1, void *a2, void *a3)
{
  v28[9] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = *MEMORY[0x1E697B018];
  v8 = *MEMORY[0x1E697B390];
  v27[0] = *MEMORY[0x1E697AFF8];
  v27[1] = v8;
  v28[0] = v7;
  v28[1] = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E697AE70];
  v27[2] = *MEMORY[0x1E697ABD0];
  v27[3] = v9;
  v28[2] = kPCSDefaultKeychainGroup[0];
  v28[3] = kPCSGuitarfishKeychainSecurityDomain;
  v10 = *MEMORY[0x1E697AE80];
  v27[4] = *MEMORY[0x1E697AC30];
  v27[5] = v10;
  v28[4] = v6;
  v28[5] = v5;
  v11 = *MEMORY[0x1E697B270];
  v12 = *MEMORY[0x1E697B310];
  v27[6] = *MEMORY[0x1E697B260];
  v27[7] = v12;
  v28[6] = v11;
  v28[7] = MEMORY[0x1E695E118];
  v27[8] = *MEMORY[0x1E697B318];
  v28[8] = MEMORY[0x1E695E118];
  v13 = MEMORY[0x1E695DF20];
  v14 = a3;
  v15 = [v13 dictionaryWithObjects:v28 forKeys:v27 count:9];
  result = 0;
  v16 = SecItemCopyMatching(v15, &result);
  v17 = result;
  if (v16)
  {
    v18 = v16;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _PCSGuitarfishGetKeychainItem_cold_1();
    }

    v25 = PCSErrorCreate(39, @"Missing keychain item: %d", v19, v20, v21, v22, v23, v24, v18);
    v14[2](v14, 0, v25);
  }

  else
  {
    v25 = [result objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    (v14)[2](v14, v25, 0);
  }
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "unable to recover token from keychain: %@", &v15, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x10uLL;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    v9 = [v8 componentsSeparatedByString:@" "];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) count];
      v15 = 134217984;
      v16 = v13;
      _os_log_impl(&dword_1B229C000, v12, OS_LOG_TYPE_DEFAULT, "recovered token from keychain of length: %lu", &v15, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B229C000, v10, OS_LOG_TYPE_DEFAULT, "unable to recover wrapping key from keychain: %@", &v11, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x20uLL;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v9 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "recovered wrapping key from keychain of length", &v11, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_127(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a4;
  v9 = a6;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
  }
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_132(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(*(a1[4] + 8) + 24))
  {
    v4 = PCSIdentityGetPublicKey(a2);
    *(*(a1[4] + 8) + 24) = PCSServiceIdentityCopyUnwrappedKey(a2, *(*(a1[5] + 8) + 40), (*(a1[6] + 8) + 24));
    if (*(*(a1[6] + 8) + 24))
    {
      v5 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1[6] + 8) + 24);
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "encountered unwrapping error with possible identity %@: %@", &v10, 0x16u);
      }

      v7 = *(a1[6] + 8);
      v8 = *(v7 + 24);
      if (v8)
      {
        *(v7 + 24) = 0;
        CFRelease(v8);
      }
    }

    else if (*(*(a1[4] + 8) + 24))
    {
      v9 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "successfully unwrapped data with identity %@", &v10, 0xCu);
      }
    }
  }
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_134(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v10)
  {
    v11 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "Unable to recover recovery token from inner blob", v12, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void _PCSGuitarfishSetKeychainItem(void *a1, void *a2, void *a3, void *a4)
{
  v56[9] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v52 = a4;
  v10 = *MEMORY[0x1E697AFF8];
  v11 = *MEMORY[0x1E697B018];
  v12 = *MEMORY[0x1E697B390];
  v55[0] = *MEMORY[0x1E697AFF8];
  v55[1] = v12;
  v56[0] = v11;
  v56[1] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E697AEB0];
  v14 = *MEMORY[0x1E697ABD8];
  v55[2] = *MEMORY[0x1E697AEB0];
  v55[3] = v14;
  v15 = *MEMORY[0x1E697ABE0];
  v56[2] = MEMORY[0x1E695E110];
  v56[3] = v15;
  v16 = *MEMORY[0x1E697ABD0];
  v55[4] = *MEMORY[0x1E697B3C0];
  v55[5] = v16;
  v53 = v9;
  v56[4] = v9;
  v56[5] = kPCSDefaultKeychainGroup[0];
  v17 = *MEMORY[0x1E697AC30];
  v18 = *MEMORY[0x1E697AE80];
  v55[6] = *MEMORY[0x1E697AC30];
  v55[7] = v18;
  v54 = v8;
  v56[6] = v8;
  v56[7] = v7;
  v19 = *MEMORY[0x1E697AE70];
  v55[8] = *MEMORY[0x1E697AE70];
  v56[8] = kPCSGuitarfishKeychainSecurityDomain;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:9];
  v21 = SecItemAdd(v20, 0);
  if (v21 == -25299)
  {
    v51 = v7;
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [(__CFDictionary *)v20 objectForKeyedSubscript:v10];
    [v26 setObject:v27 forKeyedSubscript:v10];

    v28 = [(__CFDictionary *)v20 objectForKeyedSubscript:v13];
    [v26 setObject:v28 forKeyedSubscript:v13];

    v29 = [(__CFDictionary *)v20 objectForKeyedSubscript:v16];
    [v26 setObject:v29 forKeyedSubscript:v16];

    v30 = [(__CFDictionary *)v20 objectForKeyedSubscript:v17];
    [v26 setObject:v30 forKeyedSubscript:v17];

    v31 = [(__CFDictionary *)v20 objectForKeyedSubscript:v18];
    [v26 setObject:v31 forKeyedSubscript:v18];

    v32 = [(__CFDictionary *)v20 objectForKeyedSubscript:v12];
    [v26 setObject:v32 forKeyedSubscript:v12];

    v33 = [(__CFDictionary *)v20 objectForKeyedSubscript:v19];
    [v26 setObject:v33 forKeyedSubscript:v19];

    v34 = [(__CFDictionary *)v20 mutableCopy];
    [v34 setObject:0 forKeyedSubscript:v10];
    v35 = SecItemUpdate(v26, v34);
    if (v35)
    {
      v36 = v35;
      v7 = v51;
      v23 = v52;
      v25 = v53;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _PCSGuitarfishSetKeychainItem_cold_1();
      }

      v43 = PCSErrorCreate(39, @"Missing keychain item: %d", v37, v38, v39, v40, v41, v42, v36);
      (*(v52 + 2))(v52, v43);
    }

    else
    {
      v23 = v52;
      (*(v52 + 2))(v52, 0);
      v7 = v51;
      v25 = v53;
    }

    v24 = v54;
  }

  else
  {
    v22 = v21;
    if (v21)
    {
      v25 = v53;
      v24 = v54;
      v23 = v52;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _PCSGuitarfishSetKeychainItem_cold_2();
      }

      v50 = PCSErrorCreate(4, @"failed to store in keychain: %d", v44, v45, v46, v47, v48, v49, v22);
      (*(v52 + 2))(v52, v50);
    }

    else
    {
      v23 = v52;
      (*(v52 + 2))(v52, 0);
      v25 = v53;
      v24 = v54;
    }
  }
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_136(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save wrapping key to keychain: %@", &v7, 0xCu);
    }

    v6 = 32;
  }

  else
  {
    if (v5)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved wrapping key to keychain successfully", &v7, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) &= ~0x20uLL;
    v6 = 1024;
  }

  *(*(*(a1 + 40) + 8) + 24) |= v6;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_141(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save recovery token to keychain: %@", &v7, 0xCu);
    }

    v6 = 16;
  }

  else
  {
    if (v5)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved recovery token to keychain successfully", &v7, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) &= ~0x10uLL;
    v6 = 2048;
  }

  *(*(*(a1 + 40) + 8) + 24) |= v6;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_142(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  if (v7)
  {
    *(*(a1[5] + 8) + 24) |= 0x10uLL;
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

uint64_t (**_PCSUpdateStingrayForwardTableForTesting(uint64_t (**result)()))()
{
  savedPCSStingrayForwardTable = _PCSStingrayForwardTable;
  _PCSStingrayForwardTable = *result;
  return result;
}

uint64_t (**_PCSUpdateMigrateToiCDPForwardTableForTesting(uint64_t (**result)()))()
{
  savedPCSMigrateToiCDPForwardTable = _PCSMigrateToiCDPForwardTable;
  _PCSMigrateToiCDPForwardTable = *result;
  return result;
}

void PCSGuitarfishResetProtectedData(void *a1, void *a2)
{
  v213 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [AAFAnalyticsEventPCS alloc];
  v6 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
  v7 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
  v8 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
  LOBYTE(v160) = 1;
  v9 = [AAFAnalyticsEventPCS initWithPCSMetrics:v5 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v6 eventName:v7 testsAreEnabled:v8 canSendMetrics:@"com.apple.pcs.resetProtectedData" category:0];

  v206 = 0;
  v207 = 0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v17 = [v3 objectForKeyedSubscript:kPCSSetupDSID[0]];
    if (v17)
    {
      v18 = v17;
      if (PCSCurrentPersonaMatchesDSID(v17))
      {
        v25 = [v3 objectForKeyedSubscript:kPCSAuthenticateAppleID[0]];

        if (v25)
        {
          v26 = [v3 objectForKeyedSubscript:kPCSSetupPassword[0]];

          if (v26)
          {
            v27 = [v3 objectForKeyedSubscript:kPCSSetupRawPassword[0]];

            if (v27)
            {
              v28 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];

              if (v28)
              {
                v29 = [v3 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];

                if (v29)
                {
                  v30 = [v3 objectForKeyedSubscript:kPCSSetupVerifierIterationCount[0]];

                  if (v30)
                  {
                    v31 = [v3 objectForKeyedSubscript:kPCSSetupVerifierProtocol[0]];

                    if (v31)
                    {
                      v32 = [v3 objectForKeyedSubscript:kPCSSetupVerifierSalt[0]];

                      if (v32)
                      {
                        v197 = v18;
                        v33 = [v3 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
                        v34 = [v33 isEqualToNumber:MEMORY[0x1E695E118]];

                        if (v34)
                        {
                          v35 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v35, OS_LOG_TYPE_DEFAULT, "Will join CDP", buf, 2u);
                          }
                        }

                        v205 = 0;
                        v36 = performStingrayRecovery(v197, &v205);
                        v37 = v205;
                        v38 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v190 = v37;
                        if (!v36 || v37)
                        {
                          v39 = v38;
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_1();
                          }
                        }

                        else
                        {
                          v39 = v38;
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v39, OS_LOG_TYPE_DEFAULT, "Successfully recovered Stingray data", buf, 2u);
                          }
                        }

                        v191 = [AAFAnalyticsEventPCS alloc];
                        v193 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v58 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v59 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v160) = 1;
                        v192 = [AAFAnalyticsEventPCS initWithPCSMetrics:v191 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v193 eventName:v58 testsAreEnabled:v59 canSendMetrics:@"com.apple.pcs.deleteGuitarfishRecord" category:0];

                        v204 = 0;
                        LODWORD(v58) = deleteRecord(v197, 1, &v204);
                        v60 = v204;
                        v61 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (!v58 || v60)
                        {
                          v81 = v61;
                          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_2();
                          }

                          v206 |= 0x2000uLL;
                          v207 = 2;
                          v82 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v82 forKeyedSubscript:@"flags"];

                          v83 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v83 forKeyedSubscript:@"status"];

                          v90 = v204;
                          v18 = v197;
                          v91 = v190;
                          v92 = v192;
                          if (!v204)
                          {
                            v90 = PCSErrorCreate(219, @"Failed to delete Guitarfish record", v84, v85, v86, v87, v88, v89, v160);
                          }

                          [PCSAnalyticsReporterRTC sendMetricWithEvent:v192 success:0 error:v90];
                          v4[2](v4, 2, 0x2000, v16, v90);
                          goto LABEL_148;
                        }

                        v62 = v61;
                        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v62, OS_LOG_TYPE_DEFAULT, "successfully deleted guitarfish record", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v192 success:1 error:0];
                        v188 = [AAFAnalyticsEventPCS alloc];
                        v194 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v63 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v64 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v160) = 1;
                        v189 = [AAFAnalyticsEventPCS initWithPCSMetrics:v188 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v194 eventName:v63 testsAreEnabled:v64 canSendMetrics:@"com.apple.pcs.deleteTokenRecord" category:0];

                        v203 = 0;
                        LODWORD(v64) = deleteRecord(v197, 2, &v203);
                        v65 = v203;
                        v66 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (!v64 || v65)
                        {
                          v93 = v66;
                          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_3();
                          }

                          v206 |= 0x10000uLL;
                          v207 = 2;
                          v94 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v94 forKeyedSubscript:@"flags"];

                          v95 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v95 forKeyedSubscript:@"status"];

                          v102 = v203;
                          v18 = v197;
                          v91 = v190;
                          v92 = v192;
                          v90 = v189;
                          if (!v203)
                          {
                            v102 = PCSErrorCreate(225, @"Failed to delete Recovery Token record", v96, v97, v98, v99, v100, v101, v160);
                          }

                          [PCSAnalyticsReporterRTC sendMetricWithEvent:v189 success:0 error:v102];
                          v4[2](v4, 2, 0x10000, v16, v102);
                          goto LABEL_147;
                        }

                        v67 = v66;
                        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v67, OS_LOG_TYPE_DEFAULT, "successfully deleted token record", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v189 success:1 error:0];
                        v195 = [AAFAnalyticsEventPCS alloc];
                        v184 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v68 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v69 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v160) = 1;
                        v196 = [(AAFAnalyticsEventPCS *)v195 initWithPCSMetrics:0 altDSID:v184 flowID:v68 deviceSessionID:v69 eventName:@"com.apple.pcs.rpdDeleteICDPFromKeychain" testsAreEnabled:0 canSendMetrics:v160 category:0x1F2998430];

                        v202 = 0;
                        LODWORD(v69) = __PCSDeleteFromKeychainICDPForRPD(v197, &v202, v70, v71, v72, v73, v74, v75);
                        v185 = v202;
                        v76 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
                        if (!v69 || v185)
                        {
                          if (v77)
                          {
                            *buf = 138412290;
                            *&buf[4] = v202;
                            _os_log_impl(&dword_1B229C000, v76, OS_LOG_TYPE_DEFAULT, "failed to delete cdp keychain items, error: %@", buf, 0xCu);
                          }

                          v80 = v202;
                          v78 = v196;
                          v79 = 0;
                        }

                        else
                        {
                          if (v77)
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v76, OS_LOG_TYPE_DEFAULT, "successfully deleted keychain items", buf, 2u);
                          }

                          v78 = v196;
                          v79 = 1;
                          v80 = 0;
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v78 success:v79 error:v80];
                        v186 = [AAFAnalyticsEventPCS alloc];
                        cfb = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v103 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v104 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v161) = 1;
                        v187 = [(AAFAnalyticsEventPCS *)v186 initWithPCSMetrics:0 altDSID:cfb flowID:v103 deviceSessionID:v104 eventName:@"com.apple.pcs.rpdDeleteGFStashFromKeychain" testsAreEnabled:0 canSendMetrics:v161 category:0x1F2998430];

                        v18 = v197;
                        v105 = _PCSGuitarfishDeleteKeychainState(v197);
                        if ((v105 & 1) == 0)
                        {
                          v106 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v106, OS_LOG_TYPE_DEFAULT, "failed to delete guitarfish stash keychain items", buf, 2u);
                          }

                          v18 = v197;
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v187 success:v105 error:0];
                        v210 = kPCSSetupDSID[0];
                        v211 = v18;
                        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
                        v179 = v201 = 0;
                        cf = PCSIdentitySetCreate(v179, 0, &v201);
                        if (!cf || v201)
                        {
                          v108 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_6();
                          }

                          v91 = v190;
                          v92 = v192;
                          v90 = v189;
                          if (!v16)
                          {
                            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          v206 |= 0x800000uLL;
                          v207 = 2;
                          v109 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v109 forKeyedSubscript:@"flags"];

                          v110 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v110 forKeyedSubscript:@"status"];

                          v111 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(v206, 0);
                          [v16 setObject:v111 forKeyedSubscript:@"flags_dict"];

                          if (cf)
                          {
                            CFRelease(cf);
                          }

                          v112 = v201;
                          v102 = v196;
                          if (v201)
                          {
                            v201 = 0;
                            CFRelease(v112);
                            v113 = v201;
                          }

                          else
                          {
                            v113 = 0;
                          }

                          goto LABEL_121;
                        }

                        v107 = [v3 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
                        if ([v107 isEqualToNumber:MEMORY[0x1E695E118]])
                        {
                        }

                        else
                        {
                          v114 = [v3 objectForKeyedSubscript:kPCSRPDDBROnly[0]];
                          v177 = [v114 isEqualToNumber:MEMORY[0x1E695E118]];

                          if (!v177)
                          {
                            v164 = 0;
                            goto LABEL_106;
                          }
                        }

                        *v200 = 0;
                        v115 = PCSIdentitySetIsWalrusWithForceFetch(cf, 1, v200);
                        if (*v200)
                        {
                          v116 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          v18 = v197;
                          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *&buf[4] = *v200;
                            _os_log_impl(&dword_1B229C000, v116, OS_LOG_TYPE_DEFAULT, "Failed to fetch w status: %@", buf, 0xCu);
                          }

                          v91 = v190;
                          v92 = v192;
                          v90 = v189;
                          if (!v16)
                          {
                            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          v206 |= 0x1000000uLL;
                          v207 = 2;
                          v117 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v117 forKeyedSubscript:@"flags"];

                          v118 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v118 forKeyedSubscript:@"status"];

                          v119 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(v206, 0);
                          [v16 setObject:v119 forKeyedSubscript:@"flags_dict"];

                          CFRelease(cf);
                          v120 = *v200;
                          if (*v200)
                          {
                            *v200 = 0;
                            CFRelease(v120);
                            v113 = *v200;
                          }

                          else
                          {
                            v113 = 0;
                          }

                          v102 = v196;
LABEL_121:
                          v4[2](v4, v207, v206, v16, v113);

LABEL_146:
LABEL_147:

LABEL_148:
                          goto LABEL_46;
                        }

                        v164 = v115;
                        CFRelease(cf);
LABEL_106:
                        cfc = [AAFAnalyticsEventPCS alloc];
                        v121 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v122 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v123 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v162) = 1;
                        cfa = [(AAFAnalyticsEventPCS *)cfc initWithPCSMetrics:0 altDSID:v121 flowID:v122 deviceSessionID:v123 eventName:@"com.apple.pcs.rpdSetupIdentities" testsAreEnabled:0 canSendMetrics:v162 category:0x1F2998430];

                        v175 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v173 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v170 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        v172 = [v3 objectForKeyedSubscript:kPCSAuthenticateAppleID[0]];
                        v171 = [v3 objectForKeyedSubscript:kPCSSetupRawPassword[0]];
                        v168 = [v3 objectForKeyedSubscript:kPCSSetupPassword[0]];
                        v167 = [v3 objectForKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
                        v166 = [v3 objectForKeyedSubscript:kPCSSetupVerifierProtocol[0]];
                        v165 = [v3 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];
                        v124 = [v3 objectForKeyedSubscript:kPCSSetupVerifierSalt[0]];
                        v199 = 0;
                        v178 = PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken(v197, v175, v173, v170, v172, v171, v168, v167, v166, v165, v124, &v206, &v207, &v199);
                        v169 = v199;

                        v125 = v207;
                        if (v178)
                        {
                          v126 = 1;
                        }

                        else
                        {
                          v126 = v164;
                        }

                        v127 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v128 = v127;
                        if (v125 || v169 || (v126 & 1) == 0)
                        {
                          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_4();
                          }

                          v134 = [MEMORY[0x1E696AD98] numberWithLong:v206];
                          [v16 setObject:v134 forKeyedSubscript:@"flags"];

                          v135 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v135 forKeyedSubscript:@"status"];

                          v136 = v169;
                          [PCSAnalyticsReporterRTC sendMetricWithEvent:cfa success:0 error:v169];
                          v4[2](v4, v207, v206, v16, v169);
                          v102 = v196;
                          v18 = v197;
                          v91 = v190;
                          v92 = v192;
                          v90 = v189;
                          goto LABEL_145;
                        }

                        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v128, OS_LOG_TYPE_DEFAULT, "successfully enrolled Guitarfish and Recovery Token Records", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:cfa success:1 error:0];
                        v129 = [AAFAnalyticsEventPCS alloc];
                        v130 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v131 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v132 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v163) = 1;
                        v176 = [(AAFAnalyticsEventPCS *)v129 initWithPCSMetrics:0 altDSID:v130 flowID:v131 deviceSessionID:v132 eventName:@"com.apple.pcs.migrateToiCDP" testsAreEnabled:0 canSendMetrics:v163 category:0x1F2998430];

                        v133 = [v3 objectForKeyedSubscript:kPCSRPDDBROnly[0]];
                        if ([v133 isEqualToNumber:MEMORY[0x1E695E118]])
                        {
                        }

                        else
                        {
                          v137 = [v3 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
                          v138 = [v137 isEqualToNumber:MEMORY[0x1E695E118]];

                          if (!v138)
                          {
                            goto LABEL_128;
                          }
                        }

                        v139 = [v3 mutableCopy];
                        [v139 setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfish[0]];
                        *buf = 0;
                        v174 = v139;
                        v140 = _PCSMigrateToiCDPForwardTable(v139, buf);
                        v141 = *buf;
                        v142 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v143 = v142;
                        if (!v140 || v141)
                        {
                          if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_5();
                          }

                          if (!v16)
                          {
                            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          v206 |= 0x2000000uLL;
                          v207 = 2;
                          v150 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v150 forKeyedSubscript:@"flags"];

                          v151 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v151 forKeyedSubscript:@"status"];

                          v152 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(v206, 0);
                          [v16 setObject:v152 forKeyedSubscript:@"flags_dict"];

                          if (!v141)
                          {
                            v153 = MEMORY[0x1E696ABC0];
                            v154 = kPCSErrorDomain;
                            v208 = *MEMORY[0x1E696A578];
                            v209 = @"Failed to enable iCDP";
                            v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
                            v141 = [v153 errorWithDomain:v154 code:240 userInfo:v155];
                          }

                          [PCSAnalyticsReporterRTC sendMetricWithEvent:v176 success:0 error:v141];
                          v4[2](v4, v207, v206, v16, v141);

                          goto LABEL_142;
                        }

                        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                        {
                          *v200 = 0;
                          _os_log_impl(&dword_1B229C000, v143, OS_LOG_TYPE_DEFAULT, "successfully enabled iCDP", v200, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v176 success:1 error:0];
LABEL_128:
                        v198 = 0;
                        v144 = PCSGuitarfishResetOnOTClique(v3, &v206, &v198);
                        v145 = v198;
                        if (!v144 || v145)
                        {
                          v207 = 2;
                          v157 = v145;
                          v158 = [MEMORY[0x1E696AD98] numberWithLong:v206];
                          [v16 setObject:v158 forKeyedSubscript:@"flags"];

                          v156 = v157;
                          v159 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v159 forKeyedSubscript:@"status"];

                          v4[2](v4, 2, v206, v16, v157);
                          v18 = v197;
                          v91 = v190;
                          v92 = v192;
                          v90 = v189;
                          goto LABEL_144;
                        }

                        v174 = 0;
                        v146 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v146, OS_LOG_TYPE_DEFAULT, "successfully reset otclique", buf, 2u);
                        }

                        v147 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v147, OS_LOG_TYPE_DEFAULT, "successfully reset protected data", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v9 success:1 error:0];
                        v148 = [MEMORY[0x1E696AD98] numberWithLong:v206];
                        [v16 setObject:v148 forKeyedSubscript:@"flags"];

                        v149 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                        [v16 setObject:v149 forKeyedSubscript:@"status"];

                        v4[2](v4, v207, v206, v16, 0);
LABEL_142:
                        v18 = v197;
                        v91 = v190;
                        v92 = v192;
                        v90 = v189;
                        v156 = v174;
LABEL_144:

                        v102 = v196;
                        v136 = 0;
LABEL_145:

                        goto LABEL_146;
                      }

                      v51 = pcsLogObjForScope("guitarfish-reset-protected-data");
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                      {
                        PCSGuitarfishResetProtectedData_cold_7();
                      }

                      v50 = PCSErrorCreate(218, @"kPCSSetupVerifierSalt is missing and is a required fields", v52, v53, v54, v55, v56, v57, v160);
LABEL_45:
                      v4[2](v4, 2, 1, v16, v50);

LABEL_46:
                      goto LABEL_47;
                    }

                    v49 = pcsLogObjForScope("guitarfish-reset-protected-data");
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                    {
                      PCSGuitarfishResetProtectedData_cold_8();
                    }

                    v41 = @"kPCSSetupVerifierProtocol is missing and is a required fields";
                  }

                  else
                  {
                    v48 = pcsLogObjForScope("guitarfish-reset-protected-data");
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      PCSGuitarfishResetProtectedData_cold_9();
                    }

                    v41 = @"kPCSSetupVerifierIterationCount is missing and is a required field";
                  }
                }

                else
                {
                  v47 = pcsLogObjForScope("guitarfish-reset-protected-data");
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    PCSGuitarfishResetProtectedData_cold_10();
                  }

                  v41 = @"kPCSSetupPasswordGeneration is missing and is a required field";
                }
              }

              else
              {
                v46 = pcsLogObjForScope("guitarfish-reset-protected-data");
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  PCSGuitarfishResetProtectedData_cold_11();
                }

                v41 = @"kPCSAltDSID is missing and is a required field";
              }
            }

            else
            {
              v45 = pcsLogObjForScope("guitarfish-reset-protected-data");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                PCSGuitarfishResetProtectedData_cold_12();
              }

              v41 = @"kPCSSetupRawPassword is missing and is a required field";
            }
          }

          else
          {
            v44 = pcsLogObjForScope("guitarfish-reset-protected-data");
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              PCSGuitarfishResetProtectedData_cold_13();
            }

            v41 = @"kPCSSetupPassword is missing and is a required field";
          }
        }

        else
        {
          v43 = pcsLogObjForScope("guitarfish-reset-protected-data");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            PCSGuitarfishResetProtectedData_cold_14();
          }

          v41 = @"kPCSAuthenticateAppleID is missing and is a required field";
        }

        v42 = 218;
      }

      else
      {
        v41 = @"Current persona does not match chosen dsid";
        v42 = 152;
      }

      v50 = PCSErrorCreate(v42, v41, v19, v20, v21, v22, v23, v24, v160);
      [PCSAnalyticsReporterRTC sendMetricWithEvent:v9 success:0 error:v50];
      goto LABEL_45;
    }
  }

  v40 = PCSErrorCreate(121, @"Missing DSID in parameters", v10, v11, v12, v13, v14, v15, v160);
  [PCSAnalyticsReporterRTC sendMetricWithEvent:v9 success:0 error:v40];
  v4[2](v4, 2, 1, v16, v40);

LABEL_47:
}

BOOL performStingrayRecovery(void *a1, void *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 setObject:v3 forKeyedSubscript:kPCSSetupDSID[0]];
  v25 = 0;
  v5 = __PCSCopyHSMData(0, 0, v4, &v25);
  if (!v5)
  {
    v14 = pcsLogObjForScope("guitarfish-reset-protected-data");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      performStingrayRecovery_cold_3();
    }

    if (!a2)
    {
      goto LABEL_24;
    }

    v13 = v25;
LABEL_15:
    v15 = v13;
    v16 = 0;
LABEL_16:
    *a2 = v15;
    goto LABEL_25;
  }

  v10 = v5;
  cf = 0;
  if (__PCSStoreInKeychain(0, v5, v3, &cf, v6, v7, v8, v9))
  {
    v11 = cf == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = pcsLogObjForScope("guitarfish-reset-protected-data");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      performStingrayRecovery_cold_1();
    }

    v13 = cf;
    if (!a2)
    {
      if (cf)
      {
        cf = 0;
        CFRelease(v13);
      }

LABEL_24:
      v16 = 0;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v23 = 0;
  v17 = __PCSStoreIniCloudKeychain(0, v10, v3, &v23);
  if (v23)
  {
    v16 = 0;
  }

  else
  {
    v16 = v17;
  }

  v18 = pcsLogObjForScope("guitarfish-reset-protected-data");
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      _os_log_impl(&dword_1B229C000, v19, OS_LOG_TYPE_DEFAULT, "successfully recovered stingray data", &v22, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      performStingrayRecovery_cold_2();
    }

    v21 = v23;
    if (a2)
    {
      v15 = v23;
      goto LABEL_16;
    }

    if (v23)
    {
      v23 = 0;
      CFRelease(v21);
    }
  }

LABEL_25:

  return v16;
}

uint64_t deleteRecord(void *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "deleteRecord", buf, 2u);
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:v5 forKeyedSubscript:kPCSSetupDSID[0]];

  v19 = 0;
  v8 = __PCSDisableStingrayIdentity(a2, 0, v7, &v19);
  v9 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"failed";
    if (v8)
    {
      v10 = @"succeeded";
    }

    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "__PCSDisableStingrayIdentity result: %@, error: %@", buf, 0x16u);
  }

  if (v19)
  {
    v11 = [v19 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v13 = [v12 domain];
    if ([v13 isEqualToString:@"EscrowServiceErrorDomain"])
    {
      v14 = [v12 code];
      v15 = kPCSEscrowServiceEscrowRecordNotFound;

      if (v14 == v15)
      {
        v16 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = @"Recovery Token";
          if (a2 == 1)
          {
            v17 = @"Guitarfish";
          }

          *buf = 138412290;
          v21 = v17;
          _os_log_impl(&dword_1B229C000, v16, OS_LOG_TYPE_DEFAULT, "%@ record does not exist", buf, 0xCu);
        }

        v8 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    if (a3)
    {
      v8 = 0;
      *a3 = v19;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

uint64_t _PCSGuitarfishDeleteKeychainState(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PCSGuitarfishDeleteKeychainState_block_invoke;
  v4[3] = &unk_1E7B19AB0;
  v4[4] = &v5;
  _PCSGuitarfishDeleteKeychainItem(0, v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1B22D64E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PCSGuitarfishPopulateFlagNamesToTelemetryArray(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  if ([&unk_1F29983B8 count])
  {
    v14 = 0;
    do
    {
      if ((a1 >> v14))
      {
        v15 = [&unk_1F29983B8 objectAtIndexedSubscript:v14];
        [v6 setObject:&unk_1F2998400 forKeyedSubscript:v15];

        a1 &= ~(1 << v14);
      }

      ++v14;
    }

    while ([&unk_1F29983B8 count] > v14);
  }

  if (a1)
  {
    PCSAbort("_PCSGuitarfishPopulateFlagNamesToTelemetryArray is missing a flag definition", v7, v8, v9, v10, v11, v12, v13);
  }

  return v6;
}

id PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v21 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  v57 = a8;
  v58 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  [v24 setObject:v51 forKeyedSubscript:kPCSAltDSID[0]];
  [v24 setObject:v52 forKeyedSubscript:kPCSFlowID[0]];
  [v24 setObject:v53 forKeyedSubscript:kPCSDeviceSessionID[0]];
  [v24 setObject:v21 forKeyedSubscript:kPCSSetupDSID[0]];
  [v24 setObject:v54 forKeyedSubscript:kPCSSetupUsername[0]];
  [v24 setObject:v55 forKeyedSubscript:kPCSSetupRawPassword[0]];
  [v24 setObject:v56 forKeyedSubscript:kPCSSetupPassword[0]];
  [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfish[0]];
  [v24 setObject:v58 forKeyedSubscript:kPCSSetupVerifierProtocol[0]];
  [v24 setObject:v57 forKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
  [v24 setObject:v22 forKeyedSubscript:kPCSSetupPasswordGeneration[0]];
  [v24 setObject:v23 forKeyedSubscript:kPCSSetupVerifierSalt[0]];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__4;
  v85 = __Block_byref_object_dispose__4;
  v86 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__4;
  v79 = __Block_byref_object_dispose__4;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v25 = dispatch_semaphore_create(0);
  v26 = _PCSStingrayForwardTable;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_block_invoke;
  v61[3] = &unk_1E7B19B28;
  v63 = &v81;
  v64 = &v75;
  v65 = &v71;
  v66 = &v67;
  v27 = v25;
  v62 = v27;
  (v26)(v24, v61);
  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  if (a12)
  {
    *a12 = v72[3];
  }

  if (a13)
  {
    *a13 = v68[3];
  }

  if (!a14 || !v82[5])
  {
    v87 = kPCSSetupDSID[0];
    v88[0] = v21;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
    v60 = 0;
    v31 = PCSIdentitySetCreate(v30, 0, &v60);
    v29 = v31;
    if (!v31 || v60)
    {
      v35 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        PCSGuitarfishResetProtectedData_cold_6();
      }

      v36 = v60;
      if (a14)
      {
        *a14 = v60;
      }

      else if (v60)
      {
        v60 = 0;
        CFRelease(v36);
      }

      if (!v29)
      {
        goto LABEL_37;
      }

      CFRelease(v29);
    }

    else
    {
      v59 = 0;
      v32 = PCSIdentitySetIsWalrusWithForceFetch(v31, 1, &v59);
      if (v59)
      {
        v33 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_2();
        }

        v34 = v59;
        if (a14)
        {
          *a14 = v59;
        }

        else if (v59)
        {
          v59 = 0;
          CFRelease(v34);
        }

        CFRelease(v29);
      }

      else
      {
        v37 = v32;
        CFRelease(v29);
        v38 = v76[5];
        if (v38)
        {
          v39 = 1;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          v29 = v38;
LABEL_37:

          goto LABEL_38;
        }

        v40 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_3();
        }

        v47 = PCSErrorCreate(224, @"PCSGuitarfishSetupIdentities failed to return a recovery token", v41, v42, v43, v44, v45, v46, v50);
        v48 = v82[5];
        v82[5] = v47;
      }
    }

    v29 = 0;
    goto LABEL_37;
  }

  v28 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_1();
  }

  v29 = 0;
  *a14 = v82[5];
LABEL_38:

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v81, 8);

  return v29;
}

void sub_1B22D6C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 208), 8);
  _Block_object_dispose((v36 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSGuitarfishResetOnOTClique(void *a1, void *a2, void *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = objc_alloc_init(MEMORY[0x1E697AA88]);
  v6 = [v4 objectForKeyedSubscript:kPCSAuthenticateAppleID[0]];
  [v5 setAuthenticationAppleID:v6];

  v7 = [v4 objectForKeyedSubscript:kPCSSetupPassword[0]];
  [v5 setPasswordEquivalentToken:v7];

  v8 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
  [v5 setFlowID:v8];

  v9 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
  [v5 setDeviceSessionID:v9];

  v10 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
  [v5 setAltDSID:v10];

  [v5 setIsGuitarfish:1];
  v11 = [v4 objectForKeyedSubscript:kPCSRPDDBROnly[0]];
  v12 = [v11 isEqualToNumber:MEMORY[0x1E695E118]];

  if (!v12)
  {
    v30 = [v4 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
    v31 = [v30 isEqualToNumber:MEMORY[0x1E695E118]];

    if (v31)
    {
      v83 = [v4 objectForKeyedSubscript:kPCSIDMSTargetContext[0]];
      v32 = [v4 objectForKeyedSubscript:kPCSIDMSCuttlefishPassword[0]];
      v33 = [v4 objectForKeyedSubscript:kPCSNotifyIDMS[0]];
      v34 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v34, OS_LOG_TYPE_DEFAULT, "Invoking resetProtectedData on OTClique", buf, 2u);
      }

      v35 = [AAFAnalyticsEventPCS alloc];
      v36 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
      v37 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
      v38 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
      LOBYTE(v82) = 1;
      v39 = [AAFAnalyticsEventPCS initWithPCSMetrics:v35 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v36 eventName:v37 testsAreEnabled:v38 canSendMetrics:@"com.apple.pcs.resetProtectedDataOnOTClique" category:0];

      v86 = 0;
      v40 = [MEMORY[0x1E697AA80] resetProtectedData:v5 idmsTargetContext:v83 idmsCuttlefishPassword:v32 notifyIdMS:v33 != 0 error:&v86];
      v41 = v86;
      v42 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        if (v41)
        {
          v43 = 1;
        }

        else
        {
          v43 = v40 == 0;
        }

        v44 = @"failed";
        if (!v43)
        {
          v44 = @"succeeded";
        }

        *buf = 138412546;
        v89 = v44;
        v90 = 2112;
        v91 = v41;
        _os_log_impl(&dword_1B229C000, v42, OS_LOG_TYPE_DEFAULT, "resetProtectedData result: %@, error: %@", buf, 0x16u);
      }

      if (v40)
      {
        v51 = v41 == 0;
      }

      else
      {
        v51 = 0;
      }

      v52 = v51;
      if (v51)
      {
        v53 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v53, OS_LOG_TYPE_DEFAULT, "successfully reset protected data on otclique", buf, 2u);
        }

        [PCSAnalyticsReporterRTC sendMetricWithEvent:v39 success:1 error:0];
      }

      else
      {
        if (v41)
        {
          v73 = v41;
        }

        else
        {
          v73 = PCSErrorCreate(220, @"Failed to reset protected data on otclique", v45, v46, v47, v48, v49, v50, v82);
        }

        v77 = v73;
        [PCSAnalyticsReporterRTC sendMetricWithEvent:v39 success:0 error:v73];
        if (a3)
        {
          v78 = v77;
          *a3 = v77;
        }

        if (a2)
        {
          *a2 |= 0x4000uLL;
        }
      }

      if (v52)
      {
LABEL_69:
        v19 = 1;
        goto LABEL_77;
      }
    }

    else
    {
      v55 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v55, OS_LOG_TYPE_DEFAULT, "Invoking clearCliqueFromAccount on OTClique", buf, 2u);
      }

      v56 = [AAFAnalyticsEventPCS alloc];
      v57 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
      v58 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
      v59 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
      LOBYTE(v82) = 1;
      v60 = [AAFAnalyticsEventPCS initWithPCSMetrics:v56 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v57 eventName:v58 testsAreEnabled:v59 canSendMetrics:@"com.apple.pcs.clearCliqueFromAccount" category:0];

      v85 = 0;
      v61 = [MEMORY[0x1E697AA80] clearCliqueFromAccount:v5 error:&v85];
      v62 = v85;
      v63 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = @"failed";
        if ((v61 & (v62 == 0)) != 0)
        {
          v64 = @"succeeded";
        }

        *buf = 138412546;
        v89 = v64;
        v90 = 2112;
        v91 = v62;
        _os_log_impl(&dword_1B229C000, v63, OS_LOG_TYPE_DEFAULT, "clearCliqueFromAccount result: %@, error: %@", buf, 0x16u);
      }

      if (v62)
      {
        v71 = 0;
      }

      else
      {
        v71 = v61;
      }

      if (v71)
      {
        v72 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v72, OS_LOG_TYPE_DEFAULT, "successfully reset protected data on otclique", buf, 2u);
        }

        [PCSAnalyticsReporterRTC sendMetricWithEvent:v60 success:1 error:0];
        goto LABEL_69;
      }

      if (v62)
      {
        v74 = v62;
      }

      else
      {
        v74 = PCSErrorCreate(0x8000, @"Failed to clear clique from account on otclique", v65, v66, v67, v68, v69, v70, v82);
      }

      v79 = v74;
      [PCSAnalyticsReporterRTC sendMetricWithEvent:v60 success:0 error:v74];
      if (a3)
      {
        v80 = v79;
        *a3 = v79;
      }

      if (a2)
      {
        *a2 |= 0x8000uLL;
      }
    }

    v19 = 0;
    goto LABEL_77;
  }

  v13 = [AAFAnalyticsEventPCS alloc];
  v14 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
  v15 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
  v16 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
  LOBYTE(v82) = 1;
  v17 = [AAFAnalyticsEventPCS initWithPCSMetrics:v13 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v14 eventName:v15 testsAreEnabled:v16 canSendMetrics:@"com.apple.pcspPerformCKServerUnreadableDataRemoval" category:0];

  v18 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v18, OS_LOG_TYPE_DEFAULT, "Performing performCKServerUnreadableDataRemoval on OTClique", buf, 2u);
  }

  v87 = 0;
  LODWORD(v19) = [MEMORY[0x1E697AA80] performCKServerUnreadableDataRemoval:v5 error:&v87];
  v20 = v87;
  v21 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"failed";
    if ((v19 & (v20 == 0)) != 0)
    {
      v22 = @"succeeded";
    }

    *buf = 138412546;
    v89 = v22;
    v90 = 2112;
    v91 = v20;
    _os_log_impl(&dword_1B229C000, v21, OS_LOG_TYPE_DEFAULT, "performCKServerUnreadableDataRemoval result: %@, error: %@", buf, 0x16u);
  }

  if (v20)
  {
    v19 = 0;
  }

  else
  {
    v19 = v19;
  }

  if (v19)
  {
    v29 = pcsLogObjForScope("guitarfish-reset-protected-data");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v29, OS_LOG_TYPE_DEFAULT, "successfully removed unreadable data from CKServer on otclique", buf, 2u);
    }

    [PCSAnalyticsReporterRTC sendMetricWithEvent:v17 success:1 error:0];
  }

  else
  {
    if (v20)
    {
      v54 = v20;
    }

    else
    {
      v54 = PCSErrorCreate(226, @"Failed to remove unreadable CKServer data on otclique", v23, v24, v25, v26, v27, v28, v82);
    }

    v75 = v54;
    if (a3)
    {
      v76 = v54;
      *a3 = v75;
    }

    if (a2)
    {
      *a2 |= 0x200000uLL;
    }

    [PCSAnalyticsReporterRTC sendMetricWithEvent:v17 success:0 error:v75];
  }

LABEL_77:
  return v19;
}

void _PCSGuitarfishDeleteKeychainItem(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a2;
  v9 = objc_alloc_init(v7);
  [v9 setObject:*MEMORY[0x1E697B018] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v9 setObject:kPCSDefaultKeychainGroup[0] forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697AC30]];

  [v9 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697AE80]];
  [v9 setObject:kPCSGuitarfishKeychainSecurityDomain forKeyedSubscript:*MEMORY[0x1E697AE70]];
  v10 = off_1ED6F2360(v9);
  if (v10 == -25300 || v10 == 0)
  {
    v6[2](v6, 0);
  }

  else
  {
    v12 = v10;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _PCSGuitarfishDeleteKeychainItem_cold_1();
    }

    v20 = PCSErrorCreate(26, @"Unable to delete item from keychain %d", v14, v15, v16, v17, v18, v19, v12);
    (v6)[2](v6, v20);
  }
}

id PCSGuitarfishUnwrapKeysUsingWrappingKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v7 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v7, OS_LOG_TYPE_DEFAULT, "Unwrapping Inner from Outer with Key", buf, 2u);
  }

  v8 = dispatch_semaphore_create(0);
  v9 = v17[5];
  v17[5] = v8;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PCSGuitarfishUnwrapKeysUsingWrappingKey_block_invoke;
  v14[3] = &unk_1E7B19AD8;
  v14[4] = &v28;
  v14[5] = &v22;
  v14[6] = &v16;
  _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v5, v6, v14);
  dispatch_semaphore_wait(v17[5], 0xFFFFFFFFFFFFFFFFLL);
  if (v23[5])
  {
    v10 = pcsLogObjForScope("Guitarfish");
    PCSGuitarfishUnwrapKeysUsingWrappingKey_cold_1(v10);
  }

  if (a3)
  {
    v11 = v29[5];
    if (v11)
    {
      *a3 = v11;
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

void sub_1B22D7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishUnwrapKeysUsingWrappingKey_block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v12 = a6;
  if (v12)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a6);
  }

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

id PCSGuitarfishUnwrapKeys(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__4;
  v45 = __Block_byref_object_dispose__4;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__4;
  v39 = __Block_byref_object_dispose__4;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  if (!v5)
  {
    v7 = +[PCSAccountsModel accountForCurrentPersona];
    v5 = [v7 aa_personID];

    v8 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v5;
      _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "DSID not provided to PCSGuitarfishUnwrapKeys, using derived: %@", buf, 0xCu);
    }
  }

  v9 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Fetching Wrapping Key from Keychain", buf, 2u);
  }

  v10 = dispatch_semaphore_create(0);
  v11 = v30[5];
  v30[5] = v10;

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __PCSGuitarfishUnwrapKeys_block_invoke;
  v28[3] = &unk_1E7B19B00;
  v28[4] = &v35;
  v28[5] = &v41;
  v28[6] = &v29;
  _PCSGuitarfishGetKeychainItem(@"WrappingKey", v5, v28);
  dispatch_semaphore_wait(v30[5], 0xFFFFFFFFFFFFFFFFLL);
  v17 = v42[5];
  v18 = v36;
  if (!v17 || v36[5])
  {
    v27 = v36[5];
    _PCSNSError(&v27, 213, @"unable to fetch wrappingKey, needs repair", v12, v13, v14, v15, v16, v25);
    v19 = 0;
    v20 = v27;
  }

  else
  {
    v26 = 0;
    v19 = PCSGuitarfishUnwrapKeysUsingWrappingKey(v17, v6, &v26);
    v20 = v26;
  }

  v21 = v20;
  v22 = v18[5];
  v18[5] = v21;

  if (a3)
  {
    v23 = v36[5];
    if (v23)
    {
      *a3 = v23;
    }
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v19;
}

void sub_1B22D7FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishUnwrapKeys_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "error retrieving wrapping key from keychain: %@", &v10, 0xCu);
    }

    v9 = 32;
    goto LABEL_7;
  }

  if (v6)
  {
    v9 = 40;
    a3 = a2;
LABEL_7:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

void __PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218498;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishSetupIdentities returned with status: %ld, flags: %ld, error: %@", &v18, 0x20u);
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;
  v14 = v10;

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  *(*(*(a1 + 56) + 8) + 24) = a3;
  *(*(*(a1 + 64) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

__CFData *PCSBackupCreateEscrowedKeyWithIdentity(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(v26, 0, sizeof(v26));
  v6 = PCSIdentityCopyExportedPrivateKey(a2, a3);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = PCSIdentityCopyExportedPublicKey(a2);
  if (!v8)
  {
    _PCSErrorOOM(a3);
    CFRelease(v7);
    goto LABEL_18;
  }

  v9 = v8;
  EscrowedCommon = BackupCreateEscrowedCommon(v7, v8, v26, a3);
  CFRelease(v7);
  CFRelease(v9);
  if (!EscrowedCommon)
  {
LABEL_18:
    free_PCSBackupEscrow(v26);
    return 0;
  }

  v11 = PCSIdentityCopyWrappedKey(a1, EscrowedCommon, a3);
  if (!v11)
  {
    free_PCSBackupEscrow(v26);
    CFRelease(EscrowedCommon);
    return 0;
  }

  v12 = v11;
  _PCSFillOctetString(v26, v11);
  LODWORD(v26[3]) = 2;
  v13 = PCSIdentityCopyExportedPublicKey(a1);
  if (!_PCSFillOctetString(&v26[3] + 1, v13))
  {
    _PCSErrorOOM(a3);
    goto LABEL_11;
  }

  v25 = 0;
  v14 = length_PCSBackupEscrow(v26);
  Mutable = CFDataCreateMutable(0, v14);
  if (!Mutable)
  {
    v19 = 12;
    goto LABEL_10;
  }

  v16 = Mutable;
  CFDataSetLength(Mutable, v14);
  MutableBytePtr = CFDataGetMutableBytePtr(v16);
  v18 = encode_PCSBackupEscrow(&MutableBytePtr[v14 - 1], v14, v26, &v25);
  if (v18)
  {
    v19 = v18;
    CFRelease(v16);
LABEL_10:
    _PCSErrorASN1(a3, "encode PCSBackupEscrow", v19);
LABEL_11:
    v16 = 0;
LABEL_13:
    free_PCSBackupEscrow(v26);
    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(EscrowedCommon);
    CFRelease(v12);
    return v16;
  }

  if (v14 == v25)
  {
    goto LABEL_13;
  }

  v21 = asn1_abort();
  return PCSBackupCopyRecoveredKeyWithIdentitySet(v21, v22, v23, v24);
}

CFTypeRef PCSBackupCopyRecoveredKeyWithIdentitySet(uint64_t a1, uint64_t a2, CFDataRef theData, const void **a4)
{
  v28 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = decode_PCSBackupEscrow(BytePtr, Length, &v29, &v28);
  if (v10)
  {
    v25 = v10;
    v26 = "decode PCSBackupEscrow";
    v27 = a4;
LABEL_28:
    _PCSErrorASN1(v27, v26, v25);
LABEL_31:
    free_PCSBackupEscrow(&v29);
    return 0;
  }

  v11 = v28;
  if (v11 != CFDataGetLength(theData))
  {
    v26 = "size PCSBackupEscrow";
    v27 = a4;
    v25 = 1859794442;
    goto LABEL_28;
  }

  if (v32 != 2)
  {
    _PCSError(a4, 57, @"wrong type: %d", v32);
    goto LABEL_31;
  }

  v12 = _PCSCreateBase64(v33, *(&v32 + 1), 0);
  if (!v12)
  {
    _PCSErrorOOM(a4);
    goto LABEL_31;
  }

  v13 = v12;
  if (!a2)
  {
    v14 = PCSIdentitySetCopyIdentity(a1, v12);
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_10:
    v16 = v14;
LABEL_11:
    v17 = CFDataCreate(0, *(&v29 + 1), v29);
    if (v17)
    {
      v18 = PCSServiceIdentityCopyUnwrappedKey(v16, v17, a4);
      if (v18)
      {
        v19 = v18;
        v20 = CFDataCreateWithBytesNoCopy(0, *(&v30 + 1), v30, *MEMORY[0x1E695E498]);
        if (v20)
        {
          v21 = _PCSStingrayCopyDecryptedData(v19, v20);
          v22 = v21;
          if (v21)
          {
            v23 = PCSIdentityCreateWithExportedPrivateKey(v21, a4);
LABEL_16:
            free_PCSBackupEscrow(&v29);
            CFRelease(v19);
            if (v22)
            {
              CFRelease(v22);
            }

            CFRelease(v13);
            CFRelease(v17);
            if (v20)
            {
              CFRelease(v20);
            }

LABEL_20:
            CFRelease(v16);
            return v23;
          }

          _PCSErrorOOM(a4);
        }

        else
        {
          _PCSErrorOOM(a4);
          v22 = 0;
        }

        v23 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      _PCSErrorOOM(a4);
    }

    goto LABEL_22;
  }

  v14 = PCSIdentitySetCopyIdentity(a2, v12);
  if (v14)
  {
    goto LABEL_10;
  }

  v15 = PCSIdentitySetCopyIdentity(a1, v13);
  if (v15)
  {
    v16 = v15;
    PCSIdentitySetAddIdentity(a2, v15);
    goto LABEL_11;
  }

LABEL_21:
  _PCSError(a4, 70, @"Escrow identity missing: %@", v13);
  v16 = 0;
  v17 = 0;
LABEL_22:
  free_PCSBackupEscrow(&v29);
  CFRelease(v13);
  if (v17)
  {
    CFRelease(v17);
  }

  v23 = 0;
  result = 0;
  if (v16)
  {
    goto LABEL_20;
  }

  return result;
}

__CFData *PCSBackupCreateEscrowedKeysetWithIdentity(uint64_t a1, const __CFData *a2, int a3, const void **a4)
{
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  EscrowedCommon = BackupCreateEscrowedCommon(a2, 0, &v28, a4);
  if (!EscrowedCommon)
  {
    free_PCSBackupEscrow(&v28);
    return 0;
  }

  v8 = EscrowedCommon;
  v9 = PCSIdentityCopyWrappedKey(a1, EscrowedCommon, a4);
  if (!v9)
  {
    free_PCSBackupEscrow(&v28);
    CFRelease(v8);
    return 0;
  }

  v10 = v9;
  if (!_PCSFillOctetString(&v28, v9))
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v11 = CFDataCreateWithBytesNoCopy(0, *(&v29 + 1), v29, *MEMORY[0x1E695E498]);
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v11;
  Signature = PCSIdentityCreateSignature(a1, 0, v11, a4);
  CFRelease(v12);
  if (!Signature)
  {
LABEL_27:
    free_PCSBackupEscrow(&v28);
    v19 = 0;
LABEL_19:
    CFRelease(v8);
    CFRelease(v10);
    return v19;
  }

  v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  *(&v32 + 1) = v14;
  if (!v14)
  {
    CFRelease(Signature);
    goto LABEL_26;
  }

  v15 = _PCSFillOctetString(v14, Signature);
  CFRelease(Signature);
  if (!v15)
  {
LABEL_26:
    _PCSErrorOOM(a4);
    goto LABEL_27;
  }

LABEL_9:
  LODWORD(v31) = 3;
  v16 = PCSIdentityCopyExportedPublicKey(a1);
  if (!_PCSFillOctetString(&v31 + 1, v16))
  {
    _PCSErrorOOM(a4);
    goto LABEL_15;
  }

  v27 = 0;
  v17 = length_PCSBackupEscrow(&v28);
  Mutable = CFDataCreateMutable(0, v17);
  if (!Mutable)
  {
    v22 = 12;
    goto LABEL_14;
  }

  v19 = Mutable;
  CFDataSetLength(Mutable, v17);
  MutableBytePtr = CFDataGetMutableBytePtr(v19);
  v21 = encode_PCSBackupEscrow(&MutableBytePtr[v17 - 1], v17, &v28, &v27);
  if (v21)
  {
    v22 = v21;
    CFRelease(v19);
LABEL_14:
    _PCSErrorASN1(a4, "encode PCSBackupEscrow", v22);
LABEL_15:
    v19 = 0;
    goto LABEL_17;
  }

  if (v17 == v27)
  {
LABEL_17:
    free_PCSBackupEscrow(&v28);
    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_19;
  }

  v24 = asn1_abort();
  return PCSBackupCopyRecoveredKeysetWithIdentity(v24, v25, v26);
}

__CFData *PCSBackupCopyRecoveredKeysetWithIdentity(uint64_t a1, CFDataRef theData, const void **a3)
{
  v20 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v8 = decode_PCSBackupEscrow(BytePtr, Length, &v21, &v20);
  if (v8)
  {
    v17 = v8;
    v18 = "decode PCSBackupEscrow";
    v19 = a3;
LABEL_14:
    _PCSErrorASN1(v19, v18, v17);
LABEL_17:
    free_PCSBackupEscrow(&v21);
    return 0;
  }

  v9 = v20;
  if (v9 != CFDataGetLength(theData))
  {
    v18 = "size PCSBackupEscrow";
    v19 = a3;
    v17 = 1859794442;
    goto LABEL_14;
  }

  if (v24 != 3)
  {
    _PCSError(a3, 57, @"wrong type: %d", v24);
    goto LABEL_17;
  }

  v10 = CFDataCreate(0, *(&v21 + 1), v21);
  if (!v10)
  {
    _PCSErrorOOM(a3);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = PCSServiceIdentityCopyUnwrappedKey(a1, v10, a3);
  if (!v12)
  {
    free_PCSBackupEscrow(&v21);
    CFRelease(v11);
    return 0;
  }

  v13 = v12;
  v14 = CFDataCreateWithBytesNoCopy(0, *(&v22 + 1), v22, *MEMORY[0x1E695E498]);
  if (!v14 || (v15 = _PCSStingrayCopyDecryptedData(v13, v14)) == 0)
  {
    _PCSErrorOOM(a3);
    v15 = 0;
  }

  free_PCSBackupEscrow(&v21);
  CFRelease(v13);
  CFRelease(v11);
  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}