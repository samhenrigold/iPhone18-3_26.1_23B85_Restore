@interface DMCEnrollmentFlowController
+ (id)_createEnrollmentNotAllowedDuringSDPError;
+ (id)_createEnterpriseApplicationExistsErrorWithAppName:(id)name;
+ (id)_createEnterpriseApplicationMissingEntitlementsError;
+ (id)_createFailedToCaptureSnapshotError;
+ (id)_createFailedToDeleteSnapshotError;
+ (id)_createGeneralError;
+ (id)_createGeneralSignInError;
+ (id)_createInvalidCloudConfigError;
+ (id)_createInvalidErSSODeclarationsError;
+ (id)_createMissingAppleAccountForUserEnrollmentError;
+ (id)_createMissingEnterpriseApplicationBundleIDError;
+ (id)_createMissingEnterpriseApplicationError;
+ (id)_createMissingRMAccountError;
+ (id)_createPasscodeRequiredError;
+ (id)_createUnsupportedFeatureError;
+ (id)_createUpdateFromFactoryVersionRequiredError;
+ (id)chooseServerFromUAORGOServers:(id)servers error:(id *)error;
+ (id)enrollmentFlowController;
+ (id)enrollmentFlowControllerWithPresenter:(id)presenter managedConfigurationHelper:(id)helper;
+ (id)enrollmentFlowControllerWithPresenter:(id)presenter managedConfigurationHelper:(id)helper rmStoreHelper:(id)storeHelper;
- (BOOL)_appWithBundleIDExists:(id)exists;
- (BOOL)_canSkipMDMEnrollmentWithEnrollmentType:(unint64_t)type;
- (BOOL)_handleNeedCredentialsError:(id)error;
- (BOOL)_handleSoftwareUpdateRequiredError:(id)error;
- (BOOL)_shouldDoReturnToService;
- (BOOL)_validEnrollmentMode:(id)mode enrollmentMethod:(unint64_t)method;
- (BOOL)_validateBundleID:(id)d personaID:(id)iD requiredEntitlements:(id)entitlements error:(id *)error;
- (BOOL)_verifyAccountsInformationWithAltDSID:(id)d personaID:(id)iD;
- (BOOL)_verifyPropertiesFromProfileData:(id)data enrollmentMethod:(unint64_t)method isRapidReturnToService:(BOOL)service isESSO:(BOOL)o essoAppITunesStoreID:(id)d enrollmentMode:(id)mode managedAppleID:(id)iD assignedManagedAppleID:(id)self0 serverCapabilities:(id)self1 error:(id *)self2;
- (DMCEnrollmentDirtyState)dirtyState;
- (DMCEnrollmentFlowController)init;
- (DMCEnrollmentFlowController)initWithPresenter:(id)presenter managedConfigurationHelper:(id)helper rmStoreHelper:(id)storeHelper;
- (DMCEnrollmentFlowDelegate)delegate;
- (DMCEnrollmentFlowMigrationDelegate)migrationDelegate;
- (DMCObliterationShelter)obliterationShelter;
- (DMCServiceDiscoveryHelper)serviceDiscoveryHelper;
- (id)_ADE_RRTS_snapshotSteps;
- (id)_ADE_RTS_commonSteps;
- (id)_ADE_commonSteps;
- (id)_ADE_migration_cleanupSteps;
- (id)_ADxE_ABE_ESSO_firstPartSteps;
- (id)_ADxE_ABE_ESSO_secondPartSteps_default;
- (id)_ADxE_ABE_ESSO_secondPartSteps_orgToken;
- (id)_ADxE_ABE_firstPartSteps;
- (id)_ADxE_ABE_secondPartSteps_default;
- (id)_ADxE_ABE_secondPartSteps_orgToken;
- (id)_ADxE_ESSO_firstPart_commonSteps;
- (id)_ADxE_ESSO_secondPart_commonSteps_default;
- (id)_ADxE_ESSO_secondPart_commonSteps_orgToken;
- (id)_ADxE_secondPart_commonSteps_default;
- (id)_ADxE_secondPart_commonSteps_orgToken;
- (id)_ADxE_thirdParty_ESSO_firstPartSteps;
- (id)_ADxE_thirdParty_firstPartSteps;
- (id)_ORGO_MACBuddy_firstPartSteps;
- (id)_ORGO_MACBuddy_secondPartSteps;
- (id)_ORGO_MAIDEnrollmentSteps;
- (id)_ORGO_MAIDEnrollmentSteps_orgToken;
- (id)_appNameWithBundleID:(id)d;
- (id)_bundleIDsFromAppIDs:(id)ds;
- (id)_commonStepsForEnrollmentType:(unint64_t)type isReturnToService:(BOOL)service;
- (id)_convertErrorToHumanReadableError:(id)error;
- (id)_ephemeralAuthSteps;
- (id)_errorTranslation;
- (id)_findServerWithVersion:(id)version servers:(id)servers;
- (id)_guardAgainstConflictingAccountsWithUsername:(id)username altDSID:(id)d;
- (id)_machineInfoWithEnrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method isDoingReturnToService:(BOOL)service isRapidReturnToService:(BOOL)toService;
- (id)_nameForStep:(unint64_t)step;
- (id)_permanentAuthSteps;
- (id)_postEnrollmentSteps;
- (id)_readDirtyStateFromDisk;
- (id)_stepsWithUI;
- (id)_translatedErrorStringForError:(id)error;
- (id)_trustedErrors;
- (void)_addNotification;
- (void)_analyzeCloudConfig:(id)config enrollmentType:(unint64_t)type isDoingReturnToService:(BOOL)service obliterationShelter:(id)shelter;
- (void)_analyzeESSODetails:(id)details;
- (void)_analyzeProfileData:(id)data enrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method isESSO:(BOOL)o essoAppITunesStoreID:(id)d isRapidReturnToService:(BOOL)service;
- (void)_askForMDMUsernameAndCredentialWithError:(id)error;
- (void)_askForPasscodeIfNeededWithEnrollmentType:(unint64_t)type;
- (void)_askForRestoreChoiceWithMAID:(id)d personaID:(id)iD;
- (void)_askForUserConsentWithProfileData:(id)data managedAppleID:(id)d cloudConfig:(id)config isReturnToService:(BOOL)service enrollmentType:(unint64_t)type;
- (void)_askForUsernameWithDefaultUsername:(id)username;
- (void)_authenticateMAID:(id)d authenticationResults:(id)results enrollmentType:(unint64_t)type personaID:(id)iD ephemeral:(BOOL)ephemeral silent:(BOOL)silent isRenewalFlow:(BOOL)flow;
- (void)_awaitApplicationInstallation;
- (void)_awaitDDMAppConfigurationWithProfileIdentifier:(id)identifier;
- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)identifiers;
- (void)_chooseEnrollmentTypeWithAvailableServers:(id)servers serverInformationSource:(unint64_t)source;
- (void)_cleanupDirtyState:(id)state;
- (void)_cleanupOrphanedAppsIfNeededIsDoingRRTS:(BOOL)s;
- (void)_correlateMAIDWithAltDSID:(id)d withRMAccount:(id)account isProfileLocked:(BOOL)locked organizationName:(id)name friendlyName:(id)friendlyName personaID:(id)iD;
- (void)_createAndSyncBootstrapTokenWithDevicePasscode:(id)passcode devicePasscodeContext:(id)context;
- (void)_createEnterprisePersonaWithDevicePasscode:(id)passcode devicePasscodeContext:(id)context;
- (void)_createRMAccountIfNeededWithSignInUserIdentifier:(id)identifier assignedMAID:(id)d existingRMAccountID:(id)iD enrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method isRenewalFlow:(BOOL)flow;
- (void)_detectAuthTypeWithServiceURL:(id)l enrollmentType:(unint64_t)type isPostBuddy:(BOOL)buddy machineInfo:(id)info anchorCertificateRefs:(id)refs;
- (void)_displayManagementDetailsOverviewWithProfileData:(id)data managedAppleID:(id)d;
- (void)_enrollmentTypeAuthorizedBySDP:(unint64_t)p completion:(id)completion;
- (void)_ensureDeviceActivation;
- (void)_ensureWiFiConnectionWithWiFiProfile:(id)profile;
- (void)_exchangeMAIDForBearerTokenWithRMAccountIdentifier:(id)identifier authParams:(id)params anchorCertificateRefs:(id)refs;
- (void)_extensionIDsFromDeclarationProfiles;
- (void)_fetchAppAttributesWithITunesItemID:(id)d completionHandler:(id)handler;
- (void)_fetchBundleIDsWithiTunesItemID:(id)d debuggingAppIDs:(id)ds completionHandler:(id)handler;
- (void)_fetchCloudConfigWithEnrollmentType:(unint64_t)type isReturnToService:(BOOL)service;
- (void)_fetchEnrollmentProfileFromServiceURL:(id)l authTokens:(id)tokens machineInfo:(id)info anchorCertificateRefs:(id)refs enrollmentMethod:(unint64_t)method isReturnToService:(BOOL)service;
- (void)_fetchEnrollmentProfileFromServiceURL:(id)l username:(id)username password:(id)password machineInfo:(id)info anchorCertificateRefs:(id)refs;
- (void)_fetchEnrollmentProfileFromWebURL:(id)l machineInfo:(id)info anchorCertificateRefs:(id)refs isReturnToService:(BOOL)service;
- (void)_fetchServerInformationWithUsername:(id)username;
- (void)_flowTerminatedWithError:(id)error canceled:(BOOL)canceled;
- (void)_initiateDEPPushTokenSync;
- (void)_installESSOConfigurationProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d;
- (void)_installESSOConfigurationWithProfileData:(id)data declarations:(id)declarations devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d;
- (void)_installESSODeclarations:(id)declarations chosenBundleID:(id)d personaID:(id)iD enrollmentType:(unint64_t)type;
- (void)_installEnrollmentProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d rmAccountIdentifier:(id)identifier isESSO:(BOOL)o essoAppITunesStoreID:(id)self0 essoConfigurationProfile:(id)self1 wifiProfileIdentifier:(id)self2 enrollmentType:(unint64_t)self3 isReturnToService:(BOOL)self4;
- (void)_installEnterpriseApplication:(id)application debuggingAppIDs:(id)ds personaID:(id)d;
- (void)_linkESSOStore:(id)store rmAccountIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
- (void)_manageApplicationWithAppBundleID:(id)d essoDetails:(id)details organization:(id)organization personaID:(id)iD;
- (void)_preflightEnrollmentWithEnrollmentType:(unint64_t)type isRenewalFlow:(BOOL)flow isPostRestoration:(BOOL)restoration isPostBuddy:(BOOL)buddy;
- (void)_processAuthServicesWithAuthParams:(id)params enrollmentMethod:(unint64_t)method username:(id)username;
- (void)_processPotentialMigrationIfNeededWithEnrollmentType:(unint64_t)type cloudConfig:(id)config;
- (void)_promoteiCloudWithAltDSID:(id)d;
- (void)_promptForSoftwareUpdateWithSoftwareUpdateInfo:(id)info;
- (void)_reauthenticationCompleteWithRMIdentifier:(id)identifier;
- (void)_receivedApplicationWillTerminateNotification:(id)notification;
- (void)_requestiCloudSignInConfirmation;
- (void)_resetToInitialSteps;
- (void)_restoreLanguage:(id)language locale:(id)locale;
- (void)_restoreSetAsideProfiles;
- (void)_signInMAIDWithAuthenticationResult:(id)result enrollmentType:(unint64_t)type personaID:(id)d isRenewalFlow:(BOOL)flow;
- (void)_skipMDMEnrollment;
- (void)_startEnrollmentFlowWithType:(unint64_t)type anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)_storeCloudConfig:(id)config;
- (void)_takeSnapshot;
- (void)_trackDirtyAppBundleIDs:(id)ds personaID:(id)d;
- (void)_unblockAppInstallsIfNecessaryWithCaller:(id)caller;
- (void)_unblockAppInstallsWithCaller:(id)caller;
- (void)_unblockMDMCommands;
- (void)_unblockMDMCommandsIfNeededHasBlocked:(BOOL)blocked;
- (void)_updateAccountsWithRMIdentifier:(id)identifier managedAppleID:(id)d profileIdentifier:(id)profileIdentifier organizationName:(id)name enrollmentURL:(id)l personaID:(id)iD;
- (void)_updateCloudConfigWithRMAccountIdentifier:(id)identifier;
- (void)_updateCredentialForAccount:(id)account authTokens:(id)tokens;
- (void)_updateRMAccountWithIdentifier:(id)identifier authTokens:(id)tokens personaID:(id)d;
- (void)_updateRMAccountWithIdentifier:(id)identifier authTokens:(id)tokens profileIdentifier:(id)profileIdentifier organizationName:(id)name personaID:(id)d enrollmentMethod:(unint64_t)method;
- (void)_updateRMAccountWithIdentifier:(id)identifier authenticationResults:(id)results enrollmentMethod:(unint64_t)method;
- (void)_waitForDeviceConfiguration;
- (void)_waitForESSODeclarations;
- (void)_workerQueue_cleanupCachedValues;
- (void)_workerQueue_flowCompleted;
- (void)_workerQueue_performFlowStep:(unint64_t)step;
- (void)_workerQueue_stopMonitorAndEmptyDiskValues;
- (void)_writeDirtyStateToDisk:(id)disk;
- (void)appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber;
- (void)cleanUpDirtyState;
- (void)continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults:(id)results serviceURL:(id)l bearerToken:(id)token profileData:(id)data completionHandler:(id)handler;
- (void)dealloc;
- (void)reauthBYODEnrollmentFlowRestartIfFail:(BOOL)fail rmAccountIdentifier:(id)identifier completionHandler:(id)handler;
- (void)renewORGOEnrollmentWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail cleanupIfFail:(BOOL)ifFail completionHandler:(id)handler;
- (void)restartORGOEnrollmentWithServiceURL:(id)l anchorCertificates:(id)certificates isPostRestoration:(BOOL)restoration restartIfFail:(BOOL)fail cleanupIfFail:(BOOL)ifFail completionHandler:(id)handler;
- (void)setEnrollmentMethod:(unint64_t)method;
- (void)setEnrollmentType:(unint64_t)type;
- (void)startBYODEnrollmentFlowRestartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)startInBuddyEnrollmentFlowRestartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)startMacBuddyORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)startORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)startPostBuddyORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)startUAORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)startWatchEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler;
- (void)updateMDMUserEnrollmentWithManagedAppleID:(id)d profileIdentifier:(id)identifier organizationName:(id)name personaID:(id)iD completionHandler:(id)handler;
- (void)updateSharediPadUserChannelWithManagedAppleID:(id)d profileIdentifier:(id)identifier organizationName:(id)name enrollmentURL:(id)l completionHandler:(id)handler;
@end

@implementation DMCEnrollmentFlowController

+ (id)enrollmentFlowController
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)enrollmentFlowControllerWithPresenter:(id)presenter managedConfigurationHelper:(id)helper
{
  helperCopy = helper;
  presenterCopy = presenter;
  v7 = [[DMCEnrollmentFlowController alloc] initWithPresenter:presenterCopy managedConfigurationHelper:helperCopy rmStoreHelper:0];

  return v7;
}

+ (id)enrollmentFlowControllerWithPresenter:(id)presenter managedConfigurationHelper:(id)helper rmStoreHelper:(id)storeHelper
{
  storeHelperCopy = storeHelper;
  helperCopy = helper;
  presenterCopy = presenter;
  v10 = [[DMCEnrollmentFlowController alloc] initWithPresenter:presenterCopy managedConfigurationHelper:helperCopy rmStoreHelper:storeHelperCopy];

  return v10;
}

- (DMCEnrollmentFlowController)init
{
  v3.receiver = self;
  v3.super_class = DMCEnrollmentFlowController;
  result = [(DMCEnrollmentFlowControllerBase *)&v3 init];
  if (result)
  {
    result->_cleanupIfFail = 1;
  }

  return result;
}

- (DMCEnrollmentFlowController)initWithPresenter:(id)presenter managedConfigurationHelper:(id)helper rmStoreHelper:(id)storeHelper
{
  presenterCopy = presenter;
  helperCopy = helper;
  storeHelperCopy = storeHelper;
  v12 = [(DMCEnrollmentFlowController *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_presenter, presenter);
    objc_storeStrong(&v13->_managedConfigurationHelper, helper);
    objc_storeStrong(&v13->_rmStoreHelper, storeHelper);
    [(DMCEnrollmentFlowController *)v13 _addNotification];
  }

  return v13;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[DMCEnrollmentFlowController dealloc]";
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = NSStringFromSelector(a2);
  [(DMCEnrollmentFlowController *)self _unblockAppInstallsIfNecessaryWithCaller:v5];

  if ([(DMCEnrollmentFlowController *)self hasBlockedMDMCommands])
  {
    [(DMCEnrollmentFlowController *)self _unblockMDMCommands];
  }

  if ([(DMCEnrollmentFlowController *)self hasEnabledPushWake])
  {
    [(DMCEnrollmentFlowController *)self _disablePushWake];
  }

  v6.receiver = self;
  v6.super_class = DMCEnrollmentFlowController;
  [(DMCEnrollmentFlowController *)&v6 dealloc];
}

- (DMCServiceDiscoveryHelper)serviceDiscoveryHelper
{
  serviceDiscoveryHelper = self->_serviceDiscoveryHelper;
  if (!serviceDiscoveryHelper)
  {
    v4 = objc_opt_new();
    v5 = self->_serviceDiscoveryHelper;
    self->_serviceDiscoveryHelper = v4;

    serviceDiscoveryHelper = self->_serviceDiscoveryHelper;
  }

  return serviceDiscoveryHelper;
}

- (DMCEnrollmentDirtyState)dirtyState
{
  dirtyState = self->_dirtyState;
  if (!dirtyState)
  {
    v4 = [DMCEnrollmentDirtyState alloc];
    _readDirtyStateFromDisk = [(DMCEnrollmentFlowController *)self _readDirtyStateFromDisk];
    v6 = [(DMCEnrollmentDirtyState *)v4 initWithDictionary:_readDirtyStateFromDisk];
    v7 = self->_dirtyState;
    self->_dirtyState = v6;

    dirtyState = self->_dirtyState;
  }

  return dirtyState;
}

- (DMCObliterationShelter)obliterationShelter
{
  obliterationShelter = self->_obliterationShelter;
  if (!obliterationShelter)
  {
    v4 = objc_opt_new();
    v5 = self->_obliterationShelter;
    self->_obliterationShelter = v4;

    v6 = self->_obliterationShelter;
    v8 = 0;
    [(DMCObliterationShelter *)v6 retrieveWithError:&v8];
    obliterationShelter = self->_obliterationShelter;
  }

  return obliterationShelter;
}

- (void)setEnrollmentType:(unint64_t)type
{
  if (self->_enrollmentType != type)
  {
    self->_enrollmentType = type;
    delegate = [(DMCEnrollmentFlowController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(DMCEnrollmentFlowController *)self delegate];
      [delegate2 enrollmentFlowController:self didUpdateEnrollmentType:type];
    }
  }
}

- (void)setEnrollmentMethod:(unint64_t)method
{
  if (self->_enrollmentMethod != method)
  {
    self->_enrollmentMethod = method;
    delegate = [(DMCEnrollmentFlowController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(DMCEnrollmentFlowController *)self delegate];
      [delegate2 enrollmentFlowController:self didUpdateEnrollmentMethod:method];
    }
  }
}

+ (id)chooseServerFromUAORGOServers:(id)servers error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  serversCopy = servers;
  v6 = [serversCopy count];
  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = [serversCopy objectAtIndexedSubscript:0];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEBUG, "Chosen server: %{public}@", buf, 0xCu);
    }

    error = [serversCopy objectAtIndexedSubscript:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Invalid servers list to choose from: no servers listed.", buf, 2u);
    }

    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277D032F0];
      v12 = DMCErrorArray();
      *error = [v10 DMCErrorWithDomain:v11 code:15004 descriptionArray:v12 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

      error = 0;
    }
  }

  return error;
}

- (void)cleanUpDirtyState
{
  dirtyState = [(DMCEnrollmentFlowController *)self dirtyState];
  [(DMCEnrollmentFlowController *)self _cleanupDirtyState:dirtyState];
}

- (void)startInBuddyEnrollmentFlowRestartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  _shouldDoReturnToService = [(DMCEnrollmentFlowController *)self _shouldDoReturnToService];
  v8 = *DMCLogObjects();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (_shouldDoReturnToService)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Starting Return to Service Enrollment...", buf, 2u);
    }

    [(DMCEnrollmentFlowController *)self setIsDoingReturnToService:1];
  }

  else if (v9)
  {
    *v11 = 0;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Starting in Buddy Enrollment...", v11, 2u);
  }

  if (failCopy)
  {
    v10 = [(DMCEnrollmentFlowController *)self isDoingReturnToService]^ 1;
  }

  else
  {
    v10 = 0;
  }

  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:9 anchorCertificates:0 restartIfFail:v10 completionHandler:handlerCopy];
}

- (void)startORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  certificatesCopy = certificates;
  lCopy = l;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Starting ORGO enrollment flow...", v14, 2u);
  }

  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];

  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:1 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)startUAORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  certificatesCopy = certificates;
  lCopy = l;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Starting UAORGO enrollment flow...", v14, 2u);
  }

  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];

  [(DMCEnrollmentFlowController *)self setIsPostBuddy:1];
  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:3 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)startPostBuddyORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  certificatesCopy = certificates;
  [(DMCEnrollmentFlowController *)self setServiceURL:l];
  [(DMCEnrollmentFlowController *)self setIsPostBuddy:1];
  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:1 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)startMacBuddyORGOEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  certificatesCopy = certificates;
  lCopy = l;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Starting ORGO enrollment flow for MacBuddy...", v14, 2u);
  }

  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];

  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:2 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)startWatchEnrollmentFlowWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  certificatesCopy = certificates;
  lCopy = l;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Starting Watch enrollment flow...", v14, 2u);
  }

  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];

  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:8 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)renewORGOEnrollmentWithServiceURL:(id)l anchorCertificates:(id)certificates restartIfFail:(BOOL)fail cleanupIfFail:(BOOL)ifFail completionHandler:(id)handler
{
  ifFailCopy = ifFail;
  failCopy = fail;
  handlerCopy = handler;
  certificatesCopy = certificates;
  lCopy = l;
  v15 = *DMCLogObjects();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "Renewing ORGO enrollment flow...", v16, 2u);
  }

  [(DMCEnrollmentFlowController *)self setIsRenewalFlow:1];
  [(DMCEnrollmentFlowController *)self setCleanupIfFail:ifFailCopy];
  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];

  [(DMCEnrollmentFlowController *)self setIsPostBuddy:1];
  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:1 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)restartORGOEnrollmentWithServiceURL:(id)l anchorCertificates:(id)certificates isPostRestoration:(BOOL)restoration restartIfFail:(BOOL)fail cleanupIfFail:(BOOL)ifFail completionHandler:(id)handler
{
  ifFailCopy = ifFail;
  failCopy = fail;
  restorationCopy = restoration;
  handlerCopy = handler;
  certificatesCopy = certificates;
  lCopy = l;
  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Restarting ORGO enrollment flow...", v18, 2u);
  }

  [(DMCEnrollmentFlowController *)self setIsRenewalFlow:1];
  [(DMCEnrollmentFlowController *)self setCleanupIfFail:ifFailCopy];
  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];

  [(DMCEnrollmentFlowController *)self setIsPostRestoration:restorationCopy];
  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:1 anchorCertificates:certificatesCopy restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)startBYODEnrollmentFlowRestartIfFail:(BOOL)fail completionHandler:(id)handler
{
  failCopy = fail;
  handlerCopy = handler;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "Starting BYOD enrollment flow...", v8, 2u);
  }

  [(DMCEnrollmentFlowController *)self setIsPostBuddy:1];
  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:4 anchorCertificates:0 restartIfFail:failCopy completionHandler:handlerCopy];
}

- (void)continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults:(id)results serviceURL:(id)l bearerToken:(id)token profileData:(id)data completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  handlerCopy = handler;
  dataCopy = data;
  lCopy = l;
  resultsCopy = results;
  [(DMCEnrollmentFlowController *)self setEnrollmentType:2];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:1];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:handlerCopy];

  [(DMCEnrollmentFlowController *)self setRestartIfFail:0];
  [(DMCEnrollmentFlowController *)self setAuthenticationResults:resultsCopy];

  [(DMCEnrollmentFlowController *)self setServiceURL:lCopy];
  v24 = *MEMORY[0x277D245C8];
  v25[0] = tokenCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [(DMCEnrollmentFlowController *)self setAuthTokens:v17];

  [(DMCEnrollmentFlowController *)self setProfileData:dataCopy];
  loggingSupport = [(DMCEnrollmentFlowController *)self loggingSupport];

  if (!loggingSupport)
  {
    v19 = objc_opt_new();
    [(DMCEnrollmentFlowController *)self setLoggingSupport:v19];

    loggingSupport2 = [(DMCEnrollmentFlowController *)self loggingSupport];
    [loggingSupport2 enableDebugLoggingForEnrollment];
  }

  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __144__DMCEnrollmentFlowController_continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults_serviceURL_bearerToken_profileData_completionHandler___block_invoke;
  v23[3] = &unk_278EE3120;
  v23[4] = self;
  [workerQueue queueBlock:v23];

  _ORGO_MACBuddy_secondPartSteps = [(DMCEnrollmentFlowController *)self _ORGO_MACBuddy_secondPartSteps];
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ORGO_MACBuddy_secondPartSteps];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __144__DMCEnrollmentFlowController_continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults_serviceURL_bearerToken_profileData_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stepQueue];
  [v1 removeAllObjects];
}

- (void)reauthBYODEnrollmentFlowRestartIfFail:(BOOL)fail rmAccountIdentifier:(id)identifier completionHandler:(id)handler
{
  failCopy = fail;
  v26[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_DEFAULT, "Re-authenticate BYOD", buf, 2u);
  }

  [(DMCEnrollmentFlowController *)self setCleanupIfFail:0];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v12 = [defaultStore dmc_remoteManagementAccountForIdentifier:identifierCopy];

  if (v12)
  {
    dmc_bearerReauthURL = [v12 dmc_bearerReauthURL];
    if (dmc_bearerReauthURL)
    {
      dmc_bearerReauthParams = [v12 dmc_bearerReauthParams];
      if (!dmc_bearerReauthParams)
      {
        v15 = *DMCLogObjects();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEBUG, "Synthesizing re-authenticate parameters", buf, 2u);
        }

        v25[0] = *MEMORY[0x277D245B8];
        authenticationMethod = [MEMORY[0x277D24620] authenticationMethod];
        v25[1] = *MEMORY[0x277D245D0];
        v26[0] = authenticationMethod;
        v26[1] = dmc_bearerReauthURL;
        dmc_bearerReauthParams = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
      }

      [(DMCEnrollmentFlowController *)self setEnrollmentType:4];
      -[DMCEnrollmentFlowController setEnrollmentMethod:](self, "setEnrollmentMethod:", [v12 dmc_enrollmentMethod]);
      [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:handlerCopy];
      dmc_personaIdentifier = [v12 dmc_personaIdentifier];
      [(DMCEnrollmentFlowController *)self setPersonaID:dmc_personaIdentifier];

      [(DMCEnrollmentFlowController *)self setRmAccountIdentifier:identifierCopy];
      [(DMCEnrollmentFlowController *)self setRestartIfFail:failCopy];
      [(DMCEnrollmentFlowController *)self setAuthParams:dmc_bearerReauthParams];
      dmc_signInUserIdentifier = [v12 dmc_signInUserIdentifier];
      [(DMCEnrollmentFlowController *)self setUsername:dmc_signInUserIdentifier];

      [(DMCEnrollmentFlowController *)self setNoCompletionScene:1];
      workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __107__DMCEnrollmentFlowController_reauthBYODEnrollmentFlowRestartIfFail_rmAccountIdentifier_completionHandler___block_invoke;
      v23[3] = &unk_278EE3120;
      v23[4] = self;
      [workerQueue queueBlock:v23];

      _ADxE_reauthSteps = [(DMCEnrollmentFlowController *)self _ADxE_reauthSteps];
      [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADxE_reauthSteps];

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    }

    else
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_ERROR, "Failed: RM account not set to re-authenticate", buf, 2u);
      }

      dmc_bearerReauthParams = +[DMCEnrollmentFlowController _createMissingRMAccountError];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, dmc_bearerReauthParams);
    }
  }

  else
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_ERROR, "Failed: missing RM account to re-authenticate", buf, 2u);
    }

    dmc_bearerReauthURL = +[DMCEnrollmentFlowController _createMissingRMAccountError];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, dmc_bearerReauthURL);
  }
}

void __107__DMCEnrollmentFlowController_reauthBYODEnrollmentFlowRestartIfFail_rmAccountIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stepQueue];
  [v1 removeAllObjects];
}

