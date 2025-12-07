@interface PBBridgeCompanionController
+ (id)displayNameWithFirstName:(id)name lastName:(id)lastName;
+ (void)iCloudFirstName:(id *)name lastName:(id *)lastName;
+ (void)meCardFirstName:(id *)name lastName:(id *)lastName;
- (BOOL)_sendRemoteCommandWithMessageID:(unsigned __int16)d withArguments:(id)arguments;
- (BOOL)_sendResponseToMessage:(id)message withResponseMessageID:(unsigned __int16)d withArguments:(id)arguments;
- (BOOL)shouldHandleMessageType:(unsigned __int16)type fromId:(id)id;
- (PBBridgeCompanionController)init;
- (PBBridgeConnectionDelegate)delegate;
- (RUILoaderDelegate)ruiDelegate;
- (id)_connectionWithRequest:(id)request;
- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (id)currentNetworks:(BOOL)networks;
- (id)currentWiFiNetworkName;
- (id)viewControllerForAlertPresentation;
- (void)_cleanup;
- (void)_processActivationData;
- (void)acknowledgeBuysOnWatchCredentialIngestion:(id)ingestion;
- (void)activationTimedOut;
- (void)beganWaitingForPresentationOfActivationEvent;
- (void)beganWaitingForUserResponseToActivationEvent;
- (void)beginSetupTransaction;
- (void)checkApplicationInstallAllowedWithCompletion:(id)completion;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)enableSiriForGizmo:(id)gizmo;
- (void)endSetupTransaction;
- (void)getCompanionLanguage:(id)language;
- (void)getCompanionRegion:(id)region;
- (void)getSiriState:(id)state;
- (void)gizmoActivationFailed:(id)failed;
- (void)gizmoBecameAvailableWantsConfirmation:(id)confirmation;
- (void)gizmoDidBeginActivating:(id)activating;
- (void)gizmoDidBeginUnlockPairing:(id)pairing;
- (void)gizmoDidEndPasscodeChange:(id)change;
- (void)gizmoDidEndPasscodeCreation:(id)creation;
- (void)gizmoDidEndUnlockPairing:(id)pairing;
- (void)gizmoDidFinishActivating:(id)activating;
- (void)gizmoFailedToCreatePasscode:(id)passcode;
- (void)handleAppViewListImageResponse:(id)response;
- (void)handleApplicationInstallRestrictionResponse:(id)response;
- (void)handleDeviceManagementResponse:(id)response;
- (void)handleOfflineTermsResponse:(id)response;
- (void)handlePerformanceResults:(id)results;
- (void)handleRemoteActivationDetails:(id)details;
- (void)handleWarrantySentinelResponse:(id)response;
- (void)invalidateTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state;
- (void)loader:(id)loader didFailWithError:(id)error;
- (void)loader:(id)loader didReceiveHTTPResponse:(id)response;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)queryGizmoForOfflineTerms;
- (void)queryGizmoForShowWarrantySentinelAndRestoreDeviceName:(id)name;
- (void)refreshTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state;
- (void)requestProxiedDeviceForWatchWithCompletion:(id)completion;
- (void)retrieveAppViewListImageFromGizmo:(CGSize)gizmo completion:(id)completion;
- (void)returnedRemoteAccountForDevice:(id)device;
- (void)sendAllTinkerWirelessCredentials:(BOOL)credentials;
- (void)sendAllWirelessCredentials:(BOOL)credentials;
- (void)sendBuysOnWatchUsername:(id)username andPassword:(id)password withCompletion:(id)completion;
- (void)sendComputedTimeZoneToGizmo;
- (void)sendDemoWatchWirelessCredentials;
- (void)sendGizmoPasscodeRestrictions;
- (void)sendProxyActivationRequest:(id)request;
- (void)sendProxyActivationWithCustomRequest:(id)request;
- (void)sendTinkerAccountCredentialsWithContext:(id)context completion:(id)completion;
- (void)setupServiceMessageSelectorMappings;
- (void)tellGizmoToBeginActivation;
- (void)tellGizmoToDeleteWarrantySentinel;
- (void)tellGizmoToKeepAliveForActivationEvent;
- (void)tellGizmoToPopToControllerType:(unint64_t)type;
- (void)tellGizmoToPrepareForInitialSyncWithCompletion:(id)completion;
- (void)tellGizmoToPushControllerType:(unint64_t)type;
- (void)tellGizmoToRetryActivation;
- (void)tellGizmoToSetCrownOrientationRight:(BOOL)right;
- (void)tellGizmoToSetDiagnosticsEnabled:(BOOL)enabled;
- (void)tellGizmoToSetFitnessRouteTrackingEnabled:(BOOL)enabled;
- (void)tellGizmoToSetLocationEnabled:(BOOL)enabled;
- (void)tellGizmoToSetMessagesinCloudEnabled:(BOOL)enabled;
- (void)tellGizmoToShowLockedOnAnimationTimeToFlash:(double)flash animationCompletion:(id)completion;
- (void)tellGizmoToUpdateNanoRegistryToNormalState;
- (void)tellGizmoToUpdateSyncProgressTo:(double)to withState:(int64_t)state;
- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:(BOOL)address withCompletion:(id)completion;
- (void)tellWatchToChangeDeviceNameFor:(id)for;
- (void)tellWatchToConfigureDeviceManagementWithData:(id)data completion:(id)completion;
- (void)tellWatchToPrepareForForcedSUWithCompletion:(id)completion;
- (void)tellWatchToSetLauncherViewMode:(int64_t)mode;
- (void)tellWatchToSetSiriEnabled:(BOOL)enabled;
- (void)tinkerFinishedHealthSharingOptIn:(id)in;
- (void)tinkerWatchIngestedCredentials:(id)credentials;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)watchDidApplyWirelessCredentials:(id)credentials;
- (void)watchDidIngestWirelessCredentials:(id)credentials;
- (void)watchDidPrepareForForcedSU:(id)u;
- (void)watchDidPrepareForInitialSync:(id)sync;
- (void)watchDidRespondWithLanguageAndLocaleStatus:(id)status;
@end

@implementation PBBridgeCompanionController

- (PBBridgeCompanionController)init
{
  v9.receiver = self;
  v9.super_class = PBBridgeCompanionController;
  v2 = [(PBBridgeCompanionController *)&v9 init];
  if (v2)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_8);
    if (PBIsInternalInstall(v3, v4))
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v2->_allowAnyHTTPSCertificate = [standardUserDefaults BOOLForKey:@"ActivationAllowAnyHTTPSCertificate"];
    }

    v6 = dispatch_queue_create("com.apple.Bridge.timeout.tracker.queue", 0);
    timeoutTrackerQueue = v2->_timeoutTrackerQueue;
    v2->_timeoutTrackerQueue = v6;
  }

  return v2;
}

- (void)setupServiceMessageSelectorMappings
{
  service = [(PBBridgeIDSServiceDelegate *)self service];
  [service setProtobufAction:sel_gizmoBecameAvailableWantsConfirmation_ forIncomingRequestsOfType:1];

  service2 = [(PBBridgeIDSServiceDelegate *)self service];
  [service2 setProtobufAction:sel_sendProxyActivationRequest_ forIncomingRequestsOfType:2];

  service3 = [(PBBridgeIDSServiceDelegate *)self service];
  [service3 setProtobufAction:sel_gizmoDidBeginActivating_ forIncomingRequestsOfType:3];

  service4 = [(PBBridgeIDSServiceDelegate *)self service];
  [service4 setProtobufAction:sel_gizmoDidFinishActivating_ forIncomingRequestsOfType:4];

  service5 = [(PBBridgeIDSServiceDelegate *)self service];
  [service5 setProtobufAction:sel_gizmoDidFinishActivating_ forIncomingRequestsOfType:21];

  service6 = [(PBBridgeIDSServiceDelegate *)self service];
  [service6 setProtobufAction:sel_getCompanionLanguage_ forIncomingRequestsOfType:5];

  service7 = [(PBBridgeIDSServiceDelegate *)self service];
  [service7 setProtobufAction:sel_getCompanionRegion_ forIncomingRequestsOfType:6];

  service8 = [(PBBridgeIDSServiceDelegate *)self service];
  [service8 setProtobufAction:sel_gizmoDidEndPasscodeCreation_ forIncomingRequestsOfType:7];

  service9 = [(PBBridgeIDSServiceDelegate *)self service];
  [service9 setProtobufAction:sel_gizmoDidEndPasscodeChange_ forIncomingRequestsOfType:28];

  service10 = [(PBBridgeIDSServiceDelegate *)self service];
  [service10 setProtobufAction:sel_gizmoDidBeginUnlockPairing_ forIncomingRequestsOfType:19];

  service11 = [(PBBridgeIDSServiceDelegate *)self service];
  [service11 setProtobufAction:sel_gizmoDidEndUnlockPairing_ forIncomingRequestsOfType:13];

  service12 = [(PBBridgeIDSServiceDelegate *)self service];
  [service12 setProtobufAction:sel_getSiriState_ forIncomingRequestsOfType:8];

  service13 = [(PBBridgeIDSServiceDelegate *)self service];
  [service13 setProtobufAction:sel_gizmoActivationFailed_ forIncomingRequestsOfType:12];

  service14 = [(PBBridgeIDSServiceDelegate *)self service];
  [service14 setProtobufAction:sel_handlePerformanceResults_ forIncomingRequestsOfType:16];

  service15 = [(PBBridgeIDSServiceDelegate *)self service];
  [service15 setProtobufAction:sel_handleWarrantySentinelResponse_ forIncomingResponsesOfType:14];

  service16 = [(PBBridgeIDSServiceDelegate *)self service];
  [service16 setProtobufAction:sel_handleOfflineTermsResponse_ forIncomingResponsesOfType:15];

  service17 = [(PBBridgeIDSServiceDelegate *)self service];
  [service17 setProtobufAction:sel_gizmoFailedToCreatePasscode_ forIncomingRequestsOfType:17];

  service18 = [(PBBridgeIDSServiceDelegate *)self service];
  [service18 setProtobufAction:sel_watchDidPrepareForInitialSync_ forIncomingResponsesOfType:18];

  service19 = [(PBBridgeIDSServiceDelegate *)self service];
  [service19 setProtobufAction:sel_watchDidRespondWithLanguageAndLocaleStatus_ forIncomingRequestsOfType:20];

  service20 = [(PBBridgeIDSServiceDelegate *)self service];
  [service20 setProtobufAction:sel_watchDidIngestWirelessCredentials_ forIncomingRequestsOfType:22];

  service21 = [(PBBridgeIDSServiceDelegate *)self service];
  [service21 setProtobufAction:sel_watchDidPrepareForForcedSU_ forIncomingResponsesOfType:23];

  service22 = [(PBBridgeIDSServiceDelegate *)self service];
  [service22 setProtobufAction:sel_handleRemoteActivationDetails_ forIncomingRequestsOfType:27];

  service23 = [(PBBridgeIDSServiceDelegate *)self service];
  [service23 setProtobufAction:sel_returnedRemoteAccountForDevice_ forIncomingResponsesOfType:25];

  service24 = [(PBBridgeIDSServiceDelegate *)self service];
  [service24 setProtobufAction:sel_tinkerWatchIngestedCredentials_ forIncomingResponsesOfType:26];

  service25 = [(PBBridgeIDSServiceDelegate *)self service];
  [service25 setProtobufAction:sel_tinkerFinishedHealthSharingOptIn_ forIncomingRequestsOfType:29];

  service26 = [(PBBridgeIDSServiceDelegate *)self service];
  [service26 setProtobufAction:sel_acknowledgeBuysOnWatchCredentialIngestion_ forIncomingResponsesOfType:30];

  service27 = [(PBBridgeIDSServiceDelegate *)self service];
  [service27 setProtobufAction:sel_handleAppViewListImageResponse_ forIncomingResponsesOfType:102];

  service28 = [(PBBridgeIDSServiceDelegate *)self service];
  [service28 setProtobufAction:sel_handleDeviceManagementResponse_ forIncomingResponsesOfType:31];

  service29 = [(PBBridgeIDSServiceDelegate *)self service];
  [service29 setProtobufAction:sel_handleApplicationInstallRestrictionResponse_ forIncomingResponsesOfType:32];

  service30 = [(PBBridgeIDSServiceDelegate *)self service];
  [service30 setProtobufAction:sel_watchDidApplyWirelessCredentials_ forIncomingResponsesOfType:33];
}

- (void)beginSetupTransaction
{
  v3.receiver = self;
  v3.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v3 beginSetupTransaction];
  [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:0];
}

- (void)endSetupTransaction
{
  v10.receiver = self;
  v10.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v10 endSetupTransaction];
  languageLocaleCompletion = self->_languageLocaleCompletion;
  self->_languageLocaleCompletion = 0;

  remoteActivationUserAgent = self->_remoteActivationUserAgent;
  self->_remoteActivationUserAgent = 0;

  [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:0];
  [(NSURLConnection *)self->_activationConnection cancel];
  activationConnection = self->_activationConnection;
  self->_activationConnection = 0;

  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  activationData = self->_activationData;
  self->_activationData = 0;

  contentType = self->_contentType;
  self->_contentType = 0;

  [(RUILoader *)self->_ruiLoader cancel];
  [(RUILoader *)self->_ruiLoader setDelegate:0];
  ruiLoader = self->_ruiLoader;
  self->_ruiLoader = 0;

  self->_connectionFailed = 0;
  self->_nonSilentActivation = 0;
  self->_sentSessionRequest = 0;
  self->_sentActivationRequest = 0;
}

