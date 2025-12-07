@interface MDMParser
+ (BOOL)_dmfAction:(unint64_t *)action fromMDMActionString:(id)string;
+ (BOOL)_useDelayFlagAllowed;
+ (id)_DMFKeysToMCKeys;
+ (id)_MCKeysToDMFKeys;
+ (id)_MCKeysWithNoMatchingDMFKey;
+ (id)_errorFromDMFSoftwareUpdateError:(id)error;
+ (id)_errorWithDomain:(id)domain code:(int64_t)code descriptionKey:(id)key underlyingError:(id)error type:(id)type;
+ (id)_numericAccessibilitySettingsKeys;
+ (id)_resolvedInstallActionStringForAction:(unint64_t)action;
+ (id)_statusFromError:(id)error action:(unint64_t)action;
+ (id)_stringForAppState:(unint64_t)state;
+ (id)_updateDictionaryFromUpdate:(id)update;
+ (id)errorChainFromError:(id)error;
+ (id)malformedRequestErrorResult;
+ (unint64_t)_shouldUseDelayWithRequest:(id)request;
- (BOOL)_analyticsRequiresNetworkTetheringFromRequest:(id)request;
- (BOOL)_identifiersIsStringArray:(id)array;
- (BOOL)_isChlorineEligible;
- (BOOL)_isDDMProfileIdentifier:(id)identifier;
- (BOOL)_isManagedApp:(id)app;
- (BOOL)_isManagedAppFromManagementInformation:(id)information;
- (BOOL)_isProfileIdentifierManaged:(id)managed;
- (BOOL)_isProvisioningProfileUUIDManaged:(id)managed;
- (BOOL)_isPurchaseMethodAllowed:(int)allowed onUserEnrollment:(BOOL)enrollment;
- (BOOL)_platformSupportsCellularPlan;
- (BOOL)_platformSupportsClearingRestrictionsPassword;
- (BOOL)_platformSupportsInviteToVPP;
- (BOOL)_platformSupportsLostMode;
- (BOOL)_platformSupportsMediaCommands;
- (BOOL)_platformSupportsMirroring;
- (BOOL)_platformSupportsOSUpdateManagement;
- (BOOL)_platformSupportsRestart;
- (BOOL)_platformSupportsShutdown;
- (BOOL)_platfromSupportsRedemptionCodes;
- (BOOL)_rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:(id)block;
- (BOOL)_validateSetting:(id)setting accessRights:(unint64_t)rights outError:(id *)error;
- (MDMParser)initWithManagingProfileIdentifier:(id)identifier;
- (MDMServerCore)server;
- (id)_accessibilitySettings;
- (id)_allCommands;
- (id)_allSettingsItems;
- (id)_analyticsCommandNameFromRequest:(id)request;
- (id)_appAlreadyInstalledErrorWithBundleID:(id)d;
- (id)_appAlreadyInstalledErrorWithiTunesStoreID:(id)d;
- (id)_appAlreadyQueuedErrorWithBundleID:(id)d;
- (id)_appAlreadyQueuedErrorWithiTunesStoreID:(id)d;
- (id)_appAttributesWithRequestedAttributes:(id)attributes;
- (id)_appManagementFlagsWithRequestedFlags:(id)flags;
- (id)_appStoreDisabledError;
- (id)_applyRedemptionCode:(id)code assertion:(id)assertion;
- (id)_cannotValidateAppIDErrorUnderlyingError:(id)error;
- (id)_certificateList:(id)list;
- (id)_clearPasscode:(id)passcode;
- (id)_commandSetDataSeparatedDeviceEnrollment;
- (id)_commandSetDataSeparatedDeviceEnrollment_once;
- (id)_commandSetDeviceEnrollment;
- (id)_commandSetDeviceEnrollment_once;
- (id)_commandSetSharediPad;
- (id)_commandSetSharediPad_once;
- (id)_commandSetSupervised;
- (id)_commandSetSupervised_once;
- (id)_commandSetUserEnrollment;
- (id)_commandSetUserEnrollment_once;
- (id)_declarativeManagement:(id)management;
- (id)_deleteAllUsersWithForceDeletion:(BOOL)deletion;
- (id)_deleteUser:(id)user;
- (id)_deviceInformationWithRequest:(id)request accessRights:(unint64_t)rights;
- (id)_deviceInformationWithRequest:(id)request allowedQueries:(id)queries;
- (id)_ephemeralSupervisedSettingsSet;
- (id)_ephemeralSupervisedSettingsSet_once;
- (id)_handleFetchAppsRequest:(id)request managedOnly:(BOOL)only deleteFeedback:(BOOL)feedback advanceTransientStates:(BOOL)states propertyKeys:(id)keys block:(id)block;
- (id)_handleSetAppManagementInfoRequest:(id)request outAdditionalResponseKeys:(id *)keys block:(id)block;
- (id)_installApplicationCouldNotModifyDDMAppsError;
- (id)_installProfile:(id)profile accessRights:(unint64_t)rights installationType:(int64_t)type;
- (id)_installProvisioningProfile:(id)profile;
- (id)_installedApplicationList:(id)list;
- (id)_invalidManifestErrorWithURL:(id)l underlyingError:(id)error;
- (id)_invalidRequestTypeError:(id)error;
- (id)_invalidRequestTypeInMDMLostModeError:(id)error;
- (id)_invalidRequestTypeInSingleAppModeError:(id)error;
- (id)_licenseNotFoundErrorWithBundleID:(id)d underlyingError:(id)error;
- (id)_licenseNotFoundErrorWithiTunesStoreID:(id)d underlyingError:(id)error;
- (id)_malformedRequestError;
- (id)_managedApplicationAttributes:(id)attributes;
- (id)_managedApplicationConfiguration:(id)configuration;
- (id)_managedApplicationFeedback:(id)feedback;
- (id)_managedApplicationList:(id)list;
- (id)_managedByDDMError:(id)error;
- (id)_nonSupervisedSettingsSet;
- (id)_nonSupervisedSettingsSetWithUserEnrollment;
- (id)_nonSupervisedSettingsSetWithUserEnrollment_once;
- (id)_nonSupervisedSettingsSet_once;
- (id)_notAuthorizedError;
- (id)_notInRRTSModeError;
- (id)_notManagedAndNotSupervisedErrorAppID:(id)d;
- (id)_notManagedErrorAppID:(id)d;
- (id)_notNetworkTetheredError;
- (id)_originator;
- (id)_performSetAccessibilitySettings:(id)settings;
- (id)_performSetAppAnalytics:(id)analytics;
- (id)_performSetAppAttributes:(id)attributes outAdditionalResponseKeys:(id *)keys;
- (id)_performSetAppConfig:(id)config outAdditionalResponseKeys:(id *)keys;
- (id)_performSetAwaitUserConfiguration:(id)configuration;
- (id)_performSetBluetooth:(id)bluetooth;
- (id)_performSetDataRoaming:(id)roaming;
- (id)_performSetDefaultApplications:(id)applications;
- (id)_performSetDeviceName:(id)name;
- (id)_performSetDiagnosticSubmission:(id)submission;
- (id)_performSetGracePeriod:(id)period;
- (id)_performSetMAIDDefaultDomains:(id)domains;
- (id)_performSetMDMOptions:(id)options;
- (id)_performSetMaximumResidentUsers:(id)users;
- (id)_performSetOnlineAuthenticationGracePeriod:(id)period;
- (id)_performSetOrganizationInfo:(id)info;
- (id)_performSetPersonalHotspot:(id)hotspot;
- (id)_performSetResidentUserQuotaSize:(id)size;
- (id)_performSetResidentUsers:(id)users;
- (id)_performSetSessionTimeout:(id)timeout;
- (id)_performSetSharedDeviceConfiguration:(id)configuration;
- (id)_performSetSkipLanguageAndLocaleSetupForNewUsers:(id)users;
- (id)_performSetTemporarySessionOnly:(id)only;
- (id)_performSetTimezone:(id)timezone;
- (id)_performSetUpdatePath:(id)path;
- (id)_performSetVoiceRoaming:(id)roaming;
- (id)_performSetWallpaper:(id)wallpaper;
- (id)_performSetting:(id)setting outAdditionalResponseKeys:(id *)keys outRestartAppleTVApp:(BOOL *)app;
- (id)_profileList:(id)list filterFlags:(int)flags;
- (id)_provisioningProfileList:(id)list;
- (id)_refreshCellularPlans:(id)plans;
- (id)_removeApplication:(id)application;
- (id)_removeProfile:(id)profile;
- (id)_removeProfileWithIdentifier:(id)identifier forInstalledProfilesWithFilterFlags:(int)flags;
- (id)_removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type;
- (id)_removeProvisioningProfile:(id)profile;
- (id)_responseForMalformedUpdateRequest;
- (id)_restrictions:(id)_restrictions withProfileFilterFlags:(int)flags;
- (id)_serviceSubscriptionPropertiesWithDMFKeysMappedToMCKeys:(id)keys;
- (id)_serviceSubscriptionsWithDMFKeysMappedToMCKeys:(id)keys;
- (id)_setAppAnalyticsEnabled:(BOOL)enabled;
- (id)_setDiagnosticSubmissionEnabled:(BOOL)enabled;
- (id)_setResidentUsersNumber:(id)number;
- (id)_settings:(id)_settings accessRights:(unint64_t)rights;
- (id)_softwareUpdatesNotPermittedWithLoggedInUserError;
- (id)_stringForBookState:(unint64_t)state;
- (id)_supervisedSettingsSet;
- (id)_supervisedSettingsSet_once;
- (id)_unavailableCommandsBeforeFirstUnlock;
- (id)_unavailableCommandsDuringIncompleteAccountDrivenEnrollment;
- (id)_unavailableCommandsInLimitedAppsMode;
- (id)_unavailableCommandsWhileLocked;
- (id)_unblockableCommands;
- (id)_validateApplications:(id)applications;
- (id)unavailableCommandsDuringBuddy;
- (id)unavailableCommandsWhileInMDMLostMode;
- (unint64_t)_profileInstallationStyleForRequest:(id)request;
- (void)_activationLockBypassCodeRequest:(id)request completionBlock:(id)block;
- (void)_applyOverridesToDeviceInformationDictionary:(id)dictionary;
- (void)_availableOSUpdates:(id)updates assertion:(id)assertion completionBlock:(id)block;
- (void)_clearActivationLockBypassCodeRequest:(id)request completionBlock:(id)block;
- (void)_deviceConfigured:(id)configured assertion:(id)assertion completionBlock:(id)block;
- (void)_dmfScheduleOSUpdate:(id)update assertion:(id)assertion completionBlock:(id)block;
- (void)_installApplication:(id)application assertion:(id)assertion completionBlock:(id)block;
- (void)_installMedia:(id)media assertion:(id)assertion completionBlock:(id)block;
- (void)_inviteToProgramRequest:(id)request assertion:(id)assertion completionBlock:(id)block;
- (void)_managedMediaList:(id)list assertion:(id)assertion completionBlock:(id)block;
- (void)_mdmScheduleOSUpdate:(id)update assertion:(id)assertion completionBlock:(id)block;
- (void)_performInstallApplicationRequestWithManifestURL:(id)l iTunesStoreIDObj:(id)obj bundleId:(id)id flagsObj:(id)flagsObj attributes:(id)attributes configuration:(id)configuration manageChangeStr:(id)str purchaseMethodValue:(int)self0 personaID:(id)self1 completionBlock:(id)self2;
- (void)_performSetDefaultApp:(id)app forCategory:(unint64_t)category completion:(id)completion;
- (void)_performSetDefaultBrowser:(id)browser completion:(id)completion;
- (void)_processRequest:(id)request accessRights:(unint64_t)rights assertion:(id)assertion completionBlock:(id)block;
- (void)_rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:(id)block;
- (void)_removeMedia:(id)media assertion:(id)assertion completionBlock:(id)block;
- (void)_requestMirroringRequest:(id)request assertion:(id)assertion completionBlock:(id)block;
- (void)_scheduleOSUpdate:(id)update assertion:(id)assertion completionBlock:(id)block;
- (void)_scheduleOSUpdateScan:(id)scan assertion:(id)assertion completionBlock:(id)block;
- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)request response:(id)response;
- (void)_statusOfOSUpdates:(id)updates assertion:(id)assertion completionBlock:(id)block;
- (void)_stopMirroringRequest:(id)request assertion:(id)assertion completionBlock:(id)block;
- (void)didInitiateSwitchUser;
- (void)processRequest:(id)request accessRights:(unint64_t)rights assertion:(id)assertion completionBlock:(id)block;
- (void)willTerminateProcess:(id)process;
@end

@implementation MDMParser

- (MDMParser)initWithManagingProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MDMParser;
  v6 = [(MDMParser *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managingProfileIdentifier, identifier);
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    v7->_isChaperoned = [mEMORY[0x277D24640] isSupervised];

    v7->_isMDM = identifierCopy != 0;
    v9 = objc_opt_new();
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v9;
  }

  return v7;
}

- (id)_unavailableCommandsWhileLocked
{
  if (_unavailableCommandsWhileLocked_once != -1)
  {
    [MDMParser _unavailableCommandsWhileLocked];
  }

  v3 = _unavailableCommandsWhileLocked_set;

  return v3;
}

void __44__MDMParser__unavailableCommandsWhileLocked__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"InstallProfile";
  v4[1] = @"InstallProfileSilent";
  v4[2] = @"InstallProvisioningProfile";
  v4[3] = @"RequestUnlockToken";
  v4[4] = @"SecurityInfo";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsWhileLocked_set;
  _unavailableCommandsWhileLocked_set = v2;
}

- (id)_unavailableCommandsBeforeFirstUnlock
{
  if (_unavailableCommandsBeforeFirstUnlock_once != -1)
  {
    [MDMParser _unavailableCommandsBeforeFirstUnlock];
  }

  v3 = _unavailableCommandsBeforeFirstUnlock_set;

  return v3;
}

void __50__MDMParser__unavailableCommandsBeforeFirstUnlock__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"ManagedMediaList";
  v4[1] = @"InstallMedia";
  v4[2] = @"RemoveMedia";
  v4[3] = @"CertificateList";
  v4[4] = @"DeclarativeManagement";
  v4[5] = @"RemoveProfile";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsBeforeFirstUnlock_set;
  _unavailableCommandsBeforeFirstUnlock_set = v2;
}

- (id)_unavailableCommandsInLimitedAppsMode
{
  if (_unavailableCommandsInLimitedAppsMode_onceToken != -1)
  {
    [MDMParser _unavailableCommandsInLimitedAppsMode];
  }

  v3 = _unavailableCommandsInLimitedAppsMode_set;

  return v3;
}

void __50__MDMParser__unavailableCommandsInLimitedAppsMode__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"ApplyRedemptionCode";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsInLimitedAppsMode_set;
  _unavailableCommandsInLimitedAppsMode_set = v2;
}

- (id)_unavailableCommandsDuringIncompleteAccountDrivenEnrollment
{
  if (_unavailableCommandsDuringIncompleteAccountDrivenEnrollment_onceToken != -1)
  {
    [MDMParser _unavailableCommandsDuringIncompleteAccountDrivenEnrollment];
  }

  v3 = _unavailableCommandsDuringIncompleteAccountDrivenEnrollment_set;

  return v3;
}

void __72__MDMParser__unavailableCommandsDuringIncompleteAccountDrivenEnrollment__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"InviteToProgram";
  v4[1] = @"InstallApplication";
  v4[2] = @"ApplyRedemptionCode";
  v4[3] = @"InstallMedia";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsDuringIncompleteAccountDrivenEnrollment_set;
  _unavailableCommandsDuringIncompleteAccountDrivenEnrollment_set = v2;
}

- (id)unavailableCommandsDuringBuddy
{
  if (unavailableCommandsDuringBuddy_onceToken != -1)
  {
    [MDMParser unavailableCommandsDuringBuddy];
  }

  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  isSupervised = [mEMORY[0x277D24640] isSupervised];
  v4 = &unavailableCommandsDuringBuddy_supervisedSet;
  if (!isSupervised)
  {
    v4 = &unavailableCommandsDuringBuddy_unsupervisedSet;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

void __43__MDMParser_unavailableCommandsDuringBuddy__block_invoke()
{
  v9[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v9[0] = @"ApplyRedemptionCode";
  v9[1] = @"DeviceLock";
  v9[2] = @"DisableLostMode";
  v9[3] = @"EnableLostMode";
  v9[4] = @"InstallMedia";
  v9[5] = @"InviteToProgram";
  v9[6] = @"RequestMirroring";
  v9[7] = @"UserList";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = unavailableCommandsDuringBuddy_supervisedSet;
  unavailableCommandsDuringBuddy_supervisedSet = v2;

  v4 = MEMORY[0x277CBEB98];
  v8[0] = @"ApplyRedemptionCode";
  v8[1] = @"DeviceLock";
  v8[2] = @"DisableLostMode";
  v8[3] = @"EnableLostMode";
  v8[4] = @"InstallApplication";
  v8[5] = @"InstallMedia";
  v8[6] = @"InviteToProgram";
  v8[7] = @"RequestMirroring";
  v8[8] = @"UserList";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];
  v6 = [v4 setWithArray:v5];
  v7 = unavailableCommandsDuringBuddy_unsupervisedSet;
  unavailableCommandsDuringBuddy_unsupervisedSet = v6;
}

- (id)unavailableCommandsWhileInMDMLostMode
{
  if (unavailableCommandsWhileInMDMLostMode_onceToken != -1)
  {
    [MDMParser unavailableCommandsWhileInMDMLostMode];
  }

  v3 = unavailableCommandsWhileInMDMLostMode_set;

  return v3;
}

void __50__MDMParser_unavailableCommandsWhileInMDMLostMode__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"InviteToProgram";
  v4[1] = @"InstallApplication";
  v4[2] = @"ApplyRedemptionCode";
  v4[3] = @"InstallMedia";
  v4[4] = @"RequestMirroring";
  v4[5] = @"DeviceLock";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = unavailableCommandsWhileInMDMLostMode_set;
  unavailableCommandsWhileInMDMLostMode_set = v2;
}

- (BOOL)_platformSupportsMirroring
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsInviteToVPP
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsMediaCommands
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platfromSupportsRedemptionCodes
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsCellularPlan
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsLostMode
{
  if ([MEMORY[0x277D03530] isAppleTV])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsOSUpdateManagement
{
  if ([MEMORY[0x277D03530] isWatch])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsRestart
{
  if ([MEMORY[0x277D03530] isWatch])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsShutdown
{
  if ([MEMORY[0x277D03530] isWatch] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isAppleTV"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsClearingRestrictionsPassword
{
  if ([MEMORY[0x277D03530] isWatch])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (id)_commandSetDeviceEnrollment
{
  v23[20] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v23[0] = @"CertificateList";
  v23[1] = @"DeclarativeManagement";
  v23[2] = @"DeviceInformation";
  v23[3] = @"DeviceLock";
  v23[4] = @"EraseDevice";
  v23[5] = @"InstallApplication";
  v23[6] = @"InstallProfile";
  v23[7] = @"InstallProvisioningProfile";
  v23[8] = @"InstalledApplicationList";
  v23[9] = @"ManagedApplicationAttributes";
  v23[10] = @"ManagedApplicationConfiguration";
  v23[11] = @"ManagedApplicationList";
  v23[12] = @"ProfileList";
  v23[13] = @"ProvisioningProfileList";
  v23[14] = @"RemoveApplication";
  v23[15] = @"RemoveProfile";
  v23[16] = @"RemoveProvisioningProfile";
  v23[17] = @"Restrictions";
  v23[18] = @"SecurityInfo";
  v23[19] = @"Settings";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:20];
  v5 = [v3 setWithArray:v4];

  if ([(MDMParser *)self _platformSupportsApplicationFeedback])
  {
    v22 = @"ManagedApplicationFeedback";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v5 addObjectsFromArray:v6];
  }

  if ([(MDMParser *)self _platformSupportsValidatingApplications])
  {
    v21 = @"ValidateApplications";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v5 addObjectsFromArray:v7];
  }

  if ([(MDMParser *)self _platformHasPasscode])
  {
    v20 = @"ClearPasscode";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v5 addObjectsFromArray:v8];
  }

  if ([(MDMParser *)self _platfromSupportsRedemptionCodes])
  {
    v19 = @"ApplyRedemptionCode";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v5 addObjectsFromArray:v9];
  }

  if ([(MDMParser *)self _platformSupportsInviteToVPP])
  {
    v18 = @"InviteToProgram";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v5 addObjectsFromArray:v10];
  }

  if ([(MDMParser *)self _platformSupportsMirroring])
  {
    v17 = @"RequestMirroring";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v5 addObjectsFromArray:v11];
  }

  if ([(MDMParser *)self _platformSupportsCellularPlan])
  {
    v16 = @"RefreshCellularPlans";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v5 addObjectsFromArray:v12];
  }

  if (-[MDMParser _platformSupportsMediaCommands](self, "_platformSupportsMediaCommands") || [MEMORY[0x277D03500] forceMediaCommandSupport])
  {
    v15[0] = @"InstallMedia";
    v15[1] = @"ManagedMediaList";
    v15[2] = @"RemoveMedia";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [v5 addObjectsFromArray:v13];
  }

  return v5;
}

- (id)_commandSetDeviceEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MDMParser__commandSetDeviceEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetDeviceEnrollment_once_once != -1)
  {
    dispatch_once(&_commandSetDeviceEnrollment_once_once, block);
  }

  return _commandSetDeviceEnrollment_once_commandSet;
}

uint64_t __45__MDMParser__commandSetDeviceEnrollment_once__block_invoke(uint64_t a1)
{
  _commandSetDeviceEnrollment_once_commandSet = [*(a1 + 32) _commandSetDeviceEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetSupervised
{
  v21[4] = *MEMORY[0x277D85DE8];
  _commandSetDeviceEnrollment = [(MDMParser *)self _commandSetDeviceEnrollment];
  v4 = [_commandSetDeviceEnrollment mutableCopy];

  if ([(MDMParser *)self _platformSupportsLostMode])
  {
    v21[0] = @"EnableLostMode";
    v21[1] = @"PlayLostModeSound";
    v21[2] = @"DisableLostMode";
    v21[3] = @"DeviceLocation";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [v4 addObjectsFromArray:v5];
  }

  if ([(MDMParser *)self _platformSupportsMirroring])
  {
    v20 = @"StopMirroring";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v4 addObjectsFromArray:v6];
  }

  if ([(MDMParser *)self _platformSupportsOSUpdateManagement])
  {
    v19[0] = @"ScheduleOSUpdate";
    v19[1] = @"ScheduleOSUpdateScan";
    v19[2] = @"AvailableOSUpdates";
    v19[3] = @"OSUpdateStatus";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    [v4 addObjectsFromArray:v7];
  }

  if ([(MDMParser *)self _platformSupportsDEP])
  {
    v18 = @"DeviceConfigured";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v4 addObjectsFromArray:v8];
  }

  if ([(MDMParser *)self _platformSupportsActivationLock])
  {
    v17[0] = @"ActivationLockBypassCode";
    v17[1] = @"ClearActivationLockBypassCode";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v4 addObjectsFromArray:v9];
  }

  if ([(MDMParser *)self _platformSupportsRestart])
  {
    v16 = @"RestartDevice";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v4 addObjectsFromArray:v10];
  }

  if ([(MDMParser *)self _platformSupportsShutdown])
  {
    v15 = @"ShutDownDevice";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v4 addObjectsFromArray:v11];
  }

  if ([(MDMParser *)self _platformSupportsClearingRestrictionsPassword])
  {
    v14 = @"ClearRestrictionsPassword";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v4 addObjectsFromArray:v12];
  }

  return v4;
}

- (id)_commandSetSupervised_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDMParser__commandSetSupervised_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetSupervised_once_once != -1)
  {
    dispatch_once(&_commandSetSupervised_once_once, block);
  }

  return _commandSetSupervised_once_commandSet;
}

uint64_t __39__MDMParser__commandSetSupervised_once__block_invoke(uint64_t a1)
{
  _commandSetSupervised_once_commandSet = [*(a1 + 32) _commandSetSupervised];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetDataSeparatedDeviceEnrollment
{
  v8[1] = *MEMORY[0x277D85DE8];
  _commandSetDeviceEnrollment = [(MDMParser *)self _commandSetDeviceEnrollment];
  v3 = [_commandSetDeviceEnrollment mutableCopy];

  v4 = MEMORY[0x277CBEB98];
  v8[0] = @"InviteToProgram";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [v4 setWithArray:v5];
  [v3 minusSet:v6];

  return v3;
}

- (id)_commandSetDataSeparatedDeviceEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MDMParser__commandSetDataSeparatedDeviceEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetDataSeparatedDeviceEnrollment_once_once != -1)
  {
    dispatch_once(&_commandSetDataSeparatedDeviceEnrollment_once_once, block);
  }

  return _commandSetDataSeparatedDeviceEnrollment_once_commandSet;
}

uint64_t __58__MDMParser__commandSetDataSeparatedDeviceEnrollment_once__block_invoke(uint64_t a1)
{
  _commandSetDataSeparatedDeviceEnrollment_once_commandSet = [*(a1 + 32) _commandSetDataSeparatedDeviceEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetUserEnrollment
{
  v11[20] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v11[0] = @"DeviceInformation";
  v11[1] = @"InstallApplication";
  v11[2] = @"InstalledApplicationList";
  v11[3] = @"InstallProfile";
  v11[4] = @"InstallProvisioningProfile";
  v11[5] = @"ManagedApplicationAttributes";
  v11[6] = @"ManagedApplicationConfiguration";
  v11[7] = @"ManagedApplicationFeedback";
  v11[8] = @"ManagedApplicationList";
  v11[9] = @"ProfileList";
  v11[10] = @"ProvisioningProfileList";
  v11[11] = @"RemoveApplication";
  v11[12] = @"RemoveProfile";
  v11[13] = @"RemoveProvisioningProfile";
  v11[14] = @"SecurityInfo";
  v11[15] = @"Settings";
  v11[16] = @"ValidateApplications";
  v11[17] = @"CertificateList";
  v11[18] = @"DeclarativeManagement";
  v11[19] = @"DeviceLock";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:20];
  v5 = [v3 setWithArray:v4];

  if (-[MDMParser _platformSupportsMediaCommands](self, "_platformSupportsMediaCommands") || [MEMORY[0x277D03500] forceMediaCommandSupport])
  {
    v10[0] = @"InstallMedia";
    v10[1] = @"ManagedMediaList";
    v10[2] = @"RemoveMedia";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    [v5 addObjectsFromArray:v6];
  }

  if ([(MDMParser *)self _platformSupportsMirroring])
  {
    v9 = @"RequestMirroring";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (id)_commandSetUserEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MDMParser__commandSetUserEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetUserEnrollment_once_once != -1)
  {
    dispatch_once(&_commandSetUserEnrollment_once_once, block);
  }

  return _commandSetUserEnrollment_once_commandSet;
}

uint64_t __43__MDMParser__commandSetUserEnrollment_once__block_invoke(uint64_t a1)
{
  _commandSetUserEnrollment_once_commandSet = [*(a1 + 32) _commandSetUserEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetSharediPad
{
  v10[3] = *MEMORY[0x277D85DE8];
  _commandSetSupervised = [(MDMParser *)self _commandSetSupervised];
  v3 = [_commandSetSupervised mutableCopy];

  v10[0] = @"UserList";
  v10[1] = @"LogOutUser";
  v10[2] = @"DeleteUser";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v5 = MEMORY[0x277CBEB98];
  v9[0] = @"ApplyRedemptionCode";
  v9[1] = @"ClearPasscode";
  v9[2] = @"ActivationLockBypassCode";
  v9[3] = @"ClearActivationLockBypassCode";
  v9[4] = @"ClearRestrictionsPassword";
  v9[5] = @"InviteToProgram";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
  v7 = [v5 setWithArray:v6];

  [v3 addObjectsFromArray:v4];
  [v3 minusSet:v7];

  return v3;
}

- (id)_commandSetSharediPad_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDMParser__commandSetSharediPad_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetSharediPad_once_once != -1)
  {
    dispatch_once(&_commandSetSharediPad_once_once, block);
  }

  return _commandSetSharediPad_once_commandSet;
}

uint64_t __39__MDMParser__commandSetSharediPad_once__block_invoke(uint64_t a1)
{
  _commandSetSharediPad_once_commandSet = [*(a1 + 32) _commandSetSharediPad];

  return MEMORY[0x2821F96F8]();
}

- (id)_allCommands
{
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  if ([mEMORY[0x277D24640] userMode] == 1)
  {
  }

  else
  {
    isSharediPad = [MEMORY[0x277D03538] isSharediPad];

    if ((isSharediPad & 1) == 0)
    {
      mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
      isSupervised = [mEMORY[0x277D24640]2 isSupervised];

      if (isSupervised)
      {
        _commandSetSupervised_once = [(MDMParser *)self _commandSetSupervised_once];
      }

      else
      {
        mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
        isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

        if (isUserEnrollment)
        {
          _commandSetSupervised_once = [(MDMParser *)self _commandSetUserEnrollment_once];
        }

        else
        {
          mEMORY[0x277D24648]2 = [MEMORY[0x277D24648] sharedConfiguration];
          personaID = [mEMORY[0x277D24648]2 personaID];

          if (personaID)
          {
            [(MDMParser *)self _commandSetDataSeparatedDeviceEnrollment_once];
          }

          else
          {
            [(MDMParser *)self _commandSetDeviceEnrollment_once];
          }
          _commandSetSupervised_once = ;
        }
      }

      goto LABEL_5;
    }
  }

  _commandSetSupervised_once = [(MDMParser *)self _commandSetSharediPad_once];
LABEL_5:

  return _commandSetSupervised_once;
}

- (id)_unblockableCommands
{
  if (_unblockableCommands_once != -1)
  {
    [MDMParser _unblockableCommands];
  }

  v3 = _unblockableCommands_commandSet;

  return v3;
}

void __33__MDMParser__unblockableCommands__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"DeviceInformation";
  v4[1] = @"EraseDevice";
  v4[2] = @"InstalledApplicationList";
  v4[3] = @"ProfileList";
  v4[4] = @"ProvisioningProfileList";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = _unblockableCommands_commandSet;
  _unblockableCommands_commandSet = v2;
}

- (id)_ephemeralSupervisedSettingsSet
{
  v6[5] = *MEMORY[0x277D85DE8];
  _supervisedSettingsSet = [(MDMParser *)self _supervisedSettingsSet];
  v3 = [_supervisedSettingsSet mutableCopy];

  v6[0] = @"MaximumResidentUsers";
  v6[1] = @"SharedDeviceConfiguration";
  v6[2] = @"DiagnosticSubmission";
  v6[3] = @"AppAnalytics";
  v6[4] = @"PasscodeLockGracePeriod";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  [v3 addObjectsFromArray:v4];

  [v3 removeObject:@"AccessibilitySettings"];
  [v3 removeObject:@"DefaultApplications"];

  return v3;
}

- (id)_supervisedSettingsSet
{
  v22 = *MEMORY[0x277D85DE8];
  _nonSupervisedSettingsSet = [(MDMParser *)self _nonSupervisedSettingsSet];
  v3 = [_nonSupervisedSettingsSet mutableCopy];

  if ([MEMORY[0x277D03530] isAppleTV])
  {
    v20 = @"DeviceName";
    v21 = @"TimeZone";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v20;
    v6 = 2;
LABEL_8:
    v7 = [v4 arrayWithObjects:v5 count:{v6, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
    [v3 addObjectsFromArray:v7];

    goto LABEL_9;
  }

  if ([MEMORY[0x277D03530] isWatch])
  {
    v19 = @"AccessibilitySettings";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v19;
    v6 = 1;
    goto LABEL_8;
  }

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isPad"))
  {
    v12 = @"AccessibilitySettings";
    v13 = @"DeviceName";
    v14 = @"TimeZone";
    v15 = @"Bluetooth";
    v16 = @"SharedDeviceConfiguration";
    v17 = @"SoftwareUpdateSettings";
    v18 = @"Wallpaper";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v12;
    v6 = 7;
    goto LABEL_8;
  }

  if ([MEMORY[0x277D03530] isVisionDevice])
  {
    v9 = @"DeviceName";
    v10 = @"TimeZone";
    v11 = @"SharedDeviceConfiguration";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v9;
    v6 = 3;
    goto LABEL_8;
  }

LABEL_9:

  return v3;
}

- (id)_nonSupervisedSettingsSetWithUserEnrollment
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v6[0] = @"ApplicationAttributes";
  v6[1] = @"ApplicationConfiguration";
  v6[2] = @"OrganizationInfo";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_nonSupervisedSettingsSet
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v12[0] = @"OrganizationInfo";
  v12[1] = @"ApplicationAttributes";
  v12[2] = @"ApplicationConfiguration";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v4 = [v2 setWithArray:v3];

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isPad") & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isAppleTV") & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    v11 = @"MDMOptions";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v4 addObjectsFromArray:v5];
  }

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isPad") & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    v10 = @"DefaultApplications";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [v4 addObjectsFromArray:v6];
  }

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isPad"))
  {
    v9[0] = @"DataRoaming";
    v9[1] = @"VoiceRoaming";
    v9[2] = @"PersonalHotspot";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    [v4 addObjectsFromArray:v7];
  }

  return v4;
}

