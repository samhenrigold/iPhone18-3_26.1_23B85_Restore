@interface PBBridgeGizmoController
+ (id)prepareOfflineTermsResponse:(id)response;
- (BOOL)_getActivationData:(BOOL)data forRequest:(id)request withCompletion:(id)completion;
- (BOOL)_sendRemoteCommandWithMessageID:(unsigned __int16)d withArguments:(id)arguments;
- (BOOL)_sendResponseToMessage:(id)message withResponseMessageID:(unsigned __int16)d withArguments:(id)arguments;
- (BOOL)getActivationDataForRequest:(id)request withCompletion:(id)completion;
- (BOOL)getSessionDataForRequest:(id)request withCompletion:(id)completion;
- (BOOL)reportRemoteActivationFailureError:(id)error;
- (BOOL)tellCompanionGizmoFailedActivating:(id)activating;
- (BOOL)tellCompanionGizmoFinishedActivating;
- (BOOL)tellCompanionGizmoFinishedActivatingAsDeKOTA;
- (BOOL)tellCompanionThatLanguageAndLanguageCompletedWithStatus:(unsigned __int16)status;
- (BOOL)updateLanguageIdentifierWithCompletion:(id)completion;
- (BOOL)updateRegionIdentifierWithCompletion:(id)completion;
- (PBBridgeConnectionDelegate)delegate;
- (PBBridgeGizmoController)init;
- (void)activationTimeout:(id)timeout;
- (void)beganAwaitingAbilityToActivate;
- (void)checkAppInstallationAllowed:(id)allowed;
- (void)companionBecameAvailableWantsConfirmation:(id)confirmation;
- (void)companionDidSendDemoWirelessCredentials:(id)credentials;
- (void)companionDidSendLanguageAndLocale:(id)locale;
- (void)companionDidSendTinkerWirelessCredentials:(id)credentials;
- (void)companionTermsResponse:(id)response;
- (void)doInitialSyncPrep:(id)prep;
- (void)enableSiriForGizmoWithCompletion:(id)completion;
- (void)enabledSiri:(id)siri;
- (void)endSetupTransaction;
- (void)fetchTermsAndConditions:(id)conditions;
- (void)getSiriStateWithCompletion:(id)completion;
- (void)gotSiriState:(id)state;
- (void)handleActivationData:(id)data;
- (void)handleBuysOnWatchIngestion:(id)ingestion;
- (void)handleOfflineTermsRequest:(id)request;
- (void)handleRenameDeviceRequest:(id)request;
- (void)handleSetLauncherViewModeForTinker:(id)tinker;
- (void)handleWarrantySentinelRequest:(id)request;
- (void)ingestTinkerCredentials:(id)credentials;
- (void)invalidateTimeoutTimer;
- (void)parseNetworkRecordsAndApplyWirelessCredentialsFromData:(id)data;
- (void)popToControllerType:(id)type;
- (void)prepareForForcedWatchSU:(id)u;
- (void)processReceivedPairingWirelessCredentials:(id)credentials;
- (void)provideAppViewListImage:(id)image;
- (void)pushControllerType:(id)type;
- (void)refreshTimeoutTimer;
- (void)remoteRequestToKeepAlive:(id)alive;
- (void)retryActivation:(id)activation;
- (void)returnProxiedDeviceForDeviceWithData:(id)data;
- (void)setActivationState:(unsigned __int16)state;
- (void)setCanBeginActivating:(id)activating;
- (void)setCompanionLanguage:(id)language;
- (void)setCompanionRegion:(id)region;
- (void)setComputedTimeZone:(id)zone;
- (void)setCrownOrientationRight:(id)right;
- (void)setDeviceName:(id)name;
- (void)setDiagnosticsEnabled:(id)enabled;
- (void)setFitnessRouteAuthorizationForTinker:(id)tinker;
- (void)setLocationEnabled:(id)enabled;
- (void)setPasscodeRestrictions:(id)restrictions;
- (void)setSiriEnabled:(id)enabled;
- (void)setupDeviceManagement:(id)management;
- (void)setupServiceMessageSelectorMappings;
- (void)showLockedOnAnimation:(id)animation;
- (void)tellCompanionGizmoFinishedHealthSharingOptInWithSelection:(BOOL)selection;
- (void)tellCompanionThatGizmoFailedToCreatePasscode:(int)passcode;
- (void)tellCompanionThatGizmoFinishedChangingPasscode:(BOOL)passcode isLong:(BOOL)long;
- (void)tellCompanionThatGizmoFinishedSettingPasscode:(BOOL)passcode isLong:(BOOL)long;
- (void)tellCompanionThatGizmoFinishedUnlockPairing:(BOOL)pairing;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)updateNanoRegistryToNormalState:(id)state;
- (void)updateSynchProgress:(id)progress;
- (void)waitForDynamicActivationEventPresentation:(id)presentation;
- (void)waitForUserResponseToDynamicEventPresentation:(id)presentation;
@end

@implementation PBBridgeGizmoController

- (PBBridgeGizmoController)init
{
  v4.receiver = self;
  v4.super_class = PBBridgeGizmoController;
  v2 = [(PBBridgeGizmoController *)&v4 init];
  if (v2)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_7);
  }

  return v2;
}

- (void)setupServiceMessageSelectorMappings
{
  service = [(PBBridgeIDSServiceDelegate *)self service];
  [service setProtobufAction:sel_companionBecameAvailableWantsConfirmation_ forIncomingRequestsOfType:1];

  service2 = [(PBBridgeIDSServiceDelegate *)self service];
  [service2 setProtobufAction:sel_pushControllerType_ forIncomingRequestsOfType:3];

  service3 = [(PBBridgeIDSServiceDelegate *)self service];
  [service3 setProtobufAction:sel_popToControllerType_ forIncomingRequestsOfType:4];

  service4 = [(PBBridgeIDSServiceDelegate *)self service];
  [service4 setProtobufAction:sel_handleActivationData_ forIncomingRequestsOfType:2];

  service5 = [(PBBridgeIDSServiceDelegate *)self service];
  [service5 setProtobufAction:sel_setCompanionLanguage_ forIncomingRequestsOfType:5];

  service6 = [(PBBridgeIDSServiceDelegate *)self service];
  [service6 setProtobufAction:sel_setCompanionRegion_ forIncomingRequestsOfType:6];

  service7 = [(PBBridgeIDSServiceDelegate *)self service];
  [service7 setProtobufAction:sel_gotSiriState_ forIncomingRequestsOfType:7];

  service8 = [(PBBridgeIDSServiceDelegate *)self service];
  [service8 setProtobufAction:sel_setLocationEnabled_ forIncomingRequestsOfType:8];

  service9 = [(PBBridgeIDSServiceDelegate *)self service];
  [service9 setProtobufAction:sel_setDiagnosticsEnabled_ forIncomingRequestsOfType:10];

  service10 = [(PBBridgeIDSServiceDelegate *)self service];
  [service10 setProtobufAction:sel_setCanBeginActivating_ forIncomingRequestsOfType:11];

  service11 = [(PBBridgeIDSServiceDelegate *)self service];
  [service11 setProtobufAction:sel_waitForDynamicActivationEventPresentation_ forIncomingRequestsOfType:22];

  service12 = [(PBBridgeIDSServiceDelegate *)self service];
  [service12 setProtobufAction:sel_waitForUserResponseToDynamicEventPresentation_ forIncomingRequestsOfType:23];

  service13 = [(PBBridgeIDSServiceDelegate *)self service];
  [service13 setProtobufAction:sel_retryActivation_ forIncomingRequestsOfType:15];

  service14 = [(PBBridgeIDSServiceDelegate *)self service];
  [service14 setProtobufAction:sel_handleWarrantySentinelRequest_ forIncomingRequestsOfType:14];

  service15 = [(PBBridgeIDSServiceDelegate *)self service];
  [service15 setProtobufAction:sel_handleOfflineTermsRequest_ forIncomingRequestsOfType:16];

  service16 = [(PBBridgeIDSServiceDelegate *)self service];
  [service16 setProtobufAction:sel_showLockedOnAnimation_ forIncomingRequestsOfType:17];

  service17 = [(PBBridgeIDSServiceDelegate *)self service];
  [service17 setProtobufAction:sel_setCrownOrientationRight_ forIncomingRequestsOfType:18];

  service18 = [(PBBridgeIDSServiceDelegate *)self service];
  [service18 setProtobufAction:sel_setPasscodeRestrictions_ forIncomingRequestsOfType:20];

  service19 = [(PBBridgeIDSServiceDelegate *)self service];
  [service19 setProtobufAction:sel_updateSynchProgress_ forIncomingRequestsOfType:19];

  service20 = [(PBBridgeIDSServiceDelegate *)self service];
  [service20 setProtobufAction:sel_doInitialSyncPrep_ forIncomingRequestsOfType:21];

  service21 = [(PBBridgeIDSServiceDelegate *)self service];
  [service21 setProtobufAction:sel_remoteRequestToKeepAlive_ forIncomingRequestsOfType:24];

  service22 = [(PBBridgeIDSServiceDelegate *)self service];
  [service22 setProtobufAction:sel_companionDidSendLanguageAndLocale_ forIncomingRequestsOfType:25];

  service23 = [(PBBridgeIDSServiceDelegate *)self service];
  [service23 setProtobufAction:sel_companionDidSendDemoWirelessCredentials_ forIncomingRequestsOfType:26];

  service24 = [(PBBridgeIDSServiceDelegate *)self service];
  [service24 setProtobufAction:sel_prepareForForcedWatchSU_ forIncomingRequestsOfType:27];

  service25 = [(PBBridgeIDSServiceDelegate *)self service];
  [service25 setProtobufAction:sel_fetchTermsAndConditions_ forIncomingRequestsOfType:102];

  service26 = [(PBBridgeIDSServiceDelegate *)self service];
  [service26 setProtobufAction:sel_companionTermsResponse_ forIncomingRequestsOfType:103];

  service27 = [(PBBridgeIDSServiceDelegate *)self service];
  [service27 setProtobufAction:sel_setSiriEnabled_ forIncomingRequestsOfType:28];

  service28 = [(PBBridgeIDSServiceDelegate *)self service];
  [service28 setProtobufAction:sel_returnProxiedDeviceForDeviceWithData_ forIncomingRequestsOfType:29];

  service29 = [(PBBridgeIDSServiceDelegate *)self service];
  [service29 setProtobufAction:sel_setComputedTimeZone_ forIncomingRequestsOfType:111];

  service30 = [(PBBridgeIDSServiceDelegate *)self service];
  [service30 setProtobufAction:sel_ingestTinkerCredentials_ forIncomingRequestsOfType:30];

  service31 = [(PBBridgeIDSServiceDelegate *)self service];
  [service31 setProtobufAction:sel_companionDidSendTinkerWirelessCredentials_ forIncomingRequestsOfType:104];

  service32 = [(PBBridgeIDSServiceDelegate *)self service];
  [service32 setProtobufAction:sel_setMessagesInCloudEnabledForTinker_ forIncomingRequestsOfType:31];

  service33 = [(PBBridgeIDSServiceDelegate *)self service];
  [service33 setProtobufAction:sel_setFitnessRouteAuthorizationForTinker_ forIncomingRequestsOfType:33];

  service34 = [(PBBridgeIDSServiceDelegate *)self service];
  [service34 setProtobufAction:sel_handleRenameDeviceRequest_ forIncomingRequestsOfType:110];

  service35 = [(PBBridgeIDSServiceDelegate *)self service];
  [service35 setProtobufAction:sel_handleBuysOnWatchIngestion_ forIncomingRequestsOfType:32];

  service36 = [(PBBridgeIDSServiceDelegate *)self service];
  [service36 setProtobufAction:sel_handleSetLauncherViewModeForTinker_ forIncomingRequestsOfType:112];

  service37 = [(PBBridgeIDSServiceDelegate *)self service];
  [service37 setProtobufAction:sel_provideAppViewListImage_ forIncomingRequestsOfType:113];

  service38 = [(PBBridgeIDSServiceDelegate *)self service];
  [service38 setProtobufAction:sel_setupDeviceManagement_ forIncomingRequestsOfType:34];

  service39 = [(PBBridgeIDSServiceDelegate *)self service];
  [service39 setProtobufAction:sel_checkAppInstallationAllowed_ forIncomingRequestsOfType:35];

  service40 = [(PBBridgeIDSServiceDelegate *)self service];
  [service40 setProtobufAction:sel_updateNanoRegistryToNormalState_ forIncomingRequestsOfType:36];

  service41 = [(PBBridgeIDSServiceDelegate *)self service];
  [service41 setProtobufAction:sel_processReceivedPairingWirelessCredentials_ forIncomingRequestsOfType:37];
}