- (BOOL)_sendRemoteCommandWithMessageID:(unsigned __int16)d withArguments:(id)arguments
{
  dCopy = d;
  v151 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  if (dCopy <= 5)
  {
    if (dCopy > 2)
    {
      if (dCopy == 3)
      {
        v14 = PBBProtoPushControllerType;
      }

      else
      {
        if (dCopy != 4)
        {
          v7 = objc_alloc_init(PBBProtoSetLanguage);
          firstObject = [argumentsCopy firstObject];
          [(PBBProtoSetLanguage *)v7 setLanguage:firstObject];
LABEL_25:

          goto LABEL_26;
        }

        v14 = PBBProtoPopToControllerType;
      }

      v7 = objc_alloc_init(v14);
      firstObject2 = [argumentsCopy firstObject];
      -[PBBProtoSetLanguage setControllerType:](v7, "setControllerType:", [firstObject2 intValue]);

      [(PBBridgeCompanionController *)self offsetEventTime];
      [(PBBProtoSetLanguage *)v7 setIntendedFireDate:?];
LABEL_26:
      v17 = v7;
LABEL_27:
      data = [(PBBProtoSetLanguage *)v17 data];

      goto LABEL_28;
    }

    if (dCopy == 1)
    {
      v7 = objc_alloc_init(PBBProtoBecameActive);
      firstObject = [argumentsCopy firstObject];
      -[PBBProtoSetLanguage setWantsConfirmation:](v7, "setWantsConfirmation:", [firstObject BOOLValue]);
      goto LABEL_25;
    }

    if (dCopy == 2)
    {
      v7 = objc_alloc_init(PBBProtoHandleActivationData);
      firstObject3 = [argumentsCopy firstObject];
      [(PBBProtoSetLanguage *)v7 setActivationData:firstObject3];

      firstObject = [argumentsCopy lastObject];
      [(PBBProtoSetLanguage *)v7 setResponseHeaders:firstObject];
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (dCopy <= 7)
  {
    if (dCopy == 6)
    {
      v7 = objc_alloc_init(PBBProtoSetRegion);
      firstObject = [argumentsCopy firstObject];
      [(PBBProtoSetLanguage *)v7 setRegion:firstObject];
      goto LABEL_25;
    }

    v13 = PBBProtoSiriEnabled;
LABEL_23:
    v7 = objc_alloc_init(v13);
    firstObject4 = [argumentsCopy firstObject];
LABEL_24:
    firstObject = firstObject4;
    -[PBBProtoSetLanguage setEnabled:](v7, "setEnabled:", [firstObject4 BOOLValue]);
    goto LABEL_25;
  }

  switch(dCopy)
  {
    case 8:
      v13 = PBBProtoLocationServicesEnabled;
      goto LABEL_23;
    case 0xA:
      v13 = PBBProtoDiagnosticsEnabled;
      goto LABEL_23;
    case 0x11:
      v7 = objc_alloc_init(PBBProtoDevicesLockedOn);
      [(PBBridgeCompanionController *)self offsetEventTime];
      v10 = v9;
      firstObject = [argumentsCopy firstObject];
      [firstObject doubleValue];
      [(PBBProtoSetLanguage *)v7 setIntendedFireDate:v10 + v11];
      goto LABEL_25;
  }

LABEL_37:
  if ((dCopy & 0xFFFFFFFB) == 0xB)
  {
LABEL_38:
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_28;
  }

  if (dCopy <= 103)
  {
    switch(dCopy)
    {
      case 14:
        v31 = objc_alloc_init(PBBProtoWarrantySentinel);
        if (argumentsCopy)
        {
          firstObject5 = [argumentsCopy firstObject];
          if ([argumentsCopy count] < 2)
          {
            lastObject = 0;
          }

          else
          {
            lastObject = [argumentsCopy lastObject];
          }

          if (firstObject5)
          {
            null = [MEMORY[0x277CBEB68] null];
            v116 = [firstObject5 isEqual:null];

            if ((v116 & 1) == 0)
            {
              -[PBBProtoWarrantySentinel setRemoveSentinel:](v31, "setRemoveSentinel:", [firstObject5 BOOLValue]);
            }
          }

          if (lastObject)
          {
            [(PBBProtoWarrantySentinel *)v31 setDeviceName:lastObject];
          }

          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          localeIdentifier = [currentLocale localeIdentifier];
          v119 = localeIdentifier;
          v120 = @"en_US";
          if (localeIdentifier)
          {
            v120 = localeIdentifier;
          }

          v121 = v120;

          [(PBBProtoWarrantySentinel *)v31 setAppleLocale:v121];
          v122 = MEMORY[0x277CBEB18];
          preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
          v124 = [v122 arrayWithArray:preferredLanguages];

          [(PBBProtoWarrantySentinel *)v31 setAppleLanguages:v124];
        }

        goto LABEL_140;
      case 16:
        v31 = objc_alloc_init(PBBProtoOfflineTerms);
        currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
        v77 = [currentLocale2 objectForKey:*MEMORY[0x277CBE6C8]];
        lowercaseString = [v77 lowercaseString];
        [(PBBProtoWarrantySentinel *)v31 setLanguageCode:lowercaseString];

        currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
        v80 = [currentLocale3 objectForKey:*MEMORY[0x277CBE690]];
        uppercaseString = [v80 uppercaseString];
        [(PBBProtoWarrantySentinel *)v31 setCountryCode:uppercaseString];

        preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v83 = [preferredLanguages2 mutableCopy];
        [(PBBProtoWarrantySentinel *)v31 setAppleLanguages:v83];

        data = [(PBBProtoWarrantySentinel *)v31 data];

        goto LABEL_141;
      case 18:
        v7 = objc_alloc_init(PBBProtoTellGizmoToSetCrownOrientation);
        firstObject = [argumentsCopy firstObject];
        -[PBBProtoSetLanguage setCrownOrientationRight:](v7, "setCrownOrientationRight:", [firstObject BOOLValue]);
        goto LABEL_25;
      case 19:
        v7 = objc_alloc_init(PBBProtoInitialSyncStateUpdate);
        firstObject6 = [argumentsCopy firstObject];
        [firstObject6 floatValue];
        [(PBBProtoSetLanguage *)v7 setProgress:v75];

        firstObject = [argumentsCopy lastObject];
        -[PBBProtoSetLanguage setState:](v7, "setState:", [firstObject intValue]);
        goto LABEL_25;
      case 20:
        v55 = objc_alloc_init(PBBProtoSetPasscodeRestrictions);
        data2 = [MEMORY[0x277CBEB28] data];
        v56 = [objc_alloc(MEMORY[0x277CCAAB0]) initForWritingWithMutableData:data2];
        v126 = argumentsCopy;
        firstObject7 = [argumentsCopy firstObject];
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v58 = [firstObject7 countByEnumeratingWithState:&v140 objects:v150 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v141;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v141 != v60)
              {
                objc_enumerationMutation(firstObject7);
              }

              v62 = *(*(&v140 + 1) + 8 * i);
              v63 = [firstObject7 objectForKey:v62];
              [v56 encodeObject:v63 forKey:v62];
            }

            v59 = [firstObject7 countByEnumeratingWithState:&v140 objects:v150 count:16];
          }

          while (v59);
        }

        selfCopy = self;
        [v56 finishEncoding];
        v65 = data2;
        [(PBBProtoSetPasscodeRestrictions *)v55 setRestrictions:data2];
        v66 = *MEMORY[0x277D76620];
        activeWatch = [v66 activeWatch];
        v68 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.Carousel" pairedDevice:activeWatch];
        v69 = v68;
        if (v68)
        {
          v139 = 0;
          v70 = [v68 BOOLForKey:@"DisableWristDetection" keyExistsAndHasValidFormat:&v139];
          if (v139 == 1)
          {
            v71 = v70;
            v72 = pbb_setupflow_log([(PBBProtoSetPasscodeRestrictions *)v55 setWristDetectionDisabled:v70]);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = [MEMORY[0x277CCABB0] numberWithBool:v71];
              *buf = 138412290;
              v145 = v73;
              _os_log_impl(&dword_25DE64000, v72, OS_LOG_TYPE_DEFAULT, "sending restrictions + disableWristDection = %@", buf, 0xCu);
            }

            v65 = data2;
          }
        }

        data = [(PBBProtoSetPasscodeRestrictions *)v55 data];

        argumentsCopy = v126;
        self = selfCopy;
        goto LABEL_28;
      case 21:
        v54 = PBBProtoPrepareWatchForInitialSync;
        goto LABEL_97;
      case 22:
        v54 = PBBProtoBeganWaitingForPresentationOfActivationEvent;
        goto LABEL_97;
      case 23:
        v54 = PBBProtoBeganWaitingForUserResponseToActivationEvent;
        goto LABEL_97;
      case 24:
        v54 = PBBProtoSendActivationEventKeepAlive;
        goto LABEL_97;
      case 25:
        v31 = objc_alloc_init(PBBProtoSendLanguageAndLocale);
        if ([argumentsCopy count] >= 2)
        {
          v86 = [argumentsCopy objectAtIndexedSubscript:0];
          [(PBBProtoWarrantySentinel *)v31 setAppleLanguages:v86];

          v87 = [argumentsCopy objectAtIndexedSubscript:1];
          [(PBBProtoWarrantySentinel *)v31 setAppleLocale:v87];
        }

        if ([argumentsCopy count] != 3)
        {
          goto LABEL_140;
        }

        v38 = [argumentsCopy objectAtIndexedSubscript:2];
        if (v38)
        {
          v88 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
          [v88 encodeObject:v38 forKey:@"PBBridgeLocalePreferencesKey"];
          [v88 finishEncoding];
          encodedData = [v88 encodedData];
          [(PBBProtoWarrantySentinel *)v31 setArchivedPreferences:encodedData];
        }

        goto LABEL_92;
      case 26:
        v31 = objc_alloc_init(PBBProtoDemoWirelessCredentials);
        v84 = [argumentsCopy objectAtIndexedSubscript:0];
        [(PBBProtoWarrantySentinel *)v31 setSsid:v84];

        v85 = [argumentsCopy objectAtIndexedSubscript:1];
        [(PBBProtoWarrantySentinel *)v31 setPassword:v85];

        if (PBShouldOfferBetterTogetherFlow())
        {
          [(PBBProtoWarrantySentinel *)v31 setCompanionDemoConfig:1];
        }

        goto LABEL_140;
      case 27:
        v54 = PBBProtoPrepareWatchForForcedSU;
        goto LABEL_97;
      case 28:
        v7 = objc_alloc_init(PBBProtoSetSiriEnabled);
        firstObject4 = [argumentsCopy objectAtIndexedSubscript:0];
        goto LABEL_24;
      case 29:
        v54 = PBBProtoRemoteAccountForDevice;
        goto LABEL_97;
      case 30:
        v31 = objc_alloc_init(PBBProtoSendTinkerAccountCredentials);
        v40 = [argumentsCopy objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v42 = [argumentsCopy objectAtIndexedSubscript:0];
          [(PBBProtoWarrantySentinel *)v31 setUsername:v42];
        }

        v43 = [argumentsCopy objectAtIndexedSubscript:1];
        objc_opt_class();
        v44 = objc_opt_isKindOfClass();

        if ((v44 & 1) == 0)
        {
          v45 = [argumentsCopy objectAtIndexedSubscript:1];
          [(PBBProtoWarrantySentinel *)v31 setPassword:v45];
        }

        v46 = [argumentsCopy objectAtIndexedSubscript:2];
        objc_opt_class();
        v47 = objc_opt_isKindOfClass();

        if ((v47 & 1) == 0)
        {
          v48 = [argumentsCopy objectAtIndexedSubscript:2];
          [(PBBProtoWarrantySentinel *)v31 setAcceptedTermsData:v48];
        }

        v49 = [argumentsCopy objectAtIndexedSubscript:3];
        objc_opt_class();
        v50 = objc_opt_isKindOfClass();

        if ((v50 & 1) == 0)
        {
          v51 = [argumentsCopy objectAtIndexedSubscript:3];
          [(PBBProtoWarrantySentinel *)v31 setPairingParentAppleID:v51];
        }

        v52 = [argumentsCopy objectAtIndexedSubscript:4];
        objc_opt_class();
        v53 = objc_opt_isKindOfClass();

        if (v53)
        {
          goto LABEL_140;
        }

        v38 = [argumentsCopy objectAtIndexedSubscript:4];
        [(PBBProtoWarrantySentinel *)v31 setPairingParentAltDSID:v38];
        goto LABEL_92;
      case 31:
        v13 = PBBProtoTinkerMessagesInCloudEnabled;
        goto LABEL_23;
      case 32:
        v7 = objc_alloc_init(PBBProtoSendBuysOnWatchCredentials);
        firstObject8 = [argumentsCopy firstObject];
        [(PBBProtoSetLanguage *)v7 setUsername:firstObject8];

        firstObject = [argumentsCopy lastObject];
        [(PBBProtoSetLanguage *)v7 setPassword:firstObject];
        goto LABEL_25;
      case 33:
        v13 = PBBProtoTinkerFitnessRouteTrackingEnabled;
        goto LABEL_23;
      case 34:
        v7 = objc_alloc_init(PBBProtoDeviceManagementSetupRequest);
        firstObject = [argumentsCopy objectAtIndexedSubscript:0];
        [(PBBProtoSetLanguage *)v7 setConfigurationData:firstObject];
        goto LABEL_25;
      case 35:
        v54 = PBBProtoApplicationInstallRestrictionRequest;
        goto LABEL_97;
      case 36:
        v54 = PBBProtoUpdateNanoRegistryToNormalState;
LABEL_97:
        v17 = objc_alloc_init(v54);
        v7 = v17;
        break;
      case 37:
        selfCopy3 = self;
        v90 = objc_alloc_init(PBBProtoSendWirelessCredentialsToWatch);
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v127 = argumentsCopy;
        v91 = argumentsCopy;
        v92 = [v91 countByEnumeratingWithState:&v130 objects:v148 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = *v131;
          do
          {
            v95 = 0;
            do
            {
              if (*v131 != v94)
              {
                objc_enumerationMutation(v91);
              }

              v96 = *(*(&v130 + 1) + 8 * v95);
              v97 = pbb_setupflow_log(v92);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                v98 = [v96 objectForKeyedSubscript:@"SSID_STR"];
                *buf = 138412290;
                v145 = v98;
                _os_log_impl(&dword_25DE64000, v97, OS_LOG_TYPE_DEFAULT, "Sending: %@", buf, 0xCu);
              }

              v129 = 0;
              v99 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v96 requiringSecureCoding:1 error:&v129];
              v100 = v129;
              v101 = v100;
              if (v100)
              {
                v102 = pbb_setupflow_log(v100);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v145 = v101;
                  _os_log_error_impl(&dword_25DE64000, v102, OS_LOG_TYPE_ERROR, "Failed to Archive network record: %@", buf, 0xCu);
                }
              }

              else
              {
                [(PBBProtoSendWirelessCredentialsToWatch *)v90 addSerializedNetworkRecord:v99];
              }

              ++v95;
            }

            while (v93 != v95);
            v92 = [v91 countByEnumeratingWithState:&v130 objects:v148 count:16];
            v93 = v92;
          }

          while (v92);
        }

        goto LABEL_128;
      default:
        goto LABEL_38;
    }

    goto LABEL_27;
  }

  if (dCopy <= 110)
  {
    if (dCopy != 104)
    {
      if (dCopy == 110)
      {
        v7 = objc_alloc_init(PBBProtoDeviceName);
        firstObject = [argumentsCopy firstObject];
        [(PBBProtoSetLanguage *)v7 setDeviceName:firstObject];
        goto LABEL_25;
      }

      goto LABEL_38;
    }

    selfCopy3 = self;
    v90 = objc_alloc_init(PBBProtoTinkerWirelessCredentials);
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v127 = argumentsCopy;
    v91 = argumentsCopy;
    v104 = [v91 countByEnumeratingWithState:&v135 objects:v149 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v136;
      do
      {
        v107 = 0;
        do
        {
          if (*v136 != v106)
          {
            objc_enumerationMutation(v91);
          }

          v108 = *(*(&v135 + 1) + 8 * v107);
          v109 = pbb_setupflow_log(v104);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            v110 = [v108 objectForKeyedSubscript:@"SSID_STR"];
            *buf = 138412290;
            v145 = v110;
            _os_log_impl(&dword_25DE64000, v109, OS_LOG_TYPE_DEFAULT, "Sending: %@", buf, 0xCu);
          }

          v134 = 0;
          v111 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v108 requiringSecureCoding:1 error:&v134];
          v112 = v134;
          v113 = v112;
          if (v112)
          {
            v114 = pbb_setupflow_log(v112);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v145 = v113;
              _os_log_error_impl(&dword_25DE64000, v114, OS_LOG_TYPE_ERROR, "Failed to Archive network record: %@", buf, 0xCu);
            }
          }

          [(PBBProtoSendWirelessCredentialsToWatch *)v90 addSerializedNetworkRecord:v111, selfCopy3];

          ++v107;
        }

        while (v105 != v107);
        v104 = [v91 countByEnumeratingWithState:&v135 objects:v149 count:16];
        v105 = v104;
      }

      while (v104);
    }

