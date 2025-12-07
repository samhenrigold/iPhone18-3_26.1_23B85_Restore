@interface MDMMCInterface
+ (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret outError:(id *)error;
+ (BOOL)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier outError:(id *)error;
+ (BOOL)isAutomaticDateAndTimeForced;
+ (BOOL)isAwaitingDeviceConfigured;
+ (BOOL)isDiagnosticsSubmissionRestricted;
+ (BOOL)isEnterpriseBookBackupAllowed;
+ (BOOL)isLimitedAppsMode;
+ (BOOL)isPasscodeSet;
+ (BOOL)isProfileWithIdentifier:(id)identifier managedByProfileWithIdentifier:(id)withIdentifier;
+ (BOOL)isProvisioningProfileWithUUID:(id)d managedByProfileWithIdentifier:(id)identifier;
+ (BOOL)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier outError:(id *)error;
+ (id)cloudConfigurationDetails;
+ (id)filterMDMRestrictions:(id)restrictions acceptingKeysFromDictionary:(id)dictionary;
+ (id)ipcuProfileList;
+ (id)ipcuRemoveProfileWithIdentifier:(id)identifier;
+ (id)managedAppIDs;
+ (id)mdmProfileIdentifier;
+ (id)mdmQueryableRestrictions;
+ (id)profileIdentifierForProfileData:(id)data allowEmptyPayload:(BOOL)payload outIsSupervisionProfile:(BOOL *)profile outProfileSigner:(__SecCertificate *)signer outMayInstallCloudProfile:(BOOL *)cloudProfile outError:(id *)error;
+ (id)profileIdentifiersWithFilterFlags:(int)flags;
+ (id)profileListWithFilterFlags:(int)flags;
+ (id)provisioningProfileUUIDsWithManagedOnly:(BOOL)only;
+ (int)_mcFilterFlagsForMDMFlags:(int)flags;
+ (void)enrollProvisionallyWithNonce:(id)nonce completion:(id)completion;
+ (void)flush;
+ (void)installStoredProfileDataWithCompletion:(id)completion;
+ (void)profiledCheckIn;
+ (void)retrieveCloudConfigurationDetailsCompletion:(id)completion;
+ (void)retrieveCloudConfigurationFromURL:(id)l username:(id)username password:(id)password anchorCertificates:(id)certificates completion:(id)completion;
+ (void)storeCertificateData:(id)data forHostIdentifier:(id)identifier;
+ (void)storeCloudConfigurationDetails:(id)details completion:(id)completion;
+ (void)storeProfileData:(id)data completion:(id)completion;
+ (void)storedProfileDataWithCompletion:(id)completion;
@end

@implementation MDMMCInterface

+ (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

+ (BOOL)isLimitedAppsMode
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isEffectivelyInAppAllowListMode = [mEMORY[0x277D262A0] isEffectivelyInAppAllowListMode];

  return isEffectivelyInAppAllowListMode;
}

+ (BOOL)isAwaitingDeviceConfigured
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAwaitingDeviceConfigured = [mEMORY[0x277D262A0] isAwaitingDeviceConfigured];

  return isAwaitingDeviceConfigured;
}

+ (id)managedAppIDs
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managedAppIDs = [mEMORY[0x277D262A0] managedAppIDs];

  return managedAppIDs;
}

+ (void)profiledCheckIn
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] checkIn];
}

+ (void)flush
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] flush];
}

+ (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret outError:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  secretCopy = secret;
  dataCopy = data;
  sharedConnection = [v7 sharedConnection];
  LOBYTE(error) = [sharedConnection clearPasscodeWithEscrowKeybagData:dataCopy secret:secretCopy outError:error];

  return error;
}

+ (void)storeCertificateData:(id)data forHostIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dataCopy = data;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeCertificateData:dataCopy forHostIdentifier:identifierCopy];
}

+ (id)mdmQueryableRestrictions
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"MDMQueryableRestrictionKeys" ofType:@"plist"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];

  return v4;
}

+ (id)filterMDMRestrictions:(id)restrictions acceptingKeysFromDictionary:(id)dictionary
{
  v4 = [MEMORY[0x277D262C0] filterRestrictionDictionary:restrictions acceptedKeysDict:dictionary];
  v5 = [v4 mutableCopy];

  [v5 MCFixUpRestrictionsDictionaryForMDMReporting];

  return v5;
}

