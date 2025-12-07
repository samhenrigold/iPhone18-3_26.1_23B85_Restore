@interface _HKObjectComparisonFilter
- (id)_OSBuildPredicate;
- (id)_appleWatchSourcePredicate;
- (id)_associationPredicateWithProfile:(uint64_t)profile type:;
- (id)_contributorPredicateWithProfile:(id)profile;
- (id)_creationDatePredicate;
- (id)_devicePropertyPredicateWithProfile:(void *)profile;
- (id)_metadataKeyFromMetadataKeyPath;
- (id)_metadataPredicateWithProfile:(void *)profile;
- (id)_productTypePredicate;
- (id)_syncIdentityPredicateWithProfile:(void *)profile;
@end

@implementation _HKObjectComparisonFilter

- (id)_associationPredicateWithProfile:(uint64_t)profile type:
{
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = a2;
    keyPath = [self keyPath];
    [keyPath isEqualToString:*MEMORY[0x277CCC7D0]];
    v7 = objc_opt_class();

    value = [self value];
    uUID = [value UUID];

    v10 = HDDataEntityPredicateForDataUUID();
    database = [v5 database];

    v18 = 0;
    v12 = [v7 anyWithPredicate:v10 healthDatabase:database error:&v18];
    v13 = v18;

    if (v12)
    {
      falsePredicate = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObjectForType([v12 persistentID], profile);
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = uUID;
        v21 = 2114;
        v22 = v13;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to find sample with UUID %{public}@, error: %{public}@", buf, 0x16u);
      }

      falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
    }

    v16 = falsePredicate;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_appleWatchSourcePredicate
{
  if (self)
  {
    value = [self value];
    v2 = HDDataEntityPredicateForObjectsFromAppleWatchSources([value BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_OSBuildPredicate
{
  selfCopy = self;
  if (self)
  {
    [self operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    selfCopy = HDDataEntityPredicateForOriginBuild(v2, value);
  }

  return selfCopy;
}

- (id)_contributorPredicateWithProfile:(id)profile
{
  profileCopy = profile;
  v17 = *MEMORY[0x277D85DE8];
  if (profile)
  {
    v3 = a2;
    value = [profileCopy value];
    v10 = 0;
    v5 = [HDContributorEntity contributorEntityWithUUID:value profile:v3 includeDeleted:0 error:&v10];

    v6 = v10;
    if (v5)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "persistentID")}];
      profileCopy = HDDataEntityPredicateForContributorIdentifier(v7);
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v12 = profileCopy;
        v13 = 2114;
        v14 = value;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find contributor with UUID %{public}@, error %{public}@", buf, 0x20u);
      }

      profileCopy = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

  return profileCopy;
}

- (id)_creationDatePredicate
{
  selfCopy = self;
  if (self)
  {
    [self operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    selfCopy = HDDataEntityPredicateForCreationDate(v2, value);
  }

  return selfCopy;
}

- (id)_productTypePredicate
{
  selfCopy = self;
  if (self)
  {
    [self operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    selfCopy = HDDataEntityPredicateForOriginProductType(v2, value);
  }

  return selfCopy;
}

- (id)_syncIdentityPredicateWithProfile:(void *)profile
{
  if (profile)
  {
    profileCopy = profile;
    v4 = a2;
    [profileCopy operatorType];
    v5 = HDSQLiteComparisonTypeForPredicateOperator();
    currentSyncIdentityPersistentID = [v4 currentSyncIdentityPersistentID];

    profile = HDDataEntityPredicateForSyncIdentity(v5, currentSyncIdentityPersistentID);
    v2 = vars8;
  }

  return profile;
}

- (id)_devicePropertyPredicateWithProfile:(void *)profile
{
  v20 = *MEMORY[0x277D85DE8];
  if (profile)
  {
    v3 = a2;
    keyPath = [profile keyPath];
    v5 = [keyPath substringFromIndex:{objc_msgSend(*MEMORY[0x277CCC6B0], "length") + 1}];

    [profile value];
    v6 = v17 = 0;
    v7 = v5;
    v8 = v3;
    objc_opt_self();
    deviceManager = [v8 deviceManager];

    v10 = [deviceManager deviceEntitiesWithProperty:v7 matchingValues:v6 error:&v17];

    if (v10)
    {
      v11 = [v10 hk_map:&__block_literal_global_216];
    }

    else
    {
      v11 = 0;
    }

    v12 = v17;
    if (v11)
    {
      falsePredicate = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_provenances.device_id" values:v11];
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v12;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to find devices: %{public}@", buf, 0xCu);
      }

      falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
    }

    v15 = falsePredicate;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_metadataPredicateWithProfile:(void *)profile
{
  v3 = a2;
  if (profile)
  {
    _metadataKeyFromMetadataKeyPath = [(_HKObjectComparisonFilter *)profile _metadataKeyFromMetadataKeyPath];
    operatorType = [profile operatorType];
    metadataManager = [v3 metadataManager];
    value = [profile value];
    if (operatorType == 10)
    {
      [metadataManager predicateWithMetadataKey:_metadataKeyFromMetadataKeyPath allowedValues:value];
    }

    else
    {
      [metadataManager predicateWithMetadataKey:_metadataKeyFromMetadataKeyPath value:value operatorType:{objc_msgSend(profile, "operatorType")}];
    }
    profile = ;
  }

  return profile;
}

- (id)_metadataKeyFromMetadataKeyPath
{
  if (self)
  {
    keyPath = [self keyPath];
    v2 = [keyPath substringFromIndex:{objc_msgSend(*MEMORY[0x277CCC718], "length") + 1}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end