- (void)endSetupTransaction
{
  v10.receiver = self;
  v10.super_class = PBBridgeGizmoController;
  [(PBBridgeIDSServiceDelegate *)&v10 endSetupTransaction];
  self->_activationState = 0;
  [(NSTimer *)self->_activationTimeout invalidate];
  activationTimeout = self->_activationTimeout;
  self->_activationTimeout = 0;

  updateLanguageCompletion = self->_updateLanguageCompletion;
  self->_updateLanguageCompletion = 0;

  updateRegionCompletion = self->_updateRegionCompletion;
  self->_updateRegionCompletion = 0;

  sessionCompletion = self->_sessionCompletion;
  self->_sessionCompletion = 0;

  activationCompletion = self->_activationCompletion;
  self->_activationCompletion = 0;

  siriStateCompletion = self->_siriStateCompletion;
  self->_siriStateCompletion = 0;

  enableSiriCompletion = self->_enableSiriCompletion;
  self->_enableSiriCompletion = 0;
}

- (void)setActivationState:(unsigned __int16)state
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_activationState >= state)
  {
    v5 = pbb_activation_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((self->_activationState - 2) > 3u)
      {
        v6 = @"Idle";
      }

      else
      {
        v6 = off_2799F4AF8[(self->_activationState - 2)];
      }

      if ((state - 2) > 3u)
      {
        v7 = @"Idle";
      }

      else
      {
        v7 = off_2799F4AF8[(state - 2)];
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Prevented misordered state change (%@ --> %@)", &v8, 0x16u);
    }
  }

  else
  {
    self->_activationState = state;
  }
}

- (BOOL)_sendRemoteCommandWithMessageID:(unsigned __int16)d withArguments:(id)arguments
{
  dCopy = d;
  v62 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  v7 = argumentsCopy;
  if (dCopy > 16)
  {
    if (dCopy > 21)
    {
      switch(dCopy)
      {
        case 0x16:
          v31 = objc_alloc_init(PBBProtoDemoWatchDidIngestWirelessCredentials);
          firstObject3 = v31;
LABEL_49:
          data = [(PBBProtoDemoWatchDidIngestWirelessCredentials *)v31 data];
          goto LABEL_50;
        case 0x1B:
          if ([argumentsCopy count] != 1)
          {
            firstObject3 = 0;
            goto LABEL_48;
          }

          firstObject3 = objc_alloc_init(PBBProtoRemoteActivationFailureReport);
          firstObject = [v7 firstObject];
          v55 = 0;
          v33 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:firstObject requiringSecureCoding:1 error:&v55];
          v34 = v55;
          v35 = v34;
          if (v34)
          {
            v36 = pbb_activation_log(v34);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [PBBridgeGizmoController _sendRemoteCommandWithMessageID:withArguments:];
            }
          }

          [(PBBProtoRemoteActivationFailureReport *)firstObject3 setActivationError:v33];

LABEL_47:
LABEL_48:
          v31 = firstObject3;
          goto LABEL_49;
        case 0x1D:
          firstObject3 = objc_alloc_init(PBBProtoHealthSharingEnabled);
          firstObject = [v7 firstObject];
          -[PBBProtoRemoteActivationFailureReport setEnabled:](firstObject3, "setEnabled:", [firstObject BOOLValue]);
          goto LABEL_47;
      }
    }

    else
    {
      if (dCopy == 17)
      {
        firstObject3 = objc_alloc_init(PBBProtoDidFailToCreatePasscode);
        firstObject = [v7 firstObject];
        -[PBBProtoRemoteActivationFailureReport setError:](firstObject3, "setError:", [firstObject intValue]);
        goto LABEL_47;
      }

      if (dCopy == 20)
      {
        firstObject3 = objc_alloc_init(PBBProtoTellCompanionLanguageAndLocaleChangeStatus);
        firstObject = [v7 firstObject];
        -[PBBProtoRemoteActivationFailureReport setStatus:](firstObject3, "setStatus:", [firstObject integerValue]);
        goto LABEL_47;
      }
    }

LABEL_33:
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_51;
  }

  if (dCopy > 11)
  {
    if (dCopy == 12)
    {
      firstObject3 = objc_alloc_init(PBBProtoGizmoActivationFailed);
      firstObject = [v7 firstObject];
      [(PBBProtoRemoteActivationFailureReport *)firstObject3 setFailureDescription:firstObject];
      goto LABEL_47;
    }

    if (dCopy == 13)
    {
      firstObject3 = objc_alloc_init(PBBProtoDidMakeAutoLockChoice);
      firstObject = [v7 firstObject];
      -[PBBProtoRemoteActivationFailureReport setAccept:](firstObject3, "setAccept:", [firstObject BOOLValue]);
      goto LABEL_47;
    }

    if (dCopy != 16)
    {
      goto LABEL_33;
    }

    firstObject3 = objc_alloc_init(PBBProtoTransferPerformanceResults);
    array = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    milestones = [v12 milestones];
    allValues = [milestones allValues];

    v15 = [allValues countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v52;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          [array addObject:*(*(&v51 + 1) + 8 * i)];
        }

        v16 = [allValues countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v16);
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    macroActivities = [v20 macroActivities];
    allValues2 = [macroActivities allValues];

    v23 = [allValues2 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v48;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(allValues2);
          }

          [array2 addObject:*(*(&v47 + 1) + 8 * j)];
        }

        v24 = [allValues2 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v24);
    }

    v27 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    measurements = [v27 measurements];
    v29 = [measurements mutableCopy];

    [(PBBProtoRemoteActivationFailureReport *)firstObject3 setMilestones:array];
    [(PBBProtoRemoteActivationFailureReport *)firstObject3 setMacroActivites:array2];
    [(PBBProtoRemoteActivationFailureReport *)firstObject3 setMeasures:v29];
    data = [(PBBProtoRemoteActivationFailureReport *)firstObject3 data];
  }

  else
  {
    if (dCopy == 1)
    {
      firstObject3 = objc_alloc_init(PBBProtoBecameActive);
      firstObject = [v7 firstObject];
      -[PBBProtoRemoteActivationFailureReport setWantsConfirmation:](firstObject3, "setWantsConfirmation:", [firstObject BOOLValue]);
      goto LABEL_47;
    }

    if (dCopy != 2)
    {
      if (dCopy == 7)
      {
        firstObject3 = objc_alloc_init(PBBProtoDidEndPasscodeCreation);
        firstObject2 = [v7 firstObject];
        -[PBBProtoRemoteActivationFailureReport setSuccess:](firstObject3, "setSuccess:", [firstObject2 BOOLValue]);

        firstObject = [v7 objectAtIndex:1];
        -[PBBProtoRemoteActivationFailureReport setIsLong:](firstObject3, "setIsLong:", [firstObject BOOLValue]);
        goto LABEL_47;
      }

      goto LABEL_33;
    }

    firstObject3 = [argumentsCopy firstObject];
    array = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [array encodeObject:firstObject3 forKey:@"PBBridgeActivationRequestKey"];
    [array finishEncoding];
    array2 = [array encodedData];
    v32 = objc_alloc_init(PBBProtoProxyActivationFetch);
    [(PBBProtoProxyActivationFetch *)v32 setRequest:array2];
    data = [(PBBProtoProxyActivationFetch *)v32 data];
  }

LABEL_50:
LABEL_51:
  v37 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:data type:dCopy isResponse:0];
  v38 = pbb_setupflow_log(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = PBBCMessageDescription(dCopy);
    *buf = 138412546;
    v57 = v39;
    v58 = 2112;
    v59 = v37;
    _os_log_impl(&dword_25DE64000, v38, OS_LOG_TYPE_DEFAULT, "Sending Protobuf (%@ -- %@)", buf, 0x16u);
  }

  service = [(PBBridgeIDSServiceDelegate *)self service];
  v41 = [(PBBridgeIDSServiceDelegate *)self sendProtoBuf:v37 service:service priority:300 responseIdentifier:0 expectsResponse:0 retryCount:-1 retryInterval:-1.0];

  if (dCopy <= 0x15 && ((1 << dCopy) & 0x20101C) != 0 && PBIsInternalInstall(v42, v43))
  {
    v44 = [v41 copy];
    internalLastSendMessageID = self->_internalLastSendMessageID;
    self->_internalLastSendMessageID = v44;
  }

  return 0;
}

- (BOOL)_sendResponseToMessage:(id)message withResponseMessageID:(unsigned __int16)d withArguments:(id)arguments
{
  dCopy = d;
  v128 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  argumentsCopy = arguments;
  data = 0;
  if (dCopy > 29)
  {
    if (dCopy <= 32)
    {
      if (dCopy == 30)
      {
        v12 = objc_alloc_init(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion);
        v27 = [argumentsCopy objectAtIndexedSubscript:0];
        -[PBBProtoAcknowledgeBuysOnWatchCredentialIngestion setSuccess:](v12, "setSuccess:", [v27 BOOLValue]);

        v28 = [argumentsCopy objectAtIndexedSubscript:1];
        -[PBBProtoAcknowledgeBuysOnWatchCredentialIngestion setErrorCode:](v12, "setErrorCode:", [v28 integerValue]);

        v13 = [argumentsCopy objectAtIndexedSubscript:2];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setErrorDescription:v13];
      }

      else if (dCopy == 31)
      {
        v12 = objc_alloc_init(PBBProtoDeviceManagementSetupResponse);
        v34 = [argumentsCopy objectAtIndexedSubscript:0];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setSuccess:v34 != 0];

        if ([argumentsCopy count] < 2)
        {
LABEL_40:
          v29 = v12;
          goto LABEL_41;
        }

        v13 = [argumentsCopy objectAtIndexedSubscript:1];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setError:v13];
      }

      else
      {
        v12 = objc_alloc_init(PBBProtoApplicationInstallRestrictionResponse);
        v13 = [argumentsCopy objectAtIndexedSubscript:0];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setAllowed:[v13 BOOLValue]];
      }

