@interface MCUIAppSigner
+ (id)_uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID:(id *)d;
+ (id)enterpriseAppSignersWithOutDeveloperAppSigners:(id *)signers;
+ (void)_addProfile:(id)profile toSignerIdentity:(id)identity inDictionary:(id)dictionary;
- (BOOL)isAppRemovalAllowed;
- (BOOL)isEnterpriseAppTrustAllowed;
- (BOOL)isTrustable;
- (BOOL)isTrusted;
- (MCUIAppSigner)initWithIdentity:(id)identity applications:(id)applications provisioningProfiles:(id)profiles hasUPP:(BOOL)p hasFreePP:(BOOL)pP;
- (void)_updateUntrustedAppCountsForBundleIDs:(id)ds;
- (void)main_removeMCUIReferenceForBundleID:(id)d;
- (void)refreshApplications;
- (void)setIdentity:(id)identity;
@end

@implementation MCUIAppSigner

- (MCUIAppSigner)initWithIdentity:(id)identity applications:(id)applications provisioningProfiles:(id)profiles hasUPP:(BOOL)p hasFreePP:(BOOL)pP
{
  pPCopy = pP;
  pCopy = p;
  identityCopy = identity;
  applicationsCopy = applications;
  profilesCopy = profiles;
  v23.receiver = self;
  v23.super_class = MCUIAppSigner;
  v16 = [(MCUIAppSigner *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identity, identity);
    v18 = [applicationsCopy mutableCopy];
    applications = v17->_applications;
    v17->_applications = v18;

    objc_storeStrong(&v17->_provisioningProfiles, profiles);
    v17->_hasUniversalPP = pCopy;
    v17->_hasFreePP = pPCopy;
    v20 = [MEMORY[0x277D24690] developerFromIdentity:identityCopy hasFreePP:pPCopy hasUPP:pCopy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    [(MCUIAppSigner *)v17 refreshApplications];
  }

  return v17;
}

- (void)setIdentity:(id)identity
{
  identityCopy = identity;
  p_identity = &self->_identity;
  if (self->_identity != identityCopy)
  {
    v9 = identityCopy;
    objc_storeStrong(p_identity, identity);
    v7 = [MEMORY[0x277D24690] developerFromIdentity:v9 hasFreePP:self->_hasFreePP hasUPP:self->_hasUniversalPP];
    displayName = self->_displayName;
    self->_displayName = v7;
  }

  MEMORY[0x2821F9730](p_identity);
}

- (void)refreshApplications
{
  applications = [(MCUIAppSigner *)self applications];
  [(MCUIAppSigner *)self _updateUntrustedAppCountsForBundleIDs:applications];
}

- (void)_updateUntrustedAppCountsForBundleIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  applications = [(MCUIAppSigner *)self applications];
  v5 = [applications countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(applications);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [objc_alloc(MEMORY[0x277D03238]) initWithBundleID:v11 dataSource:0];
        v14 = [v13 misStateIncludingPending:1];
        if ((v14 - 2) >= 2)
        {
          if (v14 == 1)
          {
            ++v7;
          }

          else
          {
            if (v14 == 5)
            {

              objc_autoreleasePoolPop(v12);
              goto LABEL_16;
            }

            ++v8;
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v6 = [applications countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_16:

  self->_untrustedAppCount = v8;
  self->_almostUntrustedAppCount = v7;
}

- (void)main_removeMCUIReferenceForBundleID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__MCUIAppSigner_main_removeMCUIReferenceForBundleID___block_invoke;
  v6[3] = &unk_279861A68;
  objc_copyWeak(&v9, &location);
  v7 = dCopy;
  selfCopy = self;
  v5 = dCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__MCUIAppSigner_main_removeMCUIReferenceForBundleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained applications];
    v4 = [v3 mutableCopy];

    [v4 removeObject:*(a1 + 32)];
    v5 = [v4 copy];
    v6 = *(a1 + 40);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    WeakRetained = v8;
  }
}

- (BOOL)isTrusted
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  provisioningProfiles = [(MCUIAppSigner *)self provisioningProfiles];
  v3 = [provisioningProfiles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(provisioningProfiles);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = MEMORY[0x277D24690];
        uuid = [v7 uuid];
        LOBYTE(v8) = [v8 isTrustedProvisioningProfileUUID:uuid];

        if ((v8 & 1) == 0)
        {
          uuid2 = [v7 uuid];
          NSLog(&cfstr_McuiappsignerP.isa, uuid2);

          v10 = 0;
          goto LABEL_11;
        }
      }

      v4 = [provisioningProfiles countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)isAppRemovalAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D20]] != 2;

  return v3;
}

- (BOOL)isEnterpriseAppTrustAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E70]] != 2;

  return v3;
}

- (BOOL)isTrustable
{
  if ([(MCUIAppSigner *)self isTrusted]&& [(MCUIAppSigner *)self isAppRemovalAllowed])
  {
    return 1;
  }

  if ([(MCUIAppSigner *)self isTrusted])
  {
    return 0;
  }

  return [(MCUIAppSigner *)self isEnterpriseAppTrustAllowed];
}

