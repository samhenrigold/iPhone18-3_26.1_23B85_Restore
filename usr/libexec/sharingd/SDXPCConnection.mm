@interface SDXPCConnection
- (SDXPCConnection)initWithServer:(id)server xpcConnection:(id)connection;
- (int)_entitled:(id)_entitled state:(BOOL *)state label:(id)label;
- (int)_entitledService:(id)service state:(BOOL *)state;
- (void)_getInteractionsFromDBPerPeopleSuggestion:(id)suggestion completion:(id)completion;
- (void)_getPeopleInfo:(id)info completion:(id)completion;
- (void)_getPeopleSuggestions:(id)suggestions completion:(id)completion;
- (void)_handlePairedWatchWristStateChanged;
- (void)_invalidateAssertions;
- (void)accountForAppleID:(id)d withCompletion:(id)completion;
- (void)activateAssertionWithIdentifier:(id)identifier;
- (void)activityStateWithCompletion:(id)completion;
- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)appleIDInfoWithCompletion:(id)completion;
- (void)autoFillHelperActivate:(id)activate completion:(id)completion;
- (void)autoFillHelperDidPickUsername:(id)username password:(id)password error:(id)error;
- (void)autoFillHelperTryPIN:(id)n;
- (void)autoFillHelperUserNotificationDidActivate:(id)activate;
- (void)autoFillHelperUserNotificationDidDismiss:(id)dismiss;
- (void)b389NFCPromptDidRequestPresentationWithConfiguration:(id)configuration responseHandler:(id)handler;
- (void)b389NFCPromptUpdateConfiguration:(id)configuration;
- (void)beginMonitoringPairedWatchWristState;
- (void)bluetoothUserInteraction;
- (void)broadwayPresentCardWithCode:(id)code options:(id)options completion:(id)completion;
- (void)clearXPCHelperImageCacheWithCompletion:(id)completion;
- (void)connectionInvalidated;
- (void)contactHandlesForShortHashData:(id)data completion:(id)completion;
- (void)contactIDForEmailHash:(id)hash phoneHash:(id)phoneHash completion:(id)completion;
- (void)coordinatedAlertsRequestCancel;
- (void)coordinatedAlertsRequestFinish;
- (void)coordinatedAlertsRequestStart:(id)start completion:(id)completion;
- (void)deviceDiscoveryActivate:(id)activate completion:(id)completion;
- (void)deviceDiscoveryFastScanCancel:(id)cancel;
- (void)deviceDiscoveryFastScanTrigger:(id)trigger;
- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery;
- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case completion:(id)completion;
- (void)deviceDiscoveryUpdate:(id)update;
- (void)diagnosticBLEModeWithCompletion:(id)completion;
- (void)diagnosticControl:(id)control completion:(id)completion;
- (void)diagnosticLogControl:(id)control completion:(id)completion;
- (void)diagnosticMock:(id)mock device:(id)device completion:(id)completion;
- (void)diagnosticMockStart:(id)start;
- (void)diagnosticMockStop:(id)stop;
- (void)diagnosticShow:(id)show completion:(id)completion;
- (void)diagnosticUnlockTestClientWithDevice:(id)device;
- (void)diagnosticUnlockTestServer;
- (void)dismissCurrentB389NFCPrompt;
- (void)displayNameForEmailHash:(id)hash phoneHash:(id)phoneHash completion:(id)completion;
- (void)displayStringForContactIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier completion:(id)completion;
- (void)findContact:(id)contact skipIfContactBlocked:(BOOL)blocked completion:(id)completion;
- (void)getDeviceAssets:(id)assets completion:(id)completion;
- (void)getPairedWatchWristStateWithCompletionHandler:(id)handler;
- (void)getPeopleSuggestions:(id)suggestions completion:(id)completion;
- (void)getProblemFlagsWithCompletionHandler:(id)handler;
- (void)hashManagerControl:(id)control completion:(id)completion;
- (void)myAccountWithCompletion:(id)completion;
- (void)nfcTagReaderUIActivateWithEndpoint:(id)endpoint params:(id)params completion:(id)completion;
- (void)openSetupURL:(id)l completion:(id)completion;
- (void)personInfoWithEmailOrPhone:(id)phone completion:(id)completion;
- (void)preheatXPCConnection;
- (void)preventExitForLocaleReason:(id)reason;
- (void)proximityClientActivate:(id)activate completion:(id)completion;
- (void)proximityClientDismissContentForDevice:(id)device completion:(id)completion;
- (void)proximityClientProvideContent:(id)content forDevice:(id)device force:(BOOL)force completion:(id)completion;
- (void)proximityClientRequestScannerTimerReset;
- (void)proximityClientStopSuppressingDevice:(id)device completion:(id)completion;
- (void)proximityClientSuppressDevice:(id)device completion:(id)completion;
- (void)proximityClientUpdate:(id)update;
- (void)proximityClientUpdateContent:(id)content forDevice:(id)device completion:(id)completion;
- (void)remoteInteractionSessionActivate:(id)activate completion:(id)completion;
- (void)remoteInteractionSessionSendPayload:(id)payload;
- (void)repairDevice:(id)device flags:(unsigned int)flags completion:(id)completion;
- (void)requestWithInfo:(id)info completion:(id)completion;
- (void)retriggerProximityPairing:(id)pairing;
- (void)retriggerProximitySetup:(id)setup;
- (void)serviceActivate:(id)activate completion:(id)completion;
- (void)servicePeerDisconnected:(id)disconnected error:(id)error;
- (void)serviceSendEvent:(id)event;
- (void)serviceSendFrameType:(unsigned __int8)type data:(id)data peer:(id)peer;
- (void)serviceSendRequest:(id)request;
- (void)serviceSendResponse:(id)response;
- (void)serviceUpdate:(id)update;
- (void)sessionActivate:(id)activate completion:(id)completion;
- (void)sessionSendEvent:(id)event;
- (void)sessionSendFrameType:(unsigned __int8)type data:(id)data;
- (void)sessionSendRequest:(id)request;
- (void)sessionSendResponse:(id)response;
- (void)setAudioRoutingScore:(int)score completion:(id)completion;
- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion;
- (void)shareAudioSessionActivate:(id)activate completion:(id)completion;
- (void)shareAudioUserConfirmed;
- (void)showDevicePickerWithInfo:(id)info completion:(id)completion;
- (void)startProxCardTransactionWithOptions:(unint64_t)options completion:(id)completion;
- (void)statusInfoWithCompletion:(id)completion;
- (void)subCredentialPresentCardWithParams:(id)params completion:(id)completion;
- (void)testContinuityKeyboardBegin:(BOOL)begin;
- (void)triggerHomeKitDeviceDetectedWithURL:(id)l completion:(id)completion;
- (void)triggerProximityAutoFillDetectedWithURL:(id)l completion:(id)completion;
- (void)userNotificationPresent:(id)present;
- (void)wifiPasswordSharingAvailabilityWithCompletion:(id)completion;
@end

@implementation SDXPCConnection

- (void)_invalidateAssertions
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_assertions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(NSCountedSet *)self->_server->_assertions countForObject:v8];
        [(NSCountedSet *)self->_server->_assertions removeObject:v8];
        if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971A10, "[SDXPCConnection _invalidateAssertions]", 30, "Invalidate assertion '%@': %ld -> %ld\n", v8, v9, v9 - 1);
        }

        if (v9 == 1)
        {
          if ([v8 isEqual:@"com.apple.sharing.PreventAppleCardActivation"])
          {
            byte_1009A0614 = 0;
            goto LABEL_19;
          }

          if ([v8 isEqual:@"com.apple.sharing.DuetSync"])
          {
            byte_1009A0615 = 0;
            goto LABEL_15;
          }

          if ([v8 isEqual:@"com.apple.sharing.PreventContinuityKeyboard"])
          {
            [(SDAutoFillAgent *)self->_server->_autoFillAgent setPreventNotifications:0];
            [(SDRemoteInteractionAgent *)self->_server->_riAgent setPreventNotifications:0];
          }

          else
          {
            if ([v8 isEqual:@"com.apple.sharing.PreventNearbyActionAdvertising"])
            {
              v11 = +[SDNearbyAgent sharedNearbyAgent];
              [v11 setPreventNearbyActionAdvertising:0];

LABEL_15:
              v10 = +[SDNearbyAgent sharedNearbyAgent];
              [v10 update];
LABEL_16:

              goto LABEL_19;
            }

            if ([v8 isEqual:@"com.apple.sharing.PreventProxCards"])
            {
              gSDProxCardsSuppressed = 0;
            }

            else if ([v8 isEqual:@"com.apple.sharing.PreventRepair"])
            {
              [(SDSetupAgent *)self->_server->_setupAgent setPreventRepair:0];
            }

            else
            {
              if ([v8 isEqual:@"com.apple.sharing.EnhancedDiscovery"])
              {
                v10 = +[SDNearbyAgent sharedNearbyAgent];
                [v10 setEnhancedDiscovery:0];
                goto LABEL_16;
              }

              if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
              {
                sub_100192E80(v8);
              }
            }
          }
        }

LABEL_19:
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v12 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v12;
    }

    while (v12);
  }

  [(NSMutableSet *)self->_assertions removeAllObjects];
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 20 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100034B54(self);
  }

  [(SDXPCConnection *)self _invalidateAssertions];
  if (self->_bluetoothUserInteraction)
  {
    [(SDProximityPairingAgent *)self->_server->_ppAgent bluetoothUserInteractionStop:self];
    self->_bluetoothUserInteraction = 0;
  }

  if (self->_caRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent coordinatedAlertRequestCancel:?];
    [(SFCoordinatedAlertRequest *)self->_caRequest invalidate];
    caRequest = self->_caRequest;
    self->_caRequest = 0;
  }

  if (self->_diagnosticBLEModeStarted)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticBLEModeStop:self];
    self->_diagnosticBLEModeStarted = 0;
  }

  if (self->_ddRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryRequestStop:?];
    [(SFDeviceDiscovery *)self->_ddRequest invalidate];
    ddRequest = self->_ddRequest;
    self->_ddRequest = 0;
  }

  notification = self->_notification;
  if (notification)
  {
    [(SFUserAlert *)notification invalidate];
    v6 = self->_notification;
    self->_notification = 0;
  }

  if (self->_preventExitForLocaleReason)
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    [v7 removePreventExitForLocaleReason:self->_preventExitForLocaleReason];

    preventExitForLocaleReason = self->_preventExitForLocaleReason;
    self->_preventExitForLocaleReason = 0;
  }

  if (self->_proxClient)
  {
    [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClientStop:?];
    [(SFProximityClient *)self->_proxClient invalidate];
    proxClient = self->_proxClient;
    self->_proxClient = 0;
  }

  if (self->_riSession)
  {
    [(SDRemoteInteractionAgent *)self->_server->_riAgent sessionStop:?];
    [(SFRemoteInteractionSession *)self->_riSession invalidate];
    riSession = self->_riSession;
    self->_riSession = 0;
  }

  service = self->_service;
  if (service)
  {
    identifier = [(SFService *)service identifier];
    v13 = [identifier isEqualToString:SFServiceIdentifierPasswordSharing];

    if (v13)
    {
      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:SFWiFiPasswordSharingAdvertisingEnded object:0];
    }

    [(SDNearbyAgent *)self->_server->_nearbyAgent serviceStop:self->_service];
    [(SFService *)self->_service invalidate];
    v15 = self->_service;
    self->_service = 0;
  }

  if (self->_session)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent sessionStop:?];
    [(SFSession *)self->_session invalidate];
    session = self->_session;
    self->_session = 0;
  }

  [(SFShareAudioSessionDaemon *)self->_shareAudioSession invalidate];
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = 0;

  if (self->_unlockTestClientStarted)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent unlockStopTestClient];
    self->_unlockTestClientStarted = 0;
  }
}

- (SDXPCConnection)initWithServer:(id)server xpcConnection:(id)connection
{
  serverCopy = server;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = SDXPCConnection;
  v9 = [(SDXPCConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_server, server);
    objc_storeStrong(&v10->_xpcCnx, connection);
  }

  return v10;
}

- (int)_entitled:(id)_entitled state:(BOOL *)state label:(id)label
{
  _entitledCopy = _entitled;
  labelCopy = label;
  if (*state || (-[NSXPCConnection cuValueForEntitlementNoCache:](self->_xpcCnx, "cuValueForEntitlementNoCache:", _entitledCopy), v10 = objc_claimAutoreleasedReturnValue(), *state = [v10 isEqual:&__kCFBooleanTrue], v10, *state))
  {
    v11 = 0;
  }

  else
  {
    if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100192A84(self, _entitledCopy, labelCopy);
    }

    v11 = -6768;
  }

  return v11;
}

- (void)autoFillHelperDidPickUsername:(id)username password:(id)password error:(id)error
{
  usernameCopy = username;
  passwordCopy = password;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100192AE0();
  }

  afsHelper = self->_afsHelper;
  if (!afsHelper || [(SDAutoFillAgent *)self->_server->_autoFillAgent helper:afsHelper didPickUsername:usernameCopy password:passwordCopy error:errorCopy])
  {
    sub_100192B28();
  }
}

- (void)autoFillHelperTryPIN:(id)n
{
  nCopy = n;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100192BA8(nCopy);
  }

  afsHelper = self->_afsHelper;
  if (!afsHelper || (v5 = [(SDAutoFillAgent *)self->_server->_autoFillAgent helper:afsHelper tryPIN:nCopy], v6 = nCopy, v5))
  {
    sub_100192BF0();
    v6 = nCopy;
  }
}

- (void)autoFillHelperUserNotificationDidActivate:(id)activate
{
  activateCopy = activate;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100192C70(activateCopy);
  }

  afsHelper = self->_afsHelper;
  if (!afsHelper || (v5 = [(SDAutoFillAgent *)self->_server->_autoFillAgent helper:afsHelper userNotificationDidActivate:activateCopy], v6 = activateCopy, v5))
  {
    sub_100192CB8();
    v6 = activateCopy;
  }
}

- (void)autoFillHelperUserNotificationDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100192D38(dismissCopy);
  }

  afsHelper = self->_afsHelper;
  if (!afsHelper || (v5 = [(SDAutoFillAgent *)self->_server->_autoFillAgent helper:afsHelper userNotificationDidDismiss:dismissCopy], v6 = dismissCopy, v5))
  {
    sub_100192D80();
    v6 = dismissCopy;
  }
}

- (void)activateAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v4 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"ActivateAssertion"];
  v5 = identifierCopy;
  if (!v4)
  {
    v6 = identifierCopy;
    if (!v6)
    {
LABEL_25:

      v5 = identifierCopy;
      goto LABEL_26;
    }

    if ([(NSMutableSet *)self->_assertions containsObject:v6])
    {
      if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        sub_100192E40(v6);
      }

      goto LABEL_25;
    }

    assertions = self->_assertions;
    if (!assertions)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = self->_assertions;
      self->_assertions = v8;

      assertions = self->_assertions;
    }

    [(NSMutableSet *)assertions addObject:v6];
    v10 = [(NSCountedSet *)self->_server->_assertions countForObject:v6];
    v11 = self->_server->_assertions;
    if (!v11)
    {
      v12 = objc_alloc_init(NSCountedSet);
      server = self->_server;
      v14 = server->_assertions;
      server->_assertions = v12;

      v11 = self->_server->_assertions;
    }

    [(NSCountedSet *)v11 addObject:v6];
    if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection activateAssertionWithIdentifier:]", 30, "Activate assertion '%@': %ld -> %ld\n", v6, v10, v10 + 1);
    }

    if (v10)
    {
      goto LABEL_25;
    }

    if ([v6 isEqual:@"com.apple.sharing.PreventAppleCardActivation"])
    {
      byte_1009A0614 = 1;
      goto LABEL_25;
    }

    if ([v6 isEqual:@"com.apple.sharing.DuetSync"])
    {
      byte_1009A0615 = 1;
    }

    else
    {
      if ([v6 isEqual:@"com.apple.sharing.PreventContinuityKeyboard"])
      {
        [(SDAutoFillAgent *)self->_server->_autoFillAgent setPreventNotifications:1];
        [(SDRemoteInteractionAgent *)self->_server->_riAgent setPreventNotifications:1];
        goto LABEL_25;
      }

      if (![v6 isEqual:@"com.apple.sharing.PreventNearbyActionAdvertising"])
      {
        if ([v6 isEqual:@"com.apple.sharing.PreventProxCards"])
        {
          gSDProxCardsSuppressed = 1;
          goto LABEL_25;
        }

        if ([v6 isEqual:@"com.apple.sharing.PreventRepair"])
        {
          [(SDSetupAgent *)self->_server->_setupAgent setPreventRepair:1];
          goto LABEL_25;
        }

        if (![v6 isEqual:@"com.apple.sharing.EnhancedDiscovery"])
        {
          if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
          {
            sub_100192E00(v6);
          }

          goto LABEL_25;
        }

        v15 = +[SDNearbyAgent sharedNearbyAgent];
        [v15 setEnhancedDiscovery:1];
        goto LABEL_22;
      }

      v16 = +[SDNearbyAgent sharedNearbyAgent];
      [v16 setPreventNearbyActionAdvertising:1];
    }

    v15 = +[SDNearbyAgent sharedNearbyAgent];
    [v15 update];
LABEL_22:

    goto LABEL_25;
  }

LABEL_26:
}

- (void)activityStateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"ActivityState"])
  {
    sub_100192EC0(completionCopy);
  }

  else
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent activityStateWithCompletion:completionCopy];
  }
}

- (void)appleIDInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SDStatusMonitor sharedMonitor];
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v6 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"AppleIDInfo"];
  if (v6)
  {
    v8 = 0;
    v10 = 0;
  }

  else
  {
    myAppleID = [v5 myAppleID];
    if (!myAppleID)
    {
      if (dword_100971A10 > 60)
      {
        v8 = 0;
        v10 = 0;
      }

      else if (dword_100971A10 == -1)
      {
        v8 = 0;
        if (!_LogCategory_Initialize())
        {
          v6 = -6727;
          v10 = 0;
          goto LABEL_22;
        }

        v10 = 0;
        LogPrintF(&dword_100971A10, "[SDXPCConnection appleIDInfoWithCompletion:]", 60, "### No appleID?\n");
      }

      else
      {
        v8 = 0;
        v10 = 0;
        LogPrintF(&dword_100971A10, "[SDXPCConnection appleIDInfoWithCompletion:]", 60, "### No appleID?\n");
      }

LABEL_21:
      v6 = -6727;
      goto LABEL_22;
    }

    v8 = myAppleID;
    myAppleIDValidationRecord = [v5 myAppleIDValidationRecord];
    v10 = myAppleIDValidationRecord;
    if (myAppleIDValidationRecord)
    {
      v11 = [myAppleIDValidationRecord objectForKeyedSubscript:@"AppleIDAccountValidationRecordData"];
      if (v11)
      {
        v12 = v11;
        if (completionCopy)
        {
          completionCopy[2](completionCopy, v8, v11, 0);
        }

        goto LABEL_7;
      }

      if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971A10, "[SDXPCConnection appleIDInfoWithCompletion:]", 60, "### No record data?\n");
      }

      goto LABEL_21;
    }

    v6 = -6762;
  }

LABEL_22:
  if (completionCopy)
  {
    v13 = v6;
    v19 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    v20 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v13 userInfo:v17];
    (completionCopy)[2](completionCopy, 0, 0, v18);
  }

  v12 = 0;
LABEL_7:
}

- (void)clearXPCHelperImageCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache clearCacheWithSync:1];
  completionCopy[2](completionCopy, 0);
}

- (void)contactHandlesForShortHashData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v8 = +[SDStatusMonitor sharedMonitor];
  v9 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"ContactHandlesForHashes"];
  if (v9)
  {
    if (completionCopy)
    {
      v11 = v9;
      v17 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:DebugGetErrorString()];
      v13 = v12;
      v14 = @"?";
      if (v12)
      {
        v14 = v12;
      }

      v18 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v11 userInfo:v15];
      completionCopy[2](completionCopy, 0, v16);
    }

    v10 = 0;
  }

  else
  {
    v10 = [v8 contactHandlesForShortHashes:dataCopy];
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v10, 0);
    }
  }
}

- (void)contactIDForEmailHash:(id)hash phoneHash:(id)phoneHash completion:(id)completion
{
  hashCopy = hash;
  phoneHashCopy = phoneHash;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v11 = +[SDStatusMonitor sharedMonitor];
  v12 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"ContactIDForHashes"];
  if (v12)
  {
    v13 = 0;
    v15 = 0;
    identifier = 0;
    if (!completionCopy)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (!v12)
    {
      (*(completionCopy + 2))(completionCopy, identifier, 0);
      goto LABEL_13;
    }

    v23 = completionCopy + 16;
    v24 = phoneHashCopy;
    v25 = hashCopy;
    goto LABEL_9;
  }

  v13 = [v11 contactsForEmailHash:hashCopy phoneHash:phoneHashCopy];
  v14 = [v11 contactWithPreferredIdentifierForContacts:v13];
  if (v14)
  {
    v15 = v14;
    identifier = [v14 identifier];
    if (identifier)
    {
      v12 = 0;
    }

    else
    {
      v12 = -6742;
    }

    if (!completionCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!completionCopy)
  {
    identifier = 0;
    v15 = 0;
    goto LABEL_13;
  }

  v24 = phoneHashCopy;
  v25 = hashCopy;
  v15 = 0;
  identifier = 0;
  v23 = completionCopy + 16;
  v12 = -6727;
LABEL_9:
  v17 = v12;
  v26 = NSLocalizedDescriptionKey;
  v18 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v19 = v18;
  v20 = @"?";
  if (v18)
  {
    v20 = v18;
  }

  v27 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1, v23];
  v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:v21];
  (*(completionCopy + 2))(completionCopy, identifier, v22);

  phoneHashCopy = v24;
  hashCopy = v25;
LABEL_13:
}

- (void)displayNameForEmailHash:(id)hash phoneHash:(id)phoneHash completion:(id)completion
{
  hashCopy = hash;
  phoneHashCopy = phoneHash;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v11 = +[SDStatusMonitor sharedMonitor];
  v12 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"DisplayNameForHashes"];
  if (v12)
  {
    v13 = 0;
    v16 = 0;
    v15 = 0;
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v13 = [v11 contactsForEmailHash:hashCopy phoneHash:phoneHashCopy];
  v14 = [v11 contactWithPreferredIdentifierForContacts:v13];
  if (!v14)
  {
    if (!completionCopy)
    {
LABEL_13:
      v16 = 0;
      v15 = 0;
      goto LABEL_5;
    }

    v12 = -6727;
LABEL_10:
    v17 = v12;
    v23 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v19 = v18;
    v20 = @"?";
    if (v18)
    {
      v20 = v18;
    }

    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:v21];
    completionCopy[2](completionCopy, 0, v22);

    goto LABEL_13;
  }

  v15 = v14;
  v16 = [CNContactFormatter stringFromContact:v14 style:0];
  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v16, 0);
  }

LABEL_5:
}

- (void)findContact:(id)contact skipIfContactBlocked:(BOOL)blocked completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v10 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"FindContact"];
  if (v10)
  {
    v11 = NSErrorWithOSStatusF(v10, "Missing entitlement");
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    contactsQueue = self->_server->_contactsQueue;
    if (!contactsQueue)
    {
      v13 = dispatch_queue_create("SharingFindContact", 0);
      server = self->_server;
      v15 = server->_contactsQueue;
      server->_contactsQueue = v13;

      contactsQueue = self->_server->_contactsQueue;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100187834;
    block[3] = &unk_1008D21C8;
    v17 = contactCopy;
    blockedCopy = blocked;
    v18 = completionCopy;
    dispatch_async(contactsQueue, block);
  }
}

- (void)getDeviceAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100188434;
  v33 = sub_100188444;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10018844C;
  v26[3] = &unk_1008D21F0;
  v28 = &v29;
  completionCopy = completion;
  v27 = completionCopy;
  v8 = objc_retainBlock(v26);
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Session" state:&self->_entitledClient label:@"GetDeviceAssets"])
  {
    v12 = NSErrorF(NSOSStatusErrorDomain, 4294896128, "Missing entitlement: '%@'", @"com.apple.sharing.Session");
    goto LABEL_7;
  }

  v9 = arc4random();
  bluetoothProductID = [assetsCopy bluetoothProductID];
  if (!bluetoothProductID)
  {
    v12 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "No productID");
LABEL_7:
    v13 = v30[5];
    v30[5] = v12;

    goto LABEL_12;
  }

  colorCode = [assetsCopy colorCode];
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection getDeviceAssets:completion:]", 30, "GetDeviceAssets start: XID 0x%X, ProductID 0x%X, ColorCode %u\n", v9, bluetoothProductID, colorCode);
  }

  if (+[_TtC16DaemoniOSLibrary19SDProductKitWrapper isSupported])
  {
    [assetsCopy timeoutSeconds];
    v15 = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100188518;
    v23[3] = &unk_1008D2240;
    v23[4] = self;
    v25 = v9;
    v24 = completionCopy;
    [_TtC16DaemoniOSLibrary19SDProductKitWrapper fetchAssetBundleWithProductID:bluetoothProductID color:colorCode model:0 timeout:v23 completionHandler:v15];
  }

  else
  {
    v16 = [[SFDeviceAssetQuery alloc] initWithBluetoothProductIdentifier:bluetoothProductID color:colorCode];
    v17 = objc_alloc_init(SFDeviceAssetManager);
    [v17 setDispatchQueue:self->_server->_dispatchQueue];
    v18 = [SFDeviceAssetRequestConfiguration alloc];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100188784;
    v20[3] = &unk_1008D2268;
    v22 = v9;
    v21 = completionCopy;
    v19 = [v18 initWithQueryResultHandler:v20];
    [assetsCopy timeoutSeconds];
    [v19 setTimeout:?];
    [v17 activate];
    [v17 getAssetBundleForDeviceQuery:v16 withRequestConfiguration:v19];
  }

LABEL_12:
  (v8[2])(v8);

  _Block_object_dispose(&v29, 8);
}

- (void)getPeopleSuggestions:(id)suggestions completion:(id)completion
{
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("SharingGetPeopleSuggestions", v8);

  contactIDs = [suggestionsCopy contactIDs];

  if (contactIDs)
  {
    v11 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v12 = sub_100188AC4;
  }

  else
  {
    if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100192FC8(suggestionsCopy);
    }

    v11 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v12 = sub_100188AD4;
  }

  v11[2] = v12;
  v11[3] = &unk_1008CE730;
  v11[4] = self;
  v11[5] = suggestionsCopy;
  v11[6] = completionCopy;
  v13 = completionCopy;
  v14 = suggestionsCopy;
  dispatch_async(v9, v11);
}

- (void)_getPeopleInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  contactIDs = [info contactIDs];
  v6 = [contactIDs count];
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019303C(v6);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_12:
    v41 = 0;
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:
  v56[0] = CNContactEmailAddressesKey;
  v56[1] = CNContactInstantMessageAddressesKey;
  v56[2] = CNContactPhoneNumbersKey;
  v7 = [NSArray arrayWithObjects:v56 count:3];
  v8 = objc_alloc_init(CNContactStore);
  v9 = [CNContact predicateForContactsWithIdentifiers:contactIDs];
  v53 = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v9 keysToFetch:v7 error:&v53];
  v11 = v53;
  v12 = v11;
  v41 = v10;
  if ((!v10 || v11) && dword_100971A10 <= 90 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019307C(v12);
  }