- (id)_ephemeralSupervisedSettingsSet_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MDMParser__ephemeralSupervisedSettingsSet_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_ephemeralSupervisedSettingsSet_once_once != -1)
  {
    dispatch_once(&_ephemeralSupervisedSettingsSet_once_once, block);
  }

  return _ephemeralSupervisedSettingsSet_once_commandSet;
}

uint64_t __49__MDMParser__ephemeralSupervisedSettingsSet_once__block_invoke(uint64_t a1)
{
  _ephemeralSupervisedSettingsSet_once_commandSet = [*(a1 + 32) _ephemeralSupervisedSettingsSet];

  return MEMORY[0x2821F96F8]();
}

- (id)_supervisedSettingsSet_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MDMParser__supervisedSettingsSet_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_supervisedSettingsSet_once_once != -1)
  {
    dispatch_once(&_supervisedSettingsSet_once_once, block);
  }

  return _supervisedSettingsSet_once_commandSet;
}

uint64_t __40__MDMParser__supervisedSettingsSet_once__block_invoke(uint64_t a1)
{
  _supervisedSettingsSet_once_commandSet = [*(a1 + 32) _supervisedSettingsSet];

  return MEMORY[0x2821F96F8]();
}

- (id)_nonSupervisedSettingsSetWithUserEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MDMParser__nonSupervisedSettingsSetWithUserEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_nonSupervisedSettingsSetWithUserEnrollment_once_once != -1)
  {
    dispatch_once(&_nonSupervisedSettingsSetWithUserEnrollment_once_once, block);
  }

  return _nonSupervisedSettingsSetWithUserEnrollment_once_commandSet;
}

uint64_t __61__MDMParser__nonSupervisedSettingsSetWithUserEnrollment_once__block_invoke(uint64_t a1)
{
  _nonSupervisedSettingsSetWithUserEnrollment_once_commandSet = [*(a1 + 32) _nonSupervisedSettingsSetWithUserEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_nonSupervisedSettingsSet_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MDMParser__nonSupervisedSettingsSet_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_nonSupervisedSettingsSet_once_once != -1)
  {
    dispatch_once(&_nonSupervisedSettingsSet_once_once, block);
  }

  return _nonSupervisedSettingsSet_once_commandSet;
}

uint64_t __43__MDMParser__nonSupervisedSettingsSet_once__block_invoke(uint64_t a1)
{
  _nonSupervisedSettingsSet_once_commandSet = [*(a1 + 32) _nonSupervisedSettingsSet];

  return MEMORY[0x2821F96F8]();
}

- (id)_allSettingsItems
{
  if ([(MDMParser *)self isChaperoned])
  {
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    if ([mEMORY[0x277D24640] userMode] == 1)
    {
      [(MDMParser *)self _ephemeralSupervisedSettingsSet_once];
    }

    else
    {
      [(MDMParser *)self _supervisedSettingsSet_once];
    }
    v6 = ;
  }

  else
  {
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

    if (isUserEnrollment)
    {
      [(MDMParser *)self _nonSupervisedSettingsSetWithUserEnrollment_once];
    }

    else
    {
      [(MDMParser *)self _nonSupervisedSettingsSet_once];
    }
    v6 = ;
  }

  return v6;
}

- (void)processRequest:(id)request accessRights:(unint64_t)rights assertion:(id)assertion completionBlock:(id)block
{
  v104 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  assertionCopy = assertion;
  blockCopy = block;
  v12 = [requestCopy objectForKey:@"RequestType"];
  v99 = [requestCopy objectForKey:@"RequestRequiresNetworkTether"];
  v13 = MDMDirtyEnrollmentStateFilePath();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager fileExistsAtPath:v13];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277D03198]);
    v17 = [MEMORY[0x277CBEAC0] DMCDictionaryFromFile:v13];
    v18 = [v16 initWithDictionary:v17];
  }

  else
  {
    v18 = 0;
  }

  objc_opt_class();
  v19 = v99;
  if ((objc_opt_isKindOfClass() & 1) == 0 || v99 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_80;
  }

  v97 = v18;
  _allCommands = [(MDMParser *)self _allCommands];
  v21 = [_allCommands containsObject:v12];

  if (v21)
  {
    if ([(MDMParser *)self isMDMCommandBlocked])
    {
      _unblockableCommands = [(MDMParser *)self _unblockableCommands];
      v23 = [_unblockableCommands containsObject:v12];

      if ((v23 & 1) == 0)
      {
        v33 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v34 = "MDM command is being blocked...";
          goto LABEL_34;
        }

LABEL_35:
        v43 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_36:
        v27 = v43;
        goto LABEL_79;
      }
    }

    _unavailableCommandsWhileLocked = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(_unavailableCommandsWhileLocked, OS_LOG_TYPE_DEFAULT))
    {
      _unavailableCommandsWhileLocked = _unavailableCommandsWhileLocked;
      isChaperoned = [(MDMParser *)self isChaperoned];
      v26 = @"MDM";
      if (isChaperoned)
      {
        v26 = @"Supervised";
      }

      *buf = 138543618;
      v101 = v26;
      v102 = 2114;
      v103 = v12;
      _os_log_impl(&dword_2561F5000, _unavailableCommandsWhileLocked, OS_LOG_TYPE_DEFAULT, "Attempting to perform %{public}@ request: %{public}@", buf, 0x16u);
    }

    if (([v12 isEqualToString:{@"ClearPasscode", assertionCopy}] & 1) == 0)
    {
      _unavailableCommandsWhileLocked = [requestCopy objectForKey:@"UnlockToken"];

      if (_unavailableCommandsWhileLocked)
      {
        v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
        assertionCopy = v96;
        v18 = v97;
        goto LABEL_80;
      }
    }

    v30 = MKBGetDeviceLockState();
    v31 = v30;
    v32 = 0;
    if (v30 && v30 != 3)
    {
      _unavailableCommandsWhileLocked = [(MDMParser *)self _unavailableCommandsWhileLocked];
      v32 = [_unavailableCommandsWhileLocked containsObject:v12];
    }

    if (v31 && v31 != 3)
    {
    }

    if (v32)
    {
      v33 = *(DMCLogObjects() + 8);
      assertionCopy = v96;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v34 = "Device is locked";
LABEL_34:
        _os_log_impl(&dword_2561F5000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    dirtyPersonaIDs = [v97 dirtyPersonaIDs];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    personaID = [mEMORY[0x277D24648] personaID];
    v38 = [dirtyPersonaIDs containsObject:personaID];

    if (v38)
    {
      _unavailableCommandsDuringIncompleteAccountDrivenEnrollment = [(MDMParser *)self _unavailableCommandsDuringIncompleteAccountDrivenEnrollment];
      v40 = [_unavailableCommandsDuringIncompleteAccountDrivenEnrollment containsObject:v12];

      if (v40)
      {
        v41 = *(DMCLogObjects() + 8);
        assertionCopy = v96;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = "Account Driven Enrollment is not done yet";
LABEL_53:
          _os_log_impl(&dword_2561F5000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
          goto LABEL_54;
        }

        goto LABEL_54;
      }
    }

    v44 = MKBDeviceUnlockedSinceBoot();
    assertionCopy = v96;
    if (v44 != 1)
    {
      v45 = v44;
      if (v44)
      {
        v48 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v101) = v45;
          _os_log_impl(&dword_2561F5000, v48, OS_LOG_TYPE_ERROR, "MKB returned error for device unlocked since boot: %d", buf, 8u);
        }
      }

      else
      {
        _unavailableCommandsBeforeFirstUnlock = [(MDMParser *)self _unavailableCommandsBeforeFirstUnlock];
        v47 = [_unavailableCommandsBeforeFirstUnlock containsObject:v12];

        if (v47)
        {
          v41 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v42 = "Device has not unlocked since boot";
            goto LABEL_53;
          }

LABEL_54:
          v55 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_55:
          v27 = v55;
LABEL_78:
          v19 = v99;
          goto LABEL_79;
        }
      }
    }

    if (+[MDMMCInterface isLimitedAppsMode])
    {
      _unavailableCommandsInLimitedAppsMode = [(MDMParser *)self _unavailableCommandsInLimitedAppsMode];
      v50 = [_unavailableCommandsInLimitedAppsMode containsObject:v12];

      if (v50)
      {
        v51 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v51, OS_LOG_TYPE_DEFAULT, "Device is in a limited apps mode", buf, 2u);
        }

        _notNetworkTetheredError = [(MDMParser *)self _invalidRequestTypeInSingleAppModeError:v12];
LABEL_77:
        v65 = _notNetworkTetheredError;
        v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:_notNetworkTetheredError];

        goto LABEL_78;
      }
    }

    if ((DMCIsSetupBuddyDone() & 1) == 0)
    {
      unavailableCommandsDuringBuddy = [(MDMParser *)self unavailableCommandsDuringBuddy];
      v54 = [unavailableCommandsDuringBuddy containsObject:v12];

      if (v54)
      {
        v41 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = "Device is in Setup Assistant";
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    if (+[MDMFindMyUtilities isManagedLostModeActive])
    {
      unavailableCommandsWhileInMDMLostMode = [(MDMParser *)self unavailableCommandsWhileInMDMLostMode];
      v57 = [unavailableCommandsWhileInMDMLostMode containsObject:v12];

      if (v57)
      {
        v58 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v58, OS_LOG_TYPE_DEFAULT, "Device is in MDM Lost Mode", buf, 2u);
        }

        allowedDeviceQueriesWithUserEnrollment = [(MDMParser *)self _invalidRequestTypeInMDMLostModeError:v12];
        v60 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:allowedDeviceQueriesWithUserEnrollment];
        goto LABEL_69;
      }
    }

    v19 = v99;
    if (v99 && [v99 BOOLValue])
    {
      v61 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v61, OS_LOG_TYPE_DEFAULT, "Request requires network tether", buf, 2u);
      }

      if ((DMCDeviceIsNetworkTethered() & 1) == 0)
      {
        v64 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v64, OS_LOG_TYPE_ERROR, "No network tether was found. Failing command.", buf, 2u);
        }

        _notNetworkTetheredError = [(MDMParser *)self _notNetworkTetheredError];
        goto LABEL_77;
      }
    }

    if ([v12 isEqualToString:@"DeviceInformation"])
    {
      mEMORY[0x277D24648]2 = [MEMORY[0x277D24648] sharedConfiguration];
      isUserEnrollment = [mEMORY[0x277D24648]2 isUserEnrollment];

      if (!isUserEnrollment)
      {
        v55 = [(MDMParser *)self _deviceInformationWithRequest:requestCopy accessRights:rights];
        goto LABEL_55;
      }

      allowedDeviceQueriesWithUserEnrollment = [MEMORY[0x277D24658] allowedDeviceQueriesWithUserEnrollment];
      v60 = [(MDMParser *)self _deviceInformationWithRequest:requestCopy allowedQueries:allowedDeviceQueriesWithUserEnrollment];
LABEL_69:
      v27 = v60;

      goto LABEL_78;
    }

    if (([v12 isEqualToString:@"InstallProfile"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"InstallProfileSilent"))
    {
      v43 = [(MDMParser *)self _installProfile:requestCopy accessRights:rights];
      goto LABEL_36;
    }

    if (!-[MDMParser isChaperoned](self, "isChaperoned") && self->_managingProfileIdentifier && [v12 isEqualToString:@"RemoveProfile"])
    {
      v66 = [requestCopy objectForKey:@"Identifier"];
      if (v66)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v66 isEqualToString:self->_managingProfileIdentifier])
          {
            WeakRetained = objc_loadWeakRetained(&self->_server);

            if (WeakRetained)
            {
              v68 = objc_loadWeakRetained(&self->_server);
              v69 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
              v70 = [v68 responseFromBasicResponse:v69];
              v71 = [v68 sendResponseSynchronously:v70 outStatusCode:0 outError:0];
            }

            v72 = [(MDMParser *)self _removeProfile:requestCopy];
          }
        }
      }

      assertionCopy = v96;
    }

    mEMORY[0x277D24648]3 = [MEMORY[0x277D24648] sharedConfiguration];
    isUserEnrollment2 = [mEMORY[0x277D24648]3 isUserEnrollment];

    if (isUserEnrollment2)
    {
      goto LABEL_94;
    }

    v18 = v97;
    rightsCopy2 = rights;
    if ([(MDMParser *)self isChaperoned])
    {
      rightsCopy2 = 0x1FFFLL;
LABEL_97:
      v19 = v99;
      goto LABEL_100;
    }

    v76 = [v12 isEqualToString:@"ProfileList"];
    v19 = v99;
    if ((rights & 1) != 0 && v76)
    {
      goto LABEL_100;
    }

    if ([v12 isEqualToString:@"InstallProfile"])
    {
      if ((rights & 2) != 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v77 = [v12 isEqualToString:@"RemoveProfile"];
      if (rights & 2) != 0 && (v77)
      {
        goto LABEL_100;
      }
    }

    v78 = [v12 isEqualToString:@"DeviceLock"];
    if ((rights & 4) != 0 && v78)
    {
      assertionCopy = v96;
      v18 = v97;
      goto LABEL_97;
    }

    v79 = [v12 isEqualToString:@"RequestUnlockToken"];
    if ((rights & 4) == 0 || !v79)
    {
      v80 = [v12 isEqualToString:@"ClearPasscode"];
      if ((rights & 4) == 0 || !v80)
      {
        v81 = [v12 isEqualToString:@"RestartDevice"];
        if ((rights & 4) == 0 || !v81)
        {
          v82 = [v12 isEqualToString:@"ShutDownDevice"];
          if ((rights & 4) == 0 || !v82)
          {
            v83 = [v12 isEqualToString:@"EraseDevice"];
            if ((rights & 8) == 0 || (v83 & 1) == 0)
            {
              v84 = [v12 isEqualToString:@"CertificateList"];
              if ((rights & 1) == 0 || !v84)
              {
                v85 = [v12 isEqualToString:@"ProvisioningProfileList"];
                if ((rights & 0x40) == 0 || (v85 & 1) == 0)
                {
                  v86 = [v12 isEqualToString:@"InstallProvisioningProfile"];
                  if ((rights & 0x80) == 0 || !v86)
                  {
                    v87 = [v12 isEqualToString:@"RemoveProvisioningProfile"];
                    if ((rights & 0x80) == 0 || !v87)
                    {
                      v88 = [v12 isEqualToString:@"InstalledApplicationList"];
                      if ((rights & 0x100) == 0 || (v88 & 1) == 0)
                      {
                        v89 = [v12 isEqualToString:@"Restrictions"];
                        if ((rights & 0x200) != 0 && v89)
                        {
                          if ((rights & 0x40) == 0)
                          {
                            v90 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:requestCopy];
                            [v90 removeObjectForKey:@"ProfileRestrictions"];

                            requestCopy = v90;
                          }

                          goto LABEL_129;
                        }

                        v91 = [v12 isEqualToString:@"SecurityInfo"];
                        if ((rights & 0x400) == 0 || (v91 & 1) == 0)
                        {
                          v92 = [v12 isEqualToString:@"Settings"];
                          if ((rights & 0x800) == 0 || (v92 & 1) == 0)
                          {
                            v93 = [v12 isEqualToString:@"InviteToProgram"];
                            if ((rights & 0x1000) == 0 || !v93)
                            {
                              if ([v12 isEqualToString:@"InstallApplication"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ValidateApplications") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ApplyRedemptionCode") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationList") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RemoveApplication") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationConfiguration") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationAttributes") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationFeedback") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"InstallMedia") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedMediaList") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RemoveMedia") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"AvailableOSUpdates") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"OSUpdateStatus") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ScheduleOSUpdate"))
                              {
                                if ((rights & 0x1000) == 0)
                                {
                                  goto LABEL_155;
                                }
                              }

                              else
                              {
                                v95 = [v12 isEqualToString:@"ScheduleOSUpdateScan"];
                                if ((rights & 0x1000) == 0 || !v95)
                                {
LABEL_155:
                                  if (([v12 isEqualToString:@"RequestMirroring"] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"RefreshCellularPlans") & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"DeclarativeManagement") & 1) == 0)
                                  {
                                    _notAuthorizedError = [(MDMParser *)self _notAuthorizedError];
                                    v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:_notAuthorizedError];

                                    assertionCopy = v96;
                                    goto LABEL_78;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_129:
    assertionCopy = v96;
LABEL_94:
    rightsCopy2 = rights;
    v19 = v99;
    v18 = v97;
LABEL_100:
    [(MDMParser *)self _processRequest:requestCopy accessRights:rightsCopy2 assertion:assertionCopy completionBlock:blockCopy];
    v27 = 0;
    goto LABEL_82;
  }

  [(MDMParser *)self _invalidRequestTypeError:v12];
  v29 = v28 = assertionCopy;
  v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v29];

  assertionCopy = v28;
LABEL_79:
  v18 = v97;
LABEL_80:
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:requestCopy response:v27];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v27);
  }

LABEL_82:
}

- (void)_processRequest:(id)request accessRights:(unint64_t)rights assertion:(id)assertion completionBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  assertionCopy = assertion;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C3F8;
  v13 = blockCopy;
  v45 = v13;
  v14 = assertionCopy;
  v44 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [requestCopy objectForKey:@"RequestType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = v16;
      _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "Handling request type: %{public}@", buf, 0xCu);
    }

    v18 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = v18;
      dMCShortenedPlistDescription = [requestCopy DMCShortenedPlistDescription];
      *buf = 138543362;
      v47 = dMCShortenedPlistDescription;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEBUG, "Handling request: %{public}@", buf, 0xCu);
    }

    v21 = [MDMRequestClasses classForRequestType:v16];
    if ([(objc_class *)v21 isSubclassOfClass:objc_opt_class()])
    {
      v42 = 0;
      v22 = [(objc_class *)v21 load:requestCopy serializationType:0 error:&v42];
      v23 = v42;
      if (v22)
      {
        WeakRetained = objc_loadWeakRetained(&self->_server);
        [v22 setChannelType:{objc_msgSend(WeakRetained, "channelType")}];

        [v22 setDelegate:self];
        [v22 setAccessRights:rights];
        mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
        [v22 setIsUserEnrollment:{objc_msgSend(mEMORY[0x277D24648], "isUserEnrollment")}];

        v41 = v23;
        LOBYTE(WeakRetained) = [v22 isRequestAllowedWithError:&v41];
        v26 = v41;

        if (WeakRetained)
        {
          if ([v22 shouldBlockUserSwitch])
          {
            v27 = _Block_copy(v15);

            v13 = v27;
          }

          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke_980;
          v38[3] = &unk_27982C420;
          v38[4] = self;
          v39 = requestCopy;
          v13 = v13;
          v40 = v13;
          [v22 processRequest:v39 completionHandler:v38];

          goto LABEL_24;
        }

        v32 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v26];
        v23 = v26;
      }

      else
      {
        v31 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v47 = v23;
          _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_ERROR, "Malformed command %{public}@.", buf, 0xCu);
        }

        v32 = +[MDMParser malformedRequestErrorResult];
      }

      (*(v13 + 2))(v13, v32);

LABEL_24:
      v29 = 0;
      goto LABEL_25;
    }

    if ([v16 isEqualToString:@"ClearPasscode"])
    {
      v28 = [(MDMParser *)self _clearPasscode:requestCopy];
    }

    else if ([v16 isEqualToString:@"RequestUnlockToken"])
    {
      v28 = [(MDMParser *)self _requestUnlockToken:requestCopy];
    }

    else if ([v16 isEqualToString:@"ProfileList"])
    {
      v28 = [(MDMParser *)self _profileList:requestCopy];
    }

    else if ([v16 isEqualToString:@"CertificateList"])
    {
      v28 = [(MDMParser *)self _certificateList:requestCopy];
    }

    else if ([v16 isEqualToString:@"RemoveProfile"])
    {
      v28 = [(MDMParser *)self _removeProfile:requestCopy];
    }

    else if ([v16 isEqualToString:@"ProvisioningProfileList"])
    {
      v28 = [(MDMParser *)self _provisioningProfileList:requestCopy];
    }

    else if ([v16 isEqualToString:@"InstallProvisioningProfile"])
    {
      v28 = [(MDMParser *)self _installProvisioningProfile:requestCopy];
    }

    else if ([v16 isEqualToString:@"RemoveProvisioningProfile"])
    {
      v28 = [(MDMParser *)self _removeProvisioningProfile:requestCopy];
    }

    else if ([v16 isEqualToString:@"InstalledApplicationList"])
    {
      v28 = [(MDMParser *)self _installedApplicationList:requestCopy];
    }

    else if ([v16 isEqualToString:@"Restrictions"])
    {
      v28 = [(MDMParser *)self _restrictions:requestCopy];
    }

    else if ([v16 isEqualToString:@"Settings"])
    {
      v28 = [(MDMParser *)self _settings:requestCopy accessRights:rights];
    }

    else
    {
      if ([v16 isEqualToString:@"InstallApplication"])
      {
        [(MDMParser *)self _installApplication:requestCopy assertion:v14 completionBlock:v15];
        goto LABEL_24;
      }

      if ([v16 isEqualToString:@"ValidateApplications"])
      {
        v28 = [(MDMParser *)self _validateApplications:requestCopy];
      }

      else if ([v16 isEqualToString:@"ApplyRedemptionCode"])
      {
        v28 = [(MDMParser *)self _applyRedemptionCode:requestCopy assertion:v14];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationList"])
      {
        v28 = [(MDMParser *)self _managedApplicationList:requestCopy];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationConfiguration"])
      {
        v28 = [(MDMParser *)self _managedApplicationConfiguration:requestCopy];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationAttributes"])
      {
        v28 = [(MDMParser *)self _managedApplicationAttributes:requestCopy];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationFeedback"])
      {
        v28 = [(MDMParser *)self _managedApplicationFeedback:requestCopy];
      }

      else if ([v16 isEqualToString:@"RemoveApplication"])
      {
        v28 = [(MDMParser *)self _removeApplication:requestCopy];
      }

      else
      {
        if ([v16 isEqualToString:@"RequestMirroring"])
        {
          [(MDMParser *)self _requestMirroringRequest:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"StopMirroring"])
        {
          [(MDMParser *)self _stopMirroringRequest:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"InviteToProgram"])
        {
          [(MDMParser *)self _inviteToProgramRequest:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ActivationLockBypassCode"])
        {
          [(MDMParser *)self _activationLockBypassCodeRequest:requestCopy completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ClearActivationLockBypassCode"])
        {
          [(MDMParser *)self _clearActivationLockBypassCodeRequest:requestCopy completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"InstallMedia"])
        {
          [(MDMParser *)self _installMedia:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ManagedMediaList"])
        {
          [(MDMParser *)self _managedMediaList:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"RemoveMedia"])
        {
          [(MDMParser *)self _removeMedia:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"DeviceConfigured"])
        {
          [(MDMParser *)self _deviceConfigured:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"UserConfigured"])
        {
          [(MDMParser *)self _userConfigured:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ScheduleOSUpdate"])
        {
          [(MDMParser *)self _scheduleOSUpdate:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ScheduleOSUpdateScan"])
        {
          [(MDMParser *)self _scheduleOSUpdateScan:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"AvailableOSUpdates"])
        {
          [(MDMParser *)self _availableOSUpdates:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"OSUpdateStatus"])
        {
          [(MDMParser *)self _statusOfOSUpdates:requestCopy assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"DeleteUser"])
        {
          v28 = [(MDMParser *)self _deleteUser:requestCopy];
        }

        else if ([v16 isEqualToString:@"DeclarativeManagement"])
        {
          v28 = [(MDMParser *)self _declarativeManagement:requestCopy];
        }

        else
        {
          if (![v16 isEqualToString:@"RefreshCellularPlans"])
          {
            v37.receiver = self;
            v37.super_class = MDMParser;
            [(MDMAbstractTunnelParser *)&v37 processRequest:requestCopy assertion:v14 completionBlock:v15];
            goto LABEL_24;
          }

          v28 = [(MDMParser *)self _refreshCellularPlans:requestCopy];
        }
      }
    }
  }

  else
  {
    v28 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }

  v29 = v28;
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:requestCopy response:v28];
  if (v13)
  {
    v30 = dispatch_get_global_queue(0, 0);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke_2;
    v33[3] = &unk_27982C448;
    v13 = v13;
    v36 = v13;
    v29 = v29;
    v34 = v29;
    v35 = v14;
    dispatch_async(v30, v33);
  }

LABEL_25:
}

uint64_t __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke_980(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)willTerminateProcess:(id)process
{
  processCopy = process;
  WeakRetained = objc_loadWeakRetained(&self->_server);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_server);
    v6 = [v5 responseFromBasicResponse:processCopy];
    v7 = [v5 sendResponseSynchronously:v6 outStatusCode:0 outError:0];
  }
}

- (void)didInitiateSwitchUser
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  [WeakRetained setUserSwitchAlreadyInitiated:1];
}

- (id)_profileList:(id)list filterFlags:(int)flags
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [list objectForKeyedSubscript:@"ManagedOnly"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = +[MDMParser malformedRequestErrorResult];
  }

  else
  {
    bOOLValue = [v5 BOOLValue];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

    if ((isUserEnrollment | bOOLValue))
    {
      flagsCopy = flags | 0x20u;
    }

    else
    {
      flagsCopy = flags;
    }

    v10 = [MDMMCInterface profileListWithFilterFlags:flagsCopy];
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_INFO, "Returning profile array: %{public}@", buf, 0xCu);
    }

    v12 = *MEMORY[0x277D24C40];
    v15[0] = @"Status";
    v15[1] = v12;
    v16[0] = @"Acknowledged";
    v16[1] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  return v13;
}

- (id)_originator
{
  server = [(MDMParser *)self server];
  organizationName = [server organizationName];
  v5 = organizationName;
  if (organizationName)
  {
    v6 = organizationName;
  }

  else
  {
    server2 = [(MDMParser *)self server];
    serverName = [server2 serverName];
    v6 = DMCLocalizedFormat();
  }

  return v6;
}

- (id)_clearPasscode:(id)passcode
{
  v3 = [passcode objectForKey:@"UnlockToken"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = MEMORY[0x277D03520];
    v5 = *MEMORY[0x277D24D00];
    v6 = *MEMORY[0x277D24800];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    v21 = 0;
    LOBYTE(v19) = [mEMORY[0x277D24648] isUserEnrollment];
    v8 = [v4 dataFromService:v5 account:v6 label:0 description:0 group:0 useSystemKeychain:0 enforcePersonalPersona:v19 outError:&v21];
    v9 = v21;

    v10 = [MEMORY[0x277D03520] stringFromServiceData:v8];
    v11 = v10;
    if (v9)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D03480];
      v14 = DMCErrorArray();
      v15 = [v12 DMCErrorWithDomain:v13 code:12019 descriptionArray:v14 underlyingError:v9 errorType:{*MEMORY[0x277D032F8], 0}];
    }

    else
    {
      v14 = [v10 dataUsingEncoding:4];
      v20 = 0;
      [MDMMCInterface clearPasscodeWithEscrowKeybagData:v3 secret:v14 outError:&v20];
      v15 = v20;
    }

    v17 = v15;

    if (v17)
    {
      [(MDMAbstractTunnelParser *)MDMParser responseWithError:v17];
    }

    else
    {
      [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    }
    v16 = ;
  }

  else
  {
    v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }

  return v16;
}

- (id)_deleteUser:(id)user
{
  userCopy = user;
  v5 = [userCopy objectForKeyedSubscript:@"ForceDeletion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [userCopy objectForKeyedSubscript:@"ForceDeletion"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [userCopy objectForKeyedSubscript:@"DeleteAllUsers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [userCopy objectForKeyedSubscript:@"DeleteAllUsers"];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 BOOLValue])
  {
    v9 = -[MDMParser _deleteAllUsersWithForceDeletion:](self, "_deleteAllUsersWithForceDeletion:", [v6 BOOLValue]);
LABEL_19:
    v13 = v9;
    goto LABEL_20;
  }

  v10 = [userCopy objectForKeyedSubscript:@"UserName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_18;
  }

  v11 = [userCopy objectForKeyedSubscript:@"UserName"];

  if (!v11)
  {
LABEL_18:
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_19;
  }

  v12 = objc_opt_new();
  [v12 setUsername:v11];
  [v12 setForceDeletion:{objc_msgSend(v6, "BOOLValue")}];
  v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v26 = 0;
  v15 = [systemConnection performRequest:v12 error:&v26];
  v16 = v26;

  if (v16)
  {
    code = [v16 code];
    if (code <= 1801)
    {
      if (code == 1700)
      {
        v18 = 12070;
        goto LABEL_29;
      }

      if (code == 1801)
      {
        v18 = 12072;
        goto LABEL_29;
      }
    }

    else
    {
      switch(code)
      {
        case 1802:
          v18 = 12071;
          goto LABEL_29;
        case 1803:
          v18 = 12073;
          goto LABEL_29;
        case 1804:
          v18 = 12074;
LABEL_29:
          v25 = v18;
          v20 = MEMORY[0x277CCA9B8];
          v21 = *MEMORY[0x277D03480];
          v22 = DMCErrorArray();
          v23 = [v20 DMCErrorWithDomain:v21 code:v25 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], 0}];

          v16 = v23;
          break;
      }
    }

    v24 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v16];

    v13 = v24;
  }

LABEL_20:

  return v13;
}

- (id)_deleteAllUsersWithForceDeletion:(BOOL)deletion
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all users...", buf, 2u);
  }

  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  allUsers = [mEMORY[0x277D77BF8] allUsers];
  v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = allUsers;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        username = [v11 username];
        v13 = username;
        if (username)
        {
          v14 = username;
        }

        else
        {
          v14 = @"Unknown";
        }

        v15 = v14;

        currentUser = [mEMORY[0x277D77BF8] currentUser];
        v17 = [currentUser isEqualToUser:v11];

        if (v17)
        {
          goto LABEL_16;
        }

        if ([v11 hasDataToSync] && !deletion)
        {
          v18 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v11;
            _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "User %{public}@ has data to sync.", buf, 0xCu);
          }

LABEL_16:
          v19 = DMCLocalizedString();
          [dictionary setObject:v19 forKeyedSubscript:v15];
          goto LABEL_18;
        }

        v20 = dispatch_semaphore_create(0);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __46__MDMParser__deleteAllUsersWithForceDeletion___block_invoke;
        v30[3] = &unk_27982C470;
        v30[4] = v11;
        v31 = dictionary;
        v32 = v15;
        v33 = v20;
        v19 = v20;
        [mEMORY[0x277D77BF8] deleteUser:v11 completionHandler:v30];
        dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);

LABEL_18:
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  if ([dictionary count])
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D03480];
    v23 = DMCErrorArray();
    v24 = [v21 DMCErrorWithDomain:v22 code:12074 descriptionArray:v23 errorType:{*MEMORY[0x277D032F8], dictionary, 0}];

    v25 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v24];
  }

  else
  {
    v25 = v27;
  }

  return v25;
}