- (void)updateMDMUserEnrollmentWithManagedAppleID:(id)d profileIdentifier:(id)identifier organizationName:(id)name personaID:(id)iD completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  handlerCopy = handler;
  nameCopy = name;
  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    v19 = dCopy;
    v20 = 2114;
    v21 = identifierCopy;
    v22 = 2114;
    v23 = iDCopy;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Update MDM User Enrollment managedAppleID: %{public}@, profileIdentifier: %{public}@, personaID: %{public}@", &v18, 0x20u);
  }

  [(DMCEnrollmentFlowController *)self setEnrollmentType:6];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:4];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:handlerCopy];

  [(DMCEnrollmentFlowController *)self setRestartIfFail:0];
  [(DMCEnrollmentFlowController *)self setManagedAppleID:dCopy];
  [(DMCEnrollmentFlowController *)self setProfileIdentifier:identifierCopy];
  [(DMCEnrollmentFlowController *)self setOrganizationName:nameCopy];

  [(DMCEnrollmentFlowController *)self setPersonaID:iDCopy];
  [(DMCEnrollmentFlowController *)self _resetToInitialSteps];
  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)updateSharediPadUserChannelWithManagedAppleID:(id)d profileIdentifier:(id)identifier organizationName:(id)name enrollmentURL:(id)l completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  lCopy = l;
  handlerCopy = handler;
  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = dCopy;
    v20 = 2114;
    v21 = identifierCopy;
    v22 = 2114;
    v23 = nameCopy;
    v24 = 2114;
    v25 = lCopy;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Update Shared iPad User Channel managedAppleID: %{public}@, profileIdentifier: %{public}@, organizationName: %{public}@, enrollmentURL: %{public}@", &v18, 0x2Au);
  }

  [(DMCEnrollmentFlowController *)self setEnrollmentType:7];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:3];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:handlerCopy];

  [(DMCEnrollmentFlowController *)self setRestartIfFail:0];
  [(DMCEnrollmentFlowController *)self setManagedAppleID:dCopy];
  [(DMCEnrollmentFlowController *)self setProfileIdentifier:identifierCopy];
  [(DMCEnrollmentFlowController *)self setOrganizationName:nameCopy];
  [(DMCEnrollmentFlowController *)self setEnrollmentURL:lCopy];
  [(DMCEnrollmentFlowController *)self _resetToInitialSteps];
  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_startEnrollmentFlowWithType:(unint64_t)type anchorCertificates:(id)certificates restartIfFail:(BOOL)fail completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  handlerCopy = handler;
  [(DMCEnrollmentFlowController *)self setEnrollmentType:type];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:handlerCopy];
  if (type - 1 >= 6 && type - 8 > 1)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = type;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Failed: %lu feature is not supported", location, 0xCu);
    }

    v13 = +[DMCEnrollmentFlowController _createUnsupportedFeatureError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v13 canceled:0];
  }

  else
  {
    objc_initWeak(location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __111__DMCEnrollmentFlowController__startEnrollmentFlowWithType_anchorCertificates_restartIfFail_completionHandler___block_invoke;
    v14[3] = &unk_278EE3148;
    objc_copyWeak(v16, location);
    v16[1] = type;
    failCopy = fail;
    v15 = certificatesCopy;
    [(DMCEnrollmentFlowController *)self _enrollmentTypeAuthorizedBySDP:type completion:v14];

    objc_destroyWeak(v16);
    objc_destroyWeak(location);
  }
}

void __111__DMCEnrollmentFlowController__startEnrollmentFlowWithType_anchorCertificates_restartIfFail_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 48);
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Failed: %lu feature is not supported while SDP is unauthorized", &v10, 0xCu);
      }

      v8 = [objc_opt_class() _createEnrollmentNotAllowedDuringSDPError];
      [v5 _flowTerminatedWithError:v8 canceled:1];
    }

    else
    {
      [WeakRetained setRestartIfFail:*(a1 + 56)];
      v9 = certificatesFromDERCertificateDataArray();
      [v5 setAnchorCertificateRefs:v9];

      [v5 _resetToInitialSteps];
      [v5 _pollNextStep];
    }
  }
}

- (void)_workerQueue_performFlowStep:(unint64_t)step
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = [(DMCEnrollmentFlowController *)self _nameForStep:?];
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v75 = v5;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Will perform enrollment step: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    currentPersonaID = [MEMORY[0x277D03550] currentPersonaID];
    currentPersonaTypeString = [MEMORY[0x277D03550] currentPersonaTypeString];
    *buf = 136315906;
    v75 = "[DMCEnrollmentFlowController _workerQueue_performFlowStep:]";
    v76 = 1024;
    v77 = 420;
    v78 = 2114;
    v79 = currentPersonaID;
    v80 = 2114;
    v81 = currentPersonaTypeString;
    _os_log_impl(&dword_247E39000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  delegate = [(DMCEnrollmentFlowController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(DMCEnrollmentFlowController *)self delegate];
    [delegate2 enrollmentFlowController:self performingEnrollmentStepWithName:v5 status:0];
  }

  [(DMCEnrollmentFlowControllerBase *)self setCurrentStep:step];
  _stepsWithUI = [(DMCEnrollmentFlowController *)self _stepsWithUI];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v14 = [_stepsWithUI containsObject:v13];

  if (v14)
  {
    [(DMCEnrollmentFlowController *)self setHasExecutedUIStep:1];
  }

  _postEnrollmentSteps = [(DMCEnrollmentFlowController *)self _postEnrollmentSteps];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v17 = [_postEnrollmentSteps containsObject:v16];

  if (v17)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "The core part of the enrollment flow is done. Cleaning up disk values...", buf, 2u);
    }

    [(DMCEnrollmentFlowController *)self _workerQueue_stopMonitorAndEmptyDiskValues];
  }

  switch(step)
  {
    case 0uLL:
      [(DMCEnrollmentFlowController *)self _preflightEnrollmentWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] isRenewalFlow:[(DMCEnrollmentFlowController *)self isRenewalFlow] isPostRestoration:[(DMCEnrollmentFlowController *)self isPostRestoration] isPostBuddy:[(DMCEnrollmentFlowController *)self isPostBuddy]];
      goto LABEL_82;
    case 1uLL:
      username = [(DMCEnrollmentFlowController *)self username];
      [(DMCEnrollmentFlowController *)self _askForUsernameWithDefaultUsername:username];
      goto LABEL_81;
    case 2uLL:
      username = [(DMCEnrollmentFlowController *)self username];
      [(DMCEnrollmentFlowController *)self _fetchServerInformationWithUsername:username];
      goto LABEL_81;
    case 3uLL:
      username = [(DMCEnrollmentFlowController *)self servers];
      [(DMCEnrollmentFlowController *)self _chooseEnrollmentTypeWithAvailableServers:username serverInformationSource:[(DMCEnrollmentFlowController *)self serverInformationSource]];
      goto LABEL_81;
    case 4uLL:
      username = [(DMCEnrollmentFlowController *)self serviceURL];
      enrollmentType = [(DMCEnrollmentFlowController *)self enrollmentType];
      isPostBuddy = [(DMCEnrollmentFlowController *)self isPostBuddy];
      essoDetails2 = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:0 isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      anchorCertificateRefs = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _detectAuthTypeWithServiceURL:username enrollmentType:enrollmentType isPostBuddy:isPostBuddy machineInfo:essoDetails2 anchorCertificateRefs:anchorCertificateRefs];

      goto LABEL_64;
    case 5uLL:
      username = [(DMCEnrollmentFlowController *)self essoDetails];
      [(DMCEnrollmentFlowController *)self _analyzeESSODetails:username];
      goto LABEL_81;
    case 6uLL:
      username = [(DMCEnrollmentFlowController *)self essoDetails];
      iTunesStoreID = [username iTunesStoreID];
      essoDetails = [(DMCEnrollmentFlowController *)self essoDetails];
      appIDs = [essoDetails appIDs];
      personaID = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _installEnterpriseApplication:iTunesStoreID debuggingAppIDs:appIDs personaID:personaID];
      goto LABEL_77;
    case 7uLL:
    case 0x1CuLL:
      username = [(DMCEnrollmentFlowController *)self appBundleID];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self essoDetails];
      essoDetails = [(DMCEnrollmentFlowController *)self organizationName];
      appIDs = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _manageApplicationWithAppBundleID:username essoDetails:iTunesStoreID organization:essoDetails personaID:appIDs];
      goto LABEL_78;
    case 8uLL:
      username = [(DMCEnrollmentFlowController *)self essoDetails];
      iTunesStoreID = [username configurationProfile];
      essoDetails = [(DMCEnrollmentFlowController *)self essoDetails];
      appIDs = [essoDetails declarations];
      personaID = [(DMCEnrollmentFlowController *)self devicePasscode];
      devicePasscodeContext = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      devicePasscodeExtractable = [(DMCEnrollmentFlowController *)self devicePasscodeExtractable];
      personaID2 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _installESSOConfigurationWithProfileData:iTunesStoreID declarations:appIDs devicePasscode:personaID devicePasscodeContext:devicePasscodeContext passcodeContextExtractable:devicePasscodeExtractable personaID:personaID2];

      goto LABEL_77;
    case 9uLL:
      username = [(DMCEnrollmentFlowController *)self extensionIdentifiersFromConfig];
      [(DMCEnrollmentFlowController *)self _awaitESSOConfigActivationWithExtensionIdentifiers:username];
      goto LABEL_81;
    case 0xAuLL:
      username = [(DMCEnrollmentFlowController *)self authParams];
      enrollmentMethod = [(DMCEnrollmentFlowController *)self enrollmentMethod];
      username2 = [(DMCEnrollmentFlowController *)self username];
      [(DMCEnrollmentFlowController *)self _processAuthServicesWithAuthParams:username enrollmentMethod:enrollmentMethod username:username2];
      goto LABEL_48;
    case 0xBuLL:
      [(DMCEnrollmentFlowController *)self _askForPasscodeIfNeededWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType]];
      goto LABEL_82;
    case 0xCuLL:
      username = [(DMCEnrollmentFlowController *)self devicePasscode];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      [(DMCEnrollmentFlowController *)self _createEnterprisePersonaWithDevicePasscode:username devicePasscodeContext:iTunesStoreID];
      goto LABEL_80;
    case 0xDuLL:
      username = [(DMCEnrollmentFlowController *)self managedAppleID];
      enrollmentType2 = [(DMCEnrollmentFlowController *)self enrollmentType];
      username2 = [(DMCEnrollmentFlowController *)self personaID];
      LOBYTE(v68) = [(DMCEnrollmentFlowController *)self isRenewalFlow];
      selfCopy2 = self;
      v41 = username;
      v42 = enrollmentType2;
      v43 = username2;
      v44 = 0;
      goto LABEL_42;
    case 0xEuLL:
      username = [(DMCEnrollmentFlowController *)self managedAppleID];
      enrollmentType3 = [(DMCEnrollmentFlowController *)self enrollmentType];
      username2 = [(DMCEnrollmentFlowController *)self personaID];
      LOBYTE(v68) = [(DMCEnrollmentFlowController *)self isRenewalFlow];
      selfCopy2 = self;
      v41 = username;
      v42 = enrollmentType3;
      v43 = username2;
      v44 = 1;
LABEL_42:
      [(DMCEnrollmentFlowController *)selfCopy2 _authenticateMAID:v41 authenticationResults:0 enrollmentType:v42 personaID:v43 ephemeral:v44 silent:0 isRenewalFlow:v68];
      goto LABEL_48;
    case 0xFuLL:
      username = [(DMCEnrollmentFlowController *)self managedAppleID];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self authenticationResults];
      enrollmentType4 = [(DMCEnrollmentFlowController *)self enrollmentType];
      personaID3 = [(DMCEnrollmentFlowController *)self personaID];
      LOBYTE(v68) = [(DMCEnrollmentFlowController *)self isRenewalFlow];
      [(DMCEnrollmentFlowController *)self _authenticateMAID:username authenticationResults:iTunesStoreID enrollmentType:enrollmentType4 personaID:personaID3 ephemeral:0 silent:1 isRenewalFlow:v68];
      goto LABEL_26;
    case 0x10uLL:
      username = [(DMCEnrollmentFlowController *)self authenticationResults];
      enrollmentType5 = [(DMCEnrollmentFlowController *)self enrollmentType];
      username2 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _signInMAIDWithAuthenticationResult:username enrollmentType:enrollmentType5 personaID:username2 isRenewalFlow:[(DMCEnrollmentFlowController *)self isRenewalFlow]];
LABEL_48:

      goto LABEL_81;
    case 0x11uLL:
      username = [(DMCEnrollmentFlowController *)self username];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self managedAppleID];
      essoDetails = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      [(DMCEnrollmentFlowController *)self _createRMAccountIfNeededWithSignInUserIdentifier:username assignedMAID:iTunesStoreID existingRMAccountID:essoDetails enrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isRenewalFlow:[(DMCEnrollmentFlowController *)self isRenewalFlow]];
      goto LABEL_79;
    case 0x12uLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self authParams];
      essoDetails = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _exchangeMAIDForBearerTokenWithRMAccountIdentifier:username authParams:iTunesStoreID anchorCertificateRefs:essoDetails];
      goto LABEL_79;
    case 0x13uLL:
      username = [(DMCEnrollmentFlowController *)self serviceURL];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self authTokens];
      essoDetails = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      appIDs = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _fetchEnrollmentProfileFromServiceURL:username authTokens:iTunesStoreID machineInfo:essoDetails anchorCertificateRefs:appIDs enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
      goto LABEL_78;
    case 0x14uLL:
      username = [(DMCEnrollmentFlowController *)self profileData];
      enrollmentType6 = [(DMCEnrollmentFlowController *)self enrollmentType];
      enrollmentMethod2 = [(DMCEnrollmentFlowController *)self enrollmentMethod];
      essoDetails2 = [(DMCEnrollmentFlowController *)self essoDetails];
      essoAppITunesStoreID = [(DMCEnrollmentFlowController *)self essoAppITunesStoreID];
      [(DMCEnrollmentFlowController *)self _analyzeProfileData:username enrollmentType:enrollmentType6 enrollmentMethod:enrollmentMethod2 isESSO:essoDetails2 != 0 essoAppITunesStoreID:essoAppITunesStoreID isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];

      goto LABEL_64;
    case 0x15uLL:
      username = [(DMCEnrollmentFlowController *)self profileData];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self managedAppleID];
      essoDetails = [(DMCEnrollmentFlowController *)self cloudConfig];
      [(DMCEnrollmentFlowController *)self _askForUserConsentWithProfileData:username managedAppleID:iTunesStoreID cloudConfig:essoDetails isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] enrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType]];
      goto LABEL_79;
    case 0x16uLL:
      username = [(DMCEnrollmentFlowController *)self profileData];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self managedAppleID];
      [(DMCEnrollmentFlowController *)self _displayManagementDetailsOverviewWithProfileData:username managedAppleID:iTunesStoreID];
      goto LABEL_80;
    case 0x17uLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self authenticationResults];
      [(DMCEnrollmentFlowController *)self _updateRMAccountWithIdentifier:username authenticationResults:iTunesStoreID enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod]];
      goto LABEL_80;
    case 0x18uLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self authTokens];
      essoDetails = [(DMCEnrollmentFlowController *)self profileIdentifier];
      appIDs = [(DMCEnrollmentFlowController *)self organizationName];
      personaID = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _updateRMAccountWithIdentifier:username authTokens:iTunesStoreID profileIdentifier:essoDetails organizationName:appIDs personaID:personaID enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod]];
      goto LABEL_77;
    case 0x19uLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self authTokens];
      essoDetails = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _updateRMAccountWithIdentifier:username authTokens:iTunesStoreID personaID:essoDetails];
      goto LABEL_79;
    case 0x1AuLL:
      username = [(DMCEnrollmentFlowController *)self altDSID];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      isProfileLocked = [(DMCEnrollmentFlowController *)self isProfileLocked];
      personaID3 = [(DMCEnrollmentFlowController *)self organizationName];
      friendlyName = [(DMCEnrollmentFlowController *)self friendlyName];
      personaID4 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _correlateMAIDWithAltDSID:username withRMAccount:iTunesStoreID isProfileLocked:isProfileLocked organizationName:personaID3 friendlyName:friendlyName personaID:personaID4];

LABEL_26:
      goto LABEL_80;
    case 0x1BuLL:
      profileData = [(DMCEnrollmentFlowController *)self profileData];
      devicePasscode = [(DMCEnrollmentFlowController *)self devicePasscode];
      devicePasscodeContext2 = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      devicePasscodeExtractable2 = [(DMCEnrollmentFlowController *)self devicePasscodeExtractable];
      personaID5 = [(DMCEnrollmentFlowController *)self personaID];
      rmAccountIdentifier = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      essoDetails3 = [(DMCEnrollmentFlowController *)self essoDetails];
      essoAppITunesStoreID2 = [(DMCEnrollmentFlowController *)self essoAppITunesStoreID];
      eSSOConfigurationProfileIdentifier = [(DMCEnrollmentFlowController *)self ESSOConfigurationProfileIdentifier];
      wifiProfileIdentifier = [(DMCEnrollmentFlowController *)self wifiProfileIdentifier];
      enrollmentType7 = [(DMCEnrollmentFlowController *)self enrollmentType];
      LOBYTE(v69) = [(DMCEnrollmentFlowController *)self isDoingReturnToService];
      LOBYTE(v68) = essoDetails3 != 0;
      [(DMCEnrollmentFlowController *)self _installEnrollmentProfile:profileData devicePasscode:devicePasscode devicePasscodeContext:devicePasscodeContext2 passcodeContextExtractable:devicePasscodeExtractable2 personaID:personaID5 rmAccountIdentifier:rmAccountIdentifier isESSO:v68 essoAppITunesStoreID:essoAppITunesStoreID2 essoConfigurationProfile:eSSOConfigurationProfileIdentifier wifiProfileIdentifier:wifiProfileIdentifier enrollmentType:enrollmentType7 isReturnToService:v69];

      goto LABEL_82;
    case 0x1DuLL:
      username = [(DMCEnrollmentFlowController *)self essoDetails];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      essoDetails = [(DMCEnrollmentFlowController *)self profileIdentifier];
      [(DMCEnrollmentFlowController *)self _linkESSOStore:username rmAccountIdentifier:iTunesStoreID profileIdentifier:essoDetails];
      goto LABEL_79;
    case 0x1EuLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self managedAppleID];
      essoDetails = [(DMCEnrollmentFlowController *)self profileIdentifier];
      appIDs = [(DMCEnrollmentFlowController *)self organizationName];
      personaID = [(DMCEnrollmentFlowController *)self personaID];
      selfCopy4 = self;
      v31 = username;
      v32 = iTunesStoreID;
      v33 = essoDetails;
      v34 = appIDs;
      v35 = 0;
      v36 = personaID;
      goto LABEL_58;
    case 0x1FuLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      [(DMCEnrollmentFlowController *)self _reauthenticationCompleteWithRMIdentifier:username];
      goto LABEL_81;
    case 0x20uLL:
      username = [(DMCEnrollmentFlowController *)self altDSID];
      [(DMCEnrollmentFlowController *)self _promoteiCloudWithAltDSID:username];
      goto LABEL_81;
    case 0x21uLL:
      [(DMCEnrollmentFlowController *)self _requestiCloudSignInConfirmation];
      goto LABEL_82;
    case 0x22uLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self managedAppleID];
      essoDetails = [(DMCEnrollmentFlowController *)self profileIdentifier];
      appIDs = [(DMCEnrollmentFlowController *)self organizationName];
      personaID = [(DMCEnrollmentFlowController *)self enrollmentURL];
      selfCopy4 = self;
      v31 = username;
      v32 = iTunesStoreID;
      v33 = essoDetails;
      v34 = appIDs;
      v35 = personaID;
      v36 = 0;
LABEL_58:
      [(DMCEnrollmentFlowController *)selfCopy4 _updateAccountsWithRMIdentifier:v31 managedAppleID:v32 profileIdentifier:v33 organizationName:v34 enrollmentURL:v35 personaID:v36];
      goto LABEL_77;
    case 0x23uLL:
      username = [(DMCEnrollmentFlowController *)self managedAppleID];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _askForRestoreChoiceWithMAID:username personaID:iTunesStoreID];
      goto LABEL_80;
    case 0x24uLL:
      [(DMCEnrollmentFlowController *)self _restoreSetAsideProfiles];
      goto LABEL_82;
    case 0x25uLL:
      [(DMCEnrollmentFlowController *)self _fetchCloudConfigWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
      goto LABEL_82;
    case 0x26uLL:
      username = [(DMCEnrollmentFlowController *)self cloudConfig];
      [(DMCEnrollmentFlowController *)self _storeCloudConfig:username];
      goto LABEL_81;
    case 0x27uLL:
      username = [(DMCEnrollmentFlowController *)self cloudConfig];
      enrollmentType8 = [(DMCEnrollmentFlowController *)self enrollmentType];
      isDoingReturnToService = [(DMCEnrollmentFlowController *)self isDoingReturnToService];
      essoDetails2 = [(DMCEnrollmentFlowController *)self obliterationShelter];
      [(DMCEnrollmentFlowController *)self _analyzeCloudConfig:username enrollmentType:enrollmentType8 isDoingReturnToService:isDoingReturnToService obliterationShelter:essoDetails2];
LABEL_64:

      goto LABEL_81;
    case 0x28uLL:
      username = [(DMCEnrollmentFlowController *)self credentialsError];
      [(DMCEnrollmentFlowController *)self _askForMDMUsernameAndCredentialWithError:username];
      goto LABEL_81;
    case 0x29uLL:
      username = [(DMCEnrollmentFlowController *)self serviceURL];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self username];
      essoDetails = [(DMCEnrollmentFlowController *)self password];
      appIDs = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      personaID = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _fetchEnrollmentProfileFromServiceURL:username username:iTunesStoreID password:essoDetails machineInfo:appIDs anchorCertificateRefs:personaID];
      goto LABEL_77;
    case 0x2AuLL:
      v60 = MEMORY[0x277CBEBC0];
      username = [(DMCEnrollmentFlowController *)self cloudConfig];
      iTunesStoreID = [username objectForKeyedSubscript:*MEMORY[0x277D03048]];
      essoDetails = [v60 URLWithString:iTunesStoreID];
      appIDs = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      personaID = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _fetchEnrollmentProfileFromWebURL:essoDetails machineInfo:appIDs anchorCertificateRefs:personaID isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
      goto LABEL_77;
    case 0x2BuLL:
      [(DMCEnrollmentFlowController *)self _waitForDeviceConfiguration];
      goto LABEL_82;
    case 0x2CuLL:
      username = [(DMCEnrollmentFlowController *)self softwareUpdateInfo];
      [(DMCEnrollmentFlowController *)self _promptForSoftwareUpdateWithSoftwareUpdateInfo:username];
      goto LABEL_81;
    case 0x2DuLL:
      if ([(DMCEnrollmentFlowController *)self isDoingReturnToService])
      {
        username = [(DMCEnrollmentFlowController *)self obliterationShelter];
        iTunesStoreID = [username wifiProfileData];
        [(DMCEnrollmentFlowController *)self _ensureWiFiConnectionWithWiFiProfile:iTunesStoreID];
LABEL_80:

LABEL_81:
      }

      else
      {
        [(DMCEnrollmentFlowController *)self _ensureWiFiConnectionWithWiFiProfile:0];
      }

LABEL_82:

      return;
    case 0x2EuLL:
      username = [(DMCEnrollmentFlowController *)self obliterationShelter];
      iTunesStoreID = [username languageStrings];
      essoDetails = [iTunesStoreID firstObject];
      appIDs = [(DMCEnrollmentFlowController *)self obliterationShelter];
      personaID = [appIDs localeString];
      [(DMCEnrollmentFlowController *)self _restoreLanguage:essoDetails locale:personaID];
LABEL_77:

LABEL_78:
LABEL_79:

      goto LABEL_80;
    case 0x2FuLL:
      username = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      [(DMCEnrollmentFlowController *)self _updateCloudConfigWithRMAccountIdentifier:username];
      goto LABEL_81;
    case 0x30uLL:
      [(DMCEnrollmentFlowController *)self _ensureDeviceActivation];
      goto LABEL_82;
    case 0x31uLL:
      [(DMCEnrollmentFlowController *)self _initiateDEPPushTokenSync];
      goto LABEL_82;
    case 0x32uLL:
      enrollmentType9 = [(DMCEnrollmentFlowController *)self enrollmentType];
      cloudConfig = [(DMCEnrollmentFlowController *)self cloudConfig];
      [(DMCEnrollmentFlowController *)self _processPotentialMigrationIfNeededWithEnrollmentType:enrollmentType9 cloudConfig:cloudConfig];

      goto LABEL_82;
    case 0x33uLL:
      username = [(DMCEnrollmentFlowController *)self profileIdentifier];
      [(DMCEnrollmentFlowController *)self _awaitDDMAppConfigurationWithProfileIdentifier:username];
      goto LABEL_81;
    case 0x34uLL:
      [(DMCEnrollmentFlowController *)self _awaitApplicationInstallation];
      goto LABEL_82;
    case 0x35uLL:
      [(DMCEnrollmentFlowController *)self _cleanupOrphanedAppsIfNeededIsDoingRRTS:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      goto LABEL_82;
    case 0x36uLL:
      [(DMCEnrollmentFlowController *)self _takeSnapshot];
      goto LABEL_82;
    case 0x37uLL:
      username = [(DMCEnrollmentFlowController *)self devicePasscode];
      iTunesStoreID = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      [(DMCEnrollmentFlowController *)self _createAndSyncBootstrapTokenWithDevicePasscode:username devicePasscodeContext:iTunesStoreID];
      goto LABEL_80;
    case 0x38uLL:
      [(DMCEnrollmentFlowController *)self _blockMDMCommands];
      goto LABEL_82;
    case 0x39uLL:
      [(DMCEnrollmentFlowController *)self _unblockMDMCommandsIfNeededHasBlocked:[(DMCEnrollmentFlowController *)self hasBlockedMDMCommands]];
      goto LABEL_82;
    case 0x3AuLL:
      [(DMCEnrollmentFlowController *)self _checkForUpdateFromFactoryVersion];
      goto LABEL_82;
    default:
      goto LABEL_82;
  }
}

- (void)_resetToInitialSteps
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentFlowController;
  [(DMCEnrollmentFlowControllerBase *)&v4 _resetToInitialSteps];
  v3 = [(DMCEnrollmentFlowController *)self _commonStepsForEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v3];
}

- (void)_workerQueue_stopMonitorAndEmptyDiskValues
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Clean up local stored stuffs", v7, 2u);
  }

  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [managedConfigurationHelper2 stopEnrollmentFlowMonitor];
  }

  [(DMCEnrollmentFlowController *)self _writeDirtyStateToDisk:0];
}

- (void)_workerQueue_flowCompleted
{
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "Enrollment flow completed!", v11, 2u);
  }

  v5 = NSStringFromSelector(a2);
  [(DMCEnrollmentFlowController *)self _unblockAppInstallsIfNecessaryWithCaller:v5];

  if ([(DMCEnrollmentFlowController *)self hasEnabledPushWake])
  {
    [(DMCEnrollmentFlowController *)self _disablePushWake];
  }

  [(DMCEnrollmentFlowController *)self _workerQueue_stopMonitorAndEmptyDiskValues];
  [(DMCEnrollmentFlowController *)self _workerQueue_cleanupCachedValues];
  if (![(DMCEnrollmentFlowController *)self noCompletionScene])
  {
    presenter = [(DMCEnrollmentFlowController *)self presenter];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      presenter2 = [(DMCEnrollmentFlowController *)self presenter];
      [presenter2 showEnrollmentCompletionScene];
    }
  }

  enrollmentCompletionHandler = [(DMCEnrollmentFlowController *)self enrollmentCompletionHandler];

  if (enrollmentCompletionHandler)
  {
    enrollmentCompletionHandler2 = [(DMCEnrollmentFlowController *)self enrollmentCompletionHandler];
    enrollmentCompletionHandler2[2](enrollmentCompletionHandler2, 1, 0, 0);

    [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:0];
  }
}

- (void)_flowTerminatedWithError:(id)error canceled:(BOOL)canceled
{
  errorCopy = error;
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__DMCEnrollmentFlowController__flowTerminatedWithError_canceled___block_invoke;
  v10[3] = &unk_278EE3170;
  canceledCopy = canceled;
  v11 = errorCopy;
  selfCopy = self;
  v13 = a2;
  v9 = errorCopy;
  [workerQueue queueBlock:v10];
}

void __65__DMCEnrollmentFlowController__flowTerminatedWithError_canceled___block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v25 = 138543618;
    v26 = v4;
    v27 = 1024;
    v28 = v5;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Enrollment flow terminated with error: %{public}@, canceled: %d", &v25, 0x12u);
  }

  if ([*(a1 + 40) hasExecutedUIStep] && *(a1 + 32))
  {
    v6 = [*(a1 + 40) restartIfFail];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = NSStringFromSelector(*(a1 + 48));
  [v7 _unblockAppInstallsIfNecessaryWithCaller:v8];

  if ([*(a1 + 40) hasBlockedMDMCommands])
  {
    [*(a1 + 40) _unblockMDMCommands];
  }

  if ([*(a1 + 40) hasEnabledPushWake])
  {
    [*(a1 + 40) _disablePushWake];
  }

  v9 = [*(a1 + 40) cleanupIfFail];
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = [*(a1 + 40) dirtyState];
    [v10 _cleanupDirtyState:v11];
  }

  else
  {
    [*(a1 + 40) _writeDirtyStateToDisk:0];
  }

  if ([*(a1 + 40) isDoingReturnToService])
  {
    v12 = [*(a1 + 40) obliterationShelter];
    [v12 clear];
  }

  [*(a1 + 40) _workerQueue_cleanupCachedValues];
  v13 = [*(a1 + 40) managedConfigurationHelper];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [*(a1 + 40) managedConfigurationHelper];
    [v15 stopEnrollmentFlowMonitor];
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      v16 = [*(a1 + 40) presenter];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v18 = [*(a1 + 40) _convertErrorToHumanReadableError:*(a1 + 32)];
        v19 = [*(a1 + 40) presenter];
        [v19 showEnrollmentFailure:v18];
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    v20 = [*(a1 + 40) presenter];
    if (objc_opt_respondsToSelector())
    {
      v21 = [*(a1 + 40) noCompletionScene];

      if (v21)
      {
        goto LABEL_27;
      }

      v20 = [*(a1 + 40) presenter];
      [v20 dismissEnrollmentScene];
    }
  }