LABEL_13:
  v39 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = contactIDs;
  v42 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v42)
  {
    v13 = 0;
    v43 = 0;
    v14 = 0;
    v40 = *v50;
    v36 = v6;
    v37 = 0;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        v44 = v13;
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v17 = v41;
        v18 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v46;
LABEL_20:
          v21 = 0;
          while (1)
          {
            if (*v46 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v45 + 1) + 8 * v21);
            identifier = [v22 identifier];
            v24 = [identifier isEqual:v16];

            if (v24)
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
              if (v19)
              {
                goto LABEL_20;
              }

              goto LABEL_26;
            }
          }

          v25 = v22;

          if (!v25)
          {
            goto LABEL_31;
          }

          v26 = +[SDStatusMonitor sharedMonitor];
          v27 = [v26 contactIsBlocked:v25];

          if (v27)
          {
            v28 = objc_alloc_init(SFPeopleSuggesterResult);
            [v28 setContactID:v16];
            [v28 setFlags:1];
            [v39 addObject:v28];
            ++v37;
          }

          v29 = v44;
          emailAddresses = [v25 emailAddresses];
          v31 = &v14[[emailAddresses count]];

          phoneNumbers = [v25 phoneNumbers];
          v14 = [phoneNumbers count] + v31;
        }

        else
        {
LABEL_26:

LABEL_31:
          v25 = objc_alloc_init(SFPeopleSuggesterResult);
          [v25 setContactID:v16];
          [v25 setFlags:2];
          [v39 addObject:v25];
          v29 = v44;
          ++v43;
        }

        v13 = v29 + 1;
        if (__ROR8__(0x8F5C28F5C28F5C29 * v14, 2) <= 0x28F5C28F5C28F5CuLL && dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971A10, "[SDXPCConnection _getPeopleInfo:completion:]", 30, "GetPeopleInfo progress: %d of %d, handles %d, blocked %d, notFound %d\n", v13, v36, v14, v37, v43);
        }
      }

      v42 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v42);
    v33 = v37;
    v34 = v43;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "-[SDXPCConnection _getPeopleInfo:completion:]", 30, "GetPeopleInfo: requested %d, blocked %d, not found %d\n", [obj count], v33, v34);
  }

  completionCopy[2](completionCopy, v39, 0);
}

- (void)_getPeopleSuggestions:(id)suggestions completion:(id)completion
{
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v6 = objc_alloc_init(_PSSuggesterConfiguration);
  if ([suggestionsCopy excludeBackfills])
  {
    [v6 setExcludeBackfillSuggestions:1];
  }

  v32 = suggestionsCopy;
  maxPeople = [suggestionsCopy maxPeople];
  if (maxPeople)
  {
    v8 = 2 * maxPeople;
  }

  else
  {
    v8 = 100;
  }

  [v6 setMaximumNumberOfSuggestions:v8];
  v30 = v6;
  v9 = [[_PSSuggester alloc] initWithConfiguration:v6];
  v28 = objc_alloc_init(_PSPredictionContext);
  v29 = v9;
  v10 = [v9 rankedGlobalSuggestionsFromContext:? contactsOnly:?];
  v11 = objc_alloc_init(NSMutableSet);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v34 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        recipients = [v15 recipients];
        v17 = [recipients countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
          while (2)
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(recipients);
              }

              identifier = [*(*(&v37 + 1) + 8 * j) identifier];
              if (([v11 containsObject:identifier] & 1) == 0)
              {
                [v11 addObject:identifier];
                if (maxPeople)
                {
                  if ([v11 count] >= maxPeople)
                  {

                    goto LABEL_23;
                  }
                }
              }
            }

            v18 = [recipients countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v13);
  }

  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001930BC(obj, v11, maxPeople);
  }

  if ([v11 count])
  {
    v23 = completionCopy;
    v22 = v32;
    v25 = v28;
    v24 = v29;
    if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100193128();
    }

    allObjects = [v11 allObjects];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100189458;
    v35[3] = &unk_1008D2290;
    v36 = completionCopy;
    [(SDXPCConnection *)self _getInteractionsFromDBPerPeopleSuggestion:allObjects completion:v35];
  }

  else
  {
    v23 = completionCopy;
    v22 = v32;
    v25 = v28;
    v24 = v29;
    if (dword_100971A10 <= 90 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_10019315C();
    }

    (*(completionCopy + 2))(completionCopy, &__NSArray0__struct, 0);
  }
}

- (void)_getInteractionsFromDBPerPeopleSuggestion:(id)suggestion completion:(id)completion
{
  suggestionCopy = suggestion;
  completionCopy = completion;
  v6 = +[_CDInteractionStore defaultDatabaseDirectory];
  v7 = [_CDInteractionStore storeWithDirectory:v6 readOnly:1];

  v65 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [NSPredicate predicateWithFormat:@"direction == %i", 1];
  v10 = [NSPredicate predicateWithFormat:@"sender.personId != nil"];
  suggestionCopy = [NSPredicate predicateWithFormat:@"ANY recipients.personId IN %@", suggestionCopy];
  v12 = +[NSDate date];
  v13 = [v12 dateByAddingTimeInterval:28800.0];
  v14 = [NSPredicate predicateWithFormat:@"endDate < %@", v13];

  v59 = v9;
  [v8 addObject:v9];
  v58 = v10;
  [v8 addObject:v10];
  v57 = suggestionCopy;
  [v8 addObject:suggestionCopy];
  v56 = v14;
  [v8 addObject:v14];
  v60 = v8;
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  v54 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
  v93 = v54;
  v16 = [NSArray arrayWithObjects:&v93 count:1];
  v88 = 0;
  v61 = v7;
  v55 = v15;
  v17 = [v7 queryInteractionsUsingPredicate:v15 sortDescriptors:v16 limit:1000 error:&v88];
  v53 = v88;

  v18 = objc_alloc_init(NSMutableDictionary);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v17;
  v71 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v71)
  {
    v69 = *v85;
    do
    {
      v19 = 0;
      do
      {
        if (*v85 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v19;
        v20 = *(*(&v84 + 1) + 8 * v19);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        recipients = [v20 recipients];
        v22 = [recipients countByEnumeratingWithState:&v80 objects:v91 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v81;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v81 != v24)
              {
                objc_enumerationMutation(recipients);
              }

              v26 = *(*(&v80 + 1) + 8 * i);
              personId = [v26 personId];
              v28 = [suggestionCopy containsObject:personId];

              if (v28)
              {
                sender = [v20 sender];
                v30 = sender;
                if (sender)
                {
                  identifier = [sender identifier];
                  if (identifier)
                  {
                    [v18 setObject:identifier forKey:v26];
                  }
                }
              }
            }

            v23 = [recipients countByEnumeratingWithState:&v80 objects:v91 count:16];
          }

          while (v23);
        }

        v19 = v73 + 1;
      }

      while ((v73 + 1) != v71);
      v71 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v71);
  }

  v32 = objc_alloc_init(CNContactStore);
  v90[0] = CNContactEmailAddressesKey;
  v90[1] = CNContactInstantMessageAddressesKey;
  v90[2] = CNContactPhoneNumbersKey;
  v70 = [NSArray arrayWithObjects:v90 count:3];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v33 = v18;
  v34 = [v33 countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v34)
  {
    v35 = v34;
    v66 = v33;
    v67 = 0;
    v63 = v32;
    v64 = 0;
    v74 = *v77;
    v36 = v65;
    while (1)
    {
      v37 = 0;
      v72 = v35;
      do
      {
        if (*v77 != v74)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v76 + 1) + 8 * v37);
        identifier2 = [v38 identifier];
        type = [v38 type];
        if (type == 3)
        {
          [identifier2 rangeOfString:@"@"];
          if (!v42)
          {
            v41 = identifier2;
            goto LABEL_32;
          }

LABEL_31:
          v41 = SFNormalizeEmailAddress();
          goto LABEL_32;
        }

        if (type == 2)
        {
          goto LABEL_31;
        }

        if (type != 1)
        {
          v43 = 0;
          goto LABEL_34;
        }

        v41 = SFNormalizePhoneNumber();
LABEL_32:
        v43 = v41;
LABEL_34:
        personId2 = [v38 personId];
        v45 = [v33 objectForKeyedSubscript:v38];
        v46 = v45;
        if (v43)
        {
          if (personId2 && v45 != 0)
          {
            if (dword_100971A10 <= 40 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_100971A10, "[SDXPCConnection _getInteractionsFromDBPerPeopleSuggestion:completion:]", 40, "hybridSuggester: ContactID %{private}@, Handle %{private}@ <-> SKA %{private}@", personId2, v43, v46);
            }

            v48 = objc_alloc_init(SFPeopleSuggesterResult);
            [v48 setContactID:personId2];
            v75 = 0;
            v49 = [v32 unifiedContactWithIdentifier:personId2 keysToFetch:v70 error:&v75];
            if (!v49 || v75)
            {
              [v48 setFlags:2];
              ++v67;
            }

            else
            {
              v50 = +[SDStatusMonitor sharedMonitor];
              v51 = [v50 contactIsBlocked:v49];

              if (v51)
              {
                [v48 setFlags:1];
                ++v64;
              }

              else
              {
                v52 = [NSArray arrayWithObject:v43];
                [v48 setHandles:v52];

                [v48 setSendersKnownAlias:v46];
              }

              v36 = v65;
              v32 = v63;
            }

            [v36 addObject:v48];

            v33 = v66;
            v35 = v72;
          }
        }

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v76 objects:v89 count:16];
      if (!v35)
      {
        goto LABEL_56;
      }
    }
  }

  v67 = 0;
  v64 = 0;
  v36 = v65;
LABEL_56:

  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "-[SDXPCConnection _getInteractionsFromDBPerPeopleSuggestion:completion:]", 30, "hybridSuggester: calling completion on %zu total results, %zu removed, %zu blocked", [v36 count], v67, v64);
  }

  completionCopy[2](completionCopy, v36, 0);
}

- (void)getPairedWatchWristStateWithCompletionHandler:(id)handler
{
  dispatchQueue = self->_server->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  v5 = +[SDStatusMonitor sharedMonitor];
  handlerCopy[2](handlerCopy, [v5 pairedWatchWristState]);
}

- (void)beginMonitoringPairedWatchWristState
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 40 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193214();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handlePairedWatchWristStateChanged" name:@"com.apple.sharingd.PairedWatchWristStateChanged" object:0];
}

- (void)_handlePairedWatchWristStateChanged
{
  v4 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxyWithErrorHandler:&stru_1008D22B0];
  v2 = +[SDStatusMonitor sharedMonitor];
  pairedWatchWristState = [v2 pairedWatchWristState];

  [v4 pairedWatchWristStateChanged:pairedWatchWristState];
}

- (void)getProblemFlagsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  problemFlags = [(SDSetupAgent *)self->_server->_setupAgent problemFlags];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, problemFlags, 0);
    v5 = handlerCopy;
  }
}

- (void)openSetupURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"OpenSetupURL"])
  {
    sub_100193274(completionCopy);
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent openSetupURL:lCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)preheatXPCConnection
{
  if (dword_100971A10 <= 30)
  {
    if (dword_100971A10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100193334(self, a2, v2);
    }
  }
}

- (void)repairDevice:(id)device flags:(unsigned int)flags completion:(id)completion
{
  v6 = *&flags;
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v9 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"RepairDevice"];
  if (v9)
  {
    v11 = NSErrorWithOSStatusF(v9, "Missing entitlement '%@' for RepairDevice", @"com.apple.sharing.Client");
    v10 = v11;
    if (completionCopy && v11)
    {
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent repairDevice:deviceCopy flags:v6 completion:completionCopy];
    v10 = 0;
  }
}

- (void)requestWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"AppleIDAuth"])
  {
    sub_100193350(completionCopy);
  }

  else
  {
    [(SDAppleIDAgent *)self->_server->_appleIDAgent requestWithInfo:infoCopy completion:completionCopy];
  }
}

- (void)retriggerProximityPairing:(id)pairing
{
  pairingCopy = pairing;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"RetriggerProximityPairing"])
  {
    sub_100193274(pairingCopy);
  }

  else
  {
    [(SDProximityPairingAgent *)self->_server->_ppAgent retriggerProximityPairing:pairingCopy];
  }
}

- (void)retriggerProximitySetup:(id)setup
{
  setupCopy = setup;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"RetriggerProximitySetup"])
  {
    sub_100193274(setupCopy);
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent retriggerProximitySetup:setupCopy];
  }
}

- (void)setAudioRoutingScore:(int)score completion:(id)completion
{
  v4 = *&score;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v6 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"SetAudioRoutingScore"];
  if (v6)
  {
    NSErrorWithOSStatusF(v6, "Missing entitlement '%@' for SetAudioRoutingScore", @"com.apple.sharing.Client");
  }

  else
  {
    if (v4 < 0x10)
    {
      v7 = +[SDNearbyAgent sharedNearbyAgent];
      [v7 setAudioRoutingScore:v4];

      completionCopy[2](completionCopy, 0);
      goto LABEL_7;
    }

    NSErrorWithOSStatusF(4294960591, "Out-of-range score: %d, min %d, max %d");
  }
  v8 = ;
  (completionCopy)[2](completionCopy, v8);

LABEL_7:
}

- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion
{
  deviceCopy = device;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v10 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"SetupDevice"];
  if (v10)
  {
    v12 = NSErrorWithOSStatusF(v10, "Missing entitlement '%@' for SetupDevice", @"com.apple.sharing.Client");
    v11 = v12;
    if (completionCopy && v12)
    {
      completionCopy[2](completionCopy, v12);
    }
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent setupDevice:deviceCopy homeIdentifier:identifierCopy completion:completionCopy];
    v11 = 0;
  }
}

- (void)showDevicePickerWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v7 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"ShowDevicePicker"];
  if (v7)
  {
    v9 = NSErrorWithOSStatusF(v7, "Missing entitlement '%@' for ShowDevicePicker", @"com.apple.sharing.Client");
    v8 = v9;
    if (completionCopy && v9)
    {
      completionCopy[2](completionCopy, v9);
    }
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent showDevicePickerWithInfo:infoCopy completion:completionCopy];
    v8 = 0;
  }
}

