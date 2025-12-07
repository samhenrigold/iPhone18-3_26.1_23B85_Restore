@interface HDAppSubscriptionAppLaunchEntity
+ (BOOL)insertOrUpdateAppSDKVersionToken:(unint64_t)token forBundleID:(id)d profile:(id)profile error:(id *)error;
+ (BOOL)removeBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)setLaunchTime:(id)time forBundleID:(id)d profile:(id)profile error:(id *)error;
+ (id)launchTimeForBundleID:(id)d profile:(id)profile error:(id *)error;
+ (unint64_t)appSDKVersionTokenForBundleID:(id)d profile:(id)profile error:(id *)error;
@end

@implementation HDAppSubscriptionAppLaunchEntity

+ (BOOL)setLaunchTime:(id)time forBundleID:(id)d profile:(id)profile error:(id *)error
{
  timeCopy = time;
  dCopy = d;
  profileCopy = profile;
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HDAppSubscriptionAppLaunchEntity_setLaunchTime_forBundleID_profile_error___block_invoke;
  v18[3] = &unk_278613550;
  v19 = dCopy;
  v20 = profileCopy;
  v21 = timeCopy;
  selfCopy = self;
  v14 = timeCopy;
  v15 = profileCopy;
  v16 = dCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAppSubscriptionAppLaunchEntity performWriteTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

uint64_t __76__HDAppSubscriptionAppLaunchEntity_setLaunchTime_forBundleID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [(HDAppSubscriptionEntity *)*(a1 + 56) _predicateForBundleIdentifier:?];
  v30 = 0;
  v8 = [v5 anyInDatabase:v6 predicate:v7 error:&v30];
  v9 = v30;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    if (v8)
    {
      v31 = @"last_launch_time";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      v12 = [*(a1 + 40) database];
      v25 = v9;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76__HDAppSubscriptionAppLaunchEntity_setLaunchTime_forBundleID_profile_error___block_invoke_3;
      v23[3] = &unk_278614508;
      v24 = *(a1 + 48);
      v13 = [v8 updateProperties:v11 healthDatabase:v12 error:&v25 bindingHandler:v23];
      v14 = v25;
    }

    else
    {
      v16 = *(a1 + 56);
      v17 = [*(a1 + 40) database];
      v32[0] = @"bundle_id";
      v32[1] = @"last_launch_time";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v29 = v9;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __76__HDAppSubscriptionAppLaunchEntity_setLaunchTime_forBundleID_profile_error___block_invoke_2;
      v26[3] = &unk_278613DE8;
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v19 = [v16 insertOrReplaceEntity:0 healthDatabase:v17 properties:v18 error:&v29 bindingHandler:v26];
      v14 = v29;

      if (v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = v14 == 0;
      }

      v13 = v20;
      if (!v20)
      {
        if (a3)
        {
          v21 = v14;
          *a3 = v14;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      v15 = v9;
      v13 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v14 = v9;
  }

  return v13;
}

void __76__HDAppSubscriptionAppLaunchEntity_setLaunchTime_forBundleID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6BD0](a2, @"bundle_id", *(a1 + 32));

  JUMPOUT(0x22AAC6BB0);
}

+ (id)launchTimeForBundleID:(id)d profile:(id)profile error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  profileCopy = profile;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAppSubscriptionEntity.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];
  }

  v11 = [(HDAppSubscriptionEntity *)self _predicateForBundleIdentifier:dCopy];
  v12 = profileCopy;
  v13 = v11;
  v14 = objc_opt_self();
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = @"last_launch_time";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  database = [v12 database];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__HDAppSubscriptionAppLaunchEntity__launchTimesWithPredicate_profile_error___block_invoke;
  v24[3] = &unk_278615128;
  v18 = v15;
  v25 = v18;
  v19 = [v14 enumerateProperties:v16 withPredicate:v13 healthDatabase:database error:error enumerationHandler:v24];

  if (v19)
  {
    v20 = objc_msgSend_copy(v18);
  }

  else
  {
    v20 = 0;
  }

  firstObject = [v20 firstObject];

  return firstObject;
}

+ (BOOL)removeBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = [(HDAppSubscriptionEntity *)self _predicateForBundleIdentifier:identifier];
  database = [profileCopy database];

  LOBYTE(error) = [self deleteEntitiesWithPredicate:v9 healthDatabase:database error:error];
  return error;
}