void __46__MDMParser__deleteAllUsersWithForceDeletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to delete user: %{public}@ with error: %{public}@", &v7, 0x16u);
    }

    v6 = DMCLocalizedString();
    [*(a1 + 40) setObject:v6 forKeyedSubscript:*(a1 + 48)];
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)_refreshCellularPlans:(id)plans
{
  v28 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v4 = [plansCopy objectForKeyedSubscript:@"eSIMServerURL"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v5 = [plansCopy objectForKeyedSubscript:@"eSIMServerURL"];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = v6;
  if (!v6)
  {
LABEL_14:
    v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_15;
  }

  scheme = [v6 scheme];
  if (![scheme isEqualToString:@"http"])
  {
    scheme2 = [v7 scheme];
    v10 = [scheme2 isEqualToString:@"https"];

    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_9:
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v7;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Refreshing available data plans from URL: %{public}@", buf, 0xCu);
  }

  v12 = objc_opt_new();
  v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [v12 setESIMServerURL:v7];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v25 = 0;
  v15 = [systemConnection performRequest:v12 error:&v25];
  v16 = v25;

  if (v16)
  {
    v17 = [v16 code] - 201;
    if (v17 > 3)
    {
      v18 = 36001;
    }

    else
    {
      v18 = qword_256252600[v17];
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D03480];
    v22 = DMCErrorArray();
    v23 = [v20 DMCErrorWithDomain:v21 code:v18 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], 0}];

    v24 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v23];

    v13 = v24;
  }

LABEL_15:

  return v13;
}

- (id)_declarativeManagement:(id)management
{
  v18 = *MEMORY[0x277D85DE8];
  managementCopy = management;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Processing DeclarativeManagement command", buf, 2u);
  }

  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  managingProfileIdentifier = self->_managingProfileIdentifier;
  v15 = 0;
  v8 = [MDMDeclarativeManagementCommand processRequestTypeWithProfileIdentifier:managingProfileIdentifier request:managementCopy error:&v15];

  v9 = v15;
  if (!v8)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      dMCVerboseDescription = [v9 DMCVerboseDescription];
      *buf = 138543362;
      v17 = dMCVerboseDescription;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_ERROR, "Failed to process DeclarativeManagement command with error: %{public}@", buf, 0xCu);
    }

    v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];

    v6 = v13;
  }

  return v6;
}

+ (id)_MCKeysToDMFKeys
{
  if (_MCKeysToDMFKeys_onceToken != -1)
  {
    +[MDMParser _MCKeysToDMFKeys];
  }

  v3 = _MCKeysToDMFKeys_MCKeysToDMFKeys;

  return v3;
}

void __29__MDMParser__MCKeysToDMFKeys__block_invoke()
{
  v81[53] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D04B08];
  v1 = *MEMORY[0x277D24BB0];
  v80[0] = *MEMORY[0x277D24B20];
  v80[1] = v1;
  v2 = *MEMORY[0x277D04B68];
  v81[0] = v0;
  v81[1] = v2;
  v3 = *MEMORY[0x277D04A28];
  v4 = *MEMORY[0x277D24A88];
  v80[2] = *MEMORY[0x277D249F8];
  v80[3] = v4;
  v5 = *MEMORY[0x277D04A80];
  v81[2] = v3;
  v81[3] = v5;
  v6 = *MEMORY[0x277D04998];
  v7 = *MEMORY[0x277D24BE0];
  v80[4] = *MEMORY[0x277D249A0];
  v80[5] = v7;
  v8 = *MEMORY[0x277D04BC0];
  v81[4] = v6;
  v81[5] = v8;
  v9 = *MEMORY[0x277D04BB8];
  v10 = *MEMORY[0x277D24A00];
  v80[6] = *MEMORY[0x277D24BD8];
  v80[7] = v10;
  v11 = *MEMORY[0x277D04AB8];
  v81[6] = v9;
  v81[7] = v11;
  v12 = *MEMORY[0x277D04AA8];
  v13 = *MEMORY[0x277D24B00];
  v80[8] = *MEMORY[0x277D24AC0];
  v80[9] = v13;
  v14 = *MEMORY[0x277D04AF0];
  v81[8] = v12;
  v81[9] = v14;
  v15 = *MEMORY[0x277D049B8];
  v16 = *MEMORY[0x277D24998];
  v80[10] = *MEMORY[0x277D249F0];
  v80[11] = v16;
  v17 = *MEMORY[0x277D04990];
  v81[10] = v15;
  v81[11] = v17;
  v18 = *MEMORY[0x277D049C8];
  v19 = *MEMORY[0x277D249A8];
  v80[12] = *MEMORY[0x277D249C8];
  v80[13] = v19;
  v20 = *MEMORY[0x277D049A0];
  v81[12] = v18;
  v81[13] = v20;
  v21 = *MEMORY[0x277D04A78];
  v22 = *MEMORY[0x277D24A18];
  v80[14] = *MEMORY[0x277D24A80];
  v80[15] = v22;
  v23 = *MEMORY[0x277D04A08];
  v81[14] = v21;
  v81[15] = v23;
  v24 = *MEMORY[0x277D04A60];
  v25 = *MEMORY[0x277D24A58];
  v80[16] = *MEMORY[0x277D24A60];
  v80[17] = v25;
  v26 = *MEMORY[0x277D04A50];
  v81[16] = v24;
  v81[17] = v26;
  v27 = *MEMORY[0x277D04A38];
  v28 = *MEMORY[0x277D24A50];
  v80[18] = *MEMORY[0x277D24A40];
  v80[19] = v28;
  v29 = *MEMORY[0x277D04A48];
  v81[18] = v27;
  v81[19] = v29;
  v30 = *MEMORY[0x277D04A40];
  v31 = *MEMORY[0x277D24BD0];
  v80[20] = *MEMORY[0x277D24A48];
  v80[21] = v31;
  v32 = *MEMORY[0x277D04BB0];
  v81[20] = v30;
  v81[21] = v32;
  v33 = *MEMORY[0x277D04AD0];
  v34 = *MEMORY[0x277D24A38];
  v80[22] = *MEMORY[0x277D24AF0];
  v80[23] = v34;
  v35 = *MEMORY[0x277D04A20];
  v81[22] = v33;
  v81[23] = v35;
  v36 = *MEMORY[0x277D04A90];
  v37 = *MEMORY[0x277D24AD0];
  v80[24] = *MEMORY[0x277D24A98];
  v80[25] = v37;
  v38 = *MEMORY[0x277D04AB0];
  v81[24] = v36;
  v81[25] = v38;
  v39 = *MEMORY[0x277D04A18];
  v40 = *MEMORY[0x277D24A20];
  v80[26] = *MEMORY[0x277D24A30];
  v80[27] = v40;
  v41 = *MEMORY[0x277D04A10];
  v81[26] = v39;
  v81[27] = v41;
  v42 = *MEMORY[0x277D049D8];
  v43 = *MEMORY[0x277D24B70];
  v80[28] = *MEMORY[0x277D249D0];
  v80[29] = v43;
  v44 = *MEMORY[0x277D04B40];
  v81[28] = v42;
  v81[29] = v44;
  v45 = *MEMORY[0x277D049C0];
  v46 = *MEMORY[0x277D24AF8];
  v80[30] = *MEMORY[0x277D249C0];
  v80[31] = v46;
  v47 = *MEMORY[0x277D04AD8];
  v81[30] = v45;
  v81[31] = v47;
  v48 = *MEMORY[0x277D04B48];
  v49 = *MEMORY[0x277D24B80];
  v80[32] = *MEMORY[0x277D24B78];
  v80[33] = v49;
  v50 = *MEMORY[0x277D04B50];
  v81[32] = v48;
  v81[33] = v50;
  v51 = *MEMORY[0x277D049E0];
  v52 = *MEMORY[0x277D249E0];
  v80[34] = *MEMORY[0x277D249D8];
  v80[35] = v52;
  v53 = *MEMORY[0x277D049E8];
  v81[34] = v51;
  v81[35] = v53;
  v54 = *MEMORY[0x277D049F0];
  v55 = *MEMORY[0x277D24BC8];
  v80[36] = *MEMORY[0x277D249E8];
  v80[37] = v55;
  v56 = *MEMORY[0x277D04BA0];
  v81[36] = v54;
  v81[37] = v56;
  v57 = *MEMORY[0x277D04A70];
  v58 = *MEMORY[0x277D24A10];
  v80[38] = *MEMORY[0x277D24A78];
  v80[39] = v58;
  v59 = *MEMORY[0x277D04A00];
  v81[38] = v57;
  v81[39] = v59;
  v60 = *MEMORY[0x277D04978];
  v61 = *MEMORY[0x277D24A68];
  v80[40] = *MEMORY[0x277D24988];
  v80[41] = v61;
  v62 = *MEMORY[0x277D04A58];
  v81[40] = v60;
  v81[41] = v62;
  v63 = *MEMORY[0x277D04AC0];
  v64 = *MEMORY[0x277D249B8];
  v80[42] = *MEMORY[0x277D24AD8];
  v80[43] = v64;
  v65 = *MEMORY[0x277D049B0];
  v81[42] = v63;
  v81[43] = v65;
  v66 = *MEMORY[0x277D04AA0];
  v67 = *MEMORY[0x277D249B0];
  v80[44] = *MEMORY[0x277D24AB8];
  v80[45] = v67;
  v68 = *MEMORY[0x277D049A8];
  v81[44] = v66;
  v81[45] = v68;
  v69 = *MEMORY[0x277D04A68];
  v70 = *MEMORY[0x277D24B50];
  v80[46] = *MEMORY[0x277D24A70];
  v80[47] = v70;
  v71 = *MEMORY[0x277D04B38];
  v81[46] = v69;
  v81[47] = v71;
  v72 = *MEMORY[0x277D04B10];
  v73 = *MEMORY[0x277D24B30];
  v80[48] = *MEMORY[0x277D24B28];
  v80[49] = v73;
  v74 = *MEMORY[0x277D04B18];
  v81[48] = v72;
  v81[49] = v74;
  v75 = *MEMORY[0x277D04B28];
  v76 = *MEMORY[0x277D24B40];
  v80[50] = *MEMORY[0x277D24B38];
  v80[51] = v76;
  v77 = *MEMORY[0x277D04B20];
  v81[50] = v75;
  v81[51] = v77;
  v80[52] = *MEMORY[0x277D24B48];
  v81[52] = *MEMORY[0x277D04B30];
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:53];
  v79 = _MCKeysToDMFKeys_MCKeysToDMFKeys;
  _MCKeysToDMFKeys_MCKeysToDMFKeys = v78;
}

+ (id)_MCKeysWithNoMatchingDMFKey
{
  v17[23] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D24990];
  v17[0] = *MEMORY[0x277D24980];
  v17[1] = v3;
  v4 = *MEMORY[0x277D24A28];
  v17[2] = *MEMORY[0x277D24A08];
  v17[3] = v4;
  v5 = *MEMORY[0x277D24AB0];
  v17[4] = *MEMORY[0x277D24AA8];
  v17[5] = v5;
  v6 = *MEMORY[0x277D24AA0];
  v17[6] = *MEMORY[0x277D24A90];
  v17[7] = v6;
  v7 = *MEMORY[0x277D24AE0];
  v17[8] = *MEMORY[0x277D24AC8];
  v17[9] = v7;
  v8 = *MEMORY[0x277D24B10];
  v17[10] = *MEMORY[0x277D24AE8];
  v17[11] = v8;
  v9 = *MEMORY[0x277D24B58];
  v17[12] = *MEMORY[0x277D24B18];
  v17[13] = v9;
  v10 = *MEMORY[0x277D24B68];
  v17[14] = *MEMORY[0x277D24B60];
  v17[15] = v10;
  v11 = *MEMORY[0x277D24B90];
  v17[16] = *MEMORY[0x277D24B88];
  v17[17] = v11;
  v12 = *MEMORY[0x277D24BA0];
  v17[18] = *MEMORY[0x277D24B98];
  v17[19] = v12;
  v13 = *MEMORY[0x277D24BB8];
  v17[20] = *MEMORY[0x277D24BA8];
  v17[21] = v13;
  v17[22] = *MEMORY[0x277D24BC0];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:23];
  v15 = [v2 setWithArray:v14];

  return v15;
}

+ (id)_DMFKeysToMCKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MDMParser__DMFKeysToMCKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_DMFKeysToMCKeys_onceToken != -1)
  {
    dispatch_once(&_DMFKeysToMCKeys_onceToken, block);
  }

  v2 = _DMFKeysToMCKeys_DMFKeysToMCKeys;

  return v2;
}

void __29__MDMParser__DMFKeysToMCKeys__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_class() _MCKeysToDMFKeys];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v12}];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = _DMFKeysToMCKeys_DMFKeysToMCKeys;
  _DMFKeysToMCKeys_DMFKeysToMCKeys = v10;
}

- (id)_serviceSubscriptionPropertiesWithDMFKeysMappedToMCKeys:(id)keys
{
  v21 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  _DMFKeysToMCKeys = [objc_opt_class() _DMFKeysToMCKeys];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [_DMFKeysToMCKeys objectForKeyedSubscript:{v11, v16}];
        if (v12)
        {
          v13 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_serviceSubscriptionsWithDMFKeysMappedToMCKeys:(id)keys
{
  v19 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MDMParser *)self _serviceSubscriptionPropertiesWithDMFKeysMappedToMCKeys:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_deviceInformationWithRequest:(id)request accessRights:(unint64_t)rights
{
  v6 = MEMORY[0x277D24648];
  requestCopy = request;
  sharedConfiguration = [v6 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v10 = personaID != 0;

  v11 = [(MDMParser *)self _allowedDeviceQueriesForAccessRights:rights isDataSeparated:v10];
  v12 = [(MDMParser *)self _deviceInformationWithRequest:requestCopy allowedQueries:v11];

  return v12;
}

- (id)_deviceInformationWithRequest:(id)request allowedQueries:(id)queries
{
  v234 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  queriesCopy = queries;
  v8 = [requestCopy objectForKey:@"DeviceAttestationNonce"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 length] || (v9 = objc_msgSend(v8, "length"), v9 > *MEMORY[0x277D24780]))
    {
      v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
      goto LABEL_34;
    }
  }

  v11 = [requestCopy objectForKey:@"Queries"];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v11 count])
  {
    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_33;
  }

  selfCopy = self;
  v190 = [MEMORY[0x277CBEB58] set];
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v186 = v11;
  _MCKeysToDMFKeys = v11;
  v13 = [_MCKeysToDMFKeys countByEnumeratingWithState:&v219 objects:v233 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v220;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v220 != v15)
        {
          objc_enumerationMutation(_MCKeysToDMFKeys);
        }

        v17 = *(*(&v219 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
          goto LABEL_187;
        }

        if ([queriesCopy containsObject:v17])
        {
          [v190 addObject:v17];
        }
      }

      v14 = [_MCKeysToDMFKeys countByEnumeratingWithState:&v219 objects:v233 count:16];
    }

    while (v14);
  }

  if (([MEMORY[0x277D03530] hasInternetTetheringCapability] & 1) == 0)
  {
    [v190 removeObject:*MEMORY[0x277D24AF0]];
  }

  _MCKeysToDMFKeys = [objc_opt_class() _MCKeysToDMFKeys];
  v198 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v190, "count")}];
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v18 = v190;
  v19 = [v18 countByEnumeratingWithState:&v215 objects:v232 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v216;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v216 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [_MCKeysToDMFKeys objectForKeyedSubscript:*(*(&v215 + 1) + 8 * j)];
        if (v23)
        {
          [v198 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v215 objects:v232 count:16];
    }

    while (v20);
  }

  v184 = v8;

  v24 = objc_opt_new();
  [v24 setPropertyKeys:v198];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v214 = 0;
  v26 = [systemConnection performRequest:v24 error:&v214];
  v27 = v214;

  v28 = objc_opt_class();
  if (v27)
  {
    v10 = [v28 responseWithError:v27];
    goto LABEL_186;
  }

  v179 = v24;
  v181 = requestCopy;
  v182 = queriesCopy;
  _DMFKeysToMCKeys = [v28 _DMFKeysToMCKeys];
  v183 = v26;
  valuesByPropertyKey = [v26 valuesByPropertyKey];
  v194 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(valuesByPropertyKey, "count")}];
  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  obj = valuesByPropertyKey;
  v31 = [obj countByEnumeratingWithState:&v210 objects:v231 count:16];
  v180 = _MCKeysToDMFKeys;
  v195 = v18;
  if (!v31)
  {
    goto LABEL_73;
  }

  v32 = v31;
  v33 = *v211;
  v34 = *MEMORY[0x277D24A68];
  v35 = *MEMORY[0x277D24B50];
  v192 = *MEMORY[0x277D249F0];
  v189 = *MEMORY[0x277D24998];
  v187 = *MEMORY[0x277D24A18];
  v188 = *MEMORY[0x277CBE9F0];
  do
  {
    v36 = 0;
    do
    {
      if (*v211 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v210 + 1) + 8 * v36);
      v38 = [obj objectForKeyedSubscript:v37];
      v39 = [_DMFKeysToMCKeys objectForKeyedSubscript:v37];
      if ([v39 isEqualToString:v34])
      {
        v40 = MEMORY[0x277CCABB0];
        mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
        v42 = [v40 numberWithBool:{objc_msgSend(mEMORY[0x277D24640], "userMode") == 1}];

        goto LABEL_45;
      }

      if ([v39 isEqualToString:v35])
      {
        easEnrollmentID = [(MDMParser *)selfCopy _serviceSubscriptionsWithDMFKeysMappedToMCKeys:v38];
        goto LABEL_49;
      }

      if (![v39 isEqualToString:v192])
      {
        if ([v39 isEqualToString:v189])
        {
          mEMORY[0x277D24640] = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var"];
          v209 = 0;
          [mEMORY[0x277D24640] getResourceValue:&v209 forKey:v188 error:0];
          v48 = v209;
          if (v48)
          {
            v49 = v48;
            v50 = MEMORY[0x277CCABB0];
            [v48 floatValue];
            if (isUserEnrollment)
            {
              *&v51 = *&v51 / 1000000000.0;
              [v50 numberWithFloat:v51];
            }

            else
            {
              [v50 numberWithDouble:*&v51 / 1000000000.0];
            }
            v55 = ;

            v42 = v55;
LABEL_45:
            v38 = v42;
LABEL_46:
            v18 = v195;
          }
        }

        else
        {
          if (!isUserEnrollment || ![v39 isEqualToString:v187])
          {
            null = [MEMORY[0x277CBEB68] null];
            v53 = [v38 isEqual:null];

            v18 = v195;
            if (v53)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          easEnrollmentID = [mEMORY[0x277D24648] easEnrollmentID];
LABEL_49:
          mEMORY[0x277D24640] = v38;
          v38 = easEnrollmentID;
        }

        goto LABEL_51;
      }

      diskCapacity = [MEMORY[0x277D03530] diskCapacity];
      if (diskCapacity)
      {
        v45 = diskCapacity;
        v46 = MEMORY[0x277CCABB0];
        [diskCapacity floatValue];
        if (isUserEnrollment)
        {
          *&v47 = *&v47 / 1000000000.0;
          [v46 numberWithFloat:v47];
        }

        else
        {
          [v46 numberWithDouble:*&v47 / 1000000000.0];
        }
        v54 = ;

        mEMORY[0x277D24640] = v54;
        v38 = mEMORY[0x277D24640];
        goto LABEL_46;
      }

LABEL_51:
      if (v39)
      {
        [v194 setObject:v38 forKeyedSubscript:v39];
      }

LABEL_53:

      ++v36;
    }

    while (v32 != v36);
    v56 = [obj countByEnumeratingWithState:&v210 objects:v231 count:16];
    v32 = v56;
  }

  while (v56);
LABEL_73:

  [v183 errorsByPropertyKey];
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v57 = v208 = 0u;
  v58 = [v57 countByEnumeratingWithState:&v205 objects:v230 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v206;
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v206 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v205 + 1) + 8 * k);
        v63 = [v57 objectForKeyedSubscript:v62];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v64 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            dMCVerboseDescription = [v63 DMCVerboseDescription];
            *buf = 138543618;
            v227 = v62;
            v228 = 2114;
            v229 = dMCVerboseDescription;
            _os_log_impl(&dword_2561F5000, v64, OS_LOG_TYPE_ERROR, "Failed to retrieve device information key %{public}@ with error: %{public}@", buf, 0x16u);

            v18 = v195;
          }
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v205 objects:v230 count:16];
    }

    while (v59);
  }

  v66 = *MEMORY[0x277D24AE8];
  queriesCopy = v182;
  v67 = v184;
  _MCKeysToDMFKeys = v180;
  v68 = v194;
  if ([v18 containsObject:*MEMORY[0x277D24AE8]])
  {
    server = [(MDMParser *)selfCopy server];
    organizationInfo = [server organizationInfo];

    if (organizationInfo)
    {
      [v194 setObject:organizationInfo forKeyedSubscript:v66];
    }

    v18 = v195;
  }

  v71 = *MEMORY[0x277D24A90];
  if ([v18 containsObject:*MEMORY[0x277D24A90]])
  {
    server2 = [(MDMParser *)selfCopy server];
    mDMOptions = [server2 MDMOptions];
    v74 = mDMOptions;
    if (mDMOptions)
    {
      v75 = mDMOptions;
    }

    else
    {
      v75 = MEMORY[0x277CBEC10];
    }

    [v194 setObject:v75 forKeyedSubscript:v71];

    v18 = v195;
  }

  v76 = *MEMORY[0x277D24A70];
  requestCopy = v181;
  if ([v18 containsObject:*MEMORY[0x277D24A70]])
  {
    v77 = [MEMORY[0x277CCABB0] numberWithBool:DMCDeviceIsNetworkTethered()];
    [v194 setObject:v77 forKeyedSubscript:v76];
  }

  v78 = *MEMORY[0x277D24AB8];
  if ([v18 containsObject:*MEMORY[0x277D24AB8]])
  {
    v79 = DMCIOModelString();
    [v194 setObject:v79 forKeyedSubscript:v78];
  }

  v80 = *MEMORY[0x277D24AC8];
  if ([v18 containsObject:*MEMORY[0x277D24AC8]])
  {
    modelNumber = [MEMORY[0x277D03530] modelNumber];
    regionInfo = [MEMORY[0x277D03530] regionInfo];
    v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", modelNumber, regionInfo];
    [v194 setObject:v83 forKeyedSubscript:v80];

    v67 = v184;
    v18 = v195;
  }

  v84 = *MEMORY[0x277D24AD8];
  if ([v18 containsObject:*MEMORY[0x277D24AD8]])
  {
    marketingVersion = [MEMORY[0x277D03530] marketingVersion];
    [v194 setObject:marketingVersion forKeyedSubscript:v84];
  }

  v86 = *MEMORY[0x277D249B8];
  if ([v18 containsObject:*MEMORY[0x277D249B8]])
  {
    buildVersion = [MEMORY[0x277D03530] buildVersion];
    [v194 setObject:buildVersion forKeyedSubscript:v86];
  }

  v88 = *MEMORY[0x277D24B90];
  if ([v18 containsObject:*MEMORY[0x277D24B90]])
  {
    supplementalMarketingVersionExtra = [MEMORY[0x277D03530] supplementalMarketingVersionExtra];
    [v194 setObject:supplementalMarketingVersionExtra forKeyedSubscript:v88];
  }

  v90 = *MEMORY[0x277D24B88];
  if ([v18 containsObject:*MEMORY[0x277D24B88]])
  {
    supplementalBuildVersion = [MEMORY[0x277D03530] supplementalBuildVersion];
    [v194 setObject:supplementalBuildVersion forKeyedSubscript:v90];
  }

  v92 = *MEMORY[0x277D249B0];
  if ([v18 containsObject:*MEMORY[0x277D249B0]])
  {
    v93 = DMCIOBluetoothMAC();
    [v194 setObject:v93 forKeyedSubscript:v92];
  }

  v94 = *MEMORY[0x277D24BA8];
  if ([v18 containsObject:*MEMORY[0x277D24BA8]])
  {
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    name = [systemTimeZone name];
    [v194 setObject:name forKeyedSubscript:v94];

    v18 = v195;
  }

  v97 = *MEMORY[0x277D24B60];
  if ([v18 containsObject:*MEMORY[0x277D24B60]])
  {
    server3 = [(MDMParser *)selfCopy server];
    softwareUpdatePathFromDisk = [server3 softwareUpdatePathFromDisk];

    if (softwareUpdatePathFromDisk)
    {
      [v194 setObject:softwareUpdatePathFromDisk forKeyedSubscript:v97];
    }

    v18 = v195;
  }

  v100 = *MEMORY[0x277D249A0];
  if ([v18 containsObject:*MEMORY[0x277D249A0]])
  {
    server4 = [(MDMParser *)selfCopy server];
    channelType = [server4 channelType];

    v103 = channelType == 1;
    v18 = v195;
    if (v103)
    {
      v104 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D03538], "isCurrentUserConfigured") ^ 1}];
      [v194 setObject:v104 forKeyedSubscript:v100];
    }
  }

  v105 = *MEMORY[0x277D24BD0];
  if ([v18 containsObject:*MEMORY[0x277D24BD0]])
  {
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v106 = SCNetworkInterfaceCopyAll();
    v107 = [(__CFArray *)v106 countByEnumeratingWithState:&v201 objects:v225 count:16];
    v108 = v106;
    if (v107)
    {
      v109 = v107;
      v110 = *v202;
      v111 = *MEMORY[0x277CE16D8];
LABEL_122:
      v112 = 0;
      while (1)
      {
        if (*v202 != v110)
        {
          objc_enumerationMutation(v106);
        }

        v113 = *(*(&v201 + 1) + 8 * v112);
        if (([(__CFString *)SCNetworkInterfaceGetInterfaceType(v113) isEqualToString:v111]& 1) != 0)
        {
          break;
        }

        if (v109 == ++v112)
        {
          v109 = [(__CFArray *)v106 countByEnumeratingWithState:&v201 objects:v225 count:16];
          if (v109)
          {
            goto LABEL_122;
          }

          v108 = v106;
          queriesCopy = v182;
          v18 = v195;
          goto LABEL_131;
        }
      }

      v108 = SCNetworkInterfaceGetHardwareAddressString(v113);

      queriesCopy = v182;
      v18 = v195;
      if (!v108)
      {
        goto LABEL_132;
      }

      [v194 setObject:v108 forKeyedSubscript:v105];
    }

LABEL_131:

LABEL_132:
    v67 = v184;
    v68 = v194;
  }

  v114 = *MEMORY[0x277D24B10];
  if ([v18 containsObject:*MEMORY[0x277D24B10]])
  {
    v115 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
      userQuotaSize = [mEMORY[0x277D77BF8] userQuotaSize];
      *buf = 134217984;
      v227 = userQuotaSize;
      _os_log_impl(&dword_2561F5000, v115, OS_LOG_TYPE_DEFAULT, "Quota Size is:%llu", buf, 0xCu);
    }

    v118 = MEMORY[0x277CCABB0];
    mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
    v120 = [v118 numberWithUnsignedLongLong:{objc_msgSend(mEMORY[0x277D77BF8]2, "userQuotaSize") / 0xF4240uLL}];
    [v68 setObject:v120 forKeyedSubscript:v114];

    v18 = v195;
  }

  v121 = *MEMORY[0x277D24B18];
  if ([v18 containsObject:*MEMORY[0x277D24B18]])
  {
    v122 = MEMORY[0x277CCABB0];
    mEMORY[0x277D77BF8]3 = [MEMORY[0x277D77BF8] sharedManager];
    allUsers = [mEMORY[0x277D77BF8]3 allUsers];
    v125 = [v122 numberWithUnsignedInteger:{objc_msgSend(allUsers, "count")}];
    [v68 setObject:v125 forKeyedSubscript:v121];

    v67 = v184;
    v18 = v195;
  }

  v126 = *MEMORY[0x277D24AB0];
  if ([v18 containsObject:*MEMORY[0x277D24AB0]])
  {
    [v68 setObject:&unk_2868503E0 forKeyedSubscript:v126];
  }

  v127 = *MEMORY[0x277D24A28];
  if ([v18 containsObject:*MEMORY[0x277D24A28]])
  {
    mEMORY[0x277D77BF8]4 = [MEMORY[0x277D77BF8] sharedManager];
    allUsers2 = [mEMORY[0x277D77BF8]4 allUsers];
    v130 = [allUsers2 count];

    mEMORY[0x277D77BF8]5 = [MEMORY[0x277D77BF8] sharedManager];
    userQuotaSize2 = [mEMORY[0x277D77BF8]5 userQuotaSize];

    if (userQuotaSize2)
    {
      v133 = [MEMORY[0x277D03538] getDiskAvailableSize] / userQuotaSize2;
    }

    else
    {
      v133 = 0;
    }

    v134 = v133 + v130;
    if (v134 >= 0x20)
    {
      v135 = 32;
    }

    else
    {
      v135 = v134;
    }

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v135];
    [v68 setObject:v136 forKeyedSubscript:v127];

    v67 = v184;
    v18 = v195;
  }

  v137 = *MEMORY[0x277D24BB8];
  if ([v18 containsObject:*MEMORY[0x277D24BB8]])
  {
    v138 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D03538] userSessionTimeout];
    v140 = [v138 numberWithInteger:v139];
    [v68 setObject:v140 forKeyedSubscript:v137];
  }

  v141 = *MEMORY[0x277D24BA0];
  if ([v18 containsObject:*MEMORY[0x277D24BA0]])
  {
    v142 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D03538] temporarySessionTimeout];
    v144 = [v142 numberWithInteger:v143];
    [v68 setObject:v144 forKeyedSubscript:v141];
  }

  v145 = *MEMORY[0x277D24B98];
  if ([v18 containsObject:*MEMORY[0x277D24B98]])
  {
    v146 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D03538], "temporarySessionOnly")}];
    [v68 setObject:v146 forKeyedSubscript:v145];
  }

  v147 = *MEMORY[0x277D24AA8];
  if ([v18 containsObject:*MEMORY[0x277D24AA8]])
  {
    managedAppleIDDefaultDomains = [MEMORY[0x277D03538] managedAppleIDDefaultDomains];
    [v68 setObject:managedAppleIDDefaultDomains forKeyedSubscript:v147];
  }

  v149 = *MEMORY[0x277D24AE0];
  if ([v18 containsObject:*MEMORY[0x277D24AE0]])
  {
    onlineAuthenticationGracePeriod = [MEMORY[0x277D03538] onlineAuthenticationGracePeriod];
    [v68 setObject:onlineAuthenticationGracePeriod forKeyedSubscript:v149];
  }

  v151 = *MEMORY[0x277D24B58];
  if ([v18 containsObject:*MEMORY[0x277D24B58]])
  {
    v152 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D03538], "shouldSkipLanguageAndLocaleSetupForNewUsers")}];
    [v68 setObject:v152 forKeyedSubscript:v151];
  }

  v153 = *MEMORY[0x277D24AA0];
  if ([v18 containsObject:*MEMORY[0x277D24AA0]])
  {
    v200 = 0;
    v154 = [MEMORY[0x277D034B0] midWithError:&v200];
    v155 = v200;
    if (v155)
    {
      deviceIdentifierForVendorSeedData = v155;
      v10 = [objc_opt_class() responseWithError:v155];

      goto LABEL_184;
    }

    [v68 setObject:v154 forKeyedSubscript:v153];

    v67 = v184;
  }

  v157 = *MEMORY[0x277D24990];
  if ([v18 containsObject:*MEMORY[0x277D24990]])
  {
    appstoredUserAgent = [objc_opt_class() appstoredUserAgent];
    [v68 setObject:appstoredUserAgent forKeyedSubscript:v157];
  }

  v159 = *MEMORY[0x277D24BC0];
  if ([v18 containsObject:*MEMORY[0x277D24BC0]])
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    deviceIdentifierForVendorSeedData = [defaultWorkspace deviceIdentifierForVendorSeedData];

    if ([deviceIdentifierForVendorSeedData length])
    {
      [v68 setObject:deviceIdentifierForVendorSeedData forKeyedSubscript:v159];

      v18 = v195;
      goto LABEL_170;
    }

    v175 = *DMCLogObjects();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v175, OS_LOG_TYPE_ERROR, "Failed to fetch VID seed", buf, 2u);
    }

    v176 = MEMORY[0x277CCA9B8];
    v177 = *MEMORY[0x277D03480];
    v178 = DMCErrorArray();
    v27 = [v176 DMCErrorWithDomain:v177 code:12103 descriptionArray:v178 errorType:{*MEMORY[0x277D032F8], 0}];

    v10 = [objc_opt_class() responseWithError:v27];
  }

  else
  {
LABEL_170:
    v161 = *MEMORY[0x277D24B68];
    if ([v18 containsObject:*MEMORY[0x277D24B68]])
    {
      currentProductType = [MEMORY[0x277D64908] currentProductType];
      [v68 setObject:currentProductType forKeyedSubscript:v161];
    }

    v163 = *MEMORY[0x277D24980];
    if ([v18 containsObject:*MEMORY[0x277D24980]])
    {
      _accessibilitySettings = [(MDMParser *)selfCopy _accessibilitySettings];
      [v68 setObject:_accessibilitySettings forKeyedSubscript:v163];
    }

    v165 = *MEMORY[0x277D24A08];
    if ([v18 containsObject:*MEMORY[0x277D24A08]])
    {
      v166 = +[MDMAttestation sharedInstance];
      v199 = 0;
      v167 = [v166 attestationCertificateChainAnonymous:objc_msgSend(mEMORY[0x277D24648] nonce:"isUserEnrollment") outError:{v67, &v199}];
      v168 = v199;

      if (!v167 || v168)
      {
        v169 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v227 = v168;
          _os_log_impl(&dword_2561F5000, v169, OS_LOG_TYPE_ERROR, "Failed obtaining device attestation certificate chain. Continuing without attestation. Error: %@", buf, 0xCu);
        }
      }

      if ([v167 count] == 2)
      {
        v170 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
        v171 = [v167 objectAtIndexedSubscript:0];
        v172 = SecCertificateCopyData(v171);
        [v170 setObject:v172 atIndexedSubscript:0];

        v173 = [v167 objectAtIndexedSubscript:1];
        v174 = SecCertificateCopyData(v173);
        [v170 setObject:v174 atIndexedSubscript:1];

        v68 = v194;
        [v194 setObject:v170 forKeyedSubscript:v165];
      }
    }

    [(MDMParser *)selfCopy _applyOverridesToDeviceInformationDictionary:v68];
    v224[0] = @"Acknowledged";
    v223[0] = @"Status";
    v223[1] = @"QueryResponses";
    deviceIdentifierForVendorSeedData = [v68 copy];
    v224[1] = deviceIdentifierForVendorSeedData;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:2];