- (void)statusInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v5 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"AppleIDAuth"];
  if (v5)
  {
    if (completionCopy)
    {
      v8 = v5;
      sub_100186CC8(v5);
      v9 = v8;
      v15 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithUTF8String:DebugGetErrorString()];
      v11 = v10;
      v12 = @"?";
      if (v10)
      {
        v12 = v10;
      }

      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v14 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v9 userInfo:v13];
      completionCopy[2](completionCopy, 0, v14);
    }

    v7 = 0;
  }

  else
  {
    statusInfo = [(SDAppleIDAgent *)self->_server->_appleIDAgent statusInfo];
    v7 = statusInfo;
    if (completionCopy)
    {
      sub_100186CC8(statusInfo);
      (completionCopy)[2](completionCopy, v7, 0);
    }
  }
}

- (void)testContinuityKeyboardBegin:(BOOL)begin
{
  beginCopy = begin;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  riAgent = self->_server->_riAgent;
  if (beginCopy)
  {

    [(SDRemoteInteractionAgent *)riAgent handleInputDidBeginWithFlags:0 sessionInfo:0];
  }

  else
  {

    [(SDRemoteInteractionAgent *)riAgent handleInputDidEndWithFlags:0 sessionInfo:0];
  }
}

- (void)triggerHomeKitDeviceDetectedWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"TriggerHomeKitDeviceDetected"])
  {
    sub_100193274(completionCopy);
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent triggerHomeKitDeviceDetectedWithURL:lCopy completion:completionCopy];
  }
}

- (void)triggerProximityAutoFillDetectedWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30)
  {
    if (dword_100971A10 != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      sub_100193428(v7, v8, v9);
    }
  }

  [(SDAutoFillAgent *)self->_server->_autoFillAgent triggerProximityAutoFillDetectedWithURL:lCopy completion:completionCopy];
}

- (void)wifiPasswordSharingAvailabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Services" state:&self->_entitledClient label:@"WiFiPasswordSharingAvailability"])
  {
    sub_100193444(completionCopy);
    goto LABEL_7;
  }

  v5 = +[SDStatusMonitor sharedMonitor];
  wifiPasswordSharingAvailability = [v5 wifiPasswordSharingAvailability];

  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193508(wifiPasswordSharingAvailability);
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
LABEL_6:
    completionCopy[2](completionCopy, wifiPasswordSharingAvailability, 0);
  }

LABEL_7:
}

- (void)startProxCardTransactionWithOptions:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (gSDProxCardsSuppressed == 1)
  {
    if (dword_100971A10 <= 90)
    {
      if (dword_100971A10 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_100193588(v6, v7, v8);
      }
    }

LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

  uiShowing = [(SDSetupAgent *)self->_server->_setupAgent uiShowing];
  if (uiShowing)
  {
    if (dword_100971A10 <= 90)
    {
      if (dword_100971A10 != -1 || (uiShowing = _LogCategory_Initialize(), uiShowing))
      {
        sub_10019356C(uiShowing, v10, v11);
      }
    }

    goto LABEL_31;
  }

  if ((optionsCopy & 4) != 0)
  {
    v12 = 509955;
  }

  else
  {
    v12 = 509963;
  }

  if ((optionsCopy & 0x10) != 0)
  {
    v12 &= 0x7C809u;
  }

  if ((optionsCopy & 8) != 0)
  {
    v12 &= 0x7880Bu;
  }

  v13 = v12 & 0x7C80A;
  if ((optionsCopy & 1) == 0)
  {
    v13 = v12;
  }

  if ((optionsCopy & 2) != 0)
  {
    v13 &= ~0x20000u;
  }

  if ((optionsCopy & 0x20) != 0)
  {
    v13 &= 0x6C80Bu;
  }

  if ((optionsCopy & 0x40) != 0)
  {
    v14 = v13 & 0xFFFFF7FF;
  }

  else
  {
    v14 = v13;
  }

  v15 = +[SDStatusMonitor sharedMonitor];
  v16 = [v15 systemUIFlags] & v14;

  if (v16)
  {
    if (dword_100971A10 <= 90)
    {
      if (dword_100971A10 != -1 || (v17 = _LogCategory_Initialize(), v17))
      {
        sub_100193550(v17, v18, v19);
      }
    }

    goto LABEL_31;
  }

  [(SDXPCConnection *)self activateAssertionWithIdentifier:@"com.apple.sharing.PreventProxCards"];
  v20 = 1;
LABEL_32:
  v21 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v20);
    v21 = completionCopy;
  }
}

- (void)coordinatedAlertsRequestFinish
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30)
  {
    if (dword_100971A10 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001935A4(v3, v4, v5);
    }
  }

  if (self->_caRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent coordinatedAlertRequestFinish:?];
    [(SFCoordinatedAlertRequest *)self->_caRequest invalidate];
    caRequest = self->_caRequest;
    self->_caRequest = 0;
  }
}

- (void)coordinatedAlertsRequestCancel
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30)
  {
    if (dword_100971A10 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001935C0(v3, v4, v5);
    }
  }

  if (self->_caRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent coordinatedAlertRequestCancel:?];
    caRequest = self->_caRequest;
    self->_caRequest = 0;
  }
}

- (void)deviceDiscoveryActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001935DC(self, activateCopy);
  }

  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.DeviceDiscovery" state:&self->_entitledDeviceDiscovery label:@"DeviceDiscoveryActivate"])
  {
    sub_100193274(completionCopy);
  }

  else
  {
    if (!self->_ddRequest)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10018B168;
      v12[3] = &unk_1008CE7A0;
      v12[4] = self;
      [activateCopy setDeviceFoundHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10018B1E8;
      v11[3] = &unk_1008CE7A0;
      v11[4] = self;
      [activateCopy setDeviceLostHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10018B268;
      v10[3] = &unk_1008CE7C8;
      v10[4] = self;
      [activateCopy setDeviceChangedHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10018B2F0;
      v9[3] = &unk_1008CEA50;
      v9[4] = self;
      [activateCopy setScanStateChangedHandler:v9];
      objc_storeStrong(&self->_ddRequest, activate);
      [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryRequestStart:activateCopy];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)deviceDiscoveryUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019363C(updateCopy);
  }

  if (self->_ddRequest)
  {
    changeFlags = [updateCopy changeFlags];
    if (changeFlags != [(SFDeviceDiscovery *)self->_ddRequest changeFlags])
    {
      -[SFDeviceDiscovery setChangeFlags:](self->_ddRequest, "setChangeFlags:", [updateCopy changeFlags]);
    }

    discoveryFlags = [updateCopy discoveryFlags];
    if (discoveryFlags != [(SFDeviceDiscovery *)self->_ddRequest discoveryFlags])
    {
      -[SFDeviceDiscovery setDiscoveryFlags:](self->_ddRequest, "setDiscoveryFlags:", [updateCopy discoveryFlags]);
    }

    deviceFilter = [(SFDeviceDiscovery *)self->_ddRequest deviceFilter];
    deviceFilter2 = [updateCopy deviceFilter];
    deviceFilter3 = deviceFilter;
    v9 = deviceFilter2;
    v10 = v9;
    if (deviceFilter3 == v9)
    {
    }

    else
    {
      if ((deviceFilter3 != 0) == (v9 == 0))
      {
      }

      else
      {
        v11 = [deviceFilter3 isEqual:v9];

        if (v11)
        {
LABEL_17:
          fastScanMode = [updateCopy fastScanMode];
          if (fastScanMode != [(SFDeviceDiscovery *)self->_ddRequest fastScanMode])
          {
            -[SFDeviceDiscovery setFastScanMode:](self->_ddRequest, "setFastScanMode:", [updateCopy fastScanMode]);
          }

          overrideScreenOff = [updateCopy overrideScreenOff];
          if (overrideScreenOff != [(SFDeviceDiscovery *)self->_ddRequest overrideScreenOff])
          {
            -[SFDeviceDiscovery setOverrideScreenOff:](self->_ddRequest, "setOverrideScreenOff:", [updateCopy overrideScreenOff]);
          }

          overrideScreenOffRescanInterval = [updateCopy overrideScreenOffRescanInterval];
          if (overrideScreenOffRescanInterval != [(SFDeviceDiscovery *)self->_ddRequest overrideScreenOffRescanInterval])
          {
            -[SFDeviceDiscovery setOverrideScreenOffRescanInterval:](self->_ddRequest, "setOverrideScreenOffRescanInterval:", [updateCopy overrideScreenOffRescanInterval]);
          }

          rssiThreshold = [updateCopy rssiThreshold];
          if (rssiThreshold != [(SFDeviceDiscovery *)self->_ddRequest rssiThreshold])
          {
            -[SFDeviceDiscovery setRssiThreshold:](self->_ddRequest, "setRssiThreshold:", [updateCopy rssiThreshold]);
          }

          scanRate = [updateCopy scanRate];
          if (scanRate != [(SFDeviceDiscovery *)self->_ddRequest scanRate])
          {
            -[SFDeviceDiscovery setScanRate:](self->_ddRequest, "setScanRate:", [updateCopy scanRate]);
          }

          trackPeers = [updateCopy trackPeers];
          if (trackPeers != [(SFDeviceDiscovery *)self->_ddRequest trackPeers])
          {
            -[SFDeviceDiscovery setTrackPeers:](self->_ddRequest, "setTrackPeers:", [updateCopy trackPeers]);
          }

          useCases = [(SFDeviceDiscovery *)self->_ddRequest useCases];
          useCases2 = [updateCopy useCases];
          useCases3 = useCases;
          v21 = useCases2;
          v22 = v21;
          if (useCases3 == v21)
          {
          }

          else
          {
            if ((useCases3 != 0) == (v21 == 0))
            {
            }

            else
            {
              v23 = [useCases3 isEqual:v21];

              if (v23)
              {
                goto LABEL_37;
              }
            }

            useCases3 = [updateCopy useCases];
            [(SFDeviceDiscovery *)self->_ddRequest setUseCases:useCases3];
          }

LABEL_37:
          [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryRequestUpdate:self->_ddRequest];
          goto LABEL_38;
        }
      }

      deviceFilter3 = [updateCopy deviceFilter];
      [(SFDeviceDiscovery *)self->_ddRequest setDeviceFilter:deviceFilter3];
    }

    goto LABEL_17;
  }

  sub_100193684();
LABEL_38:
}

- (void)deviceDiscoveryFastScanTrigger:(id)trigger
{
  triggerCopy = trigger;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  ddRequest = self->_ddRequest;
  if (ddRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryFastScanTrigger:ddRequest reason:triggerCopy];
  }
}

- (void)deviceDiscoveryFastScanCancel:(id)cancel
{
  cancelCopy = cancel;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  ddRequest = self->_ddRequest;
  if (ddRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryFastScanCancel:ddRequest reason:cancelCopy];
  }
}

- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  ddRequest = self->_ddRequest;
  if (ddRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryTriggerEnhancedDiscovery:ddRequest reason:discoveryCopy];
  }
}

- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case completion:(id)completion
{
  v6 = *&case;
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  ddRequest = self->_ddRequest;
  if (ddRequest)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent deviceDiscoveryTriggerEnhancedDiscovery:ddRequest reason:discoveryCopy useCase:v6];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)diagnosticBLEModeWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193700();
  }

  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Diagnostics" state:&self->_entitledDiagnostics label:@"DiagnosticBLEMode"])
  {
    sub_100193748();
  }

  else
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticBLEModeStart:self];
    self->_diagnosticBLEModeStarted = 1;
    completionCopy[2](completionCopy, 0);
  }
}