LABEL_128:

    data = [(PBBProtoSendWirelessCredentialsToWatch *)v90 data];

    self = selfCopy3;
    argumentsCopy = v127;
  }

  else
  {
    if (dCopy == 111)
    {
      v7 = objc_alloc_init(PBBProtoSendComputedTimeZone);
      firstObject = [argumentsCopy firstObject];
      [(PBBProtoSetLanguage *)v7 setComputedTimeZone:firstObject];
      goto LABEL_25;
    }

    if (dCopy == 112)
    {
      v7 = objc_alloc_init(PBBProtoTinkerSetLauncherViewMode);
      firstObject = [argumentsCopy firstObject];
      -[PBBProtoSetLanguage setLauncherViewMode:](v7, "setLauncherViewMode:", [firstObject integerValue]);
      goto LABEL_25;
    }

    if (dCopy != 113)
    {
      goto LABEL_38;
    }

    v31 = objc_alloc_init(PBBProtoAppViewListImageRequest);
    v34 = [argumentsCopy objectAtIndexedSubscript:0];
    [v34 doubleValue];
    *&v35 = v35;
    [(PBBProtoWarrantySentinel *)v31 setWidth:v35];

    v36 = [argumentsCopy objectAtIndexedSubscript:1];
    [v36 doubleValue];
    *&v37 = v37;
    [(PBBProtoWarrantySentinel *)v31 setHeight:v37];

    v38 = [argumentsCopy objectAtIndexedSubscript:2];
    [v38 doubleValue];
    *&v39 = v39;
    [(PBBProtoWarrantySentinel *)v31 setScale:v39];
LABEL_92:

LABEL_140:
    data = [(PBBProtoWarrantySentinel *)v31 data];
LABEL_141:
  }

LABEL_28:
  v19 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:data type:dCopy isResponse:0];
  v20 = pbb_setupflow_log(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PBBGMessageDescription(dCopy);
    *buf = 138412546;
    v145 = v21;
    v146 = 2112;
    v147 = v19;
    _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, "Sending Protobuf (%@ -- %@)", buf, 0x16u);
  }

  service = [(PBBridgeIDSServiceDelegate *)self service];
  v23 = [(PBBridgeIDSServiceDelegate *)self sendProtoBuf:v19 service:service priority:300 responseIdentifier:0 expectsResponse:0 retryCount:-1 retryInterval:-1.0];

  v25 = pbb_setupflow_log(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v145 = v23;
    _os_log_impl(&dword_25DE64000, v25, OS_LOG_TYPE_DEFAULT, "Got IDS identitifer: %@", buf, 0xCu);
  }

  if (dCopy <= 0xF && ((1 << dCopy) & 0x8804) != 0 && PBIsInternalInstall(v26, v27))
  {
    v28 = [v23 copy];
    internalLastSendMessageID = self->_internalLastSendMessageID;
    self->_internalLastSendMessageID = v28;
  }

  return 0;
}

- (BOOL)_sendResponseToMessage:(id)message withResponseMessageID:(unsigned __int16)d withArguments:(id)arguments
{
  dCopy = d;
  v23 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D189F0];
  messageCopy = message;
  v9 = [[v7 alloc] initWithProtobufData:0 type:dCopy isResponse:1];
  v10 = pbb_setupflow_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PBBGMessageDescription(dCopy);
    v19 = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "Sending Response Protobuf (%@ -- %@)", &v19, 0x16u);
  }

  service = [(PBBridgeIDSServiceDelegate *)self service];
  context = [messageCopy context];

  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v15 = [(PBBridgeIDSServiceDelegate *)self sendProtoBuf:v9 service:service priority:300 responseIdentifier:outgoingResponseIdentifier expectsResponse:0 retryCount:-1 retryInterval:-1.0];

  v17 = pbb_setupflow_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v15;
    _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "Message sent with IDS id: %@", &v19, 0xCu);
  }

  return 0;
}

- (BOOL)shouldHandleMessageType:(unsigned __int16)type fromId:(id)id
{
  typeCopy = type;
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  service = [(PBBridgeIDSServiceDelegate *)self service];
  v8 = [service linkedDeviceForFromID:idCopy withRelationship:3];

  if (!v8)
  {
    v10 = pbb_setupflow_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PBBCMessageDescription(typeCopy);
      v13 = 138412546;
      v14 = v11;
      v15 = 2114;
      v16 = idCopy;
      _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "Dropping stale message %@ received from: %{public}@", &v13, 0x16u);
    }
  }

  return v8 != 0;
}

- (void)getCompanionLanguage:(id)language
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = pbb_setupflow_log(languageCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = 610;
    v15 = 2080;
    v16 = "[PBBridgeCompanionController getCompanionLanguage:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  type = [languageCopy type];
  context = [languageCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    v12 = firstObject;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:5 withArguments:v11];
  }
}

- (void)getCompanionRegion:(id)region
{
  v16 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = pbb_setupflow_log(regionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = 622;
    v14 = 2080;
    v15 = "[PBBridgeCompanionController getCompanionRegion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  type = [regionCopy type];
  context = [regionCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = currentLocale;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:6 withArguments:v10];
  }
}

- (void)gizmoBecameAvailableWantsConfirmation:(id)confirmation
{
  v25 = *MEMORY[0x277D85DE8];
  confirmationCopy = confirmation;
  type = [confirmationCopy type];
  context = [confirmationCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoBecameActive alloc];
    data = [confirmationCopy data];
    v10 = [(PBBProtoBecameActive *)v8 initWithData:data];

    v12 = pbb_setupflow_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = 67109378;
      v22[1] = 640;
      v23 = 2080;
      v24 = "[PBBridgeCompanionController gizmoBecameAvailableWantsConfirmation:]";
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%d %s", v22, 0x12u);
    }

    if ([(PBBProtoBecameActive *)v10 wantsConfirmation])
    {
      [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:1 withArguments:&unk_286FB4220];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteDidBecomeAvailable];

    if (PBLogPerformanceMetrics(v14, v15))
    {
      v16 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      context2 = [confirmationCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v16 addMilestone:v19 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }
}

- (void)getSiriState:(id)state
{
  v12[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  type = [stateCopy type];
  context = [stateCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D30]] != 0;

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:7 withArguments:v11];
  }
}

- (void)enableSiriForGizmo:(id)gizmo
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 665;
    v6 = 2080;
    v7 = "[PBBridgeCompanionController enableSiriForGizmo:]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setBoolValue:1 forSetting:*MEMORY[0x277D25D30]];
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:(BOOL)address withCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pbb_setupflow_log(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_activationState == 6)
  {
    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:6];
  }

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v11 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:localeIdentifier];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBE690]];
  archivedPreferences = [MEMORY[0x277CBEAF8] archivedPreferences];
  v14 = pbb_setupflow_log(archivedPreferences);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = archivedPreferences;
    _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "archivedPreferences dictionary contains:\n%@", buf, 0xCu);
  }

  if (!address)
  {
    v16 = [archivedPreferences objectForKey:@"ArchivedInflection"];

    if (v16)
    {
      v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:archivedPreferences];
      [v17 removeObjectForKey:@"ArchivedInflection"];
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v17];

      v20 = pbb_setup_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, "Pairing watch doesn't support term of address; removed ArchivedInflection key", buf, 2u);
      }

      archivedPreferences = v18;
    }
  }

  v21 = preferredLanguages;
  if (preferredLanguages)
  {
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_20:
    v23 = pbb_setupflow_log(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:];
    }

    v12 = &stru_286FA8098;
    if (archivedPreferences)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v22 = pbb_setupflow_log(v15);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:];
  }

  v21 = MEMORY[0x277CBEBF8];
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (!archivedPreferences)
  {
LABEL_23:
    v24 = pbb_setupflow_log(v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:];
    }

    archivedPreferences = MEMORY[0x277CBEC10];
    goto LABEL_26;
  }

  if (!preferredLanguages)
  {
LABEL_26:
    getpid();
    v25 = MEMORY[0x277CCACA8];
    firstObject = [v21 firstObject];
    v27 = [v25 stringWithFormat:@"Error! Invalid Language/Locale/Region/archivedPreferences (%@/%@/%@/%@)", firstObject, localeIdentifier, v12, archivedPreferences];
    SimulateCrash();
  }

  v28 = MEMORY[0x25F8A6750](completionCopy);
  languageLocaleCompletion = self->_languageLocaleCompletion;
  self->_languageLocaleCompletion = v28;

  v31[0] = v21;
  v31[1] = v12;
  v31[2] = archivedPreferences;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:25 withArguments:v30];
}

- (void)watchDidRespondWithLanguageAndLocaleStatus:(id)status
{
  v23 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  type = [statusCopy type];
  context = [statusCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoTellCompanionLanguageAndLocaleChangeStatus alloc];
    data = [statusCopy data];
    v10 = [(PBBProtoTellCompanionLanguageAndLocaleChangeStatus *)v8 initWithData:data];

    status = [(PBBProtoTellCompanionLanguageAndLocaleChangeStatus *)v10 status];
    v13 = v12;
    v14 = pbb_setupflow_log(status);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
      *buf = 136315394;
      v20 = "[PBBridgeCompanionController watchDidRespondWithLanguageAndLocaleStatus:]";
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "%s (Status: %@)", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__PBBridgeCompanionController_watchDidRespondWithLanguageAndLocaleStatus___block_invoke;
    v16[3] = &unk_2799F4B78;
    objc_copyWeak(&v17, buf);
    v18 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v16);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __74__PBBridgeCompanionController_watchDidRespondWithLanguageAndLocaleStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained languageLocaleCompletion];

    if (v3)
    {
      v4 = [v6 languageLocaleCompletion];
      v4[2](v4, *(a1 + 40));

      [v6 setLanguageLocaleCompletion:0];
    }

    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 setIsLanguageAndLocaleFinished:1];

    WeakRetained = v6;
  }
}

- (void)beganWaitingForPresentationOfActivationEvent
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PBBridgeCompanionController beganWaitingForPresentationOfActivationEvent]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:6];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:22 withArguments:MEMORY[0x277CBEBF8]];
  PBNotifyClientOfActivity();
}

- (void)beganWaitingForUserResponseToActivationEvent
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PBBridgeCompanionController beganWaitingForUserResponseToActivationEvent]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:6];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:23 withArguments:MEMORY[0x277CBEBF8]];
  PBNotifyClientOfActivity();
}

