uint64_t MCMContainerContentClassForMBContainerType(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_17790[a1 - 1];
  }
}

__CFString *MBStringForContainerType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_24998[a1 - 1];
  }
}

uint64_t sub_1858(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Data/Application"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Data/PluginKitPlugin"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Shared/AppGroup"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"System/Data"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"System/Shared"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_2484(void *a1)
{
  v1 = [a1 stringByStandardizingPath];
  v2 = [v1 stringByDeletingLastPathComponent];
  v3 = [v1 substringFromIndex:{objc_msgSend(v2, "length") + 1}];
  v4 = [v3 stringByAppendingPathComponent:@"PlaceholderEntitlements.plist"];

  return v4;
}

id sub_2D38(uint64_t a1)
{
  if (qword_2A7A8 != -1)
  {
    sub_135E0();
  }

  v2 = qword_2A7A0;

  return v2;
}

id sub_2D7C(uint64_t a1)
{
  if (qword_2A7B8 != -1)
  {
    sub_135F4();
  }

  v2 = qword_2A7B0;

  return v2;
}

id sub_2DC0(uint64_t a1)
{
  if (qword_2A7C8 != -1)
  {
    sub_13608();
  }

  v2 = qword_2A7C0;

  return v2;
}

void sub_3414(id a1)
{
  qword_2A760 = [NSSet setWithObjects:kCFBundleIdentifierKey, @"ContainerContentClass", kCFBundleVersionKey, @"Path", @"SafeHarborDockingDate", 0];

  _objc_release_x1();
}

void sub_3498(id a1)
{
  qword_2A770 = [NSSet setWithObjects:&stru_251F0, 0];

  _objc_release_x1();
}

void sub_34EC(id a1)
{
  v4 = sub_2D7C(a1);
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A780;
  qword_2A780 = v2;
}

void sub_3588(id a1)
{
  v4 = sub_2DC0(a1);
  v1 = [NSSet setWithObjects:@"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"Library/Caches/NeverRestore", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A790;
  qword_2A790 = v2;
}

void sub_3624(id a1)
{
  qword_2A7A0 = [NSSet setWithObjects:@"Documents", @"Library", @"GeoJSON", 0];

  _objc_release_x1();
}

void sub_368C(id a1)
{
  qword_2A7B0 = [NSSet setWithObjects:@"Library/Caches", @"Library/SyncedPreferences", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_3710(id a1)
{
  qword_2A7C0 = [NSSet setWithObjects:@"NewsstandArtwork", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_378C(id a1)
{
  qword_2A7D0 = [NSSet setWithObjects:&stru_251F0, 0];

  _objc_release_x1();
}

void sub_37E0(id a1)
{
  v4 = sub_2D7C(a1);
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A7E0;
  qword_2A7E0 = v2;
}

void sub_3884(id a1)
{
  v4 = sub_2DC0(a1);
  v1 = [NSSet setWithObjects:@"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A7F0;
  qword_2A7F0 = v2;
}

void sub_3964(id a1)
{
  qword_2A800 = [[MBManagedPolicy alloc] _init];

  _objc_release_x1();
}

void sub_506C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) _configurePlaceholderIPA:*(a1 + 40) personaIdentifier:*(a1 + 48) isDataSeparated:*(a1 + 88) installType:*(a1 + 80)])
  {
    atomic_fetch_add((*(*(a1 + 72) + 8) + 24), 1u);
  }

  dispatch_semaphore_signal(*(a1 + 56));
  dispatch_group_leave(*(a1 + 64));

  objc_autoreleasePoolPop(v2);
}

CFStringRef copyPasswordFromKeychain()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v1, kSecAttrService, @"BackupAgent");
  CFDictionaryAddValue(v1, kSecAttrAccount, @"BackupPassword");
  CFDictionaryAddValue(v1, kSecReturnData, kCFBooleanTrue);
  result = 0;
  v2 = SecItemCopyMatching(v1, &result);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result == 0;
  }

  if (v3)
  {
    v4 = MBGetDefaultLog();
    v5 = v4;
    if (v2 == -25300)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Couldn't find an encrypted backup password in the keychain.", buf, 2u);
        _MBLog(@"I ", "Couldn't find an encrypted backup password in the keychain.");
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Could not copy encrypted backup password from keychain: %d", buf, 8u);
      _MBLog(@"E ", "Could not copy encrypted backup password from keychain: %d");
    }

    v8 = 0;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(result);
    v8 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 1u);
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  CFRelease(v1);
  return v8;
}