LABEL_184:
    v27 = 0;
  }

  v24 = v179;
  v26 = v183;
LABEL_186:

  v8 = v184;
LABEL_187:
  v11 = v186;

LABEL_33:
LABEL_34:

  return v10;
}

- (void)_applyOverridesToDeviceInformationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = *MEMORY[0x277D24AC0];
  v29 = dictionaryCopy;
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D24AC0]];

  if (v5)
  {
    v6 = MEMORY[0x277D03500];
    v7 = [v29 objectForKeyedSubscript:v4];
    v8 = [v6 modelNameWithDefaultValue:v7];
    [v29 setObject:v8 forKeyedSubscript:v4];
  }

  v9 = *MEMORY[0x277D24AC8];
  v10 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24AC8]];

  if (v10)
  {
    v11 = MEMORY[0x277D03500];
    v12 = [v29 objectForKeyedSubscript:v9];
    v13 = [v11 modelNumberWithDefaultValue:v12];
    [v29 setObject:v13 forKeyedSubscript:v9];
  }

  v14 = *MEMORY[0x277D24B00];
  v15 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24B00]];

  if (v15)
  {
    v16 = MEMORY[0x277D03500];
    v17 = [v29 objectForKeyedSubscript:v14];
    v18 = [v16 productNameWithDefaultValue:v17];
    [v29 setObject:v18 forKeyedSubscript:v14];
  }

  v19 = *MEMORY[0x277D24A00];
  v20 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24A00]];

  if (v20)
  {
    v21 = MEMORY[0x277D03500];
    v22 = [v29 objectForKeyedSubscript:v19];
    v23 = [v21 deviceNameWithDefaultValue:v22];
    [v29 setObject:v23 forKeyedSubscript:v19];
  }

  v24 = *MEMORY[0x277D24B68];
  v25 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24B68]];

  if (v25)
  {
    v26 = MEMORY[0x277D03500];
    v27 = [v29 objectForKeyedSubscript:v24];
    v28 = [v26 softwareUpdateDeviceIDWithDefaultValue:v27];
    [v29 setObject:v28 forKeyedSubscript:v24];
  }
}

- (id)_certificateList:(id)list
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKeyedSubscript:@"ManagedOnly"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v30 = v3;
    bOOLValue = [v3 BOOLValue];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [mEMORY[0x277D262A0] installedProfilesWithFilterFlags:1];
    v36 = objc_opt_new();
    TypeID = SecIdentityGetTypeID();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v7;
    v34 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (!v34)
    {
      goto LABEL_31;
    }

    v33 = isUserEnrollment | bOOLValue;
    v32 = *v43;
    while (1)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        if ((v33 & 1) == 0 || [*(*(&v42 + 1) + 8 * i) isManagedByMDM])
        {
          v35 = i;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          payloads = [v10 payloads];
          v12 = [payloads countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (!v12)
          {
            goto LABEL_28;
          }

          v13 = v12;
          v14 = *v39;
          while (1)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(payloads);
              }

              v16 = *(*(&v38 + 1) + 8 * j);
              v17 = objc_opt_new();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = MEMORY[0x277D26260];
                certificatePersistentID = [v16 certificatePersistentID];
                v20 = [v18 copyItemWithPersistentID:certificatePersistentID useSystemKeychain:1];

                if (v20)
                {
                  certificateRef = 0;
                  v21 = CFGetTypeID(v20);
                  if (v21 == TypeID)
                  {
                    SecIdentityCopyCertificate(v20, &certificateRef);
                    CFRelease(v20);
                    v20 = certificateRef;
                    if (!certificateRef)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                    certificateRef = v20;
                  }

                  v22 = SecCertificateCopyData(v20);
                  if (v22)
                  {
                    v23 = v22;
                    [v17 setObject:v22 forKeyedSubscript:@"Data"];
                  }

                  v24 = SecCertificateCopyCommonNames();
                  CFRelease(certificateRef);
                  if (v24)
                  {
                    firstObject = [v24 firstObject];
                    [v17 setObject:firstObject forKeyedSubscript:@"CommonName"];
                  }

                  typeID = [MEMORY[0x277CCABB0] numberWithBool:v21 == TypeID];
                  [v17 setObject:typeID forKeyedSubscript:@"IsIdentity"];

                  [v36 addObject:v17];
                }
              }

LABEL_26:
            }

            v13 = [payloads countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (!v13)
            {
LABEL_28:

              i = v35;
              break;
            }
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (!v34)
      {
LABEL_31:

        v46[0] = @"Status";
        v46[1] = @"CertificateList";
        v47[0] = @"Acknowledged";
        v47[1] = v36;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

        v3 = v30;
        goto LABEL_33;
      }
    }
  }

  v27 = +[MDMParser malformedRequestErrorResult];
LABEL_33:

  return v27;
}

- (id)_provisioningProfileList:(id)list
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKeyedSubscript:@"ManagedOnly"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = +[MDMParser malformedRequestErrorResult];
  }

  else
  {
    v25 = v3;
    bOOLValue = [v3 BOOLValue];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

    v7 = [MDMMCInterface provisioningProfileUUIDsWithManagedOnly:(isUserEnrollment | bOOLValue) & 1];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          cf[0] = 0;
          v14 = MISCopyProvisioningProfile();
          if (v14)
          {
            v17 = v14;

            v18 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LOWORD(cf[0]) = 0;
              _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_ERROR, "Could not retrieve the list of provisioning profiles.", cf, 2u);
            }

            v19 = MEMORY[0x277CCA9B8];
            v20 = *MEMORY[0x277D03428];
            v21 = [MEMORY[0x277CCABB0] numberWithInt:v17];
            v22 = DMCErrorArray();
            v23 = [v19 DMCErrorWithDomain:v20 code:25003 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], v21, 0}];
            v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v23];

            goto LABEL_15;
          }

          v15 = objc_opt_new();
          [v15 setObject:MISProvisioningProfileGetName() forKeyedSubscript:@"Name"];
          [v15 setObject:MISProvisioningProfileGetUUID() forKeyedSubscript:@"UUID"];
          [v15 setObject:MISProvisioningProfileGetExpirationDate() forKeyedSubscript:@"ExpiryDate"];
          CFRelease(cf[0]);
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v31[0] = @"Status";
    v31[1] = @"ProvisioningProfileList";
    v32[0] = @"Acknowledged";
    v32[1] = v8;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
LABEL_15:
    v3 = v25;
  }

  return v16;
}

- (id)_installProvisioningProfile:(id)profile
{
  v4 = [profile objectForKeyedSubscript:@"ProvisioningProfile"];
  managingProfileIdentifier = [(MDMParser *)self managingProfileIdentifier];
  v9 = 0;
  [MDMMCInterface installProvisioningProfileData:v4 managingProfileIdentifier:managingProfileIdentifier outError:&v9];
  v6 = v9;

  if (v6)
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithError:v6];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }
  v7 = ;

  return v7;
}

- (BOOL)_isProfileIdentifierManaged:(id)managed
{
  managedCopy = managed;
  if ([(MDMParser *)self isChaperoned])
  {
    v5 = 1;
  }

  else if (self->_managingProfileIdentifier)
  {
    v5 = [MDMMCInterface isProfileWithIdentifier:managedCopy managedByProfileWithIdentifier:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDDMProfileIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  sharedConnection = [v3 sharedConnection];
  v6 = [sharedConnection installedProfileWithIdentifier:identifierCopy];

  installOptions = [v6 installOptions];
  v8 = installOptions;
  if (installOptions)
  {
    v9 = [installOptions objectForKeyedSubscript:*MEMORY[0x277D26430]];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_isProvisioningProfileUUIDManaged:(id)managed
{
  managedCopy = managed;
  if ([(MDMParser *)self isChaperoned])
  {
    v5 = 1;
  }

  else if (self->_managingProfileIdentifier)
  {
    v5 = [MDMMCInterface isProvisioningProfileWithUUID:managedCopy managedByProfileWithIdentifier:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_removeProvisioningProfile:(id)profile
{
  v4 = [profile objectForKey:@"UUID"];
  if (!v4)
  {
    v8 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_10;
  }

  if (![(MDMParser *)self isChaperoned]&& ![(MDMParser *)self _isProvisioningProfileUUIDManaged:v4])
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v6 = [v9 DMCErrorWithDomain:v10 code:12014 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], v4, 0}];

    goto LABEL_8;
  }

  managingProfileIdentifier = [(MDMParser *)self managingProfileIdentifier];
  v13 = 0;
  [MDMMCInterface removeProvisioningProfileWithUUID:v4 managingProfileIdentifier:managingProfileIdentifier outError:&v13];
  v6 = v13;

  if (v6)
  {
LABEL_8:
    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v6];
    goto LABEL_9;
  }

  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
LABEL_9:
  v8 = v7;

LABEL_10:

  return v8;
}

- (BOOL)_identifiersIsStringArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = arrayCopy;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v9 = 0;
              goto LABEL_15;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v9 = 1;
LABEL_15:
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_installedApplicationList:(id)list
{
  listCopy = list;
  v4 = objc_alloc_init(MDMInstalledApplicationListCommand);
  v5 = objc_alloc_init(MDMAppPropertyShim);
  [(MDMInstalledApplicationListCommand *)v4 setDataSource:v5];

  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  -[MDMInstalledApplicationListCommand setIsUserEnrollment:](v4, "setIsUserEnrollment:", [mEMORY[0x277D24648] isUserEnrollment]);

  v7 = [(MDMInstalledApplicationListCommand *)v4 responseForRequest:listCopy];

  return v7;
}

- (id)_restrictions:(id)_restrictions withProfileFilterFlags:(int)flags
{
  v57[1] = *MEMORY[0x277D85DE8];
  _restrictionsCopy = _restrictions;
  if (_restrictions_withProfileFilterFlags__onceToken != -1)
  {
    [MDMParser _restrictions:withProfileFilterFlags:];
  }

  v56 = @"Status";
  v57[0] = @"Acknowledged";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  v7 = [v6 mutableCopy];

  v8 = objc_opt_new();
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v54 = 0;
  v10 = [systemConnection performRequest:v8 error:&v54];
  v11 = v54;

  if (v11)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    DMCErrorArray();
    v15 = v14 = v7;
    v16 = [v12 DMCErrorWithDomain:v13 code:12082 descriptionArray:v15 errorType:{*MEMORY[0x277D032F8], 0}];

    v7 = v14;
    v17 = [objc_opt_class() responseWithError:v16];
    goto LABEL_23;
  }

  v48 = v8;
  restrictions = [v10 restrictions];
  v19 = [MDMMCInterface filterMDMRestrictions:restrictions acceptingKeysFromDictionary:_restrictions_withProfileFilterFlags__mdmQueryableRestrictions];
  [v7 setObject:v19 forKeyedSubscript:@"GlobalRestrictions"];
  [v7 setObject:v19 forKeyedSubscript:@"GlobalRestrictions"];

  v20 = [_restrictionsCopy objectForKeyedSubscript:@"ProfileRestrictions"];
  if (!v20)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v20 BOOLValue])
  {
    goto LABEL_21;
  }

  v47 = v7;
  v21 = objc_opt_new();
  v22 = v21;
  if (flags == 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = flags & 0x3F;
  }

  [v21 setFilterFlags:v23];
  v24 = v22;
  systemConnection2 = [MEMORY[0x277D04BF8] systemConnection];
  v53 = 0;
  v26 = [systemConnection2 performRequest:v22 error:&v53];
  v27 = v53;

  if (!v27)
  {
    v44 = v24;
    v45 = v20;
    v46 = _restrictionsCopy;
    v32 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = v26;
    profiles = [v26 profiles];
    v34 = [profiles countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v50;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(profiles);
          }

          v38 = *(*(&v49 + 1) + 8 * i);
          restrictions2 = [v38 restrictions];
          v40 = [MDMMCInterface filterMDMRestrictions:restrictions2 acceptingKeysFromDictionary:_restrictions_withProfileFilterFlags__mdmQueryableRestrictions];
          identifier = [v38 identifier];
          [v32 setObject:v40 forKeyedSubscript:identifier];
        }

        v35 = [profiles countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v35);
    }

    v7 = v47;
    [v47 setObject:v32 forKeyedSubscript:@"ProfileRestrictions"];

    v20 = v45;
    _restrictionsCopy = v46;
LABEL_21:
    v17 = v7;
    v16 = 0;
    goto LABEL_22;
  }

  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277D03480];
  DMCErrorArray();
  v31 = v30 = v26;
  v16 = [v28 DMCErrorWithDomain:v29 code:12083 descriptionArray:v31 errorType:{*MEMORY[0x277D032F8], 0}];

  v17 = [objc_opt_class() responseWithError:v16];

  v7 = v47;
LABEL_22:

  v8 = v48;
LABEL_23:

  return v17;
}

uint64_t __50__MDMParser__restrictions_withProfileFilterFlags___block_invoke()
{
  _restrictions_withProfileFilterFlags__mdmQueryableRestrictions = +[MDMMCInterface mdmQueryableRestrictions];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)_profileInstallationStyleForRequest:(id)request
{
  managingProfileIdentifier = [(MDMParser *)self managingProfileIdentifier];
  v4 = managingProfileIdentifier != 0;

  return v4;
}

- (id)_installProfile:(id)profile accessRights:(unint64_t)rights installationType:(int64_t)type
{
  rightsCopy = rights;
  profileCopy = profile;
  v9 = [profileCopy objectForKey:@"Payload"];
  if (v9)
  {
    v30 = 0;
    v29 = 0;
    v10 = [MDMMCInterface profileIdentifierForProfileData:v9 allowEmptyPayload:0 outIsSupervisionProfile:&v30 outProfileSigner:0 outMayInstallCloudProfile:0 outError:&v29];
    v11 = v29;
    if (v11)
    {
LABEL_3:
      v12 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v11];

LABEL_4:
      goto LABEL_6;
    }

    if (-[MDMParser isChaperoned](self, "isChaperoned") || self->_managingProfileIdentifier && ([v10 isEqualToString:?] & 1) != 0 || (objc_msgSend(MEMORY[0x277D24648], "sharedConfiguration"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isUserEnrollment"), v14, (rightsCopy & 2) != 0) || (v15 & 1) != 0)
    {
      if (![(MDMParser *)self _isDDMProfileIdentifier:v10])
      {
        if (v30 == 1)
        {
          v17 = *DMCLogObjects();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring supervision profile.", buf, 2u);
          }
        }

        else
        {
          v18 = objc_opt_new();
          managingProfileIdentifier = [(MDMParser *)self managingProfileIdentifier];
          [v18 setManagingProfileIdentifier:managingProfileIdentifier];

          [v18 setStyle:{-[MDMParser _profileInstallationStyleForRequest:](self, "_profileInstallationStyleForRequest:", profileCopy)}];
          [v18 setProfileData:v9];
          [v18 setType:type == 1];
          mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
          personaID = [mEMORY[0x277D24648] personaID];

          if (personaID)
          {
            [v18 setPersonaID:personaID];
          }

          systemConnection = [MEMORY[0x277D04BF8] systemConnection];
          v27 = 0;
          v23 = [systemConnection performRequest:v18 error:&v27];
          v11 = v27;

          userInfo = [v11 userInfo];
          v25 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

          if (v25)
          {
            v26 = v25;

            v11 = v26;
          }

          if (v11)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_27;
      }

      _notAuthorizedError = [(MDMParser *)self _managedByDDMError:v10];
    }

    else
    {
      _notAuthorizedError = [(MDMParser *)self _notAuthorizedError];
    }

    v11 = _notAuthorizedError;
    if (_notAuthorizedError)
    {
      goto LABEL_3;
    }

LABEL_27:
    v12 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    goto LABEL_4;
  }

  v12 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
LABEL_6:

  return v12;
}

- (id)_removeProfile:(id)profile
{
  v4 = [profile objectForKey:@"Identifier"];
  if (v4)
  {
    [(MDMParser *)self _removeProfileWithIdentifier:v4 forInstalledProfilesWithFilterFlags:19];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }
  v5 = ;

  return v5;
}

- (id)_removeProfileWithIdentifier:(id)identifier forInstalledProfilesWithFilterFlags:(int)flags
{
  v4 = *&flags;
  identifierCopy = identifier;
  v7 = [MDMMCInterface profileIdentifiersWithFilterFlags:v4];
  if ([v7 containsObject:identifierCopy])
  {
    v8 = [(MDMParser *)self _removeProfileWithIdentifier:identifierCopy installationType:(~v4 & 9) == 0];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();

    v12 = [v9 DMCErrorWithDomain:v10 code:12075 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], identifierCopy, 0}];
    v8 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v12];

    identifierCopy = v11;
  }

  return v8;
}

- (id)_removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type
{
  identifierCopy = identifier;
  v7 = objc_opt_new();
  if (!self->_managingProfileIdentifier)
  {
    goto LABEL_8;
  }

  if ([identifierCopy isEqualToString:?])
  {
    v8 = objc_opt_new();

    [v8 setProfileIdentifier:identifierCopy];
    [v8 setType:type == 1];
    systemConnection = [MEMORY[0x277D04BF8] systemConnection];
    [systemConnection performRequest:v8 completion:&__block_literal_global_1109];

    v10 = 0;
    goto LABEL_14;
  }

  if ([(MDMParser *)self _isDDMProfileIdentifier:identifierCopy])
  {
    v11 = [(MDMParser *)self _managedByDDMError:identifierCopy];
    goto LABEL_9;
  }

  if ([(MDMParser *)self isChaperoned]|| [(MDMParser *)self _isProfileIdentifierManaged:identifierCopy])
  {
LABEL_8:
    [v7 setProfileIdentifier:identifierCopy];
    [v7 setType:type == 1];
    systemConnection2 = [MEMORY[0x277D04BF8] systemConnection];
    v21 = 0;
    v13 = [systemConnection2 performRequest:v7 error:&v21];
    v11 = v21;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D03480];
    v20 = DMCErrorArray();
    v11 = [v18 DMCErrorWithDomain:v19 code:12013 descriptionArray:v20 errorType:{*MEMORY[0x277D032F8], identifierCopy, 0}];
  }

LABEL_9:

  if (v11)
  {
    userInfo = [v11 userInfo];
    v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v15)
    {
      v16 = v15;

      v11 = v16;
    }

    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v11];
  }

  else
  {
    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }

LABEL_14:

  return v10;
}

void __59__MDMParser__removeProfileWithIdentifier_installationType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Could not remove MDM profile: %{public}@", &v5, 0xCu);
    }
  }
}

- (BOOL)_validateSetting:(id)setting accessRights:(unint64_t)rights outError:(id *)error
{
  rightsCopy = rights;
  v65 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  v9 = [settingCopy objectForKey:@"Item"];
  if (!v9)
  {
    goto LABEL_96;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_96;
  }

  _allSettingsItems = [(MDMParser *)self _allSettingsItems];
  v11 = [_allSettingsItems containsObject:v9];

  if (!v11)
  {
    goto LABEL_96;
  }

  if ([v9 isEqualToString:@"DeviceName"])
  {
    v12 = [settingCopy objectForKey:@"DeviceName"];
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"Wallpaper"])
  {
    v12 = [settingCopy objectForKey:@"Image"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v14 = [settingCopy objectForKey:@"Where"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v14 intValue] < 1)
    {

      goto LABEL_95;
    }

    intValue = [v14 intValue];

    if (intValue < 4)
    {
      goto LABEL_8;
    }

LABEL_96:
    v13 = 0;
    goto LABEL_97;
  }

  if ([v9 isEqualToString:@"SoftwareUpdateSettings"])
  {
    v12 = [settingCopy objectForKey:@"RecommendationCadence"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 intValue] <= 2 && (objc_msgSend(v12, "intValue") & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"DataRoaming"] || DMCCTSupportsVoiceRoaming() && objc_msgSend(v9, "isEqualToString:", @"VoiceRoaming") || objc_msgSend(v9, "isEqualToString:", @"Bluetooth") || objc_msgSend(MEMORY[0x277D03530], "hasInternetTetheringCapability") && objc_msgSend(v9, "isEqualToString:", @"PersonalHotspot"))
  {
    if ((rightsCopy & 0x20) == 0)
    {
      if (error)
      {
        [(MDMParser *)self _notAuthorizedError];
        *error = v13 = 0;
        goto LABEL_97;
      }

      goto LABEL_96;
    }

LABEL_87:
    v20 = @"Enabled";
    goto LABEL_88;
  }

  if ([v9 isEqualToString:@"ApplicationConfiguration"])
  {
    v12 = [settingCopy objectForKey:@"Identifier"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v16 = @"Configuration";
LABEL_41:
    v17 = [settingCopy objectForKey:v16];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
      isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

      if ((rightsCopy & 0x1000) == 0 && (isUserEnrollment & 1) == 0)
      {
        if (error)
        {
          *error = [(MDMParser *)self _notAuthorizedError];
        }

        goto LABEL_94;
      }

LABEL_132:

      goto LABEL_7;
    }

LABEL_94:

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"ApplicationAttributes"])
  {
    v12 = [settingCopy objectForKey:@"Identifier"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v16 = @"Attributes";
    goto LABEL_41;
  }

  if ([v9 isEqualToString:@"MaximumResidentUsers"])
  {
    v20 = @"MaximumResidentUsers";
    goto LABEL_88;
  }

  if ([v9 isEqualToString:@"SharedDeviceConfiguration"])
  {
    v12 = [settingCopy objectForKey:@"QuotaSize"];
    v17 = [settingCopy objectForKey:@"ResidentUsers"];
    obj = [settingCopy objectForKey:@"UserSessionTimeout"];
    v57 = [settingCopy objectForKey:@"TemporarySessionTimeout"];
    v56 = [settingCopy objectForKey:@"TemporarySessionOnly"];
    v55 = [settingCopy objectForKey:@"ManagedAppleIDDefaultDomains"];
    v54 = [settingCopy objectForKey:@"OnlineAuthenticationGracePeriod"];
    v53 = [settingCopy objectForKeyedSubscript:@"AwaitUserConfiguration"];
    v21 = [settingCopy objectForKeyedSubscript:@"PasscodePolicy"];
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    isRapidReturnToService = [mEMORY[0x277D24640] isRapidReturnToService];

    mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
    userMode = [mEMORY[0x277D24640]2 userMode];

    isRRTSMDMTimeoutEnabled = [MEMORY[0x277D034F8] isRRTSMDMTimeoutEnabled];
    if (userMode == 1)
    {
      goto LABEL_51;
    }

    if (isRapidReturnToService)
    {
      if (isRRTSMDMTimeoutEnabled)
      {
LABEL_51:
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!obj || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if (!v57 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if (!v56 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (!v55 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    if (!v54 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      if (!v53 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v27 = [v53 objectForKey:@"Enabled"];
                          v28 = [v21 objectForKey:@"PasscodeLockGracePeriod"];
                          v29 = [v21 objectForKey:@"AutoLockTime"];
                          v30 = 0;
                          if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v30 = 1;
                              }
                            }
                          }

                          if (v30)
                          {
                            goto LABEL_8;
                          }

                          goto LABEL_96;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_93;
      }

      if (error)
      {
        _notInRRTSModeError = [(MDMParser *)self _invalidRequestTypeError:@"SharedDeviceConfiguration"];
LABEL_92:
        *error = _notInRRTSModeError;
      }
    }

    else if (error)
    {
      _notInRRTSModeError = [(MDMParser *)self _notInRRTSModeError];
      goto LABEL_92;
    }

LABEL_93:

    goto LABEL_94;
  }

  if ([v9 isEqualToString:@"DiagnosticSubmission"])
  {
    v12 = [settingCopy objectForKey:@"Enabled"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    if (!+[MDMMCInterface isDiagnosticsSubmissionRestricted])
    {
      goto LABEL_7;
    }

LABEL_80:
    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277D03448];
      v33 = DMCErrorArray();
      *error = [v31 DMCErrorWithDomain:v32 code:28003 descriptionArray:v33 errorType:{*MEMORY[0x277D032F8], 0}];
    }

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"AppAnalytics"])
  {
    goto LABEL_87;
  }

  if ([v9 isEqualToString:@"PasscodeLockGracePeriod"])
  {
    v20 = @"PasscodeLockGracePeriod";
LABEL_88:
    v12 = [settingCopy objectForKey:v20];
    if (v12)
    {
LABEL_6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:

LABEL_8:
        v13 = 1;
        goto LABEL_97;
      }
    }

LABEL_95:

    goto LABEL_96;
  }

  if ([v9 isEqualToString:@"OrganizationInfo"])
  {
    v12 = [settingCopy objectForKeyedSubscript:@"OrganizationInfo"];
    if (!v12)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030F0]];
    if (!v17)
    {
      goto LABEL_94;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v17 length])
    {
      goto LABEL_94;
    }

    v36 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030D8]];
    if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v37 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030F8]];
      if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v38 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030E0]];
        if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v39 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030E8]];
          if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {

LABEL_131:
            goto LABEL_132;
          }
        }
      }
    }

LABEL_164:

    goto LABEL_94;
  }

  if ([v9 isEqualToString:@"DefaultApplications"])
  {
    v12 = [settingCopy objectForKeyedSubscript:@"WebBrowser"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v17 = [settingCopy objectForKeyedSubscript:@"Calling"];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![MEMORY[0x277D034F8] isSetDefaultCallingAndMessagingAppsEnabled])
      {
        goto LABEL_94;
      }
    }

    v36 = [settingCopy objectForKeyedSubscript:@"Messaging"];
    if (!v36)
    {
      goto LABEL_131;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x277D034F8] isSetDefaultCallingAndMessagingAppsEnabled])
    {
      goto LABEL_131;
    }

    goto LABEL_164;
  }

  if ([v9 isEqualToString:@"MDMOptions"])
  {
    v12 = [settingCopy objectForKeyedSubscript:@"MDMOptions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D24960]];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    v36 = [v12 objectForKeyedSubscript:*MEMORY[0x277D24968]];
    if (!v36)
    {
      goto LABEL_131;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_131;
    }

    goto LABEL_164;
  }

  if ([v9 isEqualToString:@"TimeZone"])
  {
    v12 = [settingCopy objectForKey:@"TimeZone"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    if (!+[MDMMCInterface isAutomaticDateAndTimeForced])
    {
      goto LABEL_7;
    }

    goto LABEL_80;
  }

  if (![v9 isEqualToString:@"AccessibilitySettings"])
  {
    goto LABEL_96;
  }

  [objc_opt_class() _numericAccessibilitySettingsKeys];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obja = v63 = 0u;
  v40 = [obja countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v61;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obja);
        }

        v44 = *(*(&v60 + 1) + 8 * i);
        v45 = [settingCopy objectForKeyedSubscript:v44];
        if (v45)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v48 = 28006;
              goto LABEL_158;
            }

LABEL_159:

            v13 = 0;
            goto LABEL_160;
          }

          if ([v44 isEqualToString:@"TextSize"])
          {
            v46 = +[MDMAccessibilityManager sharedInstance];
            v47 = [v46 isValidTextSize:{objc_msgSend(v45, "integerValue")}];

            if ((v47 & 1) == 0)
            {
              if (error)
              {
                v48 = 28007;
LABEL_158:
                v49 = MEMORY[0x277CCA9B8];
                v50 = *MEMORY[0x277D03448];
                v52 = v44;
                v51 = DMCErrorArray();
                *error = [v49 DMCErrorWithDomain:v50 code:v48 descriptionArray:v51 errorType:{*MEMORY[0x277D032F8], v52, 0}];
              }

              goto LABEL_159;
            }
          }
        }
      }

      v41 = [obja countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_160:

LABEL_97:
  return v13;
}

- (id)_performSetDeviceName:(id)name
{
  nameCopy = name;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting device name.", buf, 2u);
  }

  v5 = [nameCopy objectForKey:@"DeviceName"];

  if (DMCLockdownSetDeviceName())
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03458];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:14003 descriptionArray:v9 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  return v6;
}

- (id)_performSetWallpaper:(id)wallpaper
{
  v34 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting wallpaper.", buf, 2u);
  }

  v5 = [wallpaperCopy objectForKeyedSubscript:@"Image"];
  v6 = [MEMORY[0x277D755B8] imageWithData:v5];
  if (v6)
  {
    v7 = [wallpaperCopy objectForKeyedSubscript:@"Where"];
    intValue = [v7 intValue];

    if (intValue == 3)
    {
      v9 = 1;
    }

    else
    {
      if (intValue != 1)
      {
        v14 = 0;
        v9 = 1;
        goto LABEL_13;
      }

      v9 = 0;
    }

    v14 = 1;
LABEL_13:
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__5;
    v30 = __Block_byref_object_dispose__5;
    v31 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = objc_opt_new();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __34__MDMParser__performSetWallpaper___block_invoke;
    v23[3] = &unk_27982C4B8;
    v17 = v15;
    v24 = v17;
    v25 = buf;
    [v16 setWallpaper:v6 forLockScreen:v14 homeScreen:v9 completionHandler:v23];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v27 + 5))
    {
      v18 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v27 + 5);
        *v32 = 138543362;
        v33 = v19;
        _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_ERROR, "Failed to set wallpaper with error: %{public}@", v32, 0xCu);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = DMCErrorArray();
      v13 = [v20 DMCErrorWithDomain:*MEMORY[0x277D03448] code:28002 descriptionArray:v21 errorType:{*MEMORY[0x277D032F8], 0}];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  v10 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_ERROR, "Could not get image from data", buf, 2u);
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = DMCErrorArray();
  v13 = [v11 DMCErrorWithDomain:*MEMORY[0x277D03448] code:28001 descriptionArray:v12 errorType:{*MEMORY[0x277D032F8], 0}];

LABEL_19:

  return v13;
}

void __34__MDMParser__performSetWallpaper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_performSetDataRoaming:(id)roaming
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [roaming objectForKey:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting data roaming enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:bOOLValue];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v14 = 0;
  v10 = [systemConnection performRequest:v8 error:&v14];
  v11 = v14;
  v12 = v14;

  return v11;
}

