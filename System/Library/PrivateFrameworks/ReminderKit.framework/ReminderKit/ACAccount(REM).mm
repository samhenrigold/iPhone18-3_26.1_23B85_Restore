@interface ACAccount(REM)
- (uint64_t)rem_didChooseToMigrate;
- (uint64_t)rem_didFinishMigration;
- (uint64_t)rem_eligibleForAutoCloudKitMigration;
- (uint64_t)rem_isEligibleForCloudKitReminders;
- (uint64_t)rem_isManagedAppleID;
- (uint64_t)rem_isPrimaryAppleAccount;
@end

@implementation ACAccount(REM)

- (uint64_t)rem_didChooseToMigrate
{
  v1 = [self objectForKeyedSubscript:@"remindersIsUsingCloudKit"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)rem_didFinishMigration
{
  v1 = [self objectForKeyedSubscript:@"remindersDidFinishMigrationToCloudKit"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)rem_isManagedAppleID
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (!v4)
  {
    return 0;
  }

  v5 = +[REMUserDefaults daemonUserDefaults];
  simulateMAIDAccount = [v5 simulateMAIDAccount];

  if (simulateMAIDAccount)
  {
    return 1;
  }

  return [self aa_isManagedAppleID];
}

- (uint64_t)rem_isPrimaryAppleAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (!v4)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E698B760];

  return [self aa_isAccountClass:v5];
}

- (uint64_t)rem_eligibleForAutoCloudKitMigration
{
  v21 = *MEMORY[0x1E69E9840];
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (v4)
  {
    v5 = +[REMUserDefaults daemonUserDefaults];
    forceEligibleForAutoCloudKitMigration = [v5 forceEligibleForAutoCloudKitMigration];

    v7 = NSSelectorFromString(&cfstr_AaIsremindersa.isa);
    if (objc_opt_respondsToSelector())
    {
      v8 = ([self methodForSelector:v7])(self, v7);
    }

    else
    {
      v8 = 0;
    }

    v12 = +[REMLog account];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [self identifier];
      v15 = 138543874;
      v16 = identifier2;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = forceEligibleForAutoCloudKitMigration;
      _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_DEFAULT, "rem_eligibleForAutoCloudKitMigration: {identifier: %{public}@, aa_isRemindersAutoMigratableToCK: %d, forceEligibleForAutoCloudKitMigration: %d}", &v15, 0x18u);
    }

    v11 = forceEligibleForAutoCloudKitMigration | v8;
  }

  else
  {
    v9 = +[REMLog account];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [self identifier];
      v15 = 138543362;
      v16 = identifier3;
      _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_DEFAULT, "rem_eligibleForAutoCloudKitMigration: Not an AppleAccount {identifier: %{public}@}", &v15, 0xCu);
    }

    v11 = 0;
  }

  return v11 & 1;
}

- (uint64_t)rem_isEligibleForCloudKitReminders
{
  v13 = *MEMORY[0x1E69E9840];
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (!v4)
  {
    return 0;
  }

  v5 = +[REMUserDefaults daemonUserDefaults];
  forceBasicAAAccountEligibleForCloudKitReminders = [v5 forceBasicAAAccountEligibleForCloudKitReminders];

  if (forceBasicAAAccountEligibleForCloudKitReminders && [self aa_isAccountClass:*MEMORY[0x1E698B750]])
  {
    v7 = +[REMLog account];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [self identifier];
      v11 = 138543362;
      v12 = identifier2;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "rem_isEligibleForCloudKitReminders: AAAccount is .basic but forceBasicAAAccountEligibleForCloudKitReminders is turned on, returning YES {identifier: %{public}@}", &v11, 0xCu);
    }

    return 1;
  }

  result = [self isProvisionedForDataclass:*MEMORY[0x1E6959718]];
  if (!result)
  {
    return result;
  }

  if ([self aa_isAccountClass:*MEMORY[0x1E698B760]])
  {
    return 1;
  }

  v10 = *MEMORY[0x1E698B758];

  return [self aa_isAccountClass:v10];
}

@end