uint64_t __76__HDAppSubscriptionAppLaunchEntity__launchTimesWithPredicate_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AAC6C70](a4, 0, a3);
  [v4 addObject:v5];

  return 1;
}

+ (BOOL)insertOrUpdateAppSDKVersionToken:(unint64_t)token forBundleID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__HDAppSubscriptionAppLaunchEntity_insertOrUpdateAppSDKVersionToken_forBundleID_profile_error___block_invoke;
  v16[3] = &unk_2786154B8;
  v17 = dCopy;
  v18 = profileCopy;
  selfCopy = self;
  tokenCopy = token;
  v13 = profileCopy;
  v14 = dCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAppSubscriptionAppLaunchEntity performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __95__HDAppSubscriptionAppLaunchEntity_insertOrUpdateAppSDKVersionToken_forBundleID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [(HDAppSubscriptionEntity *)*(a1 + 48) _predicateForBundleIdentifier:?];
  v32 = 0;
  v8 = [v5 anyInDatabase:v6 predicate:v7 error:&v32];
  v9 = v32;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    if (v8)
    {
      v33 = @"sdk_version";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      v12 = [*(a1 + 40) database];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __95__HDAppSubscriptionAppLaunchEntity_insertOrUpdateAppSDKVersionToken_forBundleID_profile_error___block_invoke_2;
      v25[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
      v25[4] = *(a1 + 56);
      v26 = v9;
      v13 = [v8 updateProperties:v11 healthDatabase:v12 error:&v26 bindingHandler:v25];
      v14 = v26;
    }

    else
    {
      v16 = *(a1 + 48);
      v17 = [*(a1 + 40) database];
      v34[0] = @"bundle_id";
      v34[1] = @"sdk_version";
      v34[2] = @"last_launch_time";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
      v31 = v9;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __95__HDAppSubscriptionAppLaunchEntity_insertOrUpdateAppSDKVersionToken_forBundleID_profile_error___block_invoke_385;
      v27[3] = &unk_278613AE8;
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v28 = v19;
      v29 = &unk_283CB40C8;
      v30 = v20;
      v21 = [v16 insertOrReplaceEntity:0 healthDatabase:v17 properties:v18 error:&v31 bindingHandler:v27];
      v14 = v31;

      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = v14 == 0;
      }

      v13 = v22;
      if (!v22)
      {
        if (a3)
        {
          v23 = v14;
          *a3 = v14;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      v15 = v9;
      v13 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v14 = v9;
  }

  return v13;
}

void __95__HDAppSubscriptionAppLaunchEntity_insertOrUpdateAppSDKVersionToken_forBundleID_profile_error___block_invoke_385(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6BD0](a2, @"bundle_id", *(a1 + 32));
  v3 = HKBitPatternCastUnsignedToSignedInt64();
  MEMORY[0x22AAC6B90](a2, @"sdk_version", v3);

  JUMPOUT(0x22AAC6BB0);
}

void __95__HDAppSubscriptionAppLaunchEntity_insertOrUpdateAppSDKVersionToken_forBundleID_profile_error___block_invoke_2(uint64_t a1)
{
  HKBitPatternCastUnsignedToSignedInt64();

  JUMPOUT(0x22AAC6B90);
}

+ (unint64_t)appSDKVersionTokenForBundleID:(id)d profile:(id)profile error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  profileCopy = profile;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAppSubscriptionEntity.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];
  }

  v11 = [(HDAppSubscriptionEntity *)self _predicateForBundleIdentifier:dCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v23[0] = @"sdk_version";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HDAppSubscriptionAppLaunchEntity_appSDKVersionTokenForBundleID_profile_error___block_invoke;
  v18[3] = &unk_27862C558;
  v18[4] = &v19;
  v14 = [self enumerateProperties:v12 withPredicate:v11 healthDatabase:database error:error enumerationHandler:v18];

  if (v14)
  {
    v15 = v20[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v15;
}

uint64_t __80__HDAppSubscriptionAppLaunchEntity_appSDKVersionTokenForBundleID_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HDSQLiteColumnWithNameAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = HKBitPatternCastSignedToUnsignedInt64();
  return 1;
}

@end