+ (id)enterpriseAppSignersWithOutDeveloperAppSigners:(id *)signers
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v76 = 0;
  v63 = [MCUIAppSigner _uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID:&v76];
  v62 = v76;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managedAppIDs = [mEMORY[0x277D262A0] managedAppIDs];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  userApplications = [MEMORY[0x277D03238] userApplications];
  v6 = [userApplications countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v73;
    v56 = v3;
    v53 = *v73;
    v54 = userApplications;
    do
    {
      v9 = 0;
      v58 = v7;
      do
      {
        if (*v73 != v8)
        {
          objc_enumerationMutation(userApplications);
        }

        v10 = *(*(&v72 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        signerID = [v10 signerID];

        if (signerID)
        {
          isInstalled = [v10 isInstalled];
          bundleID = [v10 bundleID];
          bundleID2 = bundleID;
          if (isInstalled)
          {
            v16 = [managedAppIDs containsObject:bundleID];

            if (v16)
            {
              bundleID2 = [v10 bundleID];
              NSLog(&cfstr_McuiappsignerI_1.isa, bundleID2);
            }

            else
            {
              signerID2 = [v10 signerID];
              bundleID2 = [v63 objectForKey:signerID2];

              signerID3 = [v10 signerID];
              v19 = [v62 objectForKey:signerID3];

              v20 = objc_opt_new();
              v21 = v20;
              if (bundleID2)
              {
                [v20 addObjectsFromArray:bundleID2];
              }

              if (v19)
              {
                [v21 addObjectsFromArray:v19];
              }

              v60 = v19;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v68 objects:v78 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v69;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v69 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v68 + 1) + 8 * i);
                    if (([v27 isAppleInternal] & 1) != 0 || (v28 = objc_msgSend(v10, "isBetaApp"), v28 == objc_msgSend(v27, "isBeta")) && (objc_msgSend(v10, "appIDEntitlement"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v27, "allowsAppIDEntitlement:", v29), v29, v30))
                    {
                      signerID4 = [v10 signerID];
                      v3 = v56;
                      v34 = [v56 objectForKey:signerID4];

                      if (v34)
                      {
                        bundleID3 = [v10 bundleID];
                        [v34 addObject:bundleID3];
                      }

                      else
                      {
                        v36 = MEMORY[0x277CBEB18];
                        bundleID4 = [v10 bundleID];
                        v34 = [v36 arrayWithObject:bundleID4];

                        bundleID3 = [v10 signerID];
                        [v56 setObject:v34 forKey:bundleID3];
                      }

                      goto LABEL_33;
                    }

                    bundleID5 = [v10 bundleID];
                    appIDEntitlement = [v10 appIDEntitlement];
                    NSLog(&cfstr_McuiappsignerS.isa, bundleID5, appIDEntitlement);
                  }

                  v24 = [v22 countByEnumeratingWithState:&v68 objects:v78 count:16];
                  v3 = v56;
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_33:

              v8 = v53;
              userApplications = v54;
              v7 = v58;
            }
          }

          else
          {
            NSLog(&cfstr_McuiappsignerI_0.isa, bundleID);
          }
        }

        else
        {
          bundleID2 = [v10 bundleID];
          NSLog(&cfstr_McuiappsignerI.isa, bundleID2);
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v38 = [userApplications countByEnumeratingWithState:&v72 objects:v79 count:16];
      v7 = v38;
    }

    while (v38);
  }

  v59 = objc_opt_new();
  v39 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v40 = v3;
  v61 = [v40 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v61)
  {
    v57 = *v65;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(v40);
        }

        v42 = *(*(&v64 + 1) + 8 * j);
        v43 = [v40 objectForKey:v42];
        v44 = [v63 objectForKey:v42];
        v45 = [v62 objectForKey:v42];
        v46 = objc_opt_new();
        v47 = v46;
        if (v44)
        {
          [v46 addObjectsFromArray:v44];
        }

        if (v45)
        {
          [v47 addObjectsFromArray:v45];
        }

        v48 = -[MCUIAppSigner initWithIdentity:applications:provisioningProfiles:hasUPP:hasFreePP:]([MCUIAppSigner alloc], "initWithIdentity:applications:provisioningProfiles:hasUPP:hasFreePP:", v42, v43, v47, [v44 count] != 0, objc_msgSend(v45, "count") != 0);
        if ([v44 count])
        {
          v49 = v59;
        }

        else
        {
          v49 = v39;
        }

        [v49 addObject:v48];
      }

      v61 = [v40 countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v61);
  }

  if (signers)
  {
    v50 = v39;
    *signers = v39;
  }

  return v59;
}

+ (void)_addProfile:(id)profile toSignerIdentity:(id)identity inDictionary:(id)dictionary
{
  profileCopy = profile;
  identityCopy = identity;
  dictionaryCopy = dictionary;
  array = [dictionaryCopy objectForKey:identityCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [dictionaryCopy setObject:array forKey:identityCopy];
  }

  [array addObject:profileCopy];
}

+ (id)_uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID:(id *)d
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277D24690];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__MCUIAppSigner__uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID___block_invoke;
  v13[3] = &unk_279861EE0;
  v7 = dictionary;
  v14 = v7;
  v8 = dictionary2;
  v15 = v8;
  [v6 enumerateProvisioningProfilesWithBlock:v13];
  if (d)
  {
    v9 = v8;
    *d = v8;
  }

  v10 = v15;
  v11 = v7;

  return v7;
}

void __72__MCUIAppSigner__uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isUniversalPP])
  {
    [MCUIAppSigner _addProfile:v6 toSignerIdentity:v5 inDictionary:*(a1 + 32)];
  }

  if ([v6 isFreePP])
  {
    [MCUIAppSigner _addProfile:v6 toSignerIdentity:v5 inDictionary:*(a1 + 40)];
  }
}

@end