LABEL_39:

      goto LABEL_40;
    }

    if (dCopy != 33)
    {
      if (dCopy == 101)
      {
        v35 = objc_alloc_init(PBBProtoTermsAndConditions);
        v12 = v35;
        if (!argumentsCopy)
        {
          v118 = v35;
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          v45 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
          lowercaseString = [v45 lowercaseString];

          currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
          v48 = [currentLocale2 objectForKey:*MEMORY[0x277CBE690]];
          uppercaseString = [v48 uppercaseString];

          [MEMORY[0x277CBEAF8] preferredLanguages];
          v114 = uppercaseString;
          v115 = lowercaseString;
          v119[0] = lowercaseString;
          v113 = v119[1] = uppercaseString;
          v50 = [v113 mutableCopy];
          v119[2] = v50;
          v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:3];

          v53 = pbb_setupflow_log(v52);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v121 = v51;
            _os_log_impl(&dword_25DE64000, v53, OS_LOG_TYPE_DEFAULT, "args %@", buf, 0xCu);
          }

          v112 = v51;
          v54 = [objc_opt_class() prepareOfflineTermsResponse:v51];
          v55 = pbb_setupflow_log(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            license = [v54 license];
            v56 = [license length];
            multiterms = [v54 multiterms];
            v58 = [multiterms length];
            warranty = [v54 warranty];
            v60 = [warranty length];
            *buf = 134218752;
            v121 = v54;
            v122 = 2048;
            v123 = v56;
            v124 = 2048;
            v125 = v58;
            v126 = 2048;
            v127 = v60;
            _os_log_impl(&dword_25DE64000, v55, OS_LOG_TYPE_DEFAULT, "Offline Terms response: (%p); license: (%lu bytes); multiterms: (%lu bytes); warranty: (%lu bytes);", buf, 0x2Au);
          }

          v116 = v54;
          if ([v54 hasMultiterms])
          {
            v61 = objc_alloc(MEMORY[0x277CCACA8]);
            multiterms2 = [v54 multiterms];
            v110 = [v61 initWithData:multiterms2 encoding:4];

            v101 = MEMORY[0x277CCACA8];
            v103 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v107 = [v103 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_286FA8098 table:@"Localizable"];
            v102 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v106 = [v102 localizedStringForKey:@"IMPORTANT" value:&stru_286FA8098 table:@"Localizable"];
            v100 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v105 = [v100 localizedStringForKey:@"Part1" value:&stru_286FA8098 table:@"Localizable"];
            v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v104 = [v99 localizedStringForKey:@"TC_HEADER" value:&stru_286FA8098 table:@"Localizable"];
            v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v96 = [v98 localizedStringForKey:@"WARRANTY_HEADER" value:&stru_286FA8098 table:@"Localizable"];
            v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v94 = [v97 localizedStringForKey:@"Part2" value:&stru_286FA8098 table:@"Localizable"];
            v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v92 = [v95 localizedStringForKey:@"Part3" value:&stru_286FA8098 table:@"Localizable"];
            v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v63 = [v93 localizedStringForKey:@"AGREE" value:&stru_286FA8098 table:@"Localizable"];
            v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v65 = [v64 localizedStringForKey:@"DISAGREE" value:&stru_286FA8098 table:@"Localizable"];
            v66 = [v101 stringWithFormat:v110, v107, v106, v105, v104, v96, v94, v92, v63, v65];

            v67 = [v66 dataUsingEncoding:4];
            v68 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v67 length:"bytes") encoding:{objc_msgSend(v67, "length"), 4}];
            v69 = pbb_setupflow_log(v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v121 = v68;
              _os_log_impl(&dword_25DE64000, v69, OS_LOG_TYPE_DEFAULT, "bodyString: %@", buf, 0xCu);
            }

            [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setMultiterms:v67];
            v54 = v116;
          }

          license2 = [v54 license];
          v70 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(license2 length:"bytes") encoding:{objc_msgSend(license2, "length"), 4}];
          v71 = pbb_setupflow_log(v70);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v121 = v70;
            _os_log_impl(&dword_25DE64000, v71, OS_LOG_TYPE_DEFAULT, "license: %@", buf, 0xCu);
          }

          warranty2 = [v54 warranty];
          v108 = v70;
          v12 = v118;
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setWarranty:warranty2];

          license3 = [v54 license];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setLicense:license3];

          v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v75 = [v74 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:? table:?];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setLicenseLabel:v75];

          v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v77 = [v76 localizedStringForKey:@"WARRANTY" value:&stru_286FA8098 table:@"Localizable"];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setWarrantyLabel:v77];

          v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v79 = [v78 localizedStringForKey:@"AGREE_DIALOG_TITLE" value:&stru_286FA8098 table:@"Localizable"];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setAgreeDialogTitle:v79];

          v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v81 = [v80 localizedStringForKey:@"AGREE_DIALOG_TEXT" value:&stru_286FA8098 table:?];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setAgreeDialogText:v81];

          v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v83 = [v82 localizedStringForKey:@"AGREE" value:&stru_286FA8098 table:@"Localizable"];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setAgreeLabel:v83];

          v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v85 = [v84 localizedStringForKey:@"CANCEL" value:&stru_286FA8098 table:@"Localizable"];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setCancelLabel:v85];

          v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v87 = [v86 localizedStringForKey:@"DISAGREE" value:&stru_286FA8098 table:@"Localizable"];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v118 setDisagreeLabel:v87];

          goto LABEL_40;
        }

        v13 = [argumentsCopy objectAtIndexedSubscript:0];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setServerTerms:v13];
      }

      else
      {
        if (dCopy != 102)
        {
          goto LABEL_43;
        }

        v18 = objc_alloc_init(PBBProtoAppViewListImageResponse);
        v12 = v18;
        if (argumentsCopy)
        {
          v19 = [argumentsCopy objectAtIndexedSubscript:0];
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setImageData:v19];
        }

        v13 = pbb_setupflow_log(v18);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v121 = v12;
          _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, ">>>> sending appViewListImageResponse %@", buf, 0xCu);
        }
      }

      goto LABEL_39;
    }

    v11 = PBBProtoWatchDidApplyWirelessCredentials;
  }

  else
  {
    if (dCopy <= 22)
    {
      if (dCopy != 14)
      {
        if (dCopy != 15)
        {
          if (dCopy != 18)
          {
            goto LABEL_43;
          }

          v11 = PBBProtoPrepareWatchForInitialSyncResponse;
          goto LABEL_31;
        }

        v12 = [objc_opt_class() prepareOfflineTermsResponse:argumentsCopy];
        v13 = pbb_setupflow_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          license4 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 license];
          v30 = [license4 length];
          multiterms3 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 multiterms];
          v32 = [multiterms3 length];
          warranty3 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 warranty];
          *buf = 134218752;
          v121 = v12;
          v122 = 2048;
          v123 = v30;
          v124 = 2048;
          v125 = v32;
          v126 = 2048;
          v127 = [warranty3 length];
          _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "Offline Terms response: (%p); license: (%lu bytes); multiterms: (%lu bytes); warranty: (%lu bytes);", buf, 0x2Au);
        }

        goto LABEL_39;
      }

      v12 = objc_alloc_init(PBBProtoWarrantySentinel);
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = [defaultManager fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

      [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setSentinelExists:v21];
      v22 = *MEMORY[0x277CBF008];
      CFPreferencesAppSynchronize(*MEMORY[0x277CBF008]);
      v23 = CFPreferencesCopyAppValue(@"AppleLanguages", v22);
      if (v23)
      {
        v24 = v23;
        v25 = CFGetTypeID(v23);
        if (v25 == CFArrayGetTypeID())
        {
          v26 = [v24 mutableCopy];

LABEL_59:
          [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setAppleLanguages:v26];
          CFPreferencesAppSynchronize(v22);
          v88 = CFPreferencesCopyAppValue(@"AppleLocale", v22);
          if (v88)
          {
            v89 = v88;
            v90 = CFGetTypeID(v88);
            if (v90 == CFStringGetTypeID())
            {
              [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setAppleLocale:v89];
            }

            CFRelease(v89);
          }

          v91 = pbb_setupflow_log(v88);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v121) = v21;
            _os_log_impl(&dword_25DE64000, v91, OS_LOG_TYPE_DEFAULT, "Warranty Sentinel exists: (%d)", buf, 8u);
          }

          data = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 data];

          goto LABEL_42;
        }

        CFRelease(v24);
      }

      v26 = 0;
      goto LABEL_59;
    }

    if (dCopy != 23)
    {
      if (dCopy == 25)
      {
        v12 = objc_alloc_init(PBBProtoRemoteAccountForDevice);
        v13 = [argumentsCopy objectAtIndexedSubscript:0];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setSerializedDevice:v13];
      }

      else
      {
        if (dCopy != 26)
        {
          goto LABEL_43;
        }

        v12 = objc_alloc_init(PBBProtoTinkerAccountCredentialsIngested);
        v14 = pbb_setupflow_log(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v121 = argumentsCopy;
          _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "Got message PBBCMessageIDDidIngestAcountCredentialsForTinkerDevice: %@", buf, 0xCu);
        }

        v15 = [argumentsCopy objectAtIndexedSubscript:0];
        -[PBBProtoAcknowledgeBuysOnWatchCredentialIngestion setSuccess:](v12, "setSuccess:", [v15 BOOLValue]);

        v16 = [argumentsCopy objectAtIndexedSubscript:1];
        -[PBBProtoAcknowledgeBuysOnWatchCredentialIngestion setCdpStatus:](v12, "setCdpStatus:", [v16 unsignedIntegerValue]);

        v17 = [argumentsCopy objectAtIndexedSubscript:2];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setErrorDescription:v17];

        if ([argumentsCopy count] != 4)
        {
          goto LABEL_40;
        }

        v13 = [argumentsCopy objectAtIndexedSubscript:3];
        [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v12 setDetailedError:v13];
      }

      goto LABEL_39;
    }

    v11 = PBBProtoPrepareWatchForForcedSUResponse;
  }

LABEL_31:
  v29 = objc_alloc_init(v11);
  v12 = v29;
LABEL_41:
  data = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v29 data];
LABEL_42:

LABEL_43:
  v36 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:data type:dCopy isResponse:1];
  v37 = pbb_setupflow_log(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = PBBCMessageDescription(dCopy);
    *buf = 138412546;
    v121 = v38;
    v122 = 2112;
    v123 = v36;
    _os_log_impl(&dword_25DE64000, v37, OS_LOG_TYPE_DEFAULT, "Sending Response Protobuf (%@ -- %@)", buf, 0x16u);
  }

  service = [(PBBridgeIDSServiceDelegate *)self service];
  context = [messageCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v42 = [(PBBridgeIDSServiceDelegate *)self sendProtoBuf:v36 service:service priority:300 responseIdentifier:outgoingResponseIdentifier expectsResponse:0 retryCount:-1 retryInterval:-1.0];

  return 0;
}

- (BOOL)updateLanguageIdentifierWithCompletion:(id)completion
{
  v4 = [completion copy];
  updateLanguageCompletion = self->_updateLanguageCompletion;
  self->_updateLanguageCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:5 withArguments:v6];
}

- (BOOL)updateRegionIdentifierWithCompletion:(id)completion
{
  v4 = [completion copy];
  updateRegionCompletion = self->_updateRegionCompletion;
  self->_updateRegionCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:6 withArguments:v6];
}

- (BOOL)tellCompanionGizmoFinishedActivating
{
  [(PBBridgeGizmoController *)self _recordThatWatchFinishedActivating];
  v3 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:4 withArguments:v3];
}

- (BOOL)tellCompanionGizmoFinishedActivatingAsDeKOTA
{
  [(PBBridgeGizmoController *)self _recordThatWatchFinishedActivating];
  v3 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:21 withArguments:v3];
}

- (BOOL)tellCompanionGizmoFailedActivating:(id)activating
{
  v7[1] = *MEMORY[0x277D85DE8];
  activatingCopy = activating;
  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  self->_activationState = 1;
  v7[0] = activatingCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  LOBYTE(self) = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:12 withArguments:v5];
  return self;
}

- (void)tellCompanionGizmoFinishedHealthSharingOptInWithSelection:(BOOL)selection
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:selection];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:29 withArguments:v5];
}

