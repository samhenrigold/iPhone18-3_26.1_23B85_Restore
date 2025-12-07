@interface HDProfileManager
- (BOOL)deleteAllProfilesOfType:(int64_t)type error:(id *)error;
- (BOOL)deleteProfile:(id)profile error:(id *)error;
- (BOOL)profileExistsForIdentifier:(id)identifier error:(id *)error;
- (HDProfileManager)initWithDaemon:(id)daemon;
- (id)_createProfileOfType:(void *)type UUID:(void *)d name:(void *)name lastName:(void *)lastName error:;
- (id)allProfileIdentifiers;
- (id)createProfileForIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName error:(id *)error;
- (id)createProfileOfType:(int64_t)type displayName:(id)name error:(id *)error;
- (id)newProfileWithIdentifier:(id)identifier daemon:(id)daemon directoryPath:(id)path;
- (id)profileAssociatedWithNRDeviceUUID:(id)d;
- (id)profileForIdentifier:(id)identifier;
- (id)profileIdentifierForUUID:(id)d;
- (void)_loadSecondaryProfiles;
- (void)_lock_addProfile:(int)profile dispatchChangeNotification:;
- (void)addProfile:(id)profile;
- (void)invalidateAndWaitWithReason:(id)reason;
@end

@implementation HDProfileManager

- (HDProfileManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v15.receiver = self;
  v15.super_class = HDProfileManager;
  v5 = [(HDProfileManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    profiles = v6->_profiles;
    v6->_profiles = v7;

    v9 = objc_alloc(MEMORY[0x277CCD738]);
    v10 = HKLogInfrastructure();
    v11 = [v9 initWithName:@"HDProfileManagerObservers" loggingCategory:v10];
    observers = v6->_observers;
    v6->_observers = v11;

    v6->_profilesLock._os_unfair_lock_opaque = 0;
    v14 = v6;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }

  return v6;
}

- (void)_loadSecondaryProfiles
{
  v67[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 8);
    WeakRetained = objc_loadWeakRetained(&selfCopy[2]);
    healthDirectoryPath = [WeakRetained healthDirectoryPath];
    pathComponents = [healthDirectoryPath pathComponents];
    v5 = [pathComponents mutableCopy];

    [v5 addObject:@"Profiles"];
    v47 = v5;
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v5];
    v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v8 = *MEMORY[0x277CBE868];
    v51 = *MEMORY[0x277CBE8E8];
    v67[0] = *MEMORY[0x277CBE8E8];
    v67[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
    v45 = v7;
    v46 = v6;
    v10 = [v7 enumeratorAtURL:v6 includingPropertiesForKeys:v9 options:7 errorHandler:&__block_literal_global_331_0];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v57;
      v49 = selfCopy;
      v50 = *v57;
      v48 = v8;
      do
      {
        v14 = 0;
        v52 = v12;
        do
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v56 + 1) + 8 * v14);
          v55 = 0;
          [v15 getResourceValue:&v55 forKey:v8 error:0];
          v16 = v55;
          if ([v16 BOOLValue])
          {
            v54 = 0;
            [v15 getResourceValue:&v54 forKey:v51 error:0];
            v17 = v54;
            if (!v17)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:sel__profileIdentifierForDirectoryName_error_ object:selfCopy file:@"HDProfileManager.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"directoryName != nil"}];
            }

            v18 = [v17 componentsSeparatedByString:@"$"];
            if ([v18 count] == 2)
            {
              v19 = [v18 objectAtIndexedSubscript:0];
              integerValue = [v19 integerValue];

              if ([MEMORY[0x277CCD7C8] isValidSecondaryProfileType:integerValue])
              {
                v21 = objc_alloc(MEMORY[0x277CCAD78]);
                v22 = [v18 objectAtIndexedSubscript:1];
                v23 = [v21 initWithUUIDString:v22];

                if (v23)
                {
                  v24 = [MEMORY[0x277CCD7C8] _profileWithUUID:v23 type:integerValue];
                  v25 = 0;
                }

                else
                {
                  v32 = MEMORY[0x277CCA9B8];
                  v33 = objc_opt_class();
                  v34 = [v18 objectAtIndexedSubscript:1];
                  v35 = [v32 hk_errorForInvalidArgument:@"directoryName" class:v33 selector:sel__profileIdentifierForDirectoryName_error_ format:{@"Directory name contains invalid profile identifier: %@", v34}];
                  v25 = v35;
                  if (v35)
                  {
                    v36 = v35;
                  }

                  v23 = 0;
                  v24 = 0;
                }

                selfCopy = v49;
              }

              else
              {
                v28 = MEMORY[0x277CCA9B8];
                v29 = objc_opt_class();
                v23 = [v18 objectAtIndexedSubscript:0];
                v30 = [v28 hk_errorForInvalidArgument:@"directoryName" class:v29 selector:sel__profileIdentifierForDirectoryName_error_ format:{@"Directory name contains invalid profile type (%@)", v23}];
                v25 = v30;
                if (v30)
                {
                  v31 = v30;
                }

                v24 = 0;
              }
            }

            else
            {
              v26 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"directoryName" class:objc_opt_class() selector:sel__profileIdentifierForDirectoryName_error_ format:{@"Directory name separates into too many components (%ld)", objc_msgSend(v18, "count")}];
              v25 = v26;
              if (v26)
              {
                v27 = v26;
              }

              v24 = 0;
              v23 = v25;
            }

            v37 = v25;
            if (v24)
            {
              v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{objc_msgSend(v15, "fileSystemRepresentation")}];
              v39 = selfCopy;
              v40 = objc_loadWeakRetained(&selfCopy[2]);
              v41 = [(os_unfair_lock_s *)v39 newProfileWithIdentifier:v24 daemon:v40 directoryPath:v38];

              [(HDProfileManager *)v39 _lock_addProfile:v41 dispatchChangeNotification:0];
              _HKInitializeLogging();
              v42 = HKLogInfrastructure();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v61 = v41;
                v62 = 2112;
                v63 = v24;
                v64 = 2112;
                v65 = v15;
                _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "Loaded profile from disk: %@ for identifier: %@ in directory: %@", buf, 0x20u);
              }

              v43 = v41;
              HKDispatchAsyncOnGlobalConcurrentQueue();

              selfCopy = v49;
              v8 = v48;
            }

            else
            {
              _HKInitializeLogging();
              v38 = HKLogInfrastructure();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v61 = v17;
                v62 = 2114;
                v63 = v37;
                _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Non UUID directory found in profiles directory: %@ error: %{public}@", buf, 0x16u);
              }
            }

            v12 = v52;
            v13 = v50;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(selfCopy + 8);
    [(os_unfair_lock_s *)selfCopy dispatchProfileListDidChange];
  }
}