- (void)diagnosticControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019381C(controlCopy);
  }

  v40 = 0;
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Diagnostics" state:&self->_entitledDiagnostics label:@"DiagnosticControl"])
  {
    goto LABEL_40;
  }

  if (![controlCopy hasPrefix:@"afui"])
  {
    if ([controlCopy hasPrefix:@"afremote"])
    {
      autoFillAgent = self->_server->_autoFillAgent;
      v11 = [controlCopy substringFromIndex:8];
      [(SDAutoFillAgent *)autoFillAgent testRemote:v11];
      goto LABEL_14;
    }

    if ([controlCopy hasPrefix:@"afservice"])
    {
      v13 = self->_server->_autoFillAgent;
      v11 = [controlCopy substringFromIndex:9];
      [(SDAutoFillAgent *)v13 testService:v11];
      goto LABEL_14;
    }

    if ([controlCopy hasPrefix:@"afkc"])
    {
      v14 = self->_server->_autoFillAgent;
      v11 = [controlCopy substringFromIndex:4];
      [(SDAutoFillAgent *)v14 testKeychain:v11];
      goto LABEL_14;
    }

    if ([controlCopy caseInsensitiveCompare:@"au1"])
    {
      if ([controlCopy caseInsensitiveCompare:@"au0"])
      {
        if (sscanf([controlCopy UTF8String], "auua-%X-%X", &v40 + 4, &v40) == 2)
        {
          [(SDNearbyAgent *)self->_server->_nearbyAgent unlockUpdateAdvertising:HIDWORD(v40) mask:v40];
          goto LABEL_15;
        }

        if ([controlCopy hasPrefix:@"choui"])
        {
          proxHandoffAgent = self->_server->_proxHandoffAgent;
          v9 = controlCopy;
          v10 = 5;
          goto LABEL_7;
        }

        if ([controlCopy hasPrefix:@"isui"])
        {
          setupAgent = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:4];
          [(SDSetupAgent *)setupAgent testSetupUIiOS:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"kbpost"])
        {
          riAgent = self->_server->_riAgent;
          v11 = [controlCopy substringFromIndex:6];
          [(SDRemoteInteractionAgent *)riAgent testKeyboardPost:v11];
          goto LABEL_14;
        }

        if (![controlCopy caseInsensitiveCompare:@"kbpostdelay"])
        {
          [(SDRemoteInteractionAgent *)self->_server->_riAgent testKeyboardPostWithDelay];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"kbpostupdate"])
        {
          [(SDRemoteInteractionAgent *)self->_server->_riAgent testKeyboardPostThenUpdate];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"kbremove"])
        {
          [(SDRemoteInteractionAgent *)self->_server->_riAgent testKeyboardRemove];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"kbremovedelay"])
        {
          [(SDRemoteInteractionAgent *)self->_server->_riAgent testKeyboardRemoveWithDelay];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"kbupdate"])
        {
          [(SDRemoteInteractionAgent *)self->_server->_riAgent testKeyboardUpdate];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"kbupdatedelay"])
        {
          [(SDRemoteInteractionAgent *)self->_server->_riAgent testKeyboardUpdateWithDelay];
          goto LABEL_15;
        }

        if ([controlCopy hasPrefix:@"ppair"])
        {
          ppAgent = self->_server->_ppAgent;
          v11 = [controlCopy substringFromIndex:5];
          [(SDProximityPairingAgent *)ppAgent testPairingUI:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"pstat"])
        {
          v20 = self->_server->_ppAgent;
          v11 = [controlCopy substringFromIndex:5];
          [(SDProximityPairingAgent *)v20 testStatusUI:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"mismatch"])
        {
          [(SDProximityPairingAgent *)self->_server->_ppAgent testStatusUI:controlCopy];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"btpipe"])
        {
          sharedNearbyPipe = [(SDNearbyAgent *)self->_server->_nearbyAgent sharedNearbyPipe];
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"metrics"])
        {
          SFMetricsLog();
          goto LABEL_15;
        }

        if (![controlCopy caseInsensitiveCompare:@"pping"])
        {
          [(SDNearbyAgent *)self->_server->_nearbyAgent testPipePing];
          goto LABEL_15;
        }

        if (sscanf([controlCopy UTF8String], "hotspot=%X", &v40 + 4) == 1)
        {
          [(SDNearbyAgent *)self->_server->_nearbyAgent setHotspotInfo:HIDWORD(v40)];
          goto LABEL_15;
        }

        if ([controlCopy hasPrefix:@"atvui"])
        {
          v22 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:5];
          [(SDSetupAgent *)v22 testUIAppleTVSetup:v11];
          goto LABEL_14;
        }

        if (([controlCopy hasPrefix:@"b238ui"] & 1) != 0 || objc_msgSend(controlCopy, "hasPrefix:", @"homepodui"))
        {
          v23 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:6];
          [(SDSetupAgent *)v23 testSetupUIB238:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"hkui"])
        {
          v24 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:4];
          [(SDSetupAgent *)v24 testHomeKitDeviceDetected:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"nfcui"])
        {
          v25 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:5];
          [(SDSetupAgent *)v25 testNFCUI:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"ppui"])
        {
          v26 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:4];
          [(SDSetupAgent *)v26 testPairUI:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"pinshow"])
        {
          v27 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:7];
          [(SDSetupAgent *)v27 testPINShow:v11];
          goto LABEL_14;
        }

        if (![controlCopy caseInsensitiveCompare:@"pinhide"])
        {
          [(SDSetupAgent *)self->_server->_setupAgent testPINHide];
          goto LABEL_15;
        }

        if ([controlCopy hasPrefix:@"dpick"])
        {
          v11 = [controlCopy substringFromIndex:5];
          v28 = self->_server->_setupAgent;
          v41 = @"debugParams";
          v42 = v11;
          v29 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          [(SDSetupAgent *)v28 showDevicePickerWithInfo:v29 completion:&stru_1008D22D0];

          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"pwui"])
        {
          v30 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:4];
          [(SDSetupAgent *)v30 testSetupUIPasswordSharing:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"rpui"])
        {
          v31 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:4];
          [(SDSetupAgent *)v31 testRepairUI:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"ShareAudioUI"])
        {
          v32 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:12];
          [(SDSetupAgent *)v32 testUIShareAudio:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"siriN"])
        {
          [(SDProximityPairingAgent *)self->_server->_ppAgent promptForSiriNotificationsForDevice:0];
          goto LABEL_15;
        }

        if ([controlCopy hasPrefix:@"TVLatencyUI"])
        {
          v33 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:11];
          [(SDSetupAgent *)v33 testUITVLatencySetup:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"TVColorCalibrator"])
        {
          v34 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:17];
          [(SDSetupAgent *)v34 testUITVLatencyColorimeterSetup:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"whaui"])
        {
          v35 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:5];
          [(SDSetupAgent *)v35 testSetupUIWHA:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"wsui"])
        {
          v36 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:4];
          [(SDSetupAgent *)v36 testSetupUIWatch:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"testProxCardKit"])
        {
          v37 = self->_server->_setupAgent;
          v11 = [controlCopy substringFromIndex:8];
          [(SDSetupAgent *)v37 testProxCardKit:v11];
          goto LABEL_14;
        }

        if ([controlCopy hasPrefix:@"unpost"])
        {
          v38 = +[SDNotificationManager sharedManager];
          v39 = [controlCopy substringFromIndex:6];
          [v38 testPost:v39];

          goto LABEL_15;
        }

        if ([controlCopy hasPrefix:@"familyHSNotification"])
        {
          [(SDHotspotAgent *)self->_server->_hotspotAgent testNotification];
          goto LABEL_15;
        }

        if (dword_100971A10 <= 50 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
        {
          sub_100193864(controlCopy);
        }

LABEL_40:
        sub_100193748();
        goto LABEL_16;
      }

      nearbyAgent = self->_server->_nearbyAgent;
      v16 = 0;
    }

    else
    {
      nearbyAgent = self->_server->_nearbyAgent;
      v16 = 1;
    }

    [(SDNearbyAgent *)nearbyAgent setAutoUnlockActive:v16];
    goto LABEL_15;
  }

  proxHandoffAgent = self->_server->_autoFillAgent;
  v9 = controlCopy;
  v10 = 4;
LABEL_7:
  v11 = [v9 substringFromIndex:v10];
  [proxHandoffAgent testUI:v11];
LABEL_14:

LABEL_15:
  completionCopy[2](completionCopy, 0);
LABEL_16:
}

- (void)diagnosticMock:(id)mock device:(id)device completion:(id)completion
{
  mockCopy = mock;
  deviceCopy = device;
  completionCopy = completion;
  if ([mockCopy caseInsensitiveCompare:@"change"])
  {
    if (![mockCopy caseInsensitiveCompare:@"found"])
    {
      [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticMockFound:deviceCopy];
      goto LABEL_12;
    }

    if ([mockCopy caseInsensitiveCompare:@"lost"])
    {
      if (dword_100971A10 <= 50 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        sub_1001938A4(mockCopy);
        if (!completionCopy)
        {
          goto LABEL_14;
        }

LABEL_13:
        completionCopy[2](completionCopy, 0);
        goto LABEL_14;
      }

LABEL_12:
      if (!completionCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticMockLost:deviceCopy];
    if (completionCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticMockChanged:deviceCopy];
    if (completionCopy)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)diagnosticMockStart:(id)start
{
  startCopy = start;
  v8 = startCopy;
  if (dword_100971A10 <= 50)
  {
    if (dword_100971A10 != -1 || (startCopy = _LogCategory_Initialize(), startCopy))
    {
      sub_1001938E4(startCopy, v5, v6);
    }
  }

  [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticBLEModeStart:self];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)diagnosticMockStop:(id)stop
{
  stopCopy = stop;
  v8 = stopCopy;
  if (dword_100971A10 <= 50)
  {
    if (dword_100971A10 != -1 || (stopCopy = _LogCategory_Initialize(), stopCopy))
    {
      sub_100193900(stopCopy, v5, v6);
    }
  }

  [(SDNearbyAgent *)self->_server->_nearbyAgent diagnosticBLEModeStop:self];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)diagnosticShow:(id)show completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v8 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Diagnostics" state:&self->_entitledDiagnostics label:@"DiagnosticShow"];
  if (v8)
  {
    v13 = 0;
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ([showCopy isEqual:@"ids"])
  {
    nearbyAgent = self->_server->_nearbyAgent;
    v78 = 0;
    [(SDNearbyAgent *)nearbyAgent idsDevicesAppendDescription:&v78];
    v10 = v78;
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  if ([showCopy isEqual:@"prox"])
  {
    v77 = 0;
    bleProximityInfo = [(SDNearbyAgent *)self->_server->_nearbyAgent bleProximityInfo];
    NSAppendPrintF(&v77, "%@", bleProximityInfo);
    v12 = v77;
LABEL_10:
    v10 = v12;

    goto LABEL_11;
  }

  if ([showCopy isEqual:@"autofill"])
  {
    v76 = 0;
    bleProximityInfo = [(SDAutoFillAgent *)self->_server->_autoFillAgent description];
    NSAppendPrintF(&v76, "%@", bleProximityInfo);
    v12 = v76;
    goto LABEL_10;
  }

  if ([showCopy isEqual:@"handoff"])
  {
    v75 = 0;
    bleProximityInfo = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent description];
    NSAppendPrintF(&v75, "%@", bleProximityInfo);
    v12 = v75;
    goto LABEL_10;
  }

  v15 = [showCopy isEqual:@"ss"];
  v16 = [(SDNearbyAgent *)self->_server->_nearbyAgent description];
  v17 = v16;
  if (v16)
  {
    v74 = 0;
    NSAppendPrintF(&v74, "%@\n", v16);
    v18 = v74;
    if (v15)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v18 = 0;
    if (v15)
    {
      goto LABEL_29;
    }
  }

  detailedDescription = [(SDAppleIDAgent *)self->_server->_appleIDAgent detailedDescription];

  if (detailedDescription)
  {
    v73 = v18;
    NSAppendPrintF(&v73, "%@\n", detailedDescription);
    v20 = v73;

    v18 = v20;
  }

  v21 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager shared];
  detailedDescription2 = [v21 detailedDescription];

  if (detailedDescription2)
  {
    v72 = v18;
    NSAppendPrintF(&v72, "%@\n", detailedDescription2);
    v23 = v72;

    v18 = v23;
  }

  v24 = +[SDStatusMonitor sharedMonitor];
  v17 = [v24 description];

  if (v17)
  {
    v71 = v18;
    NSAppendPrintF(&v71, "%@\n", v17);
    v25 = v71;

    v18 = v25;
  }

LABEL_29:
  v26 = [(SDRemoteInteractionAgent *)self->_server->_riAgent description];

  if (v26)
  {
    v70 = v18;
    NSAppendPrintF(&v70, "%@\n", v26);
    v27 = v70;

    v18 = v27;
  }

  v28 = [(SDAutoFillAgent *)self->_server->_autoFillAgent description];

  if (v28)
  {
    v69 = v18;
    NSAppendPrintF(&v69, "%@\n", v28);
    v29 = v69;

    v18 = v29;
  }

  v30 = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent description];

  if (v30)
  {
    v68 = v18;
    NSAppendPrintF(&v68, "%@\n", v30);
    v31 = v68;

    v18 = v31;
  }

  if ((v15 & 1) == 0)
  {
    v32 = +[SDNotificationManager sharedManager];
    v33 = [v32 description];

    if (v33)
    {
      v67 = v18;
      NSAppendPrintF(&v67, "%@\n", v33);
      v34 = v67;

      v18 = v34;
    }

    v35 = +[SDAutoUnlockAKSManager sharedManager];
    state = [v35 state];

    if (state)
    {
      v66 = v18;
      NSAppendPrintF(&v66, "%@\n", state);
      v37 = v66;

      v18 = v37;
    }

    v38 = +[SDAutoUnlockSessionManager sharedManager];
    state2 = [v38 state];

    if (state2)
    {
      v65 = v18;
      NSAppendPrintF(&v65, "%@\n", state2);
      v40 = v65;

      v18 = v40;
    }

    v41 = +[SDAutoUnlockTransport sharedTransport];
    state3 = [v41 state];

    if (state3)
    {
      v64 = v18;
      NSAppendPrintF(&v64, "%@\n", state3);
      v43 = v64;

      v18 = v43;
    }

    v44 = +[SDDeviceAssetMonitor sharedAssetMonitor];
    state4 = [v44 state];

    if (state4)
    {
      v63 = v18;
      NSAppendPrintF(&v63, "%@\n", state4);
      v46 = v63;

      v18 = v46;
    }

    v47 = +[SDHotspotAgent sharedAgent];
    v30 = [v47 description];

    if (v30)
    {
      v62 = v18;
      NSAppendPrintF(&v62, "%@\n", v30);
      v48 = v62;

      v18 = v48;
    }
  }

  v49 = [(SDProximityPairingAgent *)self->_server->_ppAgent description];

  if (v49)
  {
    v61 = v18;
    NSAppendPrintF(&v61, "%@\n", v49);
    v50 = v61;

    v18 = v50;
  }

  v13 = CUDescriptionWithLevel();

  if (v13)
  {
    v60 = v18;
    NSAppendPrintF(&v60, "%@\n", v13);
    v51 = v60;

    v18 = v51;
  }

  server = self->_server;
  v59 = v18;
  [(SDXPCServer *)server stateAppendXPCConnections:&v59];
  v10 = v59;

  if ([showCopy isEqual:@"all"])
  {
    v58 = v10;
    NSAppendPrintF(&v58, "\n");
    v53 = v58;

    v57 = v53;
    NSAppendPrintF(&v57, "-- ProximityInfo --\n");
    v54 = v57;

    v56 = v54;
    bleProximityInfo2 = [(SDNearbyAgent *)self->_server->_nearbyAgent bleProximityInfo];
    NSAppendPrintF(&v56, "%@\n", bleProximityInfo2);
    v10 = v56;
  }

  if (!v10)
  {
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    v8 = 4294960568;
LABEL_16:
    v14 = NSPrintF("### Error: %#m\n", v8);
    completionCopy[2](completionCopy, v14);

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

LABEL_12:
  if (completionCopy)
  {
    if (v10)
    {
      completionCopy[2](completionCopy, v10);
      goto LABEL_18;
    }

    v8 = 0;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)diagnosticUnlockTestClientWithDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Diagnostics" state:&self->_entitledDiagnostics label:@"DiagnosticUnlockTestClientWithDevice"])
  {
    sub_10019391C();
  }

  else
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent unlockStartTestClientWithDevice:deviceCopy];
    self->_unlockTestClientStarted = 1;
  }
}