- (void)setCompanionLanguage:(id)language
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = pbb_setupflow_log(languageCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = 534;
    v15 = 2080;
    v16 = "[PBBridgeGizmoController setCompanionLanguage:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v14, 0x12u);
  }

  v6 = [PBBProtoSetLanguage alloc];
  data = [languageCopy data];

  v8 = [(PBBProtoSetLanguage *)v6 initWithData:data];
  language = [(PBBProtoSetLanguage *)v8 language];
  v10 = [language copy];
  languageIdentifer = self->_languageIdentifer;
  self->_languageIdentifer = v10;

  updateLanguageCompletion = self->_updateLanguageCompletion;
  if (updateLanguageCompletion)
  {
    updateLanguageCompletion[2](updateLanguageCompletion, self->_languageIdentifer);
    v13 = self->_updateLanguageCompletion;
    self->_updateLanguageCompletion = 0;
  }
}

- (void)setCompanionRegion:(id)region
{
  v17 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = pbb_setupflow_log(regionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = 548;
    v15 = 2080;
    v16 = "[PBBridgeGizmoController setCompanionRegion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v14, 0x12u);
  }

  v6 = [PBBProtoSetRegion alloc];
  data = [regionCopy data];

  v8 = [(PBBProtoSetRegion *)v6 initWithData:data];
  region = [(PBBProtoSetRegion *)v8 region];
  v10 = [region copy];
  regionIdentifer = self->_regionIdentifer;
  self->_regionIdentifer = v10;

  updateRegionCompletion = self->_updateRegionCompletion;
  if (updateRegionCompletion)
  {
    updateRegionCompletion[2](updateRegionCompletion, self->_regionIdentifer);
    v13 = self->_updateRegionCompletion;
    self->_updateRegionCompletion = 0;
  }
}

- (void)getSiriStateWithCompletion:(id)completion
{
  v4 = [completion copy];
  siriStateCompletion = self->_siriStateCompletion;
  self->_siriStateCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:8 withArguments:v6];
}

- (void)enableSiriForGizmoWithCompletion:(id)completion
{
  v4 = [completion copy];
  enableSiriCompletion = self->_enableSiriCompletion;
  self->_enableSiriCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:9 withArguments:v6];
}

- (void)gotSiriState:(id)state
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = pbb_setupflow_log(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109378;
    v19[1] = 574;
    v20 = 2080;
    v21 = "[PBBridgeGizmoController gotSiriState:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v19, 0x12u);
  }

  v6 = [PBBProtoSiriEnabled alloc];
  data = [stateCopy data];
  v8 = [(PBBProtoSiriEnabled *)v6 initWithData:data];

  siriStateCompletion = self->_siriStateCompletion;
  if (siriStateCompletion)
  {
    siriStateCompletion[2](siriStateCompletion, [(PBBProtoSiriEnabled *)v8 enabled]);
    v12 = self->_siriStateCompletion;
    self->_siriStateCompletion = 0;
  }

  if (PBLogPerformanceMetrics(v9, v10))
  {
    v13 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    context = [stateCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v13 addMilestone:v16 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }
}

- (void)enabledSiri:(id)siri
{
  enableSiriCompletion = self->_enableSiriCompletion;
  if (enableSiriCompletion)
  {
    enableSiriCompletion[2](enableSiriCompletion, a2, siri);
    v5 = self->_enableSiriCompletion;
    self->_enableSiriCompletion = 0;
  }
}

- (void)companionBecameAvailableWantsConfirmation:(id)confirmation
{
  v14 = *MEMORY[0x277D85DE8];
  confirmationCopy = confirmation;
  v5 = [PBBProtoBecameActive alloc];
  data = [confirmationCopy data];

  v7 = [(PBBProtoBecameActive *)v5 initWithData:data];
  v9 = pbb_setupflow_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = 600;
    v12 = 2080;
    v13 = "[PBBridgeGizmoController companionBecameAvailableWantsConfirmation:]";
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "%d %s", v11, 0x12u);
  }

  if (![(PBBProtoBecameActive *)v7 wantsConfirmation])
  {
    [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:1 withArguments:&unk_286FB4208];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteDidBecomeAvailable];
}

- (BOOL)_getActivationData:(BOOL)data forRequest:(id)request withCompletion:(id)completion
{
  dataCopy = data;
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v10 = pbb_activation_log(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[PBBridgeGizmoController _getActivationData:forRequest:withCompletion:]";
    _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  if (dataCopy)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  if (dataCopy)
  {
    v12 = &OBJC_IVAR___PBBridgeGizmoController__sessionCompletion;
  }

  else
  {
    v12 = &OBJC_IVAR___PBBridgeGizmoController__activationCompletion;
  }

  [(PBBridgeGizmoController *)self setActivationState:v11];
  [(PBBridgeGizmoController *)self refreshTimeoutTimer];
  v13 = [completionCopy copy];
  v14 = *v12;
  v15 = *(&self->super.super.isa + v14);
  *(&self->super.super.isa + v14) = v13;

  if (requestCopy)
  {
    v19 = requestCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v17 = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:2 withArguments:v16];
  }

  else
  {
    v17 = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:2 withArguments:0];
  }

  return v17;
}

- (BOOL)getSessionDataForRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PBBridgeGizmoController_getSessionDataForRequest_withCompletion___block_invoke;
  v11[3] = &unk_2799F49A8;
  v12 = completionCopy;
  v7 = completionCopy;
  requestCopy = request;
  v9 = MEMORY[0x25F8A6750](v11);
  LOBYTE(self) = [(PBBridgeGizmoController *)self _getActivationData:1 forRequest:requestCopy withCompletion:v9];

  return self;
}

uint64_t __67__PBBridgeGizmoController_getSessionDataForRequest_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)getActivationDataForRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__PBBridgeGizmoController_getActivationDataForRequest_withCompletion___block_invoke;
  v11[3] = &unk_2799F49A8;
  v12 = completionCopy;
  v7 = completionCopy;
  requestCopy = request;
  v9 = MEMORY[0x25F8A6750](v11);
  LOBYTE(self) = [(PBBridgeGizmoController *)self _getActivationData:0 forRequest:requestCopy withCompletion:v9];

  return self;
}

uint64_t __70__PBBridgeGizmoController_getActivationDataForRequest_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)reportRemoteActivationFailureError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = MEMORY[0x277CBEA60];
  errorCopy2 = error;
  v6 = [v4 arrayWithObjects:&errorCopy count:1];

  LOBYTE(self) = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:27 withArguments:v6, errorCopy, v9];
  return self;
}

- (void)handleActivationData:(id)data
{
  *&v50[5] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  checkBrickedState = objc_opt_respondsToSelector();
  if (checkBrickedState)
  {
    checkBrickedState = [WeakRetained checkBrickedState];
    v7 = checkBrickedState;
  }

  else
  {
    v7 = 1;
  }

  v8 = pbb_activation_log(checkBrickedState);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v50 = "[PBBridgeGizmoController handleActivationData:]";
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v7)
  {
    [(PBBridgeGizmoController *)self setActivationState:5];
    [(PBBridgeGizmoController *)self refreshTimeoutTimer];
    v10 = [PBBProtoHandleActivationData alloc];
    data = [dataCopy data];
    v12 = [(PBBProtoHandleActivationData *)v10 initWithData:data];

    v15 = PBLogPerformanceMetrics(v13, v14);
    if (v15)
    {
      v16 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      context = [dataCopy context];
      outgoingResponseIdentifier = [context outgoingResponseIdentifier];
      [v16 addMilestone:v19 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    v22 = pbb_activation_log(v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v50[0] = 685;
      LOWORD(v50[1]) = 2080;
      *(&v50[1] + 2) = "[PBBridgeGizmoController handleActivationData:]";
      _os_log_impl(&dword_25DE64000, v22, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
    }

    sessionCompletion = self->_sessionCompletion;
    if (sessionCompletion)
    {
      activationData = [v12 activationData];
      sessionCompletion[2](sessionCompletion, activationData, 0);

      v26 = self->_sessionCompletion;
      self->_sessionCompletion = 0;
    }

    else if (self->_activationCompletion)
    {
      v34 = objc_alloc(MEMORY[0x277CCAAC8]);
      responseHeaders = [v12 responseHeaders];
      v47 = 0;
      v36 = [v34 initForReadingFromData:responseHeaders error:&v47];
      v26 = v47;

      if (v26)
      {
        v38 = pbb_activation_log(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeGizmoController handleActivationData:];
        }
      }

      v39 = MEMORY[0x277CBEB98];
      v48[0] = objc_opt_class();
      v48[1] = objc_opt_class();
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v41 = [v39 setWithArray:v40];
      v42 = [v36 decodeObjectOfClasses:v41 forKey:@"PBBridgeActivationRequestKey"];
      v43 = [v42 copy];

      [v36 finishDecoding];
      activationCompletion = self->_activationCompletion;
      activationData2 = [v12 activationData];
      activationCompletion[2](activationCompletion, activationData2, v43);

      v46 = self->_activationCompletion;
      self->_activationCompletion = 0;
    }

    else
    {
      v26 = pbb_activation_log(v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeGizmoController handleActivationData:v26];
      }
    }
  }

  else
  {
    v12 = pbb_activation_log(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeGizmoController *)v12 handleActivationData:v27, v28, v29, v30, v31, v32, v33];
    }
  }

  PBNotifyClientOfActivity();
}

- (void)setDiagnosticsEnabled:(id)enabled
{
  v24 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v4 = [PBBProtoDiagnosticsEnabled alloc];
  data = [enabledCopy data];
  v6 = [(PBBProtoDiagnosticsEnabled *)v4 initWithData:data];

  enabled = [(PBBProtoDiagnosticsEnabled *)v6 enabled];
  v8 = pbb_setupflow_log(enabled);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (enabled)
    {
      v9 = @"enabled";
    }

    v19[0] = 67109634;
    v19[1] = 717;
    v20 = 2080;
    v21 = "[PBBridgeGizmoController setDiagnosticsEnabled:]";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s %@", v19, 0x1Cu);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setBoolValue:enabled forSetting:*MEMORY[0x277D25E58]];

  if (PBLogPerformanceMetrics(v11, v12))
  {
    v13 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    context = [enabledCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v13 addMilestone:v16 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }
}

- (void)setLocationEnabled:(id)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v4 = [PBBProtoLocationServicesEnabled alloc];
  data = [enabledCopy data];
  v6 = [(PBBProtoLocationServicesEnabled *)v4 initWithData:data];

  enabled = [(PBBProtoLocationServicesEnabled *)v6 enabled];
  v8 = pbb_setupflow_log(enabled);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (enabled)
    {
      v9 = @"enabled";
    }

    v18[0] = 67109634;
    v18[1] = 730;
    v19 = 2080;
    v20 = "[PBBridgeGizmoController setLocationEnabled:]";
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s %@", v18, 0x1Cu);
  }

  v10 = [MEMORY[0x277CBFC10] setLocationServicesEnabled:enabled];
  if (PBLogPerformanceMetrics(v10, v11))
  {
    v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    context = [enabledCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v12 addMilestone:v15 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }
}

- (void)setSiriEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [PBBProtoSetSiriEnabled alloc];
  data = [enabledCopy data];

  v10 = [(PBBProtoSetSiriEnabled *)v4 initWithData:data];
  enabled = [(PBBProtoSetSiriEnabled *)v10 enabled];
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  [sharedPreferences setAssistantIsEnabled:enabled];

  sharedPreferences2 = [getAFPreferencesClass() sharedPreferences];
  [sharedPreferences2 setDictationIsEnabled:enabled];

  sharedPreferences3 = [getAFPreferencesClass() sharedPreferences];
  [sharedPreferences3 synchronize];
}