- (BOOL)profileExistsForIdentifier:(id)identifier error:(id *)error
{
  error = [(HDProfileManager *)self profileForIdentifier:identifier, error];
  v5 = error != 0;

  return v5;
}

- (id)profileForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    os_unfair_lock_lock(&self->_profilesLock);
    v5 = [(NSMutableDictionary *)self->_profiles objectForKey:identifierCopy];

    os_unfair_lock_unlock(&self->_profilesLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock(&self->_profilesLock);
  [(HDProfileManager *)self _lock_addProfile:profileCopy dispatchChangeNotification:1];

  os_unfair_lock_unlock(&self->_profilesLock);
}

- (void)_lock_addProfile:(int)profile dispatchChangeNotification:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 32));
    v6 = *(self + 16);
    profileIdentifier = [v5 profileIdentifier];
    v8 = [v6 objectForKey:profileIdentifier];

    if (v8 != v5)
    {
      if (v8)
      {
        _HKInitializeLogging();
        v9 = HKLogInfrastructure();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v12 = NSStringFromSelector(sel__lock_addProfile_dispatchChangeNotification_);
          profileIdentifier2 = [v5 profileIdentifier];
          v14 = 138413314;
          selfCopy = self;
          v16 = 2112;
          v17 = v12;
          v18 = 2112;
          v19 = v8;
          v20 = 2112;
          v21 = profileIdentifier2;
          v22 = 2112;
          v23 = v5;
          _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "%@: %@ Overriding existing profile %@ for identifier %@ with new profile %@", &v14, 0x34u);
        }

        [v8 invalidateAndWaitWithReason:@"Replacing profile."];
      }

      v10 = *(self + 16);
      profileIdentifier3 = [v5 profileIdentifier];
      [v10 setObject:v5 forKey:profileIdentifier3];

      [v5 notifyProfileInitializedObservers];
      if (profile)
      {
        [self dispatchProfileListDidChange];
      }
    }
  }
}