void setLockdownEncryptionInfo(uint64_t a1)
{
  if (lockdown_connect())
  {
    v2 = lockdown_set_value();
    v3 = MBGetDefaultLog();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v7) = v2;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Could not set lockdown key for encryption: %d", buf, 8u);
        _MBLog(@"E ", "Could not set lockdown key for encryption: %d");
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v7 = @"WillEncrypt";
      v8 = 2112;
      v9 = a1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%@ key successfully set to %@", buf, 0x16u);
      _MBLog(@"I ", "%@ key successfully set to %@", @"WillEncrypt", a1);
    }

    lockdown_disconnect();
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Could not connect to lockdown!", buf, 2u);
      _MBLog(@"E ", "Could not connect to lockdown!");
    }
  }
}

void makeLockdownEncryptionInfoConsistentWithKeychain(uint64_t a1, uint64_t a2)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Setting lockdown key to be consistent with the keychain", buf, 2u);
    _MBLog(@"I ", "Setting lockdown key to be consistent with the keychain");
  }

  v3 = copyPasswordFromKeychain();
  v4 = MBGetDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "setting lockdown encryption info since a password exists in the keychain", v7, 2u);
      _MBLog(@"I ", "setting lockdown encryption info since a password exists in the keychain");
    }

    setLockdownEncryptionInfo(kCFBooleanTrue);
    CFRelease(v3);
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "clearing lockdown encryption info since a password doesn't exist in the keychain", v6, 2u);
      _MBLog(@"I ", "clearing lockdown encryption info since a password doesn't exist in the keychain");
    }

    setLockdownEncryptionInfo(kCFBooleanFalse);
  }
}

uint64_t setPasswordInKeychain(const __CFString *a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = kCFBooleanFalse;
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(v3, kSecAttrService, @"BackupAgent");
    CFDictionaryAddValue(v3, kSecAttrAccount, @"BackupPassword");
    CFDictionaryAddValue(v3, kSecReturnData, kCFBooleanFalse);
    if (a1)
    {
      ExternalRepresentation = CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0x3Fu);
      if (SecItemCopyMatching(v3, 0))
      {
        CFDictionaryAddValue(v3, kSecValueData, ExternalRepresentation);
        v6 = SecItemAdd(v3, 0);
        if (!v6)
        {
          v4 = kCFBooleanTrue;
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Encrypted backup password successfully added to the keychain", buf, 2u);
            _MBLog(@"I ", "Encrypted backup password successfully added to the keychain");
          }

          v9 = 0;
          if (!ExternalRepresentation)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v7 = v6;
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v22 = v7;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Could not add the encrypted backup password to the keychain: %d", buf, 8u);
          _MBLog(@"E ", "Could not add the encrypted backup password to the keychain: %d");
        }
      }

      else
      {
        v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v13)
        {
          v14 = v13;
          CFDictionaryAddValue(v13, kSecValueData, ExternalRepresentation);
          v15 = SecItemUpdate(v3, v14);
          v16 = MBGetDefaultLog();
          v17 = v16;
          if (v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v22 = v15;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "There was an error updating the backup password in the keychain: %d", buf, 8u);
              _MBLog(@"E ", "There was an error updating the backup password in the keychain: %d", v15);
            }

            v9 = 1;
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Encrypted backup password successfully updated in the keychain", buf, 2u);
              _MBLog(@"I ", "Encrypted backup password successfully updated in the keychain");
            }

            v9 = 0;
            v4 = kCFBooleanTrue;
          }

          CFRelease(v14);
          if (!ExternalRepresentation)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Could not create a dictionary for the new encrypted backup password", buf, 2u);
          _MBLog(@"E ", "Could not create a dictionary for the new encrypted backup password");
        }
      }

      v9 = 1;
      if (ExternalRepresentation)
      {
LABEL_29:
        CFRelease(ExternalRepresentation);
      }
    }

    else
    {
      v10 = SecItemDelete(v3);
      if (v10 != -25300)
      {
        v11 = v10;
        if (!v10)
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Encrypted backup password successfully deleted from the keychain", buf, 2u);
            _MBLog(@"I ", "Encrypted backup password successfully deleted from the keychain");
          }

          v9 = 0;
          goto LABEL_30;
        }

        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = v11;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Could not delete encrypted backup password from the keychain: %d", buf, 8u);
          _MBLog(@"Df", "Could not delete encrypted backup password from the keychain: %d", v11);
        }
      }

      v9 = 1;
    }