LABEL_27:
  v22 = *(a1 + 40);
  if (v6)
  {
    [v22 _resetToInitialSteps];
    [*(a1 + 40) _pollNextStep];
  }

  else
  {
    v23 = [v22 enrollmentCompletionHandler];

    if (v23)
    {
      v24 = [*(a1 + 40) enrollmentCompletionHandler];
      v24[2](v24, 0, *(a1 + 56), *(a1 + 32));

      [*(a1 + 40) setEnrollmentCompletionHandler:0];
    }
  }
}

- (void)_cleanupDirtyState:(id)state
{
  v87 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_INFO, "Cleaning up dirty state...", buf, 2u);
  }

  selfCopy = self;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  dirtyPersonaIDs = [stateCopy dirtyPersonaIDs];
  v7 = [dirtyPersonaIDs countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v75;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v75 != v10)
        {
          objc_enumerationMutation(dirtyPersonaIDs);
        }

        v12 = *(*(&v74 + 1) + 8 * i);
        v13 = *DMCLogObjects();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v79 = v12;
          _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Removing dirty persona %{public}@...", buf, 0xCu);
        }

        v73 = 0;
        [MEMORY[0x277D03550] removePersona:v12 error:&v73];
        v14 = v73;
        if (!v14)
        {
          [stateCopy removeDirtyPersonaID:v12];
          v9 = 1;
        }
      }

      v8 = [dirtyPersonaIDs countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  dirtyProfileIdentifiers = [stateCopy dirtyProfileIdentifiers];
  v16 = [dirtyProfileIdentifiers countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v70;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(dirtyProfileIdentifiers);
        }

        v20 = *(*(&v69 + 1) + 8 * j);
        v21 = *DMCLogObjects();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v79 = v20;
          _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_DEFAULT, "Uninstalling MDM profile %{public}@...", buf, 0xCu);
        }

        managedConfigurationHelper = [(DMCEnrollmentFlowController *)selfCopy managedConfigurationHelper];
        [managedConfigurationHelper removeProfileWithIdentifier:v20 async:1];

        [stateCopy removeDirtyProfileIdentifier:v20];
      }

      v17 = [dirtyProfileIdentifiers countByEnumeratingWithState:&v69 objects:v85 count:16];
    }

    while (v17);
    v9 = 1;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  dirtyAltDISDs = [stateCopy dirtyAltDISDs];
  v24 = [dirtyAltDISDs countByEnumeratingWithState:&v65 objects:v84 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v66;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v66 != v26)
        {
          objc_enumerationMutation(dirtyAltDISDs);
        }

        v28 = *(*(&v65 + 1) + 8 * k);
        v29 = *DMCLogObjects();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v79 = v28;
          _os_log_impl(&dword_247E39000, v29, OS_LOG_TYPE_DEFAULT, "Cleaning up dirty account with altDSID %{public}@...", buf, 0xCu);
        }

        defaultStore = [MEMORY[0x277CB8F48] defaultStore];
        [defaultStore dmc_removeMAIDRelatedAccountsWithAltDSID:v28 asynchronous:1];

        [stateCopy removeDirtyAltDSID:v28];
      }

      v25 = [dirtyAltDISDs countByEnumeratingWithState:&v65 objects:v84 count:16];
    }

    while (v25);
    v9 = 1;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  dirtyRMAccounts = [stateCopy dirtyRMAccounts];
  v32 = [dirtyRMAccounts countByEnumeratingWithState:&v61 objects:v83 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v62;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v62 != v34)
        {
          objc_enumerationMutation(dirtyRMAccounts);
        }

        v36 = *(*(&v61 + 1) + 8 * m);
        v37 = *DMCLogObjects();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v79 = v36;
          _os_log_impl(&dword_247E39000, v37, OS_LOG_TYPE_DEFAULT, "Cleaning up RM account with identifier %{public}@...", buf, 0xCu);
        }

        defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
        [defaultStore2 dmc_removeAccountWithIdentifier:v36 asynchronous:1];

        [stateCopy removeDirtyRMAccount:v36];
      }

      v33 = [dirtyRMAccounts countByEnumeratingWithState:&v61 objects:v83 count:16];
    }

    while (v33);
    v9 = 1;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [stateCopy dirtyBundleIDs];
  v39 = [obj countByEnumeratingWithState:&v57 objects:v82 count:16];
  if (v39)
  {
    v41 = v39;
    v42 = *v58;
    *&v40 = 138543618;
    v54 = v40;
    do
    {
      for (n = 0; n != v41; ++n)
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v57 + 1) + 8 * n);
        v45 = [MEMORY[0x277D034A8] newAppIdentifierWithIdentifier:{v44, v54}];
        v46 = v45;
        if (v45)
        {
          bundleID = [v45 bundleID];
          personaID = [v46 personaID];
          v49 = *DMCLogObjects();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v54;
            v79 = bundleID;
            v80 = 2114;
            v81 = personaID;
            _os_log_impl(&dword_247E39000, v49, OS_LOG_TYPE_DEFAULT, "Cleaning up dirty application with bundle ID: %{public}@, persona ID: %{public}@...", buf, 0x16u);
          }

          managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)selfCopy managedConfigurationHelper];
          [managedConfigurationHelper2 removeApplicationWithBundleID:bundleID personaID:personaID completionHandler:0];

          [stateCopy removeDirtyBundleID:v44];
          v9 = 1;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v57 objects:v82 count:16];
    }

    while (v41);
  }

  if ([stateCopy dirtyRMStoreForErSSO])
  {
    v51 = *DMCLogObjects();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v51, OS_LOG_TYPE_DEFAULT, "Cleaning up dirty ErSSO RMStore", buf, 2u);
    }

    v52 = selfCopy;
    rmStoreHelper = [(DMCEnrollmentFlowController *)selfCopy rmStoreHelper];
    [rmStoreHelper removeErSSOStoreWithCompletionHandler:&__block_literal_global_0];

    [stateCopy clearDirtyRMStoreForErSSO];
    goto LABEL_62;
  }

  v52 = selfCopy;
  if (v9)
  {
LABEL_62:
    [(DMCEnrollmentFlowController *)v52 _writeDirtyStateToDisk:stateCopy];
  }
}

- (void)_workerQueue_cleanupCachedValues
{
  [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:0];
  [(DMCEnrollmentFlowController *)self setDevicePasscode:0];
  [(DMCEnrollmentFlowController *)self setDevicePasscodeContext:0];
  [(DMCEnrollmentFlowController *)self setDevicePasscodeExtractable:0];
  [(DMCEnrollmentFlowController *)self setManagedAppleID:0];
  [(DMCEnrollmentFlowController *)self setServiceURL:0];
  [(DMCEnrollmentFlowController *)self setServers:0];
  [(DMCEnrollmentFlowController *)self setServerInformationSource:0];
  [(DMCEnrollmentFlowController *)self setAuthTokens:0];
  [(DMCEnrollmentFlowController *)self setPersonaID:0];
  [(DMCEnrollmentFlowController *)self setAuthenticationResults:0];
  [(DMCEnrollmentFlowController *)self setAltDSID:0];
  [(DMCEnrollmentFlowController *)self setProfileData:0];
  [(DMCEnrollmentFlowController *)self setProfileIdentifier:0];
  [(DMCEnrollmentFlowController *)self setRmAccountIdentifier:0];
  [(DMCEnrollmentFlowController *)self setAnchorCertificateRefs:0];
  [(DMCEnrollmentFlowController *)self setAuthParams:0];
  [(DMCEnrollmentFlowController *)self setHasExecutedUIStep:0];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:0];
  [(DMCEnrollmentFlowController *)self setDirtyState:0];
  [(DMCEnrollmentFlowController *)self setOrganizationName:0];
  [(DMCEnrollmentFlowController *)self setFriendlyName:0];
  [(DMCEnrollmentFlowController *)self setEssoDetails:0];
  [(DMCEnrollmentFlowController *)self setAppBundleID:0];
  [(DMCEnrollmentFlowController *)self setESSOConfigurationProfileIdentifier:0];
  [(DMCEnrollmentFlowController *)self setServerCapabilities:0];
  [(DMCEnrollmentFlowController *)self setEssoAppITunesStoreID:0];
  [(DMCEnrollmentFlowController *)self setCloudConfig:0];
  [(DMCEnrollmentFlowController *)self setPassword:0];
  [(DMCEnrollmentFlowController *)self setWifiProfileIdentifier:0];
  [(DMCEnrollmentFlowController *)self setSoftwareUpdateInfo:0];
  [(DMCEnrollmentFlowController *)self setIsDoingReturnToService:0];
  [(DMCEnrollmentFlowController *)self setObliterationShelter:0];
  [(DMCEnrollmentFlowController *)self setExtensionIdentifiersFromConfig:0];
  [(DMCEnrollmentFlowController *)self setCloudConfigIndicatesRapidReturnToService:0];
  [(DMCEnrollmentFlowController *)self setHasBlockedMDMCommands:0];
  [(DMCEnrollmentFlowController *)self setHasEnabledPushWake:0];
  [(DMCEnrollmentFlowController *)self setLoggingSupport:0];

  [(DMCEnrollmentFlowController *)self setCredentialsError:0];
}

- (void)_preflightEnrollmentWithEnrollmentType:(unint64_t)type isRenewalFlow:(BOOL)flow isPostRestoration:(BOOL)restoration isPostBuddy:(BOOL)buddy
{
  restorationCopy = restoration;
  flowCopy = flow;
  v54 = *MEMORY[0x277D85DE8];
  loggingSupport = [(DMCEnrollmentFlowController *)self loggingSupport];

  if (!loggingSupport)
  {
    v12 = objc_opt_new();
    [(DMCEnrollmentFlowController *)self setLoggingSupport:v12];

    loggingSupport2 = [(DMCEnrollmentFlowController *)self loggingSupport];
    [loggingSupport2 enableDebugLoggingForEnrollment];
  }

  if (!flowCopy)
  {
    managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    if (objc_opt_respondsToSelector())
    {
      managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      isDeviceMDMEnrolled = [managedConfigurationHelper2 isDeviceMDMEnrolled];

      if (isDeviceMDMEnrolled && (buddy || ![(DMCEnrollmentFlowController *)self _canSkipMDMEnrollmentWithEnrollmentType:type]))
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "The device is enrolled in MDM already! Aborting...", buf, 2u);
        }

        v18 = MEMORY[0x277CCA9B8];
        v19 = *MEMORY[0x277D032F0];
        v20 = DMCErrorArray();
        v21 = *MEMORY[0x277D032F8];
        v22 = v18;
        v23 = v19;
        v24 = 15010;
LABEL_18:
        v31 = [v22 DMCErrorWithDomain:v23 code:v24 descriptionArray:v20 errorType:{v21, 0}];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v31 canceled:0];

        return;
      }
    }

    else
    {
    }
  }

  if (type == 4)
  {
    managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    if (objc_opt_respondsToSelector())
    {
      managedConfigurationHelper4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      isDeviceSupervised = [managedConfigurationHelper4 isDeviceSupervised];

      if (isDeviceSupervised)
      {
        v28 = *DMCLogObjects();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v28, OS_LOG_TYPE_ERROR, "Trying to start BYOD enrollment on a supervised device!", buf, 2u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277D032F0];
        v20 = DMCErrorArray();
        v21 = *MEMORY[0x277D032F8];
        v22 = v29;
        v23 = v30;
        v24 = 15012;
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  managedConfigurationHelper5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  if (objc_opt_respondsToSelector())
  {
    managedConfigurationHelper6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    isDeviceMDMEnrolled2 = [managedConfigurationHelper6 isDeviceMDMEnrolled];

    if (isDeviceMDMEnrolled2)
    {
      goto LABEL_24;
    }

    managedConfigurationHelper5 = [(DMCEnrollmentFlowController *)self dirtyState];
    [(DMCEnrollmentFlowController *)self _cleanupDirtyState:managedConfigurationHelper5];
  }

LABEL_24:
  if (flowCopy && [(DMCEnrollmentFlowController *)self _isORGOEnrollment:type])
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    dmc_RemoteManagementAccounts = [defaultStore dmc_RemoteManagementAccounts];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __114__DMCEnrollmentFlowController__preflightEnrollmentWithEnrollmentType_isRenewalFlow_isPostRestoration_isPostBuddy___block_invoke;
    v51[3] = &unk_278EE31B8;
    v51[4] = self;
    v37 = [MEMORY[0x277CCAC30] predicateWithBlock:v51];
    v38 = [dmc_RemoteManagementAccounts filteredArrayUsingPredicate:v37];

    if ([v38 count] >= 2)
    {
      v39 = *DMCLogObjects();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v38;
        _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_ERROR, "Multiple RM accounts exist on the device: %{public}@!", buf, 0xCu);
      }
    }

    firstObject = [v38 firstObject];
    if (firstObject)
    {
      v41 = *DMCLogObjects();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = firstObject;
        _os_log_impl(&dword_247E39000, v41, OS_LOG_TYPE_DEFAULT, "Have existing RM Account: %{public}@!", buf, 0xCu);
      }

      identifier = [firstObject identifier];
      [(DMCEnrollmentFlowController *)self setRmAccountIdentifier:identifier];

      dmc_signInUserIdentifier = [firstObject dmc_signInUserIdentifier];
      [(DMCEnrollmentFlowController *)self setUsername:dmc_signInUserIdentifier];

      username = [firstObject username];
      [(DMCEnrollmentFlowController *)self setManagedAppleID:username];

      dmc_altDSID = [firstObject dmc_altDSID];
      [(DMCEnrollmentFlowController *)self setAltDSID:dmc_altDSID];

      -[DMCEnrollmentFlowController setEnrollmentType:](self, "setEnrollmentType:", [firstObject dmc_enrollmentType]);
    }

    else if (restorationCopy)
    {
      defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
      dmc_primaryiCloudAccount = [defaultStore2 dmc_primaryiCloudAccount];

      v48 = *DMCLogObjects();
      if (dmc_primaryiCloudAccount)
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v48, OS_LOG_TYPE_DEFAULT, "We don't have RM Account but we have Apple Account! Using the information from the Apple Account.", buf, 2u);
        }

        username2 = [dmc_primaryiCloudAccount username];
        [(DMCEnrollmentFlowController *)self setUsername:username2];

        username3 = [dmc_primaryiCloudAccount username];
        [(DMCEnrollmentFlowController *)self setManagedAppleID:username3];
      }

      else if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v48, OS_LOG_TYPE_ERROR, "No Primary AppleAccount after restoration!", buf, 2u);
      }
    }
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

BOOL __114__DMCEnrollmentFlowController__preflightEnrollmentWithEnrollmentType_isRenewalFlow_isPostRestoration_isPostBuddy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isORGOEnrollment:{objc_msgSend(v3, "dmc_enrollmentType")}])
  {
    v4 = [v3 dmc_enrollmentMethod] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_askForUsernameWithDefaultUsername:(id)username
{
  usernameCopy = username;
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
  {
    simulatedMDMAccountDrivenEnrollmentDefaultUsername = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentDefaultUsername];

    usernameCopy = simulatedMDMAccountDrivenEnrollmentDefaultUsername;
  }

  objc_initWeak(&location, self);
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke;
  v7[3] = &unk_278EE3208;
  objc_copyWeak(&v8, &location);
  [presenter requestUsernameWithDefaultUsername:usernameCopy completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke_2;
    v9[3] = &unk_278EE31E0;
    v9[4] = v7;
    v11 = a3;
    v10 = v5;
    [v8 queueBlock:v9];
  }
}

uint64_t __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 1)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[DMCEnrollmentFlowController _askForUsernameWithDefaultUsername:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v4, 0xCu);
    }
  }

  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 32) _flowTerminatedWithError:0 canceled:1];
  }

  [*(a1 + 32) setUsername:*(a1 + 40)];
  return [*(a1 + 32) _pollNextStep];
}

- (void)_fetchServerInformationWithUsername:(id)username
{
  usernameCopy = username;
  objc_initWeak(&location, self);
  serviceDiscoveryHelper = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke;
  v6[3] = &unk_278EE3258;
  objc_copyWeak(&v7, &location);
  [serviceDiscoveryHelper discoverServerForUserIdentifier:usernameCopy anchorCertificateRefs:0 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke_2;
    v12[3] = &unk_278EE3230;
    v12[4] = v10;
    v13 = v8;
    v14 = v7;
    v15 = a3;
    [v11 queueBlock:v12];
  }
}

uint64_t __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 2)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _fetchServerInformationWithUsername:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    return [*(a1 + 32) _flowTerminatedWithError:v3 canceled:0];
  }

  [*(a1 + 32) setServers:*(a1 + 48)];
  [*(a1 + 32) setServerInformationSource:*(a1 + 56)];
  return [*(a1 + 32) _pollNextStep];
}

- (id)_findServerWithVersion:(id)version servers:(id)servers
{
  v28 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  serversCopy = servers;
  v7 = [serversCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(serversCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        responseVersion = [v11 responseVersion];
        v13 = [responseVersion isEqualToString:versionCopy];

        if (v13)
        {
          v17 = v11;

          goto LABEL_13;
        }
      }

      v8 = [serversCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = *DMCLogObjects();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [serversCopy count];
    *buf = 138543618;
    v24 = versionCopy;
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_INFO, "No %{public}@ server found. Total servers amount: %ld", buf, 0x16u);
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (void)_chooseEnrollmentTypeWithAvailableServers:(id)servers serverInformationSource:(unint64_t)source
{
  v28 = *MEMORY[0x277D85DE8];
  serversCopy = servers;
  v7 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D03608] servers:serversCopy];
  v8 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D035E8] servers:serversCopy];
  v9 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D035F8] servers:serversCopy];
  v10 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D035F0] servers:serversCopy];
  v11 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D03600] servers:serversCopy];
  if ([MEMORY[0x277D034F8] isAppleInternal] && objc_msgSend(MEMORY[0x277D034E8], "DSLiveOnModeEnabled"))
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "We are on Apple internal device with DS live on feature enabled.", &v26, 2u);
    }

    source = 3;
  }

  else if ((source & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_11;
  }

  if (v7)
  {
    v13 = 4;
    v14 = v7;
LABEL_20:
    [(DMCEnrollmentFlowController *)self setEnrollmentType:v13];
    v16 = v14;
LABEL_21:
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      responseVersion = [v16 responseVersion];
      v26 = 138543362;
      v27 = responseVersion;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "Picked server with version: %{public}@", &v26, 0xCu);
    }

    v20 = MEMORY[0x277CBEBC0];
    responseBaseURL = [v16 responseBaseURL];
    v22 = [v20 URLWithString:responseBaseURL];
    [(DMCEnrollmentFlowController *)self setServiceURL:v22];

    goto LABEL_27;
  }

  if (v8)
  {
    v13 = 5;
    v14 = v8;
    goto LABEL_20;
  }

LABEL_11:
  if ((source & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v9 | v11)
    {
      [(DMCEnrollmentFlowController *)self setEnrollmentType:4];
      if (v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v11;
      }

      v16 = v15;
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else if (v10)
    {
      v13 = 5;
      v14 = v10;
      goto LABEL_20;
    }
  }

  v23 = *DMCLogObjects();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v26 = 138543362;
    v27 = serversCopy;
    _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "Failed to pick server from: %{public}@", &v26, 0xCu);
  }

  [(DMCEnrollmentFlowController *)self setServiceURL:0];
  v16 = 0;
LABEL_27:
  serviceURL = [(DMCEnrollmentFlowController *)self serviceURL];

  if (serviceURL)
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v25 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v25 canceled:0];
  }
}

- (void)_detectAuthTypeWithServiceURL:(id)l enrollmentType:(unint64_t)type isPostBuddy:(BOOL)buddy machineInfo:(id)info anchorCertificateRefs:(id)refs
{
  lCopy = l;
  infoCopy = info;
  refsCopy = refs;
  objc_initWeak(&location, self);
  serviceDiscoveryHelper = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke;
  v16[3] = &unk_278EE32A8;
  objc_copyWeak(v17, &location);
  v17[1] = type;
  buddyCopy = buddy;
  [serviceDiscoveryHelper determineEnrollmentMethodWithServiceURL:lCopy enrollmentType:type machineInfo:infoCopy anchorCertificateRefs:refsCopy completionHandler:v16];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained workerQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke_2;
    v17[3] = &unk_278EE3280;
    v17[4] = v13;
    v15 = v11;
    v16 = *(a1 + 40);
    v18 = v15;
    v21 = v16;
    v22 = a2;
    v19 = v10;
    v23 = *(a1 + 48);
    v20 = v9;
    [v14 queueBlock:v17];
  }
}

void __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 4)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315138;
      *&v31[4] = "[DMCEnrollmentFlowController _detectAuthTypeWithServiceURL:enrollmentType:isPostBuddy:machineInfo:anchorCertificateRefs:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", v31, 0xCu);
    }
  }

  if (!*(a1 + 40))
  {
    if (*(a1 + 64) == 3 && *(a1 + 72) != 1)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Failed: UAORGO is only supported for Apple user authentication", v31, 2u);
      }

      v10 = *(a1 + 32);
      v5 = +[DMCEnrollmentFlowController _createUnsupportedFeatureError];
      [v10 _flowTerminatedWithError:v5 canceled:0];
      goto LABEL_89;
    }

    v5 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D245E8]];
    if (v5)
    {
      v6 = [MEMORY[0x277D24660] essoDetailsWithJSONDictionary:v5];
      v7 = *DMCLogObjects();
      if (!v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v31 = 138543362;
          *&v31[4] = v5;
          _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Invalid ESSO details are present: %{public}@", v31, 0xCu);
        }

        v11 = *(a1 + 32);
        v6 = +[DMCEnrollmentFlowController _createGeneralError];
        v12 = v11;
        v13 = v6;
        v14 = 0;
        goto LABEL_41;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v31 = 0;
        _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEBUG, "ESSO details are present", v31, 2u);
      }

      [*(a1 + 32) setEssoDetails:v6];
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) setEnrollmentMethod:*(a1 + 72)];
    v8 = *(a1 + 72);
    if (v8 > 2)
    {
      if (v8 <= 4)
      {
        if (v8 != 3)
        {
LABEL_32:
          v15 = *DMCLogObjects();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *v31 = 0;
            v16 = "Unsupported enrollment method!";
LABEL_39:
            _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, v16, v31, 2u);
            goto LABEL_40;
          }

          goto LABEL_40;
        }

        v17 = *(a1 + 32);
        v18 = [v17 _ORGO_deviceEnrollmentSteps];
        goto LABEL_50;
      }

      if (v8 != 5)
      {
        if (v8 == 6)
        {
          goto LABEL_32;
        }

LABEL_85:
        if ((*(a1 + 80) & 1) == 0)
        {
          v29 = *(a1 + 32);
          v30 = [v29 _ADE_postEnrollmentSteps];
          [v29 _appendSteps:v30];
        }

        [*(a1 + 32) _pollNextStep];
        goto LABEL_88;
      }

LABEL_34:
      [*(a1 + 32) setAuthParams:*(a1 + 56)];
      v17 = *(a1 + 32);
      if (v6)
      {
        [v17 _ADxE_thirdParty_ESSO_firstPartSteps];
      }

      else
      {
        [v17 _ADxE_thirdParty_firstPartSteps];
      }
      v18 = ;
LABEL_50:
      v19 = v18;
      [v17 _appendSteps:v18];
LABEL_84:

      goto LABEL_85;
    }

    if (!v8)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        v16 = "Unknown enrollment method!";
        goto LABEL_39;
      }

LABEL_40:
      v12 = *(a1 + 32);
      v13 = 0;
      v14 = 1;
LABEL_41:
      [v12 _flowTerminatedWithError:v13 canceled:{v14, *v31}];
LABEL_88:

LABEL_89:
      return;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_85;
      }

      goto LABEL_34;
    }

    v19 = 0;
    v20 = *(a1 + 64);
    if (v20 <= 5)
    {
      if (v20 > 2)
      {
        if ((v20 - 4) < 2)
        {
          v24 = *(a1 + 32);
          if (v6)
          {
            [v24 _ADxE_ABE_ESSO_firstPartSteps];
          }

          else
          {
            [v24 _ADxE_ABE_firstPartSteps];
          }
          v21 = ;
          goto LABEL_80;
        }

        if (v20 != 3)
        {
          goto LABEL_81;
        }

        v25 = *(a1 + 32);
        goto LABEL_71;
      }

      if (v20)
      {
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            v21 = [*(a1 + 32) _ORGO_MACBuddy_firstPartSteps];
LABEL_80:
            v19 = v21;
          }

LABEL_81:
          [*(a1 + 32) _appendSteps:{v19, *v31}];
          v26 = [*(a1 + 32) managedAppleID];
          v27 = [v26 length];

          if (!v27)
          {
            v28 = [*(a1 + 32) username];
            [*(a1 + 32) setManagedAppleID:v28];
          }

          [*(a1 + 32) setAuthParams:*(a1 + 56)];
          goto LABEL_84;
        }

        v25 = *(a1 + 32);
        if ((*(a1 + 80) & 1) == 0)
        {
          v21 = [v25 _ORGO_MAIDEnrollmentSteps];
          goto LABEL_80;
        }

LABEL_71:
        v21 = [v25 _ORGO_MAIDEnrollmentSteps_orgToken];
        goto LABEL_80;
      }

      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        v23 = "Enrollment type is Unknown!";
        goto LABEL_76;
      }

LABEL_77:
      v19 = 0;
      goto LABEL_81;
    }

    if (v20 <= 7)
    {
      if (v20 == 6)
      {
        v22 = *DMCLogObjects();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        *v31 = 0;
        v23 = "Enrollment type MDMUserEnrollment is not supported!";
      }

      else
      {
        v22 = *DMCLogObjects();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        *v31 = 0;
        v23 = "Enrollment type SharediPadUserChannel is not supported!";
      }
    }

    else
    {
      switch(v20)
      {
        case 8:
          v22 = *DMCLogObjects();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *v31 = 0;
          v23 = "Enrollment type Watch is not supported!";
          break;
        case 9:
          v22 = *DMCLogObjects();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *v31 = 0;
          v23 = "Enrollment type ADE is not supported!";
          break;
        case 10:
          v22 = *DMCLogObjects();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *v31 = 0;
          v23 = "Enrollment type is None!";
          break;
        default:
          goto LABEL_81;
      }
    }

LABEL_76:
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_ERROR, v23, v31, 2u);
    goto LABEL_77;
  }

  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 40);
    *v31 = 138543362;
    *&v31[4] = v4;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to retrieve enrollment method with error: %{public}@", v31, 0xCu);
  }

  [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
}

- (void)_processAuthServicesWithAuthParams:(id)params enrollmentMethod:(unint64_t)method username:(id)username
{
  v21[1] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  usernameCopy = username;
  if (paramsCopy)
  {
    if (method == 2 || method == 5)
    {
      v10 = objc_opt_new();
      if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
      {
        v11 = *DMCLogObjects();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Simulating web auth session.", &buf, 2u);
        }

        v20 = *MEMORY[0x277D245C8];
        v21[0] = @"simulated-enrollment";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        [(DMCEnrollmentFlowController *)self setAuthTokens:v12];

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }

      else
      {
        v13 = [v10 webAuthenticationURLForAuthParams:paramsCopy userIdentifier:usernameCopy];
        if (v13)
        {
          objc_initWeak(&buf, self);
          presenter = [(DMCEnrollmentFlowController *)self presenter];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke;
          v17[3] = &unk_278EE32F8;
          objc_copyWeak(&v18, &buf);
          [presenter requestWebAuthenticationWithWebAuthURL:v13 authenticator:v10 authParams:paramsCopy completionHandler:v17];

          objc_destroyWeak(&v18);
          objc_destroyWeak(&buf);
        }

        else
        {
          v16 = +[DMCEnrollmentFlowController _createGeneralError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:1];
        }
      }
    }

    else
    {
      v15 = +[DMCEnrollmentFlowController _createGeneralError];
      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v15 canceled:1];
    }
  }

  else
  {
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:0 canceled:1];
  }
}

void __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke_2;
    v12[3] = &unk_278EE32D0;
    v12[4] = v10;
    v15 = a3;
    v13 = v8;
    v14 = v7;
    [v11 queueBlock:v12];
  }
}

uint64_t __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 10)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[DMCEnrollmentFlowController _processAuthServicesWithAuthParams:enrollmentMethod:username:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v12, 0xCu);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = 0;
    v5 = 1;
    return [v3 _flowTerminatedWithError:v4 canceled:v5];
  }

  v6 = *(a1 + 40);
  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Web authentication failed with error: %{public}@", &v12, 0xCu);
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 0;
    return [v3 _flowTerminatedWithError:v4 canceled:v5];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 48);
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEBUG, "Web authentication tokens retrieved: %{public}@", &v12, 0xCu);
  }

  v11 = [*(a1 + 48) copy];
  [*(a1 + 32) setAuthTokens:v11];

  return [*(a1 + 32) _pollNextStep];
}