- (void)setFitnessRouteAuthorizationForTinker:(id)tinker
{
  v19 = *MEMORY[0x277D85DE8];
  tinkerCopy = tinker;
  v4 = [PBBProtoTinkerFitnessRouteTrackingEnabled alloc];
  data = [tinkerCopy data];

  v6 = [(PBBProtoTinkerFitnessRouteTrackingEnabled *)v4 initWithData:data];
  enabled = [(PBBProtoTinkerFitnessRouteTrackingEnabled *)v6 enabled];
  v8 = enabled;
  v9 = pbb_setupflow_log(enabled);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"disabled";
    if (v8)
    {
      v10 = @"enabled";
    }

    v14[0] = 67109634;
    v14[1] = 777;
    v15 = 2080;
    v16 = "[PBBridgeGizmoController setFitnessRouteAuthorizationForTinker:]";
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "%d %s %@", v14, 0x1Cu);
  }

  v11 = MEMORY[0x277CBFC10];
  if (v8)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/AppleWatchWorkout.bundle"];
  [v11 setAuthorizationStatusByType:v12 forBundle:v13];
}

- (void)companionDidSendLanguageAndLocale:(id)locale
{
  v32[6] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v5 = [PBBProtoSendLanguageAndLocale alloc];
  data = [localeCopy data];

  v7 = [(PBBProtoSendLanguageAndLocale *)v5 initWithData:data];
  appleLanguages = [(PBBProtoSendLanguageAndLocale *)v7 appleLanguages];
  appleLocale = [(PBBProtoSendLanguageAndLocale *)v7 appleLocale];
  v10 = objc_alloc(MEMORY[0x277CCAAC8]);
  archivedPreferences = [(PBBProtoSendLanguageAndLocale *)v7 archivedPreferences];
  v29 = 0;
  v12 = [v10 initForReadingFromData:archivedPreferences error:&v29];
  v13 = v29;

  if (v13)
  {
    v15 = pbb_setupflow_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeGizmoController handleActivationData:];
    }
  }

  v16 = objc_alloc(MEMORY[0x277CBEB98]);
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v32[5] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:6];
  v18 = [v16 initWithArray:v17];
  v19 = [v12 decodeObjectOfClasses:v18 forKey:@"PBBridgeLocalePreferencesKey"];
  v20 = [v19 copy];

  v21 = pbb_setupflow_log([v12 finishDecoding]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = appleLanguages;
    _os_log_impl(&dword_25DE64000, v21, OS_LOG_TYPE_DEFAULT, "languages %@", buf, 0xCu);
  }

  v23 = pbb_setupflow_log(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = appleLocale;
    _os_log_impl(&dword_25DE64000, v23, OS_LOG_TYPE_DEFAULT, "locale %@", buf, 0xCu);
  }

  v25 = pbb_setupflow_log(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&dword_25DE64000, v25, OS_LOG_TYPE_DEFAULT, "localePreferences %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained ingestLocalePreferences:v20];
  }

  else
  {
    v27 = objc_opt_respondsToSelector();
    if (v27)
    {
      [WeakRetained selectLanguageFromAppleLanguages:appleLanguages andLocale:appleLocale];
    }

    else
    {
      v28 = pbb_setupflow_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = appleLocale;
        _os_log_impl(&dword_25DE64000, v28, OS_LOG_TYPE_DEFAULT, "locale %@", buf, 0xCu);
      }
    }
  }
}

- (void)companionDidSendDemoWirelessCredentials:(id)credentials
{
  v15 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = [PBBProtoDemoWirelessCredentials alloc];
  data = [credentialsCopy data];

  v7 = [(PBBProtoDemoWirelessCredentials *)v5 initWithData:data];
  ssid = [(PBBProtoDemoWirelessCredentials *)v7 ssid];
  password = [(PBBProtoDemoWirelessCredentials *)v7 password];
  companionDemoConfig = [(PBBProtoDemoWirelessCredentials *)v7 companionDemoConfig];
  v11 = pbb_setupflow_log(companionDemoConfig);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = ssid;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Received Credentials for %@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareWithNetwork:ssid andPassword:password withCompanionConfiguration:companionDemoConfig];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareWithNetwork:ssid andPassword:password];
  }

  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:22 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)companionDidSendTinkerWirelessCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v5 = [PBBProtoTinkerWirelessCredentials alloc];
  data = [credentialsCopy data];

  v8 = [(PBBProtoTinkerWirelessCredentials *)v5 initWithData:data];
  serializedNetworkRecords = [(PBBProtoTinkerWirelessCredentials *)v8 serializedNetworkRecords];
  [(PBBridgeGizmoController *)self parseNetworkRecordsAndApplyWirelessCredentialsFromData:serializedNetworkRecords];
}

- (void)processReceivedPairingWirelessCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v5 = [PBBProtoSendWirelessCredentialsToWatch alloc];
  data = [credentialsCopy data];
  v8 = [(PBBProtoSendWirelessCredentialsToWatch *)v5 initWithData:data];

  serializedNetworkRecords = [(PBBProtoSendWirelessCredentialsToWatch *)v8 serializedNetworkRecords];
  [(PBBridgeGizmoController *)self parseNetworkRecordsAndApplyWirelessCredentialsFromData:serializedNetworkRecords];

  [(PBBridgeGizmoController *)self _sendResponseToMessage:credentialsCopy withResponseMessageID:33 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)parseNetworkRecordsAndApplyWirelessCredentialsFromData:(id)data
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v31 = objc_opt_new();
  v4 = pbb_setupflow_log(v31);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = [dataCopy count];
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Received %lu network records from the phone", buf, 0xCu);
  }

  if ([dataCopy count])
  {
    v5 = 0;
    v6 = *MEMORY[0x277CCA308];
    do
    {
      v7 = objc_alloc(MEMORY[0x277CCAAC8]);
      v8 = [dataCopy objectAtIndex:v5];
      v9 = [v7 initForReadingFromData:v8 error:0];

      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
      v32 = 0;
      v17 = [v9 decodeTopLevelObjectOfClasses:v16 forKey:v6 error:&v32];
      v18 = v32;
      v19 = v18;
      if (v18)
      {
        v20 = pbb_setupflow_log(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v19;
          v21 = v20;
          v22 = "Error unarchiving: %@";
          v23 = 12;
LABEL_8:
          _os_log_impl(&dword_25DE64000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
        }
      }

      else
      {
        v20 = pbb_setupflow_log(0);
        v24 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v24)
          {
            v25 = [v17 objectForKeyedSubscript:@"SSID_STR"];
            *buf = 138412290;
            v34 = v25;
            _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, "Adding: %@", buf, 0xCu);
          }

          [v31 addObject:v17];
          goto LABEL_14;
        }

        if (v24)
        {
          *buf = 0;
          v21 = v20;
          v22 = "empty data";
          v23 = 2;
          goto LABEL_8;
        }
      }

LABEL_14:
      ++v5;
    }

    while ([dataCopy count] > v5);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v27 = objc_opt_respondsToSelector();
  if (v27)
  {
    v28 = v31;
    [WeakRetained applyWirelessNetworkCredentials:v31];
  }

  else
  {
    v29 = pbb_setupflow_log(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v29, OS_LOG_TYPE_DEFAULT, "delegate doesn't respond to applyWirelessNetworkCredentials", buf, 2u);
    }

    v28 = v31;
  }
}

- (BOOL)tellCompanionThatLanguageAndLanguageCompletedWithStatus:(unsigned __int16)status
{
  statusCopy = status;
  v16 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:statusCopy];
    *buf = 136315394;
    v13 = "[PBBridgeGizmoController tellCompanionThatLanguageAndLanguageCompletedWithStatus:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s (Status: %@)", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:statusCopy];
  v11 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:20 withArguments:v8];

  return v9;
}

- (void)handleSetLauncherViewModeForTinker:(id)tinker
{
  v18 = *MEMORY[0x277D85DE8];
  tinkerCopy = tinker;
  v5 = [PBBProtoTinkerSetLauncherViewMode alloc];
  data = [tinkerCopy data];

  v7 = [(PBBProtoTinkerSetLauncherViewMode *)v5 initWithData:data];
  launcherViewMode = [(PBBProtoTinkerSetLauncherViewMode *)v7 launcherViewMode];
  v9 = pbb_setupflow_log(launcherViewMode);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = 900;
    v14 = 2080;
    v15 = "[PBBridgeGizmoController handleSetLauncherViewModeForTinker:]";
    v16 = 1024;
    v17 = launcherViewMode;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, ">>>> %d %s launcherViewMode %d", v13, 0x18u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:launcherViewMode];
    [WeakRetained setLauncherViewMode:v12];
  }

  else
  {
    v12 = pbb_setupflow_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, ">>>> delegate doesn't respond to setLauncherViewMode:", v13, 2u);
    }
  }
}

- (void)tellCompanionThatGizmoFinishedSettingPasscode:(BOOL)passcode isLong:(BOOL)long
{
  longCopy = long;
  passcodeCopy = passcode;
  v16 = *MEMORY[0x277D85DE8];
  v7 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = 921;
    v14 = 2080;
    v15 = "[PBBridgeGizmoController tellCompanionThatGizmoFinishedSettingPasscode:isLong:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:passcodeCopy];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{longCopy, v8}];
  v11[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:7 withArguments:v10];
}

- (void)tellCompanionThatGizmoFailedToCreatePasscode:(int)passcode
{
  v3 = *&passcode;
  v13 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v10 = 927;
    v11 = 2080;
    v12 = "[PBBridgeGizmoController tellCompanionThatGizmoFailedToCreatePasscode:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v8 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:17 withArguments:v7];
}

- (void)tellCompanionThatGizmoFinishedChangingPasscode:(BOOL)passcode isLong:(BOOL)long
{
  longCopy = long;
  passcodeCopy = passcode;
  v16 = *MEMORY[0x277D85DE8];
  v7 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = 933;
    v14 = 2080;
    v15 = "[PBBridgeGizmoController tellCompanionThatGizmoFinishedChangingPasscode:isLong:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:passcodeCopy];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{longCopy, v8}];
  v11[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:28 withArguments:v10];
}

- (void)tellCompanionThatGizmoFinishedUnlockPairing:(BOOL)pairing
{
  pairingCopy = pairing;
  v13 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v10 = 944;
    v11 = 2080;
    v12 = "[PBBridgeGizmoController tellCompanionThatGizmoFinishedUnlockPairing:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:pairingCopy];
  v8 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:13 withArguments:v7];
}

- (void)setCanBeginActivating:(id)activating
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  activatingCopy = activating;
  v5 = pbb_activation_log(activatingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109378;
    v19[0] = 952;
    LOWORD(v19[1]) = 2080;
    *(&v19[1] + 2) = "[PBBridgeGizmoController setCanBeginActivating:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s -- Companion says we can activate!", &v18, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  checkBrickedState = [WeakRetained checkBrickedState];
  v8 = checkBrickedState;
  v9 = pbb_activation_log(checkBrickedState);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Activated";
    if (v8)
    {
      v10 = @"Bricked";
    }

    v18 = 138412290;
    *v19 = v10;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Watch Is %@!", &v18, 0xCu);
  }

  if (!v8)
  {
    [(PBBridgeGizmoController *)self tellCompanionGizmoFinishedActivating];
  }

  else
  {
LABEL_9:
    self->_canBeginActivation = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeGizmoControllerActivationAbilityChanged" object:0 userInfo:0];

    if (PBLogPerformanceMetrics(v12, v13))
    {
      v14 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      context = [activatingCopy context];
      outgoingResponseIdentifier = [context outgoingResponseIdentifier];
      [v14 addMilestone:@"CanBeginActivating" activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }
}

- (void)waitForDynamicActivationEventPresentation:(id)presentation
{
  v8 = *MEMORY[0x277D85DE8];
  self->_activationState = 6;
  v4 = pbb_activation_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 976;
    v6 = 2080;
    v7 = "[PBBridgeGizmoController waitForDynamicActivationEventPresentation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  PBNotifyClientOfActivity();
}

- (void)waitForUserResponseToDynamicEventPresentation:(id)presentation
{
  v8 = *MEMORY[0x277D85DE8];
  self->_activationState = 6;
  v4 = pbb_activation_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 984;
    v6 = 2080;
    v7 = "[PBBridgeGizmoController waitForUserResponseToDynamicEventPresentation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  [(PBBridgeGizmoController *)self refreshTimeoutTimer];
  PBNotifyClientOfActivity();
}

- (void)retryActivation:(id)activation
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = pbb_activation_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 991;
    v7 = 2080;
    v8 = "[PBBridgeGizmoController retryActivation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s -- Companion says we can activate!", v6, 0x12u);
  }

  self->_canBeginActivation = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PBBridgeGizmoControllerRetryActivation" object:0 userInfo:0];

  PBNotifyClientOfActivity();
}