- (id)_performSetVoiceRoaming:(id)roaming
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [roaming objectForKey:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting voice roaming enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:bOOLValue];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v14 = 0;
  v10 = [systemConnection performRequest:v8 error:&v14];
  v11 = v14;
  v12 = v14;

  return v11;
}

- (id)_performSetBluetooth:(id)bluetooth
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [bluetooth objectForKeyedSubscript:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting Bluetooth enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:bOOLValue];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v14 = 0;
  v10 = [systemConnection performRequest:v8 error:&v14];
  v11 = v14;
  v12 = v14;

  return v11;
}

- (id)_performSetPersonalHotspot:(id)hotspot
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [hotspot objectForKey:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting Personal Hotspot enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:bOOLValue];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v14 = 0;
  v10 = [systemConnection performRequest:v8 error:&v14];
  v11 = v14;
  v12 = v14;

  return v11;
}

- (id)_performSetUpdatePath:(id)path
{
  pathCopy = path;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Writing Software Update setting to disk.", buf, 2u);
  }

  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__MDMParser__performSetUpdatePath___block_invoke;
  v14[3] = &unk_27982C098;
  v6 = pathCopy;
  v15 = v6;
  v13 = 0;
  [mEMORY[0x277D24648] updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v14 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D03480];
    v10 = DMCErrorArray();
    v11 = [v8 DMCErrorWithDomain:v9 code:12098 descriptionArray:v10 underlyingError:v7 errorType:{*MEMORY[0x277D03300], 0}];
  }

  else
  {
    DMCSendSettingsChangedNotification();
    v11 = 0;
  }

  return v11;
}

- (void)_performSetDefaultApp:(id)app forCategory:(unint64_t)category completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  appCopy = app;
  completionCopy = completion;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = appCopy;
    v20 = 2048;
    categoryCopy = category;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Setting default app: %{public}@ for category: %lu", buf, 0x16u);
  }

  v17 = 0;
  v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:appCopy fetchingPlaceholder:0 error:&v17];
  v11 = v17;
  supportedDefaultAppCategories = [v10 supportedDefaultAppCategories];
  if (v11)
  {
    completionCopy[2](completionCopy, v11);
  }

  else if ((LSDefaultAppCategoryMaskForCategory() & supportedDefaultAppCategories) != 0)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__MDMParser__performSetDefaultApp_forCategory_completion___block_invoke;
    v15[3] = &unk_27982BA30;
    v16 = completionCopy;
    [defaultWorkspace setDefaultApplicationForCategory:category toApplicationRecord:v10 completionHandler:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CustomSetDefaultAppErrorDomain" code:1 userInfo:0];
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_performSetDefaultBrowser:(id)browser completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  completionCopy = completion;
  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = browserCopy;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Setting default browser: %{public}@", buf, 0xCu);
  }

  v15 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:browserCopy fetchingPlaceholder:0 error:&v15];
  v9 = v15;
  if (v9)
  {
    completionCopy[2](completionCopy, v9);
  }

  else if ([v8 isEligibleWebBrowser])
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__MDMParser__performSetDefaultBrowser_completion___block_invoke;
    v13[3] = &unk_27982BA30;
    v14 = completionCopy;
    [defaultWorkspace setDefaultWebBrowserToApplicationRecord:v8 completionHandler:v13];
  }

  else
  {
    if ([v8 isWebBrowser])
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CustomSetDefaultBrowserErrorDomain" code:v11 userInfo:0];
    completionCopy[2](completionCopy, v12);
  }
}

- (id)_malformedRequestError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (BOOL)_isManagedApp:(id)app
{
  managementInformation = [app managementInformation];
  LOBYTE(self) = [(MDMParser *)self _isManagedAppFromManagementInformation:managementInformation];

  return self;
}

- (BOOL)_isManagedAppFromManagementInformation:(id)information
{
  informationCopy = information;
  v4 = informationCopy;
  if (informationCopy)
  {
    state = [informationCopy state];
    if (state <= 0x10)
    {
      v6 = 0x1F9F5u >> state;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)_handleSetAppManagementInfoRequest:(id)request outAdditionalResponseKeys:(id *)keys block:(id)block
{
  v45[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = [request objectForKeyedSubscript:@"Identifier"];
  v10 = v9;
  if (keys)
  {
    v44 = @"Identifier";
    v45[0] = v9;
    *keys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  }

  v11 = objc_opt_new();
  [v11 setType:2];
  [v11 setManagedAppsOnly:1];
  v43 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [v11 setBundleIdentifiers:v12];

  v42[0] = @"managementInformation";
  v42[1] = @"sourceIdentifier";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [v11 setPropertyKeys:v13];

  currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
  v40 = 0;
  v15 = [currentUserConnection performRequest:v11 error:&v40];
  v16 = v40;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    goto LABEL_11;
  }

  appsByBundleIdentifier = [v15 appsByBundleIdentifier];
  allValues = [appsByBundleIdentifier allValues];
  firstObject = [allValues firstObject];

  if ([(MDMParser *)self _isManagedApp:firstObject])
  {
    sourceIdentifier = [firstObject sourceIdentifier];

    if (!sourceIdentifier)
    {
      blockCopy[2](blockCopy, v10);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = v39 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v33 = firstObject;
        v34 = blockCopy;
        v28 = *v37;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v36 + 1) + 8 * i);
            v35 = 0;
            v31 = [currentUserConnection performRequest:v30 error:&v35];
            v32 = v35;
            if (v32)
            {
              v18 = v32;
              goto LABEL_24;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }

        v18 = 0;
LABEL_24:
        firstObject = v33;
        blockCopy = v34;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_10;
    }

    _installApplicationCouldNotModifyDDMAppsError = [(MDMParser *)self _installApplicationCouldNotModifyDDMAppsError];
  }

  else
  {
    _installApplicationCouldNotModifyDDMAppsError = [(MDMParser *)self _notManagedErrorAppID:v10];
  }

  v18 = _installApplicationCouldNotModifyDDMAppsError;
LABEL_10:

LABEL_11:

  return v18;
}

- (id)_performSetAppConfig:(id)config outAdditionalResponseKeys:(id *)keys
{
  configCopy = config;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__MDMParser__performSetAppConfig_outAdditionalResponseKeys___block_invoke;
  v10[3] = &unk_27982C4E0;
  v11 = configCopy;
  v7 = configCopy;
  v8 = [(MDMParser *)self _handleSetAppManagementInfoRequest:v7 outAdditionalResponseKeys:keys block:v10];

  return v8;
}

id __60__MDMParser__performSetAppConfig_outAdditionalResponseKeys___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setBundleIdentifier:v3];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"Configuration"];
  [v4 setConfiguration:v5];

  v8[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)_performSetAppAttributes:(id)attributes outAdditionalResponseKeys:(id *)keys
{
  v53 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v7 = [attributesCopy objectForKeyedSubscript:@"Attributes"];
  v8 = [(MDMParser *)self _appAttributesWithRequestedAttributes:v7];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24898]];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _malformedRequestError = [(MDMParser *)self _malformedRequestError];
      goto LABEL_55;
    }
  }

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24868]];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24870]];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _malformedRequestError = [(MDMParser *)self _malformedRequestError];
LABEL_53:

        goto LABEL_54;
      }
    }

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24878]];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _malformedRequestError = [(MDMParser *)self _malformedRequestError];
LABEL_52:

        goto LABEL_53;
      }
    }

    v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24880]];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _malformedRequestError = [(MDMParser *)self _malformedRequestError];
LABEL_51:

        goto LABEL_52;
      }
    }

    v35 = v13;
    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24858]];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _malformedRequestError = [(MDMParser *)self _malformedRequestError];
        v25 = v14;
LABEL_50:

        v13 = v35;
        goto LABEL_51;
      }

      v30 = v10;
      keysCopy = keys;
      v27 = v12;
      v28 = v11;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v48 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v49;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(v15);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              _malformedRequestError = [(MDMParser *)self _malformedRequestError];

              v11 = v28;
              v10 = v30;
              v12 = v27;
              v25 = v14;
              goto LABEL_50;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v11 = v28;
      v10 = v30;
      v12 = v27;
      keys = keysCopy;
    }

    v34 = v14;
    v20 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24860]];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      _malformedRequestError = [(MDMParser *)self _malformedRequestError];
      v25 = v14;
    }

    else
    {
      v21 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24890]];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        _malformedRequestError = [(MDMParser *)self _malformedRequestError];
      }

      else
      {
        keysCopy2 = keys;
        v22 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24848]];
        if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          _malformedRequestError = [(MDMParser *)self _malformedRequestError];
        }

        else
        {
          v31 = v22;
          v29 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24850]];
          if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            _malformedRequestError = [(MDMParser *)self _malformedRequestError];
          }

          else
          {
            v23 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24888]];
            if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              _malformedRequestError = [(MDMParser *)self _malformedRequestError];
            }

            else
            {
              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v36[2] = __64__MDMParser__performSetAppAttributes_outAdditionalResponseKeys___block_invoke;
              v36[3] = &unk_27982C508;
              v37 = v9;
              v38 = v10;
              v39 = v11;
              v40 = v12;
              v41 = v35;
              v42 = v34;
              v43 = v20;
              v44 = v21;
              v45 = v31;
              v46 = v29;
              v47 = v23;
              _malformedRequestError = [(MDMParser *)self _handleSetAppManagementInfoRequest:attributesCopy outAdditionalResponseKeys:keysCopy2 block:v36];
            }
          }

          v22 = v31;
        }
      }

      v25 = v34;
    }

    goto LABEL_50;
  }

  _malformedRequestError = [(MDMParser *)self _malformedRequestError];
LABEL_54:

LABEL_55:

  return _malformedRequestError;
}

id __64__MDMParser__performSetAppAttributes_outAdditionalResponseKeys___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setBundleIdentifier:v3];
  [v4 setVPNUUIDString:a1[4]];
  [v4 setCellularSliceUUIDString:a1[5]];
  [v4 setContentFilterUUIDString:a1[6]];
  [v4 setDNSProxyUUIDString:a1[7]];
  [v4 setRelayUUIDString:a1[8]];
  v5 = objc_opt_new();
  [v5 setBundleIdentifier:v3];
  [v5 setAssociatedDomains:a1[9]];
  v6 = objc_opt_new();
  [v6 setBundleIdentifier:v3];
  [v6 setAssociatedDomainsEnableDirectDownloads:a1[10]];
  v7 = objc_opt_new();
  [v7 setBundleIdentifier:v3];
  [v7 setTapToPayScreenLock:a1[11]];
  v8 = objc_opt_new();
  [v8 setBundleIdentifier:v3];
  [v8 setAllowUserToHide:a1[12]];
  v9 = objc_opt_new();
  [v9 setBundleIdentifier:v3];
  [v9 setAllowUserToLock:a1[13]];
  v10 = objc_opt_new();
  [v10 setBundleIdentifier:v3];

  [v10 setRemovable:a1[14]];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v12 = v11;
  if (v4)
  {
    [v11 addObject:v4];
  }

  if (v5)
  {
    [v12 addObject:v5];
  }

  if (v6)
  {
    [v12 addObject:v6];
  }

  if (v7)
  {
    [v12 addObject:v7];
  }

  if (v8)
  {
    [v12 addObject:v8];
  }

  if (v9)
  {
    [v12 addObject:v9];
  }

  if (v10)
  {
    [v12 addObject:v10];
  }

  return v12;
}

- (id)_performSetSharedDeviceConfiguration:(id)configuration
{
  v42[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting shared device configuration.", buf, 2u);
  }

  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  isRapidReturnToService = [mEMORY[0x277D24640] isRapidReturnToService];

  mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
  userMode = [mEMORY[0x277D24640]2 userMode];

  if (isRapidReturnToService && userMode != 1)
  {
    v10 = MEMORY[0x277CBEB98];
    v42[0] = @"TemporarySessionTimeout";
    v42[1] = @"Item";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __50__MDMParser__performSetSharedDeviceConfiguration___block_invoke;
    v38[3] = &unk_27982C530;
    v39 = v12;
    v14 = v13;
    v40 = v14;
    v15 = v12;
    [configurationCopy enumerateKeysAndObjectsUsingBlock:v38];
    v16 = v14;

    configurationCopy = v16;
  }

  v17 = [configurationCopy objectForKey:@"QuotaSize"];
  v18 = [configurationCopy objectForKey:@"ResidentUsers"];
  v19 = [configurationCopy objectForKey:@"TemporarySessionOnly"];
  v20 = [configurationCopy objectForKey:@"PasscodePolicy"];
  v21 = [v20 objectForKey:@"PasscodeLockGracePeriod"];
  v22 = [v20 objectForKey:@"AutoLockTime"];
  v23 = [(MDMParser *)self _performSetSessionTimeout:configurationCopy];
  if (!v23 && userMode == 1)
  {
    if ([v19 BOOLValue])
    {
      if (v17)
      {
        v24 = [(MDMParser *)self _performSetResidentUserQuotaSize:configurationCopy];
        if (v24)
        {
LABEL_22:
          v23 = v24;
          goto LABEL_23;
        }
      }

LABEL_17:
      v24 = [(MDMParser *)self _performSetTemporarySessionOnly:configurationCopy];
      if (!v24)
      {
        v24 = [(MDMParser *)self _performSetMAIDDefaultDomains:configurationCopy];
        if (!v24)
        {
          v24 = [(MDMParser *)self _performSetOnlineAuthenticationGracePeriod:configurationCopy];
          if (!v24)
          {
            v24 = [(MDMParser *)self _performSetSkipLanguageAndLocaleSetupForNewUsers:configurationCopy];
            if (!v24)
            {
              v24 = [(MDMParser *)self _performSetAwaitUserConfiguration:configurationCopy];
              if (!v24)
              {
                mEMORY[0x277D26248] = [MEMORY[0x277D26248] sharedHacks];
                v37 = [mEMORY[0x277D26248] quantizedGracePeriodInSeconds:v21];

                mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
                [mEMORY[0x277D262A0] setValue:v37 forSetting:*MEMORY[0x277D25FE0]];

                v29 = MEMORY[0x277CCABB0];
                mEMORY[0x277D26248]2 = [MEMORY[0x277D26248] sharedHacks];
                v31 = [mEMORY[0x277D26248]2 quantizedAutoLockInSeconds:v22];
                integerValue = [v31 integerValue];

                integerValue2 = [v22 integerValue];
                if (integerValue <= integerValue2)
                {
                  v34 = integerValue2;
                }

                else
                {
                  v34 = integerValue;
                }

                v35 = [v29 numberWithInteger:v34];

                mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
                [mEMORY[0x277D262A0]2 setValue:v35 forSetting:*MEMORY[0x277D25D78]];

                v23 = 0;
                v22 = v35;
                v21 = v37;
                goto LABEL_23;
              }
            }
          }
        }
      }

      goto LABEL_22;
    }

    if (v17)
    {
      v25 = [(MDMParser *)self _performSetResidentUserQuotaSize:configurationCopy];
    }

    else
    {
      if (!v18)
      {
        goto LABEL_17;
      }

      v25 = [(MDMParser *)self _performSetResidentUsers:configurationCopy];
    }

    v23 = v25;
    if (v25)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_23:

  return v23;
}

void __50__MDMParser__performSetSharedDeviceConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)_performSetResidentUsers:(id)users
{
  usersCopy = users;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting resident users for shared device.", v9, 2u);
  }

  v6 = [usersCopy objectForKey:@"ResidentUsers"];

  v7 = [(MDMParser *)self _setResidentUsersNumber:v6];

  return v7;
}

- (id)_performSetMaximumResidentUsers:(id)users
{
  usersCopy = users;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting maximum resident users.", v9, 2u);
  }

  v6 = [usersCopy objectForKey:@"MaximumResidentUsers"];

  v7 = [(MDMParser *)self _setResidentUsersNumber:v6];

  return v7;
}

- (id)_setResidentUsersNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy integerValue] <= 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v10 = *MEMORY[0x277D032F8];
    v11 = v15;
    v12 = v16;
    v13 = 12092;
  }

  else
  {
    if (![MEMORY[0x277D03538] isFirstSetupBuddyDone] || (objc_msgSend(MEMORY[0x277D77BF8], "sharedManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "allUsers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, !v6))
    {
      v14 = [MEMORY[0x277D03538] configureResidentUsersNumberForSharedDevice:numberCopy preferenceDomain:*MEMORY[0x277D24950]];
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v10 = *MEMORY[0x277D032F8];
    v11 = v7;
    v12 = v8;
    v13 = 12090;
  }

  v14 = [v11 DMCErrorWithDomain:v12 code:v13 descriptionArray:v9 errorType:{v10, 0}];

LABEL_8:

  return v14;
}

- (id)_performSetResidentUserQuotaSize:(id)size
{
  sizeCopy = size;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad resident user quota size.", buf, 2u);
  }

  if ([MEMORY[0x277D03538] isFirstSetupBuddyDone] && (objc_msgSend(MEMORY[0x277D77BF8], "sharedManager"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "allUsers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D03480];
    v10 = DMCErrorArray();
    v11 = [v8 DMCErrorWithDomain:v9 code:12090 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  else
  {
    v10 = [sizeCopy objectForKey:@"QuotaSize"];
    if ([v10 integerValue] > 2047)
    {
      unsignedLongLongValue = [v10 unsignedLongLongValue];
      v16 = MEMORY[0x277D03538];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:1000000 * unsignedLongLongValue];
      [v16 configureQuotaSizeForSharedDevice:v14 preferenceDomain:*MEMORY[0x277D24950]];
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D03480];
      v14 = DMCErrorArray();
      [v12 DMCErrorWithDomain:v13 code:12091 descriptionArray:v14 errorType:{*MEMORY[0x277D032F8], 0}];
    }
    v11 = ;
  }

  return v11;
}

- (id)_performSetSessionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad session timeout.", buf, 2u);
  }

  v5 = [timeoutCopy objectForKey:@"UserSessionTimeout"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  [v5 floatValue];
  v8 = v7;
  v9 = v7 >= 30.0 || v7 <= 0.0;
  v10 = 30.0;
  if (v9)
  {
    v10 = v8;
  }

  if (([MEMORY[0x277D03538] configureUserSessionTimeout:{v10, v8}] & 1) == 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D03480];
    v12 = DMCErrorArray();
    v17 = [v18 DMCErrorWithDomain:v19 code:12093 descriptionArray:v12 errorType:{*MEMORY[0x277D03308], 0}];
  }

  else
  {
LABEL_11:
    v11 = [timeoutCopy objectForKey:@"TemporarySessionTimeout"];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_19;
    }

    [v11 floatValue];
    v14 = v13;
    v15 = v13 >= 30.0 || v13 <= 0.0;
    v16 = 30.0;
    if (v15)
    {
      v16 = v14;
    }

    if (([MEMORY[0x277D03538] configureTemporarySessionTimeout:{v16, v14}] & 1) == 0)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D03480];
      v22 = DMCErrorArray();
      v17 = [v20 DMCErrorWithDomain:v21 code:12093 descriptionArray:v22 errorType:{*MEMORY[0x277D03308], 0}];
    }

    else
    {
LABEL_19:
      v17 = 0;
    }
  }

  return v17;
}

- (id)_performSetTemporarySessionOnly:(id)only
{
  onlyCopy = only;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad temporary session only mode.", buf, 2u);
  }

  v5 = [onlyCopy objectForKey:@"TemporarySessionOnly"];
  v6 = [onlyCopy objectForKey:@"QuotaSize"];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [onlyCopy objectForKeyedSubscript:@"ResidentUsers"];
    v7 = v8 == 0;
  }

  v9 = MEMORY[0x277D03538];
  bOOLValue = [v5 BOOLValue];
  if ([v9 configureTemporarySessionOnly:bOOLValue useDynamicQuotaSize:v6 == 0 restoreQuotaSizeWhenDisabled:v7 preferenceDomain:*MEMORY[0x277D24950]])
  {
    v11 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    v14 = DMCErrorArray();
    v11 = [v12 DMCErrorWithDomain:v13 code:12094 descriptionArray:v14 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v11;
}

- (id)_performSetMAIDDefaultDomains:(id)domains
{
  domainsCopy = domains;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad Managed Apple ID default domain.", buf, 2u);
  }

  v5 = [domainsCopy objectForKeyedSubscript:@"ManagedAppleIDDefaultDomains"];

  if ([MEMORY[0x277D03538] configureMAIDDefaultDomains:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = DMCErrorArray();
    v6 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D03480] code:12104 descriptionArray:v7 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetOnlineAuthenticationGracePeriod:(id)period
{
  periodCopy = period;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad online authentication grace period", buf, 2u);
  }

  v5 = [periodCopy objectForKeyedSubscript:@"OnlineAuthenticationGracePeriod"];

  if ([MEMORY[0x277D03538] configureOnlineAuthenticationGracePeriod:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:12105 descriptionArray:v9 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetSkipLanguageAndLocaleSetupForNewUsers:(id)users
{
  usersCopy = users;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad skip language and locale setup for new users", buf, 2u);
  }

  v5 = [usersCopy objectForKeyedSubscript:@"SkipLanguageAndLocaleSetupForNewUsers"];

  if ([MEMORY[0x277D03538] configureShouldSkipLanguageAndLocaleSetupForNewUsers:{objc_msgSend(v5, "BOOLValue")}])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:12115 descriptionArray:v9 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetAwaitUserConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad await user configuration", buf, 2u);
  }

  v5 = [configurationCopy objectForKeyedSubscript:@"AwaitUserConfiguration"];

  if ([MEMORY[0x277D03538] configureAwaitUserConfiguration:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:12123 descriptionArray:v9 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetDiagnosticSubmission:(id)submission
{
  v4 = [submission objectForKey:@"Enabled"];
  bOOLValue = [v4 BOOLValue];

  v6 = [(MDMParser *)self _setDiagnosticSubmissionEnabled:bOOLValue];
  if (!v6)
  {
    if ([(MDMParser *)self _isChlorineEligible])
    {
      v6 = [(MDMParser *)self _setAppAnalyticsEnabled:bOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_setDiagnosticSubmissionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = DMCStringForBool();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting diagnostic submission allowed: %{public}@", buf, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 setEnabled:enabledCopy];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v13 = 0;
  v9 = [systemConnection performRequest:v7 error:&v13];
  v10 = v13;
  v11 = v13;

  return v10;
}

- (id)_performSetAppAnalytics:(id)analytics
{
  v4 = [analytics objectForKey:@"Enabled"];
  bOOLValue = [v4 BOOLValue];

  if (![(MDMParser *)self _isChlorineEligible])
  {
    goto LABEL_4;
  }

  v6 = [(MDMParser *)self _setDiagnosticSubmissionEnabled:bOOLValue];
  if (v6)
  {
    goto LABEL_5;
  }

  if (![(MDMParser *)self _isChlorineEligible])
  {
    v6 = 0;
  }

  else
  {
LABEL_4:
    v6 = [(MDMParser *)self _setAppAnalyticsEnabled:bOOLValue];
  }

LABEL_5:

  return v6;
}

- (id)_setAppAnalyticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = DMCStringForBool();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting app analytics allowed: %{public}@", buf, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 setEnabled:enabledCopy];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v13 = 0;
  v9 = [systemConnection performRequest:v7 error:&v13];
  v10 = v13;
  v11 = v13;

  return v10;
}

- (id)_performSetGracePeriod:(id)period
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [period objectForKey:@"PasscodeLockGracePeriod"];
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 67109120;
    intValue = [v3 intValue];
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting grace period: %d seconds", buf, 8u);
  }

  v6 = objc_opt_new();
  [v6 setSeconds:{objc_msgSend(v3, "unsignedIntegerValue")}];
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v12 = 0;
  v8 = [systemConnection performRequest:v6 error:&v12];
  v9 = v12;
  v10 = v12;

  return v9;
}

- (id)_performSetOrganizationInfo:(id)info
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [info objectForKeyedSubscript:@"OrganizationInfo"];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    if (_performSetOrganizationInfo__onceToken != -1)
    {
      [MDMParser _performSetOrganizationInfo:];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = _performSetOrganizationInfo__validKeys;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v5 objectForKeyedSubscript:{v12, v21}];
          v14 = v13;
          if (v13 && [v13 length])
          {
            [v6 setObject:v14 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v15 = [v6 count];
    server = [(MDMParser *)self server];
    v17 = server;
    if (v15)
    {
      v18 = v6;
    }

    else
    {
      v18 = 0;
    }

    [server setOrganizationInfo:{v18, v21}];
  }

  else
  {
    server2 = [(MDMParser *)self server];
    [server2 setOrganizationInfo:0];
  }

  return 0;
}

void __41__MDMParser__performSetOrganizationInfo___block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D03100];
  v5[0] = *MEMORY[0x277D030F0];
  v5[1] = v0;
  v1 = *MEMORY[0x277D030F8];
  v5[2] = *MEMORY[0x277D030D8];
  v5[3] = v1;
  v2 = *MEMORY[0x277D030E8];
  v5[4] = *MEMORY[0x277D030E0];
  v5[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v4 = _performSetOrganizationInfo__validKeys;
  _performSetOrganizationInfo__validKeys = v3;
}

- (id)_performSetDefaultApplications:(id)applications
{
  v63 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(applicationsCopy, "count") - 1}];
  if (_performSetDefaultApplications__onceToken != -1)
  {
    [MDMParser _performSetDefaultApplications:];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = _performSetDefaultApplications__validKeys;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v7)
  {
    v8 = *v59;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        v11 = [applicationsCopy objectForKeyedSubscript:v10];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v11 length])
            {
              [v5 setObject:v11 forKeyedSubscript:v10];
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v7);
  }

  v12 = [v5 objectForKeyedSubscript:@"WebBrowser"];

  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = [v5 objectForKeyedSubscript:@"WebBrowser"];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__5;
  v56 = __Block_byref_object_dispose__5;
  v57 = 0;
  v14 = objc_opt_new();
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __44__MDMParser__performSetDefaultApplications___block_invoke_2;
  v48[3] = &unk_27982C558;
  v15 = v13;
  v49 = v15;
  v51 = &v52;
  v16 = v14;
  v50 = v16;
  [(MDMParser *)self _performSetDefaultBrowser:v15 completion:v48];
  [v16 waitForCompletion];
  v17 = v53[5];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_INFO, "Successfully set the default browser. Disallowing preference prompting.", buf, 2u);
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] setBoolValue:0 forSetting:@"allowDefaultBrowserPrompting"];
  }

  _Block_object_dispose(&v52, 8);
  if (!v17)
  {
LABEL_21:
    v21 = [v5 objectForKeyedSubscript:@"Calling"];

    if (!v21)
    {
      goto LABEL_27;
    }

    v22 = [v5 objectForKeyedSubscript:@"Calling"];
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__5;
    v56 = __Block_byref_object_dispose__5;
    v57 = 0;
    v23 = objc_opt_new();
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__MDMParser__performSetDefaultApplications___block_invoke_1201;
    v43[3] = &unk_27982C558;
    v24 = v22;
    v44 = v24;
    v46 = &v52;
    v25 = v23;
    v45 = v25;
    [(MDMParser *)self _performSetDefaultApp:v24 forCategory:4 completion:v43];
    [v25 waitForCompletion];
    v17 = v53[5];
    if (v17)
    {
      v26 = v17;
    }

    else
    {
      v27 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_DEFAULT, "Successfully set the default calling app.", buf, 2u);
      }
    }

    _Block_object_dispose(&v52, 8);
    if (!v17)
    {
LABEL_27:
      v28 = [v5 objectForKeyedSubscript:@"Messaging"];

      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = [v5 objectForKeyedSubscript:@"Messaging"];
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__5;
      v56 = __Block_byref_object_dispose__5;
      v57 = 0;
      v30 = objc_opt_new();
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __44__MDMParser__performSetDefaultApplications___block_invoke_1202;
      v39 = &unk_27982C558;
      v31 = v29;
      v40 = v31;
      v42 = &v52;
      v32 = v30;
      v41 = v32;
      [(MDMParser *)self _performSetDefaultApp:v31 forCategory:3 completion:&v36];
      [v32 waitForCompletion];
      v17 = v53[5];
      if (v17)
      {
        v33 = v17;
      }

      else
      {
        v34 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Successfully set the default messaging app.", buf, 2u);
        }
      }

      _Block_object_dispose(&v52, 8);
      if (!v17)
      {
LABEL_33:
        v17 = 0;
      }
    }
  }

  return v17;
}

void __44__MDMParser__performSetDefaultApplications___block_invoke()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v2[0] = @"WebBrowser";
  v2[1] = @"Calling";
  v2[2] = @"Messaging";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:3];
  v1 = _performSetDefaultApplications__validKeys;
  _performSetDefaultApplications__validKeys = v0;
}

void __44__MDMParser__performSetDefaultApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set default browser to %{public}@ with error code %{public}@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) complete];
}

void __44__MDMParser__performSetDefaultApplications___block_invoke_1201(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set default calling app to: %{public}@ with error code: %{public}@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) complete];
}

void __44__MDMParser__performSetDefaultApplications___block_invoke_1202(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set default messaging app to: %{public}@ with error code: %{public}@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) complete];
}

- (id)_performSetMDMOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:@"MDMOptions"];
  v5 = [MEMORY[0x277D24688] validatedMDMOptionsFromOptionsDictionary:v4];
  server = [(MDMParser *)self server];
  [server setMDMOptions:v5];

  return 0;
}

- (id)_performSetTimezone:(id)timezone
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [timezone objectForKeyedSubscript:@"TimeZone"];
  [v3 UTF8String];
  v4 = tzlink();
  if (v4)
  {
    v5 = v4;
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v3;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Failed to set timezone to %{public}@ with error code %d", buf, 0x12u);
    }

    if (v5 <= 0x2D && ((1 << v5) & 0x200000000022) != 0)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D03448];
      v9 = DMCErrorArray();
      v10 = *MEMORY[0x277D032F8];
      v11 = v7;
      v12 = v8;
      v13 = 28005;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D03448];
      v9 = DMCErrorArray();
      v10 = *MEMORY[0x277D032F8];
      v11 = v15;
      v12 = v16;
      v13 = 28004;
    }

    v14 = [v11 DMCErrorWithDomain:v12 code:v13 descriptionArray:v9 errorType:{v10, 0}];
  }

  else
  {
    TMSetAutomaticTimeZoneEnabled();
    v14 = 0;
  }

  return v14;
}