- (void)_askForPasscodeIfNeededWithEnrollmentType:(unint64_t)type
{
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  isDevicePasscodeSet = [managedConfigurationHelper isDevicePasscodeSet];

  if (isDevicePasscodeSet)
  {
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke;
    v18[3] = &unk_278EE3348;
    v18[4] = self;
    objc_copyWeak(&v19, &location);
    v6 = MEMORY[0x24C1BD5A0](v18);
    presenter = [(DMCEnrollmentFlowController *)self presenter];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      presenter2 = [(DMCEnrollmentFlowController *)self presenter];
      v10 = v17;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_64;
      v17[3] = &unk_278EE3370;
      v17[4] = v6;
      [presenter2 requestDevicePasscodeContextNeedsExtractable:0 completionHandler:v17];
    }

    else
    {
      presenter3 = [(DMCEnrollmentFlowController *)self presenter];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        presenter2 = [(DMCEnrollmentFlowController *)self presenter];
        v10 = v16;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2_68;
        v16[3] = &unk_278EE3398;
        v16[4] = v6;
        [presenter2 requestDevicePasscodeDataWithCompletionHandler:v16];
      }

      else
      {
        presenter4 = [(DMCEnrollmentFlowController *)self presenter];
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
LABEL_12:

          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
          return;
        }

        presenter2 = [(DMCEnrollmentFlowController *)self presenter];
        v10 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_3;
        v15[3] = &unk_278EE33C0;
        v15[4] = v6;
        [presenter2 requestDevicePasscodeWithCompletionHandler:v15];
      }
    }

    goto LABEL_12;
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke(uint64_t a1, void *a2, char a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a4;
  v11 = [*(a1 + 32) workerQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2;
  v14[3] = &unk_278EE3320;
  objc_copyWeak(&v17, (a1 + 40));
  v18 = a5;
  v12 = v9;
  v15 = v12;
  v19 = a3;
  v13 = v10;
  v16 = v13;
  [v11 queueBlock:v14];

  objc_destroyWeak(&v17);
}

void __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentStep] != 11)
    {
      v4 = *DMCLogObjects();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = "[DMCEnrollmentFlowController _askForPasscodeIfNeededWithEnrollmentType:]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
      }
    }

    if (*(a1 + 56) == 1)
    {
      v5 = [v3 migrationDelegate];
      v6 = [v5 enrollmentFlowControllerIsDoingMigration:v3];

      if (v6)
      {
        [v3 _flowTerminatedWithError:0 canceled:1];
        goto LABEL_13;
      }

      [v3 setNextStepIndex:{objc_msgSend(v3, "nextStepIndex") - 2}];
    }

    else if (*(a1 + 32))
    {
      [v3 setDevicePasscodeContext:?];
      [v3 setDevicePasscodeExtractable:*(a1 + 57)];
    }

    else
    {
      [v3 setDevicePasscode:*(a1 + 40)];
    }

    [v3 _pollNextStep];
  }

LABEL_13:
}

void __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2_68(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v8 = a2;
    v5(v4);
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7 encoding:4];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_createEnterprisePersonaWithDevicePasscode:(id)passcode devicePasscodeContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  contextCopy = context;
  enterprisePersonaIdentifier = [MEMORY[0x277D03550] enterprisePersonaIdentifier];
  if (!enterprisePersonaIdentifier)
  {
    goto LABEL_6;
  }

  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Enterprise persona exists without any MDM enrollment! Cleaning up anyway...", buf, 2u);
  }

  v25 = 0;
  [MEMORY[0x277D03550] removePersona:enterprisePersonaIdentifier error:&v25];
  v10 = v25;
  if (v10)
  {
    v11 = v10;
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v10 canceled:0];
  }

  else
  {
LABEL_6:
    v12 = *DMCLogObjects();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (contextCopy)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "Creating Enterprise persona with passcode data context", buf, 2u);
      }

      v24 = 0;
      v14 = &v24;
      v15 = [MEMORY[0x277D03550] createEnterprisePersonaWithPasscodeData:contextCopy passcodeDataType:1 error:&v24];
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "Creating Enterprise persona with passcode string", buf, 2u);
      }

      v23 = 0;
      v14 = &v23;
      v15 = [MEMORY[0x277D03550] createEnterprisePersonaWithDevicePasscode:passcodeCopy error:&v23];
    }

    v16 = v15;
    v11 = *v14;
    v17 = *DMCLogObjects();
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v16;
        _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Enterprise persona created. ID: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self setPersonaID:v16];
      dirtyState = [(DMCEnrollmentFlowController *)self dirtyState];
      [dirtyState addDirtyPersonaID:v16];

      dirtyState2 = [(DMCEnrollmentFlowController *)self dirtyState];
      [(DMCEnrollmentFlowController *)self _writeDirtyStateToDisk:dirtyState2];

      managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        [managedConfigurationHelper2 requestEnrollmentFlowMonitorWithPersonaID:v16];
      }

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v27 = v11;
        _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "Failed to create enterprise persona with error: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v11 canceled:0];
    }
  }
}

- (void)_authenticateMAID:(id)d authenticationResults:(id)results enrollmentType:(unint64_t)type personaID:(id)iD ephemeral:(BOOL)ephemeral silent:(BOOL)silent isRenewalFlow:(BOOL)flow
{
  silentCopy = silent;
  ephemeralCopy = ephemeral;
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultsCopy = results;
  iDCopy = iD;
  if (!flow)
  {
    v17 = [(DMCEnrollmentFlowController *)self _guardAgainstConflictingAccountsWithUsername:dCopy altDSID:0];
    if (v17)
    {
      +[DMCEnrollmentAccountUtilities removeOrphanedEnrollmentAccounts];
      v18 = [(DMCEnrollmentFlowController *)self _guardAgainstConflictingAccountsWithUsername:dCopy altDSID:0];

      if (v18)
      {
        v19 = *DMCLogObjects();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_ERROR, "Duplicate account still exists after cleanup. Abort enrollment flow...", buf, 2u);
        }

        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v18 canceled:0];

        goto LABEL_34;
      }
    }
  }

  if ([(DMCEnrollmentFlowController *)self _isORGOEnrollment:type])
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v48 = 0;
    v21 = [defaultStore dmc_hasPrimaryAccount:&v48];
    v22 = v48;

    if (v22)
    {
      v23 = *DMCLogObjects();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v22;
        _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "Failed to fetch accounts with error: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v22 canceled:0];
LABEL_12:

      goto LABEL_34;
    }

    if (v21)
    {
      if (!flow || ([MEMORY[0x277CB8F48] defaultStore], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "dmc_primaryiCloudAccount"), v28 = objc_claimAutoreleasedReturnValue(), v27, objc_msgSend(v28, "username"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", dCopy), v29, v28, (v30 & 1) == 0))
      {
        v38 = *DMCLogObjects();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v38, OS_LOG_TYPE_ERROR, "The device already has a primary account! Aborting...", buf, 2u);
        }

        v39 = MEMORY[0x277CCA9B8];
        v40 = DMCErrorArray();
        v41 = [v39 DMCErrorWithDomain:*MEMORY[0x277D032F0] code:15011 descriptionArray:v40 errorType:{*MEMORY[0x277D032F8], 0}];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v41 canceled:0];

        goto LABEL_12;
      }
    }
  }

  else if (-[DMCEnrollmentFlowController _isBYODEnrollment:](self, "_isBYODEnrollment:", type) && ![iDCopy length] && !ephemeralCopy)
  {
    v24 = MEMORY[0x277CCA9B8];
    v25 = DMCErrorArray();
    v26 = [v24 DMCErrorWithDomain:*MEMORY[0x277D032F0] code:15019 descriptionArray:v25 errorType:{*MEMORY[0x277D032F8], 0}];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v26 canceled:0];

    goto LABEL_34;
  }

  objc_initWeak(buf, self);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke;
  v43[3] = &unk_278EE3410;
  objc_copyWeak(&v45, buf);
  flowCopy = flow;
  v47 = ephemeralCopy;
  dCopy = dCopy;
  v44 = dCopy;
  v31 = MEMORY[0x24C1BD5A0](v43);
  if (!dCopy)
  {
    if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
    {
      dCopy = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentDefaultUsername];
    }

    else
    {
      dCopy = 0;
    }
  }

  enrollmentMethod = [(DMCEnrollmentFlowController *)self enrollmentMethod];
  v33 = enrollmentMethod == 1;
  if ([MEMORY[0x277D034F8] isAppleInternal])
  {
    dSLiveOnModeEnabled = [MEMORY[0x277D034E8] DSLiveOnModeEnabled];
    if (enrollmentMethod == 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = dSLiveOnModeEnabled;
    }
  }

  if (silentCopy)
  {
    presenter = [(DMCEnrollmentFlowController *)self presenter];
    [presenter requestSilentMAIDAuthenticationWithAuthenticationResults:resultsCopy personaID:iDCopy requireAppleMAID:v33 completionHandler:v31];
  }

  else
  {
    presenter2 = [(DMCEnrollmentFlowController *)self presenter];
    v37 = objc_opt_respondsToSelector();

    presenter = [(DMCEnrollmentFlowController *)self presenter];
    if (v37)
    {
      [presenter requestMAIDAuthenticationWithManagedAppleID:dCopy personaID:iDCopy ephemeral:ephemeralCopy requireAppleMAID:v33 completionHandler:v31];
    }

    else
    {
      [presenter requestMAIDAuthenticationWithManagedAppleID:dCopy personaID:iDCopy ephemeral:ephemeralCopy completionHandler:v31];
    }
  }

  objc_destroyWeak(&v45);
  objc_destroyWeak(buf);
LABEL_34:
}

void __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke_2;
    v12[3] = &unk_278EE33E8;
    v12[4] = v10;
    v16 = a3;
    v13 = v8;
    v14 = v7;
    v17 = *(a1 + 48);
    v15 = *(a1 + 32);
    [v11 queueBlock:v12];
  }
}

void __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) currentStep] - 13) >= 3)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[DMCEnrollmentFlowController _authenticateMAID:authenticationResults:enrollmentType:personaID:ephemeral:silent:isRenewalFlow:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", buf, 0xCu);
    }
  }

  if (*(a1 + 64) != 1)
  {
    if (*(a1 + 40))
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "MAID authentication failed with error: %{public}@", buf, 0xCu);
      }

      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = 0;
      goto LABEL_10;
    }

    v8 = [*(a1 + 32) authenticationResults];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [*(a1 + 32) authenticationResults];
      [v10 addEntriesFromDictionary:*(a1 + 48)];
    }

    else
    {
      [*(a1 + 32) setAuthenticationResults:*(a1 + 48)];
    }

    v11 = [*(a1 + 32) authenticationResults];
    v12 = DMCAKAuthenticationAlternateDSIDKey();
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      [*(a1 + 32) setAltDSID:v13];
      if ((*(a1 + 65) & 1) == 0)
      {
        v14 = [*(a1 + 32) _guardAgainstConflictingAccountsWithUsername:0 altDSID:v13];
        if (v14)
        {
          v15 = v14;
          v16 = *DMCLogObjects();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_ERROR, "Duplicate account exists. Abort enrollment flow...", buf, 2u);
          }

          [*(a1 + 32) _flowTerminatedWithError:v15 canceled:0];

          goto LABEL_26;
        }
      }

      if ((*(a1 + 66) & 1) == 0)
      {
        v17 = [*(a1 + 32) dirtyState];
        [v17 addDirtyAltDSID:v13];

        v18 = *(a1 + 32);
        v19 = [v18 dirtyState];
        [v18 _writeDirtyStateToDisk:v19];
      }
    }

    v20 = [*(a1 + 32) altDSID];

    v21 = *(a1 + 32);
    if (v20)
    {
      [*(a1 + 32) _pollNextStep];
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277D032F0];
      v26 = *(a1 + 56);
      v24 = DMCErrorArray();
      v25 = [v22 DMCErrorWithDomain:v23 code:15031 descriptionArray:v24 errorType:{*MEMORY[0x277D032F8], v26, 0}];
      [v21 _flowTerminatedWithError:v25 canceled:0];
    }

LABEL_26:

    return;
  }

  v3 = *(a1 + 32);
  v4 = 0;
  v5 = 1;
LABEL_10:
  [v3 _flowTerminatedWithError:v4 canceled:v5];
}

- (void)_signInMAIDWithAuthenticationResult:(id)result enrollmentType:(unint64_t)type personaID:(id)d isRenewalFlow:(BOOL)flow
{
  resultCopy = result;
  dCopy = d;
  if (flow || (DMCAKAuthenticationUsernameKey(), v12 = objc_claimAutoreleasedReturnValue(), [resultCopy objectForKeyedSubscript:v12], v13 = objc_claimAutoreleasedReturnValue(), DMCAKAuthenticationAlternateDSIDKey(), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(resultCopy, "objectForKeyedSubscript:", v14), v15 = objc_claimAutoreleasedReturnValue(), -[DMCEnrollmentFlowController _guardAgainstConflictingAccountsWithUsername:altDSID:](self, "_guardAgainstConflictingAccountsWithUsername:altDSID:", v13, v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v12, !v16))
  {
    objc_initWeak(&location, self);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke;
    v24 = &unk_278EE3460;
    objc_copyWeak(&v27, &location);
    v17 = resultCopy;
    v25 = v17;
    v18 = dCopy;
    v26 = v18;
    v19 = MEMORY[0x24C1BD5A0](&v21);
    v20 = [(DMCEnrollmentFlowController *)self presenter:v21];
    [v20 requestMAIDSignInWithAuthenticationResults:v17 personaID:v18 makeiTunesAccountActive:type - 6 < 0xFFFFFFFFFFFFFFFELL completionHandler:v19];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:0];
  }
}

void __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke(id *a1, char a2, char a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained workerQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke_2;
    v11[3] = &unk_278EE3438;
    v11[4] = v9;
    v15 = a3;
    v16 = a2;
    v12 = v7;
    v13 = a1[4];
    v14 = a1[5];
    [v10 queueBlock:v11];
  }
}

void __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 16)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[DMCEnrollmentFlowController _signInMAIDWithAuthenticationResult:enrollmentType:personaID:isRenewalFlow:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v16, 0xCu);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 32);
    v4 = 0;
    v5 = 1;
LABEL_13:
    [v3 _flowTerminatedWithError:v4 canceled:v5];
    return;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "MAID sign-in failed with error: %{public}@", &v16, 0xCu);
    }

    v13 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (!v4)
    {
      v15 = +[DMCEnrollmentFlowController _createGeneralSignInError];
      [v13 _flowTerminatedWithError:v15 canceled:0];

      return;
    }

    v3 = *(a1 + 32);
    v5 = 0;
    goto LABEL_13;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = DMCAKAuthenticationAlternateDSIDKey();
  v9 = [v7 objectForKeyedSubscript:v8];
  LOBYTE(v6) = [v6 _verifyAccountsInformationWithAltDSID:v9 personaID:*(a1 + 56)];

  v10 = *(a1 + 32);
  if (v6)
  {
    [v10 _pollNextStep];
  }

  else
  {
    v14 = +[DMCEnrollmentFlowController _createGeneralSignInError];
    [v10 _flowTerminatedWithError:v14 canceled:0];
  }
}

- (BOOL)_verifyAccountsInformationWithAltDSID:(id)d personaID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = 1;
  if (iDCopy)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v9 = MEMORY[0x277D03550];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__DMCEnrollmentFlowController__verifyAccountsInformationWithAltDSID_personaID___block_invoke;
    v13[3] = &unk_278EE3488;
    v10 = defaultStore;
    v14 = v10;
    v15 = dCopy;
    v16 = iDCopy;
    v17 = &v18;
    v11 = [v9 performBlockUnderPersona:v16 block:v13];
    v7 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v7 & 1;
}

void __79__DMCEnrollmentFlowController__verifyAccountsInformationWithAltDSID_personaID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:*(a1 + 40)];
  v3 = [v2 personaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 48)];

  if ((v4 & 1) == 0)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v2 personaIdentifier];
      v8 = *(a1 + 48);
      v16 = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = v2;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "The persona ID (%{public}@) of the iCloud account (%{public}@) is different from the persona ID (%{public}@) used in this enrollment.", &v16, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v9 = [*(a1 + 32) dmc_iTunesAccountForRemoteManagingAccountWithAltDSID:*(a1 + 40)];
  v10 = [v9 personaIdentifier];
  v11 = [v10 isEqualToString:*(a1 + 48)];

  if ((v11 & 1) == 0)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v9 personaIdentifier];
      v15 = *(a1 + 48);
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "The persona ID (%{public}@) of the iTunes account (%{public}@) is different from the persona ID (%{public}@) used in this enrollment.", &v16, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (void)_exchangeMAIDForBearerTokenWithRMAccountIdentifier:(id)identifier authParams:(id)params anchorCertificateRefs:(id)refs
{
  v18[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  paramsCopy = params;
  refsCopy = refs;
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Simulating exchange MAID for bearer token.", &buf, 2u);
    }

    v17 = *MEMORY[0x277D245C8];
    v18[0] = @"simulated-enrollment";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [(DMCEnrollmentFlowController *)self setAuthTokens:v12];

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    objc_initWeak(&buf, self);
    v13 = [MEMORY[0x277D24670] authenticatorWithAnchorCertificateRefs:refsCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke;
    v14[3] = &unk_278EE34D8;
    objc_copyWeak(&v15, &buf);
    [v13 fetchTokenWithAuthParams:paramsCopy accountID:identifierCopy completionHandler:v14];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&buf);
  }
}

void __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentStep] != 18)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[DMCEnrollmentFlowController _exchangeMAIDForBearerTokenWithRMAccountIdentifier:authParams:anchorCertificateRefs:]_block_invoke";
        _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", buf, 0xCu);
      }
    }

    v10 = [v8 workerQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke_90;
    v11[3] = &unk_278EE34B0;
    v12 = v6;
    v13 = v8;
    v14 = v5;
    [v10 queueBlock:v11];
  }
}

uint64_t __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke_90(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v4 = [*(a1 + 48) copy];
    [*(a1 + 40) setAuthTokens:v4];

    v5 = *(a1 + 40);

    return [v5 _pollNextStep];
  }
}

- (void)_fetchEnrollmentProfileFromServiceURL:(id)l authTokens:(id)tokens machineInfo:(id)info anchorCertificateRefs:(id)refs enrollmentMethod:(unint64_t)method isReturnToService:(BOOL)service
{
  serviceCopy = service;
  lCopy = l;
  tokensCopy = tokens;
  infoCopy = info;
  refsCopy = refs;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke;
  v25[3] = &unk_278EE3500;
  objc_copyWeak(&v26, &location);
  v18 = MEMORY[0x24C1BD5A0](v25);
  if (serviceCopy && (-[DMCEnrollmentFlowController obliterationShelter](self, "obliterationShelter"), v19 = objc_claimAutoreleasedReturnValue(), [v19 mdmProfileData], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_DEFAULT, "Return to Service: Has local MDM profile.", v24, 2u);
    }

    obliterationShelter = [(DMCEnrollmentFlowController *)self obliterationShelter];
    mdmProfileData = [obliterationShelter mdmProfileData];
    (v18)[2](v18, mdmProfileData, 0);
  }

  else
  {
    obliterationShelter = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
    [obliterationShelter fetchEnrollmentProfileWithServiceURL:lCopy authTokens:tokensCopy enrollmentMethod:method machineInfo:infoCopy anchorCertificateRefs:refsCopy completionHandler:v18];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workerQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke_2;
    v10[3] = &unk_278EE34B0;
    v10[4] = v8;
    v11 = v6;
    v12 = v5;
    [v9 queueBlock:v10];
  }
}

void *__149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 19)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[DMCEnrollmentFlowController _fetchEnrollmentProfileFromServiceURL:authTokens:machineInfo:anchorCertificateRefs:enrollmentMethod:isReturnToService:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277D033B8]];

    if (!v5)
    {
      return [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
    }

    result = [*(a1 + 32) _handleSoftwareUpdateRequiredError:*(a1 + 40)];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) _handleNeedCredentialsError:*(a1 + 40)];
      if ((result & 1) == 0)
      {
        return [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
      }
    }
  }

  else
  {
    [*(a1 + 32) setProfileData:*(a1 + 48)];
    return [*(a1 + 32) _pollNextStep];
  }

  return result;
}

- (void)_analyzeProfileData:(id)data enrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method isESSO:(BOOL)o essoAppITunesStoreID:(id)d isRapidReturnToService:(BOOL)service
{
  serviceCopy = service;
  oCopy = o;
  v53 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
    typeCopy2 = type;
    v22 = 0;
    v42 = 0;
    v43 = 0;
    v21 = 0;
    v44 = 0;
    v25 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  v38 = dCopy;
  managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v48 = 0;
  v19 = [managedConfigurationHelper2 detailsFromMDMProfile:dataCopy error:&v48];
  v20 = v48;

  if (v19)
  {
    typeCopy2 = type;
    v37 = [v19 objectForKeyedSubscript:@"ProfileIdentifier"];
    v40 = [v19 objectForKeyedSubscript:@"ManagedAppleID"];
    v45 = [v19 objectForKeyedSubscript:@"AssignedManagedAppleID"];
    v43 = [v19 objectForKeyedSubscript:@"OrganizationName"];
    v44 = [v19 objectForKeyedSubscript:@"FriendlyName"];
    v21 = [v19 objectForKeyedSubscript:@"EnrollmentMode"];
    v22 = [v19 objectForKeyedSubscript:@"ServerCapabilities"];
    v42 = [v19 objectForKeyedSubscript:@"RequiredAppID"];
    v23 = *DMCLogObjects();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[DMCEnrollmentFlowController _analyzeProfileData:enrollmentType:enrollmentMethod:isESSO:essoAppITunesStoreID:isRapidReturnToService:]";
      v51 = 2112;
      v52 = v19;
      _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v20 = v37;
    dCopy = v38;
    v24 = v40;
    v25 = v45;
LABEL_7:
    v46 = v25;
    v47 = 0;
    [(DMCEnrollmentFlowController *)self _verifyPropertiesFromProfileData:dataCopy enrollmentMethod:method isRapidReturnToService:serviceCopy isESSO:oCopy essoAppITunesStoreID:dCopy enrollmentMode:v21 managedAppleID:v24 assignedManagedAppleID:v25 serverCapabilities:v22 error:&v47];
    v26 = v47;
    if (v26)
    {
      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v26 canceled:0];
LABEL_9:
      v27 = v43;
LABEL_39:

      goto LABEL_40;
    }

    v41 = v24;
    if ((typeCopy2 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v28 = [v22 containsObject:*MEMORY[0x277D24D90]];
      if (method == 1)
      {
        if (oCopy)
        {
          if (v28)
          {
            [(DMCEnrollmentFlowController *)self _ADxE_ABE_ESSO_secondPartSteps_orgToken];
          }

          else
          {
            [(DMCEnrollmentFlowController *)self _ADxE_ABE_ESSO_secondPartSteps_default];
          }
        }

        else if (v28)
        {
          [(DMCEnrollmentFlowController *)self _ADxE_ABE_secondPartSteps_orgToken];
        }

        else
        {
          [(DMCEnrollmentFlowController *)self _ADxE_ABE_secondPartSteps_default];
        }
      }

      else
      {
        if (method != 5 && method != 2)
        {
          v29 = *DMCLogObjects();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v29, OS_LOG_TYPE_ERROR, "No next step: unsupported enrollment method", buf, 2u);
          }

          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:0 canceled:0];
          v24 = v41;
          goto LABEL_9;
        }

        if (oCopy)
        {
          if (v28)
          {
            [(DMCEnrollmentFlowController *)self _ADxE_thirdParty_ESSO_secondPartSteps_orgToken];
          }

          else
          {
            [(DMCEnrollmentFlowController *)self _ADxE_thirdParty_ESSO_secondPartSteps_default];
          }
        }

        else if (v28)
        {
          [(DMCEnrollmentFlowController *)self _ADxE_thirdParty_secondPartSteps_orgToken];
        }

        else
        {
          [(DMCEnrollmentFlowController *)self _ADxE_thirdParty_secondPartSteps_default];
        }
      }
      v30 = ;
      v31 = v30;
      [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v30];
    }

    v32 = dCopy;
    [(DMCEnrollmentFlowController *)self setProfileIdentifier:v20];
    if (method == 5 || method == 2)
    {
      [(DMCEnrollmentFlowController *)self setManagedAppleID:v46];
    }

    v27 = v43;
    [(DMCEnrollmentFlowController *)self setOrganizationName:v43];
    [(DMCEnrollmentFlowController *)self setFriendlyName:v44];
    managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      managedConfigurationHelper4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      -[DMCEnrollmentFlowController setIsProfileLocked:](self, "setIsProfileLocked:", [managedConfigurationHelper4 isMDMProfileLocked]);
    }

    v36 = [v22 copy];
    [(DMCEnrollmentFlowController *)self setServerCapabilities:v36];

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    dCopy = v32;
    v24 = v41;
    goto LABEL_39;
  }

  [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v20 canceled:0];
  dCopy = v38;
LABEL_40:
}

- (void)_askForUserConsentWithProfileData:(id)data managedAppleID:(id)d cloudConfig:(id)config isReturnToService:(BOOL)service enrollmentType:(unint64_t)type
{
  serviceCopy = service;
  v56 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  configCopy = config;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke;
  v48[3] = &unk_278EE3120;
  v48[4] = self;
  v15 = MEMORY[0x24C1BD5A0](v48);
  if (serviceCopy)
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_DEFAULT, "No need to ask for consent during Return to Service", &buf, 2u);
    }

LABEL_4:
    v15[2](v15);
    goto LABEL_31;
  }

  migrationDelegate = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v18 = [migrationDelegate enrollmentFlowControllerIsDoingMigration:self];

  if (v18)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEFAULT, "No need to ask for consent again during migration", &buf, 2u);
    }

    goto LABEL_4;
  }

  objc_initWeak(&location, self);
  if (configCopy)
  {
    if ([(DMCEnrollmentFlowController *)self _canSkipMDMEnrollmentWithEnrollmentType:type])
    {
      v20 = *DMCLogObjects();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]";
        _os_log_impl(&dword_247E39000, v20, OS_LOG_TYPE_DEFAULT, "%s: Skipping core enrollment part", &buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _skipMDMEnrollment];
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v54 = 0x2020000000;
      v55 = 0;
      if (type == 9)
      {
        managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        v25 = objc_opt_respondsToSelector();

        if (v25)
        {
          managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_99;
          v46[3] = &unk_278EE35A0;
          v46[4] = self;
          v46[5] = &buf;
          [managedConfigurationHelper2 awaitStoredProfileInstallationWithCompletionHandler:v46];
        }
      }

      presenter = [(DMCEnrollmentFlowController *)self presenter];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        presenter2 = [(DMCEnrollmentFlowController *)self presenter];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_104;
        v41[3] = &unk_278EE35F0;
        objc_copyWeak(&v45, &location);
        p_buf = &buf;
        v43 = v15;
        v42 = configCopy;
        [presenter2 requestUserConsentWithCloudConfig:v42 completionHandler:v41];

        objc_destroyWeak(&v45);
      }

      else
      {
        v33 = *DMCLogObjects();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          presenter3 = [(DMCEnrollmentFlowController *)self presenter];
          v35 = NSStringFromSelector(sel_requestUserConsentWithCloudConfig_completionHandler_);
          *v49 = 138543618;
          v50 = presenter3;
          v51 = 2114;
          v52 = v35;
          _os_log_impl(&dword_247E39000, v33, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", v49, 0x16u);
        }

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    presenter4 = [(DMCEnrollmentFlowController *)self presenter];
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      presenter5 = [(DMCEnrollmentFlowController *)self presenter];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_5;
      v39[3] = &unk_278EE3640;
      objc_copyWeak(&v40, &location);
      [presenter5 requestUserConsentWithProfileData:dataCopy managedAppleID:dCopy enrollmentType:type completionHandler:v39];

      objc_destroyWeak(&v40);
    }

    else
    {
      presenter6 = [(DMCEnrollmentFlowController *)self presenter];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        presenter7 = [(DMCEnrollmentFlowController *)self presenter];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_115;
        v37[3] = &unk_278EE3640;
        objc_copyWeak(&v38, &location);
        [presenter7 requestUserConsentWithProfileData:dataCopy managedAppleID:dCopy completionHandler:v37];

        objc_destroyWeak(&v38);
      }

      else
      {
        v36 = *DMCLogObjects();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_247E39000, v36, OS_LOG_TYPE_ERROR, "presenter didn't implement requestUserConsentWithProfileData:managedAppleID:completionHandler:", &buf, 2u);
        }

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }
    }
  }

  objc_destroyWeak(&location);
LABEL_31:
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedConfigurationHelper];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2;
  v3[3] = &unk_278EE3550;
  v3[4] = *(a1 + 32);
  [v2 markCloudConfigurationAsUICompletedWithCompletionHandler:v3];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _flowTerminatedWithError:v2 canceled:0];
  }

  else
  {
    return [v1 _pollNextStep];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_99(uint64_t a1)
{
  v2 = [*(a1 + 32) workerQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_100;
  v3[3] = &unk_278EE3578;
  v4 = *(a1 + 32);
  [v2 queueBlock:v3 afterDelay:1.0];
}

id *__125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_100(id *result)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*(result[5] + 1) + 24) & 1) == 0)
  {
    v1 = result;
    if ([result[4] currentStep] != 21)
    {
      v2 = *DMCLogObjects();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315138;
        v5 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v4, 0xCu);
      }
    }

    *(*(v1[5] + 1) + 24) = 1;
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke";
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "%s: Stored profile installed when we are waiting for user consent. This is probably due to TFDEP", &v4, 0xCu);
    }

    return [v1[4] _skipMDMEnrollment];
  }

  return result;
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_104(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_105;
    v9[3] = &unk_278EE35C8;
    v9[4] = v5;
    v12 = a2;
    v8 = *(a1 + 40);
    v7 = v8;
    v11 = v8;
    v10 = *(a1 + 32);
    [v6 queueBlock:v9];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_105(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if ([*(a1 + 32) currentStep] != 21)
    {
      v3 = *DMCLogObjects();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v9 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", buf, 0xCu);
      }
    }

    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v4 = [MEMORY[0x277D24640] isProvisionallyEnrolledWithCloudConfig:*(a1 + 40)];
      v5 = *(a1 + 32);
      if (v4)
      {
        v6 = [v5 managedConfigurationHelper];
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_107;
        v7[3] = &unk_278EE3550;
        v7[4] = *(a1 + 32);
        [v6 unassignFromDEPWithCompletionHandler:v7];
      }

      else
      {
        [v5 _flowTerminatedWithError:0 canceled:1];
      }
    }
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_108;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_108(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v4 = [v2 presenter];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3_109;
    v5[3] = &unk_278EE3550;
    v5[4] = *(a1 + 40);
    [v4 requestDeviceErasureWithCompletionHandler:v5];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_4;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_5(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_6;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_6(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 21)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_6";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [v3 _pollNextStep];
  }

  else
  {
    return [v3 _flowTerminatedWithError:0 canceled:1];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_115(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_116;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_116(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 21)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [v3 _pollNextStep];
  }

  else
  {
    return [v3 _flowTerminatedWithError:0 canceled:1];
  }
}

- (void)_displayManagementDetailsOverviewWithProfileData:(id)data managedAppleID:(id)d
{
  dataCopy = data;
  dCopy = d;
  objc_initWeak(&location, self);
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke;
  v9[3] = &unk_278EE3640;
  objc_copyWeak(&v10, &location);
  [presenter displayManagementDetailsOverviewWithProfileData:dataCopy managedAppleID:dCopy completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke_2;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 22)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _displayManagementDetailsOverviewWithProfileData:managedAppleID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [v3 _pollNextStep];
  }

  else
  {
    return [v3 _flowTerminatedWithError:0 canceled:1];
  }
}