LABEL_30:
    setLockdownEncryptionInfo(v4);
    CFRelease(v3);
    return v9;
  }

  return 1;
}

uint64_t MBExcludedAppTypeFromAppRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 managementDomain];
  v3 = [v2 hasPrefix:@"swift-playgrounds"];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v5 = [v1 appClipMetadata];
    v4 = v5 != 0;
  }

  return v4;
}

id sub_96FC(void *a1, void *a2)
{
  v3 = a1;
  v98 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v120 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "app.bundleIdentifier is nil: %@", buf, 0xCu);
      _MBLog(@"E ", "app.bundleIdentifier is nil: %@", v3);
    }
  }

  [v4 setObject:v5 forKeyedSubscript:?];
  v7 = MBStringForContainerType(1);
  [v4 setObject:v7 forKeyedSubscript:@"ContainerContentClass"];

  v8 = [v3 bundleVersion];

  if (v8)
  {
    v9 = [v3 bundleVersion];
    [v4 setObject:v9 forKeyedSubscript:kCFBundleVersionKey];
  }

  v10 = [v3 mb_applicationType];
  v79 = v10;
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"ApplicationType"];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v120 = v5;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "app.applicationType is nil for %@", buf, 0xCu);
      _MBLog(@"Db", "app.applicationType is nil for %@", v5);
    }
  }

  v12 = [v3 mb_bundleURL];
  v78 = v12;
  if (v12)
  {
    v13 = sub_CBD0(v12);
    [v4 setObject:v13 forKeyedSubscript:@"Path"];
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v120 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "app.bundleURL is nil for %@", buf, 0xCu);
      _MBLog(@"I ", "app.bundleURL is nil for %@", v5);
    }
  }

  v14 = [v3 dataContainerURL];
  v77 = v14;
  if (v14)
  {
    v15 = sub_CBD0(v14);
    [v4 setObject:v15 forKeyedSubscript:@"Container"];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v120 = v5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "app.dataContainerURL is nil for %@", buf, 0xCu);
      _MBLog(@"Db", "app.dataContainerURL is nil for %@", v5);
    }
  }

  v16 = [v3 mb_entitlements];
  v81 = v16;
  v82 = v5;
  if (![v16 count])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      if (v81)
      {
        v18 = "empty";
      }

      else
      {
        v18 = "nil";
      }

      *buf = 136315394;
      v120 = v18;
      v121 = 2112;
      v122 = v82;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Found %s entitlements dictionary for %@", buf, 0x16u);
      _MBLog(@"Db", "Found %s entitlements dictionary for %@", v18, v82);
    }

    v16 = v81;
  }

  if (v16)
  {
    [v4 setObject:v16 forKeyedSubscript:@"Entitlements"];
  }

  v19 = [v3 applicationExtensionRecords];
  v20 = [v19 count];

  v92 = v3;
  v80 = v4;
  if (v20)
  {
    v85 = +[NSMutableArray array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v21 = [v3 applicationExtensionRecords];
    v22 = [v21 countByEnumeratingWithState:&v108 objects:v128 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v109;
      v83 = *v109;
      v84 = v21;
      do
      {
        v25 = 0;
        v86 = v23;
        do
        {
          if (*v109 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v108 + 1) + 8 * v25);
          v27 = [v26 dataContainerURL];
          v28 = [v26 mb_bundleURL];
          v97 = [v26 mb_pluginIdentifier];
          v93 = v28;
          if (v27)
          {
            if (v28)
            {
              if (v97)
              {
                v29 = sub_CBD0(v28);
                v30 = sub_CBD0(v27);
                v91 = v29;
                if (v29)
                {
                  v90 = v30;
                  if (v30)
                  {
                    v31 = [v26 mb_entitlements];
                    if (!v31)
                    {
                      v32 = MBGetDefaultLog();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v120 = v97;
                        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "Plugin %@ found without entitlements.", buf, 0xCu);
                        _MBLog(@"Db", "Plugin %@ found without entitlements.", v97);
                      }

                      v31 = &__NSDictionary0__struct;
                    }

                    v87 = v31;
                    v88 = v27;
                    v89 = v25;
                    v94 = +[NSMutableArray array];
                    v104 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v33 = [v26 groupContainerURLs];
                    v34 = [v33 countByEnumeratingWithState:&v104 objects:v127 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v105;
                      v95 = v33;
                      do
                      {
                        for (i = 0; i != v35; i = i + 1)
                        {
                          if (*v105 != v36)
                          {
                            objc_enumerationMutation(v33);
                          }

                          v38 = *(*(&v104 + 1) + 8 * i);
                          v39 = [v26 groupContainerURLs];
                          v40 = [v39 objectForKeyedSubscript:v38];

                          if (v40)
                          {
                            v41 = sub_CBD0(v40);
                            if (v41)
                            {
                              if (MBPathHasVolumePrefix())
                              {
                                v118[0] = v38;
                                v117[0] = kCFBundleIdentifierKey;
                                v117[1] = @"ContainerContentClass";
                                v42 = MBStringForContainerType(3);
                                v117[2] = @"Container";
                                v118[1] = v42;
                                v118[2] = v41;
                                v43 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];

                                [v94 addObject:v43];
                              }

                              else
                              {
                                v43 = MBGetDefaultLog();
                                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138413058;
                                  v120 = v97;
                                  v121 = 2112;
                                  v122 = v38;
                                  v123 = 2112;
                                  v124 = v41;
                                  v125 = 2112;
                                  v126 = v98;
                                  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x2Au);
                                  v33 = v95;
                                  _MBLog(@"Df", "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", v97, v38, v41, v98, v77, v78, v79);
                                }
                              }
                            }

                            else
                            {
                              v43 = MBGetDefaultLog();
                              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412546;
                                v120 = v97;
                                v121 = 2112;
                                v122 = v38;
                                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0x16u);
                                v33 = v95;
                                _MBLog(@"Df", "Plugin %@ groupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", v97, v38, v75, v76, v77, v78, v79);
                              }
                            }
                          }

                          else
                          {
                            v41 = MBGetDefaultLog();
                            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412546;
                              v120 = v97;
                              v121 = 2112;
                              v122 = v38;
                              _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found without a container - will not be backed up", buf, 0x16u);
                              _MBLog(@"Df", "Plugin %@ groupContainer %@ found without a container - will not be backed up", v97, v38);
                            }
                          }
                        }

                        v35 = [v33 countByEnumeratingWithState:&v104 objects:v127 count:16];
                      }

                      while (v35);
                    }

                    v116[0] = v97;
                    v115[0] = kCFBundleIdentifierKey;
                    v115[1] = @"ContainerContentClass";
                    v44 = MBStringForContainerType(2);
                    v116[1] = v44;
                    v45 = v90;
                    v116[2] = v91;
                    v115[2] = @"Path";
                    v115[3] = @"Container";
                    v116[3] = v90;
                    v46 = v87;
                    v116[4] = v87;
                    v115[4] = @"Entitlements";
                    v115[5] = @"GroupContainers";
                    v116[5] = v94;
                    v47 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:6];

                    v48 = v91;
                    [v85 addObject:v47];

                    v3 = v92;
                    v24 = v83;
                    v21 = v84;
                    v23 = v86;
                    v27 = v88;
                    v25 = v89;
                  }

                  else
                  {
                    v46 = MBGetDefaultLog();
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v120 = v97;
                      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for dataContainerURL - will not be backed up.", buf, 0xCu);
                      _MBLog(@"Df", "Plugin %@ found with a nil SanitizedFilesystemRepresentation for dataContainerURL - will not be backed up.", v97);
                    }

                    v45 = 0;
                    v48 = v91;
                  }
                }

                else
                {
                  v45 = v30;
                  v46 = MBGetDefaultLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v120 = v97;
                    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for bundleURL - will not be backed up.", buf, 0xCu);
                    _MBLog(@"Df", "Plugin %@ found with a nil SanitizedFilesystemRepresentation for bundleURL - will not be backed up.", v97);
                  }

                  v48 = 0;
                }
              }

              else
              {
                v48 = MBGetDefaultLog();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v120 = 0;
                  v121 = 2112;
                  v122 = 0;
                  _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", buf, 0x16u);
                  _MBLog(@"Df", "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", 0, 0);
                }
              }
            }

            else
            {
              v48 = MBGetDefaultLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v120 = v97;
                v121 = 2112;
                v122 = 0;
                _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a bundle URL (%@) - will not be backed up.", buf, 0x16u);
                _MBLog(@"Df", "Plugin %@ found without a bundle URL (%@) - will not be backed up.", v97, 0);
              }
            }
          }

          else
          {
            v48 = MBGetDefaultLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v120 = v97;
              v121 = 2112;
              v122 = 0;
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a data container (%@) - will not be backed up.", buf, 0x16u);
              _MBLog(@"Df", "Plugin %@ found without a data container (%@) - will not be backed up.", v97, 0);
            }
          }

          v25 = v25 + 1;
        }

        while (v25 != v23);
        v23 = [v21 countByEnumeratingWithState:&v108 objects:v128 count:16];
      }

      while (v23);
    }

    v4 = v80;
    [v80 setObject:v85 forKeyedSubscript:@"Plugins"];
  }

  v49 = [v3 groupContainerURLs];
  v50 = [v49 count];

  if (v50)
  {
    v51 = +[NSMutableArray array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v52 = [v3 groupContainerURLs];
    v53 = [v52 countByEnumeratingWithState:&v100 objects:v114 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v101;
      do
      {
        v56 = 0;
        v96 = v54;
        do
        {
          if (*v101 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v100 + 1) + 8 * v56);
          v58 = [v3 groupContainerURLs];
          v59 = [v58 objectForKeyedSubscript:v57];

          if (v59)
          {
            v60 = sub_CBD0(v59);
            if (v60)
            {
              if (MBPathHasVolumePrefix())
              {
                v113[0] = v57;
                v112[0] = kCFBundleIdentifierKey;
                v112[1] = @"ContainerContentClass";
                v61 = MBStringForContainerType(3);
                v112[2] = @"Container";
                v113[1] = v61;
                v113[2] = v60;
                v62 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:3];

                [v51 addObject:v62];
              }

              else
              {
                v62 = MBGetDefaultLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v120 = v57;
                  v121 = 2112;
                  v122 = v60;
                  v123 = 2112;
                  v124 = v98;
                  _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x20u);
                  v54 = v96;
                  _MBLog(@"Df", "GroupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", v57, v60, v98);
                }
              }
            }

            else
            {
              v62 = MBGetDefaultLog();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v120 = v57;
                _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0xCu);
                _MBLog(@"Df", "GroupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", v57, v74, v75);
              }
            }

            v3 = v92;
          }

          else
          {
            v60 = MBGetDefaultLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v120 = v57;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found without a container - will not be backed up", buf, 0xCu);
              _MBLog(@"Df", "GroupContainer %@ found without a container - will not be backed up", v57);
            }
          }

          v56 = v56 + 1;
        }

        while (v54 != v56);
        v54 = [v52 countByEnumeratingWithState:&v100 objects:v114 count:16];
      }

      while (v54);
    }

    v4 = v80;
    [v80 setObject:v51 forKeyedSubscript:@"GroupContainers"];
  }

  v63 = [v3 isPlaceholder];
  v64 = [NSNumber numberWithBool:v63];
  [v4 setObject:v64 forKeyedSubscript:@"IsPlaceholder"];

  v65 = [v3 applicationState];
  v66 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v65 isInstalled]);
  [v4 setObject:v66 forKeyedSubscript:@"IsInstalled"];

  if ((v63 & 1) == 0)
  {
    v99 = 0;
    v67 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v82 allowPlaceholder:1 error:&v99];
    v68 = v99;
    if ([v67 hasParallelPlaceholder])
    {
      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = [v3 bundleIdentifier];
        *buf = 138412290;
        v120 = v70;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "%@ has a parallel placeholder", buf, 0xCu);

        v71 = [v3 bundleIdentifier];
        _MBLog(@"I ", "%@ has a parallel placeholder", v71);
      }

      v72 = &__kCFBooleanTrue;
    }

    else
    {
      v72 = &__kCFBooleanFalse;
    }

    [v4 setObject:v72 forKeyedSubscript:@"IsUpdating"];
  }

  return v4;
}

