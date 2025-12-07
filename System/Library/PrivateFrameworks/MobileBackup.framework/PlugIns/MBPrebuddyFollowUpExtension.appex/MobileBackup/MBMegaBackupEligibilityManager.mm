@interface MBMegaBackupEligibilityManager
- (BOOL)_isHSA2AvailableForAuthenticationContext:(id)context;
- (BOOL)needsAccountSignIn;
- (id)_account;
- (id)_queue;
- (id)_usedCapacityForVolume:(id)volume;
- (int64_t)_entryMethodForEntryPoint:(int64_t)point;
- (void)checkMegaBackupEligibility:(int64_t)eligibility deepLinkURL:(id)l backupDeviceUUID:(id)d queue:(id)queue completion:(id)completion;
@end

@implementation MBMegaBackupEligibilityManager

- (id)_queue
{
  if (qword_100022CF8 != -1)
  {
    sub_10000EC08();
  }

  v3 = qword_100022CF0;

  return v3;
}

- (int64_t)_entryMethodForEntryPoint:(int64_t)point
{
  if ((point - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return 4 - point;
  }
}

- (id)_account
{
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (BOOL)needsAccountSignIn
{
  _account = [(MBMegaBackupEligibilityManager *)self _account];
  v3 = _account == 0;

  return v3;
}

- (void)checkMegaBackupEligibility:(int64_t)eligibility deepLinkURL:(id)l backupDeviceUUID:(id)d queue:(id)queue completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  _queue = [(MBMegaBackupEligibilityManager *)self _queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000482C;
  v21[3] = &unk_10001C850;
  v21[4] = self;
  v22 = queueCopy;
  v25 = completionCopy;
  eligibilityCopy = eligibility;
  v23 = dCopy;
  v24 = lCopy;
  v17 = lCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v20 = queueCopy;
  dispatch_async(_queue, v21);
}

- (id)_usedCapacityForVolume:(id)volume
{
  volumeCopy = volume;
  v4 = MBUsedDiskSpaceForVolume();
  v5 = [NSURL fileURLWithPath:volumeCopy];
  v32[0] = NSURLVolumeAvailableCapacityKey;
  v32[1] = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v6 = [NSArray arrayWithObjects:v32 count:2];
  v25 = 0;
  v7 = [v5 resourceValuesForKeys:v6 error:&v25];
  v8 = v25;

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:NSURLVolumeAvailableCapacityKey];
    v10 = [v7 objectForKeyedSubscript:NSURLVolumeAvailableCapacityForImportantUsageKey];
    unsignedLongLongValue = [v9 unsignedLongLongValue];
    if (unsignedLongLongValue <= [v10 unsignedLongLongValue])
    {
      unsignedLongLongValue2 = [v10 unsignedLongLongValue];
      v12 = unsignedLongLongValue2 - [v9 unsignedLongLongValue];
      if (v12 > v4)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [NSNumber numberWithUnsignedLongLong:v4];
          v17 = log = v16;
          v18 = [NSNumber numberWithUnsignedLongLong:v12];
          *buf = 138543874;
          v27 = volumeCopy;
          v28 = 2114;
          v29 = v17;
          v30 = 2114;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Somehow reclaimable space is bigger than used space for %{public}@: %{public}@, %{public}@", buf, 0x20u);

          v16 = log;
          v19 = [NSNumber numberWithUnsignedLongLong:v4];
          v20 = [NSNumber numberWithUnsignedLongLong:v12];
          _MBLog(@"E ", "Somehow reclaimable space is bigger than used space for %{public}@: %{public}@, %{public}@", volumeCopy, v19, v20);
        }

        v21 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    v21 = v4 - v12;
LABEL_12:
    v14 = [NSNumber numberWithUnsignedLongLong:v21];
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = volumeCopy;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Used Capacity on %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"Df", "Used Capacity on %{public}@: %{public}@", volumeCopy, v14);
    }

    goto LABEL_15;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get resource values for %@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to get resource values for %@: %@", v5, v8);
  }

  v14 = [NSNumber numberWithUnsignedLongLong:v4];
LABEL_15:

  return v14;
}

- (BOOL)_isHSA2AvailableForAuthenticationContext:(id)context
{
  contextCopy = context;
  v4 = +[AKAccountManager sharedInstance];
  aa_altDSID = [contextCopy aa_altDSID];
  v6 = [v4 authKitAccountWithAltDSID:aa_altDSID];

  if (contextCopy)
  {
    v7 = [v4 securityLevelForAccount:v6] == 4;
    aa_personID = [contextCopy aa_personID];
    v9 = [CDPAccount isICDPEnabledForDSID:aa_personID];

    v10 = v7 & v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end