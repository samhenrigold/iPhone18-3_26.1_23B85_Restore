@interface BDSSyncUserDefaults
+ (BOOL)_isBundleIdentifierInArray:(__CFArray *)array;
+ (BOOL)_isICloudDriveSyncOptedIn;
+ (BOOL)_isServiceDisabledAlternative:(__CFString *)alternative;
+ (BOOL)_isServiceEnabledAlternative:(__CFString *)alternative;
+ (BOOL)isCloudKitSyncOptedIn;
+ (BOOL)isGlobalICloudDriveSyncOptedIn;
+ (BOOL)isSignedIntoICloud;
+ (id)_stateForLog;
+ (id)iCloudIdentity;
+ (id)makeOSStateHandler;
+ (void)_setService:(__CFString *)service enabled:(BOOL)enabled;
@end

@implementation BDSSyncUserDefaults

+ (BOOL)isSignedIntoICloud
{
  mEMORY[0x1E698F538] = [MEMORY[0x1E698F538] sharedProvider];
  isUserSignedInToiCloud = [mEMORY[0x1E698F538] isUserSignedInToiCloud];

  return isUserSignedInToiCloud;
}

+ (BOOL)isCloudKitSyncOptedIn
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"BCSyncCloudKit"];

  return v3;
}

+ (id)makeOSStateHandler
{
  v2 = [objc_alloc(MEMORY[0x1E698F558]) initWithTitle:@"BDSSyncUserDefaults" block:&unk_1F5E61E48];

  return v2;
}

+ (BOOL)isGlobalICloudDriveSyncOptedIn
{
  mEMORY[0x1E698F538] = [MEMORY[0x1E698F538] sharedProvider];
  isGlobalICloudDriveSyncOptedIn = [mEMORY[0x1E698F538] isGlobalICloudDriveSyncOptedIn];

  return isGlobalICloudDriveSyncOptedIn;
}

+ (id)iCloudIdentity
{
  mEMORY[0x1E698F538] = [MEMORY[0x1E698F538] sharedProvider];
  iCloudIdentity = [mEMORY[0x1E698F538] iCloudIdentity];

  return iCloudIdentity;
}

+ (BOOL)_isICloudDriveSyncOptedIn
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698F538] = [MEMORY[0x1E698F538] sharedProvider];
  isPrimaryAccountManagedAppleID = [mEMORY[0x1E698F538] isPrimaryAccountManagedAppleID];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"BCSyncICloudDrive"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults2 BOOLForKey:@"BCSyncCloudKit"];

  v9 = BDSUbiquityLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (isPrimaryAccountManagedAppleID)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (v5)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    if (v7)
    {
      v10 = @"YES";
    }

    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "BDSSyncUserDefaults: isICloudDriveSyncOptedIn isPrimaryAccountManagedAppleID = %@ isBCSyncICloudDriveUserDefaults = %@ isBCSyncCloudKitUserDefaults = %@", &v14, 0x20u);
  }

  return (isPrimaryAccountManagedAppleID | v5 & v7) & 1;
}

+ (BOOL)_isBundleIdentifierInArray:(__CFArray *)array
{
  _booksAppBundleIdentifier = [self _booksAppBundleIdentifier];
  Count = CFArrayGetCount(array);
  if (Count)
  {
    v6 = Count;
    v7 = 0;
    v8 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(array, v7);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 == CFStringGetTypeID() && CFStringCompare(ValueAtIndex, _booksAppBundleIdentifier, 0) == kCFCompareEqualTo)
      {
        break;
      }

      v8 = ++v7 < v6;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isServiceEnabledAlternative:(__CFString *)alternative
{
  v4 = TCCAccessCopyBundleIdentifiersForService();
  if (v4)
  {
    v5 = v4;
    v6 = [BDSSyncUserDefaults _isBundleIdentifierInArray:v4];
    CFRelease(v5);
    return v6;
  }

  else
  {
    v8 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E470496C(alternative, v8);
    }

    return 0;
  }
}

+ (BOOL)_isServiceDisabledAlternative:(__CFString *)alternative
{
  v4 = TCCAccessCopyBundleIdentifiersDisabledForService();
  if (v4)
  {
    v5 = v4;
    v6 = [BDSSyncUserDefaults _isBundleIdentifierInArray:v4];
    CFRelease(v5);
    return v6;
  }

  else
  {
    v8 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E47049E4(alternative, v8);
    }

    return 1;
  }
}

+ (void)_setService:(__CFString *)service enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  _booksAppBundleIdentifier = [self _booksAppBundleIdentifier];
  v7 = TCCAccessSetForBundleId();
  v8 = v7;
  v9 = BDSCloudKitLog(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (enabledCopy)
      {
        v11 = @"YES";
      }

      v12 = 138543618;
      serviceCopy = service;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_INFO, "Successfully set %{public}@ to %{public}@.", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1E4704A5C(service, enabledCopy, v10);
  }
}

+ (id)_stateForLog
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"isSignedIntoICloud";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isSignedIntoICloud")}];
  v13[0] = v3;
  v12[1] = @"isCloudKitSyncOptedIn";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isCloudKitSyncOptedIn")}];
  v13[1] = v4;
  v12[2] = @"isICloudDriveSyncOptedIn";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isICloudDriveSyncOptedIn")}];
  v13[2] = v5;
  v12[3] = @"isGlobalICloudDriveSyncOptedIn";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isGlobalICloudDriveSyncOptedIn")}];
  v13[3] = v6;
  v12[4] = @"iCloudIdentityExists";
  v7 = MEMORY[0x1E696AD98];
  iCloudIdentity = [self iCloudIdentity];
  v9 = [v7 numberWithInt:iCloudIdentity != 0];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

@end