void sub_C198(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0xC14CLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_CBD0(void *a1)
{
  v1 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [a1 fileSystemRepresentation]);
  if ([v1 hasPrefix:@"/private"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v1 = v2;
  }

  return v1;
}

void sub_DA18(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  Name = class_getName(v2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create(Name, v4);
  v6 = qword_2A828;
  qword_2A828 = v5;
}

void sub_F1B4(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:v4];
}

void sub_F56C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.saveAccount", attr);
  v3 = qword_2A838;
  qword_2A838 = v2;
}

void sub_F5F0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == [*(a1 + 32) isEnabledForDataclass:*(a1 + 40)])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      *buf = 138543874;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "No need to save the %{public}@ state for account %{public}@: %d", buf, 0x1Cu);
      _MBLog(@"Df", "No need to save the %{public}@ state for account %{public}@: %d", *(a1 + 40), *(a1 + 48), *(a1 + 64));
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) setEnabled:*(a1 + 64) forDataclass:*(a1 + 40)];
    v7 = +[ACAccountStore defaultStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F7CC;
    v9[3] = &unk_24AD0;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v7 saveAccount:v8 withCompletionHandler:v9];
  }
}

void sub_F7CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      *buf = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 1024;
      LODWORD(v18) = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Saved the %{public}@ state for account %{public}@: %d", buf, 0x1Cu);
      _MBLog(@"Df", "Saved the %{public}@ state for account %{public}@: %d", *(a1 + 32), *(a1 + 40), *(a1 + 56));
    }

    v7 = v5;
    v5 = 0;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to save %{public}@ state for account %{public}@: %@", buf, 0x20u);
    _MBLog(@"E ", "Failed to save %{public}@ state for account %{public}@: %@", *(a1 + 32), *(a1 + 40), v5);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_FD34(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  if (v4)
  {
    v5 = +[ACAccountStore defaultStore];
    [v5 renewCredentialsForAccount:v4 completion:&stru_24B38];
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Unable to retrieve account, cannot renew credentials", v6, 2u);
      _MBLog(@"Df", "Unable to retrieve account, cannot renew credentials");
    }
  }
}