- (void)beganAwaitingAbilityToActivate
{
  [(PBBridgeGizmoController *)self setActivationState:2];

  [(PBBridgeGizmoController *)self refreshTimeoutTimer];
}

- (void)invalidateTimeoutTimer
{
  [(NSTimer *)self->_activationTimeout invalidate];
  activationTimeout = self->_activationTimeout;
  self->_activationTimeout = 0;
}

- (void)refreshTimeoutTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (self->_activationState - 2 <= 4)
  {
    v3 = dbl_25DEB5280[(self->_activationState - 2)];
  }

  v4 = pbb_activation_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((self->_activationState - 2) > 3u)
    {
      v5 = @"Idle";
    }

    else
    {
      v5 = off_2799F4AF8[(self->_activationState - 2)];
    }

    v9 = 134218242;
    v10 = v3 / 60.0;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Setting %1.f minute timeout for activation phase (%@)", &v9, 0x16u);
  }

  [(NSTimer *)self->_activationTimeout invalidate];
  v6 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_activationTimeout_ selector:0 userInfo:0 repeats:v3];
  activationTimeout = self->_activationTimeout;
  self->_activationTimeout = v6;

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop addTimer:self->_activationTimeout forMode:*MEMORY[0x277CBE738]];
}

- (void)activationTimeout:(id)timeout
{
  v4 = pbb_activation_log([(PBBridgeGizmoController *)self invalidateTimeoutTimer]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(PBBridgeGizmoController *)self activationTimeout:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activation Timed Out in Phase Proxy Activation"];
  [WeakRetained remoteDidFailActivation:6 description:v6];
}

- (void)remoteRequestToKeepAlive:(id)alive
{
  v4 = pbb_activation_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Companion requested we refresh our activation timeout", v7, 2u);
  }

  activationState = self->_activationState;
  if (activationState >= 3 && activationState != 0xFFFF)
  {
    [(PBBridgeGizmoController *)self refreshTimeoutTimer];
  }
}

- (void)pushControllerType:(id)type
{
  v31 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [PBBProtoPushControllerType alloc];
  data = [typeCopy data];
  v7 = [(PBBProtoPushControllerType *)v5 initWithData:data];

  controllerType = [(PBBProtoPushControllerType *)v7 controllerType];
  intendedFireDate = [(PBBProtoPushControllerType *)v7 intendedFireDate];
  v11 = v10;
  v13 = PBLogPerformanceMetrics(intendedFireDate, v12);
  if (v13)
  {
    v14 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    context = [typeCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v14 addMilestone:v17 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }

  v20 = pbb_setupflow_log(v13);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PBBuddyControllerDescription(controllerType);
    v24[0] = 67109890;
    v24[1] = 1123;
    v25 = 2080;
    v26 = "[PBBridgeGizmoController pushControllerType:]";
    v27 = 1024;
    v28 = controllerType;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, "%d %s (%d %@)", v24, 0x22u);
  }

  v22 = CleanIntendedFireTimeOffset(v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushControllerType:controllerType withIntendedFireTime:v22];
  PBNotifyClientOfActivity();
}

- (void)popToControllerType:(id)type
{
  v31 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [PBBProtoPopToControllerType alloc];
  data = [typeCopy data];
  v7 = [(PBBProtoPopToControllerType *)v5 initWithData:data];

  controllerType = [(PBBProtoPopToControllerType *)v7 controllerType];
  intendedFireDate = [(PBBProtoPopToControllerType *)v7 intendedFireDate];
  v11 = v10;
  v12 = pbb_setupflow_log(intendedFireDate);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PBBuddyControllerDescription(controllerType);
    v24[0] = 67109890;
    v24[1] = 1138;
    v25 = 2080;
    v26 = "[PBBridgeGizmoController popToControllerType:]";
    v27 = 1024;
    v28 = controllerType;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%d %s (%d %@)", v24, 0x22u);
  }

  v14 = CleanIntendedFireTimeOffset(v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained popToControllerType:controllerType withIntendedFireTime:v14];
  if (PBLogPerformanceMetrics(v16, v17))
  {
    v18 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    context = [typeCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v18 addMilestone:v21 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }

  PBNotifyClientOfActivity();
}

- (void)showLockedOnAnimation:(id)animation
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 1153;
    v7 = 2080;
    v8 = "[PBBridgeGizmoController showLockedOnAnimation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained showLockedOnAnimation];
  PBNotifyClientOfActivity();
}

- (void)setPasscodeRestrictions:(id)restrictions
{
  v55[3] = *MEMORY[0x277D85DE8];
  restrictionsCopy = restrictions;
  v4 = [PBBProtoSetPasscodeRestrictions alloc];
  v39 = restrictionsCopy;
  data = [restrictionsCopy data];
  v6 = [(PBBProtoSetPasscodeRestrictions *)v4 initWithData:data];

  v7 = objc_alloc(MEMORY[0x277CCAAC8]);
  v38 = v6;
  restrictions = [(PBBProtoSetPasscodeRestrictions *)v6 restrictions];
  v49 = 0;
  v9 = [v7 initForReadingFromData:restrictions error:&v49];
  v10 = v49;

  if (v10)
  {
    v12 = pbb_setupflow_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeGizmoController handleActivationData:];
    }
  }

  v13 = *MEMORY[0x277D26060];
  v55[0] = *MEMORY[0x277D25FF8];
  v55[1] = v13;
  v55[2] = *MEMORY[0x277D25CF8];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  v15 = *MEMORY[0x277D25F88];
  v54[0] = *MEMORY[0x277D25F98];
  v54[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v17 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        if ([v9 containsValueForKey:v23])
        {
          v24 = [v9 decodeObjectOfClass:objc_opt_class() forKey:v23];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 MCSetBoolRestriction:v23 value:v24 != 0];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v20);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v16;
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v41 + 1) + 8 * j);
        if ([v9 containsValueForKey:v30])
        {
          v31 = [v9 decodeObjectOfClass:objc_opt_class() forKey:v30];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 MCSetValueRestriction:v30 value:v31];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v27);
  }

  v32 = pbb_setupflow_log([v9 finishDecoding]);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v17;
    _os_log_impl(&dword_25DE64000, v32, OS_LOG_TYPE_DEFAULT, "Trying to apply passcode restrictions: %@", buf, 0xCu);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v40 = 0;
  [mEMORY[0x277D262A0] applyRestrictionDictionary:v17 clientType:@"NanoPreferencesSync" clientUUID:@"com.apple.nanobuddy" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v40];
  v34 = v40;

  if (v34)
  {
    v36 = pbb_setupflow_log(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeGizmoController setPasscodeRestrictions:];
    }
  }

  self->_readyToCreatePasscode = 1;
  PBNotifyClientOfActivity();
}

- (void)setCrownOrientationRight:(id)right
{
  v14 = *MEMORY[0x277D85DE8];
  rightCopy = right;
  v5 = [PBBProtoTellGizmoToSetCrownOrientation alloc];
  data = [rightCopy data];

  v7 = [(PBBProtoTellGizmoToSetCrownOrientation *)v5 initWithData:data];
  crownOrientationRight = [(PBBProtoTellGizmoToSetCrownOrientation *)v7 crownOrientationRight];
  v9 = pbb_setupflow_log(crownOrientationRight);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Left";
    if (crownOrientationRight)
    {
      v10 = @"Right";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "setCrownOrientationRight: %@", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCrownOrientationRight:crownOrientationRight];
}

- (void)updateSynchProgress:(id)progress
{
  v18 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = [PBBProtoInitialSyncStateUpdate alloc];
  data = [progressCopy data];

  v7 = [(PBBProtoInitialSyncStateUpdate *)v5 initWithData:data];
  [(PBBProtoInitialSyncStateUpdate *)v7 progress];
  v9 = v8;
  state = [(PBBProtoInitialSyncStateUpdate *)v7 state];
  v11 = state;
  v12 = pbb_setupflow_log(state);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "updateSynchProgress: %f state: %ld", &v14, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setSyncProgress:v11 andState:v9];
}

- (void)doInitialSyncPrep:(id)prep
{
  v12 = *MEMORY[0x277D85DE8];
  prepCopy = prep;
  v5 = pbb_setupflow_log(prepCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = 1292;
    v10 = 2080;
    v11 = "[PBBridgeGizmoController doInitialSyncPrep:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    [WeakRetained prepareForInitialSync];
  }

  else
  {
    v8 = pbb_setupflow_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Warning!! Delegate did not handle prepareForInitialSync!", v9, 2u);
    }
  }

  [(PBBridgeGizmoController *)self _sendResponseToMessage:prepCopy withResponseMessageID:18 withArguments:0];
}

- (void)handleWarrantySentinelRequest:(id)request
{
  v69 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [PBBProtoWarrantySentinel alloc];
  data = [requestCopy data];
  v7 = [(PBBProtoWarrantySentinel *)v5 initWithData:data];

  v9 = pbb_setupflow_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = v7;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Got Warranty Sentinel request: (%@)", buf, 0xCu);
  }

  if (PBLogPerformanceMetrics(v10, v11))
  {
    v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    context = [requestCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v12 addMilestone:v15 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }

  if ([(PBBProtoWarrantySentinel *)v7 hasDeviceName])
  {
    deviceName = [(PBBProtoWarrantySentinel *)v7 deviceName];
    [(PBBridgeGizmoController *)self setDeviceName:deviceName];
  }

  hasAppleLocale = [(PBBProtoWarrantySentinel *)v7 hasAppleLocale];
  v20 = 0x277CBE000;
  if (hasAppleLocale)
  {
    selfCopy = self;
    v21 = pbb_setupflow_log(hasAppleLocale);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v21, OS_LOG_TYPE_DEFAULT, "Applying Locale workaround for 28393103", buf, 2u);
    }

    v22 = *MEMORY[0x277CBF028];
    v23 = 1;
    while (1)
    {
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];

      v26 = CFPreferencesCopyAppValue(@"AppleLocale", v22);
      v27 = pbb_setupflow_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v66 = localeIdentifier;
        v67 = 2112;
        v68 = v26;
        _os_log_impl(&dword_25DE64000, v27, OS_LOG_TYPE_DEFAULT, "Locale from NSLocale: (%@); Locale from CFPref: (%@)", buf, 0x16u);
      }

      v28 = [v26 isEqualToString:localeIdentifier];
      if (v28)
      {
        break;
      }

      CFPreferencesFlushCaches();
      _CFLocaleResetCurrent();

      if (++v23 == 11)
      {
        goto LABEL_19;
      }
    }

    v29 = pbb_setupflow_log(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v66) = v23;
      _os_log_impl(&dword_25DE64000, v29, OS_LOG_TYPE_DEFAULT, "Workaround did the trick after (%d) iterations", buf, 8u);
    }