- (id)createProfileOfType:(int64_t)type displayName:(id)name error:(id *)error
{
  nameCopy = name;
  if (nameCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [(HDProfileManager *)self _createProfileOfType:type UUID:uUID name:nameCopy lastName:0 error:error];
  }

  else
  {
    uUID = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"displayName" class:objc_opt_class() selector:a2];
    if (uUID)
    {
      if (error)
      {
        v12 = uUID;
        *error = uUID;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = 0;
  }

  return v11;
}

- (id)_createProfileOfType:(void *)type UUID:(void *)d name:(void *)name lastName:(void *)lastName error:
{
  v56 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  nameCopy = name;
  if (!self)
  {
    goto LABEL_6;
  }

  os_unfair_lock_lock((self + 32));
  if (!*(self + 16))
  {
    [MEMORY[0x277CCA9B8] hk_assignError:lastName code:119 format:@"Unable to create profiles after invalidation."];
LABEL_6:
    profileIdentifier = 0;
    goto LABEL_27;
  }

  v44 = dCopy;
  os_unfair_lock_unlock((self + 32));
  v43 = nameCopy;
  if (a2 == 1)
  {
    [MEMORY[0x277CCD7C8] primaryProfile];
  }

  else
  {
    [MEMORY[0x277CCD7C8] _profileWithUUID:typeCopy type:a2];
  }
  v15 = ;
  if (!v15)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__createProfileOfType_UUID_name_lastName_error_ object:self file:@"HDProfileManager.m" lineNumber:319 description:@"Profile identifier is nil."];
  }

  v42 = typeCopy;
  v16 = v15;
  WeakRetained = objc_loadWeakRetained((self + 8));
  healthDirectoryURL = [WeakRetained healthDirectoryURL];
  v19 = [healthDirectoryURL URLByAppendingPathComponent:@"Profiles" isDirectory:1];

  v20 = v16;
  if (!v15)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__directoryNameForProfileIdentifier_ object:self file:@"HDProfileManager.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];
  }

  v21 = MEMORY[0x277CCACA8];
  type = [v20 type];
  identifier = [v20 identifier];
  uUIDString = [identifier UUIDString];
  v25 = [v21 stringWithFormat:@"%ld$%@", type, uUIDString];

  v26 = [v19 URLByAppendingPathComponent:v25 isDirectory:1];

  v27 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v49 = 0;
  v28 = [v27 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v49];
  v29 = v49;
  if (v28)
  {
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{objc_msgSend(v26, "fileSystemRepresentation")}];
    v31 = objc_loadWeakRetained((self + 8));
    v32 = [self newProfileWithIdentifier:v20 daemon:v31 directoryPath:v30];

    if (v32)
    {
      os_unfair_lock_lock((self + 32));
      [(HDProfileManager *)self _lock_addProfile:v32 dispatchChangeNotification:0];
      os_unfair_lock_unlock((self + 32));
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HDProfileManager__createProfileOfType_UUID_name_lastName_error___block_invoke;
      aBlock[3] = &unk_278613830;
      v33 = v32;
      v46 = v33;
      v47 = v44;
      v48 = v43;
      v34 = _Block_copy(aBlock);
      [v33 executeBlockAfterProfileReady:v34];
      _HKInitializeLogging();
      v35 = HKLogInfrastructure();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v51 = v33;
        v52 = 2112;
        v53 = v20;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "Created new profile: %@ for identifier: %@ in directory: %@", buf, 0x20u);
      }

      profileIdentifier = [v33 profileIdentifier];

      v36 = v46;
      typeCopy = v42;
    }

    else
    {
      v36 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"profileType" class:objc_opt_class() selector:sel__createProfileOfType_UUID_name_lastName_error_ format:{@"Invalid profile type %ld", a2}];
      typeCopy = v42;
      if (v36)
      {
        if (lastName)
        {
          v38 = v36;
          *lastName = v36;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      profileIdentifier = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v37 = HKLogInfrastructure();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v51 = v26;
      v52 = 2114;
      v53 = v29;
      _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Unable to create directory (%@) for profile. Error: %{public}@", buf, 0x16u);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:lastName code:102 description:@"Unable to create profile database directory" underlyingError:v29];
    profileIdentifier = 0;
  }

  dCopy = v44;

  nameCopy = v43;
LABEL_27:

  return profileIdentifier;
}