+ (BOOL)isAutomaticDateAndTimeForced
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D88]];

  return v3;
}

+ (BOOL)isDiagnosticsSubmissionRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25E58]];

  return v3;
}

+ (BOOL)isEnterpriseBookBackupAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isEnterpriseBookBackupAllowed = [mEMORY[0x277D262A0] isEnterpriseBookBackupAllowed];

  return isEnterpriseBookBackupAllowed;
}

+ (id)profileIdentifierForProfileData:(id)data allowEmptyPayload:(BOOL)payload outIsSupervisionProfile:(BOOL *)profile outProfileSigner:(__SecCertificate *)signer outMayInstallCloudProfile:(BOOL *)cloudProfile outError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277D26290] profileWithData:data fileName:0 allowEmptyPayload:payload outError:error];
  v13 = v12;
  if (v12)
  {
    if (profile)
    {
      *profile = [v12 isSupervisionProfile];
    }

    if (cloudProfile)
    {
      v18 = *MEMORY[0x277D26400];
      v19[0] = MEMORY[0x277CBEC38];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *cloudProfile = [v13 mayInstallWithOptions:v14 hasInteractionClient:0 outError:error];
    }

    signerCertificate = [v13 signerCertificate];
    if (signer && signerCertificate)
    {
      *signer = CFRetain([v13 signerCertificate]);
    }

    identifier = [v13 identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

+ (id)mdmProfileIdentifier
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];

  return installedMDMProfileIdentifier;
}

+ (id)profileIdentifiersWithFilterFlags:(int)flags
{
  v3 = [self _mcFilterFlagsForMDMFlags:*&flags];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0] installedProfileIdentifiersWithFilterFlags:v3];

  return v5;
}

+ (BOOL)isProfileWithIdentifier:(id)identifier managedByProfileWithIdentifier:(id)withIdentifier
{
  v5 = MEMORY[0x277D262A0];
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  sharedConnection = [v5 sharedConnection];
  v9 = [sharedConnection isProfileWithIdentifier:identifierCopy managedByProfileWithIdentifier:withIdentifierCopy];

  return v9;
}

+ (id)profileListWithFilterFlags:(int)flags
{
  v3 = *&flags;
  v53 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] installedProfilesWithFilterFlags:{objc_msgSend(self, "_mcFilterFlagsForMDMFlags:", v3)}];

  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v46 = *v49;
    v45 = *MEMORY[0x277D24C88];
    v44 = *MEMORY[0x277D24C20];
    v43 = *MEMORY[0x277D24C90];
    v42 = *MEMORY[0x277D24C10];
    v41 = *MEMORY[0x277D24C60];
    v40 = *MEMORY[0x277D24C08];
    v39 = *MEMORY[0x277D24C70];
    v38 = *MEMORY[0x277D24C18];
    v37 = *MEMORY[0x277D24C30];
    v9 = *MEMORY[0x277D24C38];
    v10 = *MEMORY[0x277D26430];
    v33 = *MEMORY[0x277D035A8];
    v32 = *MEMORY[0x277D24C80];
    v36 = *MEMORY[0x277D24C78];
    v35 = *MEMORY[0x277D24C68];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = objc_opt_new();
        uUID = [v12 UUID];
        [v13 setObject:uUID forKeyedSubscript:v45];

        identifier = [v12 identifier];
        [v13 setObject:identifier forKeyedSubscript:v44];

        v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "version")}];
        [v13 setObject:v16 forKeyedSubscript:v43];

        displayName = [v12 displayName];
        [v13 setObject:displayName forKeyedSubscript:v42];

        organization = [v12 organization];
        [v13 setObject:organization forKeyedSubscript:v41];

        profileDescription = [v12 profileDescription];
        [v13 setObject:profileDescription forKeyedSubscript:v40];

        v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isLocked")}];
        [v13 setObject:v20 forKeyedSubscript:v39];

        v21 = MEMORY[0x277CCABB0];
        removalPasscode = [v12 removalPasscode];
        v23 = [v21 numberWithBool:removalPasscode != 0];
        [v13 setObject:v23 forKeyedSubscript:v38];

        v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isEncrypted")}];
        [v13 setObject:v24 forKeyedSubscript:v37];

        v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isManagedByMDM")}];
        [v13 setObject:v25 forKeyedSubscript:v9];

        installOptions = [v12 installOptions];
        v27 = [installOptions objectForKeyedSubscript:v10];
        bOOLValue = [v27 BOOLValue];

        if (bOOLValue)
        {
          [v13 setObject:v33 forKeyedSubscript:v32];
        }

        signerCertificatesData = [v12 signerCertificatesData];
        if (signerCertificatesData)
        {
          [v13 setObject:signerCertificatesData forKeyedSubscript:v36];
        }

        payloadsContentInfo = [v12 payloadsContentInfo];
        if (payloadsContentInfo)
        {
          [v13 setObject:payloadsContentInfo forKeyedSubscript:v35];
        }

        [v47 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v8);
  }

  return v47;
}