- (id)_performSetAccessibilitySettings:(id)settings
{
  v23 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _allAccessibilitySettingsKeys = [objc_opt_class() _allAccessibilitySettingsKeys];
  v5 = [_allAccessibilitySettingsKeys countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138543362;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(_allAccessibilitySettingsKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [settingsCopy objectForKeyedSubscript:{v10, v14}];
        if (v11)
        {
          v12 = +[MDMAccessibilityManager sharedInstance];
          if ([v10 isEqualToString:@"ZoomEnabled"])
          {
            [v12 setZoomEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"BoldTextEnabled"])
          {
            [v12 setBoldTextEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"VoiceOverEnabled"])
          {
            [v12 setVoiceOverEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"ReduceMotionEnabled"])
          {
            [v12 setReduceMotionEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"IncreaseContrastEnabled"])
          {
            [v12 setIncreaseContrastEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"TouchAccommodationsEnabled"])
          {
            [v12 setTouchAccommodationsEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"ReduceTransparencyEnabled"])
          {
            [v12 setReduceTransparencyEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"GrayscaleEnabled"])
          {
            [v12 setGrayscaleEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"TextSize"])
          {
            [v12 setTextSize:{objc_msgSend(v11, "integerValue")}];
          }

          else
          {
            log = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = v14;
              v21 = v10;
              _os_log_impl(&dword_2561F5000, log, OS_LOG_TYPE_ERROR, "Ignoring unsupported accessibility key: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [_allAccessibilitySettingsKeys countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  return 0;
}

+ (id)_numericAccessibilitySettingsKeys
{
  if (_numericAccessibilitySettingsKeys_onceToken != -1)
  {
    +[MDMParser _numericAccessibilitySettingsKeys];
  }

  v3 = _numericAccessibilitySettingsKeys_numericKeys;

  return v3;
}

void __46__MDMParser__numericAccessibilitySettingsKeys__block_invoke()
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = @"ZoomEnabled";
  v2[1] = @"BoldTextEnabled";
  v2[2] = @"VoiceOverEnabled";
  v2[3] = @"ReduceMotionEnabled";
  v2[4] = @"IncreaseContrastEnabled";
  v2[5] = @"TouchAccommodationsEnabled";
  v2[6] = @"ReduceTransparencyEnabled";
  v2[7] = @"GrayscaleEnabled";
  v2[8] = @"TextSize";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:9];
  v1 = _numericAccessibilitySettingsKeys_numericKeys;
  _numericAccessibilitySettingsKeys_numericKeys = v0;
}

- (id)_performSetting:(id)setting outAdditionalResponseKeys:(id *)keys outRestartAppleTVApp:(BOOL *)app
{
  settingCopy = setting;
  v8 = [settingCopy objectForKey:@"Item"];
  if ([v8 isEqualToString:@"DeviceName"])
  {
    v9 = [(MDMParser *)self _performSetDeviceName:settingCopy];
LABEL_39:
    v10 = v9;
    goto LABEL_40;
  }

  if ([v8 isEqualToString:@"Wallpaper"])
  {
    v9 = [(MDMParser *)self _performSetWallpaper:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DataRoaming"])
  {
    v9 = [(MDMParser *)self _performSetDataRoaming:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"VoiceRoaming"])
  {
    v9 = [(MDMParser *)self _performSetVoiceRoaming:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"Bluetooth"])
  {
    v9 = [(MDMParser *)self _performSetBluetooth:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"PersonalHotspot"])
  {
    v9 = [(MDMParser *)self _performSetPersonalHotspot:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"ApplicationConfiguration"])
  {
    v9 = [(MDMParser *)self _performSetAppConfig:settingCopy outAdditionalResponseKeys:keys];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"ApplicationAttributes"])
  {
    v9 = [(MDMParser *)self _performSetAppAttributes:settingCopy outAdditionalResponseKeys:keys];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"MaximumResidentUsers"])
  {
    v9 = [(MDMParser *)self _performSetMaximumResidentUsers:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"SoftwareUpdateSettings"])
  {
    v9 = [(MDMParser *)self _performSetUpdatePath:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"SharedDeviceConfiguration"])
  {
    v9 = [(MDMParser *)self _performSetSharedDeviceConfiguration:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DiagnosticSubmission"])
  {
    v9 = [(MDMParser *)self _performSetDiagnosticSubmission:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"AppAnalytics"])
  {
    v9 = [(MDMParser *)self _performSetAppAnalytics:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"PasscodeLockGracePeriod"])
  {
    v9 = [(MDMParser *)self _performSetGracePeriod:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"OrganizationInfo"])
  {
    v9 = [(MDMParser *)self _performSetOrganizationInfo:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DefaultApplications"])
  {
    v9 = [(MDMParser *)self _performSetDefaultApplications:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"MDMOptions"])
  {
    v9 = [(MDMParser *)self _performSetMDMOptions:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"TimeZone"])
  {
    v9 = [(MDMParser *)self _performSetTimezone:settingCopy];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"AccessibilitySettings"])
  {
    v9 = [(MDMParser *)self _performSetAccessibilitySettings:settingCopy];
    goto LABEL_39;
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277D03448];
  v14 = DMCErrorArray();
  v10 = [v12 DMCErrorWithDomain:v13 code:28000 descriptionArray:v14 errorType:{*MEMORY[0x277D032F8], v8, 0}];

LABEL_40:

  return v10;
}

- (id)_settings:(id)_settings accessRights:(unint64_t)rights
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [_settings objectForKey:@"Settings"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v5;
    v7 = v5;
    v8 = v6;
    obj = v7;
    v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      selfCopy = self;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];

            goto LABEL_29;
          }

          v14 = [v13 objectForKey:@"Item"];
          if (v14)
          {
            v15 = v8;
            v31 = 0;
            v16 = [(MDMParser *)self _validateSetting:v13 accessRights:rights outError:&v31];
            v17 = v31;
            if (v16)
            {
              buf[0] = 0;
              v30 = 0;
              v18 = [(MDMParser *)self _performSetting:v13 outAdditionalResponseKeys:&v30 outRestartAppleTVApp:buf];
              v19 = v30;

              if (v18)
              {
                [(MDMAbstractTunnelParser *)MDMParser responseWithError:v18];
              }

              else
              {
                [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
              }
              v21 = ;
            }

            else
            {
              if (v17)
              {
                v21 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v17];
              }

              else
              {
                v21 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
              }

              v19 = 0;
            }

            v8 = v15;
            [v21 setObject:v14 forKey:{@"Item", v25}];
            if (v19)
            {
              [v21 addEntriesFromDictionary:v19];
            }

            [v15 addObject:v21];

            self = selfCopy;
          }

          else
          {
            v20 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_ERROR, "Ignoring setting command missing the Item key", buf, 2u);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v22 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    v23 = [v22 mutableCopy];

    [v23 setObject:v8 forKey:@"Settings"];
LABEL_29:

    v5 = v25;
  }

  else
  {
    v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }

  return v23;
}

- (id)_appStoreDisabledError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12031 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_stringForBookState:(unint64_t)state
{
  if (state - 1 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_27982C860[state - 1];
  }
}

+ (id)_stringForAppState:(unint64_t)state
{
  if (state > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_27982C8A8[state];
  }
}

- (id)_appAlreadyInstalledErrorWithBundleID:(id)d
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12025 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], d, 0}];

  return v6;
}

- (id)_appAlreadyInstalledErrorWithiTunesStoreID:(id)d
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  stringValue = [d stringValue];
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12025 descriptionArray:v6 errorType:{*MEMORY[0x277D032F8], stringValue, 0}];

  return v7;
}

- (id)_appAlreadyQueuedErrorWithBundleID:(id)d
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12026 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], d, 0}];

  return v6;
}

- (id)_appAlreadyQueuedErrorWithiTunesStoreID:(id)d
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  stringValue = [d stringValue];
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12026 descriptionArray:v6 errorType:{*MEMORY[0x277D032F8], stringValue, 0}];

  return v7;
}

- (id)_licenseNotFoundErrorWithBundleID:(id)d underlyingError:(id)error
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D03480];
  errorCopy = error;
  dCopy = d;
  v8 = DMCErrorArray();
  v9 = [v5 DMCErrorWithDomain:v6 code:12064 descriptionArray:v8 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], dCopy, 0}];

  return v9;
}

- (id)_licenseNotFoundErrorWithiTunesStoreID:(id)d underlyingError:(id)error
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D03480];
  errorCopy = error;
  stringValue = [d stringValue];
  v9 = DMCErrorArray();
  v10 = [v5 DMCErrorWithDomain:v6 code:12064 descriptionArray:v9 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], stringValue, 0}];

  return v10;
}

- (id)_cannotValidateAppIDErrorUnderlyingError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  errorCopy = error;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12023 descriptionArray:v6 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

- (id)_invalidManifestErrorWithURL:(id)l underlyingError:(id)error
{
  v5 = MEMORY[0x277CCACE0];
  errorCopy = error;
  v7 = [v5 componentsWithURL:l resolvingAgainstBaseURL:0];
  [v7 setQuery:0];
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D03480];
  v10 = [v7 URL];
  v11 = DMCErrorArray();
  v12 = [v8 DMCErrorWithDomain:v9 code:12024 descriptionArray:v11 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], v10, 0}];

  return v12;
}

- (void)_installApplication:(id)application assertion:(id)assertion completionBlock:(id)block
{
  applicationCopy = application;
  assertionCopy = assertion;
  blockCopy = block;
  server = [(MDMParser *)self server];
  isAppInstallBlocked = [server isAppInstallBlocked];

  if (isAppInstallBlocked)
  {
    v13 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "Application installs are blocked, returning NotNow for InstallApplication.", buf, 2u);
    }

    v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
    [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:applicationCopy response:v14];
    if (blockCopy)
    {
      blockCopy[2](blockCopy, v14);
    }

    goto LABEL_41;
  }

  v15 = [applicationCopy objectForKeyedSubscript:@"ManifestURL"];
  v14 = v15;
  if (!v15 || ([MEMORY[0x277CBEBC0] URLWithString:v15], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v57 = assertionCopy;
    v58 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke;
    aBlock[3] = &unk_27982C580;
    aBlock[4] = self;
    v16 = applicationCopy;
    v84 = v16;
    v17 = blockCopy;
    v85 = v17;
    v56 = _Block_copy(aBlock);
    v18 = [v16 objectForKeyedSubscript:@"Identifier"];
    v19 = [v16 objectForKeyedSubscript:@"iTunesStoreID"];
    v62 = [v16 objectForKeyedSubscript:@"Options"];
    v20 = [v16 objectForKeyedSubscript:@"Attributes"];
    v60 = [v16 objectForKeyedSubscript:@"Configuration"];
    v63 = [v16 objectForKeyedSubscript:@"ManagementFlags"];
    v61 = [v16 objectForKeyedSubscript:@"ChangeManagementState"];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    personaID = [mEMORY[0x277D24648] personaID];

    v22 = v19 != 0;
    if (v19)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    if (v14)
    {
      v22 = v23;
    }

    v66 = v18;
    if (v18)
    {
      ++v22;
    }

    if (v22 != 1 || v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v62 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v61 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v28 = v56;
      (*(v56 + 2))(v56, 0);
LABEL_36:
      v29 = v58;
      v24 = v62;
LABEL_37:

      assertionCopy = v57;
      goto LABEL_41;
    }

    v54 = [(MDMParser *)self _appManagementFlagsWithRequestedFlags:v63];

    v53 = [(MDMParser *)self _appAttributesWithRequestedAttributes:v20];

    v24 = v62;
    if (v62)
    {
      v25 = [v62 objectForKeyedSubscript:@"NotManaged"];
      v26 = [v62 objectForKeyedSubscript:@"PurchaseMethod"];
      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v28 = v56;
        (*(v56 + 2))(v56, 0);
        goto LABEL_44;
      }

      v64 = v25;
      intValue = [v26 intValue];
      if (intValue >= 2)
      {
        v28 = v56;
        (*(v56 + 2))(v56, @"PurchaseMethodNotSupported");
LABEL_44:

        v20 = v53;
        v63 = v54;
        goto LABEL_36;
      }

      v35 = intValue;

      v24 = v62;
    }

    else
    {
      v35 = 0;
    }

    if (!v14 && !v35 && [MEMORY[0x277D03538] isSharediPad])
    {
      v28 = v56;
      (*(v56 + 2))(v56, @"PurchaseMethodNotSupportedInMultiUser");
LABEL_54:
      v20 = v53;
      v63 = v54;
      v29 = v58;
      goto LABEL_37;
    }

    if (v61)
    {
      if (([v61 isEqualToString:@"Managed"] & 1) == 0 || (objc_msgSend(MEMORY[0x277D24648], "sharedConfiguration"), v36 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v36, "isUserEnrollment"), v36, v24 = v62, v65))
      {
        v28 = v56;
        (*(v56 + 2))(v56, @"ManagementChangeNotSupported");
        goto LABEL_54;
      }
    }

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_2;
    v71[3] = &unk_27982C5A8;
    v71[4] = self;
    v52 = v16;
    v72 = v52;
    v37 = v17;
    v81 = v37;
    v29 = v58;
    v38 = v58;
    v73 = v38;
    v74 = v19;
    v75 = v18;
    v63 = v54;
    v76 = v63;
    v55 = v53;
    v77 = v55;
    v78 = v60;
    v79 = v61;
    v39 = v35;
    v82 = v35;
    v80 = personaID;
    v40 = _Block_copy(v71);
    v41 = v40;
    if (v38)
    {
      v40[2](v40);
    }

    else
    {
      mEMORY[0x277D24648]2 = [MEMORY[0x277D24648] sharedConfiguration];
      v43 = -[MDMParser _isPurchaseMethodAllowed:onUserEnrollment:](self, "_isPurchaseMethodAllowed:onUserEnrollment:", v39, [mEMORY[0x277D24648]2 isUserEnrollment]);

      if (!v43)
      {
        if ([MEMORY[0x277D03530] isAppleTV])
        {
          v44 = @"NotSupportedOnAppleTV";
        }

        else
        {
          v44 = @"PurchaseMethodNotSupported";
        }

        v28 = v56;
        (*(v56 + 2))(v56, v44);
        v29 = v58;
        goto LABEL_58;
      }

      if (v39 == 1)
      {
        v41[2](v41);
        v29 = v58;
      }

      else
      {
        v51 = DMCLocalizedString();
        server2 = [(MDMParser *)self server];
        organizationName = [server2 organizationName];

        v50 = organizationName;
        if (organizationName)
        {
          serverName = organizationName;
          v49 = DMCLocalizedFormat();
        }

        else
        {
          server3 = [(MDMParser *)self server];
          serverName = [server3 serverName];
          v49 = DMCLocalizedFormat();
        }

        v29 = v58;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_4;
        v67[3] = &unk_27982C5D0;
        v69 = v41;
        v67[4] = self;
        v68 = v52;
        v70 = v37;
        [MDMManagedAssetManager promptUserToLoginToiTunesIfNeededTitle:v51 message:v49 assertion:v57 completionBlock:v67, serverName];
      }
    }

    v28 = v56;
LABEL_58:
    v24 = v62;

    v20 = v55;
    goto LABEL_37;
  }

  v30 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277D03480];
  v32 = DMCErrorArray();
  v33 = [v30 DMCErrorWithDomain:v31 code:12030 descriptionArray:v32 errorType:{*MEMORY[0x277D032F8], 0}];

  v34 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v33];
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:applicationCopy response:v34];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v34);
  }

LABEL_41:
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MDMParser malformedRequestErrorResult];
  v6 = [v4 mutableCopy];

  [v6 setObject:v3 forKeyedSubscript:@"RejectionReason"];
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v6];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_3;
  aBlock[3] = &unk_27982C420;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v6 = v2;
  v7 = *(a1 + 112);
  v3 = _Block_copy(aBlock);
  LODWORD(v4) = *(a1 + 120);
  [*(a1 + 32) _performInstallApplicationRequestWithManifestURL:*(a1 + 48) iTunesStoreIDObj:*(a1 + 56) bundleId:*(a1 + 64) flagsObj:*(a1 + 72) attributes:*(a1 + 80) configuration:*(a1 + 88) manageChangeStr:*(a1 + 96) purchaseMethodValue:v4 personaID:*(a1 + 104) completionBlock:v3];
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277D03480];
    v6 = DMCErrorArray();
    v9 = [v4 DMCErrorWithDomain:v5 code:12040 descriptionArray:v6 errorType:{*MEMORY[0x277D032F8], 0}];

    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];
    [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v7];
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }
  }
}

- (void)_performInstallApplicationRequestWithManifestURL:(id)l iTunesStoreIDObj:(id)obj bundleId:(id)id flagsObj:(id)flagsObj attributes:(id)attributes configuration:(id)configuration manageChangeStr:(id)str purchaseMethodValue:(int)self0 personaID:(id)self1 completionBlock:(id)self2
{
  v55[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  objCopy = obj;
  idCopy = id;
  flagsObjCopy = flagsObj;
  attributesCopy = attributes;
  configurationCopy = configuration;
  strCopy = str;
  dCopy = d;
  blockCopy = block;
  currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke;
  v42[3] = &unk_27982C6C0;
  v43 = lCopy;
  v44 = objCopy;
  v52 = strCopy;
  v53 = blockCopy;
  v45 = idCopy;
  v46 = currentUserConnection;
  selfCopy = self;
  v48 = flagsObjCopy;
  v49 = attributesCopy;
  v50 = dCopy;
  valueCopy = value;
  v51 = configurationCopy;
  v41 = strCopy;
  v40 = configurationCopy;
  v39 = dCopy;
  v38 = attributesCopy;
  v37 = flagsObjCopy;
  v25 = currentUserConnection;
  v35 = blockCopy;
  v26 = idCopy;
  v27 = objCopy;
  v28 = lCopy;
  v29 = [MDMBlockOperation blockOperationWithBlock:v42];
  v55[0] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  v31 = [v25 batchOperationToPerformOperations:v30];

  [v31 setName:@"InstallApplication"];
  operationQueue = [(MDMParser *)self operationQueue];
  [operationQueue addOperation:v31];
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setType:3];
  [v4 setManifestURL:*(a1 + 32)];
  [v4 setStoreItemIdentifier:*(a1 + 40)];
  v30[0] = @"bundleIdentifier";
  v30[1] = @"type";
  v30[2] = @"installationState";
  v30[3] = @"isAppClip";
  v30[4] = @"managementInformation";
  v30[5] = @"sourceIdentifier";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];
  [v4 setPropertyKeys:v5];

  if (*(a1 + 48))
  {
    v29 = *(a1 + 48);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v4 setBundleIdentifiers:v6];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_2;
  aBlock[3] = &unk_27982C3F8;
  v7 = *(a1 + 112);
  v27 = v3;
  v28 = v7;
  v8 = v3;
  v9 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_3;
  v14[3] = &unk_27982C698;
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v24 = v9;
  v14[4] = v10;
  v15 = v12;
  v16 = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v25 = *(a1 + 120);
  v22 = *(a1 + 56);
  v23 = *(a1 + 104);
  v13 = v9;
  [v11 performRequest:v4 completion:v14];
}

uint64_t __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 endBlockOperation];
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v166 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_4;
    aBlock[3] = &unk_27982C5F8;
    v160 = *(a1 + 112);
    v8 = _Block_copy(aBlock);
    v9 = [v5 appsByBundleIdentifier];
    v10 = [v9 allValues];
    v11 = [v10 firstObject];
    v12 = [v11 sourceIdentifier];

    if (v12)
    {
      v13 = *(a1 + 112);
      v14 = [*(a1 + 32) _installApplicationCouldNotModifyDDMAppsError];
      v15 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v14];
      (*(v13 + 16))(v13, v15);
LABEL_72:

      goto LABEL_73;
    }

    v16 = [MEMORY[0x277D24648] sharedConfiguration];
    v17 = [v16 personaID];

    v18 = [*(a1 + 40) intValue];
    if (v18 & 1 | v17)
    {
      v19 = (v18 & 0xE) + 1;
    }

    else
    {
      v19 = v18 & 0xE;
    }

    v14 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24898]];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v45 = *(a1 + 112);
        v15 = [*(a1 + 32) _malformedRequestError];
        v20 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v15];
        (*(v45 + 16))(v45, v20);
LABEL_71:

        goto LABEL_72;
      }
    }

    v15 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24868]];
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v46 = *(a1 + 112);
        v20 = [*(a1 + 32) _malformedRequestError];
        v21 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v20];
        (*(v46 + 16))(v46, v21);
LABEL_70:

        goto LABEL_71;
      }
    }

    v20 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24870]];
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v47 = *(a1 + 112);
        v21 = [*(a1 + 32) _malformedRequestError];
        v41 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v21];
        (*(v47 + 16))(v47, v41);
LABEL_69:

        goto LABEL_70;
      }
    }

    v21 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24878]];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v48 = *(a1 + 112);
      v41 = [*(a1 + 32) _malformedRequestError];
      v49 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v41];
      v50 = *(v48 + 16);
      v51 = v48;
      v52 = v49;
      v50(v51, v49);
    }

    else
    {
      v22 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24880]];
      if (v22)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v53 = *(a1 + 112);
          v41 = v22;
          v54 = [*(a1 + 32) _malformedRequestError];
          v42 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v54];
          v55 = *(v53 + 16);
          v56 = v53;
          v52 = v54;
          v55(v56, v42);
LABEL_67:

          goto LABEL_68;
        }
      }

      v131 = v19;
      v23 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24858]];
      if (!v23)
      {
LABEL_29:
        v139 = v21;
        v29 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24860]];
        v135 = v23;
        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v66 = *(a1 + 112);
          v41 = v22;
          v67 = [*(a1 + 32) _malformedRequestError];
          v68 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v67];
          v69 = *(v66 + 16);
          v70 = v66;
          v52 = v135;
          v130 = v68;
          v69(v70);
          v42 = v29;
          v21 = v139;
        }

        else
        {
          v133 = v20;
          v126 = v29;
          v30 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24890]];
          if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v123 = v30;
            v130 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24848]];
            if (v130)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v75 = *(a1 + 112);
                v41 = v22;
                v127 = [*(a1 + 32) _malformedRequestError];
                v76 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
                v77 = *(v75 + 16);
                v78 = v75;
                v52 = v135;
                v125 = v76;
                v77(v78);
                v42 = v29;
                v21 = v139;
                v67 = v30;
                v20 = v133;

LABEL_65:
                goto LABEL_66;
              }
            }

            [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24850]];
            v127 = v20 = v133;
            if (v127)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v79 = *(a1 + 112);
                v41 = v22;
                v124 = [*(a1 + 32) _malformedRequestError];
                v80 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
                v81 = *(v79 + 16);
                v82 = v79;
                v52 = v135;
                v122 = v80;
                v81(v82);
                v42 = v29;
                v21 = v139;
                v67 = v123;

LABEL_64:
                goto LABEL_65;
              }
            }

            v137 = v22;
            v124 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24888]];
            if (v124)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v83 = *(a1 + 112);
                v121 = [*(a1 + 32) _malformedRequestError];
                v119 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
                (*(v83 + 16))(v83);
                v52 = v135;
                v41 = v22;
                v42 = v29;
                v21 = v139;
                v67 = v123;

LABEL_63:
                goto LABEL_64;
              }
            }

            v31 = [*(a1 + 32) _originator];
            v32 = [v5 appsByBundleIdentifier];
            v33 = [v32 allValues];
            v34 = [v33 firstObject];

            v35 = v34;
            v36 = [v34 type];
            v121 = v31;
            v118 = v34;
            if ([v34 installationState] < 4 || objc_msgSend(v34, "isAppClip"))
            {
              v37 = objc_opt_new();
              [v37 setBundleIdentifier:*(a1 + 56)];
              [v37 setStoreItemIdentifier:*(a1 + 64)];
              [v37 setManifestURL:*(a1 + 72)];
              [v37 setOriginator:v31];
              [v37 setPersonaIdentifier:*(a1 + 80)];
              [MEMORY[0x277D03500] mdmAppInstallationSourceIdentifierWithDefaultValue:0];
              v39 = v38 = v36;
              v120 = v37;
              [v37 setSourceIdentifier:v39];

              v40 = v38 == 1;
              v41 = v137;
              v21 = v139;
              v42 = v126;
              if (!v40)
              {
                [v120 setManage:1];
                [v120 setManagementOptions:v131];
                [v120 setVPNUUIDString:v14];
                [v120 setCellularSliceUUIDString:v15];
                [v120 setContentFilterUUIDString:v133];
                [v120 setDNSProxyUUIDString:v139];
                [v120 setRelayUUIDString:v137];
                [v120 setAssociatedDomains:v135];
                [v120 setAssociatedDomainsEnableDirectDownloads:v126];
                [v120 setTapToPayScreenLock:v123];
                [v120 setAllowUserToHide:v130];
                [v120 setAllowUserToLock:v127];
                [v120 setRemovable:v124];
                [v120 setConfiguration:*(a1 + 88)];
              }

              if ([MEMORY[0x277D03538] isSharediPad])
              {
                v43 = v120;
                v44 = 1;
              }

              else
              {
                if (!*(a1 + 120))
                {
                  [v120 setLicenseType:2];
                  [v120 setAllowFreePurchases:1];
                  goto LABEL_60;
                }

                v43 = v120;
                v44 = 3;
              }

              [v43 setLicenseType:v44];
LABEL_60:
              v84 = *(a1 + 96);
              v148[0] = MEMORY[0x277D85DD0];
              v148[1] = 3221225472;
              v148[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_5;
              v148[3] = &unk_27982C620;
              v153 = v8;
              v149 = *(a1 + 56);
              v85 = *(a1 + 64);
              v86 = *(a1 + 32);
              v150 = v85;
              v151 = v86;
              v152 = *(a1 + 72);
              v154 = *(a1 + 112);
              [v84 performRequest:v120 completion:v148];

              v87 = v153;
              v52 = v135;
              v67 = v123;
              goto LABEL_61;
            }

            v88 = [*(a1 + 32) _isManagedApp:v34];
            v41 = v137;
            if (v88)
            {
              v89 = objc_opt_new();
              [v89 setBundleIdentifier:*(a1 + 56)];
              [v89 setStoreItemIdentifier:*(a1 + 64)];
              [v89 setManifestURL:*(a1 + 72)];
              [v89 setOriginator:v31];
              [v89 setPersonaIdentifier:*(a1 + 80)];
              [v89 setManagementOptions:v131];
              [v89 setVPNUUIDString:v14];
              [v89 setCellularSliceUUIDString:v15];
              [v89 setContentFilterUUIDString:v133];
              v21 = v139;
              [v89 setDNSProxyUUIDString:v139];
              [v89 setRelayUUIDString:v137];
              [v89 setAssociatedDomains:v135];
              v120 = v89;
              [v89 setAssociatedDomainsEnableDirectDownloads:v126];
              [v89 setTapToPayScreenLock:v123];
              [v89 setAllowUserToHide:v130];
              [v89 setAllowUserToLock:v127];
              [v89 setRemovable:v124];
              [v89 setConfiguration:*(a1 + 88)];
              v90 = *(a1 + 96);
              v145[0] = MEMORY[0x277D85DD0];
              v145[1] = 3221225472;
              v145[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_6;
              v145[3] = &unk_27982C648;
              v146 = v8;
              v91 = *(a1 + 112);
              v67 = v123;
              v20 = v133;
              v147 = v91;
              v92 = v90;
              v52 = v135;
              v42 = v126;
              [v92 performRequest:v120 completion:v145];

              v87 = v146;
              goto LABEL_61;
            }

            v116 = v36;
            v93 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2561F5000, v93, OS_LOG_TYPE_DEFAULT, "MDMParser: beginning check for preserved status during install app command", buf, 2u);
            }

            v94 = objc_opt_new();
            v144 = 0;
            v95 = [v94 preservedAppIDsAndReturnError:&v144];
            v96 = v144;

            v117 = v95;
            if (!v95)
            {
              v97 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v162 = v96;
                _os_log_impl(&dword_2561F5000, v97, OS_LOG_TYPE_ERROR, "MDMParser failed to retrieve preserved App IDs with error: %{public}@", buf, 0xCu);
              }
            }

            v98 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              v99 = v98;
              [v35 bundleIdentifier];
              v101 = v100 = v35;
              *buf = 138543362;
              v162 = v101;
              _os_log_impl(&dword_2561F5000, v99, OS_LOG_TYPE_DEFAULT, "MDMParser: bundleID for the current installation is: %{public}@", buf, 0xCu);

              v35 = v100;
            }

            v102 = [v35 bundleIdentifier];
            v103 = [v117 containsObject:v102];

            v104 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              v105 = v104;
              v106 = [v118 bundleIdentifier];
              *buf = 138543618;
              v162 = v106;
              v163 = 1024;
              v164 = v103;
              _os_log_impl(&dword_2561F5000, v105, OS_LOG_TYPE_DEFAULT, "MDMParser: is  %{public}@ app a preserved app: %d", buf, 0x12u);
            }

            v120 = v96;
            if ((v103 & 1) != 0 || v116 != 1 && *(a1 + 104))
            {
              v107 = [MEMORY[0x277D24648] sharedConfiguration];
              v108 = [v107 personaID];

              if (!v108)
              {
                v109 = objc_opt_new();
                [v109 setBundleIdentifier:*(a1 + 56)];
                [v109 setStoreItemIdentifier:*(a1 + 64)];
                [v109 setManifestURL:*(a1 + 72)];
                [v109 setOriginator:v121];
                [v109 setPersonaIdentifier:*(a1 + 80)];
                [v109 setManagementOptions:v131];
                [v109 setVPNUUIDString:v14];
                [v109 setCellularSliceUUIDString:v15];
                [v109 setContentFilterUUIDString:v133];
                [v109 setDNSProxyUUIDString:v139];
                v41 = v137;
                [v109 setRelayUUIDString:v137];
                [v109 setAssociatedDomains:v135];
                v42 = v126;
                [v109 setAssociatedDomainsEnableDirectDownloads:v126];
                [v109 setTapToPayScreenLock:v123];
                [v109 setAllowUserToHide:v130];
                [v109 setAllowUserToLock:v127];
                [v109 setRemovable:v124];
                [v109 setConfiguration:*(a1 + 88)];
                v112 = *(a1 + 96);
                v140[0] = MEMORY[0x277D85DD0];
                v140[1] = 3221225472;
                v140[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_1352;
                v140[3] = &unk_27982C670;
                v141 = v118;
                v142 = v8;
                v143 = *(a1 + 112);
                [v112 performRequest:v109 completion:v140];

LABEL_102:
                v52 = v135;
                v21 = v139;
                v67 = v123;
                v87 = v117;
LABEL_61:

                goto LABEL_63;
              }

              v109 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Error"];
              [v109 setObject:@"ManagementChangeNotSupported" forKeyedSubscript:@"RejectionReason"];
            }

            else
            {
              v109 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Error"];
              [v109 setObject:@"AppAlreadyInstalled" forKeyedSubscript:@"RejectionReason"];
              v110 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2561F5000, v110, OS_LOG_TYPE_DEFAULT, "MDMParser: Failed to take over management, setting rejection reason to AppAlreadyInstalled", buf, 2u);
              }

              if (*(a1 + 64))
              {
                v111 = [*(a1 + 32) _appAlreadyInstalledErrorWithiTunesStoreID:?];
                [v109 setObject:v111 forKeyedSubscript:@"ErrorObject"];
              }

              else
              {
                v113 = *(a1 + 56);
                if (v113)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = [v118 bundleIdentifier];
                }

                v111 = v114;
                v115 = [*(a1 + 32) _appAlreadyInstalledErrorWithBundleID:v114];
                [v109 setObject:v115 forKeyedSubscript:@"ErrorObject"];
              }
            }

            (*(*(a1 + 112) + 16))();
            v41 = v137;
            v42 = v126;
            goto LABEL_102;
          }

          v71 = *(a1 + 112);
          v41 = v22;
          v130 = [*(a1 + 32) _malformedRequestError];
          v72 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
          v73 = *(v71 + 16);
          v74 = v71;
          v52 = v135;
          v128 = v72;
          v73(v74);
          v42 = v29;
          v21 = v139;
          v67 = v30;
          v20 = v133;
        }

LABEL_66:

        goto LABEL_67;
      }

      v136 = v22;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v138 = v21;
        v132 = v20;
        v134 = v23;
        v129 = v8;
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v155 objects:v165 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v156;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v156 != v27)
              {
                objc_enumerationMutation(v24);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v63 = *(a1 + 112);
                v64 = [*(a1 + 32) _malformedRequestError];
                v65 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v64];
                (*(v63 + 16))(v63, v65);

                v52 = v24;
                v8 = v129;
                v20 = v132;
                v41 = v136;
                v21 = v138;
                goto LABEL_68;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v155 objects:v165 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v8 = v129;
        v20 = v132;
        v23 = v134;
        v22 = v136;
        goto LABEL_29;
      }

      v57 = v23;
      v58 = *(a1 + 112);
      v59 = [*(a1 + 32) _malformedRequestError];
      v60 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v59];
      v61 = *(v58 + 16);
      v62 = v58;
      v52 = v57;
      v61(v62, v60);

      v41 = v136;
    }

LABEL_68:

    goto LABEL_69;
  }

  v6 = *(a1 + 112);
  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:a3];
  (*(v6 + 16))(v6, v7);