- (void)diagnosticUnlockTestServer
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Diagnostics" state:&self->_entitledDiagnostics label:@"DiagnosticUnlockTestServer"])
  {
    sub_10019399C();
  }

  else
  {
    nearbyAgent = self->_server->_nearbyAgent;

    [(SDNearbyAgent *)nearbyAgent unlockStartTestServer];
  }
}

- (void)nfcTagReaderUIActivateWithEndpoint:(id)endpoint params:(id)params completion:(id)completion
{
  endpointCopy = endpoint;
  paramsCopy = params;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193A1C();
  }

  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"NFCTagReaderUIActivate"])
  {
    sub_100193A64();
  }

  else
  {
    [(SDSetupAgent *)self->_server->_setupAgent nfcTagReaderUIActivateWithEndpoint:endpointCopy params:paramsCopy completion:completionCopy];
  }
}

- (void)b389NFCPromptDidRequestPresentationWithConfiguration:(id)configuration responseHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193BA0(configurationCopy);
  }

  v7 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.DurianTapPromptClient" state:&self->_entitledB389NFCPromptClient label:@"B389NFCPromptShow"];
  if (v7)
  {
    v8 = [NSError errorWithDomain:@"SFB389NFCPromptErrorDomain" code:v7 userInfo:&off_10090EB50];
    if (v8)
    {
      v9 = v8;
      if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        sub_100193BE8(v9);
        if (!handlerCopy)
        {
          goto LABEL_11;
        }
      }

      else if (!handlerCopy)
      {
LABEL_11:

        goto LABEL_13;
      }

      handlerCopy[2](handlerCopy, v9, 0, -1.0);
      goto LABEL_11;
    }
  }

  v9 = +[_TtC16DaemoniOSLibrary16SDB389SetupAgent shared];
  [v9 showNFCPromptWithConfig:configurationCopy responseHandler:handlerCopy];
LABEL_13:
}

- (void)b389NFCPromptUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193C30(configurationCopy);
  }

  v4 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.DurianTapPromptClient" state:&self->_entitledB389NFCPromptClient label:@"B389NFCPromptUpdateTitle"];
  if (v4 && ([NSError errorWithDomain:@"SFB389NFCPromptErrorDomain" code:v4 userInfo:&off_10090EB78], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100193C78(v6);
    }
  }

  else
  {
    v6 = +[_TtC16DaemoniOSLibrary16SDB389SetupAgent shared];
    [v6 updateNFCPromptConfig:configurationCopy responseHandler:0];
  }
}

- (void)dismissCurrentB389NFCPrompt
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193CC0();
  }

  v3 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.DurianTapPromptClient" state:&self->_entitledB389NFCPromptClient label:@"B389NFCPromptDismiss"];
  if (v3 && ([NSError errorWithDomain:@"SFB389NFCPromptErrorDomain" code:v3 userInfo:&off_10090EBA0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v7 = v4;
    if (dword_100971A10 <= 60)
    {
      if (dword_100971A10 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
      {
        sub_100193D08(v5);
        v5 = v7;
      }
    }
  }

  else
  {
    v7 = +[_TtC16DaemoniOSLibrary16SDB389SetupAgent shared];
    [v7 dismissNFCPrompt];
  }
}

- (void)proximityClientUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193D50(updateCopy);
  }

  if (self->_proxClient)
  {
    shouldAdvertise = [updateCopy shouldAdvertise];
    if (shouldAdvertise != [(SFProximityClient *)self->_proxClient shouldAdvertise])
    {
      -[SFProximityClient setShouldAdvertise:](self->_proxClient, "setShouldAdvertise:", [updateCopy shouldAdvertise]);
    }

    [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClientUpdate:self->_proxClient];
  }

  else
  {
    sub_100193D98();
  }
}

- (void)proximityClientDismissContentForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v8 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.ProximityClient" state:&self->_entitledProximityClient label:@"ProximityClientDismissContent"];
  if (!v8)
  {
    proxClient = self->_proxClient;
    if (!proxClient)
    {
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      v8 = -6720;
      goto LABEL_6;
    }

    v8 = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClient:proxClient dismissContentForDevice:deviceCopy];
  }

  if (!completionCopy)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

LABEL_6:
  v10 = v8;
  v16 = NSLocalizedDescriptionKey;
  v11 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v12 = v11;
  v13 = @"?";
  if (v11)
  {
    v13 = v11;
  }

  v17 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:v14];
  (completionCopy)[2](completionCopy, v15);

LABEL_10:
}

- (void)proximityClientProvideContent:(id)content forDevice:(id)device force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  contentCopy = content;
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v13 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.ProximityClient" state:&self->_entitledProximityClient label:@"ProximityClientProvideContent"];
  if (!v13)
  {
    proxClient = self->_proxClient;
    if (!proxClient)
    {
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      v13 = -6720;
      goto LABEL_6;
    }

    v13 = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClient:proxClient provideContent:contentCopy forDevice:deviceCopy force:forceCopy];
  }

  if (!completionCopy)
  {
    goto LABEL_10;
  }

  if (!v13)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

LABEL_6:
  v15 = v13;
  v21 = NSLocalizedDescriptionKey;
  v16 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v17 = v16;
  v18 = @"?";
  if (v16)
  {
    v18 = v16;
  }

  v22 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v15 userInfo:v19];
  (completionCopy)[2](completionCopy, v20);

LABEL_10:
}

- (void)proximityClientSuppressDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v8 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.ProximityClient" state:&self->_entitledProximityClient label:@"ProximityClientSuppressDevice"];
  if (!v8)
  {
    proxClient = self->_proxClient;
    if (!proxClient)
    {
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      v8 = -6720;
      goto LABEL_6;
    }

    v8 = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClient:proxClient suppressDevice:deviceCopy];
  }

  if (!completionCopy)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

LABEL_6:
  v10 = v8;
  v16 = NSLocalizedDescriptionKey;
  v11 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v12 = v11;
  v13 = @"?";
  if (v11)
  {
    v13 = v11;
  }

  v17 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:v14];
  (completionCopy)[2](completionCopy, v15);

LABEL_10:
}

- (void)proximityClientStopSuppressingDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v8 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.ProximityClient" state:&self->_entitledProximityClient label:@"ProximityClientStopSuppressingDevice"];
  if (!v8)
  {
    proxClient = self->_proxClient;
    if (!proxClient)
    {
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      v8 = -6720;
      goto LABEL_6;
    }

    v8 = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClient:proxClient stopSuppressingDevice:deviceCopy];
  }

  if (!completionCopy)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

LABEL_6:
  v10 = v8;
  v16 = NSLocalizedDescriptionKey;
  v11 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v12 = v11;
  v13 = @"?";
  if (v11)
  {
    v13 = v11;
  }

  v17 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:v14];
  (completionCopy)[2](completionCopy, v15);

LABEL_10:
}

- (void)proximityClientUpdateContent:(id)content forDevice:(id)device completion:(id)completion
{
  contentCopy = content;
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v11 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.ProximityClient" state:&self->_entitledProximityClient label:@"ProximityClientUpdateContent"];
  if (!v11)
  {
    proxClient = self->_proxClient;
    if (!proxClient)
    {
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      v11 = -6720;
      goto LABEL_6;
    }

    v11 = [(SDProxHandoffAgent *)self->_server->_proxHandoffAgent proximityClient:proxClient updateContent:contentCopy forDevice:deviceCopy];
  }

  if (!completionCopy)
  {
    goto LABEL_10;
  }

  if (!v11)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

LABEL_6:
  v13 = v11;
  v19 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v15 = v14;
  v16 = @"?";
  if (v14)
  {
    v16 = v14;
  }

  v20 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v13 userInfo:v17];
  (completionCopy)[2](completionCopy, v18);

LABEL_10:
}

- (void)proximityClientRequestScannerTimerReset
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v3 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.ProximityClient" state:&self->_entitledProximityClient label:@"ProximityClientUpdateContent"];
  if (v3)
  {
    goto LABEL_7;
  }

  if (!self->_proxClient)
  {
    v3 = 4294960576;
LABEL_7:
    sub_100193E14(v3, &v5, &v6);
    return;
  }

  proxHandoffAgent = self->_server->_proxHandoffAgent;

  [(SDProxHandoffAgent *)proxHandoffAgent proximityClientRequestScannerTimerReset:?];
}

- (void)remoteInteractionSessionSendPayload:(id)payload
{
  payloadCopy = payload;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100193F4C();
  }

  riSession = self->_riSession;
  if (riSession)
  {
    [(SFRemoteInteractionSession *)riSession sendPayload:payloadCopy];
  }

  else
  {
    sub_100193F94();
  }
}

- (void)serviceUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001940D0(updateCopy);
  }

  service = self->_service;
  if (service)
  {
    [(SFService *)service updateWithService:updateCopy];
    [(SDNearbyAgent *)self->_server->_nearbyAgent update];
  }

  else
  {
    sub_100194118();
  }
}

- (void)servicePeerDisconnected:(id)disconnected error:(id)error
{
  disconnectedCopy = disconnected;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194194(disconnectedCopy);
  }

  service = self->_service;
  if (service)
  {
    [(SFService *)service servicePeerDisconnected:disconnectedCopy error:errorCopy];
  }

  else
  {
    sub_1001941DC();
  }
}

- (void)serviceSendEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194258(eventCopy);
  }

  if (self->_service)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent serviceSendEvent:eventCopy service:?];
  }

  else
  {
    sub_1001942A0();
  }
}

- (void)serviceSendFrameType:(unsigned __int8)type data:(id)data peer:(id)peer
{
  typeCopy = type;
  dataCopy = data;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019431C(typeCopy, dataCopy);
  }

  service = self->_service;
  if (service)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent bleNearbyInfoSendFrameType:typeCopy serviceType:[(SFService *)service serviceType] data:dataCopy peer:peerCopy isSession:0];
  }

  else
  {
    sub_1001943A0();
  }
}

- (void)serviceSendRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019441C(requestCopy);
  }

  if (self->_service)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent serviceSendRequest:requestCopy service:?];
  }

  else
  {
    sub_100194464();
  }
}

- (void)serviceSendResponse:(id)response
{
  responseCopy = response;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001944E0(responseCopy);
  }

  if (self->_service)
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent serviceSendResponse:responseCopy service:?];
  }

  else
  {
    sub_100194528();
  }
}

- (void)sessionSendEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001945A4(eventCopy);
  }

  if (self->_session)
  {
    [eventCopy setSession:?];
    [(SDNearbyAgent *)self->_server->_nearbyAgent sessionSendEvent:eventCopy session:self->_session];
  }

  else
  {
    sub_1001945EC();
  }
}

- (void)sessionSendFrameType:(unsigned __int8)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194668(typeCopy, dataCopy);
  }

  session = self->_session;
  if (session && (-[SFSession peerDevice](session, "peerDevice"), v7 = objc_claimAutoreleasedReturnValue(), [v7 identifier], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    [(SDNearbyAgent *)self->_server->_nearbyAgent bleNearbyInfoSendFrameType:typeCopy serviceType:[(SFSession *)self->_session serviceType] data:dataCopy peer:v8 isSession:1];
  }

  else
  {
    sub_1001946EC();
  }
}

- (void)sessionSendRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_10019476C(requestCopy);
  }

  if (self->_session)
  {
    [requestCopy setSession:?];
    [(SDNearbyAgent *)self->_server->_nearbyAgent sessionSendRequest:requestCopy session:self->_session];
  }

  else
  {
    sub_1001947B4();
  }
}

- (void)sessionSendResponse:(id)response
{
  responseCopy = response;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194830(responseCopy);
  }

  if (self->_session)
  {
    [responseCopy setSession:?];
    [(SDNearbyAgent *)self->_server->_nearbyAgent sessionSendResponse:responseCopy session:self->_session];
  }

  else
  {
    sub_100194878();
  }
}

- (void)shareAudioSessionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100188434;
  v20 = sub_100188444;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018F824;
  v13[3] = &unk_1008D21F0;
  v15 = &v16;
  completionCopy = completion;
  v14 = completionCopy;
  v8 = objc_retainBlock(v13);
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection shareAudioSessionActivate:completion:]", 30, "%@\n", @"ShareAudioSession activate");
  }

  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Session" state:&self->_entitledSession label:@"ShareAudioSession activate"])
  {
    v11 = NSErrorF(NSOSStatusErrorDomain, 4294896128, "Missing entitlement: '%@'", @"com.apple.sharing.Session");
LABEL_11:
    v9 = v17[5];
    v17[5] = v11;
    goto LABEL_8;
  }

  if (self->_shareAudioSession)
  {
    v11 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "Session already active");
    goto LABEL_11;
  }

  v9 = objc_alloc_init(SFShareAudioSessionDaemon);
  objc_storeStrong(&self->_shareAudioSession, v9);
  [(SFShareAudioSessionDaemon *)v9 setDispatchQueue:self->_server->_dispatchQueue];
  v10 = +[SDStatusMonitor sharedMonitor];
  [(SFShareAudioSessionDaemon *)v9 setStatusMonitor:v10];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018F8F4;
  v12[3] = &unk_1008D23E8;
  v12[4] = v9;
  v12[5] = self;
  [(SFShareAudioSessionDaemon *)v9 setProgressHandler:v12];
  [(SFShareAudioSessionDaemon *)v9 activate];
  (*(completionCopy + 2))(completionCopy, 0);
LABEL_8:

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