- (id)createProfileForIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  lastNameCopy = lastName;
  if (nameCopy)
  {
    type = [identifierCopy type];
    identifier = [identifierCopy identifier];
    v16 = [(HDProfileManager *)self _createProfileOfType:type UUID:identifier name:nameCopy lastName:lastNameCopy error:error];

    v17 = [(HDProfileManager *)self profileForIdentifier:v16];
    if (v17)
    {
      v18 = v17;
      v19 = v18;
      goto LABEL_12;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Unable to fetch profile %@ after creation.", identifierCopy}];
    v18 = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"firstName" class:objc_opt_class() selector:a2];
    if (v18)
    {
      if (error)
      {
        v20 = v18;
        v19 = 0;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }

      v16 = v18;
      goto LABEL_12;
    }

    v16 = 0;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (BOOL)deleteProfile:(id)profile error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v7 = profileCopy;
  if (!self)
  {
LABEL_28:

    return 0;
  }

  if (!profileCopy)
  {
    v19 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"profileIdentifier" class:objc_opt_class() selector:sel__deleteProfile_error_];
LABEL_15:
    v20 = v19;
    if (v20)
    {
      if (error)
      {
        v21 = v20;
        *error = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_28;
  }

  v8 = [(HDProfileManager *)self profileForIdentifier:profileCopy];
  if (!v8)
  {
    v19 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"profileType" class:objc_opt_class() selector:sel__deleteProfile_error_ format:{@"No profile for identifier %@.", v7}];
    goto LABEL_15;
  }

  v9 = v8;
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Deleting profile '%@'", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_profilesLock);
  [(NSMutableDictionary *)self->_profiles removeObjectForKey:v7];
  os_unfair_lock_unlock(&self->_profilesLock);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  [WeakRetained invalidateAllServersForProfile:v9];

  _HKInitializeLogging();
  v12 = HKLogInfrastructure();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Invalidated existing servers for deleted profile '%@'", buf, 0xCu);
  }

  [v9 invalidateAndWaitWithReason:@"Profile deletion"];
  _HKInitializeLogging();
  v13 = HKLogInfrastructure();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Invalidated deleted profile '%@'", buf, 0xCu);
  }

  directoryURL = [v9 directoryURL];
  v15 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v26 = 0;
  v16 = [v15 removeItemAtURL:directoryURL error:&v26];
  v17 = v26;
  if (v16)
  {
    _HKInitializeLogging();
    v18 = HKLogInfrastructure();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "Finished deleting profile '%@'", buf, 0xCu);
    }
  }

  else
  {
    v22 = [v15 contentsOfDirectoryAtURL:directoryURL includingPropertiesForKeys:0 options:0 error:0];
    _HKInitializeLogging();
    v23 = HKLogInfrastructure();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = directoryURL;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Files remaining in %{public}@: %{public}@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v24 = HKLogInfrastructure();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v28 = directoryURL;
      v29 = 2114;
      v30 = v17;
      _os_log_fault_impl(&dword_228986000, v24, OS_LOG_TYPE_FAULT, "Failed to delete profile %{public}@: %{public}@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v18 = HKLogInfrastructure();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to delete profile %@'", buf, 0xCu);
    }
  }

  if (v16)
  {
    [(HDProfileManager *)self dispatchProfileListDidChange];
    return 1;
  }

  return 0;
}

- (BOOL)deleteAllProfilesOfType:(int64_t)type error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allProfileIdentifiers = [(HDProfileManager *)self allProfileIdentifiers];
  v8 = [allProfileIdentifiers countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allProfileIdentifiers);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 type] == type && !-[HDProfileManager deleteProfile:error:](self, "deleteProfile:error:", v12, error))
        {
          _HKInitializeLogging();
          v14 = HKLogInfrastructure();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            identifier = [v12 identifier];
            uUIDString = [identifier UUIDString];
            type = [v12 type];
            *buf = 138543874;
            selfCopy = self;
            v25 = 2114;
            v26 = uUIDString;
            v27 = 2048;
            v28 = type;
            _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, " %{public}@: Failed to delete profile with identifier %{public}@ of type %ld", buf, 0x20u);
          }

          v13 = 0;
          goto LABEL_14;
        }
      }

      v9 = [allProfileIdentifiers countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_14:

  return v13;
}

- (id)allProfileIdentifiers
{
  os_unfair_lock_lock(&self->_profilesLock);
  allKeys = [(NSMutableDictionary *)self->_profiles allKeys];
  v4 = objc_msgSend_copy(allKeys);

  os_unfair_lock_unlock(&self->_profilesLock);

  return v4;
}

