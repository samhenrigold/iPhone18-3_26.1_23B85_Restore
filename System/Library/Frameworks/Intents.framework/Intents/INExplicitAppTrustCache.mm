@interface INExplicitAppTrustCache
- (BOOL)enterpriseAppTrustAllowed;
- (NSArray)managedBundleIdentifiers;
- (NSArray)trustedCodeSigningIdentities;
- (NSSet)signingIdentitiesRequiringExplicitTrust;
@end

@implementation INExplicitAppTrustCache

- (NSArray)managedBundleIdentifiers
{
  if (!self->_loadedManagedBundleIdentifiers)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    managedAppIDs = [mEMORY[0x1E69ADFB8] managedAppIDs];
    managedBundleIdentifiers = self->_managedBundleIdentifiers;
    self->_managedBundleIdentifiers = managedAppIDs;

    self->_loadedManagedBundleIdentifiers = 1;
  }

  v6 = self->_managedBundleIdentifiers;

  return v6;
}

- (NSArray)trustedCodeSigningIdentities
{
  if (!self->_loadedTrustedCodeSigningIdentities)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    trustedCodeSigningIdentities = [mEMORY[0x1E69ADFB8] trustedCodeSigningIdentities];
    trustedCodeSigningIdentities = self->_trustedCodeSigningIdentities;
    self->_trustedCodeSigningIdentities = trustedCodeSigningIdentities;

    self->_loadedTrustedCodeSigningIdentities = 1;
  }

  v6 = self->_trustedCodeSigningIdentities;

  return v6;
}

- (NSSet)signingIdentitiesRequiringExplicitTrust
{
  p_signingIdentitiesRequiringExplicitTrust = &self->_signingIdentitiesRequiringExplicitTrust;
  signingIdentitiesRequiringExplicitTrust = self->_signingIdentitiesRequiringExplicitTrust;
  if (!signingIdentitiesRequiringExplicitTrust)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26998;
    v9 = __Block_byref_object_dispose__26999;
    v10 = [MEMORY[0x1E695DFA8] set];
    MISEnumerateInstalledProvisioningProfiles();
    objc_storeStrong(p_signingIdentitiesRequiringExplicitTrust, v6[5]);
    _Block_object_dispose(&v5, 8);

    signingIdentitiesRequiringExplicitTrust = *p_signingIdentitiesRequiringExplicitTrust;
  }

  return signingIdentitiesRequiringExplicitTrust;
}

uint64_t __66__INExplicitAppTrustCache_signingIdentitiesRequiringExplicitTrust__block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  MISProvisioningProfileGetDeveloperCertificates();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = SecCertificateCreateWithData(0, *(*(&v17 + 1) + 8 * i));
        if (v7)
        {
          v8 = v7;
          v9 = SecCertificateCopySubjectSummary(v7);
          if (v9)
          {
            v10 = MISProvisioningProfileProvisionsAllDevices();
            Value = MISProfileGetValue();
            if (Value && (v12 = Value, v13 = CFGetTypeID(Value), v13 == CFBooleanGetTypeID()))
            {
              v14 = CFBooleanGetValue(v12) != 0;
              if (v10)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v14 = 0;
              if (v10)
              {
                goto LABEL_18;
              }
            }

            if (v14)
            {
LABEL_18:
              [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
              CFRelease(v8);

              goto LABEL_19;
            }
          }

          CFRelease(v8);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return 1;
}

- (BOOL)enterpriseAppTrustAllowed
{
  if (!self->_enterpriseAppTrustAllowedLoaded)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    self->_enterpriseAppTrustAllowed = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE58]] != 2;

    self->_enterpriseAppTrustAllowedLoaded = 1;
  }

  return self->_enterpriseAppTrustAllowed;
}

@end