- (void)shareAudioUserConfirmed
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100188434;
  v14 = sub_100188444;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018FBB0;
  v9[3] = &unk_1008CDA20;
  v9[4] = &v10;
  v3 = objc_retainBlock(v9);
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection shareAudioUserConfirmed]", 30, "%@\n", @"ShareAudioSession UserConfirmed");
  }

  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Session" state:&self->_entitledSession label:@"ShareAudioSession UserConfirmed"])
  {
    v6 = NSErrorF(NSOSStatusErrorDomain, 4294896128, "Missing entitlement: '%@'", @"com.apple.sharing.Session");
    v5 = v11[5];
    v11[5] = v6;
  }

  else
  {
    v4 = self->_shareAudioSession;
    v5 = v4;
    if (v4)
    {
      [(SFShareAudioSessionDaemon *)v4 userConfirmed];
    }

    else
    {
      v7 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "No session");
      v8 = v11[5];
      v11[5] = v7;
    }
  }

  (v3[2])(v3);
  _Block_object_dispose(&v10, 8);
}

- (void)userNotificationPresent:(id)present
{
  presentCopy = present;
  v5 = presentCopy;
  if (dword_100971A10 <= 50)
  {
    v6 = presentCopy;
    if (dword_100971A10 != -1 || (presentCopy = _LogCategory_Initialize(), v5 = v6, presentCopy))
    {
      sub_1001948F4(presentCopy, v5, v4);
      v5 = v6;
    }
  }
}

- (int)_entitledService:(id)service state:(BOOL *)state
{
  sub_10019014C();
  v7 = v6;
  if (*v4)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = [*(v5 + 136) cuValueForEntitlementNoCache:@"com.apple.sharing.Services"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || CFGetInt64())
    {
      v9 = 0;
    }

    else
    {
      if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971A10, "-[SDXPCConnection _entitledService:state:]", 60, "### %#{pid} lacks %''@ entitlement for service %''@\n", [*(v5 + 136) processIdentifier], @"com.apple.sharing.Services", v7);
      }

      v9 = -6768;
    }
  }

  return v9;
}

- (void)autoFillHelperActivate:(id)activate completion:(id)completion
{
  sub_1001900A0();
  v8 = v5;
  v9 = v4;
  sub_1001900DC();
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection autoFillHelperActivate:completion:]", 30, "%@\n", @"AutoFillHelperActivate");
  }

  v10 = [v6 _entitled:@"com.apple.sharing.RemoteInteractionSession" state:v6 + 55 label:@"AutoFillHelperActivate"];
  if (!v10)
  {
    if (!*(v6 + 8))
    {
      sub_1001900C0();
      sub_10018FE68();
      v27 = 3221225472;
      v28 = sub_100186480;
      v29 = &unk_1008CDEA0;
      v30 = v6;
      [v8 setDismissUserNotificationHandler:v26];
      sub_100021EC8();
      v23 = sub_1001864E4;
      v24 = &unk_1008D21A0;
      v25 = v6;
      [v8 setPairingResponseHandler:v22];
      sub_100035DD4();
      v19 = sub_10018656C;
      v20 = &unk_1008CFFB0;
      v21 = v6;
      [v8 setPromptForPINHandler:v18];
      v10 = [*(*(v6 + 112) + 24) helperStart:v8];
      if (v10)
      {
        goto LABEL_10;
      }

      objc_storeStrong((v6 + 8), v5);
    }

    v10 = 0;
  }

LABEL_10:
  if (v4)
  {
    if (v10)
    {
      v31 = NSLocalizedDescriptionKey;
      sub_100190078(v10);
      v11 = [sub_10002A810() stringWithUTF8String:?];
      sub_10018FED4();
      v32 = v12;
      sub_100190068();
      [v13 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      [sub_10018FE98() errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v14 = sub_10018FEB0();
      v15(v14);
    }

    else
    {
      v16 = sub_10018FEF0();
      v17(v16);
    }
  }
}

- (void)accountForAppleID:(id)d withCompletion:(id)completion
{
  sub_1001901A4();
  sub_10019014C();
  v7 = v6;
  v8 = v4;
  sub_100035138();
  if (v4)
  {
    v11 = sub_1001900F8(v9, v10, @"com.apple.sharing.Client");
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v11 = [*(*(v5 + 112) + 16) accountForAppleID:v7];
      if (v11)
      {
        v12 = v11;
        sub_100186CC8(v11);
        v13 = sub_10018FEE0();
        v14(v13, v12, 0);
LABEL_5:

        goto LABEL_6;
      }

      v15 = 201202;
    }

    sub_100186CC8(v11);
    v12 = [NSString stringWithUTF8String:sub_100190078(v15)];
    sub_10018FED4();
    sub_10018FF00();
    v17 = [v16 dictionaryWithObjects:? forKeys:? count:?];
    v18 = [sub_1001900B0() errorWithDomain:? code:? userInfo:?];
    v19 = sub_10018FEE0();
    v20(v19, 0, v18);

    goto LABEL_5;
  }

LABEL_6:

  sub_10019018C();
}

- (void)subCredentialPresentCardWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v7 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"subCredentialPresentCard"];
  if (!v7)
  {
    if (dword_100971A10 <= 50 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection subCredentialPresentCardWithParams:completion:]", 50, "Client requesting subcredential presentation\n");
    }

    v8 = +[SDSubCredentialAgent sharedAgent];
    [v8 uiPresentWithParamsDirect:paramsCopy completion:completionCopy];
  }

  if (completionCopy)
  {
    v9 = NSErrorWithOSStatusF(v7, "Missing entitlement");
    v10 = sub_10002FC98();
    v11(v10, v9);
  }
}

- (void)broadwayPresentCardWithCode:(id)code options:(id)options completion:(id)completion
{
  codeCopy = code;
  optionsCopy = options;
  completionCopy = completion;
  sub_100035138();
  v11 = sub_1001900F8(v9, v10, @"com.apple.sharing.Client");
  if (!v11)
  {
    if (dword_100971A10 <= 50 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection broadwayPresentCardWithCode:options:completion:]", 50, "Client requesting broadway presentation\n");
    }

    v12 = +[SDBroadwayAgent sharedAgent];
    [v12 preparePresentationWithBroadwayActivationCode:codeCopy testInfo:optionsCopy];
  }

  if (completion)
  {
    v13 = NSErrorWithOSStatusF(v11, "Missing entitlement");
    v14 = sub_10018FEE0();
    v15(v14, v13);
  }
}

- (void)displayStringForContactIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  completionCopy = completion;
  v11 = +[SDStatusMonitor sharedMonitor];
  meCard = [v11 meCard];

  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  v13 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"DisplayNameForHashes"];
  if (v13)
  {
    v22 = 0;
    if (!completionCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  identifier = [meCard identifier];
  v15 = [identifierCopy isEqual:identifier];

  if (v15)
  {
    v16 = [(SDNearbyAgent *)self->_server->_nearbyAgent idsDeviceForBluetoothDeviceID:deviceIdentifierCopy conflictDetected:0];
    v17 = v16;
    if (v16)
    {
      name = [v16 name];
    }

    else
    {
      if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971A10, "[SDXPCConnection displayStringForContactIdentifier:deviceIdentifier:completion:]", 60, "### No IDS device found for ID %@\n", deviceIdentifierCopy);
      }

      name = [CNContactFormatter stringFromContact:meCard style:0];
    }

    v22 = name;
  }

  else
  {
    v17 = objc_alloc_init(CNContactStore);
    v19 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v37 = v19;
    v20 = [NSArray arrayWithObjects:&v37 count:1];

    v21 = [v17 unifiedContactWithIdentifier:identifierCopy keysToFetch:v20 error:0];
    v22 = [CNContactFormatter stringFromContact:v21 style:0];
  }

  if (v22)
  {
    v13 = 0;
  }

  else
  {
    v13 = 4294960569;
  }

  if (completionCopy)
  {
LABEL_16:
    if (v13)
    {
      v23 = v13;
      v34 = identifierCopy;
      v35 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:sub_100190078(v13)];
      sub_10018FED4();
      v36 = v25;
      [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v26 = meCard;
      v28 = v27 = deviceIdentifierCopy;
      v29 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v23 userInfo:v28];
      v30 = sub_100190158();
      v31(v30);

      deviceIdentifierCopy = v27;
      meCard = v26;

      identifierCopy = v34;
    }

    else
    {
      v32 = sub_100190158();
      v33(v32);
    }
  }

LABEL_19:
}

- (void)myAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (completionCopy)
  {
    myAccount = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"AppleIDAuth"];
    if (myAccount)
    {
      v9 = myAccount;
    }

    else
    {
      myAccount = [(SDAppleIDAgent *)self->_server->_appleIDAgent myAccount];
      if (myAccount)
      {
        v6 = myAccount;
        sub_100186CC8(myAccount);
        v7 = sub_10002FC98();
        v8(v7, v6, 0);
LABEL_5:

        goto LABEL_6;
      }

      v9 = 201202;
    }

    sub_100186CC8(myAccount);
    v6 = [NSString stringWithUTF8String:sub_100190078(v9)];
    sub_10018FED4();
    sub_10018FF00();
    v11 = [v10 dictionaryWithObjects:? forKeys:? count:?];
    v12 = [sub_10018FE88() errorWithDomain:? code:? userInfo:?];
    v13 = sub_10002FC98();
    v14(v13, 0, v12);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)hashManagerControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (completionCopy)
  {
    v9 = sub_1001900F8(v7, v8, @"com.apple.sharing.Client");
    if (v9)
    {
      v15 = NSErrorWithOSStatusF(v9, "Missing entitlement");
      v14 = 0;
      v11 = 0;
      goto LABEL_23;
    }

    v10 = [controlCopy objectForKeyedSubscript:@"cmd"];
    v11 = v10;
    if (v10)
    {
      if ([v10 isEqualToString:@"hmrebuild"])
      {
        v12 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager shared];
        [v12 rebuildDB];

        airDropService = self->_server->_airDropService;
        if (airDropService)
        {
          [(SDAirDropService_objc *)airDropService forceRebuild];
        }

        v14 = 0;
        v15 = 0;
        goto LABEL_23;
      }

      v16 = [v11 isEqualToString:@"hmdump"];
      if (v16)
      {
        v17 = NSTemporaryDirectory();
        v18 = [v17 stringByAppendingPathComponent:@"airdrop-hash-db.txt"];
        v19 = [NSURL fileURLWithPath:v18];

        v20 = NSTemporaryDirectory();
        v21 = [NSURL fileURLWithPath:v20];

        if (v19)
        {
          v22 = +[_TtC16DaemoniOSLibrary27SDAirDropContactHashManager shared];
          v23 = [v22 dumpDBAtFileURL:v19];

          if (v23)
          {
            path = [v19 path];
            v25 = path;
            if (path)
            {
              v26 = path;
            }

            else
            {
              v26 = @"<unknown>";
            }

            v14 = [NSMutableDictionary dictionaryWithObject:v26 forKey:@"filePath"];

            v15 = 0;
            v27 = self->_server->_airDropService;
            if (v27 && v21)
            {
              [(SDAirDropService_objc *)v27 dumpDBWithUrl:v21];
              path2 = [v21 path];
              v29 = path2;
              if (path2)
              {
                v30 = path2;
              }

              else
              {
                v30 = @"<unknown>";
              }

              [v14 setObject:v30 forKey:@"idmsFilePath"];

              v15 = 0;
            }

            goto LABEL_20;
          }

          NSErrorWithOSStatusF(0, "Failed to perform hash database dump");
        }

        else
        {
          NSErrorWithOSStatusF(0, "Failed to create destination URL");
        }
        v15 = ;
        v14 = 0;
LABEL_20:

LABEL_23:
        v31 = sub_10002FC98();
        v32(v31, v14, v15);

        goto LABEL_24;
      }

      NSErrorWithOSStatusF(v16, "Unknown command");
    }

    else
    {
      NSErrorWithOSStatusF(0, "Missing command");
    }
    v15 = ;
    v14 = 0;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)personInfoWithEmailOrPhone:(id)phone completion:(id)completion
{
  sub_1001901A4();
  sub_10019014C();
  v6 = v5;
  v7 = v4;
  sub_100035138();
  if (v4)
  {
    v10 = sub_1001900F8(v8, v9, @"com.apple.sharing.Client");
    if (v10)
    {
      v12 = v10;
      sub_100186CC8(v10);
      v13 = v12;
      sub_100190078(v12);
      v14 = [sub_10019003C() stringWithUTF8String:?];
      sub_10018FED4();
      sub_10018FF00();
      v16 = [v15 dictionaryWithObjects:? forKeys:? count:?];
      v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v13 userInfo:v16];
      v18 = sub_10018FEE0();
      v19(v18, 0, v17);
    }

    else
    {
      sub_100190180();
      [v11 personInfoWithEmailOrPhone:? completion:?];
    }
  }

  sub_10019018C();
}

- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  sub_1001901A4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v14 = v6;
  dispatch_assert_queue_V2(*(v10[14] + 56));
  if (v14)
  {
    v15 = [v10 _entitled:@"com.apple.sharing.Client" state:v10 + 50 label:@"AppleIDAuth"];
    if (v15)
    {
      v17 = v15;
      sub_100186CC8(v15);
      v18 = v17;
      v19 = [NSString stringWithUTF8String:sub_100190078(v17)];
      sub_10018FED4();
      sub_10018FF00();
      v21 = [v20 dictionaryWithObjects:? forKeys:? count:?];
      v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v18 userInfo:v21];
      v23 = sub_100190090();
      v24(v23, 0, v22);
    }

    else
    {
      sub_100190180();
      [v16 altDSIDLookupWithEmails:? phoneNumbers:? completion:?];
    }
  }

  sub_10019018C();
}

- (void)preventExitForLocaleReason:(id)reason
{
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if ([(SDXPCConnection *)self _entitled:@"com.apple.sharing.Client" state:&self->_entitledClient label:@"PreventExitForLocale"])
  {
    v6 = 0;
  }

  else
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    v6 = v5;
    preventExitForLocaleReason = self->_preventExitForLocaleReason;
    p_preventExitForLocaleReason = &self->_preventExitForLocaleReason;
    if (preventExitForLocaleReason)
    {
      [v5 removePreventExitForLocaleReason:?];
    }

    objc_storeStrong(p_preventExitForLocaleReason, reason);
    if (reasonCopy)
    {
      [v6 addPreventExitForLocaleReason:reasonCopy];
    }
  }
}