LABEL_19:
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier2 = [currentLocale2 localeIdentifier];

    v33 = pbb_setupflow_log(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = localeIdentifier2;
      _os_log_impl(&dword_25DE64000, v33, OS_LOG_TYPE_DEFAULT, "Current locale identifier: %@", buf, 0xCu);
    }

    v34 = MEMORY[0x277CBEAF8];
    appleLocale = [(PBBProtoWarrantySentinel *)v7 appleLocale];
    v36 = [v34 componentsFromLocaleIdentifier:appleLocale];

    v37 = [v36 objectForKeyedSubscript:@"calendar"];
    supportedCalendars = [MEMORY[0x277D218D0] supportedCalendars];
    v39 = [supportedCalendars containsObject:v37];

    if ((v39 & 1) == 0)
    {

      v37 = 0;
    }

    v40 = [v36 objectForKeyedSubscript:@"numbers"];
    v41 = [MEMORY[0x277D218D0] numberingSystemsForLocaleID:localeIdentifier2];
    if ([v41 containsObject:v40])
    {
      v42 = [MEMORY[0x277D218D0] numberingSystemForLocaleID:localeIdentifier2];
      v43 = [v40 isEqualToString:v42];

      if (!v43)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v40 = 0;
LABEL_28:
    v44 = MEMORY[0x277CBEB38];
    v45 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:localeIdentifier2];
    v46 = [v44 dictionaryWithDictionary:v45];

    if (v37)
    {
      [v46 setObject:v37 forKeyedSubscript:@"calendar"];
    }

    if (v40)
    {
      [v46 setObject:v40 forKeyedSubscript:@"numbers"];
    }

    v47 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromComponents:v46];
    v48 = pbb_setupflow_log(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v66 = v47;
      v67 = 2112;
      v68 = v46;
      _os_log_impl(&dword_25DE64000, v48, OS_LOG_TYPE_DEFAULT, "Will set new locale: %@, given components: %@", buf, 0x16u);
    }

    [MEMORY[0x277CBEAF8] setLocaleAndResetTimeFormat:v47];
    _CFLocaleResetCurrent();
    v49 = CFPreferencesCopyValue(@"AppleLocale", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v50 = pbb_setupflow_log(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v49;
      _os_log_impl(&dword_25DE64000, v50, OS_LOG_TYPE_DEFAULT, "Set locale to %@ (read back from CFPref)", buf, 0xCu);
    }

    self = selfCopy;
    v20 = 0x277CBE000uLL;
  }

  if ([(PBBProtoWarrantySentinel *)v7 appleLanguagesCount])
  {
    appleLanguages = [(PBBProtoWarrantySentinel *)v7 appleLanguages];
    v52 = *(v20 + 2808);
    supportedCJLanguageIdentifiers = [v52 supportedCJLanguageIdentifiers];
    v54 = [v52 mostPreferredLanguageOf:supportedCJLanguageIdentifiers withPreferredLanguages:appleLanguages forUsage:1 options:4];

    if ([v54 length])
    {
      v55 = *(v20 + 2808);
      preferredLanguages = [v55 preferredLanguages];
      firstObject = [preferredLanguages firstObject];
      [v55 setLanguageToPreferredLanguages:firstObject fallback:v54];

      v59 = pbb_setupflow_log(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        preferredLanguages2 = [*(v20 + 2808) preferredLanguages];
        *buf = 138412290;
        v66 = preferredLanguages2;
        _os_log_impl(&dword_25DE64000, v59, OS_LOG_TYPE_DEFAULT, "Set languages to %@", buf, 0xCu);
      }
    }
  }

  if ([(PBBProtoWarrantySentinel *)v7 hasRemoveSentinel]&& (v61 = [(PBBProtoWarrantySentinel *)v7 removeSentinel], v61))
  {
    v62 = pbb_setupflow_log(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v62, OS_LOG_TYPE_DEFAULT, "Removing Warranty Sentinel", buf, 2u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty" error:0];
  }

  else
  {
    [(PBBridgeGizmoController *)self _sendResponseToMessage:requestCopy withResponseMessageID:14 withArguments:0];
  }

  PBNotifyClientOfActivity();
}

- (void)handleOfflineTermsRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [PBBProtoOfflineTerms alloc];
  data = [requestCopy data];
  v7 = [(PBBProtoOfflineTerms *)v5 initWithData:data];

  v9 = pbb_setupflow_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Got Offline Terms request: (%@)", buf, 0xCu);
  }

  if (PBLogPerformanceMetrics(v10, v11))
  {
    v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    context = [requestCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v12 addMilestone:v15 activityType:outgoingResponseIdentifier activityIdentifier:Current];
  }

  languageCode = [(PBBProtoOfflineTerms *)v7 languageCode];
  v22[0] = languageCode;
  countryCode = [(PBBProtoOfflineTerms *)v7 countryCode];
  v22[1] = countryCode;
  appleLanguages = [(PBBProtoOfflineTerms *)v7 appleLanguages];
  v22[2] = appleLanguages;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  [(PBBridgeGizmoController *)self _sendResponseToMessage:requestCopy withResponseMessageID:15 withArguments:v21];
  PBNotifyClientOfActivity();
}

- (void)handleRenameDeviceRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [PBBProtoDeviceName alloc];
  data = [requestCopy data];

  v7 = [(PBBProtoDeviceName *)v5 initWithData:data];
  deviceName = [(PBBProtoDeviceName *)v7 deviceName];
  v9 = pbb_setupflow_log(deviceName);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = deviceName;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Received device name request (%@)", &v10, 0xCu);
  }

  [(PBBridgeGizmoController *)self setDeviceName:deviceName];
}

- (void)setDeviceName:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    v5 = pbb_setupflow_log(nameCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Setting device name to '%@'", buf, 0xCu);
    }

    v6 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PBBridgeGizmoController_setDeviceName___block_invoke;
    block[3] = &unk_2799F4468;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

void __41__PBBridgeGizmoController_setDeviceName___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (lockdown_connect())
  {
    v2 = (a1 + 32);
    v3 = lockdown_set_value();
    v4 = lockdown_disconnect();
    v5 = pbb_setupflow_log(v4);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __41__PBBridgeGizmoController_setDeviceName___block_invoke_cold_1(v2, v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v2;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Successfully set name: (%@)", &v8, 0xCu);
    }
  }

  else
  {
    v6 = pbb_setupflow_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__PBBridgeGizmoController_setDeviceName___block_invoke_cold_2(v6);
    }
  }
}

+ (id)prepareOfflineTermsResponse:(id)response
{
  responseCopy = response;
  v5 = objc_alloc_init(PBBProtoOfflineTerms);
  v6 = [responseCopy objectAtIndexedSubscript:0];
  v7 = [responseCopy objectAtIndexedSubscript:1];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_3;
  v17[3] = &unk_2799F49D0;
  selfCopy = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = MEMORY[0x25F8A6750](v17);
  v11 = __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke();
  [(PBBProtoOfflineTerms *)v5 setLicense:v11];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  if (v13)
  {
    v14 = __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_2();
    [(PBBProtoOfflineTerms *)v5 setMultiterms:v14];

    v15 = v10[2](v10);
    [(PBBProtoOfflineTerms *)v5 setWarranty:v15];
  }

  return v5;
}

id __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = SFLicenseFilePath();
  v2 = [v0 stringWithContentsOfFile:v1 encoding:4 error:0];

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TERMS_CONDITIONS_LINK" value:&stru_286FA8098 table:@"Localizable"];

  v5 = MEMORY[0x277CBEAF8];
  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [v6 objectAtIndex:0];
  v8 = [v5 characterDirectionForLanguage:v7];

  v9 = @"ltr";
  if (v8 == 2)
  {
    v9 = @"rtl";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<body><p dir=%@ class=p1><b>%@</b></p><p class=p1><br></p>", v9, v4];
  v11 = [v2 stringByReplacingOccurrencesOfString:@"<body>" withString:v10];

  v12 = [v11 dataUsingEncoding:4];

  return v12;
}

id __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 pathForResource:@"multiterms" ofType:@"xml"];

  v2 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v1 encoding:4 error:0];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

id __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_3(void *a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = [objc_opt_class() warrantyFilePathForLanguageCode:a1[4] countryCode:a1[5]];
  v4 = [v2 dataWithContentsOfFile:v3];

  return v4;
}

- (void)transportBecameReachable
{
  v4.receiver = self;
  v4.super_class = PBBridgeGizmoController;
  [(PBBridgeIDSServiceDelegate *)&v4 transportBecameReachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained transportBecameReachable];
  }
}

- (void)transportBecameUnreachable
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PBBridgeGizmoController;
  [(PBBridgeIDSServiceDelegate *)&v11 transportBecameUnreachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();
  v5 = v4;
  v6 = pbb_setupflow_log(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 136446210;
      v13 = "[PBBridgeGizmoController transportBecameUnreachable]";
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    [WeakRetained transportBecameUnreachable];
  }

  else
  {
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 136446466;
      v13 = "[PBBridgeGizmoController transportBecameUnreachable]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate (%@) missing transportBecameUnreachable", buf, 0x16u);
    }
  }
}

- (void)prepareForForcedWatchSU:(id)u
{
  v9 = *MEMORY[0x277D85DE8];
  uCopy = u;
  v5 = pbb_setupflow_log(uCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PBBridgeGizmoController prepareForForcedWatchSU:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareForForcedSU];
  }

  [(PBBridgeGizmoController *)self _sendResponseToMessage:uCopy withResponseMessageID:23 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)fetchTermsAndConditions:(id)conditions
{
  v26 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  v5 = pbb_setupflow_log(conditionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v23 = 1558;
    v24 = 2080;
    v25 = "[PBBridgeGizmoController fetchTermsAndConditions:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  if (v7)
  {
    v21[0] = &unk_286FB4250;
    v21[1] = &unk_286FB42A0;
    v21[2] = &unk_286FB4278;
    v8 = MEMORY[0x277CBEA60];
    v9 = v21;
    v10 = 3;
  }

  else
  {
    v20[0] = &unk_286FB4250;
    v20[1] = &unk_286FB42A0;
    v8 = MEMORY[0x277CBEA60];
    v9 = v20;
    v10 = 2;
  }

  v11 = [v8 arrayWithObjects:v9 count:v10];
  v18[0] = @"terms";
  v18[1] = @"format";
  v12 = *MEMORY[0x277CEC948];
  v19[0] = v11;
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v14 = [objc_alloc(MEMORY[0x277CEC800]) initWithParameters:v13];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke;
  v16[3] = &unk_2799F4A20;
  v16[4] = self;
  v17 = conditionsCopy;
  v15 = conditionsCopy;
  [v14 performRequestWithHandler:v16];
}

void __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke_2;
  v11[3] = &unk_2799F49F8;
  v12 = v6;
  v13 = v7;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 responseData];
  v4 = pbb_setupflow_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 length];
    v6 = *(a1 + 40);
    *buf = 134218242;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Terms request completed with data length %llu, error (non-nil does not imply failure) = %{public}@", buf, 0x16u);
  }

  v7 = [v3 length];
  v8 = pbb_setupflow_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "sending online terms", buf, 2u);
    }

    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = v3;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v11 _sendResponseToMessage:v10 withResponseMessageID:101 withArguments:v12];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "requesting offline terms", buf, 2u);
    }

    [*(a1 + 48) _sendResponseToMessage:*(a1 + 56) withResponseMessageID:101 withArguments:0];
  }
}