+ (id)provisioningProfileUUIDsWithManagedOnly:(BOOL)only
{
  onlyCopy = only;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0] listInstalledProvisioningProfileUUIDsWithManagedOnly:onlyCopy];

  return v5;
}

+ (BOOL)isProvisioningProfileWithUUID:(id)d managedByProfileWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dCopy = d;
  sharedConnection = [v5 sharedConnection];
  v9 = [sharedConnection isProvisioningProfilesWithUUID:dCopy managedByProfileWithIdentifier:identifierCopy];

  return v9;
}

+ (BOOL)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier outError:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dataCopy = data;
  sharedConnection = [v7 sharedConnection];
  LOBYTE(error) = [sharedConnection installProvisioningProfileData:dataCopy managingProfileIdentifier:identifierCopy outError:error];

  return error;
}

+ (BOOL)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier outError:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dCopy = d;
  sharedConnection = [v7 sharedConnection];
  LOBYTE(error) = [sharedConnection removeProvisioningProfileWithUUID:dCopy managingProfileIdentifier:identifierCopy outError:error];

  return error;
}

+ (id)ipcuProfileList
{
  v42 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] installedProfilesWithFilterFlags:69];

  v34 = objc_opt_new();
  v33 = objc_opt_new();
  v32 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v31 = *v36;
    v30 = *MEMORY[0x277D24C28];
    v29 = *MEMORY[0x277D24C00];
    v28 = *MEMORY[0x277D24C88];
    v27 = *MEMORY[0x277D24C10];
    v26 = *MEMORY[0x277D24C60];
    v25 = *MEMORY[0x277D24C08];
    v6 = *MEMORY[0x277D24C90];
    v7 = *MEMORY[0x277D24C70];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v30];
        displayName = [v9 displayName];
        [v11 setObject:displayName forKeyedSubscript:v29];

        uUID = [v9 UUID];
        [v12 setObject:uUID forKeyedSubscript:v28];

        displayName2 = [v9 displayName];
        [v12 setObject:displayName2 forKeyedSubscript:v27];

        organization = [v9 organization];
        [v12 setObject:organization forKeyedSubscript:v26];

        profileDescription = [v9 profileDescription];
        [v12 setObject:profileDescription forKeyedSubscript:v25];

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "version")}];
        [v12 setObject:v18 forKeyedSubscript:v6];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isLocked")}];
        [v12 setObject:v19 forKeyedSubscript:v7];

        [v34 setObject:v11 forKeyedSubscript:identifier];
        [v32 setObject:v12 forKeyedSubscript:identifier];
        [v33 addObject:identifier];
      }

      v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D24C48];
  v39[0] = @"Status";
  v39[1] = v20;
  v40[0] = @"Acknowledged";
  v40[1] = v34;
  v21 = *MEMORY[0x277D24C58];
  v39[2] = *MEMORY[0x277D24C50];
  v39[3] = v21;
  v40[2] = v32;
  v40[3] = v33;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

  return v22;
}