- (void)gizmoDidBeginActivating:(id)activating
{
  v18 = *MEMORY[0x277D85DE8];
  activatingCopy = activating;
  v5 = pbb_activation_log(activatingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[PBBridgeCompanionController gizmoDidBeginActivating:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  type = [activatingCopy type];
  context = [activatingCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:4];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeGizmoDidBeginActivatingNotification" object:0];

    if (PBLogPerformanceMetrics(v10, v11))
    {
      v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      context2 = [activatingCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v12 addMilestone:@"GizmoDidBeginActivating" activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }
}

- (void)gizmoDidFinishActivating:(id)activating
{
  v19 = *MEMORY[0x277D85DE8];
  activatingCopy = activating;
  v5 = pbb_activation_log(activatingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[PBBridgeCompanionController gizmoDidFinishActivating:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v17, 0xCu);
  }

  type = [activatingCopy type];
  context = [activatingCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:0xFFFFLL];
    if ([activatingCopy type] == 21)
    {
      v9 = @"DeKOTA";
    }

    else
    {
      v9 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeGizmoDidFinishActivatingNotification" object:v9];

    if (PBLogPerformanceMetrics(v11, v12))
    {
      v13 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      context2 = [activatingCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v13 addMilestone:@"GizmoDidFinishActivating" activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }
}

- (void)gizmoActivationFailed:(id)failed
{
  v25 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  v5 = pbb_activation_log(failedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "[PBBridgeCompanionController gizmoActivationFailed:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v23, 0xCu);
  }

  type = [failedCopy type];
  context = [failedCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v9 = [PBBProtoGizmoActivationFailed alloc];
    data = [failedCopy data];
    v11 = [(PBBProtoGizmoActivationFailed *)v9 initWithData:data];

    [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:5];
    failureDescription = [(PBBProtoGizmoActivationFailed *)v11 failureDescription];
    v13 = pbb_activation_log(failureDescription);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController gizmoActivationFailed:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteDidFailActivation:4 description:failureDescription];

    if (PBLogPerformanceMetrics(v15, v16))
    {
      v17 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      context2 = [failedCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v17 addMilestone:v20 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }
}

- (void)handlePerformanceResults:(id)results
{
  v47 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = pbb_activation_log(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[PBBridgeCompanionController handlePerformanceResults:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  type = [resultsCopy type];
  context = [resultsCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    selfCopy = self;
    v9 = [PBBProtoTransferPerformanceResults alloc];
    data = [resultsCopy data];
    v11 = [(PBBProtoTransferPerformanceResults *)v9 initWithData:data];

    v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    measures = [(PBBProtoTransferPerformanceResults *)v11 measures];
    [v12 setRemoteMeasurements:measures];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    macroActivites = [(PBBProtoTransferPerformanceResults *)v11 macroActivites];
    v16 = [macroActivites countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(macroActivites);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          activityType = [v20 activityType];
          [dictionary setObject:v20 forKey:activityType];
        }

        v17 = [macroActivites countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v17);
    }

    [v12 setRemoteMacroActivities:dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = v11;
    milestones = [(PBBProtoTransferPerformanceResults *)v11 milestones];
    v24 = [milestones countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(milestones);
          }

          v28 = *(*(&v35 + 1) + 8 * j);
          identifier = [v28 identifier];
          [dictionary2 setObject:v28 forKey:identifier];
        }

        v25 = [milestones countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v25);
    }

    [v12 setRemoteMilestones:dictionary2];
    [v12 endMonitorTransaction];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v32 = objc_loadWeakRetained(&selfCopy->_delegate);
      [v32 didHandlePerformanceResults];
    }
  }
}

- (id)_connectionWithRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = pbb_activation_log(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PBBridgeCompanionController _connectionWithRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s: Request (%@)", &v10, 0x16u);
  }

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  [requestCopy setValue:@"WiFi" forHTTPHeaderField:@"X-iOS-Activation-Medium"];
  self->_connectionFailed = 0;
  v7 = [objc_alloc(MEMORY[0x277CCACE8]) _initWithRequest:requestCopy delegate:self usesCache:1 maxContentLength:0 startImmediately:1 connectionProperties:v6];
  p_sentSessionRequest = &self->_sentSessionRequest;
  if (!self->_sentSessionRequest || (p_sentSessionRequest = &self->_sentActivationRequest, !self->_sentActivationRequest))
  {
    *p_sentSessionRequest = 1;
  }

  return v7;
}

- (void)sendProxyActivationRequest:(id)request
{
  v79 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  type = [requestCopy type];
  context = [requestCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:@"__SkipReachabilityChecks"];

    if (v9)
    {
      v11 = pbb_activation_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController sendProxyActivationRequest:];
      }

LABEL_38:

      PBNotifyClientOfActivity();
      goto LABEL_39;
    }

    v12 = [PBBProtoProxyActivationFetch alloc];
    data = [requestCopy data];
    v11 = [(PBBProtoProxyActivationFetch *)v12 initWithData:data];

    if (PBLogPerformanceMetrics(v14, v15))
    {
      v16 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      context2 = [requestCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v16 addMilestone:v19 activityType:outgoingResponseIdentifier activityIdentifier:Current];

      v22 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v22 endMacroActivity:@"PBBridgeProxyActivationStageOneActivityName" beginTime:CFAbsoluteTimeGetCurrent()];
      v24 = v23;

      [PBBridgeCAReporter pushTimingType:2 withValue:v24];
      v25 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v25 beginMacroActivity:@"PBBridgeProxyActivationStageTwoActivityName" beginTime:CFAbsoluteTimeGetCurrent()];
    }

    request = [v11 request];

    v27 = request == 0;
    v29 = pbb_activation_log(v28);
    v30 = v29;
    if (v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController sendProxyActivationRequest:];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained remoteDidFailActivation:4 description:@"Gizmo Sent nil Activation Data"];

      goto LABEL_38;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      request2 = [v11 request];
      *buf = 136315394;
      v76 = "[PBBridgeCompanionController sendProxyActivationRequest:]";
      v77 = 2048;
      v78 = [request2 length];
      _os_log_impl(&dword_25DE64000, v30, OS_LOG_TYPE_DEFAULT, "%s request length (%ld bytes)", buf, 0x16u);
    }

    v32 = objc_alloc(MEMORY[0x277CCAAC8]);
    request3 = [v11 request];
    v74 = 0;
    v34 = [v32 initForReadingFromData:request3 error:&v74];
    v35 = v74;

    if (v35)
    {
      v37 = pbb_activation_log(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = v37;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          request4 = [v11 request];
          v69 = [request4 length];
          *buf = 138412546;
          v76 = v35;
          v77 = 2048;
          v78 = v69;
          _os_log_error_impl(&dword_25DE64000, v38, OS_LOG_TYPE_ERROR, "Error (%@) decoding request (%ld bytes)", buf, 0x16u);
        }
      }
    }

    v39 = [v34 decodeObjectOfClass:objc_opt_class() forKey:@"PBBridgeActivationRequestKey"];
    v40 = [v39 copy];
    activationRequest = self->_activationRequest;
    self->_activationRequest = v40;

    if (self->_activationRequest || ([v34 error], v61 = objc_claimAutoreleasedReturnValue(), v62 = v61 == 0, v61, v62))
    {
      v43 = pbb_activation_log(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = self->_activationRequest;
        *buf = 138543362;
        v76 = v44;
        _os_log_impl(&dword_25DE64000, v43, OS_LOG_TYPE_DEFAULT, "Activation Request %{public}@", buf, 0xCu);
      }

      [v34 finishDecoding];
      v45 = [(NSMutableURLRequest *)self->_activationRequest valueForHTTPHeaderField:@"User-Agent"];
      v46 = [v45 copy];
      remoteActivationUserAgent = self->_remoteActivationUserAgent;
      self->_remoteActivationUserAgent = v46;

      _dumpActivationRequests = PBIsInternalInstall(v48, v49);
      if (_dumpActivationRequests)
      {
        _dumpActivationRequests = [(PBBridgeCompanionController *)self _dumpActivationRequests];
        if (_dumpActivationRequests)
        {
          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Request-%f.txt", CFAbsoluteTimeGetCurrent()];
          v52 = MEMORY[0x277CCACA8];
          v53 = [(NSMutableURLRequest *)self->_activationRequest URL];
          allHTTPHeaderFields = [(NSMutableURLRequest *)self->_activationRequest allHTTPHeaderFields];
          v55 = objc_alloc(MEMORY[0x277CCACA8]);
          hTTPBody = [(NSMutableURLRequest *)self->_activationRequest HTTPBody];
          v57 = [v55 initWithData:hTTPBody encoding:4];
          v58 = [v52 stringWithFormat:@"%@\n%@\n%@", v53, allHTTPHeaderFields, v57];

          v59 = pbb_activation_log([v58 writeToFile:v51 atomically:1 encoding:4 error:0]);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v76 = v51;
            _os_log_impl(&dword_25DE64000, v59, OS_LOG_TYPE_DEFAULT, "Writing Activation Request to %@", buf, 0xCu);
          }
        }
      }

      if (self->_activationRequest)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__PBBridgeCompanionController_sendProxyActivationRequest___block_invoke;
        block[3] = &unk_2799F4468;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        v66 = pbb_activation_log(_dumpActivationRequests);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeCompanionController sendProxyActivationRequest:];
        }

        v67 = objc_loadWeakRetained(&self->_delegate);
        [v67 remoteDidFailActivation:4 description:@"Decoded request from Gizmo is nil"];
      }

      goto LABEL_38;
    }

    v63 = pbb_activation_log(v42);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = v63;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        error = [v34 error];
        request5 = [v11 request];
        v72 = [request5 length];
        *buf = 138543618;
        v76 = error;
        v77 = 2048;
        v78 = v72;
        _os_log_error_impl(&dword_25DE64000, v64, OS_LOG_TYPE_ERROR, "Decoding error (%{public}@) while decoding request (%ld bytes)", buf, 0x16u);
      }
    }

    v65 = objc_loadWeakRetained(&self->_delegate);
    [v65 remoteDidFailActivation:4 description:@"Exception decoding request from Gizmo"];
  }

LABEL_39:
}

void __58__PBBridgeCompanionController_sendProxyActivationRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 120);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "Sending Proxy Activation: (%@)", &v11, 0xCu);
  }

  *(*(a1 + 32) + 76) = 1;
  [*(a1 + 32) refreshTimeoutTimerWithNewActivationGranularState:2];
  v4 = *(a1 + 32);
  if (*(v4 + 68))
  {
    v5 = MEMORY[0x277CCAD20];
    v6 = [*(v4 + 120) URL];
    v7 = [v6 host];
    [v5 setAllowsAnyHTTPSCertificate:1 forHost:v7];

    v4 = *(a1 + 32);
  }

  v8 = [v4 _connectionWithRequest:*(v4 + 120)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = v8;
}

- (void)sendProxyActivationWithCustomRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    if (self->_granularActivationState == -1)
    {
      WeakRetained = pbb_activation_log(requestCopy);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DE64000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Custom Activation Request was issued after Watch was already activated. Dropping it on the floor.", buf, 2u);
      }
    }

    else
    {
      self->_awaitingCustomResponse = 1;
      v6 = [requestCopy mutableCopy];
      activationRequest = self->_activationRequest;
      self->_activationRequest = v6;

      v8 = [v5 setValue:self->_remoteActivationUserAgent forHTTPHeaderField:@"User-Agent"];
      if (PBIsInternalInstall(v8, v9) && [(PBBridgeCompanionController *)self _dumpActivationRequests])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-BuddyML-CustomRequest-%f.txt", CFAbsoluteTimeGetCurrent()];
        v11 = MEMORY[0x277CCACA8];
        v12 = [v5 URL];
        allHTTPHeaderFields = [v5 allHTTPHeaderFields];
        v14 = objc_alloc(MEMORY[0x277CCACA8]);
        hTTPBody = [v5 HTTPBody];
        v16 = [v14 initWithData:hTTPBody encoding:4];
        v17 = [v11 stringWithFormat:@"%@\n%@\n%@", v12, allHTTPHeaderFields, v16];

        v18 = pbb_activation_log([v17 writeToFile:v10 atomically:1 encoding:4 error:0]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v10;
          _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "Writing BuddyML Custom Request to %@", buf, 0xCu);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__PBBridgeCompanionController_sendProxyActivationWithCustomRequest___block_invoke;
      block[3] = &unk_2799F4710;
      v22 = v5;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      WeakRetained = v22;
    }
  }

  else
  {
    v20 = pbb_activation_log(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController sendProxyActivationWithCustomRequest:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteDidFailActivation:4 description:@"Gizmo Sent nil Activation Data"];
  }

  PBNotifyClientOfActivity();
}

void __68__PBBridgeCompanionController_sendProxyActivationWithCustomRequest___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 136315394;
    v12 = "[PBBridgeCompanionController sendProxyActivationWithCustomRequest:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s: Sending Proxy Activation Custom Request (%@)", &v11, 0x16u);
  }

  *(*(a1 + 40) + 76) = 1;
  [*(a1 + 40) refreshTimeoutTimerWithNewActivationGranularState:2];
  v4 = *(a1 + 40);
  if (v4[68] == 1)
  {
    v5 = MEMORY[0x277CCAD20];
    v6 = [*(a1 + 32) URL];
    v7 = [v6 host];
    [v5 setAllowsAnyHTTPSCertificate:1 forHost:v7];

    v4 = *(a1 + 40);
  }

  v8 = [v4 _connectionWithRequest:*(a1 + 32)];
  v9 = *(a1 + 40);
  v10 = *(v9 + 112);
  *(v9 + 112) = v8;
}

- (void)connectionDidFinishLoading:(id)loading
{
  v44 = *MEMORY[0x277D85DE8];
  if (self->_activationConnection != loading)
  {
    return;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PBBridgeActivationServerRespondedNotification" object:0];

  _testActivationResponseType = [(PBBridgeCompanionController *)self _testActivationResponseType];
  v6 = _testActivationResponseType;
  if (_testActivationResponseType)
  {
    v7 = pbb_activation_log(_testActivationResponseType);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 > 5)
      {
        v8 = &stru_286FA8098;
      }

      else
      {
        v8 = off_2799F4C10[v6 - 1];
      }

      *buf = 138412290;
      v43 = v8;
      _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Testing Fake Activation Response Type: %@", buf, 0xCu);
    }

    v9 = _ResponseDataForTestType(v6);
    activationData = self->_activationData;
    self->_activationData = v9;
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
  contentType = self->_contentType;
  if (contentType)
  {
    v13 = [(NSString *)contentType isEqualToString:@"application/x-buddyml"];
    v15 = v13;
  }

  else
  {
    v13 = [v11 rangeOfString:@"<xmlui"];
    v15 = v13 != 0x7FFFFFFFFFFFFFFFLL;
  }

  _dumpActivationRequests = PBIsInternalInstall(v13, v14);
  if (_dumpActivationRequests)
  {
    _dumpActivationRequests = [(PBBridgeCompanionController *)self _dumpActivationRequests];
    if (_dumpActivationRequests)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Response-Data-%f.txt", CFAbsoluteTimeGetCurrent()];
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
      [v18 writeToFile:v17 atomically:1 encoding:4 error:0];

      v20 = pbb_activation_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v17;
        _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, "Writing Activation Response Data to %@", buf, 0xCu);
      }
    }
  }

  v21 = !v15;
  if (v6)
  {
    v21 = 0;
  }

  if (!v21)
  {
    self->_nonSilentActivation = 1;
    if ((self->_activationState | 4) == 7)
    {
      v22 = pbb_activation_log(_dumpActivationRequests);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "ActivationStateNotSilentPOSTActivation";
LABEL_29:
        _os_log_impl(&dword_25DE64000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

    else
    {
      v22 = pbb_activation_log(_dumpActivationRequests);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "ActivationStateNotSilentPREActivation";
        goto LABEL_29;
      }
    }

    [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:6];
    ruiLoader = self->_ruiLoader;
    if (ruiLoader)
    {
      [(RUILoader *)ruiLoader cancel];
      [(RUILoader *)self->_ruiLoader setDelegate:0];
    }

    v30 = objc_alloc_init(MEMORY[0x277D461D0]);
    v31 = self->_ruiLoader;
    self->_ruiLoader = v30;

    [(RUILoader *)self->_ruiLoader setStyle:self->_remoteUIStyle];
    [(RUILoader *)self->_ruiLoader setDelegate:self];
    v32 = self->_ruiLoader;
    v33 = self->_activationData;
    v34 = [(NSMutableURLRequest *)self->_activationRequest URL];
    [(RUILoader *)v32 loadXMLUIWithData:v33 baseURL:v34];

    goto LABEL_37;
  }

  activationState = self->_activationState;
  if (activationState == 6 || activationState == 1)
  {
    v25 = pbb_activation_log(_dumpActivationRequests);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "ActivationStateTryActivate";
      v27 = v25;
      v28 = 2;
LABEL_35:
      _os_log_impl(&dword_25DE64000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    }
  }

  else
  {
    v25 = pbb_activation_log(_dumpActivationRequests);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_activationState;
      *buf = 67109120;
      LODWORD(v43) = v37;
      v26 = "Unhandled Activation State %d";
      v27 = v25;
      v28 = 8;
      goto LABEL_35;
    }
  }

  _processActivationData = [(PBBridgeCompanionController *)self _processActivationData];