- (void)_skipMDMEnrollment
{
  stepQueue = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
  v4 = [stepQueue indexOfObject:&unk_2859F90B8];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:v4 + 1];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_installEnrollmentProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d rmAccountIdentifier:(id)identifier isESSO:(BOOL)o essoAppITunesStoreID:(id)self0 essoConfigurationProfile:(id)self1 wifiProfileIdentifier:(id)self2 enrollmentType:(unint64_t)self3 isReturnToService:(BOOL)self4
{
  extractableCopy = extractable;
  profileCopy = profile;
  passcodeCopy = passcode;
  contextCopy = context;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  configurationProfileCopy = configurationProfile;
  profileIdentifierCopy = profileIdentifier;
  [(DMCEnrollmentFlowController *)self _blockAppInstallsIfNecessary];
  if (type == 9 || service)
  {
    [(DMCEnrollmentFlowController *)self _enablePushWake];
  }

  objc_initWeak(location, self);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke;
  v43[3] = &unk_278EE3690;
  objc_copyWeak(v44, location);
  v44[1] = type;
  v21 = MEMORY[0x24C1BD5A0](v43);
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    presenter2 = [(DMCEnrollmentFlowController *)self presenter];
    [presenter2 showInstallingEnrollmentProfileScene];
  }

  migrationDelegate = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v26 = [migrationDelegate enrollmentFlowControllerIsDoingMigration:self];

  if (type == 4)
  {
    v27 = MEMORY[0x277D035C8];
    goto LABEL_10;
  }

  if (type == 5)
  {
    v27 = MEMORY[0x277D035C0];
LABEL_10:
    v28 = profileCopy;
LABEL_11:
    v29 = *v27;
    goto LABEL_12;
  }

  v27 = MEMORY[0x277D035D0];
  if (service)
  {
    v27 = MEMORY[0x277D035D8];
  }

  v28 = profileCopy;
  if ((service | v26))
  {
    goto LABEL_11;
  }

  v29 = 0;
LABEL_12:
  v30 = objc_opt_new();
  v31 = v30;
  if (configurationProfileCopy)
  {
    [v30 addObject:configurationProfileCopy];
  }

  if (profileIdentifierCopy)
  {
    [v31 addObject:profileIdentifierCopy];
  }

  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v33 = objc_opt_respondsToSelector();

  managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  if (v33)
  {
    LOBYTE(v35) = o;
    [managedConfigurationHelper2 installEnrollmentProfile:v28 devicePasscode:passcodeCopy devicePasscodeContext:contextCopy passcodeContextExtractable:extractableCopy personaID:dCopy rmAccountIdentifier:identifierCopy isESSO:v35 essoAppITunesStoreID:iDCopy managedProfileIdentifiers:v31 installationSource:v29 completionHandler:v21];
  }

  else
  {
    [managedConfigurationHelper2 installEnrollmentProfile:v28 devicePasscode:passcodeCopy personaID:dCopy rmAccountIdentifier:identifierCopy managedProfileIdentifiers:v31 installationSource:v29 completionHandler:v21];
  }

  objc_destroyWeak(v44);
  objc_destroyWeak(location);
}

void __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke_2;
    v14[3] = &unk_278EE3668;
    v15 = v8;
    v16 = v10;
    v19 = a3;
    v12 = v7;
    v13 = *(a1 + 40);
    v17 = v12;
    v18 = v13;
    [v11 queueBlock:v14];
  }
}

uint64_t __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v21 = 138543362;
      v22 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "profile installation failed with error: %{public}@", &v21, 0xCu);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 0;
    return [v5 _flowTerminatedWithError:v6 canceled:v7];
  }

  v8 = *(a1 + 64);
  v9 = *DMCLogObjects();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v10)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "profile installation canceled", &v21, 2u);
    }

    v5 = *(a1 + 40);
    v6 = 0;
    v7 = 1;
    return [v5 _flowTerminatedWithError:v6 canceled:v7];
  }

  if (v10)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "MDM profile installed.", &v21, 2u);
  }

  [*(a1 + 40) setProfileIdentifier:*(a1 + 48)];
  v12 = [*(a1 + 40) dirtyState];
  [v12 addDirtyProfileIdentifier:*(a1 + 48)];

  v13 = *(a1 + 40);
  v14 = [v13 dirtyState];
  [v13 _writeDirtyStateToDisk:v14];

  if ((*(a1 + 56) | 8) == 9)
  {
    v15 = [*(a1 + 40) managedConfigurationHelper];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [*(a1 + 40) managedConfigurationHelper];
      [v17 markStoredProfileAsInstalled];
    }
  }

  v18 = [*(a1 + 40) delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [*(a1 + 40) delegate];
    [v20 enrollmentFlowController:*(a1 + 40) didInstallEnrollmentProfile:*(a1 + 48)];
  }

  return [*(a1 + 40) _pollNextStep];
}

- (void)_createRMAccountIfNeededWithSignInUserIdentifier:(id)identifier assignedMAID:(id)d existingRMAccountID:(id)iD enrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method isRenewalFlow:(BOOL)flow
{
  flowCopy = flow;
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  if (iDCopy && flowCopy)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v18 = [defaultStore accountWithIdentifier:iDCopy];

    if ([v18 dmc_enrollmentType] == type && objc_msgSend(v18, "dmc_enrollmentMethod") == method)
    {
      dirtyState = [(DMCEnrollmentFlowController *)self dirtyState];
      [dirtyState addDirtyRMAccount:iDCopy];

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      goto LABEL_12;
    }
  }

  defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
  v21 = [MEMORY[0x277CB8F30] dmc_createManagementAccountWithStore:defaultStore2];
  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v28 = v21;
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_INFO, "Will save remote management account: %{public}@", buf, 0xCu);
  }

  [v21 setUsername:dCopy];
  [v21 dmc_setSignInUserIdentifier:identifierCopy];
  [v21 dmc_setEnrollmentType:type];
  [v21 dmc_setEnrollmentMethod:method];
  if (type == 7)
  {
    [v21 dmc_setAccountScheme:*MEMORY[0x277D032E8]];
  }

  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke;
  v24[3] = &unk_278EE36B8;
  objc_copyWeak(&v26, buf);
  v23 = v21;
  v25 = v23;
  [defaultStore2 saveAccount:v23 withCompletionHandler:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

LABEL_12:
}

void __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke_2;
    v9[3] = &unk_278EE32D0;
    v13 = a2;
    v10 = v5;
    v11 = v7;
    v12 = *(a1 + 32);
    [v8 queueBlock:v9];
  }
}

uint64_t __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = v4;
      v7 = [v5 identifier];
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", &v15, 0xCu);
    }

    v8 = [*(a1 + 48) identifier];
    [*(a1 + 40) setRmAccountIdentifier:v8];

    v9 = [*(a1 + 40) dirtyState];
    v10 = [*(a1 + 48) identifier];
    [v9 addDirtyRMAccount:v10];

    v11 = *(a1 + 40);
    v12 = [v11 dirtyState];
    [v11 _writeDirtyStateToDisk:v12];

    return [*(a1 + 40) _pollNextStep];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", &v15, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }
}

- (void)_updateRMAccountWithIdentifier:(id)identifier authenticationResults:(id)results enrollmentMethod:(unint64_t)method
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  resultsCopy = results;
  managedAppleID = [(DMCEnrollmentFlowController *)self managedAppleID];
  v11 = managedAppleID;
  if (managedAppleID)
  {
    v12 = managedAppleID;
  }

  else
  {
    v13 = DMCAKAuthenticationUsernameKey();
    v12 = [resultsCopy objectForKeyedSubscript:v13];
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v27 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __101__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authenticationResults_enrollmentMethod___block_invoke;
  v23 = &unk_278EE36E0;
  v15 = v12;
  v24 = v15;
  v16 = resultsCopy;
  v25 = v16;
  methodCopy = method;
  v17 = [defaultStore dmc_updateAccountWithIdentifier:identifierCopy error:&v27 updateBlock:&v20];
  v18 = v27;

  v19 = *DMCLogObjects();
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = identifierCopy;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep:v20];
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v18 canceled:0, v20, v21, v22, v23, v24];
  }
}

void __101__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authenticationResults_enrollmentMethod___block_invoke(void *a1, void *a2)
{
  v15 = a2;
  [v15 setUsername:a1[4]];
  [v15 setAccountDescription:a1[4]];
  v3 = a1[5];
  v4 = DMCAKAuthenticationAlternateDSIDKey();
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = a1[5];
    v7 = DMCAKAuthenticationAlternateDSIDKey();
    v8 = [v6 objectForKeyedSubscript:v7];
    [v15 dmc_setAltDSID:v8];
  }

  v9 = a1[5];
  v10 = DMCAKAuthenticationDSIDKey();
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = a1[5];
    v13 = DMCAKAuthenticationDSIDKey();
    v14 = [v12 objectForKeyedSubscript:v13];
    [v15 dmc_setDSID:v14];
  }

  if (a1[6] == 1)
  {
    [MEMORY[0x277D24610] stashMAIDShortLivedTokenWithAccount:v15 authenticationResults:a1[5]];
  }
}

- (void)_updateRMAccountWithIdentifier:(id)identifier authTokens:(id)tokens profileIdentifier:(id)profileIdentifier organizationName:(id)name personaID:(id)d enrollmentMethod:(unint64_t)method
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokensCopy = tokens;
  profileIdentifierCopy = profileIdentifier;
  nameCopy = name;
  dCopy = d;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v19 = MEMORY[0x277D03550];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke;
  v29[3] = &unk_278EE3730;
  v36 = &v39;
  v20 = identifierCopy;
  v30 = v20;
  v37 = &v43;
  v21 = nameCopy;
  v31 = v21;
  selfCopy = self;
  v22 = tokensCopy;
  v33 = v22;
  v23 = profileIdentifierCopy;
  v34 = v23;
  v24 = dCopy;
  v35 = v24;
  methodCopy = method;
  v25 = [v19 performBlockUnderPersona:v24 block:v29];
  if (v40[3])
  {
    v26 = *DMCLogObjects();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v20;
      _os_log_impl(&dword_247E39000, v26, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v27 = *DMCLogObjects();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v44[5];
      *buf = 138543362;
      v50 = v28;
      _os_log_impl(&dword_247E39000, v27, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v44[5] canceled:0];
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

void __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = *(*(a1 + 88) + 8);
  v17 = *(v3 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke_2;
  v12[3] = &unk_278EE3708;
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 48);
  v11 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 96);
  v15 = v9;
  v16 = v10;
  LOBYTE(v4) = [v2 dmc_updateAccountWithIdentifier:v4 error:&v17 updateBlock:v12];
  objc_storeStrong((v3 + 40), v17);
  *(*(*(a1 + 80) + 8) + 24) = v4;
}

void __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAccountDescription:*(a1 + 32)];
  [*(a1 + 40) _updateCredentialForAccount:v3 authTokens:*(a1 + 48)];
  [v3 dmc_setManagementProfileIdentifier:*(a1 + 56)];
  [v3 dmc_setPersonaIdentifier:*(a1 + 64)];
  if (*(a1 + 72) == 1)
  {
    [MEMORY[0x277D24610] removeMAIDShortLivedTokenWithAccount:v3];
  }
}

- (void)_updateRMAccountWithIdentifier:(id)identifier authTokens:(id)tokens personaID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokensCopy = tokens;
  dCopy = d;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v11 = MEMORY[0x277D03550];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke;
  v18[3] = &unk_278EE3780;
  v22 = &v24;
  v12 = identifierCopy;
  v23 = &v28;
  v19 = v12;
  selfCopy = self;
  v13 = tokensCopy;
  v21 = v13;
  v14 = [v11 performBlockUnderPersona:dCopy block:v18];
  if (v25[3])
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v12;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v29[5];
      *buf = 138543362;
      v35 = v17;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v29[5] canceled:0];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = *(a1[8] + 8);
  v8 = *(v3 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke_2;
  v6[3] = &unk_278EE3758;
  v4 = a1[4];
  v5 = a1[6];
  v6[4] = a1[5];
  v7 = v5;
  LOBYTE(v4) = [v2 dmc_updateAccountWithIdentifier:v4 error:&v8 updateBlock:v6];
  objc_storeStrong((v3 + 40), v8);
  *(*(a1[7] + 8) + 24) = v4;
}

void __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _updateCredentialForAccount:v4 authTokens:v3];
  [v4 dmc_setBearerReauthURL:0];
  [v4 dmc_setBearerReauthParams:0];
}

- (void)_correlateMAIDWithAltDSID:(id)d withRMAccount:(id)account isProfileLocked:(BOOL)locked organizationName:(id)name friendlyName:(id)friendlyName personaID:(id)iD
{
  v81 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  nameCopy = name;
  friendlyNameCopy = friendlyName;
  iDCopy = iD;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke;
  v74[3] = &unk_278EE37A8;
  v43 = nameCopy;
  v75 = v43;
  v41 = accountCopy;
  v76 = v41;
  v19 = friendlyNameCopy;
  v77 = v19;
  lockedCopy = locked;
  v20 = MEMORY[0x24C1BD5A0](v74);
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy_;
  v72 = __Block_byref_object_dispose_;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v21 = MEMORY[0x277D03550];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_2;
  v58[3] = &unk_278EE37D0;
  v62 = &v64;
  v22 = defaultStore;
  v59 = v22;
  v23 = dCopy;
  v60 = v23;
  v63 = &v68;
  v24 = v20;
  v61 = v24;
  v25 = [v21 performBlockUnderPersona:iDCopy block:v58];
  if (v65[3])
  {
    v26 = *DMCLogObjects();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v26, OS_LOG_TYPE_DEFAULT, "iCloud Account Saved Successfully.", buf, 2u);
    }

    v27 = MEMORY[0x277D03550];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_132;
    v52[3] = &unk_278EE37D0;
    v56 = &v64;
    v28 = v22;
    v53 = v28;
    v29 = v23;
    v54 = v29;
    v57 = &v68;
    v55 = v24;
    v30 = [v27 performBlockUnderPersona:iDCopy block:{v52, v41, v43}];
    if (v65[3])
    {
      v31 = *DMCLogObjects();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v31, OS_LOG_TYPE_DEFAULT, "iTunes Account Saved Successfully.", buf, 2u);
      }

      v32 = MEMORY[0x277D03550];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_133;
      v46[3] = &unk_278EE3818;
      v49 = &v64;
      v47 = v28;
      v48 = v29;
      v50 = &v68;
      lockedCopy2 = locked;
      v33 = [v32 performBlockUnderPersona:iDCopy block:v46];
      if (v65[3])
      {
        v34 = *DMCLogObjects();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v34, OS_LOG_TYPE_DEFAULT, "RM Account Saved Successfully.", buf, 2u);
        }

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }

      else
      {
        v39 = *DMCLogObjects();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = v69[5];
          *buf = 138543362;
          v80 = v40;
          _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_ERROR, "Error Updating RM Account: %{public}@", buf, 0xCu);
        }

        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v69[5] canceled:0];
      }
    }

    else
    {
      v37 = *DMCLogObjects();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = v69[5];
        *buf = 138543362;
        v80 = v38;
        _os_log_impl(&dword_247E39000, v37, OS_LOG_TYPE_ERROR, "Error Updating iTunes Account: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v69[5] canceled:0];
    }
  }

  else
  {
    v35 = *DMCLogObjects();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v69[5];
      *buf = 138543362;
      v80 = v36;
      _os_log_impl(&dword_247E39000, v35, OS_LOG_TYPE_ERROR, "Error Updating iCloud Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v69[5] canceled:0, v41, v43];
  }

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAccountDescription:v3];
  [v4 dmc_setRemoteManagingAccountIdentifier:*(a1 + 40)];
  [v4 setManagingOwnerIdentifier:*MEMORY[0x277D246C0]];
  [v4 setManagingSourceName:*(a1 + 48)];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D246B8]];
  [v4 dmc_setManagementProfileLocked:*(a1 + 56)];
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_2(void *a1)
{
  v2 = *MEMORY[0x277CB8BA0];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_132(void *a1)
{
  v2 = *MEMORY[0x277CB8D58];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_133(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8CF0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  obj = *(v3 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_2_134;
  v7[3] = &__block_descriptor_33_e19_v16__0__ACAccount_8l;
  v8 = *(a1 + 64);
  v6 = [v4 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v5 error:&obj updateBlock:v7];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (void)_updateAccountsWithRMIdentifier:(id)identifier managedAppleID:(id)d profileIdentifier:(id)profileIdentifier organizationName:(id)name enrollmentURL:(id)l personaID:(id)iD
{
  v92 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  profileIdentifierCopy = profileIdentifier;
  nameCopy = name;
  lCopy = l;
  iDCopy = iD;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v16 = [defaultStore dmc_iCloudAccountWithUsername:dCopy];
  v17 = v16;
  if (v16)
  {
    username = [v16 username];
    dmc_altDSID = [v17 dmc_altDSID];
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 1;
    v20 = profileIdentifierCopy;
    *v80 = 0;
    v81 = v80;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy_;
    v84 = __Block_byref_object_dispose_;
    v85 = 0;
    v49 = dCopy;
    v21 = MEMORY[0x277D03550];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke;
    v69[3] = &unk_278EE3868;
    v78 = &v86;
    v47 = defaultStore;
    v22 = defaultStore;
    v70 = v22;
    v23 = identifierCopy;
    v71 = v23;
    v79 = v80;
    v24 = username;
    v72 = v24;
    v73 = nameCopy;
    v25 = dmc_altDSID;
    v74 = v25;
    v26 = iDCopy;
    v75 = v26;
    v76 = profileIdentifierCopy;
    v77 = lCopy;
    v27 = [v21 performBlockUnderPersona:v26 block:v69];
    if (v87[3])
    {
      v28 = *DMCLogObjects();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v91 = v23;
        _os_log_impl(&dword_247E39000, v28, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
      }

      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_135;
      v67[3] = &unk_278EE3890;
      v68 = v23;
      v29 = MEMORY[0x24C1BD5A0](v67);
      v30 = MEMORY[0x277D03550];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2_136;
      v61[3] = &unk_278EE37D0;
      v65 = &v86;
      v31 = v22;
      v62 = v31;
      v32 = v25;
      v63 = v32;
      v66 = v80;
      v33 = v29;
      v64 = v33;
      v34 = v30;
      profileIdentifierCopy = v20;
      v35 = [v34 performBlockUnderPersona:v26 block:v61];
      if (v87[3])
      {
        v36 = *DMCLogObjects();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v36, OS_LOG_TYPE_DEFAULT, "iCloud Account Saved Successfully.", buf, 2u);
        }

        v37 = MEMORY[0x277D03550];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_137;
        v55[3] = &unk_278EE37D0;
        v59 = &v86;
        v56 = v31;
        v57 = v32;
        v60 = v80;
        v58 = v33;
        v38 = [v37 performBlockUnderPersona:v26 block:v55];
        profileIdentifierCopy = v20;
        if (v87[3])
        {
          v39 = *DMCLogObjects();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_DEFAULT, "iTunes Account Saved Successfully.", buf, 2u);
          }

          [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
        }

        else
        {
          v45 = *DMCLogObjects();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = *(v81 + 5);
            *buf = 138543362;
            v91 = v46;
            _os_log_impl(&dword_247E39000, v45, OS_LOG_TYPE_ERROR, "Error Updating iTunes Account: %{public}@", buf, 0xCu);
          }

          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:*(v81 + 5) canceled:0, v47];
        }
      }

      else
      {
        v43 = *DMCLogObjects();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(v81 + 5);
          *buf = 138543362;
          v91 = v44;
          _os_log_impl(&dword_247E39000, v43, OS_LOG_TYPE_ERROR, "Error Updating iCloud Account: %{public}@", buf, 0xCu);
        }

        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:*(v81 + 5) canceled:0, v47];
      }

      dCopy = v49;
    }

    else
    {
      v41 = *DMCLogObjects();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = *(v81 + 5);
        *buf = 138543362;
        v91 = v42;
        _os_log_impl(&dword_247E39000, v41, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:*(v81 + 5) canceled:0, v47];
    }

    defaultStore = v48;
    _Block_object_dispose(v80, 8);

    _Block_object_dispose(&v86, 8);
  }

  else
  {
    v40 = *DMCLogObjects();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v80 = 0;
      _os_log_impl(&dword_247E39000, v40, OS_LOG_TYPE_ERROR, "Error Missing Apple Account during User Enrollment", v80, 2u);
    }

    v24 = +[DMCEnrollmentFlowController _createMissingAppleAccountForUserEnrollmentError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v24 canceled:0];
  }
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 104) + 8);
  v16 = *(v4 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2;
  v11[3] = &unk_278EE3840;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  LOBYTE(v2) = [v2 dmc_updateAccountWithIdentifier:v3 error:&v16 updateBlock:v11];
  objc_storeStrong((v4 + 40), v16);
  *(*(*(a1 + 96) + 8) + 24) = v2;
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setUsername:v3];
  [v4 setAccountDescription:a1[5]];
  [v4 dmc_setAltDSID:a1[6]];
  [v4 dmc_setPersonaIdentifier:a1[7]];
  [v4 dmc_setManagementProfileIdentifier:a1[8]];
  [v4 dmc_setEnrollmentURL:a1[9]];
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2_136(void *a1)
{
  v2 = *MEMORY[0x277CB8BA0];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_137(void *a1)
{
  v2 = *MEMORY[0x277CB8D58];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

- (void)_reauthenticationCompleteWithRMIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6 = objc_opt_respondsToSelector();

  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543362;
      v12 = identifierCopy;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEBUG, "Reauthentication complete for: %{public}@.", &v11, 0xCu);
    }

    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [managedConfigurationHelper2 reauthenticationComplete];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    managedConfigurationHelper2 = v7;
    managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10 = NSStringFromSelector(sel_reauthenticationComplete);
    v11 = 138543618;
    v12 = managedConfigurationHelper3;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_247E39000, managedConfigurationHelper2, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", &v11, 0x16u);

LABEL_7:
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_requestiCloudSignInConfirmation
{
  objc_initWeak(&location, self);
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke;
  v4[3] = &unk_278EE3640;
  objc_copyWeak(&v5, &location);
  [presenter requestiCloudSignInConfirmationWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke_2;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 33)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _requestiCloudSignInConfirmation]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [v3 _pollNextStep];
  }

  else
  {
    return [v3 _flowTerminatedWithError:0 canceled:1];
  }
}

- (void)_promoteiCloudWithAltDSID:(id)d
{
  dCopy = d;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [defaultStore dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:dCopy];

  objc_initWeak(&location, self);
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  dmc_accountQuotaString = [v6 dmc_accountQuotaString];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke;
  v9[3] = &unk_278EE38B8;
  objc_copyWeak(&v10, &location);
  [presenter showiCloudPromotionPageWithiCloudQuotaString:dmc_accountQuotaString completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workerQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke_2;
    v4[3] = &unk_278EE3120;
    v4[4] = v2;
    [v3 queueBlock:v4];
  }
}

uint64_t __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 32)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[DMCEnrollmentFlowController _promoteiCloudWithAltDSID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v4, 0xCu);
    }
  }

  return [*(a1 + 32) _pollNextStep];
}

- (void)_askForRestoreChoiceWithMAID:(id)d personaID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(location, self);
    presenter2 = [(DMCEnrollmentFlowController *)self presenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke;
    v15[3] = &unk_278EE3640;
    objc_copyWeak(&v16, location);
    [presenter2 suggestRestoreForAccountWithUsername:dCopy personaID:iDCopy completionHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      presenter3 = [(DMCEnrollmentFlowController *)self presenter];
      v14 = NSStringFromSelector(sel_suggestRestoreForAccountWithUsername_personaID_completionHandler_);
      *location = 138543618;
      *&location[4] = presenter3;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", location, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workerQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke_2;
    v4[3] = &unk_278EE3120;
    v4[4] = v2;
    [v3 queueBlock:v4];
  }
}

uint64_t __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 35)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[DMCEnrollmentFlowController _askForRestoreChoiceWithMAID:personaID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v4, 0xCu);
    }
  }

  return [*(a1 + 32) _pollNextStep];
}

- (void)_analyzeESSODetails:(id)details
{
  v40 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  declarations = [detailsCopy declarations];

  if (declarations)
  {
    rmStoreHelper = [(DMCEnrollmentFlowController *)self rmStoreHelper];

    if (rmStoreHelper)
    {
      rmStoreHelper2 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
      declarations2 = [detailsCopy declarations];
      v35 = 0;
      v9 = [rmStoreHelper2 appDetailsFromDeclarations:declarations2 error:&v35];
      v10 = v35;

      if (v9)
      {
        if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
        {
          v11 = MEMORY[0x277CBEB98];
          v12 = [v9 objectForKeyedSubscript:@"BundleID"];
          v13 = v12;
          v14 = MEMORY[0x277CBEBF8];
          if (v12)
          {
            v15 = v12;
          }

          else
          {
            v15 = MEMORY[0x277CBEBF8];
          }

          v16 = [v11 setWithArray:v15];

          v17 = MEMORY[0x277CBEB98];
          appIDs = [detailsCopy appIDs];
          v19 = [(DMCEnrollmentFlowController *)self _bundleIDsFromAppIDs:appIDs];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v14;
          }

          v22 = [v17 setWithArray:v21];

          if ([v16 isEqualToSet:v22])
          {

LABEL_22:
            [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_31:

            goto LABEL_32;
          }

          v31 = *DMCLogObjects();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            appIDs2 = [detailsCopy appIDs];
            *buf = 138543618;
            v37 = appIDs2;
            v38 = 2114;
            v39 = v16;
            _os_log_impl(&dword_247E39000, v32, OS_LOG_TYPE_ERROR, "ErSSO declaration AppIDs do not match: %{public}@ and %{public}@", buf, 0x16u);
          }

          v34 = +[DMCEnrollmentFlowController _createInvalidErSSODeclarationsError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v34 canceled:0];
        }

        else
        {
          v16 = [v9 objectForKeyedSubscript:@"AppStoreID"];
          if (v16)
          {
            iTunesStoreID = [detailsCopy iTunesStoreID];
            v27 = [iTunesStoreID isEqualToNumber:v16];

            if (v27)
            {
              goto LABEL_22;
            }
          }

          v28 = *DMCLogObjects();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = v28;
            iTunesStoreID2 = [detailsCopy iTunesStoreID];
            *buf = 138543618;
            v37 = iTunesStoreID2;
            v38 = 2114;
            v39 = v16;
            _os_log_impl(&dword_247E39000, v29, OS_LOG_TYPE_ERROR, "ErSSO declaration AppStoreIDs do not match: %{public}@ and %{public}@", buf, 0x16u);
          }

          v22 = +[DMCEnrollmentFlowController _createInvalidErSSODeclarationsError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v22 canceled:0];
        }
      }

      else
      {
        v25 = *DMCLogObjects();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = v10;
          _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_ERROR, "Invalid ErSSO declarations: %{public}@", buf, 0xCu);
        }

        v16 = +[DMCEnrollmentFlowController _createInvalidErSSODeclarationsError];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:0];
      }

      goto LABEL_31;
    }

    v23 = *DMCLogObjects();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", buf, 2u);
    }

    v24 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v24 canceled:0];
  }

  else
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

LABEL_32:
}

