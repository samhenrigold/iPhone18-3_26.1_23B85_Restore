@interface CRKASMIdentityPicker
- (BOOL)isManifestEntryValid:(id)valid manifest:(id)manifest;
- (CRKASMIdentityPicker)initWithCredentialStore:(id)store userIdentifier:(id)identifier;
- (CRKIdentity)identity;
- (id)arrayBySortingPersistentIDs:(id)ds;
- (id)candidatePersistentIDsInManifest:(id)manifest;
- (id)manifest;
- (id)pickIdentityFromCandidates:(id)candidates manifest:(id)manifest;
- (id)pickIdentityFromOrderedCandidates:(id)candidates manifest:(id)manifest;
@end

@implementation CRKASMIdentityPicker

- (CRKASMIdentityPicker)initWithCredentialStore:(id)store userIdentifier:(id)identifier
{
  storeCopy = store;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CRKASMIdentityPicker;
  v9 = [(CRKASMIdentityPicker *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialStore, store);
    v11 = [identifierCopy copy];
    userIdentifier = v10->_userIdentifier;
    v10->_userIdentifier = v11;
  }

  return v10;
}

- (CRKIdentity)identity
{
  v12 = *MEMORY[0x277D85DE8];
  manifest = [(CRKASMIdentityPicker *)self manifest];
  v4 = [CRKExecutionTimer startedTimerWithDescription:@"Process identity manifest contents"];
  v5 = [(CRKASMIdentityPicker *)self candidatePersistentIDsInManifest:manifest];
  v6 = [(CRKASMIdentityPicker *)self pickIdentityFromCandidates:v5 manifest:manifest];
  v7 = _CRKLogASM_9(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    stop = [v4 stop];
    v10 = 138412290;
    v11 = stop;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  return v6;
}

- (id)manifest
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [CRKExecutionTimer startedTimerWithDescription:@"Read identity manifest"];
  credentialStore = [(CRKASMIdentityPicker *)self credentialStore];
  identityManifest = [credentialStore identityManifest];

  v7 = _CRKLogASM_9(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    stop = [v3 stop];
    v10 = 138412290;
    v11 = stop;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  return identityManifest;
}

- (id)candidatePersistentIDsInManifest:(id)manifest
{
  v20 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  persistentIDs = [manifestCopy persistentIDs];
  v7 = [persistentIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(persistentIDs);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [manifestCopy entryForPersistentID:v11];
        if ([(CRKASMIdentityPicker *)self isManifestEntryValid:v12 manifest:manifestCopy])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [persistentIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)isManifestEntryValid:(id)valid manifest:(id)manifest
{
  validCopy = valid;
  isFullyPopulated = [validCopy isFullyPopulated];
  if (isFullyPopulated)
  {
    userIdentifier = [validCopy userIdentifier];
    if (userIdentifier || ([(CRKASMIdentityPicker *)self userIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      userIdentifier2 = [validCopy userIdentifier];
      userIdentifier3 = [(CRKASMIdentityPicker *)self userIdentifier];
      v11 = [userIdentifier2 isEqual:userIdentifier3];

      if (userIdentifier)
      {
LABEL_11:

        validityInterval = [validCopy validityInterval];
        crk_containsCurrentDate = [validityInterval crk_containsCurrentDate];

        v13 = v11 & crk_containsCurrentDate;
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_11;
  }

  v12 = _CRKLogASM_9(isFullyPopulated);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CRKASMIdentityPicker isManifestEntryValid:v12 manifest:?];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)pickIdentityFromCandidates:(id)candidates manifest:(id)manifest
{
  manifestCopy = manifest;
  v7 = [(CRKASMIdentityPicker *)self arrayBySortingPersistentIDs:candidates];
  v8 = [(CRKASMIdentityPicker *)self pickIdentityFromOrderedCandidates:v7 manifest:manifestCopy];

  return v8;
}

- (id)pickIdentityFromOrderedCandidates:(id)candidates manifest:(id)manifest
{
  v36 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  manifestCopy = manifest;
  v26 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = candidatesCopy;
  v25 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v25)
  {
    v24 = *v30;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [manifestCopy entryForPersistentID:v7];
        credentialStore = [(CRKASMIdentityPicker *)self credentialStore];
        v11 = [credentialStore identityWithPersistentID:v7];

        if (v11)
        {
          fingerprint = [v9 fingerprint];
          if (!fingerprint)
          {
            certificate = [v11 certificate];
            fingerprint2 = [certificate fingerprint];
            if (!fingerprint2)
            {

LABEL_19:
              objc_autoreleasePoolPop(v8);
              goto LABEL_20;
            }
          }

          fingerprint3 = [v9 fingerprint];
          certificate2 = [v11 certificate];
          fingerprint4 = [certificate2 fingerprint];
          v17 = [fingerprint3 isEqual:fingerprint4];

          if (fingerprint)
          {

            if (v17)
            {
              goto LABEL_19;
            }
          }

          else
          {

            if (v17)
            {
              goto LABEL_19;
            }
          }
        }

        v18 = _CRKLogASM_9(v12);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(CRKASMIdentityPicker *)v33 pickIdentityFromOrderedCandidates:&v34 manifest:v18];
        }

        [v26 addObject:v7];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v25 != v6);
      v25 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_20:

  credentialStore2 = [(CRKASMIdentityPicker *)self credentialStore];
  [credentialStore2 forgetIdentitiesWithPersistentIDs:v26];

  return v11;
}

- (id)arrayBySortingPersistentIDs:(id)ds
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  dsCopy = ds;
  v5 = [v3 sortDescriptorWithKey:@"crk_hexString" ascending:1];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [dsCopy sortedArrayUsingDescriptors:v6];

  return v7;
}

- (void)pickIdentityFromOrderedCandidates:(void *)a3 manifest:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 userIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_243550000, a4, OS_LOG_TYPE_ERROR, "Found a repointed persistent ID for user identifier %@. Forgetting it...", a1, 0xCu);
}

@end