LABEL_37:
  if (self->_awaitingCustomResponse && PBIsInternalInstall(_processActivationData, v36) && [(PBBridgeCompanionController *)self _dumpActivationRequests])
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-BuddyML-CustomReponse-%f.txt", CFAbsoluteTimeGetCurrent()];
    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
    [v39 writeToFile:v38 atomically:1 encoding:4 error:0];

    v41 = pbb_activation_log(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v38;
      _os_log_impl(&dword_25DE64000, v41, OS_LOG_TYPE_DEFAULT, "Writing BuddyML Custom Response to %@", buf, 0xCu);
    }
  }

  self->_awaitingCustomResponse = 0;
}

- (id)viewControllerForAlertPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];

  return navigationController;
}

- (void)loader:(id)loader didFailWithError:(id)error
{
  errorCopy = error;
  loaderCopy = loader;
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);
  [WeakRetained loader:loaderCopy didFailWithError:errorCopy];

  if (errorCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
    v10 = pbb_setupflow_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController loader:didFailWithError:];
    }
  }
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  modelCopy = model;
  loaderCopy = loader;
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);
  [WeakRetained loader:loaderCopy receivedObjectModel:modelCopy actionSignal:signal];
}

- (void)loader:(id)loader didReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  loaderCopy = loader;
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);
  [WeakRetained loader:loaderCopy didReceiveHTTPResponse:responseCopy];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  self->_awaitingCustomResponse = 0;
  v6 = pbb_activation_log(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController connection:didFailWithError:];
  }

  activationState = self->_activationState;
  if (activationState != 4)
  {
    self->_connectionFailed = 1;
    if ((activationState | 4) == 7)
    {
      v9 = pbb_activation_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController connection:didFailWithError:];
      }
    }

    else
    {
      v9 = pbb_activation_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController connection:didFailWithError:];
      }
    }
  }

  if (errorCopy && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0))
  {
    v7 = PBUserCorrectableNetworkError([errorCopy code]);
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (self->_activationRetries <= 0)
  {
    v13 = pbb_activation_log(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      activationRequest = self->_activationRequest;
      *buf = 138412290;
      v18 = activationRequest;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "Retrying activation due to correctable failure: %@", buf, 0xCu);
    }

    v15 = [(PBBridgeCompanionController *)self _connectionWithRequest:self->_activationRequest];
    activationConnection = self->_activationConnection;
    self->_activationConnection = v15;

    ++self->_activationRetries;
  }

  else
  {
    [(PBBridgeCompanionController *)self _processActivationData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Proxy Activation Request Failed: (%@)", errorCopy];
    [WeakRetained remoteDidFailActivation:5 description:errorCopy userActionable:v10];
  }
}

- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  connectionCopy = connection;
  requestCopy = request;
  responseCopy = response;
  v11 = pbb_activation_log(responseCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController connection:requestCopy willSendRequest:self redirectResponse:v11];
  }

  if (responseCopy)
  {
    if ([responseCopy statusCode] == 302)
    {
      activationRequest = self->_activationRequest;
      if (activationRequest)
      {
        hTTPBody = [(NSMutableURLRequest *)activationRequest HTTPBody];

        if (hTTPBody)
        {
          v14 = [(NSMutableURLRequest *)requestCopy mutableCopy];
          [(NSMutableURLRequest *)v14 setHTTPMethod:@"POST"];
          v15 = [(NSMutableURLRequest *)self->_activationRequest valueForHTTPHeaderField:@"Content-Type"];
          [(NSMutableURLRequest *)v14 setValue:v15 forHTTPHeaderField:@"Content-Type"];

          v16 = [(NSMutableURLRequest *)self->_activationRequest valueForHTTPHeaderField:@"Content-Length"];
          [(NSMutableURLRequest *)v14 setValue:v16 forHTTPHeaderField:@"Content-Length"];

          hTTPBody2 = [(NSMutableURLRequest *)self->_activationRequest HTTPBody];
          [(NSMutableURLRequest *)v14 setHTTPBody:hTTPBody2];

          requestCopy = v14;
        }
      }
    }
  }

  if (self->_activationConnection == connectionCopy && self->_activationRequest != requestCopy)
  {
    v18 = [(NSMutableURLRequest *)requestCopy mutableCopy];
    v19 = self->_activationRequest;
    self->_activationRequest = v18;
  }

  return requestCopy;
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  v45 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = pbb_activation_log(responseCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v42 = 1238;
    *&v42[4] = 2080;
    *&v42[6] = "[PBBridgeCompanionController connection:didReceiveResponse:]";
    v43 = 2112;
    v44 = responseCopy;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%d %s -- %@", buf, 0x1Cu);
  }

  statusCode = [responseCopy statusCode];
  self->_activationRetries = 0;
  _dumpActivationRequests = PBIsInternalInstall(statusCode, v8);
  if (_dumpActivationRequests)
  {
    _dumpActivationRequests = [(PBBridgeCompanionController *)self _dumpActivationRequests];
    if (_dumpActivationRequests)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Response-%f.txt", CFAbsoluteTimeGetCurrent()];
      v11 = MEMORY[0x277CCACA8];
      v12 = [responseCopy URL];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
      allHeaderFields = [responseCopy allHeaderFields];
      v15 = [v11 stringWithFormat:@"%@\n%@\n%@", v12, v13, allHeaderFields];

      v40 = v15;
      v16 = pbb_activation_log([v15 writeToFile:v10 atomically:1 encoding:4 error:0]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v42 = v10;
        _os_log_impl(&dword_25DE64000, v16, OS_LOG_TYPE_DEFAULT, "Writing Activation Response to %@", buf, 0xCu);
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Request-%f.txt", CFAbsoluteTimeGetCurrent()];
      v18 = MEMORY[0x277CCACA8];
      v19 = [(NSMutableURLRequest *)self->_activationRequest URL];
      allHTTPHeaderFields = [(NSMutableURLRequest *)self->_activationRequest allHTTPHeaderFields];
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      hTTPBody = [(NSMutableURLRequest *)self->_activationRequest HTTPBody];
      v23 = [v21 initWithData:hTTPBody encoding:4];
      v24 = [v18 stringWithFormat:@"%@%@\n%@", v19, allHTTPHeaderFields, v23];

      v25 = pbb_activation_log([v24 writeToFile:v17 atomically:1 encoding:4 error:0]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v42 = v17;
        _os_log_impl(&dword_25DE64000, v25, OS_LOG_TYPE_DEFAULT, "Writing Activation Request to %@", buf, 0xCu);
      }
    }
  }

  if (statusCode < 400)
  {
    goto LABEL_18;
  }

  v26 = pbb_activation_log(_dumpActivationRequests);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController connection:didReceiveResponse:];
  }

  if (!self->_sentActivationRequest)
  {
    v34 = pbb_activation_log(v27);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v34, OS_LOG_TYPE_DEFAULT, "Passing Session failure to MA for fallback.", buf, 2u);
    }

LABEL_18:
    v35 = objc_alloc_init(MEMORY[0x277CBEB28]);
    activationData = self->_activationData;
    self->_activationData = v35;

    allHeaderFields2 = [responseCopy allHeaderFields];
    allHeaders = self->_allHeaders;
    self->_allHeaders = allHeaderFields2;

    WeakRetained = [(NSDictionary *)self->_allHeaders objectForKey:@"Content-Type"];
    v39 = [WeakRetained copy];
    contentType = self->_contentType;
    self->_contentType = v39;
    goto LABEL_19;
  }

  [(NSURLConnection *)self->_activationConnection cancel];
  activationConnection = self->_activationConnection;
  self->_activationConnection = 0;

  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  v30 = self->_contentType;
  self->_contentType = 0;

  v31 = self->_activationData;
  self->_activationData = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  contentType = [MEMORY[0x277CCACA8] stringWithFormat:@"Activation Failed with Status: %d", statusCode];
  [WeakRetained remoteDidFailActivation:7 description:contentType];
LABEL_19:
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  connectionCopy = connection;
  v8 = pbb_activation_log(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[PBBridgeCompanionController connection:didReceiveData:]";
    v15 = 2048;
    v16 = [dataCopy length];
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%s: Bytes received %lu", &v13, 0x16u);
  }

  activationConnection = self->_activationConnection;
  if (activationConnection == connectionCopy)
  {
    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:3];
    activationData = self->_activationData;
    if (activationData)
    {
      [(NSMutableData *)activationData appendData:dataCopy];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:dataCopy];
      v12 = self->_activationData;
      self->_activationData = v11;
    }
  }
}

- (void)_processActivationData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[PBBridgeCompanionController _processActivationData]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  activationData = self->_activationData;
  v6 = pbb_activation_log(v5);
  v7 = v6;
  if (activationData)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[PBBridgeCompanionController _processActivationData]";
      _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%s: Sending activation data.", buf, 0xCu);
    }

    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:4];
    v8 = self->_allHeaders;
    v9 = objc_opt_new();
    if (v8)
    {
      v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v10 encodeObject:v8 forKey:@"PBBridgeActivationRequestKey"];
      [v10 finishEncoding];
      encodedData = [v10 encodedData];

      v9 = encodedData;
    }

    allHeaders = self->_allHeaders;
    self->_allHeaders = 0;

    if (PBLogPerformanceMetrics(v13, v14))
    {
      v15 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v15 endMacroActivity:@"PBBridgeProxyActivationStageTwoActivityName" beginTime:CFAbsoluteTimeGetCurrent()];
      v17 = v16;

      [PBBridgeCAReporter pushTimingType:3 withValue:v17];
    }

    objc_initWeak(buf, self);
    v18 = dispatch_get_global_queue(25, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__PBBridgeCompanionController__processActivationData__block_invoke;
    v20[3] = &unk_2799F4BA0;
    objc_copyWeak(&v22, buf);
    v21 = v9;
    v19 = v9;
    dispatch_async(v18, v20);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController _processActivationData];
    }

    [(PBBridgeCompanionController *)self _cleanup];
  }
}

void __53__PBBridgeCompanionController__processActivationData__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D37B50] sharedInstance];
    v4 = [v3 compatibilityState];

    if (v4 < 2)
    {
      v7 = pbb_activation_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __53__PBBridgeCompanionController__processActivationData__block_invoke_cold_1();
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v12[0] = WeakRetained[16];
      v12[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
      [WeakRetained _sendRemoteCommandWithMessageID:2 withArguments:v7];
    }

    if (PBLogPerformanceMetrics(v8, v9))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __53__PBBridgeCompanionController__processActivationData__block_invoke_581;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      *&v11[4] = Current;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }

    [WeakRetained _cleanup];
  }
}

void __53__PBBridgeCompanionController__processActivationData__block_invoke_581(uint64_t a1)
{
  v2 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v2 beginMacroActivity:@"PBBridgeProxyActivationStageThreeActivityName" beginTime:*(a1 + 32)];
}

- (void)_cleanup
{
  self->_nonSilentActivation = 0;
  [(NSURLConnection *)self->_activationConnection cancel];
  activationConnection = self->_activationConnection;
  self->_activationConnection = 0;

  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  contentType = self->_contentType;
  self->_contentType = 0;

  activationData = self->_activationData;
  self->_activationData = 0;

  self->_activationRetries = 0;
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  buttonCopy = button;
  attributesCopy = attributes;
  v11 = pbb_setupflow_log(attributesCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = modelCopy;
    v14 = 2112;
    v15 = buttonCopy;
    v16 = 2112;
    v17 = attributesCopy;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Pressed RUI Button... (RUIObjectModel %@, buttonName %@, attributes %@)", &v12, 0x20u);
  }

  [(PBBridgeCompanionController *)self tellGizmoToBeginActivation];
}

- (void)gizmoDidEndPasscodeCreation:(id)creation
{
  v37 = *MEMORY[0x277D85DE8];
  creationCopy = creation;
  type = [creationCopy type];
  context = [creationCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDidEndPasscodeCreation alloc];
    data = [creationCopy data];
    v10 = [(PBBProtoDidEndPasscodeCreation *)v8 initWithData:data];

    self->_passcodeSet = [(PBBProtoDidEndPasscodeCreation *)v10 success];
    isLong = [(PBBProtoDidEndPasscodeCreation *)v10 isLong];
    v12 = isLong;
    if (isLong)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      activeWatch = [mEMORY[0x277D75128] activeWatch];

      v15 = [activeWatch valueForProperty:*MEMORY[0x277D2BBB8]];
      v16 = [activeWatch valueForProperty:*MEMORY[0x277D2BB60]];
      v17 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanosystemsettings" pairingID:v15 pairingDataStore:v16];
      [v17 setBool:0 forKey:@"simple-passcode"];
      synchronize = [v17 synchronize];
    }

    v19 = pbb_setupflow_log(isLong);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      passcodeSet = self->_passcodeSet;
      v30[0] = 67109890;
      v30[1] = 1404;
      v31 = 2080;
      v32 = "[PBBridgeCompanionController gizmoDidEndPasscodeCreation:]";
      v33 = 1024;
      v34 = passcodeSet;
      v35 = 1024;
      v36 = v12;
      _os_log_impl(&dword_25DE64000, v19, OS_LOG_TYPE_DEFAULT, "%d %s (Enabled Passcode: %d, is long: %d)", v30, 0x1Eu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidCompletePasscodeCreationNotification" object:0];

    if (PBLogPerformanceMetrics(v22, v23))
    {
      v24 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      context2 = [creationCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v24 addMilestone:v27 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }
}

- (void)gizmoFailedToCreatePasscode:(id)passcode
{
  passcodeCopy = passcode;
  type = [passcodeCopy type];
  context = [passcodeCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoDidFailToCreatePasscode alloc];
    data = [passcodeCopy data];
    v10 = [(PBBProtoDidFailToCreatePasscode *)v8 initWithData:data];

    v11 = pbb_setupflow_log([(PBBProtoDidFailToCreatePasscode *)v10 error]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController gizmoFailedToCreatePasscode:];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidFailToCreatePasscodeNotification" object:0];

    PBNotifyClientOfActivity();
  }
}