void sub_FE28(id a1, int64_t a2, NSError *a3)
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MBServiceAccount _stringForAccountCredentialRenewResult:a2];
    *buf = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Account credentials %@ (%d)", buf, 0x12u);

    v6 = [MBServiceAccount _stringForAccountCredentialRenewResult:a2];
    _MBLog(@"Df", "Account credentials %@ (%d)", v6, a2);
  }
}

void sub_1018C(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updating account", buf, 2u);
      _MBLog(@"Df", "Updating account");
    }

    v7 = +[ACAccountStore defaultStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1038C;
    v10[3] = &unk_24B60;
    v10[4] = *(a1 + 32);
    v11 = v4;
    v12 = *(a1 + 40);
    [v7 aa_updatePropertiesForAppleAccount:v11 completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "No primary account found to update", buf, 2u);
      _MBLog(@"E ", "No primary account found to update");
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [MBError errorWithCode:1 format:@"No primary account found to update"];
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_1038C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Updated account", buf, 2u);
      _MBLog(@"I ", "Updated account");
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [MBError descriptionForError:v5];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error updating account: %@", buf, 0xCu);

    v9 = [MBError descriptionForError:v5];
    _MBLog(@"E ", "Error updating account: %@", v9);
  }

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:*(a1 + 40)];
  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