- (void)companionTermsResponse:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = pbb_setupflow_log(responseCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109378;
    v14 = 1592;
    v15 = 2080;
    *v16 = "[PBBridgeGizmoController companionTermsResponse:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", &v13, 0x12u);
  }

  v5 = [PBBProtoCompanionTermsResponse alloc];
  data = [responseCopy data];

  v7 = [(PBBProtoCompanionTermsResponse *)v5 initWithData:data];
  if ([(PBBProtoCompanionTermsResponse *)v7 hasTermsAccepted])
  {
    termsAccepted = [(PBBProtoCompanionTermsResponse *)v7 termsAccepted];
  }

  else
  {
    termsAccepted = 0;
  }

  if ([(PBBProtoCompanionTermsResponse *)v7 hasIsExistingAccountTerms])
  {
    isExistingAccountTerms = [(PBBProtoCompanionTermsResponse *)v7 isExistingAccountTerms];
  }

  else
  {
    isExistingAccountTerms = 0;
  }

  responseData = [(PBBProtoCompanionTermsResponse *)v7 responseData];
  userAgent = [(PBBProtoCompanionTermsResponse *)v7 userAgent];
  v12 = pbb_setupflow_log(userAgent);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109890;
    v14 = termsAccepted;
    v15 = 1024;
    *v16 = isExistingAccountTerms;
    *&v16[4] = 2112;
    *&v16[6] = responseData;
    v17 = 2112;
    v18 = userAgent;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "companion terms response: hasTermsAccepted: %d isExistingAccountTerms: %d responseData %@ userAgent %@", &v13, 0x22u);
  }
}

- (void)returnProxiedDeviceForDeviceWithData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = pbb_accountsignin_log(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = 1608;
    v12 = 2080;
    v13 = "[PBBridgeGizmoController returnProxiedDeviceForDeviceWithData:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  serializedData = [currentDevice serializedData];
  v9 = serializedData;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(PBBridgeGizmoController *)self _sendResponseToMessage:dataCopy withResponseMessageID:25 withArguments:v8];
}

- (void)setComputedTimeZone:(id)zone
{
  *&v11[5] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v4 = pbb_setupflow_log(zoneCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109378;
    v11[0] = 1622;
    LOWORD(v11[1]) = 2080;
    *(&v11[1] + 2) = "[PBBridgeGizmoController setComputedTimeZone:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", &v10, 0x12u);
  }

  v5 = [PBBProtoSendComputedTimeZone alloc];
  data = [zoneCopy data];

  v7 = [(PBBProtoSendComputedTimeZone *)v5 initWithData:data];
  computedTimeZone = [(PBBProtoSendComputedTimeZone *)v7 computedTimeZone];
  v9 = pbb_setupflow_log(computedTimeZone);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    *v11 = computedTimeZone;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "settings computed time zone to %@", &v10, 0xCu);
  }

  TMSetSourceTimeZone();
}

- (void)ingestTinkerCredentials:(id)credentials
{
  v35 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = pbb_accountsignin_log(credentialsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v32 = 1635;
    v33 = 2080;
    v34 = "[PBBridgeGizmoController ingestTinkerCredentials:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [PBBProtoSendTinkerAccountCredentials alloc];
  data = [credentialsCopy data];
  v8 = [(PBBProtoSendTinkerAccountCredentials *)v6 initWithData:data];

  username = [(PBBProtoSendTinkerAccountCredentials *)v8 username];
  password = [(PBBProtoSendTinkerAccountCredentials *)v8 password];
  acceptedTermsData = [(PBBProtoSendTinkerAccountCredentials *)v8 acceptedTermsData];
  pairingParentAppleID = [(PBBProtoSendTinkerAccountCredentials *)v8 pairingParentAppleID];
  pairingParentAltDSID = [(PBBProtoSendTinkerAccountCredentials *)v8 pairingParentAltDSID];
  if (acceptedTermsData)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = objc_opt_class();
    v30 = 0;
    v14 = [v12 unarchivedDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() fromData:acceptedTermsData error:&v30];
    v15 = v30;
    v16 = v15;
    if (v15)
    {
      v17 = pbb_accountsignin_log(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeGizmoController ingestTinkerCredentials:];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = objc_opt_new();
  [v18 setUsername:username];
  [v18 setPassword:password];
  [v18 setAcceptedTermsInfo:v14];
  [v18 setPairingParentAltDSID:pairingParentAltDSID];
  [v18 setPairingParentUsername:pairingParentAppleID];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke;
  v28[3] = &unk_2799F4A48;
  v28[4] = self;
  v19 = credentialsCopy;
  v29 = v19;
  v20 = MEMORY[0x25F8A6750](v28);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke_386;
  v26[3] = &unk_2799F4A70;
  v26[4] = self;
  v21 = v19;
  v27 = v21;
  v22 = MEMORY[0x25F8A6750](v26);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained ingestTinkerCredentialsWithContext:v18 completion:v22];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained ingestTinkerCredentials:password forUser:username responseCompletion:v20];
  }
}

void __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pbb_accountsignin_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a3;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "response completion called with status: %ld", buf, 0xCu);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v14[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14[1] = v12;
  v14[2] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [v10 _sendResponseToMessage:v9 withResponseMessageID:26 withArguments:v13];
}

void __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke_386(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pbb_accountsignin_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = a3;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "response completion called with status: %ld error: %@", buf, 0x16u);
  }

  v9 = [v7 localizedDescription];
  v10 = v9;
  v11 = &stru_286FA8098;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v22[0] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v22[1] = v14;
  v22[2] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  if (v7)
  {
    v21 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v17)
    {
      v19 = pbb_accountsignin_log(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_25DE64000, v19, OS_LOG_TYPE_DEFAULT, "error serializing incoming error: %@", buf, 0xCu);
      }
    }

    if (v16)
    {
      v20 = [v15 arrayByAddingObject:v16];

      v15 = v20;
    }
  }

  [*(a1 + 32) _sendResponseToMessage:*(a1 + 40) withResponseMessageID:26 withArguments:v15];
}

- (void)handleBuysOnWatchIngestion:(id)ingestion
{
  v24 = *MEMORY[0x277D85DE8];
  ingestionCopy = ingestion;
  v5 = pbb_accountsignin_log(ingestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[PBBridgeGizmoController handleBuysOnWatchIngestion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [PBBProtoSendBuysOnWatchCredentials alloc];
  data = [ingestionCopy data];
  v8 = [(PBBProtoSendBuysOnWatchCredentials *)v6 initWithData:data];

  username = [(PBBProtoSendBuysOnWatchCredentials *)v8 username];
  password = [(PBBProtoSendBuysOnWatchCredentials *)v8 password];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __54__PBBridgeGizmoController_handleBuysOnWatchIngestion___block_invoke;
  v19 = &unk_2799F4A48;
  selfCopy = self;
  v11 = ingestionCopy;
  v21 = v11;
  v12 = MEMORY[0x25F8A6750](&v16);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    [WeakRetained ingestBuysOnWatchCredentialsUsername:username andPassword:password responseCompletion:{v12, v16, v17, v18, v19, selfCopy}];
  }

  else
  {
    v15 = pbb_accountsignin_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[PBBridgeGizmoController handleBuysOnWatchIngestion:]";
      _os_log_impl(&dword_25DE64000, v15, OS_LOG_TYPE_DEFAULT, "%s -- Client doesn't implement handler.", buf, 0xCu);
    }
  }
}

void __54__PBBridgeGizmoController_handleBuysOnWatchIngestion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pbb_accountsignin_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 136315394;
    v19 = "[PBBridgeGizmoController handleBuysOnWatchIngestion:]_block_invoke";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%s -- Success: %@", buf, 0x16u);
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v17[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14 = v13;
  v15 = @"no error";
  if (v7)
  {
    v15 = v7;
  }

  v17[1] = v13;
  v17[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v11 _sendResponseToMessage:v10 withResponseMessageID:30 withArguments:v16];
}

- (void)provideAppViewListImage:(id)image
{
  v27 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v5 = [PBBProtoAppViewListImageRequest alloc];
  data = [imageCopy data];
  v7 = [(PBBProtoAppViewListImageRequest *)v5 initWithData:data];

  v9 = pbb_setupflow_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0x6B704000302;
    v23 = 2080;
    v24 = "[PBBridgeGizmoController provideAppViewListImage:]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, ">>>> %d %s request for app view list image received %@", &buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    objc_initWeak(&buf, self);
    [(PBBProtoAppViewListImageRequest *)v7 width];
    v13 = v12;
    [(PBBProtoAppViewListImageRequest *)v7 height];
    v15 = v14;
    [(PBBProtoAppViewListImageRequest *)v7 scale];
    v17 = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__PBBridgeGizmoController_provideAppViewListImage___block_invoke;
    v19[3] = &unk_2799F4A98;
    objc_copyWeak(&v21, &buf);
    v20 = imageCopy;
    [WeakRetained provideAppViewListImage:v19 height:v13 scale:v15 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&buf);
  }

  else
  {
    v18 = pbb_setupflow_log(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, ">>>> delegate doesn't respond to provideAppViewListImage:width:height:completion", &buf, 2u);
    }
  }
}

void __51__PBBridgeGizmoController_provideAppViewListImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pbb_setupflow_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, ">>>> got response to provideAppViewListImage:width:height:completion imageData %@ error %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v10 = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  }

  else
  {
    v9 = 0;
  }

  [WeakRetained _sendResponseToMessage:*(a1 + 32) withResponseMessageID:102 withArguments:v9];
}

- (void)setupDeviceManagement:(id)management
{
  managementCopy = management;
  v5 = [PBBProtoDeviceManagementSetupRequest alloc];
  data = [managementCopy data];
  v7 = [(PBBProtoDeviceManagementSetupRequest *)v5 initWithData:data];

  configurationData = [(PBBProtoDeviceManagementSetupRequest *)v7 configurationData];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke;
    v11[3] = &unk_2799F4AC0;
    v12 = v9;
    objc_copyWeak(&v14, &location);
    v13 = managementCopy;
    [WeakRetained setupDeviceManagementWithData:configurationData completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [v9 addObject:MEMORY[0x277CBEC28]];
    [(PBBridgeGizmoController *)self _sendResponseToMessage:managementCopy withResponseMessageID:31 withArguments:v9];
  }
}

void __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
    v7 = v13;
    v8 = v7;
    if (v7)
    {
      v9 = pbb_devicemanagement_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v10 addObject:v11];

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendResponseToMessage:*(a1 + 40) withResponseMessageID:31 withArguments:*(a1 + 32)];
}

- (void)checkAppInstallationAllowed:(id)allowed
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D262A0];
  allowedCopy = allowed;
  sharedConnection = [v4 sharedConnection];
  v7 = [sharedConnection effectiveBoolValueForSetting:*MEMORY[0x277D25D18]] == 2;

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(PBBridgeGizmoController *)self _sendResponseToMessage:allowedCopy withResponseMessageID:32 withArguments:v9];
}

- (void)updateNanoRegistryToNormalState:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[PBBridgeGizmoController updateNanoRegistryToNormalState:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 updateNanoRegisryToNormalState];
  }
}

- (PBBridgeConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleActivationData:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[PBBridgeGizmoController handleActivationData:]";
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, a1, a3, "Tried to do %s while already unbricked.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)activationTimeout:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 50) - 2) > 3u)
  {
    v2 = @"Idle";
  }

  else
  {
    v2 = off_2799F4AF8[(*(a1 + 50) - 2)];
  }

  v3 = *(a1 + 88);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_25DE64000, a2, OS_LOG_TYPE_ERROR, "Activation timeout in phase (%@) (Last message sent was %@)", &v4, 0x16u);
}

void __41__PBBridgeGizmoController_setDeviceName___block_invoke_cold_1(uint64_t *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_25DE64000, log, OS_LOG_TYPE_ERROR, "Failed to set define name (%@) with error: %d", &v4, 0x12u);
}

@end