- (void)gizmoDidEndPasscodeChange:(id)change
{
  v37 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  type = [changeCopy type];
  context = [changeCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDidEndPasscodeCreation alloc];
    data = [changeCopy data];
    v10 = [(PBBProtoDidEndPasscodeCreation *)v8 initWithData:data];

    self->_passcodeSet = [(PBBProtoDidEndPasscodeCreation *)v10 success];
    isLong = [(PBBProtoDidEndPasscodeCreation *)v10 isLong];
    v12 = isLong;
    if (isLong)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      activeWatch = [mEMORY[0x277D75128] activeWatch];

      v15 = [activeWatch valueForProperty:*MEMORY[0x277D2BBB8]];
      v16 = [activeWatch valueForProperty:*MEMORY[0x277D2BB60]];
      v17 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanosystemsettings" pairingID:v15 pairingDataStore:v16];
      [v17 setBool:0 forKey:@"simple-passcode"];
      synchronize = [v17 synchronize];
    }

    v19 = pbb_setupflow_log(isLong);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      passcodeSet = self->_passcodeSet;
      v30[0] = 67109890;
      v30[1] = 1453;
      v31 = 2080;
      v32 = "[PBBridgeCompanionController gizmoDidEndPasscodeChange:]";
      v33 = 1024;
      v34 = passcodeSet;
      v35 = 1024;
      v36 = v12;
      _os_log_impl(&dword_25DE64000, v19, OS_LOG_TYPE_DEFAULT, "%d %s (Enabled Passcode: %d, is long: %d)", v30, 0x1Eu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidCompletePasscodeChangeNotification" object:0];

    if (PBLogPerformanceMetrics(v22, v23))
    {
      v24 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      context2 = [changeCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v24 addMilestone:v27 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }
}

- (void)gizmoDidBeginUnlockPairing:(id)pairing
{
  v16 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v5 = pbb_setupflow_log(pairingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = 1466;
    v14 = 2080;
    v15 = "[PBBridgeCompanionController gizmoDidBeginUnlockPairing:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  type = [pairingCopy type];
  context = [pairingCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    unlockPairingAssertion = self->_unlockPairingAssertion;
    if (unlockPairingAssertion)
    {
      CFRelease(unlockPairingAssertion);
    }

    v10[0] = @"MKBAssertionKey";
    v10[1] = @"MKBAssertionTimeout";
    v11[0] = @"RemoteProfile";
    v11[1] = &unk_286FB41F0;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    self->_unlockPairingAssertion = MKBDeviceLockAssertion();
  }
}

- (void)gizmoDidEndUnlockPairing:(id)pairing
{
  v29 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  type = [pairingCopy type];
  context = [pairingCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDidMakeAutoLockChoice alloc];
    data = [pairingCopy data];
    v10 = [(PBBProtoDidMakeAutoLockChoice *)v8 initWithData:data];

    accept = [(PBBProtoDidMakeAutoLockChoice *)v10 accept];
    self->_selectedPairedUnlock = accept;
    v12 = pbb_setupflow_log(accept);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      selectedPairedUnlock = self->_selectedPairedUnlock;
      v24[0] = 67109634;
      v24[1] = 1489;
      v25 = 2080;
      v26 = "[PBBridgeCompanionController gizmoDidEndUnlockPairing:]";
      v27 = 1024;
      v28 = selectedPairedUnlock;
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%d %s (Enabled Paired Unlock %d)", v24, 0x18u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidCompleteUnlockPairingNotification" object:0];

    if (PBLogPerformanceMetrics(v15, v16))
    {
      v17 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      context2 = [pairingCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v17 addMilestone:v20 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    unlockPairingAssertion = self->_unlockPairingAssertion;
    if (unlockPairingAssertion)
    {
      CFRelease(unlockPairingAssertion);
      self->_unlockPairingAssertion = 0;
    }

    PBNotifyClientOfActivity();
  }
}

- (void)sendGizmoPasscodeRestrictions
{
  v37 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  effectiveRestrictions = [mEMORY[0x277D262A0] effectiveRestrictions];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [effectiveRestrictions objectForKey:*MEMORY[0x277D26158]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = *MEMORY[0x277D26160];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        v13 = [v12 objectForKey:v9];

        if (v13)
        {
          [dictionary setObject:v13 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v25 = effectiveRestrictions;
  v14 = [effectiveRestrictions objectForKey:*MEMORY[0x277D26168]];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    v18 = *MEMORY[0x277D26170];
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [v14 objectForKey:v20];
        v22 = [v21 objectForKey:v18];

        if (v22)
        {
          [dictionary setObject:v22 forKey:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v16);
  }

  v34 = dictionary;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:20 withArguments:v23];
}

- (void)tellGizmoToSetDiagnosticsEnabled:(BOOL)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:10 withArguments:v5];
}

- (void)tellGizmoToSetLocationEnabled:(BOOL)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:8 withArguments:v5];
}

- (void)tellGizmoToSetFitnessRouteTrackingEnabled:(BOOL)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:33 withArguments:v5];
}

- (void)tellWatchToSetSiriEnabled:(BOOL)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:28 withArguments:v5];
}

- (void)tellGizmoToSetMessagesinCloudEnabled:(BOOL)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:31 withArguments:v5];
}

- (void)tellWatchToSetLauncherViewMode:(int64_t)mode
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:112 withArguments:v5];
}

- (void)retrieveAppViewListImageFromGizmo:(CGSize)gizmo completion:(id)completion
{
  height = gizmo.height;
  width = gizmo.width;
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  appViewListImageCompletion = self->_appViewListImageCompletion;
  if (appViewListImageCompletion)
  {
    appViewListImageCompletion[2](appViewListImageCompletion, 0);
  }

  v9 = [completionCopy copy];
  v10 = self->_appViewListImageCompletion;
  self->_appViewListImageCompletion = v9;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = v12;

  v15 = pbb_setupflow_log(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v27.width = width;
    v27.height = height;
    v16 = NSStringFromSize(v27);
    *buf = 138412546;
    v23 = v16;
    v24 = 2048;
    v25 = v13;
    _os_log_impl(&dword_25DE64000, v15, OS_LOG_TYPE_DEFAULT, ">>>> retrieve app view list image from gizmo %@ %f", buf, 0x16u);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v21[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v21[1] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v21[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:113 withArguments:v20];
}

- (void)handleAppViewListImageResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoAppViewListImageResponse alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoAppViewListImageResponse *)v8 initWithData:data];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__PBBridgeCompanionController_handleAppViewListImageResponse___block_invoke;
    v12[3] = &unk_2799F4710;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __62__PBBridgeCompanionController_handleAppViewListImageResponse___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 264))
  {
    if ([*(a1 + 40) hasImageData])
    {
      v2 = MEMORY[0x277D755B8];
      v3 = [*(a1 + 40) imageData];
      v6 = [v2 imageWithData:v3 scale:2.0];
    }

    else
    {
      v6 = 0;
    }

    (*(*(*(a1 + 32) + 264) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 264);
    *(v4 + 264) = 0;
  }
}

- (void)tellGizmoToPushControllerType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PBBuddyControllerDescription(type);
    *buf = 67109378;
    typeCopy = type;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Telling Gizmo to push (%d - %@)", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v9 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:3 withArguments:v8];
}

- (void)tellGizmoToPopToControllerType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PBBuddyControllerDescription(type);
    *buf = 67109378;
    typeCopy = type;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Telling Gizmo to pop to (%d - %@)", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v9 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:4 withArguments:v8];
}

- (void)tellGizmoToShowLockedOnAnimationTimeToFlash:(double)flash animationCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [completion copy];
  lockedOnAnimationCompletion = self->_lockedOnAnimationCompletion;
  self->_lockedOnAnimationCompletion = v6;

  v9 = *&PBBridgeAnimationSyncOffsetTime - flash;
  v10 = 0.0;
  if (*&PBBridgeAnimationSyncOffsetTime - flash < 0.0)
  {
    v11 = pbb_setupflow_log(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      flashCopy = flash;
      v21 = 2048;
      v22 = PBBridgeAnimationSyncOffsetTime;
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Time to flash is too long (%f vs %f). Pushing back animation.", buf, 0x16u);
    }

    v10 = fabs(v9);
    v9 = 0.0;
  }

  v12 = dispatch_time(0, (v9 * 1000000000.0));
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__PBBridgeCompanionController_tellGizmoToShowLockedOnAnimationTimeToFlash_animationCompletion___block_invoke;
  v17[3] = &unk_2799F4468;
  v17[4] = self;
  dispatch_after(v12, MEMORY[0x277D85CD0], v17);
  v14 = pbb_setupflow_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "Telling Gizmo show Lock-On Animation", buf, 2u);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v18 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:17 withArguments:v16];

  PBNotifyClientOfActivity();
}

void __95__PBBridgeCompanionController_tellGizmoToShowLockedOnAnimationTimeToFlash_animationCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 184);
    *(v3 + 184) = 0;
  }
}

- (void)tellGizmoToSetCrownOrientationRight:(BOOL)right
{
  rightCopy = right;
  v12 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"On Left";
    if (rightCopy)
    {
      v6 = @"On Right";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Telling Gizmo To Set Crown Orientation: %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:rightCopy];
  v9 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:18 withArguments:v8];
}

- (void)tellGizmoToUpdateSyncProgressTo:(double)to withState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    toCopy = to;
    v14 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Telling Gizmo To Update Sync Progress to: %f and state: %ld", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:to];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{state, v8}];
  v11[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:19 withArguments:v10];
}

- (void)tellGizmoToBeginActivation
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PBBridgeCompanionController tellGizmoToBeginActivation]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:1];
  setupController = [*MEMORY[0x277D76620] setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:12 withValue:MEMORY[0x277CBEC38] withError:0];
  [pairingReportManager checkInWithOpenPairingTimeEvent:18];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:11 withArguments:0];
}

- (void)tellGizmoToRetryActivation
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PBBridgeCompanionController tellGizmoToRetryActivation]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:15 withArguments:0];
}

- (void)invalidateTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state
{
  dispatch_assert_queue_not_V2(self->_timeoutTrackerQueue);
  timeoutTrackerQueue = self->_timeoutTrackerQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__PBBridgeCompanionController_invalidateTimeoutTimerWithNewActivationGranularState___block_invoke;
  v6[3] = &unk_2799F4BC8;
  stateCopy = state;
  v6[4] = self;
  dispatch_sync(timeoutTrackerQueue, v6);
}

void __84__PBBridgeCompanionController_invalidateTimeoutTimerWithNewActivationGranularState___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PBActivationGranularStateDescription(*(a1 + 40));
    v7 = 136315394;
    v8 = "[PBBridgeCompanionController invalidateTimeoutTimerWithNewActivationGranularState:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s: new state (%@)", &v7, 0x16u);
  }

  *(*(a1 + 32) + 74) = *(a1 + 40);
  v4 = *(*(a1 + 32) + 160);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = 0;
  }
}

- (void)refreshTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state
{
  dispatch_assert_queue_not_V2(self->_timeoutTrackerQueue);
  timeoutTrackerQueue = self->_timeoutTrackerQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke;
  v6[3] = &unk_2799F4BC8;
  stateCopy = state;
  v6[4] = self;
  dispatch_sync(timeoutTrackerQueue, v6);
}

void __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PBActivationGranularStateDescription(*(a1 + 40));
    *buf = 136315394;
    v22 = COERCE_DOUBLE("[PBBridgeCompanionController refreshTimeoutTimerWithNewActivationGranularState:]_block_invoke");
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s: new state (%@)", buf, 0x16u);
  }

  *(*(a1 + 32) + 74) = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v4[20])
  {
    dispatch_source_cancel(v4[20]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = 0;

    v4 = *(a1 + 32);
  }

  v7 = [(dispatch_source_t *)v4 service];

  if (v7)
  {
    v9 = 0.0;
    if (*(*(a1 + 32) + 74) - 1 <= 5)
    {
      v9 = dbl_25DEB52D0[(*(*(a1 + 32) + 74) - 1)];
    }

    v10 = pbb_activation_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PBActivationGranularStateDescription(*(*(a1 + 32) + 74));
      *buf = 134218242;
      v22 = v9 / 60.0;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "Setting %1.f minute timeout for activation phase %@", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v13 = *(a1 + 32);
    v14 = *(v13 + 160);
    *(v13 + 160) = v12;

    v15 = *(*(a1 + 32) + 160);
    v16 = dispatch_time(0, (v9 * 1000000000.0));
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    v17 = *(*(a1 + 32) + 160);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke_610;
    handler[3] = &unk_2799F4BF0;
    objc_copyWeak(&v20, buf);
    dispatch_source_set_event_handler(v17, handler);
    dispatch_resume(*(*(a1 + 32) + 160));
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v18 = pbb_activation_log(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "Skipped Timeout Refresh Because Service Was Nil", buf, 2u);
    }
  }
}

void __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke_610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActivationTimeout:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 activationTimedOut];
}

- (void)activationTimedOut
{
  v3 = PBActivationGranularStateDescription(self);
  *v10 = 136315650;
  *&v10[4] = "[PBBridgeCompanionController activationTimedOut]";
  *&v10[12] = 2112;
  *&v10[14] = v3;
  *&v10[22] = 2112;
  OUTLINED_FUNCTION_4(&dword_25DE64000, v4, v5, "%s: Activation time out in phase %@ (Last message sent was %@)", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16], *(a2 + 168));
}

- (void)tellGizmoToKeepAliveForActivationEvent
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 1771;
    v5 = 2080;
    v6 = "[PBBridgeCompanionController tellGizmoToKeepAliveForActivationEvent]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v4, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:24 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)handleRemoteActivationDetails:(id)details
{
  detailsCopy = details;
  type = [detailsCopy type];
  context = [detailsCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoRemoteActivationFailureReport alloc];
    data = [detailsCopy data];
    v10 = [(PBBProtoRemoteActivationFailureReport *)v8 initWithData:data];

    activationError = [(PBBProtoRemoteActivationFailureReport *)v10 activationError];
    v18 = 0;
    v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:activationError error:&v18];
    v13 = v18;
    v14 = v13;
    if (v13)
    {
      v15 = pbb_activation_log(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(PBBridgeCompanionController *)v14 handleRemoteActivationDetails:activationError];
      }
    }

    v16 = [v12 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    v17 = pbb_activation_log([v12 finishDecoding]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController handleRemoteActivationDetails:];
    }
  }
}

- (void)queryGizmoForShowWarrantySentinelAndRestoreDeviceName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = pbb_setupflow_log(nameCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v22 = 1803;
    v23 = 2080;
    v24 = "[PBBridgeCompanionController queryGizmoForShowWarrantySentinelAndRestoreDeviceName:]";
    v25 = 2112;
    v26 = nameCopy;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s -- Querying for Warranty Sentinel; Device name: %@", buf, 0x1Cu);
  }

  null = [MEMORY[0x277CBEB68] null];
  v20 = null;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

  if (nameCopy)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v19 = 0;
  [objc_opt_class() iCloudFirstName:&v19 lastName:&v18];
  v8 = v19;
  v9 = v18;
  v10 = v9;
  if (!v8)
  {

    v16 = 0;
    v17 = 0;
    [objc_opt_class() meCardFirstName:&v17 lastName:&v16];
    v8 = v17;
    v10 = v16;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v11 = [objc_opt_class() displayNameWithFirstName:v8 lastName:v10];
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DEVICE_NAME" value:&stru_286FA8098 table:@"Localizable"];
  nameCopy = [v12 stringWithFormat:v14, v11];

  if (nameCopy)
  {
LABEL_7:
    v15 = [v7 arrayByAddingObject:nameCopy];

    v10 = nameCopy;
    v7 = v15;
LABEL_8:
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:14 withArguments:v7];
}