- (void)_installEnterpriseApplication:(id)application debuggingAppIDs:(id)ds personaID:(id)d
{
  applicationCopy = application;
  dCopy = d;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke;
  v12[3] = &unk_278EE39D0;
  v12[4] = self;
  v13 = dCopy;
  v14 = applicationCopy;
  v10 = applicationCopy;
  v11 = dCopy;
  [(DMCEnrollmentFlowController *)self _fetchBundleIDsWithiTunesItemID:v10 debuggingAppIDs:ds completionHandler:v12];
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2;
  v8[3] = &unk_278EE38E0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  [v4 queueBlock:v8];
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2(id *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if ([a1[4] count])
  {
    if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
    {
LABEL_16:
      if ([MEMORY[0x277D03500] allowAnyESSOApplicationEntitlements])
      {
        v14 = 0;
      }

      else
      {
        v41 = @"com.apple.developer.enrollment-sso-capable";
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      }

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_144;
      v31[3] = &unk_278EE38E0;
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[6];
      v32 = v15;
      v33 = v16;
      v34 = v17;
      v18 = v14;
      v35 = v18;
      v19 = MEMORY[0x24C1BD5A0](v31);
      v20 = MEMORY[0x277D03550];
      v21 = a1[6];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_145;
      v25[3] = &unk_278EE39A8;
      v24 = *(a1 + 2);
      v22 = v24.i64[0];
      v26 = vextq_s8(v24, v24, 8uLL);
      v27 = v18;
      v28 = a1[6];
      v30 = v19;
      v29 = a1[7];
      v23 = v19;
      v9 = v18;
      [v20 setPersonaIdentifierForApps:v22 personaID:v21 completionHandler:v25];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v2 = a1[4];
      v3 = [v2 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v37;
        while (2)
        {
          v6 = 0;
          do
          {
            if (*v37 != v5)
            {
              objc_enumerationMutation(v2);
            }

            if (![a1[5] _appWithBundleIDExists:*(*(&v36 + 1) + 8 * v6)])
            {

              goto LABEL_16;
            }

            ++v6;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v36 objects:v42 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      v7 = a1[5];
      v8 = [a1[4] firstObject];
      v9 = [v7 _appNameWithBundleID:v8];

      v10 = a1[5];
      v11 = [DMCEnrollmentFlowController _createEnterpriseApplicationExistsErrorWithAppName:v9];
      [v10 _flowTerminatedWithError:v11 canceled:0];
    }
  }

  else
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "No application bundle ID", buf, 2u);
    }

    v13 = a1[5];
    v9 = +[DMCEnrollmentFlowController _createMissingEnterpriseApplicationBundleIDError];
    [v13 _flowTerminatedWithError:v9 canceled:0];
  }
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_144(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {

    v14 = *(a1 + 40);
LABEL_13:
    v5 = +[DMCEnrollmentFlowController _createMissingEnterpriseApplicationError];
    goto LABEL_14;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v17;
  while (2)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v16 + 1) + 8 * v7);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v15 = v8;
      v13 = [v10 _validateBundleID:v9 personaID:v11 requiredEntitlements:v12 error:&v15];
      v5 = v15;

      if (v13)
      {
        [*(a1 + 40) setAppBundleID:v9];

        [*(a1 + 40) _pollNextStep];
        goto LABEL_15;
      }

      ++v7;
      v8 = v5;
    }

    while (v4 != v7);
    v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  v14 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  [v14 _flowTerminatedWithError:v5 canceled:0];
LABEL_15:
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_145(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _flowTerminatedWithError:v3 canceled:0];
  }

  else
  {
    if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
    {
      objc_initWeak(&location, *(a1 + 32));
      v4 = [*(a1 + 32) presenter];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_3;
      v14[3] = &unk_278EE3930;
      objc_copyWeak(&v17, &location);
      v15 = *(a1 + 56);
      v16 = *(a1 + 72);
      [v4 requestDebuggingApplicationsInstallation:v5 requiredEntitlements:v6 completionHandler:v14];

      v7 = &v17;
    }

    else
    {
      [*(a1 + 32) _trackDirtyAppBundleIDs:*(a1 + 40) personaID:*(a1 + 56)];
      objc_initWeak(&location, *(a1 + 32));
      v8 = [*(a1 + 32) presenter];
      v9 = *(a1 + 64);
      v10 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_147;
      v11[3] = &unk_278EE3980;
      objc_copyWeak(&v13, &location);
      v12 = *(a1 + 72);
      [v8 requestESSOApplicationInstallationWithITunesItemID:v9 requiredEntitlements:v10 completionHandler:v11];

      v7 = &v13;
    }

    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_3(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_4;
    v12[3] = &unk_278EE3908;
    v12[4] = v10;
    v13 = v7;
    v14 = a1[4];
    v17 = a2;
    v15 = v8;
    v16 = a1[5];
    [v11 queueBlock:v12];
  }
}

uint64_t __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 6)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _installEnterpriseApplication:debuggingAppIDs:personaID:]_block_invoke_4";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  [*(a1 + 32) _trackDirtyAppBundleIDs:*(a1 + 40) personaID:*(a1 + 48)];
  v3 = *(a1 + 56);
  if ((*(a1 + 72) & 1) != 0 || v3)
  {
    return [*(a1 + 32) _flowTerminatedWithError:v3 canceled:?];
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_147(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_148;
    v9[3] = &unk_278EE3958;
    v9[4] = v7;
    v12 = a2;
    v10 = v5;
    v11 = *(a1 + 32);
    [v8 queueBlock:v9];
  }
}

uint64_t __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_148(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 6)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _installEnterpriseApplication:debuggingAppIDs:personaID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if ((*(a1 + 56) & 1) != 0 || v3)
  {
    return [*(a1 + 32) _flowTerminatedWithError:v3 canceled:?];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (BOOL)_validateBundleID:(id)d personaID:(id)iD requiredEntitlements:(id)entitlements error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  entitlementsCopy = entitlements;
  v30 = dCopy;
  v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:error];
  v13 = v12;
  errorCopy = error;
  if (*error)
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      *buf = 138543618;
      v39 = dCopy;
      v40 = 2114;
      v41 = v15;
      _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "Failed to load record for app: %{public}@ with error: %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    managedPersonas = [v12 managedPersonas];
    if ([managedPersonas containsObject:iDCopy])
    {
      v28 = entitlementsCopy;
      v29 = iDCopy;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = entitlementsCopy;
      v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        v16 = 1;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v33 + 1) + 8 * i);
            entitlements = [v13 entitlements];
            v24 = [entitlements objectForKey:v22 ofClass:objc_opt_class()];
            bOOLValue = [v24 BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              v26 = *DMCLogObjects();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v39 = v30;
                v40 = 2114;
                v41 = v22;
                _os_log_impl(&dword_247E39000, v26, OS_LOG_TYPE_ERROR, "Application (%{public}@) doesn't have the required entitlement: %{public}@", buf, 0x16u);
              }

              +[DMCEnrollmentFlowController _createEnterpriseApplicationMissingEntitlementsError];
              *errorCopy = v16 = 0;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v19);
      }

      else
      {
        v16 = 1;
      }

      entitlementsCopy = v28;
      iDCopy = v29;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

- (void)_trackDirtyAppBundleIDs:(id)ds personaID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [dsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(dsCopy);
        }

        v12 = [objc_alloc(MEMORY[0x277D034A8]) initWithBundleID:*(*(&v16 + 1) + 8 * v11) personaID:dCopy];
        dirtyState = [(DMCEnrollmentFlowController *)self dirtyState];
        identifier = [v12 identifier];
        [dirtyState addDirtyBundleID:identifier];

        ++v11;
      }

      while (v9 != v11);
      v9 = [dsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  dirtyState2 = [(DMCEnrollmentFlowController *)self dirtyState];
  [(DMCEnrollmentFlowController *)self _writeDirtyStateToDisk:dirtyState2];
}

- (void)_installESSOConfigurationWithProfileData:(id)data declarations:(id)declarations devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d
{
  extractableCopy = extractable;
  dataCopy = data;
  declarationsCopy = declarations;
  passcodeCopy = passcode;
  contextCopy = context;
  dCopy = d;
  if (declarationsCopy)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_INFO, "Installing ErSSO declarations", buf, 2u);
    }

    appBundleID = [(DMCEnrollmentFlowController *)self appBundleID];
    [(DMCEnrollmentFlowController *)self _installESSODeclarations:declarationsCopy chosenBundleID:appBundleID personaID:dCopy enrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType]];
LABEL_5:

    goto LABEL_10;
  }

  v21 = *DMCLogObjects();
  if (!dataCopy)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_ERROR, "Missing ErSSO configuration", v22, 2u);
    }

    appBundleID = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:appBundleID canceled:0];
    goto LABEL_5;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_INFO, "Installing ErSSO configuration profile", v23, 2u);
  }

  [(DMCEnrollmentFlowController *)self _installESSOConfigurationProfile:dataCopy devicePasscode:passcodeCopy devicePasscodeContext:contextCopy passcodeContextExtractable:extractableCopy personaID:dCopy];
LABEL_10:
}

- (void)_installESSOConfigurationProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d
{
  extractableCopy = extractable;
  v30 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  passcodeCopy = passcode;
  contextCopy = context;
  dCopy = d;
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v27 = 0;
  v17 = [managedConfigurationHelper validateESSOConfigurationProfile:profileCopy error:&v27];
  v18 = v27;

  if (v17)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v20 = [managedConfigurationHelper2 extensionIDsFromESSOConfigurationProfile:profileCopy];
    [(DMCEnrollmentFlowController *)self setExtensionIdentifiersFromConfig:v20];

    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = v21;
      extensionIdentifiersFromConfig = [(DMCEnrollmentFlowController *)self extensionIdentifiersFromConfig];
      *buf = 138543362;
      v29 = extensionIdentifiersFromConfig;
      _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_DEBUG, "ESSO configuration profile identifiers: %{public}@", buf, 0xCu);
    }

    managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke;
    v26[3] = &unk_278EE39F8;
    v26[4] = self;
    LOBYTE(v25) = 0;
    [managedConfigurationHelper3 installEnrollmentProfile:profileCopy devicePasscode:passcodeCopy devicePasscodeContext:contextCopy passcodeContextExtractable:extractableCopy personaID:dCopy rmAccountIdentifier:0 isESSO:v25 essoAppITunesStoreID:0 managedProfileIdentifiers:0 installationSource:0 completionHandler:v26];
  }

  else
  {
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v18 canceled:0];
  }
}

void __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) workerQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke_2;
  v12[3] = &unk_278EE34B0;
  v9 = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  [v8 queueBlock:v12];
}

uint64_t __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "ESSO configuration profile installation failed with error: %{public}@", &v10, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    [*(a1 + 40) setESSOConfigurationProfileIdentifier:*(a1 + 48)];
    v6 = [*(a1 + 40) dirtyState];
    [v6 addDirtyProfileIdentifier:*(a1 + 48)];

    v7 = *(a1 + 40);
    v8 = [v7 dirtyState];
    [v7 _writeDirtyStateToDisk:v8];

    v9 = *(a1 + 40);

    return [v9 _pollNextStep];
  }
}

- (void)_installESSODeclarations:(id)declarations chosenBundleID:(id)d personaID:(id)iD enrollmentType:(unint64_t)type
{
  declarationsCopy = declarations;
  dCopy = d;
  iDCopy = iD;
  rmStoreHelper = [(DMCEnrollmentFlowController *)self rmStoreHelper];

  if (rmStoreHelper)
  {
    rmStoreHelper2 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke;
    v18[3] = &unk_278EE3550;
    v18[4] = self;
    [rmStoreHelper2 createErSSOStoreWithDeclarations:declarationsCopy chosenBundleID:dCopy personaID:iDCopy isUserEnrollment:type == 4 completionHandler:v18];
  }

  else
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v17, 2u);
    }

    v16 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:0];
  }
}

void __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "ErSSO declarations installation failed with error: %{public}@", &v10, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v6 = [*(a1 + 40) dirtyState];
    [v6 setDirtyRMStoreForErSSO];

    v7 = *(a1 + 40);
    v8 = [v7 dirtyState];
    [v7 _writeDirtyStateToDisk:v8];

    v9 = *(a1 + 40);

    return [v9 _waitForESSODeclarations];
  }
}

- (void)_waitForESSODeclarations
{
  rmStoreHelper = [(DMCEnrollmentFlowController *)self rmStoreHelper];

  if (rmStoreHelper)
  {
    rmStoreHelper2 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke;
    v7[3] = &unk_278EE3550;
    v7[4] = self;
    [rmStoreHelper2 waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:v7 completionHandler:60.0];
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v6, 2u);
    }

    rmStoreHelper2 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:rmStoreHelper2 canceled:0];
  }
}

void __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "ErSSO declarations wait failed with error: %{public}@", &v7, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v6 _extensionIDsFromDeclarationProfiles];
  }
}

- (void)_extensionIDsFromDeclarationProfiles
{
  rmStoreHelper = [(DMCEnrollmentFlowController *)self rmStoreHelper];

  if (rmStoreHelper)
  {
    rmStoreHelper2 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke;
    v7[3] = &unk_278EE3A20;
    v7[4] = self;
    [rmStoreHelper2 extensibleSSOProfileIdentifiersWithCompletionHandler:v7];
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v6, 2u);
    }

    rmStoreHelper2 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:rmStoreHelper2 canceled:0];
  }
}

void __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workerQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke_2;
  v11[3] = &unk_278EE34B0;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v7 queueBlock:v11];
}

uint64_t __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "ErSSO declarations profile identifiers failed with error: %{public}@", &v12, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v6 = [*(a1 + 40) managedConfigurationHelper];
    v7 = [v6 extensionIDsFromESSOProfileIdentifiers:*(a1 + 48)];
    [*(a1 + 40) setExtensionIdentifiersFromConfig:v7];

    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v9 extensionIdentifiersFromConfig];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_DEBUG, "ErSSO configuration profile identifiers: %{public}@", &v12, 0xCu);
    }

    return [*(a1 + 40) _pollNextStep];
  }
}

- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke;
  v6[3] = &unk_278EE3550;
  v6[4] = self;
  [managedConfigurationHelper _awaitESSOConfigActivationWithExtensionIdentifiers:identifiersCopy completionHandler:v6];
}

void __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _flowTerminatedWithError:v2 canceled:0];
  }

  else
  {
    return [v1 _pollNextStep];
  }
}

- (void)_manageApplicationWithAppBundleID:(id)d essoDetails:(id)details organization:(id)organization personaID:(id)iD
{
  dCopy = d;
  detailsCopy = details;
  organizationCopy = organization;
  iDCopy = iD;
  profileIdentifier = [(DMCEnrollmentFlowController *)self profileIdentifier];
  if (profileIdentifier && (v15 = profileIdentifier, [detailsCopy declarations], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    iTunesStoreID = [detailsCopy iTunesStoreID];
    associatedDomains = [detailsCopy associatedDomains];
    associatedDomainsEnableDirectDownloads = [detailsCopy associatedDomainsEnableDirectDownloads];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__DMCEnrollmentFlowController__manageApplicationWithAppBundleID_essoDetails_organization_personaID___block_invoke;
    v21[3] = &unk_278EE3550;
    v21[4] = self;
    [managedConfigurationHelper manageApplicationWithBundleID:dCopy iTunesItemID:iTunesStoreID organization:organizationCopy personaID:iDCopy associatedDomains:associatedDomains associatedDomainsEnableDirectDownloads:associatedDomainsEnableDirectDownloads configuration:0 completionHandler:v21];
  }
}

uint64_t __100__DMCEnrollmentFlowController__manageApplicationWithAppBundleID_essoDetails_organization_personaID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _flowTerminatedWithError:a2 canceled:0];
  }

  else
  {
    return [v2 _pollNextStep];
  }
}

- (void)_linkESSOStore:(id)store rmAccountIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  declarations = [store declarations];

  if (declarations)
  {
    rmStoreHelper = [(DMCEnrollmentFlowController *)self rmStoreHelper];

    if (rmStoreHelper)
    {
      rmStoreHelper2 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke;
      v15[3] = &unk_278EE3550;
      v15[4] = self;
      [rmStoreHelper2 linkErSSOStoreToMDMWithProfileIdentifier:profileIdentifierCopy accountIdentifier:identifierCopy completionHandler:v15];
    }

    else
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v14, 2u);
      }

      rmStoreHelper2 = +[DMCEnrollmentFlowController _createGeneralError];
      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:rmStoreHelper2 canceled:0];
    }
  }

  else
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "ErSSO cannot link store with error: %{public}@", &v7, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v6 _pollNextStep];
  }
}

- (void)_restoreSetAsideProfiles
{
  v15 = *MEMORY[0x277D85DE8];
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__DMCEnrollmentFlowController__restoreSetAsideProfiles__block_invoke;
    v10[3] = &unk_278EE3550;
    v10[4] = self;
    [managedConfigurationHelper2 restoreSetAsideCloudConfigAndProfilesWithCompletionHandler:v10];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v9 = NSStringFromSelector(sel_restoreSetAsideCloudConfigAndProfilesWithCompletionHandler_);
      *buf = 138543618;
      v12 = managedConfigurationHelper3;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __55__DMCEnrollmentFlowController__restoreSetAsideProfiles__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "Failed to restore set aside profiles with error: %{public}@", &v5, 0xCu);
    }
  }

  [*(a1 + 32) _pollNextStep];
}

- (void)_fetchCloudConfigWithEnrollmentType:(unint64_t)type isReturnToService:(BOOL)service
{
  serviceCopy = service;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke;
  v24[3] = &unk_278EE3A48;
  v24[4] = self;
  serviceCopy2 = service;
  v6 = MEMORY[0x24C1BD5A0](v24, a2, type);
  if (serviceCopy && (-[DMCEnrollmentFlowController obliterationShelter](self, "obliterationShelter"), v7 = objc_claimAutoreleasedReturnValue(), [v7 cloudConfigurationDetails], mEMORY[0x277D24640] = objc_claimAutoreleasedReturnValue(), v7, mEMORY[0x277D24640]))
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "Device has local Cloud Config profile from Return to Service, restoring...", buf, 2u);
    }

    (v6)[2](v6, mEMORY[0x277D24640], 0);
  }

  else
  {
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    [mEMORY[0x277D24640] refreshDetailsFromDisk];
    details = [mEMORY[0x277D24640] details];
    if (details)
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Cloud Configuration is available locally, returning...", buf, 2u);
      }

      (v6)[2](v6, details, 0);
    }

    else
    {
      managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      activationRecordIndicatesCloudConfigurationIsAvailable = [managedConfigurationHelper activationRecordIndicatesCloudConfigurationIsAvailable];

      if (activationRecordIndicatesCloudConfigurationIsAvailable)
      {
        v14 = *DMCLogObjects();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_DEFAULT, "Activation record indicates cloud configuration is available, will fetch...", buf, 2u);
        }

        presenter = [(DMCEnrollmentFlowController *)self presenter];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          presenter2 = [(DMCEnrollmentFlowController *)self presenter];
          [presenter2 showFetchingCloudConfigurationScene];
        }

        if ([MEMORY[0x277D03500] shouldSimulateDEPCommunication])
        {
          v18 = dispatch_time(0, 1000000000);
          v19 = dispatch_get_global_queue(21, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke_155;
          block[3] = &unk_278EE3A70;
          v22 = v6;
          dispatch_after(v18, v19, block);
        }

        else
        {
          managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
          [managedConfigurationHelper2 fetchCloudConfigWithCompletionHandler:v6];
        }
      }

      else
      {
        v6[2](v6, 0, 0);
      }
    }
  }
}

void __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 copy];
    [*(a1 + 32) setCloudConfig:v6];

    v7 = *(a1 + 32);
LABEL_3:
    [v7 _pollNextStep];
    goto LABEL_9;
  }

  if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_3;
    }

    v8 = v5;
    v9 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = v5 == 0;
    v8 = v5;
  }

  [v7 _flowTerminatedWithError:v8 canceled:v9];
LABEL_9:
}

void __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke_155(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D03500] simulatedCloudConfigProfile];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)_analyzeCloudConfig:(id)config enrollmentType:(unint64_t)type isDoingReturnToService:(BOOL)service obliterationShelter:(id)shelter
{
  serviceCopy = service;
  configCopy = config;
  shelterCopy = shelter;
  v12 = shelterCopy;
  if (!serviceCopy)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_9;
  }

  if (([shelterCopy isSupervised] & 1) == 0)
  {
    v13 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03090]];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "Supervision state has changed, continue as non-RTS flow.", buf, 2u);
      }

      [(DMCEnrollmentFlowController *)self setIsDoingReturnToService:0];
      [v12 clear];
      goto LABEL_7;
    }
  }

  v16 = 1;
LABEL_9:
  migrationDelegate = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v18 = [migrationDelegate enrollmentFlowControllerIsDoingMigration:self];

  v19 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03088]];
  bOOLValue2 = [v19 BOOLValue];

  [(DMCEnrollmentFlowController *)self setCloudConfigIndicatesRapidReturnToService:bOOLValue2];
  if ((v18 & 1) == 0 && !bOOLValue2)
  {
    goto LABEL_18;
  }

  loggingSupport = [(DMCEnrollmentFlowController *)self loggingSupport];
  [loggingSupport enableDebugLoggingForAppPreservation];

  if (!bOOLValue2)
  {
    goto LABEL_18;
  }

  v22 = *DMCLogObjects();
  if (!v18)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_DEFAULT, "Device is doing Rapid Return to Service", buf, 2u);
    }

LABEL_18:
    v24 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03060]];
    v23 = v24;
    if (v24)
    {
      if (v18)
      {
        v25 = *DMCLogObjects();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_ERROR, "ORGO enrollment during MDM Migration is not supported", buf, 2u);
        }

        v26 = +[DMCEnrollmentFlowController _createInvalidCloudConfigError];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v26 canceled:0];
      }

      else
      {
        v31 = MEMORY[0x277CBEBC0];
        v32 = [v24 objectForKeyedSubscript:*MEMORY[0x277D03068]];
        v26 = [v31 URLWithString:v32];

        v33 = [v23 objectForKeyedSubscript:*MEMORY[0x277D03058]];
        v34 = certificatesFromDERCertificateDataArray();
        if (v26)
        {
          [(DMCEnrollmentFlowController *)self setAnchorCertificateRefs:v34];
          [(DMCEnrollmentFlowController *)self setServiceURL:v26];
          [(DMCEnrollmentFlowController *)self setEnrollmentType:1];
          v35 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03120]];
          [(DMCEnrollmentFlowController *)self setIsRenewalFlow:v35 != 0];

          _ORGO_commonSteps = [(DMCEnrollmentFlowController *)self _ORGO_commonSteps];
          [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ORGO_commonSteps];

          [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
        }

        else
        {
          v45 = +[DMCEnrollmentFlowController _createInvalidCloudConfigError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v45 canceled:0];
        }
      }

      goto LABEL_47;
    }

    v57 = v12;
    v56 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03010]];
    v55 = certificatesFromDERCertificateDataArray();
    [(DMCEnrollmentFlowController *)self setAnchorCertificateRefs:?];
    v27 = MEMORY[0x277CBEBC0];
    v28 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03048]];
    v29 = [v27 URLWithString:v28];

    if ([(DMCEnrollmentFlowController *)self _canSkipMDMEnrollmentWithEnrollmentType:type])
    {
      v30 = *DMCLogObjects();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v30, OS_LOG_TYPE_DEFAULT, "The MDM enrollment is done already! Fast forward to AwaitDeviceConfiguration", buf, 2u);
      }

      goto LABEL_34;
    }

    if (v29)
    {
      if (v16)
      {
        mdmProfileData = [v57 mdmProfileData];

        if (!mdmProfileData)
        {
          v53 = *DMCLogObjects();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v53, OS_LOG_TYPE_ERROR, "Return to Service: Does not support webURL!", buf, 2u);
          }

          v54 = +[DMCEnrollmentFlowController _createUnsupportedFeatureError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v54 canceled:0];

          v26 = v56;
          goto LABEL_42;
        }
      }

      v38 = *DMCLogObjects();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v38, OS_LOG_TYPE_DEFAULT, "Cloud config has Web URL", buf, 2u);
      }

      [(DMCEnrollmentFlowController *)self setServiceURL:v29];
      [(DMCEnrollmentFlowController *)self setEnrollmentMethod:6];
      _ADE_deviceEnrollment_webURL_steps = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_webURL_steps];
      [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADE_deviceEnrollment_webURL_steps];

LABEL_34:
      v40 = 1;
      if (!bOOLValue2)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v46 = MEMORY[0x277CBEBC0];
    v47 = [configCopy objectForKeyedSubscript:*MEMORY[0x277D03040]];
    v48 = [v46 URLWithString:v47];

    [(DMCEnrollmentFlowController *)self setServiceURL:v48];
    [(DMCEnrollmentFlowController *)self setEnrollmentMethod:3];
    v49 = *DMCLogObjects();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v48)
    {
      if (v50)
      {
        *buf = 0;
        v51 = "Cloud config has traditional configuration URL.";
LABEL_55:
        _os_log_impl(&dword_247E39000, v49, OS_LOG_TYPE_DEFAULT, v51, buf, 2u);
      }
    }

    else
    {
      if (!v16)
      {
        if (v50)
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v49, OS_LOG_TYPE_DEFAULT, "Cloud config doesn't require an enrollment.", buf, 2u);
        }

        v40 = 0;
LABEL_57:

        if (!bOOLValue2)
        {
LABEL_36:
          if (v40)
          {
            _ADE_postEnrollmentSteps = [(DMCEnrollmentFlowController *)self _ADE_postEnrollmentSteps];
            [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADE_postEnrollmentSteps];

            if (!v18)
            {
              goto LABEL_39;
            }
          }

          else if (!v18)
          {
LABEL_39:
            v26 = v56;
            if (bOOLValue2)
            {
              _ADE_RRTS_snapshotSteps = [(DMCEnrollmentFlowController *)self _ADE_RRTS_snapshotSteps];
              [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADE_RRTS_snapshotSteps];
            }

            [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_42:

            v12 = v57;
LABEL_47:

            goto LABEL_48;
          }

          _ADE_migration_cleanupSteps = [(DMCEnrollmentFlowController *)self _ADE_migration_cleanupSteps];
          [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADE_migration_cleanupSteps];

          goto LABEL_39;
        }

LABEL_35:
        _ADE_bootstrapTokenSteps = [(DMCEnrollmentFlowController *)self _ADE_bootstrapTokenSteps];
        [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADE_bootstrapTokenSteps];

        goto LABEL_36;
      }

      if (v50)
      {
        *buf = 0;
        v51 = "Cloud config has no configuration URL. But we are doing Return to Service!";
        goto LABEL_55;
      }
    }

    _ADE_deviceEnrollment_legacy_steps = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_legacy_steps];
    [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_ADE_deviceEnrollment_legacy_steps];

    v40 = 1;
    goto LABEL_57;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_ERROR, "Rapid Return to Service during MDM Migration is not supported", buf, 2u);
  }

  v23 = +[DMCEnrollmentFlowController _createInvalidCloudConfigError];
  [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v23 canceled:0];
LABEL_48:
}

- (void)_storeCloudConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke;
    v7[3] = &unk_278EE3A98;
    v7[4] = self;
    v8 = configCopy;
    [managedConfigurationHelper storeCloudConfig:v8 completionHandler:v7];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "No cloud config to store. Skipping...", buf, 2u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke_2;
  v8[3] = &unk_278EE34B0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 queueBlock:v8];
}

uint64_t __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Failed to store cloud config. Error: %{public}@", &v11, 0xCu);
    }

    return [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v6 = [*(a1 + 40) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 40) delegate];
      [v8 enrollmentFlowController:*(a1 + 40) didReceiveCloudConfiguration:*(a1 + 48)];
    }

    v9 = [*(a1 + 40) migrationDelegate];
    [v9 enrollmentFlowController:*(a1 + 40) didReceiveCloudConfiguration:*(a1 + 48)];

    v10 = *(a1 + 40);

    return [v10 _pollNextStep];
  }
}

- (void)_waitForDeviceConfiguration
{
  v27 = *MEMORY[0x277D85DE8];
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v12 = NSStringFromSelector(sel_isDeviceConfigured);
      *buf = 138543618;
      v24 = managedConfigurationHelper2;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      managedConfigurationHelper4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v16 = NSStringFromSelector(sel_awaitDeviceConfiguredWithCompletionHandler_);
      *buf = 138543618;
      v24 = managedConfigurationHelper4;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

LABEL_9:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    return;
  }

  managedConfigurationHelper5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  isDeviceConfigured = [managedConfigurationHelper5 isDeviceConfigured];

  if (isDeviceConfigured)
  {

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    presenter = [(DMCEnrollmentFlowController *)self presenter];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      presenter2 = [(DMCEnrollmentFlowController *)self presenter];
      [presenter2 showAwaitingDeviceConfigurationScene];
    }

    objc_initWeak(buf, self);
    managedConfigurationHelper6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke;
    v21[3] = &unk_278EE38B8;
    objc_copyWeak(&v22, buf);
    [managedConfigurationHelper6 awaitDeviceConfiguredWithCompletionHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workerQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke_2;
    v4[3] = &unk_278EE3120;
    v4[4] = v2;
    [v3 queueBlock:v4];
  }
}

uint64_t __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 43)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[DMCEnrollmentFlowController _waitForDeviceConfiguration]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v4, 0xCu);
    }
  }

  return [*(a1 + 32) _pollNextStep];
}

- (void)_askForMDMUsernameAndCredentialWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D035B8]];
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke;
  v15 = &unk_278EE3AC0;
  objc_copyWeak(&v16, &location);
  v8 = MEMORY[0x24C1BD5A0](&v12);
  v9 = [(DMCEnrollmentFlowController *)self presenter:v12];
  v10 = objc_opt_respondsToSelector();

  presenter = [(DMCEnrollmentFlowController *)self presenter];
  if (v10)
  {
    [presenter requestMDMUsernameAndPasswordWithErrorMessage:v7 completionHandler:v8];
  }

  else
  {
    [presenter requestMDMUsernameAndPasswordWithCompletionHandler:v8];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke_2;
    v12[3] = &unk_278EE32D0;
    v12[4] = v10;
    v15 = a4;
    v13 = v7;
    v14 = v8;
    [v11 queueBlock:v12];
  }
}