- (void)coordinatedAlertsRequestStart:(id)start completion:(id)completion
{
  startCopy = start;
  completionCopy = completion;
  sub_100035138();
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    type = [startCopy type];
    if (type > 6)
    {
      v10 = "?";
    }

    else
    {
      v10 = off_1008D2758[type];
    }

    LogPrintF(&dword_100971A10, "[SDXPCConnection coordinatedAlertsRequestStart:completion:]", 30, "%@ (%s)\n", @"CoordinatedAlertStart", v10);
  }

  if (!CFPrefs_GetInt64() || (v18 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.CoordinatedAlerts" state:&self->_entitledCoordinatedAlerts label:@"CoordinatedAlertStart"]) == 0)
  {
    if (self->_caRequest)
    {
      v18 = -6721;
      if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971A10, "[SDXPCConnection coordinatedAlertsRequestStart:completion:]", 60, "### %@ rejected for %#{pid}: already in use\n", @"CoordinatedAlertStart", [(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      }
    }

    else
    {
      [startCopy setCompletionHandler:completion];
      v11 = +[NSXPCConnection currentConnection];
      [startCopy setXpcConnection:v11];

      objc_storeStrong(&self->_caRequest, start);
      [(SDNearbyAgent *)self->_server->_nearbyAgent coordinatedAlertRequestStart:startCopy];
      v18 = 0;
    }
  }

  if (completion && v18)
  {
    v19 = NSLocalizedDescriptionKey;
    sub_100190078(v18);
    v12 = [sub_10002A810() stringWithUTF8String:?];
    sub_10018FED4();
    v20 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v18 userInfo:v14];
    v16 = sub_10018FEE0();
    v17(v16, v15, 1, 0);
  }
}

- (void)bluetoothUserInteraction
{
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection bluetoothUserInteraction]", 30, "%@\n", @"BluetoothUserInteraction");
  }

  if (![(SDXPCConnection *)self _entitled:@"com.apple.sharing.BluetoothUserInteraction" state:&self->_entitledBluetoothUserInteraction label:@"BluetoothUserInteraction"])
  {
    [(SDProximityPairingAgent *)self->_server->_ppAgent bluetoothUserInteractionStart:self];
    self->_bluetoothUserInteraction = 1;
  }
}

- (void)diagnosticLogControl:(id)control completion:(id)completion
{
  sub_10019014C();
  v7 = v6;
  v8 = v4;
  dispatch_assert_queue_V2(*(v5[14] + 56));
  v9 = [v5 _entitled:@"com.apple.sharing.Diagnostics" state:v5 + 53 label:@"DiagnosticLogControl"];
  if (!v9)
  {
    if (!v7 || ([v7 UTF8String], v9 = LogControl(), !v9))
    {
      v9 = LogShow();
    }
  }

  if (v8)
  {
    NSPrintF("### Error: %#m\n", v9);
    objc_claimAutoreleasedReturnValue();
    v10 = sub_10018FEB0();
    v12(v10, v11);
  }
}

- (void)proximityClientActivate:(id)activate completion:(id)completion
{
  sub_1001900A0();
  v8 = v5;
  v9 = v4;
  sub_1001900DC();
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection proximityClientActivate:completion:]", 30, "%@\n", @"ProximityClientActivate");
  }

  v10 = [v6 _entitled:@"com.apple.sharing.ProximityClient" state:v6 + 54 label:@"ProximityClientActivate"];
  if (!v10)
  {
    if (*(v6 + 80))
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    sub_1001900C0();
    sub_10019001C();
    v40 = 3221225472;
    v41 = sub_10018D4A0;
    v42 = &unk_1008CF330;
    v43 = v6;
    [v8 setDeviceEnteredImmediateHandler:v39];
    sub_10018FF10();
    v36 = sub_10018D520;
    v37 = &unk_1008CF330;
    v38 = v6;
    [v8 setDeviceExitedImmediateHandler:v35];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10018D5A0;
    v34[3] = &unk_1008CF330;
    v34[4] = v6;
    [v8 setDeviceEnteredNearbyHandler:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10018D620;
    v33[3] = &unk_1008CF330;
    v33[4] = v6;
    [v8 setDeviceExitedNearbyHandler:v33];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10018D6A0;
    v32[3] = &unk_1008CF330;
    v32[4] = v6;
    [v8 setDeviceWasDismissedHandler:v32];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10018D724;
    v31[3] = &unk_1008D00C8;
    v31[4] = v6;
    [v8 setDeviceWasDismissedHandlerEx:v31];
    sub_100190048();
    v27 = 3221225472;
    v28 = sub_10018D7AC;
    v29 = &unk_1008CF330;
    v30 = v6;
    [v8 setDeviceWasSelectedHandler:v26];
    sub_10018FF88();
    v23 = sub_10018D82C;
    v24 = &unk_1008CF330;
    v25 = v6;
    [v8 setDeviceWillTriggerHandler:v22];
    sub_10018FF60();
    [sub_10019016C() setDeviceDidUntriggerHandler:?];
    if ([v8 wantsUpdates])
    {
      sub_10018FF38();
      v19 = sub_10018D92C;
      v20 = &unk_1008D22F8;
      v21 = v6;
      [v8 setDeviceUpdateHandler:v18];
    }

    v10 = [*(*(v6 + 112) + 112) proximityClientStart:v8];
    if (!v10)
    {
      objc_storeStrong((v6 + 80), v5);
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v4)
  {
    if (v10)
    {
      v44 = NSLocalizedDescriptionKey;
      sub_100190078(v10);
      v11 = [sub_10002A810() stringWithUTF8String:?];
      sub_10018FED4();
      v45 = v12;
      sub_100190068();
      [v13 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      [sub_10018FE98() errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v14 = sub_10018FEB0();
      v15(v14);
    }

    else
    {
      v16 = sub_10018FEF0();
      v17(v16);
    }
  }
}

- (void)remoteInteractionSessionActivate:(id)activate completion:(id)completion
{
  sub_1001900A0();
  v8 = v5;
  v9 = v4;
  sub_1001900DC();
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection remoteInteractionSessionActivate:completion:]", 30, "%@\n", @"RemoteInteractionSessionActivate");
  }

  v10 = [v6 _entitled:@"com.apple.sharing.RemoteInteractionSession" state:v6 + 55 label:@"RemoteInteractionSessionActivate"];
  if (!v10)
  {
    if (!*(v6 + 88))
    {
      sub_1001900C0();
      sub_100190048();
      v27 = 3221225472;
      v28 = sub_10018E44C;
      v29 = &unk_1008CF400;
      v30 = v6;
      [v8 setRemoteTextEventHandler:v26];
      sub_10018FF88();
      v23 = sub_10018E4CC;
      v24 = &unk_1008D2320;
      v25 = v6;
      [v8 setTextSessionDidBegin:v22];
      sub_10018FF60();
      [sub_10019016C() setTextSessionDidEnd:?];
      sub_10018FF38();
      v19 = sub_10018E5CC;
      v20 = &unk_1008D2320;
      v21 = v6;
      [v8 setTextSessionDidChange:v18];
      v10 = [*(*(v6 + 112) + 88) sessionStart:v8];
      if (v10)
      {
        goto LABEL_10;
      }

      objc_storeStrong((v6 + 88), v5);
    }

    v10 = 0;
  }

LABEL_10:
  if (v4)
  {
    if (v10)
    {
      v31 = NSLocalizedDescriptionKey;
      sub_100190078(v10);
      v11 = [sub_10002A810() stringWithUTF8String:?];
      sub_10018FED4();
      v32 = v12;
      sub_100190068();
      [v13 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      [sub_10018FE98() errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v14 = sub_10018FEB0();
      v15(v14);
    }

    else
    {
      v16 = sub_10018FEF0();
      v17(v16);
    }
  }
}

- (void)serviceActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  identifier = [activateCopy identifier];
  dispatch_assert_queue_V2(self->_server->_dispatchQueue);
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection serviceActivate:completion:]", 30, "ServiceActivate: %@\n", activateCopy);
  }

  if (!identifier)
  {
    v16 = -6705;
    goto LABEL_20;
  }

  v47 = [(SDXPCConnection *)self _entitledService:identifier state:&self->_entitledService];
  if (!v47)
  {
    if (self->_service)
    {
      v16 = -6721;
      goto LABEL_20;
    }

    if (CFPrefs_GetInt64())
    {
      identifier2 = [activateCopy identifier];
      v11 = SFServiceIdentifierDeviceDiagnostics;
      v12 = [identifier2 isEqual:SFServiceIdentifierDeviceDiagnostics];

      if (v12)
      {
        if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971A10, "[SDXPCConnection serviceActivate:completion:]", 60, "### Service identifier %@ is disabled via pref\n", v11);
        }

        v16 = -71165;
LABEL_20:
        v47 = v16;
        if (!completionCopy)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    [activateCopy setDispatchQueue:self->_server->_dispatchQueue];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10018E6E8;
    v46[3] = &unk_1008CDF90;
    v46[4] = self;
    [activateCopy setErrorHandler:v46];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10018E768;
    v45[3] = &unk_1008D1388;
    v45[4] = self;
    [activateCopy setEventMessageHandler:v45];
    sub_10018FFD8();
    v42 = sub_10018E814;
    v43 = &unk_1008D2348;
    selfCopy = self;
    [activateCopy setPeerDisconnectedHandler:v41];
    sub_10018FFB0();
    v38 = sub_10018E8B8;
    v39 = &unk_1008D2370;
    selfCopy2 = self;
    [activateCopy setReceivedFramePeerHandler:v37];
    sub_10018FE68();
    v33 = 3221225472;
    v34 = sub_10018E95C;
    v35 = &unk_1008CEA00;
    selfCopy3 = self;
    [activateCopy setRequestMessageHandler:v32];
    sub_100021EC8();
    v29 = sub_10018EA08;
    v30 = &unk_1008D2398;
    selfCopy4 = self;
    [activateCopy setResponseMessageInternalHandler:v28];
    sub_100035DD4();
    v25 = sub_10018EAB4;
    v26 = &unk_1008D2370;
    selfCopy5 = self;
    [activateCopy setSendFramePeerHandler:v24];
    v47 = [(SDNearbyAgent *)self->_server->_nearbyAgent serviceStart:activateCopy];
    if (!v47)
    {
      objc_storeStrong(&self->_service, activate);
      identifier3 = [(SFService *)self->_service identifier];
      v14 = [identifier3 isEqualToString:SFServiceIdentifierPasswordSharing];

      if (v14)
      {
        v15 = +[NSNotificationCenter defaultCenter];
        [v15 postNotificationName:SFWiFiPasswordSharingAdvertisingBegan object:0];
      }
    }
  }

  if (!completionCopy)
  {
    goto LABEL_24;
  }

LABEL_21:
  v17 = v47;
  if (v47)
  {
    v48 = NSLocalizedDescriptionKey;
    sub_100190078(v47);
    v18 = [sub_10019003C() stringWithUTF8String:?];
    sub_10018FED4();
    v49 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:v20];
    completionCopy[2](completionCopy, v21);
  }

  else
  {
    v22 = sub_10018FEF0();
    v23(v22);
  }

LABEL_24:
}

- (void)sessionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  sub_100035138();
  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection sessionActivate:completion:]", 30, "%@\n", @"SessionActivate");
  }

  v10 = [(SDXPCConnection *)self _entitled:@"com.apple.sharing.Session" state:&self->_entitledSession label:@"SessionActivate"];
  if (!v10)
  {
    if (self->_session)
    {
      v10 = 4294960575;
    }

    else
    {
      serviceUUID = [activateCopy serviceUUID];

      if (serviceUUID)
      {
        [activateCopy setDispatchQueue:self->_server->_dispatchQueue];
        sub_10019001C();
        v45 = 3221225472;
        v46 = sub_10018EF00;
        v47 = &unk_1008CEA50;
        selfCopy = self;
        [activateCopy setBluetoothStateChangedHandler:v44];
        sub_10018FF10();
        v41 = sub_10018EF6C;
        v42 = &unk_1008CDF90;
        selfCopy2 = self;
        [activateCopy setErrorHandler:v40];
        sub_10018FFD8();
        v37 = sub_10018EFEC;
        v38 = &unk_1008D1388;
        selfCopy3 = self;
        [activateCopy setEventMessageHandler:v36];
        sub_10018FFB0();
        v33 = sub_10018F06C;
        v34 = &unk_1008D23C0;
        selfCopy4 = self;
        [activateCopy setReceivedFrameHandler:v32];
        sub_10018FE68();
        v28 = 3221225472;
        v29 = sub_10018F0F4;
        v30 = &unk_1008CEA00;
        selfCopy5 = self;
        [activateCopy setRequestMessageHandler:v27];
        sub_100021EC8();
        v24 = sub_10018F174;
        v25 = &unk_1008D2398;
        selfCopy6 = self;
        [activateCopy setResponseMessageInternalHandler:v23];
        sub_100035DD4();
        v20 = sub_10018F1F4;
        v21 = &unk_1008D23C0;
        selfCopy7 = self;
        [activateCopy setSendFrameHandler:v19];
        objc_storeStrong(&self->_session, activate);
        v10 = [(SDNearbyAgent *)self->_server->_nearbyAgent sessionStart:activateCopy];
      }

      else
      {
        v10 = 4294960551;
      }
    }
  }

  if (completion)
  {
    if (v10)
    {
      v49 = NSLocalizedDescriptionKey;
      sub_100190078(v10);
      v12 = [sub_10002A810() stringWithUTF8String:?];
      sub_10018FED4();
      v50 = v13;
      sub_100190068();
      [v14 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      [sub_10018FE98() errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v15 = sub_10018FEB0();
      v16(v15);
    }

    else
    {
      v17 = sub_10018FEF0();
      v18(v17);
    }
  }
}

@end