- (void)tellGizmoToDeleteWarrantySentinel
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 1833;
    v5 = 2080;
    v6 = "[PBBridgeCompanionController tellGizmoToDeleteWarrantySentinel]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s -- Telling Gizmo to delete its Warranty Sentinel", v4, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:14 withArguments:&unk_286FB4238];
}

- (void)handleWarrantySentinelResponse:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoWarrantySentinel alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoWarrantySentinel *)v8 initWithData:data];

    v12 = pbb_setupflow_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Got Warranty Sentinel Response: (%@)", buf, 0xCu);
    }

    hasSentinelExists = [(PBBProtoWarrantySentinel *)v10 hasSentinelExists];
    if (hasSentinelExists)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBBProtoWarrantySentinel sentinelExists](v10, "sentinelExists", @"PBBridgeWarrantySentinelExistsKey"}];
      v29 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v17 = [v16 mutableCopy];

      appleLanguages = [(PBBProtoWarrantySentinel *)v10 appleLanguages];

      if (appleLanguages)
      {
        appleLanguages2 = [(PBBProtoWarrantySentinel *)v10 appleLanguages];
        [v17 setObject:appleLanguages2 forKeyedSubscript:@"PBBridgeGizmoAppleLanguagesKey"];
      }

      if ([(PBBProtoWarrantySentinel *)v10 hasAppleLocale])
      {
        appleLocale = [(PBBProtoWarrantySentinel *)v10 appleLocale];
        [v17 setObject:appleLocale forKeyedSubscript:@"PBBridgeGizmoAppleLocaleKey"];
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"PBBridgeWarrantySentinelNotification" object:0 userInfo:v17];
    }

    if (PBLogPerformanceMetrics(hasSentinelExists, v14))
    {
      v22 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      context2 = [responseCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v22 addMilestone:v25 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }
}

- (void)tellGizmoToPrepareForInitialSyncWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [completion copy];
  initialSyncPrepCompletion = self->_initialSyncPrepCompletion;
  self->_initialSyncPrepCompletion = v4;

  v7 = pbb_setupflow_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = 1874;
    v9 = 2080;
    v10 = "[PBBridgeCompanionController tellGizmoToPrepareForInitialSyncWithCompletion:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%d %s", v8, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:21 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)watchDidPrepareForInitialSync:(id)sync
{
  v15 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  type = [syncCopy type];
  context = [syncCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v9 = pbb_setupflow_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109378;
      v12[1] = 1884;
      v13 = 2080;
      v14 = "[PBBridgeCompanionController watchDidPrepareForInitialSync:]";
      _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "%d %s", v12, 0x12u);
    }

    initialSyncPrepCompletion = self->_initialSyncPrepCompletion;
    if (initialSyncPrepCompletion)
    {
      initialSyncPrepCompletion[2]();
      v11 = self->_initialSyncPrepCompletion;
      self->_initialSyncPrepCompletion = 0;
    }
  }
}

- (void)queryGizmoForOfflineTerms
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 1897;
    v5 = 2080;
    v6 = "[PBBridgeCompanionController queryGizmoForOfflineTerms]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s -- Querying for Offline Terms", v4, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:16 withArguments:0];
}

- (void)handleOfflineTermsResponse:(id)response
{
  v66 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoOfflineTerms alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoOfflineTerms *)v8 initWithData:data];

    v12 = pbb_setupflow_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      license = [(PBBProtoOfflineTerms *)v10 license];
      v14 = [license length];
      multiterms = [(PBBProtoOfflineTerms *)v10 multiterms];
      v16 = [multiterms length];
      warranty = [(PBBProtoOfflineTerms *)v10 warranty];
      *buf = 134218752;
      v59 = v10;
      v60 = 2048;
      v61 = v14;
      v62 = 2048;
      v63 = v16;
      v64 = 2048;
      v65 = [warranty length];
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Got Offline Terms Response: (%p); license: (%lu bytes); multiterms: (%lu bytes); warranty: (%lu bytes);", buf, 0x2Au);
    }

    if (PBLogPerformanceMetrics(v18, v19))
    {
      v20 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      context2 = [responseCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v20 addMilestone:v23 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    v56 = @"PBBridgeOfflineTermsLicenseKey";
    license2 = [(PBBProtoOfflineTerms *)v10 license];
    v57 = license2;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v28 = [v27 mutableCopy];

    if ([(PBBProtoOfflineTerms *)v10 hasMultiterms])
    {
      v29 = objc_alloc(MEMORY[0x277CCACA8]);
      multiterms2 = [(PBBProtoOfflineTerms *)v10 multiterms];
      v55 = [v29 initWithData:multiterms2 encoding:4];

      v49 = MEMORY[0x277CCACA8];
      v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v53 = v28;
      v54 = [v52 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_286FA8098 table:@"Localizable"];
      v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v51 localizedStringForKey:@"IMPORTANT" value:&stru_286FA8098 table:@"Localizable"];
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v48 localizedStringForKey:@"Part1" value:&stru_286FA8098 table:@"Localizable"];
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v47 localizedStringForKey:@"TC_HEADER" value:&stru_286FA8098 table:@"Localizable"];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v45 localizedStringForKey:@"WARRANTY_HEADER" value:&stru_286FA8098 table:@"Localizable"];
      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v43 localizedStringForKey:@"Part2" value:&stru_286FA8098 table:@"Localizable"];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v40 localizedStringForKey:@"Part3" value:&stru_286FA8098 table:@"Localizable"];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"AGREE" value:&stru_286FA8098 table:@"Localizable"];
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"DISAGREE" value:&stru_286FA8098 table:@"Localizable"];
      v50 = [v49 stringWithFormat:v55, v54, v46, v44, v42, v41, v31, v32, v34, v36];

      v28 = v53;
      v37 = [v50 dataUsingEncoding:4];
      [v53 setObject:v37 forKeyedSubscript:@"PBBridgeOfflineTermsMultitermsKey"];
    }

    if ([(PBBProtoOfflineTerms *)v10 hasWarranty])
    {
      warranty2 = [(PBBProtoOfflineTerms *)v10 warranty];
      [v28 setObject:warranty2 forKeyedSubscript:@"PBBridgeOfflineTermsWarrantyKey"];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeOfflineTermsNotification" object:0 userInfo:v28];
  }
}

- (void)transportBecameReachable
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v11 transportBecameReachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  v6 = pbb_setupflow_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      *buf = 136446210;
      v13 = "[PBBridgeCompanionController transportBecameReachable]";
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 transportBecameReachable];
  }

  else if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 136446466;
    v13 = "[PBBridgeCompanionController transportBecameReachable]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate (%@) missing transportBecameReachable", buf, 0x16u);
  }
}

- (void)transportBecameUnreachable
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v11 transportBecameUnreachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  v6 = pbb_setupflow_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      *buf = 136446210;
      v13 = "[PBBridgeCompanionController transportBecameUnreachable]";
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 transportBecameUnreachable];
  }

  else if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 136446466;
    v13 = "[PBBridgeCompanionController transportBecameUnreachable]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate (%@) missing transportBecameUnreachable", buf, 0x16u);
  }
}

+ (void)meCardFirstName:(id *)name lastName:(id *)lastName
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v7 = pbb_setupflow_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v16 = 1966;
    v17 = 2080;
    v18 = "+[PBBridgeCompanionController meCardFirstName:lastName:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%d %s: contactStore: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    v8 = *MEMORY[0x277CBCFF8];
    v23[0] = *MEMORY[0x277CBD000];
    v23[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v14 = 0;
    v10 = [v6 _ios_meContactWithKeysToFetch:v9 error:&v14];
    v11 = v14;

    v13 = pbb_setupflow_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v16 = 1972;
      v17 = 2080;
      v18 = "+[PBBridgeCompanionController meCardFirstName:lastName:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "%d %s: meContact: %@, error: %@", buf, 0x26u);
    }

    if (v10)
    {
      *name = [v10 givenName];
      *lastName = [v10 familyName];
    }
  }
}

+ (void)iCloudFirstName:(id *)name lastName:(id *)lastName
{
  v7 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v7 aa_primaryAppleAccount];
  *name = [aa_primaryAppleAccount aa_firstName];
  *lastName = [aa_primaryAppleAccount aa_lastName];
}

+ (id)displayNameWithFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  if (nameCopy)
  {
    v7 = nameCopy;
    if ([v7 _containsCJKScriptsOnly] && objc_msgSend(lastNameCopy, "length") && objc_msgSend(lastNameCopy, "_containsCJKScriptsOnly"))
    {
      v8 = [lastNameCopy stringByAppendingString:v7];

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tellWatchToChangeDeviceNameFor:(id)for
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (for)
  {
    forCopy = for;
    v5 = objc_opt_class();
    firstName = [forCopy firstName];
    lastName = [forCopy lastName];

    v8 = [v5 displayNameWithFirstName:firstName lastName:lastName];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DEVICE_NAME" value:&stru_286FA8098 table:@"Localizable"];
    v12 = [v9 stringWithFormat:v11, v8];

    v14[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:110 withArguments:v13];
  }
}

- (void)sendDemoWatchWirelessCredentials
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [(PBBridgeCompanionController *)self currentNetworks:0];
  firstObject = [v3 firstObject];

  v5 = [firstObject objectForKey:@"SSID_STR"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_286FA8098;
  }

  v8 = v7;

  v9 = [firstObject objectForKey:*MEMORY[0x277D29878]];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_286FA8098;
  }

  v12 = v11;

  v14[0] = v8;
  v14[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:26 withArguments:v13];
}

- (void)sendAllTinkerWirelessCredentials:(BOOL)credentials
{
  v4 = [(PBBridgeCompanionController *)self currentNetworks:credentials];
  if ([v4 count])
  {
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:104 withArguments:v4];
  }
}

- (void)sendAllWirelessCredentials:(BOOL)credentials
{
  v6 = [(PBBridgeCompanionController *)self currentNetworks:credentials];
  if ([v6 count])
  {
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:37 withArguments:v6];
  }

  else
  {
    setupController = [*MEMORY[0x277D76620] setupController];
    linkUpgradeMonitor = [setupController linkUpgradeMonitor];
    [linkUpgradeMonitor wirelessCredentialUpdateCompletedWithResult:0];
  }
}

- (id)currentNetworks:(BOOL)networks
{
  networksCopy = networks;
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = WiFiManagerClientCreate();
  if (v5)
  {
    v5 = WiFiManagerClientCopyDevices();
    if (v5)
    {
      v6 = v5;
      if (CFArrayGetCount(v5) >= 1)
      {
        CFArrayGetValueAtIndex(v6, 0);
        if (networksCopy)
        {
          v7 = WiFiManagerClientCopyNetworks();
        }

        else
        {
          *values = WiFiDeviceClientCopyCurrentNetwork();
          if (!*values)
          {
            v28 = pbb_setupflow_log(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25DE64000, v28, OS_LOG_TYPE_DEFAULT, "Unable to share network, none available", buf, 2u);
            }

            goto LABEL_31;
          }

          v7 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
        }

        v8 = v7;
        if (v7)
        {
          cf = v6;
          v33 = v4;
          if (CFArrayGetCount(v7) >= 1)
          {
            v9 = 0;
            v31 = *MEMORY[0x277D29878];
            v34 = v8;
            do
            {
              CFArrayGetValueAtIndex(v8, v9);
              IsCaptive = WiFiNetworkIsCaptive();
              if (IsCaptive || (IsCaptive = WiFiNetworkIsProfileBased(), IsCaptive) || (IsCaptive = WiFiNetworkIsEAP(), IsCaptive))
              {
                v11 = pbb_setupflow_log(IsCaptive);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  SSID = WiFiNetworkGetSSID();
                  v13 = SSID;
                  if (SSID)
                  {
                    v14 = SSID;
                  }

                  else
                  {
                    v14 = &stru_286FA8098;
                  }

                  v15 = WiFiNetworkIsCaptive();
                  IsProfileBased = WiFiNetworkIsProfileBased();
                  IsEAP = WiFiNetworkIsEAP();
                  *values = 138413058;
                  *&values[4] = v14;
                  v37 = 1024;
                  v38 = v15;
                  v39 = 1024;
                  v40 = IsProfileBased;
                  v41 = 1024;
                  v42 = IsEAP;
                  _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Could not share: %@ - Captive: %{BOOL}d ProfileBased: %{BOOL}d EAP: %{BOOL}d", values, 0x1Eu);

                  v8 = v34;
                }
              }

              else
              {
                v11 = WiFiNetworkCopyRecord();
                v18 = [v11 mutableCopy];
                [v18 removeObjectForKey:@"CHANNEL"];
                v19 = objc_opt_new();
                v20 = [v18 objectForKeyedSubscript:@"networkKnownBSSListKey"];
                v21 = [v20 count];

                if (v21)
                {
                  v22 = 0;
                  do
                  {
                    v23 = [v18 objectForKeyedSubscript:@"networkKnownBSSListKey"];
                    v24 = [v23 objectAtIndex:v22];

                    [v24 removeObjectForKey:@"CHANNEL"];
                    [v19 insertObject:v24 atIndex:v22];

                    ++v22;
                    v25 = [v18 objectForKeyedSubscript:@"networkKnownBSSListKey"];
                    v26 = [v25 count];
                  }

                  while (v26 > v22);
                }

                [v18 setObject:v19 forKeyedSubscript:@"networkKnownBSSListKey"];
                v27 = WiFiNetworkCopyPassword();
                if (v27)
                {
                  [v18 setObject:v27 forKey:v31];
                }

                [v33 addObject:v18];

                v8 = v34;
              }

              ++v9;
            }

            while (CFArrayGetCount(v8) > v9);
          }

          CFRelease(cf);
          v4 = v33;
          goto LABEL_32;
        }
      }

LABEL_31:
      v8 = v6;
LABEL_32:
      CFRelease(v8);
    }
  }

  v29 = pbb_setupflow_log(v5);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *values = 0;
    _os_log_impl(&dword_25DE64000, v29, OS_LOG_TYPE_DEFAULT, "return from current networks", values, 2u);
  }

  return v4;
}