- (id)profileAssociatedWithNRDeviceUUID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(HDProfileManager *)self allProfileIdentifiers];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = a2;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(HDProfileManager *)self profileForIdentifier:v10];
        v12 = v11;
        if (v11)
        {
          if ([v11 profileType] == 3)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v20 object:self file:@"HDProfileManager.m" lineNumber:164 description:{@"Profile %@ is of type Tinker but is not an instance of type HDTinkerProfile (#t0)", v12}];
            }

            v12 = v12;
            v22 = 0;
            v13 = [v12 pairedNRDeviceUUIDWithError:&v22];
            v14 = v22;
            if (v13)
            {
              if ([v13 isEqual:dCopy])
              {
                v18 = v10;

                goto LABEL_21;
              }
            }

            else
            {
              _HKInitializeLogging();
              v16 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                selfCopy2 = self;
                v29 = 2114;
                v30 = v10;
                v31 = 2114;
                v32 = v14;
                _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error fetching deviceUUID for profile: %{public}@ error: %{public}@", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy2 = self;
            v29 = 2114;
            v30 = v10;
            _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Profile is nil for profileIdentifier: %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (id)profileIdentifierForUUID:(id)d
{
  dCopy = d;
  allProfileIdentifiers = [(HDProfileManager *)self allProfileIdentifiers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HDProfileManager_profileIdentifierForUUID___block_invoke;
  v9[3] = &unk_278615BC8;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [allProfileIdentifiers hk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__HDProfileManager_profileIdentifierForUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)invalidateAndWaitWithReason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating (%{public}@)", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_profilesLock);
  allValues = [(NSMutableDictionary *)self->_profiles allValues];
  profiles = self->_profiles;
  self->_profiles = 0;

  os_unfair_lock_unlock(&self->_profilesLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = allValues;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) invalidateAndWaitWithReason:{reasonCopy, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

uint64_t __42__HDProfileManager__loadSecondaryProfiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if ([v5 code] != 260)
  {
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Error while enumerating profiles directory. URL: %@ Error: %{public}@", &v8, 0x16u);
    }
  }

  return 1;
}

void __66__HDProfileManager__createProfileOfType_UUID_name_lastName_error___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v9 = 0;
  v5 = [v2 setDisplayFirstName:v3 lastName:v4 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0 && (HKIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      *buf = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Error setting display name %{public}@, error: %{public}@", buf, 0x16u);
    }
  }
}

- (id)newProfileWithIdentifier:(id)identifier daemon:(id)daemon directoryPath:(id)path
{
  identifierCopy = identifier;
  daemonCopy = daemon;
  pathCopy = path;
  type = [identifierCopy type];
  v11 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      v12 = [[HDPrimaryProfile alloc] initWithDirectoryPath:pathCopy medicalIDDirectoryPath:pathCopy daemon:daemonCopy];
      goto LABEL_14;
    }

    if (type != 2)
    {
      goto LABEL_15;
    }

    v13 = [HDProfile alloc];
    v14 = pathCopy;
    v15 = 0;
LABEL_12:
    v12 = [(HDProfile *)v13 initWithDirectoryPath:v14 medicalIDDirectoryPath:v15 daemon:daemonCopy profileIdentifier:identifierCopy];
    goto LABEL_14;
  }

  switch(type)
  {
    case 3:
      v16 = HDTinkerProfile;
LABEL_11:
      v13 = [v16 alloc];
      v14 = pathCopy;
      v15 = pathCopy;
      goto LABEL_12;
    case 4:
      v16 = HDDevicelessProfile;
      goto LABEL_11;
    case 100:
      v12 = [[HDPrimaryProfile alloc] _initWithDirectoryPath:pathCopy medicalIDDirectoryPath:pathCopy daemon:daemonCopy profileIdentifier:identifierCopy];
LABEL_14:
      v11 = v12;
      break;
  }

LABEL_15:

  return v11;
}

void __52__HDProfileManager_unitTest_reloadSecondaryProfiles__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = [*(*(a1 + 32) + 16) allKeys];
  v3 = objc_msgSend_copy(v2);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 type] != 1)
        {
          v10 = [*(*(a1 + 32) + 16) objectForKey:v9];
          [v10 invalidateAndWaitWithReason:@"Reloading"];
          [*(*(a1 + 32) + 16) removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  [(HDProfileManager *)*(a1 + 32) _loadSecondaryProfiles];
}

@end