uint64_t __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 40)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[DMCEnrollmentFlowController _askForMDMUsernameAndCredentialWithError:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v4, 0xCu);
    }
  }

  if (*(a1 + 56) == 1)
  {
    return [*(a1 + 32) _flowTerminatedWithError:0 canceled:1];
  }

  [*(a1 + 32) setUsername:*(a1 + 40)];
  [*(a1 + 32) setPassword:*(a1 + 48)];
  return [*(a1 + 32) _pollNextStep];
}

- (void)_fetchEnrollmentProfileFromServiceURL:(id)l username:(id)username password:(id)password machineInfo:(id)info anchorCertificateRefs:(id)refs
{
  lCopy = l;
  usernameCopy = username;
  passwordCopy = password;
  infoCopy = info;
  refsCopy = refs;
  objc_initWeak(&location, self);
  serviceDiscoveryHelper = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke;
  v18[3] = &unk_278EE3500;
  objc_copyWeak(&v19, &location);
  [serviceDiscoveryHelper fetchEnrollmentProfileWithServiceURL:lCopy username:usernameCopy password:passwordCopy authTokens:0 enrollmentMethod:3 machineInfo:infoCopy anchorCertificateRefs:refsCopy completionHandler:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workerQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke_2;
    v10[3] = &unk_278EE34B0;
    v10[4] = v8;
    v11 = v6;
    v12 = v5;
    [v9 queueBlock:v10];
  }
}

void *__121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 41)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[DMCEnrollmentFlowController _fetchEnrollmentProfileFromServiceURL:username:password:machineInfo:anchorCertificateRefs:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277D033B8]];

    if (!v5)
    {
      return [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
    }

    result = [*(a1 + 32) _handleSoftwareUpdateRequiredError:*(a1 + 40)];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) _handleNeedCredentialsError:*(a1 + 40)];
      if ((result & 1) == 0)
      {
        return [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
      }
    }
  }

  else
  {
    [*(a1 + 32) setProfileData:*(a1 + 48)];
    return [*(a1 + 32) _pollNextStep];
  }

  return result;
}

- (BOOL)_handleNeedCredentialsError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (([domain isEqualToString:*MEMORY[0x277D033B8]] & 1) == 0)
  {

    goto LABEL_6;
  }

  code = [errorCopy code];

  if (code != 23003)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_9;
  }

  stepQueue = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
  _ADE_deviceEnrollment_legacy_additionalNativeAuth_steps = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_legacy_additionalNativeAuth_steps];
  firstObject = [_ADE_deviceEnrollment_legacy_additionalNativeAuth_steps firstObject];
  v10 = [stepQueue indexOfObject:firstObject];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(DMCEnrollmentFlowController *)self setCredentialsError:errorCopy];
    _ADE_deviceEnrollment_legacy_additionalNativeAuth_steps2 = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_legacy_additionalNativeAuth_steps];
    stepQueue2 = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{-[DMCEnrollmentFlowControllerBase nextStepIndex](self, "nextStepIndex"), objc_msgSend(_ADE_deviceEnrollment_legacy_additionalNativeAuth_steps2, "count")}];
    [stepQueue2 insertObjects:_ADE_deviceEnrollment_legacy_additionalNativeAuth_steps2 atIndexes:v13];
  }

  else
  {
    presenter = [(DMCEnrollmentFlowController *)self presenter];
    [presenter showEnrollmentFailure:errorCopy];

    [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:v10];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  v14 = 1;
LABEL_9:

  return v14;
}

- (void)_fetchEnrollmentProfileFromWebURL:(id)l machineInfo:(id)info anchorCertificateRefs:(id)refs isReturnToService:(BOOL)service
{
  serviceCopy = service;
  lCopy = l;
  infoCopy = info;
  refsCopy = refs;
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke;
  v20[3] = &unk_278EE3AE8;
  objc_copyWeak(&v21, &location);
  v13 = MEMORY[0x24C1BD5A0](v20);
  if (serviceCopy && (-[DMCEnrollmentFlowController obliterationShelter](self, "obliterationShelter"), v14 = objc_claimAutoreleasedReturnValue(), [v14 mdmProfileData], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_DEFAULT, "Return to Service: Has local MDM profile.", v19, 2u);
    }

    obliterationShelter = [(DMCEnrollmentFlowController *)self obliterationShelter];
    mdmProfileData = [obliterationShelter mdmProfileData];
    (v13)[2](v13, mdmProfileData, 0, 0);
  }

  else
  {
    obliterationShelter = [(DMCEnrollmentFlowController *)self presenter];
    [obliterationShelter fetchEnrollmentProfileWithWebAuthURL:lCopy machineInfo:infoCopy anchorCertificateRefs:refsCopy completionHandler:v13];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke_2;
    v12[3] = &unk_278EE32D0;
    v12[4] = v10;
    v13 = v8;
    v15 = a3;
    v14 = v7;
    [v11 queueBlock:v12];
  }
}

void *__117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 42)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _fetchEnrollmentProfileFromWebURL:machineInfo:anchorCertificateRefs:isReturnToService:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  result = [*(a1 + 32) _handleSoftwareUpdateRequiredError:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if ((*(a1 + 56) & 1) != 0 || v4)
    {
      return [*(a1 + 32) _flowTerminatedWithError:v4 canceled:?];
    }

    else
    {
      [*(a1 + 32) setProfileData:*(a1 + 48)];
      return [*(a1 + 32) _pollNextStep];
    }
  }

  return result;
}

- (BOOL)_handleSoftwareUpdateRequiredError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277D033B8]];
  if (v6)
  {
    code = [errorCopy code];

    if (code != 23006)
    {
      LOBYTE(v6) = 0;
      goto LABEL_6;
    }

    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D035B0]];
    [(DMCEnrollmentFlowController *)self setSoftwareUpdateInfo:v9];

    domain = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_softwareUpdate_steps];
    stepQueue = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
    v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{-[DMCEnrollmentFlowControllerBase nextStepIndex](self, "nextStepIndex"), objc_msgSend(domain, "count")}];
    [stepQueue insertObjects:domain atIndexes:v11];

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

LABEL_6:
  return v6;
}

- (void)_ensureWiFiConnectionWithWiFiProfile:(id)profile
{
  profileCopy = profile;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke;
  v13[3] = &unk_278EE3B38;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v5 = MEMORY[0x24C1BD5A0](v13);
  if (profileCopy)
  {
    managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_172;
    v10[3] = &unk_278EE3B88;
    objc_copyWeak(&v12, &location);
    v11 = v5;
    LOBYTE(v8) = 0;
    [managedConfigurationHelper installEnrollmentProfile:profileCopy devicePasscode:0 devicePasscodeContext:0 passcodeContextExtractable:0 personaID:0 rmAccountIdentifier:0 isESSO:v8 essoAppITunesStoreID:0 managedProfileIdentifiers:0 installationSource:0 completionHandler:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "WiFi profile is not available.", buf, 2u);
    }

    v5[2](v5);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) presenter];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) presenter];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_171;
    v10[3] = &unk_278EE3B10;
    objc_copyWeak(&v11, (a1 + 40));
    [v4 ensureNetworkConnectionWithCompletionHandler:v10];

    objc_destroyWeak(&v11);
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 presenter];
      v9 = NSStringFromSelector(sel_ensureNetworkConnectionWithCompletionHandler_);
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _pollNextStep];
  }
}

void __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7 afterDelay:1.0];
  }
}

uint64_t __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 45)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _ensureWiFiConnectionWithWiFiProfile:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    return [v3 _flowTerminatedWithError:v4 canceled:0];
  }

  else
  {
    return [v3 _pollNextStep];
  }
}

void __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_172(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2_173;
    v12[3] = &unk_278EE3B60;
    v17 = a3;
    v13 = v8;
    v14 = v10;
    v15 = v7;
    v16 = *(a1 + 32);
    [v11 queueBlock:v12];
  }
}

uint64_t __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2_173(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v16 = 138543362;
      v17 = v4;
      v5 = "Failed to install WiFi profile: %{public}@";
      v6 = v3;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_7:
      _os_log_impl(&dword_247E39000, v6, v7, v5, &v16, v8);
    }
  }

  else
  {
    v9 = *(a1 + 64);
    v10 = *DMCLogObjects();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        LOWORD(v16) = 0;
        v5 = "WiFi profile installation canceled";
        v6 = v10;
        v7 = OS_LOG_TYPE_DEFAULT;
        v8 = 2;
        goto LABEL_7;
      }
    }

    else
    {
      if (v11)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_DEFAULT, "WiFi profile installed", &v16, 2u);
      }

      [*(a1 + 40) setWifiProfileIdentifier:*(a1 + 48)];
      v12 = [*(a1 + 40) dirtyState];
      [v12 addDirtyProfileIdentifier:*(a1 + 48)];

      v13 = *(a1 + 40);
      v14 = [v13 dirtyState];
      [v13 _writeDirtyStateToDisk:v14];
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)_restoreLanguage:(id)language locale:(id)locale
{
  v21 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  localeCopy = locale;
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      presenter2 = [(DMCEnrollmentFlowController *)self presenter];
      v14 = NSStringFromSelector(sel_updateLanguage_locale_completionHandler_);
      *location = 138543618;
      *&location[4] = presenter2;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", location, 0x16u);
    }

    goto LABEL_10;
  }

  if (![languageCopy length] || !objc_msgSend(localeCopy, "length"))
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Not able to set language & locale", location, 2u);
    }

LABEL_10:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    goto LABEL_11;
  }

  objc_initWeak(location, self);
  presenter3 = [(DMCEnrollmentFlowController *)self presenter];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke;
  v16[3] = &unk_278EE3B10;
  objc_copyWeak(&v17, location);
  [presenter3 updateLanguage:languageCopy locale:localeCopy completionHandler:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(location);
LABEL_11:
}

void __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7];
  }
}

uint64_t __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 46)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _restoreLanguage:locale:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to update language & locale due to error: %{public}@", &v6, 0xCu);
    }
  }

  return [*(a1 + 32) _pollNextStep];
}

- (void)_ensureDeviceActivation
{
  v15 = *MEMORY[0x277D85DE8];
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    objc_initWeak(location, self);
    presenter2 = [(DMCEnrollmentFlowController *)self presenter];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke;
    v10[3] = &unk_278EE3B10;
    objc_copyWeak(&v11, location);
    [presenter2 ensureActivationWithCompletionHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      presenter3 = [(DMCEnrollmentFlowController *)self presenter];
      v9 = NSStringFromSelector(sel_ensureActivationWithCompletionHandler_);
      *location = 138543618;
      *&location[4] = presenter3;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", location, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7];
  }
}

uint64_t __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 48)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _ensureDeviceActivation]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    return [v3 _flowTerminatedWithError:v4 canceled:0];
  }

  else
  {
    return [v3 _pollNextStep];
  }
}

- (void)_promptForSoftwareUpdateWithSoftwareUpdateInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke;
  v6[3] = &unk_278EE3B10;
  objc_copyWeak(&v7, &location);
  [presenter requestSoftwareUpdateWithInfoDictionary:infoCopy completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7];
  }
}

uint64_t __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 44)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[DMCEnrollmentFlowController _promptForSoftwareUpdateWithSoftwareUpdateInfo:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to trigger software update due to error: %{public}@", &v7, 0xCu);
    }

    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return [*(a1 + 32) _flowTerminatedWithError:v5 canceled:v5 == 0];
}

- (void)_updateCloudConfigWithRMAccountIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [managedConfigurationHelper2 updateCloudConfigurationWithRMAccountIdentifier:identifierCopy];
  }

  else
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v11 = NSStringFromSelector(sel_updateCloudConfigurationWithRMAccountIdentifier_);
      v12 = 138543618;
      v13 = managedConfigurationHelper3;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", &v12, 0x16u);
    }
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_initiateDEPPushTokenSync
{
  v15 = *MEMORY[0x277D85DE8];
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke;
    v10[3] = &unk_278EE3550;
    v10[4] = self;
    [managedConfigurationHelper2 initiateDEPPushTokenSyncWithCompletionHandler:v10];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v9 = NSStringFromSelector(sel_initiateDEPPushTokenSyncWithCompletionHandler_);
      *buf = 138543618;
      v12 = managedConfigurationHelper3;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to initiate DEP push token sync with error: %{public}@", &v6, 0xCu);
    }
  }

  return [*(a1 + 40) _pollNextStep];
}

- (void)_processPotentialMigrationIfNeededWithEnrollmentType:(unint64_t)type cloudConfig:(id)config
{
  configCopy = config;
  if (type == 9 && (-[DMCEnrollmentFlowController migrationDelegate](self, "migrationDelegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 enrollmentFlowControllerIsDoingMigration:self], v7, !v8) && +[DMCMigrationHelper isMigrationSupportedWithExistingCloudConfig:outReason:](DMCMigrationHelper, "isMigrationSupportedWithExistingCloudConfig:outReason:", configCopy, 0))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke;
    v9[3] = &unk_278EE3BD8;
    v9[4] = self;
    [DMCMigrationHelper makeEndMigrationRequestIfNeededWithCloudConfig:configCopy success:1 completionHandler:v9];
  }

  else
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workerQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_2;
  v10[3] = &unk_278EE34B0;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v7 queueBlock:v10];
}

void __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 32);
    *buf = 138543362;
    v20 = v5;
    v6 = "Failed to make end migration request with error: %{public}@";
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 40);
    *buf = 138543362;
    v20 = v9;
    v6 = "End Migration request came back with response: %{public}@";
    v7 = v4;
    v8 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_247E39000, v7, v8, v6, buf, 0xCu);
LABEL_7:
  v10 = [*(a1 + 48) managedConfigurationHelper];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [*(a1 + 48) managedConfigurationHelper];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_185;
    v18[3] = &unk_278EE3BB0;
    v18[4] = *(a1 + 48);
    [v12 evaluateMigrationStatusWithPollFromServer:0 completionHandler:v18];
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = v13;
      v16 = [v14 managedConfigurationHelper];
      v17 = NSStringFromSelector(sel_evaluateMigrationStatusWithPollFromServer_completionHandler_);
      *buf = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [*(a1 + 48) _pollNextStep];
  }
}

void __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_185(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "evaluateMigrationStatusWithPollFromServer came back with error: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) _pollNextStep];
}

- (void)_awaitDDMAppConfigurationWithProfileIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    installedMDMProfileIdentifier = identifierCopy;
LABEL_4:
    managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke;
      v15[3] = &unk_278EE3550;
      v15[4] = self;
      [managedConfigurationHelper2 waitForDDMAppsToBeRegisteredForMDMProfile:installedMDMProfileIdentifier completionHandler:v15];
    }

    else
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        v13 = NSStringFromSelector(sel_waitForDDMAppsToBeRegisteredForMDMProfile_completionHandler_);
        *buf = 138543618;
        v17 = managedConfigurationHelper3;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
      }

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    }

    return;
  }

  managedConfigurationHelper4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  installedMDMProfileIdentifier = [managedConfigurationHelper4 installedMDMProfileIdentifier];

  if (installedMDMProfileIdentifier)
  {
    goto LABEL_4;
  }

  v14 = *DMCLogObjects();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "Couldn't find profile identifier. Continuing...", buf, 2u);
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to wait for DDM apps configuration with error: %{public}@", &v6, 0xCu);
    }
  }

  return [*(a1 + 40) _pollNextStep];
}

- (void)_awaitApplicationInstallation
{
  v15 = *MEMORY[0x277D85DE8];
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke;
    v10[3] = &unk_278EE3550;
    v10[4] = self;
    [managedConfigurationHelper2 awaitPendingApplicationInstallationWithObserver:self completionHandler:v10];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v9 = NSStringFromSelector(sel_awaitPendingApplicationInstallationWithObserver_completionHandler_);
      *buf = 138543618;
      v12 = managedConfigurationHelper3;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to wait for app installation with error: %{public}@", &v6, 0xCu);
    }
  }

  return [*(a1 + 40) _pollNextStep];
}

- (void)_cleanupOrphanedAppsIfNeededIsDoingRRTS:(BOOL)s
{
  migrationDelegate = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v6 = [migrationDelegate enrollmentFlowControllerIsDoingMigration:self];

  if ((v6 & 1) != 0 || s)
  {
    managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke;
    v9[3] = &unk_278EE3550;
    v9[4] = self;
    [managedConfigurationHelper cleanupOrphanedAppsWithCompletionHandler:v9];
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "Device is not doing migration nor Rapid Return to Service, continue...", buf, 2u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to clean up orphaned apps with error: %{public}@", &v7, 0xCu);
    }
  }

  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "cleanupOrphanedAppsWithCompletionHandler done", &v7, 2u);
  }

  return [*(a1 + 40) _pollNextStep];
}

- (void)_takeSnapshot
{
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__DMCEnrollmentFlowController__takeSnapshot__block_invoke;
  v4[3] = &unk_278EE3120;
  v4[4] = self;
  [workerQueue queueBlock:v4 afterDelay:1.0];
}

void __44__DMCEnrollmentFlowController__takeSnapshot__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277D035E0];
  v4 = [v2 deleteSystemVolumeSnapshotWithName:*MEMORY[0x277D035E0]];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v5 captureSystemVolumeSnapshotWithName:v3];

    if (v6)
    {
      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v3;
        _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "Snapshot created with name: %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) _pollNextStep];
      return;
    }

    v8 = *(a1 + 32);
    v9 = +[DMCEnrollmentFlowController _createFailedToCaptureSnapshotError];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = +[DMCEnrollmentFlowController _createFailedToDeleteSnapshotError];
  }

  v10 = v9;
  [v8 _flowTerminatedWithError:? canceled:?];
}

- (void)_createAndSyncBootstrapTokenWithDevicePasscode:(id)passcode devicePasscodeContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  contextCopy = context;
  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke;
    v15[3] = &unk_278EE3BB0;
    v15[4] = self;
    [managedConfigurationHelper2 generateAndSyncBootstrapTokenWithPasscode:passcodeCopy passcodeContext:contextCopy completionHandler:v15];
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v14 = NSStringFromSelector(sel_generateAndSyncBootstrapTokenWithPasscode_passcodeContext_completionHandler_);
      *buf = 138543618;
      v17 = managedConfigurationHelper3;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) workerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke_2;
  v9[3] = &unk_278EE31E0;
  v12 = a2;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 queueBlock:v9];
}

uint64_t __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v10 = *(a1 + 48);
    v11 = *DMCLogObjects();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v12)
      {
        return [*(a1 + 40) _pollNextStep];
      }

      *v14 = 0;
      v6 = "Generate and sync bootstrap token succeeded.";
    }

    else
    {
      if (!v12)
      {
        return [*(a1 + 40) _pollNextStep];
      }

      *v14 = 0;
      v6 = "Bootstrap token exists already.";
    }

    v7 = v11;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
    goto LABEL_10;
  }

  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    *v14 = 138543618;
    *&v14[4] = v4;
    *&v14[12] = 2048;
    *&v14[14] = v5;
    v6 = "Generate and sync bootstrap token failed with error: %{public}@. Token created: %ld";
    v7 = v3;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
LABEL_10:
    _os_log_impl(&dword_247E39000, v7, v8, v6, v14, v9);
  }

  return [*(a1 + 40) _pollNextStep];
}

void __48__DMCEnrollmentFlowController__blockMDMCommands__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DMCEnrollmentFlowController__blockMDMCommands__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __48__DMCEnrollmentFlowController__blockMDMCommands__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to block MDM commands with error: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) setHasBlockedMDMCommands:1];
  }

  return [*(a1 + 40) _pollNextStep];
}

- (void)_unblockMDMCommandsIfNeededHasBlocked:(BOOL)blocked
{
  if (blocked)
  {
    [(DMCEnrollmentFlowController *)self _unblockMDMCommands];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_enrollmentTypeAuthorizedBySDP:(unint64_t)p completion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (p > 0xA || ((1 << p) & 0x78F) != 0)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    [MEMORY[0x277D03580] isAuthorizedForOperation:1 completion:completionCopy];
  }
}

- (DMCEnrollmentFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DMCEnrollmentFlowMigrationDelegate)migrationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDelegate);

  return WeakRetained;
}

- (id)_commonStepsForEnrollmentType:(unint64_t)type isReturnToService:(BOOL)service
{
  _ADxE_commonSteps = MEMORY[0x277CBEBF8];
  if (type > 5)
  {
    if (type > 7)
    {
      if (type == 8)
      {
        _ADxE_commonSteps = [(DMCEnrollmentFlowController *)self _Watch_deviceEnrollmentSteps:8];
        goto LABEL_20;
      }

      if (type != 9)
      {
        goto LABEL_20;
      }

      if (service)
      {
        [(DMCEnrollmentFlowController *)self _ADE_RTS_commonSteps];
      }

      else
      {
        [(DMCEnrollmentFlowController *)self _ADE_commonSteps];
      }
    }

    else if (type == 6)
    {
      [(DMCEnrollmentFlowController *)self _PDUE_UserEnrollment_commonSteps:6];
    }

    else
    {
      [(DMCEnrollmentFlowController *)self _MDM_SharediPad_commonSteps:7];
    }
    _ADxE_commonSteps = ;
    goto LABEL_20;
  }

  if (type > 3)
  {
    _ADxE_commonSteps = [(DMCEnrollmentFlowController *)self _ADxE_commonSteps];
  }

  else
  {
    if (type == 1)
    {
LABEL_6:
      _ADxE_commonSteps = [(DMCEnrollmentFlowController *)self _ORGO_commonSteps];
      goto LABEL_20;
    }

    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_6;
    }

    _ADxE_commonSteps = [(DMCEnrollmentFlowController *)self _ORGO_MACBuddy_commonSteps:2];
  }

LABEL_20:

  return _ADxE_commonSteps;
}

- (id)_ORGO_MAIDEnrollmentSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MAIDEnrollmentSteps_onceToken != -1)
  {
    dispatch_once(&_ORGO_MAIDEnrollmentSteps_onceToken, block);
  }

  return _ORGO_MAIDEnrollmentSteps_ret;
}

void __66__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) _permanentAuthSteps];
  v19[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v19[1] = v4;
  v5 = [*(a1 + 32) _signInMAIDSteps];
  v19[2] = v5;
  v19[3] = &unk_2859F9190;
  v19[4] = &unk_2859F91A8;
  v6 = [*(a1 + 32) _enrollmentSteps];
  v19[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v2 copy];
  v14 = _ORGO_MAIDEnrollmentSteps_ret;
  _ORGO_MAIDEnrollmentSteps_ret = v13;
}

- (id)_ORGO_MAIDEnrollmentSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MAIDEnrollmentSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ORGO_MAIDEnrollmentSteps_orgToken_onceToken, block);
  }

  return _ORGO_MAIDEnrollmentSteps_orgToken_ret;
}

void __75__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps_orgToken__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) _permanentAuthSteps];
  v19[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v19[1] = v4;
  v5 = [*(a1 + 32) _enrollmentSteps];
  v19[2] = v5;
  v6 = [*(a1 + 32) _signInMAIDSteps];
  v19[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v2 copy];
  v14 = _ORGO_MAIDEnrollmentSteps_orgToken_ret;
  _ORGO_MAIDEnrollmentSteps_orgToken_ret = v13;
}

- (id)_ORGO_MACBuddy_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MACBuddy_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ORGO_MACBuddy_firstPartSteps_onceToken, block);
  }

  return _ORGO_MACBuddy_firstPartSteps_ret;
}

void __70__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_firstPartSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _permanentAuthSteps];
  v18[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v18[1] = v4;
  v5 = [*(a1 + 32) _enrollmentSteps];
  v18[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v2 copy];
  v13 = _ORGO_MACBuddy_firstPartSteps_ret;
  _ORGO_MACBuddy_firstPartSteps_ret = v12;
}

- (id)_ORGO_MACBuddy_secondPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_secondPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MACBuddy_secondPartSteps_onceToken != -1)
  {
    dispatch_once(&_ORGO_MACBuddy_secondPartSteps_onceToken, block);
  }

  return _ORGO_MACBuddy_secondPartSteps_ret;
}

void __71__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_secondPartSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18[0] = &unk_2859F9160;
  v3 = [*(a1 + 32) _silentAuthSteps];
  v18[1] = v3;
  v4 = [*(a1 + 32) _createRMAccountSteps];
  v18[2] = v4;
  v18[3] = &unk_2859F91C0;
  v5 = [*(a1 + 32) _signInMAIDSteps];
  v18[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v2 copy];
  v13 = _ORGO_MACBuddy_secondPartSteps_ret;
  _ORGO_MACBuddy_secondPartSteps_ret = v12;
}

- (id)_ADxE_ABE_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DMCEnrollmentFlowController_Sequence___ADxE_ABE_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_firstPartSteps_onceToken, block);
  }

  return _ADxE_ABE_firstPartSteps_ret;
}

void __65__DMCEnrollmentFlowController_Sequence___ADxE_ABE_firstPartSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ephemeralAuthSteps];
  v17[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_ABE_firstPartSteps_ret;
  _ADxE_ABE_firstPartSteps_ret = v11;
}

- (id)_ADxE_ABE_secondPartSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_secondPartSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_secondPartSteps_default_onceToken, block);
  }

  return _ADxE_ABE_secondPartSteps_default_ret;
}

void __74__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_default__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) _ADxE_secondPart_commonSteps_default];
  v16[0] = v3;
  v16[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_secondPartSteps_default_ret;
  _ADxE_ABE_secondPartSteps_default_ret = v10;
}

- (id)_ADxE_ABE_secondPartSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_secondPartSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_secondPartSteps_orgToken_onceToken, block);
  }

  return _ADxE_ABE_secondPartSteps_orgToken_ret;
}

void __75__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_orgToken__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) _ADxE_secondPart_commonSteps_orgToken];
  v16[0] = v3;
  v16[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_secondPartSteps_orgToken_ret;
  _ADxE_ABE_secondPartSteps_orgToken_ret = v10;
}

- (id)_ADxE_ABE_ESSO_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_ESSO_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_ESSO_firstPartSteps_onceToken, block);
  }

  return _ADxE_ABE_ESSO_firstPartSteps_ret;
}

void __70__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_firstPartSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_firstPart_commonSteps];
  v17[0] = v3;
  v4 = [*(a1 + 32) _ADxE_ABE_firstPartSteps];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_ABE_ESSO_firstPartSteps_ret;
  _ADxE_ABE_ESSO_firstPartSteps_ret = v11;
}

- (id)_ADxE_ABE_ESSO_secondPartSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_ESSO_secondPartSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_ESSO_secondPartSteps_default_onceToken, block);
  }

  return _ADxE_ABE_ESSO_secondPartSteps_default_ret;
}

void __79__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_default__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_secondPart_commonSteps_default];
  v16[0] = v3;
  v16[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_ESSO_secondPartSteps_default_ret;
  _ADxE_ABE_ESSO_secondPartSteps_default_ret = v10;
}

- (id)_ADxE_ABE_ESSO_secondPartSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_ESSO_secondPartSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_ESSO_secondPartSteps_orgToken_onceToken, block);
  }

  return _ADxE_ABE_ESSO_secondPartSteps_orgToken_ret;
}

void __80__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_orgToken__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_secondPart_commonSteps_orgToken];
  v16[0] = v3;
  v16[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_ESSO_secondPartSteps_orgToken_ret;
  _ADxE_ABE_ESSO_secondPartSteps_orgToken_ret = v10;
}

- (id)_ADxE_thirdParty_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_thirdParty_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_thirdParty_firstPartSteps_onceToken, block);
  }

  return _ADxE_thirdParty_firstPartSteps_ret;
}

void __72__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_firstPartSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_thirdParty_fetchEnrollmentProfileSteps];
  v17[0] = v3;
  v17[1] = &unk_2859F9250;
  v4 = [*(a1 + 32) _ephemeralAuthSteps];
  v17[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_thirdParty_firstPartSteps_ret;
  _ADxE_thirdParty_firstPartSteps_ret = v11;
}

- (id)_ADxE_thirdParty_ESSO_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_ESSO_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_thirdParty_ESSO_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_thirdParty_ESSO_firstPartSteps_onceToken, block);
  }

  return _ADxE_thirdParty_ESSO_firstPartSteps_ret;
}

void __77__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_ESSO_firstPartSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_firstPart_commonSteps];
  v17[0] = v3;
  v4 = [*(a1 + 32) _ADxE_thirdParty_firstPartSteps];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_thirdParty_ESSO_firstPartSteps_ret;
  _ADxE_thirdParty_ESSO_firstPartSteps_ret = v11;
}

- (id)_ADxE_secondPart_commonSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_secondPart_commonSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_secondPart_commonSteps_default_onceToken, block);
  }

  return _ADxE_secondPart_commonSteps_default_ret;
}

void __77__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_default__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) _ADxE_consentAndCreatePersonaSteps];
  v20[0] = v3;
  v4 = [*(a1 + 32) _silentAuthSteps];
  v20[1] = v4;
  v5 = [*(a1 + 32) _signInMAIDSteps];
  v20[2] = v5;
  v6 = [*(a1 + 32) _enrollmentSteps];
  v20[3] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v20[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_secondPart_commonSteps_default_ret;
  _ADxE_secondPart_commonSteps_default_ret = v14;
}

- (id)_ADxE_secondPart_commonSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_secondPart_commonSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_secondPart_commonSteps_orgToken_onceToken, block);
  }

  return _ADxE_secondPart_commonSteps_orgToken_ret;
}

void __78__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_orgToken__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) _ADxE_consentAndCreatePersonaSteps];
  v20[0] = v3;
  v4 = [*(a1 + 32) _enrollmentSteps];
  v20[1] = v4;
  v5 = [*(a1 + 32) _silentAuthSteps];
  v20[2] = v5;
  v6 = [*(a1 + 32) _signInMAIDSteps];
  v20[3] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v20[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_secondPart_commonSteps_orgToken_ret;
  _ADxE_secondPart_commonSteps_orgToken_ret = v14;
}