+ (id)ipcuRemoveProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cf2 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0;
    v5 = [MDMMCInterface profileIdentifierForProfileData:identifierCopy allowEmptyPayload:1 outIsSupervisionProfile:0 outProfileSigner:&cf2 outMayInstallCloudProfile:0 outError:&v23];
    dMCCopyAsPrimaryError = v23;
    if (dMCCopyAsPrimaryError)
    {
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D033C0];
      v15 = DMCErrorArray();
      dMCCopyAsPrimaryError = [v13 DMCErrorWithDomain:v14 code:4000 descriptionArray:v15 errorType:{*MEMORY[0x277D032F8], 0}];

      v5 = 0;
      goto LABEL_18;
    }

    v5 = identifierCopy;
  }

  v7 = [mEMORY[0x277D262A0] installedProfileIdentifiersWithFilterFlags:69];
  if ([v7 containsObject:v5])
  {
    v8 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:v5];
    if ([v8 isLocked] && objc_msgSend(v8, "isSigned") && (!cf2 || (v9 = objc_msgSend(v8, "signerCertificate"), !CFEqual(v9, cf2))))
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D033C0];
      friendlyName = [v8 friendlyName];
      systemConnection = DMCErrorArray();
      v20 = [v18 DMCErrorWithDomain:v19 code:4008 descriptionArray:systemConnection errorType:{*MEMORY[0x277D032F8], friendlyName, 0}];
      dMCCopyAsPrimaryError = [v20 DMCCopyAsPrimaryError];
    }

    else
    {
      friendlyName = objc_opt_new();
      [friendlyName setType:0];
      [friendlyName setProfileIdentifier:v5];
      systemConnection = [MEMORY[0x277D04BF8] systemConnection];
      v21 = 0;
      v12 = [systemConnection performRequest:friendlyName error:&v21];
      dMCCopyAsPrimaryError = v21;
    }
  }

  else
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_ERROR, "iPCU tried to uninstall a profile that was not found", buf, 2u);
    }

    dMCCopyAsPrimaryError = 0;
  }

LABEL_18:
  if (cf2)
  {
    CFRelease(cf2);
  }

  return dMCCopyAsPrimaryError;
}

+ (void)storeProfileData:(id)data completion:(id)completion
{
  v5 = MEMORY[0x277D262A0];
  completionCopy = completion;
  dataCopy = data;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeProfileData:dataCopy completion:completionCopy];
}

+ (void)storedProfileDataWithCompletion:(id)completion
{
  v3 = MEMORY[0x277D262A0];
  completionCopy = completion;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection storedProfileDataWithCompletion:completionCopy];
}

+ (void)installStoredProfileDataWithCompletion:(id)completion
{
  v3 = MEMORY[0x277D262A0];
  completionCopy = completion;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection installStoredProfileDataWithCompletion:completionCopy];
}

+ (id)cloudConfigurationDetails
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  cloudConfigurationDetails = [mEMORY[0x277D262A0] cloudConfigurationDetails];

  return cloudConfigurationDetails;
}

+ (void)retrieveCloudConfigurationDetailsCompletion:(id)completion
{
  v3 = MEMORY[0x277D262A0];
  completionCopy = completion;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection retrieveCloudConfigurationDetailsCompletionBlock:completionCopy];
}

+ (void)retrieveCloudConfigurationFromURL:(id)l username:(id)username password:(id)password anchorCertificates:(id)certificates completion:(id)completion
{
  v11 = MEMORY[0x277D262A0];
  completionCopy = completion;
  certificatesCopy = certificates;
  passwordCopy = password;
  usernameCopy = username;
  lCopy = l;
  sharedConnection = [v11 sharedConnection];
  [sharedConnection retrieveCloudConfigurationFromURL:lCopy username:usernameCopy password:passwordCopy anchorCertificates:certificatesCopy completionBlock:completionCopy];
}

+ (void)storeCloudConfigurationDetails:(id)details completion:(id)completion
{
  v5 = MEMORY[0x277D262A0];
  completionCopy = completion;
  detailsCopy = details;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeCloudConfigurationDetails:detailsCopy completion:completionCopy];
}

+ (void)enrollProvisionallyWithNonce:(id)nonce completion:(id)completion
{
  v5 = MEMORY[0x277D262A0];
  completionCopy = completion;
  nonceCopy = nonce;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection enrollProvisionallyWithNonce:nonceCopy completionBlock:completionCopy];
}

+ (int)_mcFilterFlagsForMDMFlags:(int)flags
{
  flagsCopy = flags;
  v9 = *MEMORY[0x277D85DE8];
  v4 = flags & 0xFFFFFF80;
  if ((flags & 0xFFFFFF80) != 0)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_FAULT, "Untranslated profile filter flags will be ignored: %llx", &v7, 0xCu);
    }
  }

  return flagsCopy & 0x7F;
}

@end