void sub_10648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1066C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10684(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10824(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v9 = [v2 accountWithIdentifier:v3];

  if (v9)
  {
    v4 = [v9 username];
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v4 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_109EC(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Re-authenticating account", buf, 2u);
      _MBLog(@"Df", "Re-authenticating account");
    }

    [v4 aa_setPassword:&stru_251F0];
    [v4 aa_setPassword:*(a1 + 40)];
    v7 = +[ACAccountStore defaultStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10BF4;
    v10[3] = &unk_24C00;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v7 verifyCredentialsForAccount:v4 withHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "No primary account found to update", buf, 2u);
      _MBLog(@"E ", "No primary account found to update");
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [MBError errorWithCode:1 format:@"No primary account found to update"];
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_10BF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Authenticated account", buf, 2u);
      _MBLog(@"I ", "Authenticated account");
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MBError descriptionForError:v6];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Error authenticating account: %@", buf, 0xCu);

    v10 = [MBError descriptionForError:v6];
    _MBLog(@"E ", "Error authenticating account: %@", v10);
  }

  v11 = +[ACAccountStore defaultStore];
  v12 = [*(a1 + 32) accountIdentifier];
  v13 = [v11 accountWithIdentifier:v12];

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:v13];
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v6);
  }
}

void sub_10F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10F40(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_113BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_11404(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1169C(uint64_t a1)
{
  result = lockdown_connect();
  *(*(a1 + 32) + 8) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) != 0;
  return result;
}

uint64_t sub_11758(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 8);
  if (result)
  {
    result = lockdown_disconnect();
    v2 = *(a1 + 32);
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_11884(void *a1)
{
  result = *(a1[4] + 8);
  if (result)
  {
    result = lockdown_copy_value();
    *(*(a1[7] + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_11980(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = lockdown_save_value();
    if (result)
    {
      v3 = result;
      v4 = MBGetDefaultLog();
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        *buf = 138412802;
        v8 = v5;
        v9 = 2112;
        v10 = v6;
        v11 = 1024;
        v12 = v3;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to save object to lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
        result = _MBLog(@"E ", "Failed to save object to lockdown with domain '%@', key '%@': %d", *(a1 + 40), *(a1 + 48), v3);
      }

      if (*(a1 + 72))
      {
        result = [MBError errorWithCode:1 format:@"Failed to save object to lockdown"];
        **(a1 + 72) = result;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_11B70(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"com.apple.mobile.backup"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.mobile.ldbackup") & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.purplebuddy"))
  {
    v2 = *(a1 + 32);
    if ([(__CFString *)v2 isEqualToString:@"com.apple.mobile.backup"])
    {
      v2 = @"com.apple.mobile.ldbackup";
    }

    v3 = kMBMobileUserName;
    CFPreferencesSetValue(*(a1 + 40), 0, v2, kMBMobileUserName, kCFPreferencesAnyHost);
    result = CFPreferencesSynchronize(v2, v3, kCFPreferencesAnyHost);
    if (!result)
    {
      v5 = MBGetDefaultLog();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = *(a1 + 40);
        *buf = 138412546;
        v12 = v2;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %@ domain (%@)", buf, 0x16u);
        return _MBLog(@"E ", "Failed to sync preferences for %@ domain (%@)", v2, *(a1 + 40));
      }
    }
  }

  else
  {
    result = *(*(a1 + 48) + 8);
    if (result)
    {
      result = lockdown_remove_value();
      if (result)
      {
        v7 = result;
        v8 = MBGetDefaultLog();
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v9 = *(a1 + 32);
          v10 = *(a1 + 40);
          *buf = 138412802;
          v12 = v9;
          v13 = 2112;
          v14 = v10;
          v15 = 1024;
          v16 = v7;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to remove object from lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
          result = _MBLog(@"E ", "Failed to remove object from lockdown with domain '%@', key '%@': %d", *(a1 + 32), *(a1 + 40), v7);
        }

        if (*(a1 + 64))
        {
          result = [MBError errorWithCode:1 format:@"Failed to remove object from lockdown"];
          **(a1 + 64) = result;
        }

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  return result;
}

unint64_t sub_122BC(void *a1, void *a2, char a3)
{
  if (!a3)
  {
    sub_13B18(43);

    v11 = 0xD000000000000028;
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_13AF8(v13);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_13B18(50);

    v11 = 0xD00000000000002FLL;
    v4 = [a1 persona];
    v5 = [v4 personaIdentifier];

    v6 = sub_13AD8();
    v8 = v7;

    v12._countAndFlagsBits = v6;
    v12._object = v8;
    sub_13AF8(v12);

LABEL_5:
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    sub_13AF8(v14);
    return v11;
  }

  return 0xD000000000000019;
}

uint64_t sub_1242C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        sub_12F08();
        return sub_13B08() & 1;
      }

      return 0;
    }

    return v4 == 2 && (v2 | v3) == 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == v3 && a1[1] == v2)
  {
    return 1;
  }

  return sub_13B38();
}

id sub_12A08(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_13A68();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    v15 = 22;
LABEL_6:
    v21 = v15;
    sub_13084(&_swiftEmptyArrayStorage);
    sub_13194();
    sub_13A78();
    sub_13A58();
    (*(v11 + 8))(v13, v10);
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  if ((a4 & 1) == 0)
  {

    a1 = 0;
    a2 = 0;
    v14 = 2;
    goto LABEL_8;
  }

  if (!a2)
  {
    v15 = 2;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_8:
  v17 = &v5[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state];
  *v17 = a1;
  *(v17 + 1) = a2;
  v17[16] = v14;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_12D04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_12D88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12DA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2A618)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2A618);
    }
  }
}

uint64_t sub_12E20(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_12E3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_12E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_12E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_12EE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_12F08()
{
  result = qword_2A620;
  if (!qword_2A620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A620);
  }

  return result;
}

unint64_t sub_12F54(uint64_t a1, uint64_t a2)
{
  sub_13B48();
  sub_13AE8();
  v4 = sub_13B58();

  return sub_12FCC(a1, a2, v4);
}

unint64_t sub_12FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_13B38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_13084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_131EC(&qword_2A630, &qword_179C0);
    v3 = sub_13B28();
    v4 = a1 + 32;

    while (1)
    {
      sub_13234(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_12F54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_132A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_13194()
{
  result = qword_2A628;
  if (!qword_2A628)
  {
    sub_13A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A628);
  }

  return result;
}

uint64_t sub_131EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_13234(uint64_t a1, uint64_t a2)
{
  v4 = sub_131EC(&qword_2A638, qword_179C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_132A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_132B4(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_132DC()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_13344(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_133E8()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_13468()
{
  sub_133E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_13508(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBApp.m" lineNumber:301 description:@"Not a safe harbor"];
}