- (id)_ADxE_ESSO_firstPart_commonSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_firstPart_commonSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ESSO_firstPart_commonSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_ESSO_firstPart_commonSteps_onceToken, block);
  }

  return _ADxE_ESSO_firstPart_commonSteps_ret;
}

void __73__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_firstPart_commonSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_consentAndCreatePersonaSteps];
  v17[0] = v3;
  v4 = [*(a1 + 32) _ADxE_ESSO_installAppSteps];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_ESSO_firstPart_commonSteps_ret;
  _ADxE_ESSO_firstPart_commonSteps_ret = v11;
}

- (id)_ADxE_ESSO_secondPart_commonSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ESSO_secondPart_commonSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_ESSO_secondPart_commonSteps_default_onceToken, block);
  }

  return _ADxE_ESSO_secondPart_commonSteps_default_ret;
}

void __82__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_default__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = &unk_2859F92B0;
  v3 = [*(a1 + 32) _silentAuthSteps];
  v20[1] = v3;
  v4 = [*(a1 + 32) _signInMAIDSteps];
  v20[2] = v4;
  v5 = [*(a1 + 32) _enrollmentSteps];
  v20[3] = v5;
  v6 = [*(a1 + 32) _ADxE_ESSO_postEnrollmentSteps];
  v20[4] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v20[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_ESSO_secondPart_commonSteps_default_ret;
  _ADxE_ESSO_secondPart_commonSteps_default_ret = v14;
}

- (id)_ADxE_ESSO_secondPart_commonSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ESSO_secondPart_commonSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_ESSO_secondPart_commonSteps_orgToken_onceToken, block);
  }

  return _ADxE_ESSO_secondPart_commonSteps_orgToken_ret;
}

void __83__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_orgToken__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = &unk_2859F92B0;
  v3 = [*(a1 + 32) _enrollmentSteps];
  v20[1] = v3;
  v4 = [*(a1 + 32) _ADxE_ESSO_postEnrollmentSteps];
  v20[2] = v4;
  v5 = [*(a1 + 32) _silentAuthSteps];
  v20[3] = v5;
  v6 = [*(a1 + 32) _signInMAIDSteps];
  v20[4] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v20[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_ESSO_secondPart_commonSteps_orgToken_ret;
  _ADxE_ESSO_secondPart_commonSteps_orgToken_ret = v14;
}

- (id)_ADE_commonSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DMCEnrollmentFlowController_Sequence___ADE_commonSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_commonSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_commonSteps_onceToken, block);
  }

  return _ADE_commonSteps_ret;
}

void __57__DMCEnrollmentFlowController_Sequence___ADE_commonSteps__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = &unk_2859F90D0;
  v16[1] = &unk_2859F9388;
  v16[2] = &unk_2859F91D8;
  v3 = [*(a1 + 32) _fetchAndAnalyzeCloudConfigSteps];
  v16[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_commonSteps_ret;
  _ADE_commonSteps_ret = v10;
}

- (id)_ADE_RTS_commonSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DMCEnrollmentFlowController_Sequence___ADE_RTS_commonSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_RTS_commonSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_RTS_commonSteps_onceToken, block);
  }

  return _ADE_RTS_commonSteps_ret;
}

void __61__DMCEnrollmentFlowController_Sequence___ADE_RTS_commonSteps__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = &unk_2859F90D0;
  v16[1] = &unk_2859F93A0;
  v16[2] = &unk_2859F91D8;
  v16[3] = &unk_2859F93B8;
  v3 = [*(a1 + 32) _fetchAndAnalyzeCloudConfigSteps];
  v16[4] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_RTS_commonSteps_ret;
  _ADE_RTS_commonSteps_ret = v10;
}

- (id)_ADE_migration_cleanupSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DMCEnrollmentFlowController_Sequence___ADE_migration_cleanupSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_migration_cleanupSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_migration_cleanupSteps_onceToken, block);
  }

  return _ADE_migration_cleanupSteps_ret;
}

void __68__DMCEnrollmentFlowController_Sequence___ADE_migration_cleanupSteps__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = &unk_2859F94A8;
  v3 = [*(a1 + 32) _ADE_cleanupOrphanedAppsSteps];
  v16[1] = v3;
  v16[2] = &unk_2859F94C0;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_migration_cleanupSteps_ret;
  _ADE_migration_cleanupSteps_ret = v10;
}

- (id)_ADE_RRTS_snapshotSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DMCEnrollmentFlowController_Sequence___ADE_RRTS_snapshotSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_RRTS_snapshotSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_RRTS_snapshotSteps_onceToken, block);
  }

  return _ADE_RRTS_snapshotSteps_ret;
}

void __64__DMCEnrollmentFlowController_Sequence___ADE_RRTS_snapshotSteps__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = &unk_2859F94A8;
  v3 = [*(a1 + 32) _ADE_cleanupOrphanedAppsSteps];
  v16[1] = v3;
  v16[2] = &unk_2859F94D8;
  v16[3] = &unk_2859F94F0;
  v16[4] = &unk_2859F94C0;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_RRTS_snapshotSteps_ret;
  _ADE_RRTS_snapshotSteps_ret = v10;
}

- (id)_ephemeralAuthSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DMCEnrollmentFlowController_Sequence___ephemeralAuthSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ephemeralAuthSteps_onceToken != -1)
  {
    dispatch_once(&_ephemeralAuthSteps_onceToken, block);
  }

  return _ephemeralAuthSteps_ret;
}

void __60__DMCEnrollmentFlowController_Sequence___ephemeralAuthSteps__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = &unk_2859F9550;
  v3 = [*(a1 + 32) _createRMAccountSteps];
  v16[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ephemeralAuthSteps_ret;
  _ephemeralAuthSteps_ret = v10;
}

- (id)_permanentAuthSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DMCEnrollmentFlowController_Sequence___permanentAuthSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_permanentAuthSteps_onceToken != -1)
  {
    dispatch_once(&_permanentAuthSteps_onceToken, block);
  }

  return _permanentAuthSteps_ret;
}

void __60__DMCEnrollmentFlowController_Sequence___permanentAuthSteps__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = &unk_2859F9568;
  v3 = [*(a1 + 32) _createRMAccountSteps];
  v16[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _permanentAuthSteps_ret;
  _permanentAuthSteps_ret = v10;
}

- (id)_stepsWithUI
{
  if (_stepsWithUI_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Sequence) _stepsWithUI];
  }

  v3 = _stepsWithUI_steps;

  return v3;
}

uint64_t __53__DMCEnrollmentFlowController_Sequence___stepsWithUI__block_invoke()
{
  _stepsWithUI_steps = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9CE8];

  return MEMORY[0x2821F96F8]();
}

- (id)_postEnrollmentSteps
{
  if (_postEnrollmentSteps_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Sequence) _postEnrollmentSteps];
  }

  v3 = _postEnrollmentSteps_steps;

  return v3;
}

uint64_t __61__DMCEnrollmentFlowController_Sequence___postEnrollmentSteps__block_invoke()
{
  _postEnrollmentSteps_steps = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9D00];

  return MEMORY[0x2821F96F8]();
}

- (id)_nameForStep:(unint64_t)step
{
  if (step > 0x3A)
  {
    return @"PromptForUsername";
  }

  else
  {
    return off_278EE3C18[step];
  }
}

- (id)_machineInfoWithEnrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method isDoingReturnToService:(BOOL)service isRapidReturnToService:(BOOL)toService
{
  v9 = toService | ~service;
  migrationDelegate = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v11 = [migrationDelegate enrollmentFlowControllerIsDoingMigration:self];

  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v13 = [managedConfigurationHelper getMachineInfoForEnrollmentType:type enrollmentMethod:method canRequestSoftwareUpdate:v9 & (v11 ^ 1u)];

  return v13;
}

- (void)_addNotification
{
  presenter = [(DMCEnrollmentFlowController *)self presenter];
  if (objc_opt_respondsToSelector())
  {
    presenter2 = [(DMCEnrollmentFlowController *)self presenter];
    notificationNameForApplicationWillTerminate = [presenter2 notificationNameForApplicationWillTerminate];

    if (!notificationNameForApplicationWillTerminate)
    {
      return;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__receivedApplicationWillTerminateNotification_ name:notificationNameForApplicationWillTerminate object:0];

    v6 = notificationNameForApplicationWillTerminate;
  }

  else
  {
    v6 = presenter;
  }
}

- (void)_receivedApplicationWillTerminateNotification:(id)notification
{
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "DMCEnrollmentFlowController: Settings app will be terminated!", v5, 2u);
  }

  [(DMCEnrollmentFlowController *)self terminateEnrollmentFlow];
}

- (id)_guardAgainstConflictingAccountsWithUsername:(id)username altDSID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  dCopy = d;
  if ([usernameCopy length])
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v17 = 0;
    v8 = [defaultStore dmc_conflictingAccountsExistWithUsername:usernameCopy error:&v17];
    v9 = v17;

    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ((v8 & 1) == 0)
  {
    if (![dCopy length])
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
    v16 = 0;
    v8 = [defaultStore2 dmc_conflictingAccountsExistWithAltDSID:dCopy error:&v16];
    v9 = v16;
  }

LABEL_8:
  if (!v9)
  {
    if (v8)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D032F0];
      v14 = DMCErrorArray();
      v9 = [v12 DMCErrorWithDomain:v13 code:15007 descriptionArray:v14 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = *DMCLogObjects();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch accounts with error: %{public}@", buf, 0xCu);
  }

LABEL_14:

  return v9;
}

- (void)_updateCredentialForAccount:(id)account authTokens:(id)tokens
{
  accountCopy = account;
  tokensCopy = tokens;
  dmc_enrollmentMethod = [accountCopy dmc_enrollmentMethod];
  if ((dmc_enrollmentMethod - 1) >= 2)
  {
    if (dmc_enrollmentMethod != 5)
    {
      goto LABEL_6;
    }

    v7 = [MEMORY[0x277D24680] serializeTokens:tokensCopy];
  }

  else
  {
    v7 = [tokensCopy objectForKeyedSubscript:*MEMORY[0x277D245C8]];
  }

  v8 = v7;
  [accountCopy dmc_setBearerToken:v7];

LABEL_6:
}

- (BOOL)_appWithBundleIDExists:(id)exists
{
  v14 = *MEMORY[0x277D85DE8];
  existsCopy = exists;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:existsCopy allowPlaceholder:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = *DMCLogObjects();
    v7 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = existsCopy;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Failed to load record for app: %{public}@ with error: %{public}@. This could mean that the app doesn't exist on the device.", buf, 0x16u);
      v7 = 0;
    }
  }

  else
  {
    v7 = v4 != 0;
  }

  return v7;
}

- (id)_appNameWithBundleID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = dCopy;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Failed to load record for app: %{public}@ with error: %{public}@.", buf, 0x16u);
    }
  }

  localizedName = [v4 localizedName];
  v8 = localizedName;
  if (localizedName)
  {
    v9 = localizedName;
  }

  else
  {
    v9 = dCopy;
  }

  v10 = v9;

  return v9;
}

- (void)_fetchAppAttributesWithITunesItemID:(id)d completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v7 = getAMSMediaTaskClass_softClass;
  v39 = getAMSMediaTaskClass_softClass;
  if (!getAMSMediaTaskClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getAMSMediaTaskClass_block_invoke;
    v34 = &unk_278EE3E48;
    v35 = &v36;
    __getAMSMediaTaskClass_block_invoke(&v31);
    v7 = v37[3];
  }

  v8 = v7;
  _Block_object_dispose(&v36, 8);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v9 = getAMSBagClass_softClass;
  v39 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getAMSBagClass_block_invoke;
    v34 = &unk_278EE3E48;
    v35 = &v36;
    __getAMSBagClass_block_invoke(&v31);
    v9 = v37[3];
  }

  v10 = v9;
  _Block_object_dispose(&v36, 8);
  bagSubProfile = [v7 bagSubProfile];
  bagSubProfileVersion = [v7 bagSubProfileVersion];
  v13 = [v9 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v14 = [[v7 alloc] initWithType:0 clientIdentifier:@"com.apple.devicemanagementclient" clientVersion:@"1" bag:v13];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v15 = getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr;
  v39 = getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr;
  if (!getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getAMSMediaTaskPlatformiPhoneSymbolLoc_block_invoke;
    v34 = &unk_278EE3E48;
    v35 = &v36;
    v16 = AppleMediaServicesLibrary();
    v17 = dlsym(v16, "AMSMediaTaskPlatformiPhone");
    *(v35[1] + 24) = v17;
    getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr = *(v35[1] + 24);
    v15 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v15)
  {
    goto LABEL_12;
  }

  v18 = *v15;
  v41 = v18;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v19 = getAMSMediaTaskPlatformiPadSymbolLoc_ptr;
  v39 = getAMSMediaTaskPlatformiPadSymbolLoc_ptr;
  if (!getAMSMediaTaskPlatformiPadSymbolLoc_ptr)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getAMSMediaTaskPlatformiPadSymbolLoc_block_invoke;
    v34 = &unk_278EE3E48;
    v35 = &v36;
    v20 = AppleMediaServicesLibrary();
    v21 = dlsym(v20, "AMSMediaTaskPlatformiPad");
    *(v35[1] + 24) = v21;
    getAMSMediaTaskPlatformiPadSymbolLoc_ptr = *(v35[1] + 24);
    v19 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v19)
  {
LABEL_12:
    [DMCEnrollmentFlowController(Utilities) _fetchAppAttributesWithITunesItemID:completionHandler:];
    __break(1u);
  }

  v42 = *v19;
  v22 = MEMORY[0x277CBEA60];
  v23 = v42;
  v24 = [v22 arrayWithObjects:&v41 count:2];

  [v14 setAdditionalPlatforms:v24];
  stringValue = [dCopy stringValue];
  v40 = stringValue;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  [v14 setItemIdentifiers:v26];

  [v14 setAdditionalQueryParams:&unk_2859F9EB0];
  perform = [v14 perform];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __96__DMCEnrollmentFlowController_Utilities___fetchAppAttributesWithITunesItemID_completionHandler___block_invoke;
  v29[3] = &unk_278EE3DF8;
  v30 = handlerCopy;
  v28 = handlerCopy;
  [perform resultWithCompletion:v29];
}

void __96__DMCEnrollmentFlowController_Utilities___fetchAppAttributesWithITunesItemID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Failed to get app attributes with error: %{public}@", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 responseDataItems];
    v8 = *(a1 + 32);
    v9 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 firstObject];
      (*(v8 + 16))(v8, v10, 0);
    }

    else
    {
      (*(v8 + 16))(v8, 0, 0);
    }
  }
}

- (BOOL)_validEnrollmentMode:(id)mode enrollmentMethod:(unint64_t)method
{
  modeCopy = mode;
  enrollmentType = [(DMCEnrollmentFlowController *)self enrollmentType];
  if (enrollmentType <= 3)
  {
    if ((enrollmentType - 1) < 2)
    {
      if (method == 3)
      {
        v8 = MEMORY[0x277D247D8];
      }

      else
      {
        v8 = MEMORY[0x277D247E0];
      }

      goto LABEL_12;
    }

    if (enrollmentType == 3)
    {
      v8 = MEMORY[0x277D247E8];
      goto LABEL_12;
    }

LABEL_14:
    v9 = modeCopy == 0;
    goto LABEL_13;
  }

  if (enrollmentType == 4)
  {
    v8 = MEMORY[0x277D247D0];
    goto LABEL_12;
  }

  if (enrollmentType != 5)
  {
    goto LABEL_14;
  }

  v8 = MEMORY[0x277D247C8];
LABEL_12:
  v9 = [modeCopy isEqualToString:*v8];
LABEL_13:

  return v9;
}

- (BOOL)_canSkipMDMEnrollmentWithEnrollmentType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFF7) != 1)
  {
    return 0;
  }

  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  if (objc_opt_respondsToSelector())
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    if ([managedConfigurationHelper2 isDeviceSupervised])
    {
      managedConfigurationHelper3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      if (objc_opt_respondsToSelector())
      {
        managedConfigurationHelper4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        isStoredProfileInstalled = [managedConfigurationHelper4 isStoredProfileInstalled];
      }

      else
      {
        isStoredProfileInstalled = 0;
      }
    }

    else
    {
      isStoredProfileInstalled = 0;
    }
  }

  else
  {
    isStoredProfileInstalled = 0;
  }

  return isStoredProfileInstalled;
}

- (void)_writeDirtyStateToDisk:(id)disk
{
  v16 = *MEMORY[0x277D85DE8];
  dictionary = [disk dictionary];
  v4 = MDMDirtyEnrollmentStateFilePath();
  if ([dictionary count])
  {
    [dictionary DMCWriteToBinaryFile:v4];
    DMCSetSkipBackupAttributeToItemAtPath();
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];

    if (v6)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = 0;
      [defaultManager2 removeItemAtPath:v4 error:&v13];
      v8 = v13;

      if (v8)
      {
        v9 = *DMCLogObjects();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v15 = v8;
          _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Failed to remove dirty state file! Error: %{public}@", buf, 0xCu);
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v12 = v8;
        [defaultManager3 removeItemAtPath:v4 error:&v12];
        v11 = v12;
      }
    }
  }
}

- (id)_readDirtyStateFromDisk
{
  v2 = MDMDirtyEnrollmentStateFilePath();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] DMCDictionaryFromFile:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_verifyPropertiesFromProfileData:(id)data enrollmentMethod:(unint64_t)method isRapidReturnToService:(BOOL)service isESSO:(BOOL)o essoAppITunesStoreID:(id)d enrollmentMode:(id)mode managedAppleID:(id)iD assignedManagedAppleID:(id)self0 serverCapabilities:(id)self1 error:(id *)self2
{
  serviceCopy = service;
  v47 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  capabilitiesCopy = capabilities;
  if (![(DMCEnrollmentFlowController *)self _validEnrollmentMode:modeCopy enrollmentMethod:method])
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      *buf = 138543874;
      v42 = modeCopy;
      v43 = 2048;
      enrollmentType = [(DMCEnrollmentFlowController *)self enrollmentType];
      v45 = 2048;
      methodCopy = method;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_ERROR, "Enrollment mode in profile: %{public}@ does not match enrollment type %lu and method %lu", buf, 0x20u);
    }

    if (([MEMORY[0x277D03500] ignoreEnrollmentMode] & 1) == 0)
    {
      v31 = *DMCLogObjects();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v31, OS_LOG_TYPE_ERROR, "Enrollment profile has invalid EnrollmentMode key. Aborting...", buf, 2u);
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277D032F0];
      v22 = DMCErrorArray();
      v23 = *MEMORY[0x277D032F8];
      v24 = v32;
      v25 = v33;
      v26 = 15017;
      goto LABEL_24;
    }
  }

  if (iD)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_ERROR, "Enrollment profile must not have the ManagedAppleID key. Aborting...", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = *MEMORY[0x277D032F8];
    v24 = v20;
    v25 = v21;
    v26 = 15018;
    goto LABEL_24;
  }

  v27 = method == 5 || method == 2;
  if (v27 && !appleID)
  {
    v28 = *DMCLogObjects();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v28, OS_LOG_TYPE_ERROR, "3rd party enrollment profile doesn't have the AssignedManagedAppleID key. Aborting...", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = *MEMORY[0x277D032F8];
    v24 = v29;
    v25 = v30;
    v26 = 15013;
    goto LABEL_24;
  }

  if (!serviceCopy || ([capabilitiesCopy containsObject:*MEMORY[0x277D24788]] & 1) != 0)
  {
    v36 = 1;
    goto LABEL_28;
  }

  v38 = *DMCLogObjects();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v38, OS_LOG_TYPE_ERROR, "Doing Rapid Return to Service but server does not support bootstrap token. Aborting...", buf, 2u);
  }

  if (error)
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = *MEMORY[0x277D032F8];
    v24 = v39;
    v25 = v40;
    v26 = 15036;
LABEL_24:
    v34 = [v24 DMCErrorWithDomain:v25 code:v26 descriptionArray:v22 errorType:{v23, 0}];

    if (v34)
    {
      v35 = v34;
      *error = v34;
    }
  }

LABEL_27:
  v36 = 0;
LABEL_28:

  return v36;
}

- (id)_convertErrorToHumanReadableError:(id)error
{
  v25[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DMCErrorArray();
  _trustedErrors = [(DMCEnrollmentFlowController *)self _trustedErrors];
  domain = [errorCopy domain];
  v8 = [_trustedErrors objectForKeyedSubscript:domain];
  if (v8)
  {
    v9 = v8;
    domain2 = [errorCopy domain];
    v11 = [_trustedErrors objectForKeyedSubscript:domain2];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    if ([v11 containsObject:v12])
    {

LABEL_6:
      localizedDescription = [errorCopy localizedDescription];
      v25[0] = localizedDescription;
      null = [MEMORY[0x277CBEB68] null];
      v25[1] = null;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

      goto LABEL_10;
    }

    [errorCopy domain];
    v13 = v24 = v5;
    v14 = [_trustedErrors objectForKeyedSubscript:v13];
    v23 = [v14 containsObject:&unk_2859F9658];

    v5 = v24;
    if (v23)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = [(DMCEnrollmentFlowController *)self _translatedErrorStringForError:errorCopy];
  if (v18)
  {
    v22 = 0;
    v19 = DMCUnformattedErrorArray();

    v5 = v19;
  }

  v17 = v5;
LABEL_10:
  v20 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D032F0] code:15022 descriptionArray:v17 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], v22}];

  return v20;
}

- (id)_trustedErrors
{
  if (_trustedErrors_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Utilities) _trustedErrors];
  }

  v3 = _trustedErrors_dict;

  return v3;
}

void __56__DMCEnrollmentFlowController_Utilities___trustedErrors__block_invoke()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v0 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  v12 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  if (!getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getAKAppleIDAuthenticationErrorDomainSymbolLoc_block_invoke;
    v8[3] = &unk_278EE3E48;
    v8[4] = &v9;
    __getAKAppleIDAuthenticationErrorDomainSymbolLoc_block_invoke(v8);
    v0 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v0)
  {
    [DMCEnrollmentFlowController(Utilities) _fetchAppAttributesWithITunesItemID:completionHandler:];
    __break(1u);
  }

  v13[0] = *v0;
  v1 = MEMORY[0x277CBEB98];
  v2 = v13[0];
  v3 = [v1 setWithArray:&unk_2859F9D18];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D032F0];
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9D30];
  v14[1] = v4;
  v13[2] = *MEMORY[0x277D033B8];
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9D48];
  v14[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v7 = _trustedErrors_dict;
  _trustedErrors_dict = v6;
}

- (id)_errorTranslation
{
  if (_errorTranslation_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Utilities) _errorTranslation];
  }

  v3 = _errorTranslation_dict;

  return v3;
}

void __59__DMCEnrollmentFlowController_Utilities___errorTranslation__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D032F0];
  v3[0] = &unk_2859F97F0;
  v3[1] = &unk_2859F9808;
  v4[0] = @"DMC_SERVER_RESPONSE_USER_UNAUTHORIZED";
  v4[1] = @"DEVICE_MISSING_APPLEACCOUNT_NEEDS_ERASE";
  v3[2] = &unk_2859F9820;
  v4[2] = @"DMC_SERVER_RESPONSE_UNEXPECTED_403_UI";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v6[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = _errorTranslation_dict;
  _errorTranslation_dict = v1;
}

- (id)_translatedErrorStringForError:(id)error
{
  errorCopy = error;
  _errorTranslation = [(DMCEnrollmentFlowController *)self _errorTranslation];
  domain = [errorCopy domain];
  v7 = [_errorTranslation objectForKeyedSubscript:domain];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v9 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_createGeneralError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15022 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createUnsupportedFeatureError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createEnrollmentNotAllowedDuringSDPError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15035 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingRMAccountError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15005 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingAppleAccountForUserEnrollmentError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15014 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createInvalidErSSODeclarationsError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15028 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingEnterpriseApplicationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15028 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createEnterpriseApplicationExistsErrorWithAppName:(id)name
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D032F0];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:15030 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], name, 0}];

  return v6;
}

+ (id)_createEnterpriseApplicationMissingEntitlementsError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15029 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingEnterpriseApplicationBundleIDError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15028 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createGeneralSignInError
{
  v2 = DMCErrorArray();
  v3 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D032F0] code:15032 descriptionArray:v2 errorType:{*MEMORY[0x277D032F8], 0}];

  return v3;
}

+ (id)_createInvalidCloudConfigError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15034 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createFailedToCaptureSnapshotError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15038 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createFailedToDeleteSnapshotError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15037 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createPasscodeRequiredError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15039 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createUpdateFromFactoryVersionRequiredError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15040 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

void __59__DMCEnrollmentFlowController_Utilities___blockAppInstalls__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 DMCVerboseDescription];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "block app installs, enrollment flow controller, blocking end, error: %{public}@", &v6, 0xCu);
  }
}

- (void)_unblockAppInstallsIfNecessaryWithCaller:(id)caller
{
  callerCopy = caller;
  if ([(DMCEnrollmentFlowController *)self enrollmentType]== 4 || [(DMCEnrollmentFlowController *)self enrollmentType]== 5)
  {
    [(DMCEnrollmentFlowController *)self _unblockAppInstallsWithCaller:callerCopy];
  }
}

- (void)_unblockAppInstallsWithCaller:(id)caller
{
  v14 = *MEMORY[0x277D85DE8];
  callerCopy = caller;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = callerCopy;
    _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "block app installs, unblocking begin (%{public}@)", buf, 0xCu);
  }

  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__DMCEnrollmentFlowController_Utilities___unblockAppInstallsWithCaller___block_invoke;
    v10[3] = &unk_278EE3550;
    v11 = callerCopy;
    [managedConfigurationHelper2 unblockAppInstallsWithCompletion:v10];
  }

  else
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "block app installs, enrollment flow controller, app unblocking not supported, ignoring", buf, 2u);
    }
  }
}

void __72__DMCEnrollmentFlowController_Utilities___unblockAppInstallsWithCaller___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 DMCVerboseDescription];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "block app installs, unblocking end (%{public}@), error: %{public}@", &v8, 0x16u);
  }
}

- (void)_fetchBundleIDsWithiTunesItemID:(id)d debuggingAppIDs:(id)ds completionHandler:(id)handler
{
  dCopy = d;
  dsCopy = ds;
  handlerCopy = handler;
  if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
  {
    v11 = [(DMCEnrollmentFlowController *)self _bundleIDsFromAppIDs:dsCopy];
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __108__DMCEnrollmentFlowController_Utilities___fetchBundleIDsWithiTunesItemID_debuggingAppIDs_completionHandler___block_invoke;
    v12[3] = &unk_278EE3E20;
    v14 = handlerCopy;
    v12[4] = self;
    v13 = dCopy;
    [(DMCEnrollmentFlowController *)self _fetchAppAttributesWithITunesItemID:v13 completionHandler:v12];
  }
}

void __108__DMCEnrollmentFlowController_Utilities___fetchBundleIDsWithiTunesItemID_debuggingAppIDs_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"attributes"];
    v8 = [v7 objectForKeyedSubscript:@"name"];

    v9 = [v6 objectForKeyedSubscript:@"attributes"];
    v10 = [v9 objectForKeyedSubscript:@"platformAttributes"];
    v11 = [v10 objectForKeyedSubscript:@"ios"];
    v12 = [v11 objectForKeyedSubscript:@"bundleId"];

    if (v12)
    {
      v24[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      [*(a1 + 32) setEssoAppITunesStoreID:*(a1 + 40)];
    }

    else
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v6 objectForKeyedSubscript:@"attributes"];
        v17 = [v16 objectForKeyedSubscript:@"platformAttributes"];
        v18 = [v17 objectForKeyedSubscript:@"ios"];
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "App attributes dictionary does not contain bundleID: %{public}@", &v20, 0xCu);
      }

      v13 = 0;
    }

    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = v8;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEBUG, "Found application with name: '%{public}@', bundle ID: %{public}@", &v20, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)_bundleIDsFromAppIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (dsCopy)
  {
    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 rangeOfString:{@".", v16}];
          v13 = [v10 substringFromIndex:v11 + v12];
          if (v13)
          {
            [v4 addObject:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = typeCopy;
    v15 = 2048;
    finishedNumberCopy = finishedNumber;
    v17 = 2048;
    numberCopy = number;
    _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEBUG, "DMCEnrollmentFlowContrller: App type: %@, %lu of %lu completed", &v13, 0x20u);
  }

  delegate = [(DMCEnrollmentFlowController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(DMCEnrollmentFlowController *)self delegate];
    [delegate2 enrollmentFlowController:self appInstallationStatusUpdatedForType:typeCopy totalNumber:number finishedNumber:finishedNumber];
  }
}

- (BOOL)_shouldDoReturnToService
{
  obliterationShelter = [(DMCEnrollmentFlowController *)self obliterationShelter];
  hasConfigFile = [obliterationShelter hasConfigFile];

  return hasConfigFile;
}

- (void)_unblockMDMCommands
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Unblocking MDM commands...", buf, 2u);
  }

  managedConfigurationHelper = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    managedConfigurationHelper2 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [managedConfigurationHelper2 unblockMDMCommandsWithCompletionHandler:&__block_literal_global_190];
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "managedConfigurationHelper didn't implement the unblockMDMCommandsWithCompletionHandler method", v8, 2u);
    }
  }
}

void __61__DMCEnrollmentFlowController_Utilities___unblockMDMCommands__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *DMCLogObjects();
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v2;
      v4 = "Failed to unblock MDM commands with error: %{public}@";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_247E39000, v5, v6, v4, &v8, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    v4 = "Unblocked MDM commands";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 2;
    goto LABEL_6;
  }
}

@end