- (id)currentWiFiNetworkName
{
  if (WiFiManagerClientCreate())
  {
    v2 = WiFiManagerClientCopyDevices();
    if (v2)
    {
      v3 = v2;
      if (CFArrayGetCount(v2) >= 1)
      {
        CFArrayGetValueAtIndex(v3, 0);
        v4 = WiFiDeviceClientCopyCurrentNetwork();
        if (!v4)
        {
LABEL_8:
          CFRelease(v3);
          goto LABEL_10;
        }

        if (!WiFiNetworkIsCaptive() && !WiFiNetworkIsProfileBased())
        {
          v4 = WiFiNetworkGetSSID();
          goto LABEL_8;
        }
      }

      v4 = 0;
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (void)watchDidIngestWirelessCredentials:(id)credentials
{
  v11 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = pbb_setupflow_log(credentialsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[PBBridgeCompanionController watchDidIngestWirelessCredentials:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  type = [credentialsCopy type];
  context = [credentialsCopy context];

  fromID = [context fromID];
  [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];
}

- (void)watchDidApplyWirelessCredentials:(id)credentials
{
  v14 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = pbb_setupflow_log(credentialsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[PBBridgeCompanionController watchDidApplyWirelessCredentials:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  type = [credentialsCopy type];
  context = [credentialsCopy context];

  fromID = [context fromID];
  v9 = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (v9)
  {
    setupController = [*MEMORY[0x277D76620] setupController];
    linkUpgradeMonitor = [setupController linkUpgradeMonitor];
    [linkUpgradeMonitor wirelessCredentialUpdateCompletedWithResult:1];
  }
}

- (void)tellWatchToPrepareForForcedSUWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pbb_setupflow_log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[PBBridgeCompanionController tellWatchToPrepareForForcedSUWithCompletion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:", &v8, 0xCu);
  }

  v6 = [completionCopy copy];
  prepareWatchForForcedSUCompletion = self->_prepareWatchForForcedSUCompletion;
  self->_prepareWatchForForcedSUCompletion = v6;

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:27 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)watchDidPrepareForForcedSU:(id)u
{
  v13 = *MEMORY[0x277D85DE8];
  uCopy = u;
  v5 = pbb_setupflow_log(uCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[PBBridgeCompanionController watchDidPrepareForForcedSU:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:", &v11, 0xCu);
  }

  type = [uCopy type];
  context = [uCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    prepareWatchForForcedSUCompletion = self->_prepareWatchForForcedSUCompletion;
    if (prepareWatchForForcedSUCompletion)
    {
      prepareWatchForForcedSUCompletion[2]();
      v10 = self->_prepareWatchForForcedSUCompletion;
      self->_prepareWatchForForcedSUCompletion = 0;
    }
  }
}

- (void)sendBuysOnWatchUsername:(id)username andPassword:(id)password withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  v10 = [completion copy];
  buysOnWatchCredentialsIngestedCompletion = self->_buysOnWatchCredentialsIngestedCompletion;
  self->_buysOnWatchCredentialsIngestedCompletion = v10;

  v13 = pbb_accountsignin_log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[PBBridgeCompanionController sendBuysOnWatchUsername:andPassword:withCompletion:]";
    v18 = 2112;
    v19 = usernameCopy;
    _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "%s -- username %@", buf, 0x16u);
  }

  v15[0] = usernameCopy;
  v15[1] = passwordCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:32 withArguments:v14];
}

- (void)requestProxiedDeviceForWatchWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [completion copy];
  remoteAccountForDeviceCompletion = self->_remoteAccountForDeviceCompletion;
  self->_remoteAccountForDeviceCompletion = v4;

  v7 = pbb_accountsignin_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[PBBridgeCompanionController requestProxiedDeviceForWatchWithCompletion:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%s:", &v8, 0xCu);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:29 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)returnedRemoteAccountForDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  type = [deviceCopy type];
  context = [deviceCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoRemoteAccountForDevice alloc];
    data = [deviceCopy data];
    v10 = [(PBBProtoRemoteAccountForDevice *)v8 initWithData:data];

    v12 = pbb_accountsignin_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[PBBridgeCompanionController returnedRemoteAccountForDevice:]";
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%s:", &v17, 0xCu);
    }

    serializedDevice = [(PBBProtoRemoteAccountForDevice *)v10 serializedDevice];
    v14 = [MEMORY[0x277CF0218] deviceWithSerializedData:serializedDevice];
    [v14 setLinkType:2];
    remoteAccountForDeviceCompletion = self->_remoteAccountForDeviceCompletion;
    if (remoteAccountForDeviceCompletion)
    {
      remoteAccountForDeviceCompletion[2](remoteAccountForDeviceCompletion, v14);
      v16 = self->_remoteAccountForDeviceCompletion;
      self->_remoteAccountForDeviceCompletion = 0;
    }
  }
}

- (void)sendComputedTimeZoneToGizmo
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = TMCopyComputedTimeZone();
  v4 = pbb_setupflow_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[PBBridgeCompanionController sendComputedTimeZoneToGizmo]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%s Sending computed time zone %@ to gizmo", buf, 0x16u);
  }

  if (v3)
  {
    v6 = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:111 withArguments:v5];
  }
}

- (void)sendTinkerAccountCredentialsWithContext:(id)context completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [completion copy];
  tinkerCredentialsIngestedCompletion = self->_tinkerCredentialsIngestedCompletion;
  selfCopy = self;
  self->_tinkerCredentialsIngestedCompletion = v7;

  setupController = [*MEMORY[0x277D76620] setupController];
  username = [contextCopy username];
  [setupController setTinkerSignInId:username];

  v12 = pbb_accountsignin_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    username2 = [contextCopy username];
    *buf = 136315394;
    v39 = "[PBBridgeCompanionController sendTinkerAccountCredentialsWithContext:completion:]";
    v40 = 2112;
    v41 = username2;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%s: username %@", buf, 0x16u);
  }

  acceptedTermsInfo = [contextCopy acceptedTermsInfo];

  if (acceptedTermsInfo)
  {
    v15 = MEMORY[0x277CCAAB0];
    acceptedTermsInfo2 = [contextCopy acceptedTermsInfo];
    v36 = 0;
    v17 = [v15 archivedDataWithRootObject:acceptedTermsInfo2 requiringSecureCoding:1 error:&v36];
    v18 = v36;

    if (v18)
    {
      v20 = pbb_accountsignin_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController sendTinkerAccountCredentialsWithContext:completion:];
      }

      v34 = v18;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v17 = 0;
  }

  username3 = [contextCopy username];
  v22 = username3;
  if (!username3)
  {
    username3 = [MEMORY[0x277CBEB68] null];
  }

  v33 = username3;
  v37[0] = username3;
  password = [contextCopy password];
  v24 = password;
  if (!password)
  {
    password = [MEMORY[0x277CBEB68] null];
  }

  v31 = password;
  v37[1] = password;
  null = v17;
  if (!v17)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v37[2] = null;
  pairingParentUsername = [contextCopy pairingParentUsername];
  null2 = pairingParentUsername;
  if (!pairingParentUsername)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v37[3] = null2;
  pairingParentAltDSID = [contextCopy pairingParentAltDSID];
  null3 = pairingParentAltDSID;
  if (!pairingParentAltDSID)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v37[4] = null3;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
  if (!pairingParentAltDSID)
  {
  }

  if (!pairingParentUsername)
  {
  }

  if (v17)
  {
    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v24)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (!v22)
  {
  }

  [(PBBridgeCompanionController *)selfCopy _sendRemoteCommandWithMessageID:30 withArguments:v30];
}

- (void)tinkerWatchIngestedCredentials:(id)credentials
{
  v34 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  type = [credentialsCopy type];
  context = [credentialsCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoTinkerAccountCredentialsIngested alloc];
    data = [credentialsCopy data];
    v10 = [(PBBProtoTinkerAccountCredentialsIngested *)v8 initWithData:data];

    success = [(PBBProtoTinkerAccountCredentialsIngested *)v10 success];
    cdpStatus = [(PBBProtoTinkerAccountCredentialsIngested *)v10 cdpStatus];
    errorDescription = [(PBBProtoTinkerAccountCredentialsIngested *)v10 errorDescription];
    detailedError = [(PBBProtoTinkerAccountCredentialsIngested *)v10 detailedError];
    v15 = detailedError;
    if (detailedError)
    {
      v23 = 0;
      v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:detailedError error:&v23];
      v17 = v23;
      v18 = v17;
      if (v17)
      {
        v19 = pbb_accountsignin_log(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeCompanionController tinkerWatchIngestedCredentials:];
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = pbb_accountsignin_log(detailedError);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:success];
      *buf = 136316162;
      v25 = "[PBBridgeCompanionController tinkerWatchIngestedCredentials:]";
      v26 = 2112;
      v27 = v21;
      v28 = 2114;
      v29 = errorDescription;
      v30 = 2114;
      v31 = v16;
      v32 = 2048;
      v33 = cdpStatus;
      _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, " %s: Success %@ (Error message %{public}@) detailed: %{public}@ status: %ld", buf, 0x34u);
    }

    tinkerCredentialsIngestedCompletion = self->_tinkerCredentialsIngestedCompletion;
    if (tinkerCredentialsIngestedCompletion)
    {
      tinkerCredentialsIngestedCompletion[2](tinkerCredentialsIngestedCompletion, success, cdpStatus, errorDescription, v16);
    }
  }
}

- (void)tinkerFinishedHealthSharingOptIn:(id)in
{
  inCopy = in;
  type = [inCopy type];
  context = [inCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v7 = [PBBProtoHealthSharingEnabled alloc];
    data = [inCopy data];
    v9 = [(PBBProtoHealthSharingEnabled *)v7 initWithData:data];

    enabled = [(PBBProtoHealthSharingEnabled *)v9 enabled];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 remoteFinishedHealthSharingOptInWithSelection:enabled];
    }
  }
}

- (void)acknowledgeBuysOnWatchCredentialIngestion:(id)ingestion
{
  v27 = *MEMORY[0x277D85DE8];
  ingestionCopy = ingestion;
  type = [ingestionCopy type];
  context = [ingestionCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoAcknowledgeBuysOnWatchCredentialIngestion alloc];
    data = [ingestionCopy data];
    v10 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v8 initWithData:data];

    success = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v10 success];
    errorCode = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v10 errorCode];
    errorDescription = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v10 errorDescription];
    v14 = pbb_accountsignin_log(errorDescription);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:success];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:errorCode];
      v19 = 136315906;
      v20 = "[PBBridgeCompanionController acknowledgeBuysOnWatchCredentialIngestion:]";
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = errorDescription;
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "%s -- success: %@ (Error: %@ %@)", &v19, 0x2Au);
    }

    buysOnWatchCredentialsIngestedCompletion = self->_buysOnWatchCredentialsIngestedCompletion;
    if (buysOnWatchCredentialsIngestedCompletion)
    {
      buysOnWatchCredentialsIngestedCompletion[2](buysOnWatchCredentialsIngestedCompletion, success, errorCode, errorDescription);
      v18 = self->_buysOnWatchCredentialsIngestedCompletion;
      self->_buysOnWatchCredentialsIngestedCompletion = 0;
    }
  }
}

- (void)tellWatchToConfigureDeviceManagementWithData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = MEMORY[0x25F8A6750](completion);
  setupDeviceManagementCompletion = self->_setupDeviceManagementCompletion;
  self->_setupDeviceManagementCompletion = v7;

  v10 = pbb_devicemanagement_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[PBBridgeCompanionController tellWatchToConfigureDeviceManagementWithData:completion:]";
    v15 = 1024;
    v16 = dataCopy != 0;
    _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "%s -- configuration data: %{BOOL}d", buf, 0x12u);
  }

  v12 = dataCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:34 withArguments:v11];
}

- (void)handleDeviceManagementResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDeviceManagementSetupResponse alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoDeviceManagementSetupResponse *)v8 initWithData:data];

    success = [(PBBProtoDeviceManagementSetupResponse *)v10 success];
    error = [(PBBProtoDeviceManagementSetupResponse *)v10 error];
    if (error)
    {
      v19 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:error error:&v19];
      v14 = v19;
      v15 = v14;
      if (v14)
      {
        v16 = pbb_devicemanagement_log(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeCompanionController handleDeviceManagementResponse:];
        }
      }
    }

    else
    {
      v13 = 0;
    }

    setupDeviceManagementCompletion = self->_setupDeviceManagementCompletion;
    if (setupDeviceManagementCompletion)
    {
      setupDeviceManagementCompletion[2](setupDeviceManagementCompletion, success, v13);
      v18 = self->_setupDeviceManagementCompletion;
      self->_setupDeviceManagementCompletion = 0;
    }
  }
}

- (void)checkApplicationInstallAllowedWithCompletion:(id)completion
{
  v4 = MEMORY[0x25F8A6750](completion, a2);
  applicationInstallAllowedCompletion = self->_applicationInstallAllowedCompletion;
  self->_applicationInstallAllowedCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:35 withArguments:v6];
}

- (void)handleApplicationInstallRestrictionResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v7 = [PBBProtoApplicationInstallRestrictionResponse alloc];
    data = [responseCopy data];
    v9 = [(PBBProtoApplicationInstallRestrictionResponse *)v7 initWithData:data];

    allowed = [(PBBProtoApplicationInstallRestrictionResponse *)v9 allowed];
    applicationInstallAllowedCompletion = self->_applicationInstallAllowedCompletion;
    if (applicationInstallAllowedCompletion)
    {
      applicationInstallAllowedCompletion[2](applicationInstallAllowedCompletion, allowed);
      v12 = self->_applicationInstallAllowedCompletion;
      self->_applicationInstallAllowedCompletion = 0;
    }
  }
}

- (void)tellGizmoToUpdateNanoRegistryToNormalState
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PBBridgeCompanionController tellGizmoToUpdateNanoRegistryToNormalState]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:36 withArguments:0];
}

- (RUILoaderDelegate)ruiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);

  return WeakRetained;
}

- (PBBridgeConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)gizmoActivationFailed:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendProxyActivationRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendProxyActivationRequest:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendProxyActivationWithCustomRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loader:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)connection:didFailWithError:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connection:didFailWithError:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)connection:(uint64_t)a1 willSendRequest:(uint64_t)a2 redirectResponse:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 120);
  v4[0] = 67109890;
  v4[1] = 1219;
  v5 = 2080;
  v6 = "[PBBridgeCompanionController connection:willSendRequest:redirectResponse:]";
  v7 = 2112;
  v8 = a1;
  v9 = 2112;
  v10 = v3;
  _os_log_error_impl(&dword_25DE64000, log, OS_LOG_TYPE_ERROR, "%d %s -- %@ %@", v4, 0x26u);
}

- (void)handleRemoteActivationDetails:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 length];
  v8 = 136315650;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_25DE64000, v2, v3, "%s Error (%{public}@) decoding request (%ld bytes)", v4, v5, v6, v7, v8);
}

- (void)handleRemoteActivationDetails:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendTinkerAccountCredentialsWithContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)tinkerWatchIngestedCredentials:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleDeviceManagementResponse:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end