LABEL_73:
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v4 = [v3 bundleIdentifier];
  [v7 setObject:v4 forKeyedSubscript:@"Identifier"];

  v5 = [v3 state];
  v6 = [MDMParser _stringForAppState:v5];
  [v7 setObject:v6 forKeyedSubscript:@"State"];

  (*(*(a1 + 32) + 16))();
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v20 = v4;
  if (!v4)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_38;
  }

  v5 = v4;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277D04BC8]];

  if (!v7)
  {
    v10 = @"NotSupported";
LABEL_36:
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];
    [v9 setObject:v10 forKeyedSubscript:@"RejectionReason"];
    (*(*(a1 + 72) + 16))();
    goto LABEL_37;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v11 = [v5 userInfo];
    v9 = [v11 objectForKeyedSubscript:*MEMORY[0x277D04968]];
  }

  v12 = [v5 code];
  v10 = @"NotSupported";
  if (v12 <= 2603)
  {
    switch(v12)
    {
      case 1001:
        v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
        [v16 setObject:v9 forKeyedSubscript:@"Identifier"];
        [v16 setObject:@"NeedsRedemption" forKeyedSubscript:@"State"];
        goto LABEL_22;
      case 2600:
        v19 = *(a1 + 48);
        if (*(a1 + 40))
        {
          [v19 _appAlreadyInstalledErrorWithiTunesStoreID:?];
        }

        else
        {
          [v19 _appAlreadyInstalledErrorWithBundleID:v9];
        }
        v17 = ;
LABEL_33:
        v18 = v17;
        v10 = @"AppAlreadyInstalled";
        goto LABEL_34;
      case 2603:
        v15 = *(a1 + 48);
        if (*(a1 + 40))
        {
          [v15 _appAlreadyQueuedErrorWithiTunesStoreID:?];
        }

        else
        {
          [v15 _appAlreadyQueuedErrorWithBundleID:v9];
        }
        v18 = ;
        v10 = @"AppAlreadyQueued";
        goto LABEL_34;
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v12 <= 2605)
  {
    if (v12 != 2604)
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      if (v14)
      {
        [v13 _licenseNotFoundErrorWithiTunesStoreID:v14 underlyingError:v5];
      }

      else
      {
        [v13 _licenseNotFoundErrorWithBundleID:v9 underlyingError:v5];
      }
      v18 = ;
      v10 = @"LicenseNotFound";
      goto LABEL_34;
    }

    v17 = [*(a1 + 48) _invalidManifestErrorWithURL:*(a1 + 56) underlyingError:v5];
    goto LABEL_33;
  }

  if (v12 == 2606)
  {
    v18 = [*(a1 + 48) _cannotValidateAppIDErrorUnderlyingError:v5];
    v10 = @"CouldNotVerifyAppID";
LABEL_34:

    v5 = v18;
    goto LABEL_35;
  }

  if (v12 != 2616)
  {
    goto LABEL_35;
  }

  v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_22:
  (*(*(a1 + 72) + 16))();

LABEL_37:
LABEL_38:
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_1352(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = a1[6];
    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:a3];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = v8;
      v11 = [v9 bundleIdentifier];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMParser: successfully started managing app with id: %{public}@", &v12, 0xCu);
    }

    (*(a1[5] + 16))();
  }
}

- (id)_validateApplications:(id)applications
{
  v4 = [applications objectForKeyedSubscript:@"Identifiers"];
  if ([(MDMParser *)self _identifiersIsStringArray:v4])
  {
    v5 = objc_opt_new();
    [v5 setBundleIdentifiers:v4];
    systemConnection = [MEMORY[0x277D04BF8] systemConnection];
    v16 = 0;
    v7 = [systemConnection performRequest:v5 error:&v16];
    v8 = v16;

    if (v8)
    {
      userInfo = [v8 userInfo];
      v10 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      v13 = v12;

      v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v13];
    }

    else
    {
      v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    }
  }

  else
  {
    v14 = +[MDMParser malformedRequestErrorResult];
  }

  return v14;
}

- (id)_applyRedemptionCode:(id)code assertion:(id)assertion
{
  codeCopy = code;
  v6 = [codeCopy objectForKeyedSubscript:@"Identifier"];
  v7 = [codeCopy objectForKeyedSubscript:@"RedemptionCode"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    personaID = [mEMORY[0x277D24648] personaID];

    v10 = objc_opt_new();
    [v10 setBundleIdentifier:v6];
    [v10 setRedemptionCode:v7];
    _originator = [(MDMParser *)self _originator];
    [v10 setOriginator:_originator];

    [v10 setPersonaIdentifier:personaID];
    currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
    v25 = 0;
    v13 = [currentUserConnection performRequest:v10 error:&v25];
    v14 = v25;

    if (v14)
    {
      domain = [v14 domain];
      v16 = *MEMORY[0x277D04BC8];

      if (domain == v16)
      {
        code = [v14 code];
        if (code == 1006)
        {
          v23 = 0;
          v18 = DMCErrorArray();
          v19 = 12037;
        }

        else if (code == 2611)
        {
          v23 = v6;
          v24 = 0;
          v18 = DMCErrorArray();
          v19 = 12028;
        }

        else
        {
          v19 = 0;
          v18 = 0;
        }

        v22 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D03480] code:v19 descriptionArray:v18 errorType:{*MEMORY[0x277D032F8], v23, v24}];

        v14 = v22;
      }

      v20 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v14];
    }

    else
    {
      v20 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    }
  }

  else
  {
    v20 = +[MDMParser malformedRequestErrorResult];
  }

  return v20;
}

- (id)_handleFetchAppsRequest:(id)request managedOnly:(BOOL)only deleteFeedback:(BOOL)feedback advanceTransientStates:(BOOL)states propertyKeys:(id)keys block:(id)block
{
  statesCopy = states;
  feedbackCopy = feedback;
  onlyCopy = only;
  v56[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  blockCopy = block;
  v16 = [request objectForKeyedSubscript:@"Identifiers"];
  if (![(MDMParser *)self _identifiersIsStringArray:v16])
  {
    v23 = +[MDMParser malformedRequestErrorResult];
    goto LABEL_27;
  }

  v17 = objc_opt_new();
  [v17 setType:2];
  [v17 setBundleIdentifiers:v16];
  [v17 setManagedAppsOnly:onlyCopy];
  v56[0] = @"sourceIdentifier";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  v19 = [v18 arrayByAddingObjectsFromArray:keysCopy];
  [v17 setPropertyKeys:v19];

  currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
  v54 = 0;
  v21 = [currentUserConnection performRequest:v17 error:&v54];
  v22 = v54;

  if (!v22)
  {
    v47 = feedbackCopy;
    v42 = statesCopy;
    v44 = v17;
    v45 = v16;
    v48 = blockCopy;
    v46 = keysCopy;
    v43 = v21;
    appsByBundleIdentifier = [v21 appsByBundleIdentifier];
    v25 = [appsByBundleIdentifier mutableCopy];

    allKeys = [v25 allKeys];
    array = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v28 = allKeys;
    v29 = [v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v50 + 1) + 8 * i);
          v34 = [v25 objectForKeyedSubscript:v33];
          sourceIdentifier = [v34 sourceIdentifier];

          if (sourceIdentifier)
          {
            if (onlyCopy)
            {
              [v25 setObject:0 forKeyedSubscript:v33];
            }
          }

          else
          {
            [array addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v30);
    }

    if (v47 || v42)
    {
      v17 = v44;
      if ([array count])
      {
        v36 = objc_opt_new();

        [v36 setType:2];
        [v36 setBundleIdentifiers:array];
        [v36 setManagedAppsOnly:onlyCopy];
        [v36 setDeleteFeedback:v47];
        [v36 setAdvanceTransientStates:v42];
        currentUserConnection2 = [MEMORY[0x277D04BF8] currentUserConnection];
        v49 = 0;
        v38 = [currentUserConnection2 performRequest:v36 error:&v49];
        v22 = v49;

        if (v22)
        {
          v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v22];
          v17 = v36;
          v16 = v45;
          keysCopy = v46;
LABEL_25:

          blockCopy = v48;
          v21 = v43;
          goto LABEL_26;
        }

        v17 = v36;
      }

      v16 = v45;
      keysCopy = v46;
    }

    else
    {
      v16 = v45;
      keysCopy = v46;
      v17 = v44;
    }

    v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    v39 = [v25 copy];
    v40 = v48[2](v48, v39);

    [v23 addEntriesFromDictionary:v40];
    v22 = 0;
    goto LABEL_25;
  }

  v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v22];
LABEL_26:

LABEL_27:

  return v23;
}

- (id)_managedApplicationList:(id)list
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = @"managementInformation";
  v10 = @"configuration";
  v11 = @"feedback";
  v12 = @"isValidated";
  v13 = @"externalVersionIdentifier";
  v4 = MEMORY[0x277CBEA60];
  listCopy = list;
  v6 = [v4 arrayWithObjects:&v9 count:5];
  v7 = [(MDMParser *)self _handleFetchAppsRequest:listCopy managedOnly:1 deleteFeedback:0 advanceTransientStates:1 propertyKeys:v6 block:&__block_literal_global_1376, v9, v10, v11, v12, v13, v14];

  return v7;
}

id __37__MDMParser__managedApplicationList___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v26 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = v2;
  v27 = [v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v25 = *v29;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v3);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v6 = [v3 objectForKeyedSubscript:v5];
        v7 = [v6 managementInformation];
        v8 = objc_opt_new();
        v9 = +[MDMParser _stringForAppState:](MDMParser, "_stringForAppState:", [v7 state]);
        [v8 setObject:v9 forKeyedSubscript:@"Status"];

        v10 = [v6 configuration];
        v11 = MEMORY[0x277CBEC38];
        v12 = MEMORY[0x277CBEC28];
        if (v10)
        {
          v13 = MEMORY[0x277CBEC38];
        }

        else
        {
          v13 = MEMORY[0x277CBEC28];
        }

        [v8 setObject:v13 forKeyedSubscript:@"HasConfiguration"];

        v14 = [v6 feedback];
        if (v14)
        {
          v15 = v11;
        }

        else
        {
          v15 = v12;
        }

        [v8 setObject:v15 forKeyedSubscript:@"HasFeedback"];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isValidated")}];
        [v8 setObject:v16 forKeyedSubscript:@"IsValidated"];

        v17 = MEMORY[0x277CCABB0];
        v18 = [v6 externalVersionIdentifier];
        v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue")}];
        [v8 setObject:v19 forKeyedSubscript:@"ExternalVersionIdentifier"];

        v20 = [v7 unusedRedemptionCode];
        [v8 setObject:v20 forKeyedSubscript:@"UnusedRedemptionCode"];

        v21 = [v7 options];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21 & 0xF];
        [v8 setObject:v22 forKeyedSubscript:@"ManagementFlags"];

        [v26 setObject:v8 forKeyedSubscript:v5];
      }

      v27 = [v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v32 = @"ManagedApplicationList";
  v33 = v26;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  return v23;
}

- (id)_managedApplicationConfiguration:(id)configuration
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = @"configuration";
  v4 = MEMORY[0x277CBEA60];
  configurationCopy = configuration;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [(MDMParser *)self _handleFetchAppsRequest:configurationCopy managedOnly:1 deleteFeedback:0 advanceTransientStates:0 propertyKeys:v6 block:&__block_literal_global_1378, v9, v10];

  return v7;
}

id __46__MDMParser__managedApplicationConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        [v11 setObject:v9 forKeyedSubscript:{@"Identifier", v16}];
        v12 = [v4 objectForKeyedSubscript:v9];
        v13 = [v12 configuration];
        [v11 setObject:v13 forKeyedSubscript:@"Configuration"];

        [v3 addObject:v11];
        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v20 = @"ApplicationConfigurations";
  v21 = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  return v14;
}

- (id)_managedApplicationAttributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = @"VPNUUIDString";
  v10 = @"cellularSliceUUIDString";
  v11 = @"contentFilterUUIDString";
  v12 = @"DNSProxyUUIDString";
  v13 = @"relayUUIDString";
  v14 = @"associatedDomains";
  v15 = @"associatedDomainsEnableDirectDownloads";
  v16 = @"removable";
  v17 = @"allowUserToHide";
  v18 = @"allowUserToLock";
  v19 = @"tapToPayScreenLock";
  v4 = MEMORY[0x277CBEA60];
  attributesCopy = attributes;
  v6 = [v4 arrayWithObjects:&v9 count:11];
  v7 = [(MDMParser *)self _handleFetchAppsRequest:attributesCopy managedOnly:1 deleteFeedback:0 advanceTransientStates:0 propertyKeys:v6 block:&__block_literal_global_1416, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20];

  return v7;
}

id __43__MDMParser__managedApplicationAttributes___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v37 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v36 = *v39;
    v35 = *MEMORY[0x277D24898];
    v34 = *MEMORY[0x277D24868];
    v33 = *MEMORY[0x277D24870];
    v32 = *MEMORY[0x277D24878];
    v31 = *MEMORY[0x277D24880];
    v30 = *MEMORY[0x277D24858];
    v29 = *MEMORY[0x277D24860];
    v28 = *MEMORY[0x277D24890];
    v27 = *MEMORY[0x277D24848];
    v6 = *MEMORY[0x277D24850];
    v7 = *MEMORY[0x277D24888];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        [v11 setObject:v9 forKeyedSubscript:@"Identifier"];
        v12 = objc_opt_new();
        v13 = [v3 objectForKeyedSubscript:v9];
        v14 = [v13 VPNUUIDString];
        [v12 setObject:v14 forKeyedSubscript:v35];

        v15 = [v13 cellularSliceUUIDString];
        [v12 setObject:v15 forKeyedSubscript:v34];

        v16 = [v13 contentFilterUUIDString];
        [v12 setObject:v16 forKeyedSubscript:v33];

        v17 = [v13 DNSProxyUUIDString];
        [v12 setObject:v17 forKeyedSubscript:v32];

        v18 = [v13 relayUUIDString];
        [v12 setObject:v18 forKeyedSubscript:v31];

        v19 = [v13 associatedDomains];
        [v12 setObject:v19 forKeyedSubscript:v30];

        v20 = [v13 associatedDomainsEnableDirectDownloads];
        [v12 setObject:v20 forKeyedSubscript:v29];

        v21 = [v13 tapToPayScreenLock];
        [v12 setObject:v21 forKeyedSubscript:v28];

        v22 = [v13 allowUserToHide];
        [v12 setObject:v22 forKeyedSubscript:v27];

        v23 = [v13 allowUserToLock];
        [v12 setObject:v23 forKeyedSubscript:v6];

        v24 = [v13 removable];
        [v12 setObject:v24 forKeyedSubscript:v7];

        [v11 setObject:v12 forKeyedSubscript:@"Attributes"];
        [v37 addObject:v11];

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v5);
  }

  v42 = @"ApplicationAttributes";
  v43 = v37;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

  return v25;
}

- (id)_managedApplicationFeedback:(id)feedback
{
  v10[1] = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  v5 = [feedbackCopy objectForKeyedSubscript:@"DeleteFeedback"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[MDMParser malformedRequestErrorResult];
  }

  else
  {
    bOOLValue = [v5 BOOLValue];
    v10[0] = @"feedback";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v8 = [(MDMParser *)self _handleFetchAppsRequest:feedbackCopy managedOnly:1 deleteFeedback:bOOLValue advanceTransientStates:0 propertyKeys:v7 block:&__block_literal_global_1421];
  }

  return v8;
}

id __41__MDMParser__managedApplicationFeedback___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        [v11 setObject:v9 forKeyedSubscript:{@"Identifier", v16}];
        v12 = [v4 objectForKeyedSubscript:v9];
        v13 = [v12 feedback];
        [v11 setObject:v13 forKeyedSubscript:@"Feedback"];

        [v3 addObject:v11];
        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v20 = @"ManagedApplicationFeedback";
  v21 = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  return v14;
}

- (id)_removeApplication:(id)application
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = [application objectForKeyedSubscript:@"Identifier"];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = +[MDMParser malformedRequestErrorResult];
    goto LABEL_13;
  }

  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  isSupervised = [mEMORY[0x277D24640] isSupervised];

  v7 = objc_opt_new();
  [v7 setType:6];
  [v7 setManagedAppsOnly:isSupervised ^ 1u];
  v37[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [v7 setBundleIdentifiers:v8];

  v36[0] = @"managementInformation";
  v36[1] = @"sourceIdentifier";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [v7 setPropertyKeys:v9];

  currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
  v33 = 0;
  v11 = [currentUserConnection performRequest:v7 error:&v33];
  v12 = v33;
  if (!v12)
  {
    appsByBundleIdentifier = [v11 appsByBundleIdentifier];
    allValues = [appsByBundleIdentifier allValues];
    firstObject = [allValues firstObject];

    managementInformation = [firstObject managementInformation];
    if (([(MDMParser *)self _isManagedAppFromManagementInformation:managementInformation]| isSupervised))
    {
      sourceIdentifier = [firstObject sourceIdentifier];

      if (!sourceIdentifier)
      {
        v23 = objc_opt_new();
        [v23 setBundleIdentifier:v4];
        currentUserConnection2 = [MEMORY[0x277D04BF8] currentUserConnection];
        v32 = 0;
        v26 = [currentUserConnection2 performRequest:v23 error:&v32];
        v13 = v32;

        if (v13)
        {
          v27 = MEMORY[0x277CCA9B8];
          v28 = *MEMORY[0x277D03480];
          v31 = DMCErrorArray();
          v29 = [v27 DMCErrorWithDomain:v28 code:12087 descriptionArray:v31 errorType:{*MEMORY[0x277D032F8], v4, 0}];
          v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v29];
        }

        else
        {
          v30 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v4;
            _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_DEFAULT, "Removed app “%{public}@”.", buf, 0xCu);
          }

          v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
        }

        goto LABEL_11;
      }

      _installApplicationCouldNotModifyDDMAppsError = [(MDMParser *)self _installApplicationCouldNotModifyDDMAppsError];
    }

    else
    {
      _installApplicationCouldNotModifyDDMAppsError = [(MDMParser *)self _notManagedAndNotSupervisedErrorAppID:v4];
    }

    v23 = _installApplicationCouldNotModifyDDMAppsError;
    v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:_installApplicationCouldNotModifyDDMAppsError];
    v13 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v13 = v12;
  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277D03480];
  firstObject = DMCErrorArray();
  managementInformation = [v14 DMCErrorWithDomain:v15 code:12087 descriptionArray:firstObject errorType:{*MEMORY[0x277D032F8], v4, 0}];
  v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:managementInformation];
LABEL_12:

LABEL_13:

  return v18;
}

- (void)_requestMirroringRequest:(id)request assertion:(id)assertion completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v9 = [requestCopy objectForKey:@"DestinationName"];
  v10 = [requestCopy objectForKey:@"DestinationDeviceID"];
  if (v9 | v10)
  {
    v11 = v10;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = +[MDMParser malformedRequestErrorResult];
    }

    else
    {
      v12 = [requestCopy objectForKey:@"Password"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v16 = +[MDMParser malformedRequestErrorResult];
      }

      else
      {
        v13 = [requestCopy objectForKey:@"ScanTime"];
        if (!v13)
        {
          v15 = 30.0;
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v13 doubleValue];
          v15 = v14;
LABEL_16:
          v24 = v13;
          if (v11)
          {
            uppercaseString = [v11 uppercaseString];

            v11 = uppercaseString;
          }

          v18 = objc_opt_new();
          [v18 setDestinationName:v9];
          [v18 setDestinationDeviceID:v11];
          [v18 setPassword:v12];
          [v18 setScanWaitInterval:v15];
          systemConnection = [MEMORY[0x277D04BF8] systemConnection];
          v26 = 0;
          v20 = [systemConnection performRequest:v18 error:&v26];
          v21 = v26;

          if (v21)
          {
            v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v21];
          }

          else
          {
            v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
            v22 = [v20 status] - 1;
            if (v22 > 2)
            {
              v23 = @"Unknown";
            }

            else
            {
              v23 = off_27982C940[v22];
            }

            [v16 setObject:v23 forKeyedSubscript:{@"MirroringResult", v24}];
          }

          [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:requestCopy response:v16, v24];
          if (blockCopy)
          {
            blockCopy[2](blockCopy, v16);
          }

          goto LABEL_31;
        }

        v16 = +[MDMParser malformedRequestErrorResult];
      }
    }
  }

  else
  {
    v16 = +[MDMParser malformedRequestErrorResult];
    v11 = 0;
  }

  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:requestCopy response:v16];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v16);
  }

LABEL_31:
}

- (void)_stopMirroringRequest:(id)request assertion:(id)assertion completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v10 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__MDMParser__stopMirroringRequest_assertion_completionBlock___block_invoke;
  v13[3] = &unk_27982C708;
  v13[4] = self;
  v14 = requestCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = requestCopy;
  [systemConnection performRequest:v10 completion:v13];
}

void __61__MDMParser__stopMirroringRequest_assertion_completionBlock___block_invoke(uint64_t a1)
{
  v3 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, v3);
  }
}

- (void)_inviteToProgramRequest:(id)request assertion:(id)assertion completionBlock:(id)block
{
  requestCopy = request;
  assertionCopy = assertion;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v11 = requestCopy;
  v24 = v11;
  v12 = blockCopy;
  v25 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [v11 objectForKeyedSubscript:@"InvitationURL"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
      if (!v15)
      {
        v16 = +[MDMParser malformedRequestErrorResult];
        v13[2](v13, v16);
        goto LABEL_13;
      }

      v16 = [v11 objectForKeyedSubscript:@"ProgramID"];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([&unk_286850308 containsObject:v16])
        {
          v17 = objc_opt_new();
          _originator = [(MDMParser *)self _originator];
          [v17 setOriginator:_originator];

          [v17 setURL:v15];
          currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke_2;
          v20[3] = &unk_27982C730;
          v22 = v13;
          v21 = assertionCopy;
          [currentUserConnection performRequest:v17 completion:v20];

LABEL_11:
LABEL_13:

          goto LABEL_14;
        }

        v17 = +[MDMParser malformedRequestErrorResult];
        [v17 setObject:@"InvalidProgramID" forKeyedSubscript:@"InvitationResult"];
      }

      else
      {
        v17 = +[MDMParser malformedRequestErrorResult];
      }

      v13[2](v13, v17);
      goto LABEL_11;
    }
  }

  v15 = +[MDMParser malformedRequestErrorResult];
  v13[2](v13, v15);
LABEL_14:
}

void __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = +[MDMParser malformedRequestErrorResult];
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D04BC8]];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [v5 code];
    if (v9 == 1402)
    {
      v10 = @"InvalidInvitationURL";
    }

    else
    {
      if (v9 != 1400)
      {
        goto LABEL_10;
      }

      v10 = @"AppStoreNotAllowed";
    }

    v11 = v6;
  }

  else
  {
    v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    v6 = v11;
    v10 = @"Acknowledged";
  }

  [v11 setObject:v10 forKeyedSubscript:@"InvitationResult"];
LABEL_10:
  (*(*(a1 + 40) + 16))();
}

- (void)_activationLockBypassCodeRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = objc_opt_new();
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__MDMParser__activationLockBypassCodeRequest_completionBlock___block_invoke;
  v12[3] = &unk_27982C758;
  v12[4] = self;
  v13 = requestCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = requestCopy;
  [systemConnection performRequest:v8 completion:v12];
}

void __62__MDMParser__activationLockBypassCodeRequest_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v17 = @"Status";
    v18[0] = @"Acknowledged";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v10 mutableCopy];

    v7 = [v5 bypassCode];
    [v11 setObject:v7 forKeyedSubscript:@"ActivationLockBypassCode"];
    goto LABEL_9;
  }

  v7 = v6;
  if ([v6 code] == 3600)
  {
    v8 = MEMORY[0x277D032F8];
    v9 = 12085;
LABEL_7:
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    v14 = DMCErrorArray();
    v15 = [v12 DMCErrorWithDomain:v13 code:v9 descriptionArray:v14 errorType:{*v8, 0}];

    v7 = v15;
    goto LABEL_8;
  }

  if ([v7 code] == 3601)
  {
    v8 = MEMORY[0x277D03308];
    v9 = 12086;
    goto LABEL_7;
  }

LABEL_8:
  v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v7];
LABEL_9:

  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v11];
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v11);
  }
}

- (void)_clearActivationLockBypassCodeRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v9 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__MDMParser__clearActivationLockBypassCodeRequest_completionBlock___block_invoke;
  v12[3] = &unk_27982C708;
  v12[4] = self;
  v13 = requestCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = requestCopy;
  [systemConnection performRequest:v9 completion:v12];
}

void __67__MDMParser__clearActivationLockBypassCodeRequest_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }
  v6 = ;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v6];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)_installMedia:(id)media assertion:(id)assertion completionBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  mediaCopy = media;
  assertionCopy = assertion;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__MDMParser__installMedia_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v11 = mediaCopy;
  v46 = v11;
  v12 = blockCopy;
  v47 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [v11 objectForKeyedSubscript:@"MediaType"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v14 isEqualToString:@"Book"])
    {
      v15 = [v11 objectForKeyedSubscript:@"PersistentID"];
      v16 = [v11 objectForKeyedSubscript:@"MediaURL"];
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      v38 = [v11 objectForKeyedSubscript:@"Kind"];
      v18 = [v11 objectForKeyedSubscript:@"iTunesStoreID"];
      if (_installMedia_assertion_completionBlock__onceToken != -1)
      {
        [MDMParser _installMedia:assertion:completionBlock:];
      }

      v37 = v18;
      if (v15)
      {
        if (v17 && [v16 length])
        {
          v34 = v16;
          pathExtension = v38;
          if (!v38)
          {
            v39 = [MEMORY[0x277CCACE0] componentsWithURL:v17 resolvingAgainstBaseURL:0];
            path = [v39 path];
            pathExtension = [path pathExtension];
          }

          v36 = v17;
          allKeys = [_installMedia_assertion_completionBlock__typeMap allKeys];
          v38 = pathExtension;
          v22 = [allKeys containsObject:pathExtension];

          if ((v22 & 1) == 0)
          {
            v31 = *(DMCLogObjects() + 8);
            v16 = v35;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v49 = v38;
              _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_ERROR, "Invalid book kind: %{public}@", buf, 0xCu);
            }

            v25 = +[MDMParser malformedRequestErrorResult];
            v13[2](v13, v25);
            v17 = v36;
            goto LABEL_29;
          }

          v16 = v35;
          goto LABEL_21;
        }

        v24 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v49 = v16;
          _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_ERROR, "Invalid URL: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v17;
LABEL_21:
          v25 = objc_opt_new();
          [v25 setPersistentID:v15];
          v26 = [v11 objectForKeyedSubscript:@"Author"];
          [v25 setAuthor:v26];

          v27 = [v11 objectForKeyedSubscript:@"Title"];
          [v25 setTitle:v27];

          v28 = [v11 objectForKeyedSubscript:@"Version"];
          [v25 setVersion:v28];

          [v25 setURL:v36];
          v29 = [_installMedia_assertion_completionBlock__typeMap objectForKeyedSubscript:v38];
          [v25 setType:{objc_msgSend(v29, "unsignedIntegerValue")}];

          if (v37)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v37, "longLongValue")}];
            [v25 setITunesStoreID:v30];
          }

          else
          {
            [v25 setITunesStoreID:0];
          }

          _originator = [(MDMParser *)self _originator];
          [v25 setOriginator:_originator];

          systemConnection = [MEMORY[0x277D04BF8] systemConnection];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_1497;
          v40[3] = &unk_27982C780;
          v40[4] = self;
          v41 = v36;
          v42 = v15;
          v44 = v13;
          v43 = assertionCopy;
          [systemConnection performRequest:v25 completion:v40];

          v17 = v36;
          goto LABEL_29;
        }
      }

      v25 = +[MDMParser malformedRequestErrorResult];
      v13[2](v13, v25);
LABEL_29:

      goto LABEL_15;
    }

    v23 = +[MDMParser malformedRequestErrorResult];
    v15 = [v23 mutableCopy];

    [v15 setObject:@"WrongMediaType" forKeyedSubscript:@"RejectionReason"];
  }

  else
  {
    v15 = +[MDMParser malformedRequestErrorResult];
  }

  v13[2](v13, v15);
LABEL_15:
}

void __53__MDMParser__installMedia_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v3];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_2;
    v6[3] = &unk_27982B898;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_3()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = @"ibooks";
  v2[1] = @"pdf";
  v3[0] = &unk_2868503F8;
  v3[1] = &unk_286850410;
  v2[2] = @"epub";
  v3[2] = &unk_286850428;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _installMedia_assertion_completionBlock__typeMap;
  _installMedia_assertion_completionBlock__typeMap = v0;
}

void __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_1497(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  if (!v5)
  {
    v5 = [v20 book];
    v10 = [v5 iTunesStoreID];
    [v6 setObject:v10 forKeyedSubscript:@"iTunesStoreID"];

    v11 = [*(a1 + 32) _stringForBookState:{objc_msgSend(v5, "state")}];
    [v6 setObject:v11 forKeyedSubscript:@"State"];

    [v6 setObject:@"Book" forKeyedSubscript:@"MediaType"];
    v12 = [*(a1 + 40) absoluteString];
    [v6 setObject:v12 forKeyedSubscript:@"MediaURL"];

    [v6 setObject:*(a1 + 48) forKeyedSubscript:@"PersistentID"];
    goto LABEL_23;
  }

  v7 = [v5 domain];
  if (([v7 isEqualToString:*MEMORY[0x277D04BC8]] & 1) == 0)
  {

LABEL_7:
    v13 = [v5 code];
    if (v13 > 2612)
    {
      switch(v13)
      {
        case 2613:
          v14 = 12043;
          goto LABEL_20;
        case 2614:
          v14 = 12046;
          goto LABEL_20;
        case 2615:
          v14 = 12047;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v13)
      {
        case 1504:
          v14 = 12008;
          goto LABEL_20;
        case 2608:
          v14 = 12040;
          goto LABEL_20;
        case 2612:
          v14 = 12045;
LABEL_20:
          v15 = MEMORY[0x277CCA9B8];
          v16 = *MEMORY[0x277D03480];
          v17 = DMCUnformattedErrorArray();
          v18 = [v15 DMCErrorWithDomain:v16 code:v14 descriptionArray:v17 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

          v5 = v18;
          break;
      }
    }

    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];
    goto LABEL_22;
  }

  v8 = [v5 code];

  if (v8 != 1650)
  {
    goto LABEL_7;
  }

  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_22:
  v19 = v9;

  v6 = v19;
LABEL_23:

  (*(*(a1 + 64) + 16))();
}

- (void)_managedMediaList:(id)list assertion:(id)assertion completionBlock:(id)block
{
  listCopy = list;
  blockCopy = block;
  systemConnection = [MEMORY[0x277D04BF8] systemConnection];
  v10 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MDMParser__managedMediaList_assertion_completionBlock___block_invoke;
  v13[3] = &unk_27982C7A8;
  v13[4] = self;
  v14 = listCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = listCopy;
  [systemConnection performRequest:v10 completion:v13];
}

void __57__MDMParser__managedMediaList_assertion_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 DMCVerboseDescription];
      *buf = 138543362;
      v39 = v7;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve managed books with error: %{public}@", buf, 0xCu);
    }

    v8 = [v4 domain];
    if ([v8 isEqualToString:*MEMORY[0x277D04BC8]])
    {
      v9 = [v4 code];

      if (v9 == 1650)
      {
        v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v4];
LABEL_21:
    v13 = v10;
    [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v10];
    v29 = *(a1 + 48);
    if (v29)
    {
      (*(v29 + 16))(v29, v13);
    }

    goto LABEL_23;
  }

  v11 = [a2 books];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = objc_opt_new();
        v20 = [v18 iTunesStoreID];
        [v19 setObject:v20 forKeyedSubscript:@"iTunesStoreID"];

        v21 = [v18 persistentID];
        [v19 setObject:v21 forKeyedSubscript:@"PersistentID"];

        v22 = [v18 version];
        [v19 setObject:v22 forKeyedSubscript:@"Version"];

        v23 = [v18 title];
        [v19 setObject:v23 forKeyedSubscript:@"Title"];

        v24 = [v18 author];
        [v19 setObject:v24 forKeyedSubscript:@"Author"];

        v25 = [v18 type];
        if (v25 <= 2)
        {
          [v19 setObject:off_27982C958[v25] forKeyedSubscript:@"Kind"];
        }

        v26 = [*(a1 + 32) _stringForBookState:{objc_msgSend(v18, "state")}];
        [v19 setObject:v26 forKeyedSubscript:@"State"];

        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v15);
  }

  v35[0] = @"Status";
  v35[1] = @"Books";
  v36[0] = @"Acknowledged";
  v36[1] = v12;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v27];
  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v27);
  }

  v4 = 0;
LABEL_23:
}

- (void)_removeMedia:(id)media assertion:(id)assertion completionBlock:(id)block
{
  mediaCopy = media;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v9 = mediaCopy;
  v21 = v9;
  v10 = blockCopy;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v9 objectForKeyedSubscript:@"MediaType"];
  v13 = [v9 objectForKeyedSubscript:@"PersistentID"];
  v14 = [v9 objectForKeyedSubscript:@"iTunesStoreID"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 isEqualToString:@"Book"])
    {
      v15 = objc_opt_new();
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v15 setPersistentID:v13];
      }

      else
      {
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v17 = +[MDMParser malformedRequestErrorResult];
          v11[2](v11, v17);
          goto LABEL_14;
        }

        [v15 setITunesStoreID:v14];
      }

      systemConnection = [MEMORY[0x277D04BF8] systemConnection];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke_3;
      v18[3] = &unk_27982C7D0;
      v19 = v11;
      [systemConnection performRequest:v15 completion:v18];

      v17 = v19;
LABEL_14:

      goto LABEL_8;
    }
  }

  v15 = +[MDMParser malformedRequestErrorResult];
  v11[2](v11, v15);
LABEL_8:
}

void __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v3];
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = dispatch_get_global_queue(0, 0);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke_2;
      v6[3] = &unk_27982B898;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = v4;
  if (!v4)
  {
    v8 = *(a1 + 32);
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    (*(v8 + 16))(v8, v9);
    goto LABEL_9;
  }

  v5 = [v4 domain];
  if (![v5 isEqualToString:*MEMORY[0x277D04BC8]])
  {

    goto LABEL_7;
  }

  v6 = [v10 code];

  if (v6 != 1650)
  {
LABEL_7:
    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v10];
    goto LABEL_8;
  }

  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_8:
  v9 = v7;
  (*(*(a1 + 32) + 16))(*(a1 + 32), v7);
LABEL_9:
}

- (void)_deviceConfigured:(id)configured assertion:(id)assertion completionBlock:(id)block
{
  configuredCopy = configured;
  assertionCopy = assertion;
  blockCopy = block;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  details = [mEMORY[0x277D24640] details];
  v13 = [details mutableCopy];

  if (v13)
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D03050]];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke;
    v19[3] = &unk_27982C820;
    v23 = &v24;
    v19[4] = self;
    v20 = configuredCopy;
    v22 = blockCopy;
    v21 = assertionCopy;
    [MDMMCInterface storeCloudConfigurationDetails:v13 completion:v19];
  }

  else
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "Device asked to end device configuration, but no cloud configuration yet in place.", v18, 2u);
    }

    v15 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
    v16 = [v15 mutableCopy];
    v17 = v25[5];
    v25[5] = v16;

    [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:configuredCopy response:v25[5]];
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, v25[5]);
    }
  }

  _Block_object_dispose(&v24, 8);
}

void __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke_2;
  block[3] = &unk_27982C7F8;
  v4 = *(a1 + 64);
  v11 = v3;
  v14 = v4;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Could not update await device configure - %{public}@", &v11, 0xCu);
    }

    v5 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:*(a1 + 32)];
  }

  else
  {
    v5 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }

  v6 = v5;
  v7 = [v5 mutableCopy];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(a1 + 40) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 48) response:*(*(*(a1 + 72) + 8) + 40)];
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 72) + 8) + 40));
  }

  return result;
}

- (id)_accessibilitySettings
{
  v2 = +[MDMAccessibilityManager sharedInstance];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "zoomEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"ZoomEnabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "boldTextEnabled")}];
  [v3 setObject:v5 forKeyedSubscript:@"BoldTextEnabled"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "voiceOverEnabled")}];
  [v3 setObject:v6 forKeyedSubscript:@"VoiceOverEnabled"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "reduceMotionEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"ReduceMotionEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "increaseContrastEnabled")}];
  [v3 setObject:v8 forKeyedSubscript:@"IncreaseContrastEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "textSize")}];
  [v3 setObject:v9 forKeyedSubscript:@"TextSize"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "reduceTransparencyEnabled")}];
  [v3 setObject:v10 forKeyedSubscript:@"ReduceTransparencyEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "touchAccommodationsEnabled")}];
  [v3 setObject:v11 forKeyedSubscript:@"TouchAccommodationsEnabled"];

  return v3;
}

- (void)_scheduleOSUpdateScan:(id)scan assertion:(id)assertion completionBlock:(id)block
{
  blockCopy = block;
  scanCopy = scan;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Schedule OS update scan start.", buf, 2u);
  }

  v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:scanCopy response:v10];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v10);
  }

  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Schedule OS update scan end.", v12, 2u);
  }
}

- (void)_scheduleOSUpdate:(id)update assertion:(id)assertion completionBlock:(id)block
{
  updateCopy = update;
  assertionCopy = assertion;
  blockCopy = block;
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Schedule OS update start", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MDMParser__scheduleOSUpdate_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v12 = updateCopy;
  v21 = v12;
  v13 = blockCopy;
  v22 = v13;
  v14 = _Block_copy(aBlock);
  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v14])
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Rejected software update due to user logged in.";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_2561F5000, v17, v18, v16, buf, 2u);
    }
  }

  else
  {
    [(MDMParser *)self _dmfScheduleOSUpdate:v12 assertion:assertionCopy completionBlock:v14];
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Schedule OS update end.";
      v17 = v19;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }
  }
}

void __57__MDMParser__scheduleOSUpdate_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_dmfScheduleOSUpdate:(id)update assertion:(id)assertion completionBlock:(id)block
{
  v78[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "DMF Schedule OS update start.", buf, 2u);
  }

  v10 = [updateCopy objectForKeyedSubscript:@"Updates"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Rejected software update due to malformed update array.";
      goto LABEL_19;
    }
  }

  else
  {
    if (![v10 count])
    {
      v76 = @"InstallAction";
      v77 = @"Default";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v78[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];

      v10 = v12;
    }

    if ([v10 count] == 1)
    {
      v13 = [v10 objectAtIndexedSubscript:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
        v21 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_ERROR, "Rejected software update due to missing or malformed OS update object.", buf, 2u);
        }

        goto LABEL_80;
      }

      v14 = [v13 objectForKeyedSubscript:@"ProductKey"];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
          v22 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_ERROR, "Rejected software update due to malformed product key.", buf, 2u);
          }

          goto LABEL_79;
        }
      }

      v15 = [v13 objectForKeyedSubscript:@"InstallAction"];
      if (v15)
      {
        v16 = v15;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
          v17 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v18 = "Rejected software update due to malformed install action.";
LABEL_32:
            _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
            goto LABEL_78;
          }

          goto LABEL_78;
        }
      }

      else
      {
        v16 = @"Default";
      }

      v72 = 0;
      if (([objc_opt_class() _dmfAction:&v72 fromMDMActionString:v16] & 1) == 0)
      {
        [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
        v17 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v18 = "Rejected software update due to malformed OS update action.";
          goto LABEL_32;
        }

LABEL_78:

LABEL_79:
LABEL_80:

        goto LABEL_81;
      }

      v23 = [v13 objectForKeyedSubscript:@"ProductVersion"];
      if (v23)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
          v30 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v31 = "Rejected software update due to malformed product version.";
            goto LABEL_52;
          }

LABEL_77:

          goto LABEL_78;
        }

        v24 = *(DMCLogObjects() + 8);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
LABEL_36:
          v29 = [objc_opt_class() _shouldUseDelayWithRequest:updateCopy];
          if (v29 == 2)
          {
            [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
            v30 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v31 = "Rejected software update due to use delay bad request.";
LABEL_52:
              _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
              goto LABEL_77;
            }

            goto LABEL_77;
          }

          v32 = v29;
          v67 = v16;
          v70 = v23;
          v33 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = @"NO";
            if (v32 == 1)
            {
              v34 = @"YES";
            }

            *buf = 138543362;
            v75 = v34;
            _os_log_impl(&dword_2561F5000, v33, OS_LOG_TYPE_DEFAULT, "scheduleOSUpdate useDelay = %{public}@", buf, 0xCu);
          }

          v35 = objc_opt_new();
          [v35 setProductKey:v14];
          [v35 setProductVersion:v70];
          [v35 setAction:v72];
          [v35 setUseDelay:v32 == 1];
          systemConnection = [MEMORY[0x277D04BF8] systemConnection];
          v71 = 0;
          v37 = [systemConnection performRequest:v35 error:&v71];
          v38 = v71;

          v39 = v37;
          if (!v37)
          {
            v48 = v38;
            v45 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v38];
            v49 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v75 = v45;
              _os_log_impl(&dword_2561F5000, v49, OS_LOG_TYPE_ERROR, "Could not schedule an update - %{public}@", buf, 0xCu);
            }

            v47 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v45];
            if (blockCopy)
            {
              blockCopy[2](blockCopy, v47);
            }

            goto LABEL_75;
          }

          v63 = v38;
          v69 = v37;
          error = [v37 error];
          domain = [(__CFString *)error domain];
          v42 = *MEMORY[0x277D04BC8];
          v66 = v35;
          v68 = error;
          if ([domain isEqualToString:*MEMORY[0x277D04BC8]])
          {
            code = [(__CFString *)error code];

            if (code == 2213)
            {
              v44 = *(DMCLogObjects() + 8);
              v45 = v68;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2561F5000, v44, OS_LOG_TYPE_DEFAULT, "No update available.", buf, 2u);
              }

              v39 = v69;
              if (!blockCopy)
              {
                v48 = v63;
                goto LABEL_76;
              }

              v46 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
              v47 = [v46 mutableCopy];

              [v47 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"UpdateResults"];
              blockCopy[2](blockCopy, v47);
              v48 = v63;
LABEL_75:

LABEL_76:
              v23 = v70;
              v16 = v67;
              goto LABEL_77;
            }
          }

          else
          {
          }

          domain2 = [(__CFString *)v68 domain];
          if ([domain2 isEqualToString:v42])
          {
            v51 = [(__CFString *)v68 code]== 2200 || [(__CFString *)v68 code]== 2207;
          }

          else
          {
            v51 = 0;
          }

          v52 = [objc_opt_class() _resolvedInstallActionStringForAction:{objc_msgSend(v69, "action")}];
          if (!v68 || v51)
          {
            v64 = 0;
            v53 = @"Error";
            if (v52)
            {
              v53 = v52;
            }
          }

          else
          {

            v64 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v68];
            v53 = @"Error";
          }

          v65 = v53;
          v54 = [objc_opt_class() _statusFromError:v68 action:{objc_msgSend(v69, "action")}];
          v55 = objc_opt_new();
          [v55 setObject:v65 forKeyedSubscript:@"InstallAction"];
          productKey = [v69 productKey];
          [v55 setObject:productKey forKeyedSubscript:@"ProductKey"];

          v62 = v54;
          [v55 setObject:v54 forKeyedSubscript:@"Status"];
          if (v64)
          {
            v57 = [objc_opt_class() errorChainFromError:v64];
            [v55 setObject:v57 forKeyedSubscript:@"ErrorChain"];
          }

          v58 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
          v59 = [v58 mutableCopy];

          v73 = v55;
          v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
          [v59 setObject:v60 forKeyedSubscript:@"UpdateResults"];

          if (blockCopy)
          {
            blockCopy[2](blockCopy, v59);
          }

          v61 = *(DMCLogObjects() + 8);
          v35 = v66;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v61, OS_LOG_TYPE_DEFAULT, "DMF Schedule OS update end.", buf, 2u);
          }

          v45 = v68;
          v39 = v69;
          v48 = v63;
          v47 = v65;
          goto LABEL_75;
        }

        *buf = 138543362;
        v75 = v23;
        v25 = "Requesting an update with a specific PMV - %{public}@";
        v26 = v24;
        v27 = 12;
      }

      else
      {
        v28 = *(DMCLogObjects() + 8);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v25 = "Requesting an update with any PMV";
        v26 = v28;
        v27 = 2;
      }

      _os_log_impl(&dword_2561F5000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_36;
    }

    [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:blockCopy];
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Rejected software update due to multiple OS update objects.";
LABEL_19:
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    }
  }

LABEL_81:
}

- (void)_mdmScheduleOSUpdate:(id)update assertion:(id)assertion completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "MDM Schedule OS update start.", buf, 2u);
  }

  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:blockCopy])
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Rejected software update due to user logged in.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_22:
      _os_log_impl(&dword_2561F5000, v12, v13, v11, buf, 2u);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  v14 = [updateCopy objectForKeyedSubscript:@"Updates"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        v31 = updateCopy;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = *(DMCLogObjects() + 8);
              updateCopy = v31;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_ERROR, "Rejected software update due to malformed update object.", buf, 2u);
              }

              goto LABEL_35;
            }

            v21 = [v20 objectForKeyedSubscript:@"ProductKey"];
            if (v21)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v28 = *(DMCLogObjects() + 8);
                updateCopy = v31;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2561F5000, v28, OS_LOG_TYPE_ERROR, "Rejected software update due to malformed product key.", buf, 2u);
                }

                goto LABEL_35;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
          updateCopy = v31;
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_35:

      goto LABEL_36;
    }

    v23 = *(DMCLogObjects() + 8);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_36:

      if (blockCopy)
      {
        v29 = +[MDMParser malformedRequestErrorResult];
        v30 = [v29 mutableCopy];

        blockCopy[2](blockCopy, v30);
      }

      goto LABEL_38;
    }

    *buf = 0;
    v24 = "Rejected software update due to missing or malformed update array.";
LABEL_29:
    _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_36;
  }

  if (([@"Default" isEqualToString:@"Default"] & 1) == 0)
  {
    v25 = [@"Default" isEqualToString:@"DownloadOnly"];
    v26 = [@"Default" isEqualToString:@"InstallASAP"];
    if ((v25 & 1) == 0 && (v26 & 1) == 0)
    {
      v23 = *(DMCLogObjects() + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v24 = "Rejected software update due to install action being non-default, non-download only nor immediate install actions.";
      goto LABEL_29;
    }
  }

  v22 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "MDM Schedule OS update end.";
    v12 = v22;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_22;
  }

LABEL_38:
}

- (void)_availableOSUpdates:(id)updates assertion:(id)assertion completionBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  assertionCopy = assertion;
  blockCopy = block;
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Available OS update start.", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MDMParser__availableOSUpdates_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v12 = updatesCopy;
  v42 = v12;
  v13 = blockCopy;
  v43 = v13;
  v14 = _Block_copy(aBlock);
  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v14])
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Can't fetch available updates due to user logged in.";
LABEL_9:
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v17 = [objc_opt_class() _shouldUseDelayWithRequest:v12];
  if (v17 != 2)
  {
    v18 = v17;
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"NO";
      if (v18 == 1)
      {
        v20 = @"YES";
      }

      *buf = 138543362;
      v46 = v20;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEFAULT, "availableOSUpdates useDelay = %{public}@", buf, 0xCu);
    }

    v21 = v18 == 1;
    v22 = objc_opt_new();
    [v22 setUseDelay:v21];
    systemConnection = [MEMORY[0x277D04BF8] systemConnection];
    v40 = 0;
    v24 = [systemConnection performRequest:v22 error:&v40];
    v25 = v40;

    if (v24 || !v25)
    {
      if (v24)
      {
        update = [v24 update];
        if (update)
        {
          v31 = [objc_opt_class() _updateDictionaryFromUpdate:update];
          v44 = v31;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        }

        else
        {
          v38 = MEMORY[0x277CBEBF8];
        }

        v34 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v46 = v38;
          _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Returning updates array: %{public}@", buf, 0xCu);
        }

        v35 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged", v38];
        v36 = [v35 mutableCopy];

        [v36 setObject:v39 forKeyedSubscript:@"AvailableOSUpdates"];
        v14[2](v14, v36);
        v37 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v37, OS_LOG_TYPE_DEFAULT, "Available OS update end.", buf, 2u);
        }

        goto LABEL_35;
      }

      if (!v25)
      {
        [MDMParser _availableOSUpdates:assertion:completionBlock:];
      }
    }

    else
    {
      domain = [v25 domain];
      if ([domain isEqualToString:*MEMORY[0x277D04BC8]])
      {
        code = [v25 code];

        if (code == 2213)
        {
          v28 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v28, OS_LOG_TYPE_DEFAULT, "No updates available.", buf, 2u);
          }

          v29 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
          update = [v29 mutableCopy];

          [update setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"AvailableOSUpdates"];
          v14[2](v14, update);
LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    update = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v25];
    v32 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = update;
      _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_ERROR, "Could not check for available iOS updates - %{public}@", buf, 0xCu);
    }

    v33 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:update];
    v14[2](v14, v33);

    goto LABEL_35;
  }

  [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v14];
  v15 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Rejected software update due to use delay bad request.";
    goto LABEL_9;
  }

LABEL_36:
}

void __59__MDMParser__availableOSUpdates_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_statusOfOSUpdates:(id)updates assertion:(id)assertion completionBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  assertionCopy = assertion;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MDMParser__statusOfOSUpdates_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v11 = updatesCopy;
  v38 = v11;
  v12 = blockCopy;
  v39 = v12;
  v13 = _Block_copy(aBlock);
  v14 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "Status of OS update start.", buf, 2u);
  }

  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v13])
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Can't fetch OS update status due to user logged in.", buf, 2u);
    }
  }

  else
  {
    v16 = objc_opt_new();
    systemConnection = [MEMORY[0x277D04BF8] systemConnection];
    v36 = 0;
    v18 = [systemConnection performRequest:v16 error:&v36];
    v19 = v36;

    if (v18)
    {
      v20 = objc_opt_new();
      status = [v18 status];
      if (status <= 2)
      {
        [v20 setObject:off_27982C970[status] forKeyedSubscript:@"Status"];
      }

      productKey = [v18 productKey];
      [v20 setObject:productKey forKeyedSubscript:@"ProductKey"];

      [v18 downloadPercentComplete];
      if (v23 < 1.0)
      {
        v24 = MEMORY[0x277CBEC28];
      }

      else
      {
        v24 = MEMORY[0x277CBEC38];
      }

      [v20 setObject:v24 forKeyedSubscript:@"IsDownloaded"];
      v25 = MEMORY[0x277CCABB0];
      [v18 downloadPercentComplete];
      v26 = [v25 numberWithDouble:?];
      [v20 setObject:v26 forKeyedSubscript:@"DownloadPercentComplete"];

      v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
      v28 = [v27 mutableCopy];

      v40 = v20;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [v28 setObject:v29 forKeyedSubscript:@"OSUpdateStatus"];

      v30 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = v18;
        _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_DEFAULT, "OSUpdateStatus DMF raw data: %{public}@", buf, 0xCu);
      }

      v31 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = v28;
        _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_DEFAULT, "OSUpdateStatus response: %{public}@", buf, 0xCu);
      }

      assertionCopy = v35;
    }

    else
    {
      if (!v19)
      {
        [MDMParser _statusOfOSUpdates:assertion:completionBlock:];
      }

      v20 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v19];
      v32 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v42 = v20;
        _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_ERROR, "Could not check for iOS update status - %{public}@", buf, 0xCu);
      }

      v33 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v20];
      v28 = [v33 mutableCopy];
    }

    v13[2](v13, v28);
    v34 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Status of OS update end.", buf, 2u);
    }
  }
}

void __58__MDMParser__statusOfOSUpdates_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

+ (id)_errorWithDomain:(id)domain code:(int64_t)code descriptionKey:(id)key underlyingError:(id)error type:(id)type
{
  v10 = MEMORY[0x277CCA9B8];
  typeCopy = type;
  errorCopy = error;
  domainCopy = domain;
  v14 = DMCUnformattedErrorArray();
  v15 = [v10 DMCErrorWithDomain:domainCopy code:code descriptionArray:v14 underlyingError:errorCopy errorType:{typeCopy, 0}];

  return v15;
}

+ (id)_errorFromDMFSoftwareUpdateError:(id)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  switch([errorCopy code])
  {
    case 2200:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_IN_PROGRESS";
      v8 = 12051;
      goto LABEL_18;
    case 2201:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_COMPLETE";
      v8 = 12052;
      goto LABEL_18;
    case 2202:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_FAILED";
      v8 = 12057;
      goto LABEL_18;
    case 2203:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_INSUFFICIENT_NETWORK";
      v8 = 12056;
      goto LABEL_18;
    case 2204:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_INSUFFICIENT_SPACE";
      v8 = 12054;
      goto LABEL_18;
    case 2205:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_INSUFFICIENT_POWER";
      v8 = 12055;
      goto LABEL_18;
    case 2206:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_REQUIRES_COMPUTER";
      v8 = 12053;
      goto LABEL_18;
    case 2207:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_IN_PROGRESS";
      v8 = 12058;
      goto LABEL_18;
    case 2208:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_FAILED";
      v8 = 12062;
      goto LABEL_18;
    case 2209:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_INSUFFICIENT_SPACE";
      v8 = 12060;
      goto LABEL_18;
    case 2210:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_INSUFFICIENT_POWER";
      v8 = 12061;
      goto LABEL_18;
    case 2211:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_REQUIRES_DOWNLOAD";
      v8 = 12059;
      goto LABEL_18;
    case 2212:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DEVICE_PASSCODE_MUST_BE_CLEARED";
      v8 = 12049;
      goto LABEL_18;
    case 2213:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_NO_UPDATE_AVAILABLE";
      v8 = 12048;
      goto LABEL_18;
    case 2214:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_SCAN_FAILED";
      v8 = 12050;
LABEL_18:
      v13 = [v4 _errorWithDomain:v5 code:v8 descriptionKey:v7 underlyingError:errorCopy type:v6];
      break;
    default:
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D033C8];
      v11 = *MEMORY[0x277CCA7E8];
      v15[0] = *MEMORY[0x277CCA450];
      v15[1] = v11;
      v16[0] = @"Unknown software update error";
      v16[1] = errorCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v13 = [v9 errorWithDomain:v10 code:3 userInfo:v12];

      break;
  }

  return v13;
}

+ (BOOL)_dmfAction:(unint64_t *)action fromMDMActionString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"DownloadOnly" lowercaseString];
  v7 = [lowercaseString isEqualToString:lowercaseString2];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    lowercaseString3 = [@"InstallASAP" lowercaseString];
    v10 = [lowercaseString isEqualToString:lowercaseString3];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      lowercaseString4 = [@"Default" lowercaseString];
      v12 = [lowercaseString isEqualToString:lowercaseString4];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_8;
      }

      v8 = 2;
    }
  }

  *action = v8;
  v13 = 1;
LABEL_8:

  return v13;
}

+ (id)_resolvedInstallActionStringForAction:(unint64_t)action
{
  v3 = @"InstallASAP";
  if (action != 1)
  {
    v3 = 0;
  }

  if (action)
  {
    return v3;
  }

  else
  {
    return @"DownloadOnly";
  }
}

+ (unint64_t)_shouldUseDelayWithRequest:(id)request
{
  requestCopy = request;
  if ([objc_opt_class() _useDelayFlagAllowed])
  {
    v4 = [requestCopy objectForKeyedSubscript:@"UseDelay"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      bOOLValue = 2;
    }

    else
    {
      bOOLValue = [v4 BOOLValue];
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)_statusFromError:(id)error action:(unint64_t)action
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v8 = [domain isEqualToString:*MEMORY[0x277D04BC8]];

    if (v8 && (v9 = [v6 code], (v9 - 2200) <= 0xC))
    {
      v10 = off_27982C988[v9 - 2200];
    }

    else
    {
      v10 = @"Idle";
    }
  }

  else
  {
    v11 = @"Idle";
    if (action == 1)
    {
      v11 = @"Installing";
    }

    if (action)
    {
      v10 = v11;
    }

    else
    {
      v10 = @"Downloading";
    }
  }

  return v10;
}

+ (id)_updateDictionaryFromUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    v4 = objc_opt_new();
    productKey = [updateCopy productKey];

    if (productKey)
    {
      productKey2 = [updateCopy productKey];
      [v4 setObject:productKey2 forKeyedSubscript:@"ProductKey"];
    }

    humanReadableName = [updateCopy humanReadableName];

    if (humanReadableName)
    {
      humanReadableName2 = [updateCopy humanReadableName];
      [v4 setObject:humanReadableName2 forKeyedSubscript:@"HumanReadableName"];
    }

    productName = [updateCopy productName];

    if (productName)
    {
      productName2 = [updateCopy productName];
      [v4 setObject:productName2 forKeyedSubscript:@"ProductName"];
    }

    version = [updateCopy version];

    if (version)
    {
      version2 = [updateCopy version];
      [v4 setObject:version2 forKeyedSubscript:@"Version"];
    }

    build = [updateCopy build];

    if (build)
    {
      build2 = [updateCopy build];
      [v4 setObject:build2 forKeyedSubscript:@"Build"];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(updateCopy, "downloadSize")}];
    [v4 setObject:v15 forKeyedSubscript:@"DownloadSize"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(updateCopy, "installSize")}];
    [v4 setObject:v16 forKeyedSubscript:@"InstallSize"];

    isCritical = [updateCopy isCritical];
    v18 = MEMORY[0x277CBEC28];
    v19 = MEMORY[0x277CBEC38];
    if (isCritical)
    {
      v20 = MEMORY[0x277CBEC38];
    }

    else
    {
      v20 = MEMORY[0x277CBEC28];
    }

    [v4 setObject:v20 forKeyedSubscript:@"IsCritical"];
    if ([updateCopy restartRequired])
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    [v4 setObject:v21 forKeyedSubscript:@"RestartRequired"];
    if ([updateCopy allowsInstallLater])
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    [v4 setObject:v22 forKeyedSubscript:@"AllowsInstallLater"];
    if ([updateCopy isSplat])
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    [v4 setObject:v23 forKeyedSubscript:@"IsSecurityResponse"];
    supplementalBuild = [updateCopy supplementalBuild];

    if (supplementalBuild)
    {
      supplementalBuild2 = [updateCopy supplementalBuild];
      [v4 setObject:supplementalBuild2 forKeyedSubscript:@"SupplementalBuildVersion"];
    }

    supplementalVersionExtra = [updateCopy supplementalVersionExtra];

    if (supplementalVersionExtra)
    {
      supplementalVersionExtra2 = [updateCopy supplementalVersionExtra];
      [v4 setObject:supplementalVersionExtra2 forKeyedSubscript:@"SupplementalOSVersionExtra"];
    }

    v28 = [v4 copy];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (BOOL)_useDelayFlagAllowed
{
  v9 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"MCUseSoftwareUpdateDelayFlagAllowed"];

  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_INFO, "useDelayFlagAllowed = %{public}@", &v7, 0xCu);
  }

  return v3;
}

- (id)_responseForMalformedUpdateRequest
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  v9[0] = @"ProductKey";
  v9[1] = @"InstallAction";
  v10[0] = &stru_2868451F0;
  v10[1] = @"Error";
  v10[2] = @"Idle";
  v9[2] = @"Status";
  v9[3] = @"ErrorChain";
  v6 = [objc_opt_class() errorChainFromError:v5];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (BOOL)_rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:(id)block
{
  blockCopy = block;
  if ([MEMORY[0x277D03538] isSharediPad])
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8] currentUser];
    isLoginUser = [currentUser isLoginUser];
    v8 = isLoginUser ^ 1;

    if (blockCopy && (isLoginUser & 1) == 0)
    {
      _softwareUpdatesNotPermittedWithLoggedInUserError = [(MDMParser *)self _softwareUpdatesNotPermittedWithLoggedInUserError];
      v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:_softwareUpdatesNotPermittedWithLoggedInUserError];

      blockCopy[2](blockCopy, v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v4 = +[MDMParser malformedRequestErrorResult];
    v5 = [v4 mutableCopy];

    blockCopy[2](blockCopy, v5);
  }
}

- (id)_softwareUpdatesNotPermittedWithLoggedInUserError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12077 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)request response:(id)response
{
  if (request && response)
  {
    v6 = MEMORY[0x277D24640];
    responseCopy = response;
    requestCopy = request;
    sharedConfiguration = [v6 sharedConfiguration];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    v10 = [(MDMParser *)self _analyticsCommandNameFromRequest:requestCopy];
    v11 = [(MDMParser *)self _analyticsErrorFromResponse:responseCopy];

    LOBYTE(self) = [(MDMParser *)self _analyticsRequiresNetworkTetheringFromRequest:requestCopy];
    LOBYTE(responseCopy) = [sharedConfiguration isTeslaEnrolled];
    LOBYTE(requestCopy) = [sharedConfiguration isSupervised];
    isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];
    MDMAnalyticsSendCommandEvent(v10, v11, self, responseCopy, requestCopy, isUserEnrollment, [MEMORY[0x277D03538] isSharediPad], 0);
  }
}

- (id)_analyticsCommandNameFromRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy objectForKeyedSubscript:@"RequestType"];
  if ([v4 isEqualToString:@"InstallApplication"])
  {
    v5 = [requestCopy objectForKeyedSubscript:@"Options"];
    v6 = [v5 objectForKeyedSubscript:@"PurchaseMethod"];
    if ([v6 intValue] == 1)
    {
      v7 = @"%@.vpp";
    }

    else
    {
      v7 = @"%@.legacy";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v4];

    v4 = v8;
  }

  return v4;
}

- (BOOL)_analyticsRequiresNetworkTetheringFromRequest:(id)request
{
  v3 = [request objectForKeyedSubscript:@"RequestRequiresNetworkTether"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)errorChainFromError:(id)error
{
  errorCopy = error;
  v4 = objc_opt_new();
  v15 = errorCopy;
  if (v15)
  {
    v5 = *MEMORY[0x277CCA7E8];
    v6 = v15;
    do
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      userInfo = [v6 userInfo];
      localizedDescription = [v6 localizedDescription];
      [dictionary DMCSetObjectIfNotNil:localizedDescription forKey:@"LocalizedDescription"];

      domain = [v6 domain];
      [dictionary DMCSetObjectIfNotNil:domain forKey:@"ErrorDomain"];

      dMCUSEnglishDescription = [v6 DMCUSEnglishDescription];
      [dictionary DMCSetObjectIfNotNil:dMCUSEnglishDescription forKey:@"USEnglishDescription"];

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
      [dictionary setObject:v12 forKey:@"ErrorCode"];

      [v4 addObject:dictionary];
      v13 = [userInfo objectForKey:v5];

      v6 = v13;
    }

    while (v13);
  }

  return v4;
}

+ (id)malformedRequestErrorResult
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];
  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];

  return v6;
}

- (id)_invalidRequestTypeError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12021 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], error, 0}];

  return v6;
}

- (id)_notAuthorizedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12007 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_notManagedErrorAppID:(id)d
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12038 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], d, 0}];

  return v6;
}

- (id)_notManagedAndNotSupervisedErrorAppID:(id)d
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12130 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], d, 0}];

  return v6;
}

- (id)_invalidRequestTypeInMDMLostModeError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12078 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], error, 0}];

  return v6;
}

- (id)_invalidRequestTypeInSingleAppModeError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12084 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], error, 0}];

  return v6;
}

- (id)_notNetworkTetheredError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12081 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_installApplicationCouldNotModifyDDMAppsError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_managedByDDMError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12126 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], error, 0}];

  return v6;
}

- (id)_notInRRTSModeError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12131 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_appAttributesWithRequestedAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([MEMORY[0x277D03500] forceAppInstallUnremovability])
  {
    if (attributesCopy)
    {
      dictionary = [attributesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v5 = dictionary;
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D24888]];

    attributesCopy = v5;
  }

  return attributesCopy;
}

- (id)_appManagementFlagsWithRequestedFlags:(id)flags
{
  unsignedIntegerValue = [flags unsignedIntegerValue];
  forceAppRemovalOnUnenroll = [MEMORY[0x277D03500] forceAppRemovalOnUnenroll];
  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithUnsignedInteger:unsignedIntegerValue | forceAppRemovalOnUnenroll];
}

- (BOOL)_isPurchaseMethodAllowed:(int)allowed onUserEnrollment:(BOOL)enrollment
{
  result = allowed == 1;
  if (allowed != 1 && !enrollment)
  {
    if ([MEMORY[0x277D03530] isAppleTV])
    {
      return 0;
    }

    else
    {
      return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
    }
  }

  return result;
}

- (BOOL)_isChlorineEligible
{
  v8 = *MEMORY[0x277D85DE8];
  domain_answer = os_eligibility_get_domain_answer();
  v3 = *(DMCLogObjects() + 8);
  if (domain_answer)
  {
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      *buf = 67109120;
      LODWORD(v7) = domain_answer;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Eligibility check failed with error code: %d", buf, 8u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v7 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEBUG, "isChlorineEligible: %llu", buf, 0xCu);
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (MDMServerCore)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end