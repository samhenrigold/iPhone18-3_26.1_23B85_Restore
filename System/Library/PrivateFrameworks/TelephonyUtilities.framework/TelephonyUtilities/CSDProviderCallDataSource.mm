@interface CSDProviderCallDataSource
+ (BOOL)_isSystemProviderForIdentifier:(id)identifier;
- (BOOL)_actionRequiresReasonableUserIntent:(id)intent;
- (BOOL)_activeStandardCallExists;
- (BOOL)_allowRevertingStateForCompletedTransactionGroup:(id)group;
- (BOOL)_channelSourceAssertionsContainsPTTTransmissionIntent:(id)intent;
- (BOOL)_isChannelSourceAppForeground:(id)foreground;
- (BOOL)_isChannelSourceAppRunningPTTTransmissionAppIntent:(id)intent;
- (BOOL)_isRequestingCallSourceAppBackgroundRunning:(id)running;
- (BOOL)_meetsRequirementsToBeginTransmitting:(id)transmitting;
- (BOOL)_shouldAllowAction:(id)action forChannelSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error;
- (BOOL)_shouldAllowRequestedAction:(id)action forCallSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error;
- (BOOL)_shouldAllowRequestedTransaction:(id)transaction forCallSource:(id)source error:(id *)error;
- (BOOL)_shouldAllowTransaction:(id)transaction forChannelSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error;
- (BOOL)_shouldBlockIfScreenSharing;
- (BOOL)callSource:(id)source shouldProcessAction:(id)action error:(id *)error;
- (BOOL)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously;
- (BOOL)transactionContainsChannelActions:(id)actions;
- (CSDBluetoothHangupCommandObserver)btHangupObserver;
- (CSDProcessObserverProtocol)processObserver;
- (CSDProviderCallDataSource)initWithCallStateController:(id)controller queue:(id)queue assistantServicesObserver:(id)observer coreTelephonyClient:(id)client chManager:(id)manager callSourceManager:(id)sourceManager protectedAppsUtilities:(id)utilities conversationManager:(id)self0 communicationTrustScoreDataProvider:(id)self1 deviceSupport:(id)self2 featureFlags:(id)self3;
- (CSDRelayCallDataSource)relayCallDataSource;
- (CSDRouteManager)routeManager;
- (CXCallSource)telephonyCallSource;
- (OS_dispatch_queue)processObserverQueue;
- (id)_ISOCountryCodeForCall:(id)call;
- (id)_ISOCountryCodeForCallWithUUID:(id)d provider:(id)provider callUpdate:(id)update;
- (id)_callGroupsWithBackingCallSource:(id)source;
- (id)_callWithUUID:(id)d;
- (id)_callWithUUID:(id)d backingCallSource:(id)source;
- (id)_callWithUUID:(id)d controllableByCallSource:(id)source;
- (id)_callWithUUID:(id)d providerIdentifier:(id)identifier;
- (id)_endMutuallyExclusiveCalls:(id)calls;
- (id)_identifiersForCalls:(id)calls;
- (id)_localProviderForCallSource:(id)source;
- (id)_providerForCallSource:(id)source;
- (id)_relayCallWithUUID:(id)d;
- (id)callGroupUUIDToCalls;
- (id)callSourceForDialRequest:(id)request;
- (id)callSourceWithIdentifier:(id)identifier;
- (id)channelProviderForIdentifier:(id)identifier;
- (id)conduit;
- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (id)providerWithIdentifier:(id)identifier;
- (id)remoteScaParticipants:(id)participants;
- (void)_addSupplementalActionsForRequestedTransaction:(id)transaction onCallSource:(id)source;
- (void)_commitUncommittedTransactions;
- (void)_deferCommittingTransactionsUntilAfterRunningBlock:(id)block;
- (void)_endCall:(id)call;
- (void)_performRequestedTransaction:(id)transaction onCallSource:(id)source;
- (void)_performTransaction:(id)transaction onChannelSource:(id)source;
- (void)_processCompletedCallAction:(id)action forCall:(id)call allowRevertingState:(BOOL)state isOnenessActive:(BOOL)active;
- (void)_processCompletedChannelAction:(id)action forCall:(id)call;
- (void)_processPushToTalkAppStateChangedForCall:(id)call withPID:(int)d processState:(int64_t)state;
- (void)_processRequestedTransaction:(id)transaction fromCallSource:(id)source completion:(id)completion;
- (void)_processRequestedTransaction:(id)transaction fromProviderSource:(id)source completionHandler:(id)handler;
- (void)_startMonitoringAppForCall:(id)call;
- (void)_stopMonitoringPushToTalkAppProcess;
- (void)acquireIndefiniteProcessAssertionForCall:(id)call;
- (void)acquireTemporaryProcessAssertionForCall:(id)call;
- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingCalls:(id)calls andHoldingCalls:(id)holdingCalls;
- (void)callControllerHost:(id)host clientWithIdentifier:(id)identifier requestedTransaction:(id)transaction completion:(id)completion;
- (void)callSource:(id)source _reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion;
- (void)callSource:(id)source _reportedNewIncomingCallWithUUIDSilently:(id)silently update:(id)update;
- (void)callSource:(id)source registeredWithConfiguration:(id)configuration;
- (void)callSource:(id)source reportedAudioFinishedForCallWithUUID:(id)d;
- (void)callSource:(id)source reportedCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)callSource:(id)source reportedCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)callSource:(id)source reportedCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)callSource:(id)source reportedCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)callSource:(id)source reportedCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)callSource:(id)source reportedCallWithUUID:(id)d updated:(id)updated;
- (void)callSource:(id)source reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion;
- (void)callSource:(id)source reportedNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d connectedAtDate:(id)date;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)callSource:(id)source requestedTransaction:(id)transaction completion:(id)completion;
- (void)callSourceManager:(id)manager completedTransactionGroup:(id)group;
- (void)callSourcesChangedForCallSourceManager:(id)manager;
- (void)channelSourceManager:(id)manager completedTransactionGroup:(id)group;
- (void)channelSourcesChangedForChannelSourceManager:(id)manager;
- (void)didObserveBluetoothHangupCommand;
- (void)disconnectCalls:(id)calls whileHoldingCalls:(id)holdingCalls andUnholdingCalls:(id)unholdingCalls andUngroupingCalls:(id)ungroupingCalls;
- (void)groupCalls:(id)calls withCalls:(id)withCalls;
- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls;
- (void)holdOrEndOtherCallsBecauseCallWillBeginOutgoing:(id)outgoing;
- (void)invalidateIndefiniteProcessAssertionForCall:(id)call;
- (void)invalidateProcessAssertionForBundleIdentifier:(id)identifier;
- (void)performCallAction:(id)action forCall:(id)call;
- (void)performCallActions:(id)actions forCall:(id)call;
- (void)performChannelAction:(id)action forCall:(id)call;
- (void)performStartCallAction:(id)action forCall:(id)call;
- (void)presentAccessoryButtonEventsEnabledNotice;
- (void)presentIncomingTransmissionNotice;
- (void)providerSource:(id)source registeredWithConfiguration:(id)configuration;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d connectedAtDate:(id)date;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d updated:(id)updated;
- (void)providerSource:(id)source reportedIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler;
- (void)providerSource:(id)source reportedIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler;
- (void)providerSource:(id)source requestedTransaction:(id)transaction completionHandler:(id)handler;
- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain;
- (void)pullCallWithHandoffActivityUserInfo:(id)info completion:(id)completion;
- (void)registerCall:(id)call;
- (void)restorePersistedBargeCallsIfNecessary;
- (void)screenTimeCallFilter:(id)filter didChangeAllowed:(BOOL)allowed forCallUUID:(id)d;
- (void)sendMMIOrUSSDCodeWithRequest:(id)request;
- (void)setCallProviderManager:(id)manager;
- (void)setTTYType:(int)type forCalls:(id)calls;
- (void)setUplinkMuted:(BOOL)muted forCalls:(id)calls userInitiated:(BOOL)initiated;
- (void)startObservingBluetoothHangupCommands;
- (void)startTrackingCall:(id)call;
- (void)stopObservingBluetoothHangupCommands;
- (void)stopTrackingCall:(id)call;
- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group;
- (void)updateFilteredOutReasonForCall:(id)call WithError:(id)error;
@end

@implementation CSDProviderCallDataSource

- (CXCallSource)telephonyCallSource
{
  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  v3 = [callSourceManager callSourceWithIdentifier:@"com.apple.coretelephony"];

  return v3;
}

- (void)_commitUncommittedTransactions
{
  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  [callSourceManager commitUncommittedTransactions];
}

- (CSDRelayCallDataSource)relayCallDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_relayCallDataSource);

  return WeakRetained;
}

- (id)callGroupUUIDToCalls
{
  v3 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v5 = [calls countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(calls);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        callGroupUUID = [v9 callGroupUUID];

        if (callGroupUUID)
        {
          callGroupUUID2 = [v9 callGroupUUID];
          v12 = [v3 objectForKeyedSubscript:callGroupUUID2];

          if (v12)
          {
            callGroupUUID3 = [v9 callGroupUUID];
            callGroupUUID5 = [v3 objectForKeyedSubscript:callGroupUUID3];
            v15 = [callGroupUUID5 arrayByAddingObject:v9];
            callGroupUUID4 = [v9 callGroupUUID];
            [v3 setObject:v15 forKeyedSubscript:callGroupUUID4];
          }

          else
          {
            v23 = v9;
            callGroupUUID3 = [NSArray arrayWithObjects:&v23 count:1];
            callGroupUUID5 = [v9 callGroupUUID];
            [v3 setObject:callGroupUUID3 forKeyedSubscript:callGroupUUID5];
          }
        }
      }

      v6 = [calls countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)_callWithUUID:(id)d providerIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v9 = [calls countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v19 + 1) + 8 * v13);

        uniqueProxyIdentifierUUID = [v11 uniqueProxyIdentifierUUID];
        if ([uniqueProxyIdentifierUUID isEqual:dCopy])
        {
          providerIdentifier = [v11 providerIdentifier];
          v17 = [providerIdentifier isEqualToString:identifierCopy];

          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [calls countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)_activeStandardCallExists
{
  calls = [(CSDCallDataSource *)self calls];
  v3 = [calls tu_containsObjectPassingTest:&stru_10061BC88];

  return v3;
}

- (void)_performTransaction:(id)transaction onChannelSource:(id)source
{
  transactionCopy = transaction;
  sourceCopy = source;
  callStateController = [(CSDCallDataSource *)self callStateController];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = transactionCopy;
  actions = [transactionCopy actions];
  v10 = [actions countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(actions);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v16 = sub_100004778(isKindOfClass);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating new call due to requested action: %@", buf, 0xCu);
          }

          v17 = [CSDProviderBargeCall callForChannelSource:sourceCopy joinAction:v14];
          [callStateController setCallDelegatesIfNeeded:v17];
          [callStateController propertiesChangedForCall:v17];
        }
      }

      v11 = [actions countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  actions2 = [v26 actions];
  v19 = [actions2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(actions2);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
        [channelSourceManager addAction:v23 toUncommittedTransactionForChannelSource:sourceCopy];
      }

      v20 = [actions2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  channelSourceManager2 = [(CSDProviderCallDataSource *)self channelSourceManager];
  [channelSourceManager2 commitUncommittedTransactions];
}

- (void)_processCompletedChannelAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v15 = sub_100004778(isKindOfClass);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100475204(actionCopy, callCopy);
    }

    v9 = 0;
    goto LABEL_61;
  }

  v9 = callCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    state = [actionCopy state];
    v11 = sub_100004778(state);
    v12 = v11;
    if (state == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138412290;
        v40 = actionCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fulfilled channel connect action %@", &v39, 0xCu);
      }

      v13 = +[CSDPersistedChannelRegistry sharedInstance];
      [v13 notePushToTalkChannelConnectedForCall:v9];

      [v9 setTransmissionState:1];
      v14 = +[NSDate date];
      [v9 setDateConnected:v14];

      [v9 setHeld:1];
      [(CSDProviderCallDataSource *)self startObservingBluetoothHangupCommands];
      [(CSDProviderCallDataSource *)self _startMonitoringAppForCall:v9];
      [v9 playSoundForSoundType:18 completion:0];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100475470();
      }

      [v9 setTransmissionState:0];
      v22 = +[NSDate date];
      [v9 setDateEnded:v22];
    }

    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = actionCopy;
    state2 = [v16 state];
    v18 = sub_100004778(state2);
    v19 = v18;
    if (state2 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138412290;
        v40 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Fulfilled channel leave action %@", &v39, 0xCu);
      }

      [(CSDProviderCallDataSource *)self stopObservingBluetoothHangupCommands];
      [(CSDProviderCallDataSource *)self _stopMonitoringPushToTalkAppProcess];
      [v9 setTransmissionState:0];
      leaveDate = [v16 leaveDate];
      [v9 setDateEnded:leaveDate];

      v21 = +[CSDPersistedChannelRegistry sharedInstance];
      [v21 tearDownPersistedChannelForCall:v9 teardownType:1];

      [v9 playSoundForSoundType:19 completion:0];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100475408();
      }

      [v9 setTransmissionState:0];
      v27 = +[NSDate date];
      [v9 setDateEnded:v27];

      [v9 setEndedReason:1];
      v28 = +[CSDPersistedChannelRegistry sharedInstance];
      [v28 tearDownPersistedChannelForCall:v9 teardownType:3];
    }

LABEL_27:

    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    state3 = [actionCopy state];
    v24 = sub_100004778(state3);
    v25 = v24;
    if (state3 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138412290;
        v40 = actionCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Fufilled channel transmit start action %@", &v39, 0xCu);
      }

      if ([v9 transmissionState] == 2)
      {
        v26 = [v9 transmissionState] | 0xC;
      }

      else
      {
        v26 = 12;
      }

      [v9 setTransmissionState:v26];
      featureFlags = [(CSDProviderCallDataSource *)self featureFlags];
      sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

      if (sessionBasedMutingEnabled)
      {
        [v9 setUplinkMuted:1];
      }

      else
      {
        [v9 setUnderlyingUplinkMuted:1];
      }

      [v9 setHeld:0];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1004753A0();
      }

      if (([v9 transmissionState] & 2) != 0)
      {
        [v9 setTransmissionState:2];
      }

      else
      {
        [v9 setTransmissionState:1];
        [v9 setHeld:1];
      }

      [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:v9];
      [v9 playSoundForSoundType:22 completion:0];
    }

    [v9 setDeferredTransmitStartAction:0];
  }

  else
  {
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();
    state4 = [actionCopy state];
    v31 = sub_100004778(state4);
    v16 = v31;
    if ((v29 & 1) == 0)
    {
      if (state4 == 1)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138412290;
          v40 = actionCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fulfilled action %@", &v39, 0xCu);
        }
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1004752D0();
      }

      goto LABEL_27;
    }

    if (state4 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138412290;
        v40 = actionCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fufilled channel transmit stop action %@", &v39, 0xCu);
      }

      transmissionState = [v9 transmissionState];
      v33 = (transmissionState & 2) == 0;
      if ((transmissionState & 2) != 0)
      {
        v34 = 10;
      }

      else
      {
        v34 = 9;
      }

      [v9 setTransmissionState:v34];
      [v9 playSoundForTransmissionState:objc_msgSend(v9 completion:{"transmissionState"), 0}];
      [v9 setTransmissionState:{objc_msgSend(v9, "transmissionState") & 0xFFFFFFFFFFFFFFF7}];
      [v9 setHeld:v33];
    }

    else
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100475338();
      }

      [v9 disconnectWithReason:14];
    }

    [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:v9];
  }

LABEL_59:
  if ([actionCopy state]== 2)
  {
    v15 = +[CSDReportingController sharedInstance];
    [v15 reportProviderFailedWithAction:actionCopy forCall:v9];
LABEL_61:
  }
}

- (void)_processRequestedTransaction:(id)transaction fromProviderSource:(id)source completionHandler:(id)handler
{
  transactionCopy = transaction;
  sourceCopy = source;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = sourceCopy;
    v16 = 0;
    v12 = [(CSDProviderCallDataSource *)self _shouldAllowTransaction:transactionCopy forChannelSource:v11 shouldValidateUserIntent:1 error:&v16];
    v13 = v16;
    v14 = sub_100004778(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *buf = 138412290;
        v18 = transactionCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Allowing transaction %@", buf, 0xCu);
      }

      [(CSDProviderCallDataSource *)self _performTransaction:transactionCopy onChannelSource:v11];
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        v18 = transactionCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transaction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13);
}

- (BOOL)_shouldAllowAction:(id)action forChannelSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error
{
  intentCopy = intent;
  actionCopy = action;
  sourceCopy = source;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v13 = actionCopy;
    channelUUID = [v13 channelUUID];
    identifier = [sourceCopy identifier];
    v16 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID providerIdentifier:identifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = +[CSDPersistedChannelRegistry sharedInstance];
      activePersistedChannelIdentity = [v17 activePersistedChannelIdentity];

      v19 = [(CSDProviderCallDataSource *)self _isChannelSourceAppForeground:sourceCopy];
      v20 = v19;
      if (activePersistedChannelIdentity)
      {
        errorCopy = error;
        v21 = v16;
        v22 = channelUUID;
        bundleIdentifier = [activePersistedChannelIdentity bundleIdentifier];
        bundleIdentifier2 = [sourceCopy bundleIdentifier];
        v25 = [bundleIdentifier isEqualToString:bundleIdentifier2];

        v27 = sub_100004778(v26);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        channelUUID = v22;
        if (v25)
        {
          if (v28)
          {
            *buf = 138412290;
            v64 = v22;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Allowing join action to proceed for UUID %@. App has a persisted channel on file.", buf, 0xCu);
          }

          v29 = 0;
          v16 = v21;
        }

        else
        {
          if (v28)
          {
            *buf = 138412290;
            v64 = v22;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Denying join action for UUID %@. There is some other app with the channel.", buf, 0xCu);
          }

          v16 = v21;
          if (v20)
          {
            v38 = 3;
          }

          else
          {
            v38 = 11;
          }

          v29 = [NSError cx_channelErrorWithCode:v38];
        }

        error = errorCopy;
      }

      else
      {
        v36 = sub_100004778(v19);
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v37)
          {
            *buf = 138412290;
            v64 = channelUUID;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Allowing join action to proceed for UUID %@. No persisted channel on file and app is FG", buf, 0xCu);
          }

          v29 = 0;
        }

        else
        {
          if (v37)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Denying channel join because app not foreground.", buf, 2u);
          }

          v29 = [NSError cx_channelErrorWithCode:11];
        }
      }

      dateConnected = [v16 dateConnected];

      if (dateConnected)
      {
        v43 = sub_100004778(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = channelUUID;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Denying join action; found existing joined channel with UUID %@", buf, 0xCu);
        }

        v44 = [NSError cx_channelErrorWithCode:3];

        v29 = v44;
      }

      goto LABEL_46;
    }

    objc_opt_class();
    v31 = objc_opt_isKindOfClass();
    if (v31)
    {
      if (!v16 || ([v16 dateConnected], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
      {
        v33 = sub_100004778(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = channelUUID;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Denying leave action; could not find a joined channel with UUID %@", buf, 0xCu);
        }

        v29 = [NSError cx_channelErrorWithCode:4];
        goto LABEL_46;
      }

LABEL_34:
      v29 = 0;
      goto LABEL_46;
    }

    objc_opt_class();
    v34 = objc_opt_isKindOfClass();
    if (v34)
    {
      if (v16 && ([v16 dateConnected], v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
      {
        v29 = 0;
      }

      else
      {
        v47 = sub_100004778(v34);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = channelUUID;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; could not find a joined channel with UUID %@", buf, 0xCu);
        }

        v29 = [NSError cx_channelErrorWithCode:4];
      }

      if ([v16 transmissionMode] == 2)
      {
        v61 = channelUUID;
        v48 = sub_100004778(2);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; channel is is in listen only mode.", buf, 2u);
        }

        v49 = [NSError cx_channelErrorWithCode:12];

        v29 = v49;
        channelUUID = v61;
      }

      if ([v16 isReceivingTransmission])
      {
        transmissionMode = [v16 transmissionMode];
        if (transmissionMode)
        {
          v62 = channelUUID;
          v51 = sub_100004778(transmissionMode);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; channel is already receiving transmission and mode is not full-duplex.", buf, 2u);
          }

          v52 = [NSError cx_channelErrorWithCode:6];

          v29 = v52;
          channelUUID = v62;
        }
      }

      if (intentCopy)
      {
        v53 = [(CSDProviderCallDataSource *)self _meetsRequirementsToBeginTransmitting:sourceCopy];
        if ((v53 & 1) == 0)
        {
          v54 = sub_100004778(v53);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = channelUUID;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; app not foreground %@", buf, 0xCu);
          }

          v55 = 11;
LABEL_74:
          v59 = [NSError cx_channelErrorWithCode:v55];

          v29 = v59;
        }
      }

LABEL_46:

      if (!error)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    objc_opt_class();
    v39 = objc_opt_isKindOfClass();
    if ((v39 & 1) == 0)
    {
      goto LABEL_34;
    }

    if (v16 && ([v16 dateConnected], v40 = objc_claimAutoreleasedReturnValue(), v40, v40))
    {
      v29 = 0;
    }

    else
    {
      v56 = sub_100004778(v39);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = channelUUID;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; could not find a joined channel with UUID %@", buf, 0xCu);
      }

      v29 = [NSError cx_channelErrorWithCode:4];
      if (!v16)
      {
        goto LABEL_46;
      }
    }

    isSendingTransmission = [v16 isSendingTransmission];
    if (isSendingTransmission)
    {
      goto LABEL_46;
    }

    v58 = sub_100004778(isSendingTransmission);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = channelUUID;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit stop action; channel was not in a transmitting state %@", buf, 0xCu);
    }

    v55 = 7;
    goto LABEL_74;
  }

  v30 = sub_100004778(isKindOfClass);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = actionCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Denying invalid action %@", buf, 0xCu);
  }

  v29 = [NSError cx_requestTransactionErrorWithCode:6];
  if (error)
  {
LABEL_47:
    if (v29)
    {
      v45 = v29;
      *error = v29;
    }
  }

LABEL_49:

  return v29 == 0;
}

- (BOOL)_shouldAllowTransaction:(id)transaction forChannelSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error
{
  intentCopy = intent;
  transactionCopy = transaction;
  sourceCopy = source;
  actions = [transactionCopy actions];
  v13 = [actions count];

  if (v13)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    actions2 = [transactionCopy actions];
    v16 = [actions2 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(actions2);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          v26 = 0;
          [(CSDProviderCallDataSource *)self _shouldAllowAction:v20 forChannelSource:sourceCopy shouldValidateUserIntent:intentCopy error:&v26];
          v21 = v26;
          if (v21)
          {
            v22 = v21;
            goto LABEL_12;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [actions2 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_12:

    if (error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = sub_100004778(v14);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction because it is empty: %@", buf, 0xCu);
    }

    v22 = [NSError cx_requestTransactionErrorWithCode:3];
    if (error)
    {
LABEL_13:
      v23 = v22;
      *error = v22;
    }
  }

  return v22 == 0;
}

- (void)restorePersistedBargeCallsIfNecessary
{
  v3 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v3 activePersistedChannelIdentity];

  if (activePersistedChannelIdentity)
  {
    channelUUID = [activePersistedChannelIdentity channelUUID];
    v7 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID];

    v9 = sub_100004778(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        uniqueProxyIdentifier = [0 uniqueProxyIdentifier];
        v31 = 138412546;
        v32 = uniqueProxyIdentifier;
        v33 = 2112;
        v34 = activePersistedChannelIdentity;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found existing call with identifier %@; will not attempt to restore a call from persisted channel identity %@", &v31, 0x16u);
      }
    }

    else
    {
      if (v10)
      {
        v31 = 138412290;
        v32 = activePersistedChannelIdentity;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to restore a call from persisted channel identity %@", &v31, 0xCu);
      }

      v9 = [CSDProviderBargeCall callForChannelIdentity:activePersistedChannelIdentity];
      applicationRecord = [v9 applicationRecord];
      v13 = sub_100004778(applicationRecord);
      v14 = v13;
      if (applicationRecord)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          uniqueProxyIdentifier2 = [v9 uniqueProxyIdentifier];
          v31 = 138412546;
          v32 = uniqueProxyIdentifier2;
          v33 = 2112;
          v34 = activePersistedChannelIdentity;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Restoring call with identifier %@ from persisted channel identity %@", &v31, 0x16u);
        }

        channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
        providerIdentifier = [v9 providerIdentifier];
        v18 = [channelSourceManager channelSourceForIdentifier:providerIdentifier];

        provider = [v9 provider];
        v20 = provider | v18;

        if (v20)
        {
          provider2 = [v9 provider];

          if (!provider2 && v18)
          {
            v24 = sub_100004778(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              uniqueProxyIdentifierUUID = [v9 uniqueProxyIdentifierUUID];
              v31 = 138412546;
              v32 = uniqueProxyIdentifierUUID;
              v33 = 2112;
              v34 = v18;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Adding channel source %@ to restored channel with UUID %@", &v31, 0x16u);
            }

            [v9 setProviderSource:v18];
          }
        }

        else
        {
          v27 = sub_100004778(v21);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 138412290;
            v32 = activePersistedChannelIdentity;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Synthesizing and registering persisted barge call's provider %@", &v31, 0xCu);
          }

          v28 = [[CSDChannelProvider alloc] initWithApplicationRecord:applicationRecord];
          channelProviderManager = [(CSDProviderCallDataSource *)self channelProviderManager];
          [channelProviderManager registerProvider:v28];
        }

        callStateController = [(CSDCallDataSource *)self callStateController];
        [callStateController setCallDelegatesIfNeeded:v9];
        [callStateController propertiesChangedForCall:v9];
        [v9 setTransmissionState:1];
        v30 = +[NSDate date];
        [v9 setDateConnected:v30];

        [v9 setHeld:1];
        [(CSDProviderCallDataSource *)self startObservingBluetoothHangupCommands];
        [(CSDProviderCallDataSource *)self _startMonitoringAppForCall:v9];
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1004754D8();
        }

        v18 = +[CSDPersistedChannelRegistry sharedInstance];
        callStateController = [activePersistedChannelIdentity bundleIdentifier];
        [v18 tearDownPersistedChannelForBundleIdentifier:callStateController teardownType:2];
      }
    }
  }

  else
  {
    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A persisted channel identity was not found, no call restoration will be attempted", &v31, 2u);
    }
  }
}

- (BOOL)transactionContainsChannelActions:(id)actions
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  actions = [actions actions];
  v4 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(actions);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)channelSourceManager:(id)manager completedTransactionGroup:(id)group
{
  managerCopy = manager;
  groupCopy = group;
  queue = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113300;
  block[3] = &unk_100619E58;
  v12 = managerCopy;
  v13 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  v10 = managerCopy;
  dispatch_async(queue, block);
}

- (void)channelSourcesChangedForChannelSourceManager:(id)manager
{
  managerCopy = manager;
  queue = [(CSDCallDataSource *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113638;
  v7[3] = &unk_100619D88;
  v8 = managerCopy;
  selfCopy = self;
  v6 = managerCopy;
  dispatch_async(queue, v7);
}

- (void)providerSource:(id)source requestedTransaction:(id)transaction completionHandler:(id)handler
{
  sourceCopy = source;
  transactionCopy = transaction;
  handlerCopy = handler;
  v11 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = sourceCopy;
    v14 = 2112;
    v15 = transactionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Provider source %@ received requested transaction %@", &v12, 0x16u);
  }

  [(CSDProviderCallDataSource *)self _processRequestedTransaction:transactionCopy fromProviderSource:sourceCopy completionHandler:handlerCopy];
}

- (void)providerSource:(id)source registeredWithConfiguration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  v8 = sub_100004778(configurationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = sourceCopy;
    v24 = 2112;
    v25 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Channel source %@ registered with configuration %@", &v22, 0x16u);
  }

  v9 = [[CSDChannelProvider alloc] initWithSource:sourceCopy configuration:configurationCopy];
  channelProviderManager = [(CSDProviderCallDataSource *)self channelProviderManager];
  [channelProviderManager registerProvider:v9];

  v11 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v11 activePersistedChannelIdentity];

  identifier = [(CSDChannelProvider *)v9 identifier];
  applicationIdentifier = [activePersistedChannelIdentity applicationIdentifier];
  v15 = [identifier isEqualToString:applicationIdentifier];

  if (v15)
  {
    [(CSDProviderCallDataSource *)self restorePersistedBargeCallsIfNecessary];
    channelUUID = [activePersistedChannelIdentity channelUUID];
    applicationIdentifier2 = [activePersistedChannelIdentity applicationIdentifier];
    v18 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID providerIdentifier:applicationIdentifier2];

    callStateController = sub_100004778(v19);
    v21 = os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v21)
      {
        v22 = 138412546;
        v23 = sourceCopy;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "Channel source flushing properties %@ for restored call %@", &v22, 0x16u);
      }

      callStateController = [(CSDCallDataSource *)self callStateController];
      [callStateController propertiesChangedForCall:v18];
    }

    else if (v21)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "Channel source couldn't find call to flush properties", &v22, 2u);
    }
  }
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d startedConnectingAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = sourceCopy;
    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ started connecting channel with UUID %@ at date %@", &v19, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (!v13)
  {
    v17 = sub_100004778(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = sourceCopy;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v19, 0x16u);
    }

    goto LABEL_12;
  }

  dateStartedConnecting = [v13 dateStartedConnecting];

  if (dateStartedConnecting)
  {
    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
      v19 = 138412290;
      v20 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a started connecting date.", &v19, 0xCu);
    }

    goto LABEL_12;
  }

  if (!dateCopy)
  {
    v17 = +[NSDate date];
    [v13 setDateStartedConnecting:v17];
LABEL_12:

    goto LABEL_13;
  }

  [v13 setDateStartedConnecting:dateCopy];
LABEL_13:
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d connectedAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = sourceCopy;
    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ connected channel with UUID %@ at date %@", &v19, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (!v13)
  {
    v17 = sub_100004778(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = sourceCopy;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v19, 0x16u);
    }

    goto LABEL_12;
  }

  dateConnected = [v13 dateConnected];

  if (dateConnected)
  {
    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
      v19 = 138412290;
      v20 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a connected date.", &v19, 0xCu);
    }

    goto LABEL_12;
  }

  if (!dateCopy)
  {
    v17 = +[NSDate date];
    [v13 setDateConnected:v17];
LABEL_12:

    goto LABEL_13;
  }

  [v13 setDateConnected:dateCopy];
LABEL_13:
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v13 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413058;
    v23 = sourceCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2048;
    reasonCopy = reason;
    v28 = 2112;
    v29 = dateCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel source %@ disconnected channel with UUID %@ with reason %ld at date %@", &v22, 0x2Au);
  }

  identifier = [sourceCopy identifier];
  v15 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (!v15)
  {
    v19 = sub_100004778(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = sourceCopy;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v22, 0x16u);
    }

    goto LABEL_9;
  }

  dateEnded = [v15 dateEnded];

  if (dateEnded)
  {
    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [v15 uniqueProxyIdentifier];
      v22 = 138412290;
      v23 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a disconnected date.", &v22, 0xCu);
    }

LABEL_9:

    goto LABEL_16;
  }

  if (reason != 1)
  {
    reason = -1;
  }

  if (dateCopy)
  {
    [v15 setDateEnded:dateCopy];
  }

  else
  {
    v21 = +[NSDate date];
    [v15 setDateEnded:v21];
  }

  [v15 setEndedReason:reason];
LABEL_16:
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d updated:(id)updated
{
  sourceCopy = source;
  dCopy = d;
  updatedCopy = updated;
  v11 = sub_100004778(updatedCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = sourceCopy;
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ updated channel with UUID %@ with update %@", &v18, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  isSendingTransmission = [v13 isSendingTransmission];
  if (isSendingTransmission)
  {
    isSendingTransmission = [updatedCopy hasSet];
    if ((isSendingTransmission & 0x200) != 0)
    {
      v15 = v13;
      if ([updatedCopy transmissionMode] == 2 || objc_msgSend(v15, "isReceivingTransmission") && objc_msgSend(updatedCopy, "transmissionMode") == 1)
      {
        [v15 stopTransmissionWithOriginator:2];
      }
    }
  }

  if (v13)
  {
    if (([updatedCopy hasSet] & 0x400) != 0)
    {
      accessoryButtonEventsEnabled = [updatedCopy accessoryButtonEventsEnabled];
      if (accessoryButtonEventsEnabled != [v13 accessoryButtonEventsEnabled])
      {
        [(CSDProviderCallDataSource *)self presentAccessoryButtonEventsEnabledNotice];
      }
    }

    csd_callUpdate = [updatedCopy csd_callUpdate];
    [v13 updateWithCallUpdate:csd_callUpdate];
  }

  else
  {
    csd_callUpdate = sub_100004778(isSendingTransmission);
    if (os_log_type_enabled(csd_callUpdate, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = sourceCopy;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, csd_callUpdate, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v18, 0x16u);
    }
  }
}

- (void)providerSource:(id)source reportedIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler
{
  sourceCopy = source;
  dCopy = d;
  handlerCopy = handler;
  v13 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = uUIDString;
    v25 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel source %@ reported a channel with UUID %@ ended an incoming transmission with reason %ld", &v21, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (v16)
  {
    if (([v16 transmissionState] & 2) != 0)
    {
      [v16 setActiveRemoteParticipant:0];
      if (![v16 transmissionMode] && (objc_msgSend(v16, "transmissionState") & 4) != 0)
      {
        [v16 setTransmissionState:12];
      }

      else
      {
        [v16 setTransmissionState:1];
        [v16 hold];
        [v16 setHeld:1];
      }

      v20 = 0;
      if (handlerCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v18 = 7;
  }

  else
  {
    v19 = sub_100004778(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = sourceCopy;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v21, 0x16u);
    }

    v18 = 4;
  }

  v20 = [NSError cx_channelErrorWithCode:v18];
  if (handlerCopy)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, v20);
  }

LABEL_11:
}

- (void)providerSource:(id)source reportedIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler
{
  transmissionCopy = transmission;
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  handlerCopy = handler;
  v16 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v39 = 138412802;
    v40 = sourceCopy;
    v41 = 2112;
    v42 = uUIDString;
    v43 = 2112;
    v44 = updateCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Channel source %@ reported a channel with UUID %@ started an incoming transmission with update %@", &v39, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v19 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  activeRemoteParticipant = [updateCopy activeRemoteParticipant];
  name = [activeRemoteParticipant name];
  v22 = [name length];

  if (v22)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"CSDBargeCallSetValidActiveRemoteParticipantNameNotification" object:v19];
  }

  _activeStandardCallExists = [(CSDProviderCallDataSource *)self _activeStandardCallExists];
  if (_activeStandardCallExists)
  {
    v25 = 2;
    goto LABEL_29;
  }

  if (v19)
  {
    if ([v19 transmissionState])
    {
      [v19 setTransmissionState:2];
      csd_callUpdate = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate notifyDelegate:0];

      [v19 unhold];
      [v19 setHeld:0];
      goto LABEL_21;
    }

    if (([v19 transmissionState] & 2) != 0)
    {
      csd_callUpdate2 = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate2 notifyDelegate:1];

      goto LABEL_24;
    }

    if ([v19 transmissionMode] == 1)
    {
      transmissionState = [v19 transmissionState];
      if ((transmissionState & 4) != 0 && transmissionCopy)
      {
        v27 = sub_100004778(transmissionState);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Replacing outgoing PTT transmission with incoming active remote speaker.", &v39, 2u);
        }

        [v19 setTransmissionState:{objc_msgSend(v19, "transmissionState") | 2}];
        csd_callUpdate3 = [updateCopy csd_callUpdate];
        [v19 updateWithCallUpdate:csd_callUpdate3 notifyDelegate:0];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v29 = v19;
        v30 = [CXChannelTransmitStopAction alloc];
        uniqueProxyIdentifierUUID = [v29 uniqueProxyIdentifierUUID];
        csd_callUpdate4 = [v30 initWithChannelUUID:uniqueProxyIdentifierUUID];

        [csd_callUpdate4 setOriginator:2];
        [(CSDProviderCallDataSource *)self performChannelAction:csd_callUpdate4 forCall:v29];

        goto LABEL_33;
      }
    }

    if (![v19 transmissionMode] && (objc_msgSend(v19, "transmissionState") & 4) != 0)
    {
      [v19 setTransmissionState:{objc_msgSend(v19, "transmissionState") | 2}];
      csd_callUpdate4 = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate4 notifyDelegate:0];
LABEL_33:

LABEL_21:
      providerDisplayMonitor = [v19 providerDisplayMonitor];
      isVisible = [providerDisplayMonitor isVisible];

      if ((isVisible & 1) == 0)
      {
        [(CSDProviderCallDataSource *)self presentIncomingTransmissionNotice];
      }

LABEL_24:
      v38 = 0;
      if (!handlerCopy)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v25 = 6;
  }

  else
  {
    v33 = sub_100004778(_activeStandardCallExists);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412546;
      v40 = sourceCopy;
      v41 = 2112;
      v42 = dCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v39, 0x16u);
    }

    v25 = 4;
  }

LABEL_29:
  v38 = [NSError cx_channelErrorWithCode:v25];
  if (handlerCopy)
  {
LABEL_30:
    handlerCopy[2](handlerCopy, v38);
  }

LABEL_31:
}

- (void)presentIncomingTransmissionNotice
{
  v3 = +[NSURL faceTimeShowIncomingTransmissionNoticeUIURL];
  v2 = v3;
  TUOpenURLWithCompletion();
}

- (void)presentAccessoryButtonEventsEnabledNotice
{
  v3 = +[NSURL faceTimeShowAccessoryButtonEventsNoticeUIURL];
  v2 = v3;
  TUOpenURLWithCompletion();
}

- (BOOL)_meetsRequirementsToBeginTransmitting:(id)transmitting
{
  transmittingCopy = transmitting;
  v5 = [(CSDProviderCallDataSource *)self _isChannelSourceAppForeground:transmittingCopy];
  isPermittedToUseBluetoothAccessories = [transmittingCopy isPermittedToUseBluetoothAccessories];
  LOBYTE(self) = [(CSDProviderCallDataSource *)self _isChannelSourceAppRunningPTTTransmissionAppIntent:transmittingCopy];

  return (self | isPermittedToUseBluetoothAccessories | v5) & 1;
}

- (BOOL)_isChannelSourceAppForeground:(id)foreground
{
  foregroundCopy = foreground;
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115214;
  block[3] = &unk_10061AE20;
  v11 = processObserver;
  v12 = foregroundCopy;
  v13 = &v14;
  v7 = foregroundCopy;
  v8 = processObserver;
  dispatch_sync(processObserverQueue, block);

  LOBYTE(processObserverQueue) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return processObserverQueue;
}

- (BOOL)_isChannelSourceAppRunningPTTTransmissionAppIntent:(id)intent
{
  bundleIdentifier = [intent bundleIdentifier];
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:bundleIdentifier];

  v16 = 0;
  v6 = [RBSProcessHandle handleForPredicate:v5 error:&v16];
  v7 = v16;
  v8 = v7;
  if (v7)
  {
    assertions = sub_100004778(v7);
    if (os_log_type_enabled(assertions, OS_LOG_TYPE_ERROR))
    {
      sub_1004755B0();
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    currentState = [v6 currentState];
    assertions = [currentState assertions];

    if (assertions)
    {
      v13 = [assertions valueForKey:@"domain"];
      v10 = [(CSDProviderCallDataSource *)self _channelSourceAssertionsContainsPTTTransmissionIntent:v13];
    }

    else
    {
      v10 = 0;
    }

    v14 = sub_100004778(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ChannelSource has PushToTalkTransmissionIntent assertion: %d", buf, 8u);
    }
  }

  return v10;
}

- (BOOL)_channelSourceAssertionsContainsPTTTransmissionIntent:(id)intent
{
  if (intent)
  {
    return [intent containsObject:@"com.apple.siri.pushtotalk:PTTActivation"];
  }

  else
  {
    return 0;
  }
}

- (void)startObservingBluetoothHangupCommands
{
  btHangupObserver = [(CSDProviderCallDataSource *)self btHangupObserver];
  [btHangupObserver setDelegate:self];

  btHangupObserver2 = [(CSDProviderCallDataSource *)self btHangupObserver];
  [btHangupObserver2 startObservingHangupCommands];
}

- (void)stopObservingBluetoothHangupCommands
{
  btHangupObserver = [(CSDProviderCallDataSource *)self btHangupObserver];
  [btHangupObserver stopObservingHangupCommands];
}

- (void)didObserveBluetoothHangupCommand
{
  v3 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v3 activePersistedChannelIdentity];

  channelUUID = [activePersistedChannelIdentity channelUUID];
  v5 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID];
  provider = [v5 provider];
  bundleIdentifier = [provider bundleIdentifier];
  bundleIdentifier2 = [activePersistedChannelIdentity bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:bundleIdentifier2];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
      if ([v10 transmissionMode] != 2)
      {
        if ([v10 isSendingTransmission])
        {
          [v10 stopTransmissionWithOriginator:1];
        }

        else if (([v10 isHeld] & 1) != 0 || objc_msgSend(v10, "isReceivingTransmission") && !objc_msgSend(v10, "transmissionMode"))
        {
          [v10 startTransmissionWithOriginator:1];
        }
      }
    }
  }
}

- (void)acquireTemporaryProcessAssertionForCall:(id)call
{
  callCopy = call;
  applicationRecord = [callCopy applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];
  v7 = [CSDVoIPProcessAssertion processAssertionWithBundleIdentifier:bundleIdentifier];

  acquire = [v7 acquire];
  LODWORD(bundleIdentifier) = acquire;
  v9 = sub_100004778(acquire);
  v10 = v9;
  if (bundleIdentifier)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      *buf = 134218242;
      v18 = v7;
      v19 = 2112;
      v20 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Taking temporary process assertion %p for barge call with identifier %@", buf, 0x16u);
    }

    v12 = dispatch_time(0, 15000000000);
    queue = [(CSDCallDataSource *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10011592C;
    v14[3] = &unk_100619D88;
    v15 = v7;
    v16 = callCopy;
    dispatch_after(v12, queue, v14);

    v10 = v15;
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100475618(v7, callCopy);
  }
}

- (void)acquireIndefiniteProcessAssertionForCall:(id)call
{
  callCopy = call;
  applicationRecord = [callCopy applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  if ([bundleIdentifier length])
  {
    processAssertionManager = [(CSDProviderCallDataSource *)self processAssertionManager];
    [processAssertionManager acquireProcessAssertionForBundleIdentifier:bundleIdentifier];
  }

  else
  {
    processAssertionManager = sub_100004778(0);
    if (os_log_type_enabled(processAssertionManager, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      v9 = 138412290;
      v10 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, processAssertionManager, OS_LOG_TYPE_DEFAULT, "Cannot obtain process assertion; bundle identifier not found for call with identifier %@.", &v9, 0xCu);
    }
  }
}

- (void)invalidateIndefiniteProcessAssertionForCall:(id)call
{
  applicationRecord = [call applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  [(CSDProviderCallDataSource *)self invalidateProcessAssertionForBundleIdentifier:bundleIdentifier];
}

- (void)invalidateProcessAssertionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    processAssertionManager = [(CSDProviderCallDataSource *)self processAssertionManager];
    [processAssertionManager invalidateProcessAssertionForBundleIdentifier:identifierCopy];
  }
}

- (id)channelProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  channelProviderManager = [(CSDProviderCallDataSource *)self channelProviderManager];
  v6 = [channelProviderManager providerForIdentifier:identifierCopy];

  return v6;
}

- (void)performChannelAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  v8 = sub_100004778(callCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = actionCopy;
    v34 = 2112;
    v35 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform action %@ for call %@", buf, 0x16u);
  }

  providerSource = [callCopy providerSource];

  if (providerSource)
  {
    providerSource2 = [callCopy providerSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      providerSource3 = [callCopy providerSource];
      if ([actionCopy originator] != 2 && -[CSDProviderCallDataSource channelSource:shouldProcessAction:error:](self, "channelSource:shouldProcessAction:error:", providerSource3, actionCopy, 0))
      {
        [(CSDProviderCallDataSource *)self acquireTemporaryProcessAssertionForCall:callCopy];
      }

      channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
      [channelSourceManager addAction:actionCopy toUncommittedTransactionForChannelSource:providerSource3];

      channelSourceManager2 = [(CSDProviderCallDataSource *)self channelSourceManager];
      [channelSourceManager2 commitUncommittedTransactions];

LABEL_23:
      goto LABEL_24;
    }

    v16 = sub_100004778(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      providerSource4 = [callCopy providerSource];
      *buf = 138412290;
      v33 = providerSource4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Provider source was not of type CXChannelSource: %@", buf, 0xCu);
    }

LABEL_18:

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      providerSource3 = actionCopy;
      v19 = objc_alloc_init(_LSOpenConfiguration);
      v30 = FBSOpenApplicationOptionKeyActivateSuspended;
      v31 = &__kCFBooleanTrue;
      v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [v19 setFrontBoardOptions:v20];

      applicationRecord = [callCopy applicationRecord];
      bundleIdentifier = [applicationRecord bundleIdentifier];

      if ([bundleIdentifier length])
      {
        v23 = +[LSApplicationWorkspace defaultWorkspace];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100116050;
        v25[3] = &unk_10061BCD8;
        v25[4] = self;
        v26 = callCopy;
        v27 = providerSource3;
        v28 = bundleIdentifier;
        v29 = v27;
        [v23 openApplicationWithBundleIdentifier:v28 configuration:v19 completionHandler:v25];
      }

      else
      {
        v24 = sub_100004778(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = providerSource3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Could not obtain bundle identifier; cannot process action %@", buf, 0xCu);
        }

        [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:callCopy];
      }

      goto LABEL_23;
    }

    v16 = sub_100004778(v18);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = actionCopy;
      v34 = 2112;
      v35 = callCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring action %@ until a provider source connects to call %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  [actionCopy fulfill];
  [(CSDProviderCallDataSource *)self _processCompletedChannelAction:actionCopy forCall:callCopy];
LABEL_24:
}

- (void)_startMonitoringAppForCall:(id)call
{
  callCopy = call;
  providerSource = [callCopy providerSource];
  bundleIdentifier = [providerSource bundleIdentifier];
  if (bundleIdentifier)
  {
    v7 = bundleIdentifier;
    providerSource2 = [callCopy providerSource];
    bundleIdentifier2 = [providerSource2 bundleIdentifier];
    v10 = [bundleIdentifier2 length];

    if (v10)
    {
      processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100116424;
      block[3] = &unk_100619D88;
      block[4] = self;
      v13 = callCopy;
      v21 = v13;
      dispatch_async(processObserverQueue, block);

      objc_initWeak(location, self);
      objc_copyWeak(&v18, location);
      v17 = v13;
      v14 = [(CSDProviderCallDataSource *)self processObserver:_NSConcreteStackBlock];
      [v14 setProcessStateChanged:&v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);

      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = sub_100004778(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BargeCall provider bundle identifier was empty so we are not able to start monitoring the process.", location, 2u);
  }

LABEL_8:
}

- (void)_processPushToTalkAppStateChangedForCall:(id)call withPID:(int)d processState:(int64_t)state
{
  v6 = *&d;
  callCopy = call;
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  providerSource = [callCopy providerSource];
  bundleIdentifier = [providerSource bundleIdentifier];
  v12 = [processObserver processIdentifiersForBundleIdentifier:bundleIdentifier];

  v13 = [v12 count];
  if (v13 >= 2)
  {
    v14 = sub_100004778(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      stateCopy = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] BargeCall provider source has multiple process identifiers: %@", buf, 0xCu);
    }
  }

  v15 = [NSNumber numberWithInt:v6];
  if (![v12 containsObject:v15])
  {
    goto LABEL_12;
  }

  if ([callCopy isSendingTransmission])
  {

LABEL_9:
    v18 = sub_100004778(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BargeCall provider source has changed process state to: %ld", buf, 0xCu);
    }

    queue = [(CSDCallDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100116758;
    block[3] = &unk_100619D38;
    v21 = callCopy;
    dispatch_async(queue, block);

    v15 = v21;
LABEL_12:

    goto LABEL_13;
  }

  isReceivingTransmission = [callCopy isReceivingTransmission];

  if (isReceivingTransmission)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (void)_stopMonitoringPushToTalkAppProcess
{
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  [processObserver setProcessStateChanged:0];
}

- (CSDProviderCallDataSource)initWithCallStateController:(id)controller queue:(id)queue assistantServicesObserver:(id)observer coreTelephonyClient:(id)client chManager:(id)manager callSourceManager:(id)sourceManager protectedAppsUtilities:(id)utilities conversationManager:(id)self0 communicationTrustScoreDataProvider:(id)self1 deviceSupport:(id)self2 featureFlags:(id)self3
{
  controllerCopy = controller;
  queueCopy = queue;
  obj = observer;
  observerCopy = observer;
  v21 = queueCopy;
  v117 = observerCopy;
  clientCopy = client;
  managerCopy = manager;
  sourceManagerCopy = sourceManager;
  utilitiesCopy = utilities;
  conversationManagerCopy = conversationManager;
  providerCopy = provider;
  supportCopy = support;
  flagsCopy = flags;
  v144.receiver = self;
  v144.super_class = CSDProviderCallDataSource;
  v121 = controllerCopy;
  v26 = [(CSDCallDataSource *)&v144 initWithCallStateController:controllerCopy queue:queueCopy];
  v27 = v26;
  if (v26)
  {
    v116 = providerCopy;
    objc_storeStrong(&v26->_assistantServicesObserver, obj);
    v28 = clientCopy;
    if (!clientCopy)
    {
      v28 = [[CSDCoreTelephonyClient alloc] initWithQueue:queueCopy shouldRegisterForECBMNotification:0];
    }

    objc_storeStrong(&v27->_coreTelephonyClient, v28);
    obja = clientCopy;
    if (!clientCopy)
    {
    }

    v29 = objc_alloc_init(NSMutableDictionary);
    pendingCallsToChatUUIDs = v27->_pendingCallsToChatUUIDs;
    v27->_pendingCallsToChatUUIDs = v29;

    incomingCallFilterQueryResult = v27->_incomingCallFilterQueryResult;
    v27->_incomingCallFilterQueryResult = &stru_10061FB80;

    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_1002530E4;
    v142[3] = &unk_10061FBA8;
    v32 = v121;
    v143 = v32;
    v33 = objc_retainBlock(v142);
    systemAllowsCall = v27->_systemAllowsCall;
    v27->_systemAllowsCall = v33;

    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_100253168;
    v140[3] = &unk_10061FBD0;
    v35 = v32;
    v141 = v35;
    v36 = objc_retainBlock(v140);
    callDirectoryAllowsCallFromSourceAddress = v27->_callDirectoryAllowsCallFromSourceAddress;
    v27->_callDirectoryAllowsCallFromSourceAddress = v36;

    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_1002531D0;
    v138[3] = &unk_10061FBD0;
    v38 = v35;
    v139 = v38;
    v39 = objc_retainBlock(v138);
    liveLookupExtensionsAllowCallsFromHandle = v27->_liveLookupExtensionsAllowCallsFromHandle;
    v27->_liveLookupExtensionsAllowCallsFromHandle = v39;

    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = sub_100253238;
    v136[3] = &unk_10061FBF8;
    v41 = v38;
    v137 = v41;
    v42 = objc_retainBlock(v136);
    blockedByExtension = v27->_blockedByExtension;
    v27->_blockedByExtension = v42;

    supportsPrimaryCalling = v27->_supportsPrimaryCalling;
    v27->_supportsPrimaryCalling = &stru_10061FC18;

    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v134[2] = sub_1002532C0;
    v134[3] = &unk_10061FC40;
    v45 = v41;
    v135 = v45;
    v46 = objc_retainBlock(v134);
    shouldPreferRelayOverDirectSecondaryCalling = v27->_shouldPreferRelayOverDirectSecondaryCalling;
    v27->_shouldPreferRelayOverDirectSecondaryCalling = v46;

    v48 = [[CSDVoIPProcessAssertionManager alloc] initWithSerialQueue:queueCopy];
    processAssertionManager = v27->_processAssertionManager;
    v27->_processAssertionManager = v48;

    v50 = objc_alloc_init(CSDCallFilterController);
    callFilterController = v27->_callFilterController;
    v27->_callFilterController = v50;

    v52 = v27->_callFilterController;
    v53 = [[CSDCommunicationHistoryCallFilter alloc] initWithChManager:managerCopy featureFlags:flagsCopy];
    [(CSDCallFilterController *)v52 addCallFilter:v53];

    v54 = v27->_callFilterController;
    v55 = [[CSDContactsCallFilter alloc] initWithFeatureFlags:flagsCopy];
    [(CSDCallFilterController *)v54 addCallFilter:v55];

    v56 = v27->_callFilterController;
    v57 = [[CSDOwnNumberCallFilter alloc] initWithQueue:v21];
    [(CSDCallFilterController *)v56 addCallFilter:v57];

    v58 = [[CSDSIMFocusCallFilter alloc] initWithQueue:v21];
    callFilterSIMFocus = v27->_callFilterSIMFocus;
    v27->_callFilterSIMFocus = v58;

    v60 = objc_opt_new();
    LODWORD(v57) = [v60 isClarityBoardEnabled];

    if (v57)
    {
      v61 = [[CSDClarityUICallFilter alloc] initWithQueue:v21];
      clarityUICallFilter = v27->_clarityUICallFilter;
      v27->_clarityUICallFilter = v61;

      [(CSDCallFilterController *)v27->_callFilterController addCallFilter:v27->_clarityUICallFilter];
    }

    v63 = [CSDScreenTimeCallFilter alloc];
    callProviderManager = [v45 callProviderManager];
    v65 = [(CSDScreenTimeCallFilter *)v63 initWithCallProviderManager:callProviderManager delegate:v27 queue:v21];
    screenTimeCallFilter = v27->_screenTimeCallFilter;
    v27->_screenTimeCallFilter = v65;

    [(CSDCallFilterController *)v27->_callFilterController addCallFilter:v27->_screenTimeCallFilter];
    objc_initWeak(&location, v27);
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_100253320;
    v131[3] = &unk_10061FC68;
    objc_copyWeak(&v132, &location);
    v67 = objc_retainBlock(v131);
    shouldFilterCall = v27->_shouldFilterCall;
    v27->_shouldFilterCall = v67;

    isAutoAnswerDeviceBlock = v27->_isAutoAnswerDeviceBlock;
    v27->_isAutoAnswerDeviceBlock = &stru_10061FC88;

    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_1002536FC;
    v129[3] = &unk_10061FC68;
    objc_copyWeak(&v130, &location);
    v70 = objc_retainBlock(v129);
    focusAllowsCall = v27->_focusAllowsCall;
    v27->_focusAllowsCall = v70;

    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_10025378C;
    v127[3] = &unk_10061FCB0;
    objc_copyWeak(&v128, &location);
    v72 = objc_retainBlock(v127);
    isEligibleBlock = v27->_isEligibleBlock;
    v27->_isEligibleBlock = v72;

    lowPowerModeEnabledBlock = v27->_lowPowerModeEnabledBlock;
    v27->_lowPowerModeEnabledBlock = &stru_10061FCD0;

    v27->_dispatchDelay = 2.0;
    v75 = sourceManagerCopy;
    v76 = sourceManagerCopy;
    if (!sourceManagerCopy)
    {
      v76 = [[CXCallSourceManager alloc] initWithDelegate:v27 queue:v21];
      v75 = 0;
    }

    objc_storeStrong(&v27->_callSourceManager, v76);
    if (!v75)
    {
    }

    v77 = [[CXCallControllerHost alloc] initWithDelegate:v27 delegateQueue:v21];
    callControllerHost = v27->_callControllerHost;
    v27->_callControllerHost = v77;

    v79 = [[CSDCallSourceFetcher alloc] initWithSerialQueue:v21];
    callSourceFetcher = v27->_callSourceFetcher;
    v27->_callSourceFetcher = v79;

    [(CSDCallSourceFetcher *)v27->_callSourceFetcher setDataSource:v27];
    v81 = +[NSMutableDictionary dictionary];
    pendingPulledCallContexts = v27->_pendingPulledCallContexts;
    v27->_pendingPulledCallContexts = v81;

    v83 = [CXInProcessCallSource alloc];
    v84 = TUPreferredFaceTimeBundleIdentifier();
    v85 = TUBundle();
    v86 = [v85 localizedStringForKey:@"FACETIME" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v87 = [v83 initWithIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider" bundleIdentifier:v84 fallbackLocalizedName:v86];
    faceTimeCallSource = v27->_faceTimeCallSource;
    v27->_faceTimeCallSource = v87;

    v89 = [[CSDFaceTimeProviderDelegate alloc] initWithCallSource:v27->_faceTimeCallSource queue:v21 chManager:managerCopy conversationManager:conversationManagerCopy];
    faceTimeProviderDelegate = v27->_faceTimeProviderDelegate;
    v27->_faceTimeProviderDelegate = v89;

    [(CSDFaceTimeProviderDelegate *)v27->_faceTimeProviderDelegate setCallDataSource:v27];
    [(CXCallSourceManager *)v27->_callSourceManager addCallSource:v27->_faceTimeCallSource];
    v91 = [CXInProcessCallSource alloc];
    v92 = [v91 initWithIdentifier:@"com.apple.telephonyutilities.callservicesd.TinCan" bundleIdentifier:TUBundleIdentifierTinCan];
    tinCanCallSource = v27->_tinCanCallSource;
    v27->_tinCanCallSource = v92;

    v94 = [[CSDTinCanIDSProviderDelegate alloc] initWithCallSource:v27->_tinCanCallSource queue:v21];
    tinCanProviderDelegate = v27->_tinCanProviderDelegate;
    v27->_tinCanProviderDelegate = v94;

    [(CXCallSourceManager *)v27->_callSourceManager addCallSource:v27->_tinCanCallSource];
    v96 = [[CXChannelSourceManager alloc] initWithDelegate:v27 queue:v21];
    channelSourceManager = v27->_channelSourceManager;
    v27->_channelSourceManager = v96;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100253884;
    block[3] = &unk_100619D88;
    v98 = v27;
    v125 = v98;
    v126 = v21;
    dispatch_async(v126, block);
    if (TUShouldCreateSuperboxProvider())
    {
      v99 = [[CXInProcessCallSource alloc] initWithIdentifier:@"com.apple.Superbox" bundleIdentifier:@"com.apple.Superbox" fallbackLocalizedName:@"Superbox"];
      v100 = v98[19];
      v98[19] = v99;

      v101 = [_TtC13callservicesd27CSDSuperboxProviderDelegate alloc];
      superboxCallSource = [v98 superboxCallSource];
      v103 = [(CSDSuperboxProviderDelegate *)v101 initWithCallSource:superboxCallSource];
      v104 = v98[20];
      v98[20] = v103;

      callSourceManager = [v98 callSourceManager];
      superboxCallSource2 = [v98 superboxCallSource];
      [callSourceManager addCallSource:superboxCallSource2];
    }

    v107 = utilitiesCopy;
    if (!utilitiesCopy)
    {
      v107 = objc_alloc_init(CSDProtectedAppsUtilities);
    }

    objc_storeStrong(v98 + 48, v107);
    if (!utilitiesCopy)
    {
    }

    objc_storeStrong(v98 + 14, flags);
    v108 = +[FTServerBag sharedInstance];
    v109 = v98[50];
    v98[50] = v108;

    v110 = supportCopy;
    if (!supportCopy)
    {
      v110 = +[FTDeviceSupport sharedInstance];
    }

    objc_storeStrong(v98 + 51, v110);
    if (!supportCopy)
    {
    }

    if (TUCommunicationTrustEnabled())
    {
      v111 = v116;
      v112 = v116;
      if (!v116)
      {
        v112 = objc_alloc_init(CSDCommunicationTrustScoreDataProvider);
        v111 = 0;
      }

      objc_storeStrong(v98 + 49, v112);
      if (!v111)
      {
      }
    }

    objc_destroyWeak(&v128);
    objc_destroyWeak(&v130);
    objc_destroyWeak(&v132);
    objc_destroyWeak(&location);

    clientCopy = obja;
    providerCopy = v116;
  }

  return v27;
}

- (void)registerCall:(id)call
{
  callCopy = call;
  v11.receiver = self;
  v11.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v11 registerCall:callCopy];
  if (![(CSDCallDataSource *)self shouldTrackCall:callCopy])
  {
    callControllerHost = [(CSDProviderCallDataSource *)self callControllerHost];
    cxCall = [callCopy cxCall];
    [callControllerHost removeCall:cxCall];
    goto LABEL_6;
  }

  provider = [callCopy provider];
  isTinCanProvider = [provider isTinCanProvider];

  isPTT = [callCopy isPTT];
  v8 = isPTT;
  if ((isTinCanProvider & 1) == 0 && (isPTT & 1) == 0)
  {
    callControllerHost = [(CSDProviderCallDataSource *)self callControllerHost];
    cxCall = [callCopy cxCall];
    [callControllerHost addOrUpdateCall:cxCall];
LABEL_6:

    goto LABEL_7;
  }

  callControllerHost = sub_100004778(isPTT);
  if (os_log_type_enabled(callControllerHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = callCopy;
    v14 = 1024;
    v15 = isTinCanProvider;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, callControllerHost, OS_LOG_TYPE_DEFAULT, "Ignoring to add %@ call since it is TinCan (%d) or PTT Barge Call (%d).", buf, 0x18u);
  }

LABEL_7:
}

- (void)startTrackingCall:(id)call
{
  callCopy = call;
  v10.receiver = self;
  v10.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v10 startTrackingCall:callCopy];
  provider = [callCopy provider];
  if ([provider isSystemProvider])
  {
    goto LABEL_4;
  }

  isPTT = [callCopy isPTT];

  if ((isPTT & 1) == 0)
  {
    provider = [(CSDProviderCallDataSource *)self processAssertionManager];
    provider2 = [callCopy provider];
    bundleIdentifier = [provider2 bundleIdentifier];
    [provider acquireProcessAssertionForBundleIdentifier:bundleIdentifier];

LABEL_4:
  }

  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  [screenTimeCallFilter startMonitoringCall:callCopy];
}

- (void)stopTrackingCall:(id)call
{
  callCopy = call;
  v13.receiver = self;
  v13.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v13 stopTrackingCall:callCopy];
  provider = [callCopy provider];
  isSystemProvider = [provider isSystemProvider];

  if ((isSystemProvider & 1) == 0)
  {
    processAssertionManager = [(CSDProviderCallDataSource *)self processAssertionManager];
    provider2 = [callCopy provider];
    bundleIdentifier = [provider2 bundleIdentifier];
    [processAssertionManager invalidateProcessAssertionForBundleIdentifier:bundleIdentifier];
  }

  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
  [callSourceManager failOutstandingActionsForCallWithUUID:uniqueProxyIdentifierUUID];

  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  [screenTimeCallFilter stopMonitoringCall:callCopy];
}

- (id)conduit
{
  faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
  conduit = [faceTimeProviderDelegate conduit];

  return conduit;
}

- (CSDRouteManager)routeManager
{
  routeManager = self->_routeManager;
  if (!routeManager)
  {
    v4 = +[CSDRouteManager sharedInstance];
    v5 = self->_routeManager;
    self->_routeManager = v4;

    routeManager = self->_routeManager;
  }

  return routeManager;
}

- (void)setCallProviderManager:(id)manager
{
  objc_storeStrong(&self->_callProviderManager, manager);
  managerCopy = manager;
  callProviderManager = self->_callProviderManager;
  queue = [(CSDCallDataSource *)self queue];
  [(CSDCallProviderManager *)callProviderManager addDelegate:self queue:queue];
}

- (id)_callWithUUID:(id)d
{
  uUIDString = [d UUIDString];
  v5 = [(CSDCallDataSource *)self callWithUniqueProxyIdentifier:uUIDString];

  return v5;
}

- (id)_relayCallWithUUID:(id)d
{
  dCopy = d;
  relayCallDataSource = [(CSDProviderCallDataSource *)self relayCallDataSource];
  uUIDString = [dCopy UUIDString];

  v7 = [relayCallDataSource callWithUniqueProxyIdentifier:uUIDString];

  return v7;
}

- (id)_callWithUUID:(id)d backingCallSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v9 = [calls countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v18 + 1) + 8 * v13);

        uniqueProxyIdentifierUUID = [v11 uniqueProxyIdentifierUUID];
        if ([uniqueProxyIdentifierUUID isEqual:dCopy])
        {
          backingCallSource = [v11 backingCallSource];

          if (backingCallSource == sourceCopy)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [calls countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_callWithUUID:(id)d controllableByCallSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v9 = [calls countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v20 + 1) + 8 * v13);

        backingCallSource = [v11 backingCallSource];
        v16 = backingCallSource;
        if (backingCallSource == sourceCopy)
        {
          uniqueProxyIdentifierUUID = [v11 uniqueProxyIdentifierUUID];
          v18 = [uniqueProxyIdentifierUUID isEqual:dCopy];

          if (v18)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [calls countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_callGroupsWithBackingCallSource:(id)source
{
  sourceCopy = source;
  v5 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v7 = [calls countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        callGroupUUID = [v11 callGroupUUID];
        if (callGroupUUID)
        {
          goto LABEL_7;
        }

        backingCallSource = [v11 backingCallSource];

        if (backingCallSource == sourceCopy)
        {
          v35 = v11;
          callGroupUUID = [NSArray arrayWithObjects:&v35 count:1];
          [v5 addObject:callGroupUUID];
LABEL_7:
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v14 = [calls countByEnumeratingWithState:&v30 objects:v36 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  callGroupUUIDToCalls = [(CSDProviderCallDataSource *)self callGroupUUIDToCalls];
  allValues = [callGroupUUIDToCalls allValues];

  v17 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(allValues);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        firstObject = [v21 firstObject];
        backingCallSource2 = [firstObject backingCallSource];

        if (backingCallSource2 == sourceCopy)
        {
          [v5 addObject:v21];
        }
      }

      v18 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = [v5 copy];

  return v24;
}

- (id)_providerForCallSource:(id)source
{
  sourceCopy = source;
  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [callProviderManager providersByIdentifierForRemoteClients:0];
  identifier = [sourceCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];

  return v8;
}

- (id)_localProviderForCallSource:(id)source
{
  sourceCopy = source;
  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [callProviderManager localProvidersByIdentifierForRemoteClients:0];
  identifier = [sourceCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];

  return v8;
}

- (id)_ISOCountryCodeForCall:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  if ([provider isFaceTimeProvider])
  {
    faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
    v8 = [faceTimeProviderDelegate ISOCountryCodeForCallWithUUID:uniqueProxyIdentifierUUID];
    goto LABEL_6;
  }

  if ([provider isTelephonyProvider])
  {
    faceTimeProviderDelegate = [callCopy localSenderIdentityUUID];
    if (!faceTimeProviderDelegate)
    {
      v9 = 0;
      goto LABEL_7;
    }

    uniqueProxyIdentifierUUID = [(CSDProviderCallDataSource *)self coreTelephonyClient];
    v8 = [uniqueProxyIdentifierUUID ISOCountryCodeForSubscriptionUUID:faceTimeProviderDelegate];
LABEL_6:
    v9 = v8;

LABEL_7:
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_ISOCountryCodeForCallWithUUID:(id)d provider:(id)provider callUpdate:(id)update
{
  dCopy = d;
  providerCopy = provider;
  updateCopy = update;
  if ([providerCopy isFaceTimeProvider])
  {
    faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    v12 = [faceTimeProviderDelegate ISOCountryCodeForCallWithUUID:dCopy];
  }

  else
  {
    if (![providerCopy isTelephonyProvider])
    {
      v12 = 0;
      goto LABEL_9;
    }

    faceTimeProviderDelegate = [updateCopy localSenderIdentityUUID];
    if (faceTimeProviderDelegate)
    {
      coreTelephonyClient = [(CSDProviderCallDataSource *)self coreTelephonyClient];
      v12 = [coreTelephonyClient ISOCountryCodeForSubscriptionUUID:faceTimeProviderDelegate];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_9:

  return v12;
}

- (id)_identifiersForCalls:(id)calls
{
  callsCopy = calls;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(callsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = callsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uniqueProxyIdentifier = [*(*(&v12 + 1) + 8 * i) uniqueProxyIdentifier];
        [v4 addObject:uniqueProxyIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_shouldBlockIfScreenSharing
{
  if (TUAllowCallsDuringScreenSharing())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    calls = [(CSDCallDataSource *)self calls];
    v3 = [calls countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(calls);
          }

          if ([*(*(&v8 + 1) + 8 * i) isSharingScreen])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [calls countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (void)_deferCommittingTransactionsUntilAfterRunningBlock:(id)block
{
  blockCopy = block;
  [(CSDProviderCallDataSource *)self setDeferCommittingTransactions:1];
  blockCopy[2](blockCopy);

  [(CSDProviderCallDataSource *)self setDeferCommittingTransactions:0];

  [(CSDProviderCallDataSource *)self _commitUncommittedTransactions];
}

- (BOOL)_allowRevertingStateForCompletedTransactionGroup:(id)group
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allActions = [group allActions];
  v4 = [allActions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allActions);
        }

        if ([*(*(&v10 + 1) + 8 * i) state] == 1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [allActions countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)_endCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778(callCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = 138412290;
    v11 = uniqueProxyIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Ending mutually exclusive call with uPI %@ because we have a newer incoming call that can not co-exist with it.", &v10, 0xCu);
  }

  v7 = [CXEndCallAction alloc];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
  v9 = [v7 initWithCallUUID:uniqueProxyIdentifierUUID];

  [(CSDProviderCallDataSource *)self performCallAction:v9 forCall:callCopy];
}

- (id)_endMutuallyExclusiveCalls:(id)calls
{
  callsCopy = calls;
  v5 = sub_100004778(callsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = callsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_endMutuallyExclusiveCalls: update=%@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v7 = [calls countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (!v7)
  {

    v9 = 0;
LABEL_24:
    v18 = 0;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v22;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(calls);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      isMutuallyExclusiveCall = [v12 isMutuallyExclusiveCall];
      if (isMutuallyExclusiveCall)
      {
        if (v9)
        {
          v14 = sub_100004778(isMutuallyExclusiveCall);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found multiple existing mutually exclusive calls.  Ending call %@", buf, 0xCu);
          }

          [(CSDProviderCallDataSource *)self _endCall:v12];
        }

        else
        {
          v9 = v12;
        }
      }
    }

    v8 = [calls countByEnumeratingWithState:&v21 objects:v29 count:16];
  }

  while (v8);

  if (!v9)
  {
    v18 = 0;
    goto LABEL_25;
  }

  isMutuallyExclusiveCall2 = [callsCopy isMutuallyExclusiveCall];
  if (!isMutuallyExclusiveCall2)
  {
    v15 = [(CSDProviderCallDataSource *)self _endCall:v9];
    goto LABEL_24;
  }

  v17 = sub_100004778(isMutuallyExclusiveCall2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring mutually exclusive update", buf, 2u);
  }

  v15 = [NSError cx_incomingCallErrorWithCode:102];
  v18 = v15;
LABEL_25:
  v19 = sub_100004778(v15);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_endMutuallyExclusiveCalls: mutuallyExclusiveCall=%@, error=%@", buf, 0x16u);
  }

  return v18;
}

- (void)_processCompletedCallAction:(id)action forCall:(id)call allowRevertingState:(BOOL)state isOnenessActive:(BOOL)active
{
  activeCopy = active;
  stateCopy = state;
  actionCopy = action;
  callCopy = call;
  callStateController = [(CSDCallDataSource *)self callStateController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    state = [v13 state];
    v15 = sub_100004778(state);
    v16 = v15;
    if (state != 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10047F020();
      }

      if (activeCopy)
      {
        [callCopy disconnectWithReason:51];
      }

      v27 = +[NSDate date];
      [callCopy setDateEnded:v27];

      goto LABEL_130;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Start call action fulfilled: %@", buf, 0xCu);
    }

    dateStarted = [v13 dateStarted];
    [callCopy setDateStartedOutgoing:dateStarted];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    if ([v24 state]== 1)
    {
      v25 = sub_100004778(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Join call action fulfilled: %@", buf, 0xCu);
      }

      dateStarted2 = [v24 dateStarted];
      [callCopy setDateStartedOutgoing:dateStarted2];
      goto LABEL_14;
    }

    faceTimeIDStatus = [callCopy faceTimeIDStatus];
    v32 = faceTimeIDStatus;
    v33 = sub_100004778(faceTimeIDStatus);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10047EF9C();
    }

    if (v32 == 1)
    {
      v34 = 531;
    }

    else
    {
      v34 = 508;
    }

    [callCopy setProviderFailureReasonIfNecessary:v34];
    v35 = callCopy;
    if (activeCopy)
    {
      v36 = 51;
LABEL_74:
      [v35 disconnectWithReason:v36];
      goto LABEL_75;
    }

LABEL_73:
    v36 = 14;
    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    state2 = [v13 state];
    v29 = sub_100004778(state2);
    v30 = v29;
    if (state2 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v13;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Answer call action fulfilled: %@", buf, 0xCu);
      }

      dateStarted = [v13 dateConnected];
      [callCopy setDateConnected:dateStarted];
LABEL_6:

      provider = [callCopy provider];
      isTinCanProvider = [provider isTinCanProvider];

      if (!isTinCanProvider)
      {
LABEL_130:

        goto LABEL_131;
      }

      featureFlags = [(CSDProviderCallDataSource *)self featureFlags];
      sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

      v22 = callCopy;
      v23 = 1;
      if (sessionBasedMutingEnabled)
      {
        [callCopy setUplinkMuted:1];
        goto LABEL_130;
      }

LABEL_129:
      [v22 setUnderlyingUplinkMuted:v23];
      goto LABEL_130;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10047EF34();
    }

    v40 = callCopy;
    v41 = 509;
LABEL_40:
    [v40 setProviderFailureReasonIfNecessary:v41];
    [callCopy disconnectWithReason:14];
    goto LABEL_130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state3 = [v24 state];
    v38 = sub_100004778(state3);
    v39 = v38;
    if (state3 != 1)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10047EECC();
      }

      [callCopy setEndedReason:1];
      v45 = +[NSDate date];
      [callCopy setDateEnded:v45];

      [callCopy setProviderFailureReasonIfNecessary:520];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = v24;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "End call action fulfilled: %@", buf, 0xCu);
    }

    dateStarted2 = [v24 dateEnded];
    [callCopy setDateEnded:dateStarted2];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state4 = [v24 state];
    v43 = sub_100004778(state4);
    v44 = v43;
    if (state4 == 1)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Set held call action fulfilled: %@", buf, 0xCu);
      }

      [callCopy setHeld:{-[NSObject isOnHold](v24, "isOnHold")}];
      goto LABEL_75;
    }

    if (stateCopy)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[WARN] Set held call action failed but reverting state is allowed: %@", buf, 0xCu);
      }

      [callStateController resetClientCallProvisionalStates];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_10047EDC0();
    }

    [callCopy setProviderFailureReasonIfNecessary:512];
    v35 = callCopy;
    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    state5 = [v13 state];
    if (state5 == 1)
    {
      callUUIDToGroupWith = [v13 callUUIDToGroupWith];

      if (callUUIDToGroupWith)
      {
        callUUIDToGroupWith2 = [v13 callUUIDToGroupWith];
        v49 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUIDToGroupWith2];

        v51 = sub_100004778(v50);
        callGroupUUID2 = v51;
        if (v49)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v95 = v13;
            _os_log_impl(&_mh_execute_header, callGroupUUID2, OS_LOG_TYPE_DEFAULT, "Set group call action fulfilled: %@", buf, 0xCu);
          }

          callGroupUUID = [v49 callGroupUUID];

          if (!callGroupUUID)
          {
            v54 = +[NSUUID UUID];
            [v49 setCallGroupUUID:v54];
          }

          callGroupUUID2 = [v49 callGroupUUID];
          [callCopy setCallGroupUUID:callGroupUUID2];
        }

        else if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_10047EE28(v13, self);
        }
      }

      else
      {
        [callCopy setCallGroupUUID:0];
      }

      goto LABEL_130;
    }

    v58 = sub_100004778(state5);
    v59 = v58;
    if (stateCopy)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v13;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[WARN] Set group call action failed but reverting state is allowed: %@", buf, 0xCu);
      }

      [callStateController resetClientCallProvisionalStates];
      goto LABEL_130;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_10047EDC0();
    }

    v40 = callCopy;
    v41 = 513;
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state6 = [v24 state];
    v56 = sub_100004778(state6);
    v57 = v56;
    if (state6 == 1)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Play DTMF call action fulfilled: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_10047ED58();
    }

    if ([v24 type]== 2 || [v24 type]== 3)
    {
      [callCopy dequeueNextPauseDigits];
    }

    goto LABEL_75;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state7 = [v24 state];
    v61 = sub_100004778(state7);
    dateStarted2 = v61;
    if (state7 == 1)
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Set sending video call action fulfilled: %@", buf, 0xCu);
      }

      [callCopy setSendingVideo:{-[NSObject isSendingVideo](v24, "isSendingVideo")}];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_10047ECF0();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    if ([v13 state]!= 1)
    {
      featureFlags2 = [(CSDProviderCallDataSource *)self featureFlags];
      sessionBasedMutingEnabled2 = [featureFlags2 sessionBasedMutingEnabled];

      v70 = sub_100004778(v69);
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
      if (sessionBasedMutingEnabled2)
      {
        if (v71)
        {
          sub_10047EC88();
        }

        [callCopy setUplinkMuted:-[NSObject isMuted](v13 userInitiated:{"isMuted") ^ 1, 1}];
        goto LABEL_130;
      }

      if (v71)
      {
        sub_10047EBC4(v13);
      }

      if (([v13 isBottomUpMute]& 1) != 0)
      {
        goto LABEL_130;
      }

      v23 = [v13 isMuted]^ 1;
      v22 = callCopy;
      goto LABEL_129;
    }

    v62 = sub_100004778(1);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = v13;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Set muted call action fulfilled: %@", buf, 0xCu);
    }

    featureFlags3 = [(CSDProviderCallDataSource *)self featureFlags];
    if ([featureFlags3 sessionBasedMutingEnabled])
    {
      isSystemInitiated = [v13 isSystemInitiated];

      if ((isSystemInitiated & 1) == 0)
      {
        [callCopy setUplinkMuted:-[NSObject isMuted](v13 userInitiated:{"isMuted"), -[NSObject isSystemInitiated](v13, "isSystemInitiated") ^ 1}];
        goto LABEL_121;
      }
    }

    else
    {
    }

    [callCopy setUnderlyingUplinkMuted:-[NSObject isMuted](v13 bottomUpMute:{"isMuted"), -[NSObject isBottomUpMute](v13, "isBottomUpMute")}];
LABEL_121:
    if ([v13 isMuted])
    {
      [callCopy setUplinkWasExplicitlyMuted:1];
    }

    goto LABEL_130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state8 = [v24 state];
    v66 = sub_100004778(state8);
    dateStarted2 = v66;
    if (state8 == 1)
    {
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Set tty call action fulfilled: %@", buf, 0xCu);
      }

      [callCopy setTtyType:{sub_100025BB8(-[NSObject ttyType](v24, "ttyType"))}];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_10047EB5C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = actionCopy;
      state9 = [v24 state];
      v79 = sub_100004778(state9);
      dateStarted2 = v79;
      if (state9 == 1)
      {
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v95 = v24;
          _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Set screening call action fulfilled: %@", buf, 0xCu);
        }

        [callCopy setScreening:{-[NSObject isScreening](v24, "isScreening")}];
        goto LABEL_75;
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_10047EAF4();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = actionCopy;
        state10 = [v24 state];
        v81 = sub_100004778(state10);
        dateStarted2 = v81;
        if (state10 == 1)
        {
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v95 = v24;
            _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Allow audio injection action fulfilled: %@", buf, 0xCu);
          }

          [callCopy setInjectingAudio:{-[NSObject willInject](v24, "willInject")}];
          goto LABEL_75;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_10047EA8C();
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          state11 = [actionCopy state];
          v89 = sub_100004778(state11);
          v24 = v89;
          if (state11 == 1)
          {
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v95 = actionCopy;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Action fulfilled: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            sub_10047EA24();
          }

          goto LABEL_75;
        }

        v24 = actionCopy;
        if (![v24 isSystemInitiated]|| [v24 translationEngine])
        {
LABEL_75:

          goto LABEL_131;
        }

        if ([v24 isTranslating])
        {
          localLanguage = [v24 localLanguage];
          v83 = [NSLocale localeWithLocaleIdentifier:localLanguage];

          remoteLanguage = [v24 remoteLanguage];
          v85 = [NSLocale localeWithLocaleIdentifier:remoteLanguage];

          v86 = [[TUCallTranslationStartRequest alloc] initWithCall:callCopy localLocale:v83 remoteLocale:v85 translationLinks:3 remoteAudioMode:0 translationMode:0];
        }

        else
        {
          v87 = [[TUCallTranslationStopRequest alloc] initWithCall:callCopy];
          v86 = v87;
        }

        v90 = sub_100004778(v87);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v95 = v86;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "perform TUCallTranslationRequest for CXSetTranslatingCallAction %@", buf, 0xCu);
        }

        callTranslationController = [callStateController callTranslationController];
        v92[0] = _NSConcreteStackBlock;
        v92[1] = 3221225472;
        v92[2] = sub_100256150;
        v92[3] = &unk_10061A4C0;
        v93 = v86;
        dateStarted2 = v86;
        [callTranslationController performRequest:dateStarted2 forCall:callCopy completion:v92];
      }
    }

LABEL_14:

    goto LABEL_75;
  }

  if ([actionCopy state]== 2)
  {
    v72 = sub_100004778(2);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = actionCopy;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Set relaying call action failed: %@", buf, 0xCu);
    }

    provider2 = [callCopy provider];
    isTinCanProvider2 = [provider2 isTinCanProvider];

    if (isTinCanProvider2)
    {
      v76 = sub_100004778(v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v95 = actionCopy;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[WARN] Set relaying call action failed: %@", buf, 0xCu);
      }

      [callCopy setProviderFailureReasonIfNecessary:514];
      [callCopy disconnectWithReason:14];
    }
  }

LABEL_131:
  if ([actionCopy state]== 2)
  {
    v77 = +[CSDReportingController sharedInstance];
    [v77 reportProviderFailedWithAction:actionCopy forCall:callCopy];
  }
}

- (BOOL)_actionRequiresReasonableUserIntent:(id)intent
{
  intentCopy = intent;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = objc_opt_class();

  LOBYTE(v6) = [v5 containsObject:v6];
  return v6;
}

- (BOOL)_shouldAllowRequestedAction:(id)action forCallSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error
{
  intentCopy = intent;
  actionCopy = action;
  sourceCopy = source;
  v12 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    callUUID = [v13 callUUID];
    v15 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID controllableByCallSource:sourceCopy];

    callUUID2 = [v13 callUUID];
    v59 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID2];

    callUUID3 = [v13 callUUID];
    v60 = [(CSDProviderCallDataSource *)self _relayCallWithUUID:callUUID3];

    if (-[CSDProviderCallDataSource _actionRequiresReasonableUserIntent:](self, "_actionRequiresReasonableUserIntent:", v13) && intentCopy && (-[CSDProviderCallDataSource callProviderManager](self, "callProviderManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 validateUserIntentForCallSource:sourceCopy], v18, (v19 & 1) == 0))
    {
      v43 = sub_100004778(v20);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_opt_class();
        identifier = [sourceCopy identifier];
        *buf = 138412546;
        v62 = v44;
        v63 = 2112;
        maximumCallGroups2 = identifier;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested %@ because user intent could not be validated for call source with identifier: %@", buf, 0x16u);
      }

      +[CSDCrashReporter simulateCrashReportFromPID:withKillCode:usingReasonWithFormat:](CSDCrashReporter, "simulateCrashReportFromPID:withKillCode:usingReasonWithFormat:", [sourceCopy processIdentifier], 3735931409, @"Not allowing requested %@ because user intent could not be reasonably validated to gain access to the microphone while in the background.", objc_opt_class());
      v35 = [NSError cx_requestTransactionErrorWithCode:6];
      v29 = v59;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = v15;
        v58 = [(CSDProviderCallDataSource *)self _callGroupsWithBackingCallSource:sourceCopy];
        callStateController = [(CSDCallDataSource *)self callStateController];
        featureFlags = [callStateController featureFlags];
        if ([featureFlags appProtectionEnabled])
        {
          protectedAppsUtilities = [(CSDProviderCallDataSource *)self protectedAppsUtilities];
          bundleIdentifier = [v12 bundleIdentifier];
          v25 = [protectedAppsUtilities shouldBlockCallWithBundleIdentifier:bundleIdentifier];

          v27 = v60;
          if (v25)
          {
            v28 = sub_100004778(v26);
            v29 = v59;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier2 = [v12 bundleIdentifier];
              *buf = 138412290;
              v62 = bundleIdentifier2;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Blocking outgoing call because the originating app [Bundle Identifier: %@] responsible for the call is hidden and currently not foregrounded", buf, 0xCu);
            }

            v31 = 8;
            v15 = v57;
            goto LABEL_43;
          }
        }

        else
        {

          v27 = v60;
        }

        v29 = v59;
        if (v59 | v27)
        {
          v28 = sub_100004778(v26);
          v15 = v57;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            callUUID4 = [v13 callUUID];
            *buf = 138412290;
            v62 = callUUID4;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested start call action because a call with same UUID (%@) already exists", buf, 0xCu);
          }

          v31 = 5;
        }

        else
        {
          v47 = [v58 count];
          maximumCallGroups = [v12 maximumCallGroups];
          v15 = v57;
          if (v47 < maximumCallGroups)
          {
            v35 = 0;
LABEL_44:

            goto LABEL_53;
          }

          v28 = sub_100004778(maximumCallGroups);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v62 = sourceCopy;
            v63 = 2048;
            maximumCallGroups2 = [v12 maximumCallGroups];
            v65 = 2112;
            v66 = v58;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested start call action because call source %@ is at the maximum call group count of %lu: %@", buf, 0x20u);
          }

          v31 = 7;
        }

LABEL_43:

        v35 = [NSError cx_requestTransactionErrorWithCode:v31];
        goto LABEL_44;
      }

      objc_opt_class();
      v27 = v60;
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 callUUIDToGroupWith], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
      {
        callUUIDToGroupWith = [v13 callUUIDToGroupWith];
        v39 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUIDToGroupWith controllableByCallSource:sourceCopy];

        v29 = v59;
        if (v39)
        {
          v35 = 0;
        }

        else
        {
          v53 = sub_100004778(v40);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            calls = [(CSDCallDataSource *)self calls];
            *buf = 138412802;
            v62 = v13;
            v63 = 2112;
            maximumCallGroups2 = sourceCopy;
            v65 = 2112;
            v66 = calls;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because no call was found to group with for action %@ and call source %@. All calls: %@", buf, 0x20u);

            v29 = v59;
          }

          v35 = [NSError cx_requestTransactionErrorWithCode:4];
        }
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v29 = v59;
        if ((isKindOfClass & 1) != 0 && v60)
        {
          v42 = sub_100004778(isKindOfClass);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v62 = v59;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested answer call action because a relay call with same UUID already exists: %@", buf, 0xCu);
          }

          v35 = [NSError cx_requestTransactionErrorWithCode:5];
LABEL_53:

          if (error)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        }

        if (v15)
        {
          v35 = 0;
          goto LABEL_53;
        }

        v49 = sub_100004778(isKindOfClass);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          callUUID5 = [v13 callUUID];
          uUIDString = [callUUID5 UUIDString];
          calls2 = [(CSDCallDataSource *)self calls];
          *buf = 138412802;
          v62 = uUIDString;
          v63 = 2112;
          maximumCallGroups2 = sourceCopy;
          v65 = 2112;
          v66 = calls2;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because no call was found for call UUID %@ and call source %@. All calls: %@", buf, 0x20u);

          v15 = 0;
          v29 = v59;
        }

        v35 = [NSError cx_requestTransactionErrorWithCode:4];
      }
    }

    v27 = v60;
    goto LABEL_53;
  }

  objc_opt_class();
  v32 = objc_opt_isKindOfClass();
  if (v32)
  {
    identifier2 = [sourceCopy identifier];
    v34 = [identifier2 isEqualToString:@"com.apple.coretelephony"];

    if (v34)
    {
      v35 = 0;
      if (!error)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  v36 = sub_100004778(v32);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = actionCopy;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because action is not allowed to be requested: %@", buf, 0xCu);
  }

  v35 = [NSError cx_requestTransactionErrorWithCode:6];
  if (error)
  {
LABEL_54:
    v55 = v35;
    *error = v35;
  }

LABEL_55:

  return v35 == 0;
}

- (BOOL)_shouldAllowRequestedTransaction:(id)transaction forCallSource:(id)source error:(id *)error
{
  transactionCopy = transaction;
  sourceCopy = source;
  actions = [transactionCopy actions];
  v11 = [actions count];

  if (v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    actions2 = [transactionCopy actions];
    v14 = [actions2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(actions2);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          v24 = 0;
          [(CSDProviderCallDataSource *)self _shouldAllowRequestedAction:v18 forCallSource:sourceCopy shouldValidateUserIntent:1 error:&v24];
          v19 = v24;
          if (v19)
          {
            v20 = v19;
            goto LABEL_12;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [actions2 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_12:

    if (error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v23 = sub_100004778(v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction because it is empty: %@", buf, 0xCu);
    }

    v20 = [NSError cx_requestTransactionErrorWithCode:3];
    if (error)
    {
LABEL_13:
      v21 = v20;
      *error = v20;
    }
  }

  return v20 == 0;
}

- (void)_processRequestedTransaction:(id)transaction fromCallSource:(id)source completion:(id)completion
{
  transactionCopy = transaction;
  sourceCopy = source;
  v15 = 0;
  completionCopy = completion;
  v11 = [(CSDProviderCallDataSource *)self _shouldAllowRequestedTransaction:transactionCopy forCallSource:sourceCopy error:&v15];
  v12 = v15;
  v13 = sub_100004778(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      *buf = 138412290;
      v17 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowing requested transaction: %@", buf, 0xCu);
    }

    [(CSDProviderCallDataSource *)self _performRequestedTransaction:transactionCopy onCallSource:sourceCopy];
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v17 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction: %@", buf, 0xCu);
    }
  }

  completionCopy[2](completionCopy, v12);
}

- (BOOL)_isRequestingCallSourceAppBackgroundRunning:(id)running
{
  runningCopy = running;
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100256F74;
  block[3] = &unk_10061AE20;
  v11 = processObserver;
  v12 = runningCopy;
  v13 = &v14;
  v7 = runningCopy;
  v8 = processObserver;
  dispatch_sync(processObserverQueue, block);

  LOBYTE(processObserverQueue) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return processObserverQueue;
}

- (void)_performRequestedTransaction:(id)transaction onCallSource:(id)source
{
  transactionCopy = transaction;
  sourceCopy = source;
  callStateController = [(CSDCallDataSource *)self callStateController];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = transactionCopy;
  obj = [transactionCopy actions];
  v9 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  v10 = sourceCopy;
  if (v9)
  {
    v11 = v9;
    v12 = *v39;
    v10 = sourceCopy;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v16 = sub_100004778(isKindOfClass);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Dialing new call due to requested start call action: %@", buf, 0xCu);
          }

          v17 = v14;
          v18 = [[CSDProviderCall alloc] initOutgoingWithRequestedStartCallAction:v17 backingCallSource:sourceCopy];

          if ([(CSDProviderCallDataSource *)self _isRequestingCallSourceAppBackgroundRunning:sourceCopy])
          {
            callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
            v20 = [callProviderManager validateBackgroundCallIntentForCallSource:sourceCopy];

            if (v20)
            {
              [v18 setLaunchInBackground:1];
            }
          }

          [callStateController setCallDelegatesIfNeeded:v18];
          [callStateController propertiesChangedForCall:v18];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v21 = v14;
          callUUID = [v21 callUUID];
          v18 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID backingCallSource:sourceCopy];

          backingCallSource = [v18 backingCallSource];

          v10 = backingCallSource;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  actions = [v32 actions];
  v25 = [actions countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(actions);
        }

        v29 = *(*(&v34 + 1) + 8 * j);
        callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
        [callSourceManager addAction:v29 toUncommittedTransactionForCallSource:v10];
      }

      v26 = [actions countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  [(CSDProviderCallDataSource *)self _addSupplementalActionsForRequestedTransaction:v32 onCallSource:v10];
  callSourceManager2 = [(CSDProviderCallDataSource *)self callSourceManager];
  [callSourceManager2 commitUncommittedTransactions];
}

- (void)_addSupplementalActionsForRequestedTransaction:(id)transaction onCallSource:(id)source
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [transaction actions];
  v4 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v28 = *v38;
    do
    {
      v7 = 0;
      v29 = v5;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          callUUID = [v9 callUUID];
          v11 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) == 0 || ([v9 isOnHold])
              {
LABEL_27:

                goto LABEL_28;
              }
            }
          }

          v31 = v7;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          calls = [(CSDCallDataSource *)self calls];
          v13 = [calls countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (!v13)
          {
            goto LABEL_26;
          }

          v14 = v13;
          v15 = *v34;
          while (2)
          {
            v16 = 0;
LABEL_12:
            if (*v34 != v15)
            {
              objc_enumerationMutation(calls);
            }

            v17 = *(*(&v33 + 1) + 8 * v16);
            if (v17 != v11)
            {
              provider = [*(*(&v33 + 1) + 8 * v16) provider];
              provider2 = [v11 provider];
              if ([provider isEqualToCallProvider:provider2])
              {
                goto LABEL_23;
              }

              if ([v17 isOnHold])
              {
                goto LABEL_23;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 isVideoUpgradeFromCall:v17])
              {
                goto LABEL_23;
              }

              isPTT = [v17 isPTT];

              if ((isPTT & 1) == 0)
              {
                v21 = [CXSetHeldCallAction alloc];
                uniqueProxyIdentifierUUID = [v17 uniqueProxyIdentifierUUID];
                provider = [v21 initWithCallUUID:uniqueProxyIdentifierUUID onHold:1];

                v24 = sub_100004778(v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v42 = v17;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Adding supplemental set held call action for existing call %@", buf, 0xCu);
                }

                provider2 = [(CSDProviderCallDataSource *)self callSourceManager];
                backingCallSource = [v17 backingCallSource];
                [provider2 addAction:provider toUncommittedTransactionForCallSource:backingCallSource];

LABEL_23:
              }
            }

            if (v14 == ++v16)
            {
              v14 = [calls countByEnumeratingWithState:&v33 objects:v43 count:16];
              if (!v14)
              {
LABEL_26:

                callStateController = [(CSDCallDataSource *)self callStateController];
                [callStateController deactivatePTTBargeCalls];

                v6 = v28;
                v5 = v29;
                v7 = v31;
                goto LABEL_27;
              }

              continue;
            }

            goto LABEL_12;
          }
        }

LABEL_28:
        v7 = v7 + 1;
      }

      while (v7 != v5);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      v5 = v27;
    }

    while (v27);
  }
}

- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingCalls:(id)calls andHoldingCalls:(id)holdingCalls
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100257918;
  v14[3] = &unk_10061A428;
  callCopy = call;
  requestCopy = request;
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  selfCopy = self;
  v10 = holdingCallsCopy;
  v11 = callsCopy;
  v12 = requestCopy;
  v13 = callCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v14];
}

- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257A1C;
  v8[3] = &unk_100619E58;
  callsCopy = calls;
  unholdingCallsCopy = unholdingCalls;
  selfCopy = self;
  v6 = unholdingCallsCopy;
  v7 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)groupCalls:(id)calls withCalls:(id)withCalls
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257B1C;
  v8[3] = &unk_100619E58;
  callsCopy = calls;
  withCallsCopy = withCalls;
  selfCopy = self;
  v6 = withCallsCopy;
  v7 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257C1C;
  v8[3] = &unk_100619E58;
  callCopy = call;
  groupCopy = group;
  selfCopy = self;
  v6 = groupCopy;
  v7 = callCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)disconnectCalls:(id)calls whileHoldingCalls:(id)holdingCalls andUnholdingCalls:(id)unholdingCalls andUngroupingCalls:(id)ungroupingCalls
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100257D68;
  v14[3] = &unk_10061A428;
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  unholdingCallsCopy = unholdingCalls;
  ungroupingCallsCopy = ungroupingCalls;
  selfCopy = self;
  v10 = ungroupingCallsCopy;
  v11 = unholdingCallsCopy;
  v12 = holdingCallsCopy;
  v13 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v14];
}

- (void)setUplinkMuted:(BOOL)muted forCalls:(id)calls userInitiated:(BOOL)initiated
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100257E58;
  v7[3] = &unk_10061FCF8;
  mutedCopy = muted;
  initiatedCopy = initiated;
  callsCopy = calls;
  selfCopy = self;
  v6 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v7];
}

- (void)setTTYType:(int)type forCalls:(id)calls
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100257F38;
  v6[3] = &unk_10061CF48;
  typeCopy = type;
  callsCopy = calls;
  selfCopy = self;
  v5 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v6];
}

- (void)sendMMIOrUSSDCodeWithRequest:(id)request
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025800C;
  v4[3] = &unk_100619D88;
  selfCopy = self;
  requestCopy = request;
  v3 = requestCopy;
  [(CSDProviderCallDataSource *)selfCopy _deferCommittingTransactionsUntilAfterRunningBlock:v4];
}

- (void)pullCallWithHandoffActivityUserInfo:(id)info completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002581F8;
  v8[3] = &unk_10061AF20;
  infoCopy = info;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = infoCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (id)callSourceForDialRequest:(id)request
{
  requestCopy = request;
  provider = [requestCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if (isTelephonyProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self telephonyCallSource];
LABEL_9:
    v15 = telephonyCallSource;
    goto LABEL_10;
  }

  provider2 = [requestCopy provider];
  isFaceTimeProvider = [provider2 isFaceTimeProvider];

  if (isFaceTimeProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self faceTimeCallSource];
    goto LABEL_9;
  }

  provider3 = [requestCopy provider];
  isTinCanProvider = [provider3 isTinCanProvider];

  if (isTinCanProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self tinCanCallSource];
    goto LABEL_9;
  }

  provider4 = [requestCopy provider];
  isSuperboxProvider = [provider4 isSuperboxProvider];

  if (isSuperboxProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self superboxCallSource];
    goto LABEL_9;
  }

  v17 = sub_100004778(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
    callSources = [callSourceManager callSources];
    v20 = 138412546;
    v21 = requestCopy;
    v22 = 2112;
    v23 = callSources;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine call source for dial request: %@. All call sources: %@", &v20, 0x16u);
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)providerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [callProviderManager providersByIdentifierForRemoteClients:0];
  v7 = [v6 objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (void)performCallAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  v8 = sub_100004778(callCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = actionCopy;
    v27 = 2112;
    v28 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform action %@ for call %@", &v25, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CSDProviderCallDataSource *)self holdOrEndOtherCallsBecauseCallWillBeginOutgoing:callCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (([callCopy isIncoming] & 1) == 0)
    {
      callStateController = [(CSDCallDataSource *)self callStateController];
      callCenter = [callStateController callCenter];
      isOnenessActiveBlock = [callCenter isOnenessActiveBlock];
      v12 = isOnenessActiveBlock[2]();

      if (v12)
      {
        v14 = sub_100004778(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = actionCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failing join call action %@ since device has active oneness session", &v25, 0xCu);
        }

        [actionCopy fail];
        [(CSDProviderCallDataSource *)self _processCompletedCallAction:actionCopy forCall:callCopy allowRevertingState:0 isOnenessActive:1];
        goto LABEL_28;
      }
    }
  }

  featureFlags = [(CSDProviderCallDataSource *)self featureFlags];
  if (![featureFlags sharePlayInCallsEnabled])
  {
    goto LABEL_17;
  }

  provider = [callCopy provider];
  if (([provider isTelephonyProvider] & 1) == 0)
  {

LABEL_17:
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_25:
    v24 = sub_100004778(v17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Action is handled by CSDConversationCallCoordinator, not notifying backing call source.", &v25, 2u);
    }

    [actionCopy fulfill];
    goto LABEL_28;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_25;
  }

LABEL_18:
  backingCallSource = [callCopy backingCallSource];

  if (backingCallSource)
  {
    callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
    backingCallSource2 = [callCopy backingCallSource];
    [callSourceManager addAction:actionCopy toUncommittedTransactionForCallSource:backingCallSource2];

    if (![(CSDProviderCallDataSource *)self deferCommittingTransactions])
    {
      [(CSDProviderCallDataSource *)self _commitUncommittedTransactions];
    }
  }

  else
  {
    v22 = sub_100004778(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping to add action since there is no backing call source", &v25, 2u);
    }
  }

LABEL_28:
}

- (void)performCallActions:(id)actions forCall:(id)call
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100258A68;
  v8[3] = &unk_100619E58;
  actionsCopy = actions;
  selfCopy = self;
  callCopy = call;
  v6 = callCopy;
  v7 = actionsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)holdOrEndOtherCallsBecauseCallWillBeginOutgoing:(id)outgoing
{
  outgoingCopy = outgoing;
  [outgoingCopy callCenter];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v40 = v52 = 0u;
  obj = [v40 currentCallGroups];
  v4 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v50;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        calls = [*(*(&v49 + 1) + 8 * i) calls];
        firstObject = [calls firstObject];
        provider = [firstObject provider];
        provider2 = [outgoingCopy provider];
        v13 = [provider isEqualToCallProvider:provider2];

        v6 += v13;
      }

      v5 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  calls2 = [(CSDCallDataSource *)self calls];
  v15 = [calls2 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    v41 = calls2;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(calls2);
        }

        v19 = *(*(&v45 + 1) + 8 * j);
        if (v19 != outgoingCopy && ([*(*(&v45 + 1) + 8 * j) isOnHold] & 1) == 0 && objc_msgSend(v19, "status") == 1 && (objc_msgSend(outgoingCopy, "isVideoUpgradeFromCall:", v19) & 1) == 0 && (objc_msgSend(v19, "isPTT") & 1) == 0)
        {
          provider3 = [v19 provider];
          provider4 = [outgoingCopy provider];
          v22 = [provider3 isEqualToCallProvider:provider4];

          if (v22)
          {
            provider5 = [outgoingCopy provider];
            v24 = v6 >= [provider5 maximumCallGroups];
          }

          else
          {
            v24 = 0;
          }

          if (([v19 isScreening] & 1) != 0 || ((objc_msgSend(v19, "isMutuallyExclusiveCall") | v24) & 1) != 0 || (objc_msgSend(v19, "model"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "supportsHolding"), v25, !v26))
          {
            v30 = [CXEndCallAction alloc];
            uniqueProxyIdentifierUUID = [v19 uniqueProxyIdentifierUUID];
            v29 = [v30 initWithCallUUID:uniqueProxyIdentifierUUID];
          }

          else
          {
            v27 = [CXSetHeldCallAction alloc];
            uniqueProxyIdentifierUUID = [v19 uniqueProxyIdentifierUUID];
            v29 = [v27 initWithCallUUID:uniqueProxyIdentifierUUID onHold:1];
          }

          v31 = v29;

          v33 = sub_100004778(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            [v19 uniqueProxyIdentifierUUID];
            v34 = obja = v31;
            [v19 model];
            v36 = v35 = v24;
            supportsHolding = [v36 supportsHolding];
            *buf = 138413058;
            v54 = obja;
            v55 = 2112;
            v56 = v34;
            v57 = 1024;
            v58 = v35;
            v59 = 1024;
            v60 = supportsHolding;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Sending action %@ for existing call with uniqueProxyIdentifierUUID=%@ maximumCallGroupsReachedForProvider=%d supportsHolding=%d", buf, 0x22u);

            v31 = obja;
          }

          callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
          backingCallSource = [v19 backingCallSource];
          [callSourceManager addAction:v31 toUncommittedTransactionForCallSource:backingCallSource];

          calls2 = v41;
        }
      }

      v16 = [calls2 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v16);
  }
}

- (void)performStartCallAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  [(CSDProviderCallDataSource *)self holdOrEndOtherCallsBecauseCallWillBeginOutgoing:callCopy];
  callStateController = [(CSDCallDataSource *)self callStateController];
  [callStateController deactivatePTTBargeCalls];

  isoCountryCode = [callCopy isoCountryCode];

  if (!isoCountryCode)
  {
    v11 = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCall:callCopy];
    if ([v11 length])
    {
      v12 = objc_alloc_init(CXCallUpdate);
      [v12 setISOCountryCode:v11];
      [callCopy updateWithCallUpdate:v12];
    }
  }

  v13 = sub_100004778(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = actionCopy;
    v16 = 2112;
    v17 = callCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asked to perform start call action %@ for call %@", &v14, 0x16u);
  }

  [(CSDProviderCallDataSource *)self performCallAction:actionCopy forCall:callCopy];
}

- (void)callSource:(id)source registeredWithConfiguration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  v8 = sub_100004778(configurationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = sourceCopy;
    v21 = 2112;
    v22 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call source %@ registered with configuration %@", &v19, 0x16u);
  }

  v9 = [[TUCallProvider alloc] initWithCallSource:sourceCopy configuration:configurationCopy];
  identifier = [sourceCopy identifier];
  v11 = [identifier isEqualToString:@"com.apple.coretelephony"];

  if (v11)
  {
    [v9 setBundleIdentifier:TUBundleIdentifierPhoneApplication];
    localizedName = [v9 localizedName];
    if (localizedName)
    {
      [v9 setLocalizedName:localizedName];
    }

    else
    {
      v13 = TUResolvedPhoneString();
      [v9 setLocalizedName:v13];
    }
  }

  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  [callProviderManager registerLocalProvider:v9];

  identifier2 = [sourceCopy identifier];
  v16 = [identifier2 isEqualToString:@"com.apple.coretelephony"];

  if (v16)
  {
    faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    prioritizedSenderIdentities = [configurationCopy prioritizedSenderIdentities];
    [faceTimeProviderDelegate updateProviderConfigurationWithSenderIdentities:prioritizedSenderIdentities];
  }
}

- (BOOL)callSource:(id)source shouldProcessAction:(id)action error:(id *)error
{
  sourceCopy = source;
  actionCopy = action;
  v16 = 0;
  v10 = [(CSDProviderCallDataSource *)self _shouldAllowRequestedAction:actionCopy forCallSource:sourceCopy shouldValidateUserIntent:0 error:&v16];
  v11 = v16;
  v12 = v11;
  if (v11)
  {
    v13 = sub_100004778(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047F168();
    }
  }

  if (error)
  {
    v14 = v12;
    *error = v12;
  }

  return v10;
}

- (void)updateFilteredOutReasonForCall:(id)call WithError:(id)error
{
  callCopy = call;
  errorCopy = error;
  v8 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_21;
  }

  if ([errorCopy code] == 4)
  {
    filteredOutReason = [callCopy filteredOutReason];
    if (!filteredOutReason)
    {
      v10 = callCopy;
      v11 = 1;
LABEL_17:
      filteredOutReason = [v10 setFilteredOutReason:v11];
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([v8 code] == 3)
  {
    filteredOutReason = [callCopy filteredOutReason];
    if (filteredOutReason)
    {
      goto LABEL_18;
    }

    if (TUCommunicationTrustEnabled())
    {
      if ([callCopy commTrustScore] == 2)
      {
        goto LABEL_22;
      }

      liveLookupExtensionsAllowCallsFromHandle = [(CSDProviderCallDataSource *)self liveLookupExtensionsAllowCallsFromHandle];
    }

    else
    {
      liveLookupExtensionsAllowCallsFromHandle = [(CSDProviderCallDataSource *)self callDirectoryAllowsCallFromSourceAddress];
    }

    v13 = liveLookupExtensionsAllowCallsFromHandle;
    handle = [callCopy handle];
    value = [handle value];
    v16 = (v13)[2](v13, value);

    if (v16)
    {
      v10 = callCopy;
      v11 = 6;
      goto LABEL_17;
    }

LABEL_22:
    [callCopy setFilteredOutReason:4];
    blockedByExtension = [(CSDProviderCallDataSource *)self blockedByExtension];
    handle2 = [callCopy handle];
    value2 = [handle2 value];
    v21 = (blockedByExtension)[2](blockedByExtension, value2);
    [callCopy setBlockedByExtension:v21];

    goto LABEL_18;
  }

  if ([v8 code] == 104)
  {
    v10 = callCopy;
    v11 = 7;
    goto LABEL_17;
  }

  filteredOutReason = [v8 code];
  if (filteredOutReason == 105)
  {
    v10 = callCopy;
    v11 = 8;
    goto LABEL_17;
  }

LABEL_18:
  v17 = sub_100004778(filteredOutReason);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109120;
    v22[1] = [callCopy filteredOutReason];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updated filtered out reason to %d", v22, 8u);
  }

LABEL_21:
}

- (void)callSource:(id)source _reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  completionCopy = completion;
  selfCopy = self;
  v252 = sourceCopy;
  v255 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  callStateController = [(CSDCallDataSource *)self callStateController];
  v283 = 0;
  v284 = &v283;
  v285 = 0x3032000000;
  v286 = sub_100028750;
  v287 = sub_100032924;
  v288 = 0;
  answeringMachineController = [callStateController answeringMachineController];
  isAvailable = [answeringMachineController isAvailable];

  assistantServicesObserver = [(CSDProviderCallDataSource *)self assistantServicesObserver];
  announceCallsProviderIdentifier = [assistantServicesObserver announceCallsProviderIdentifier];
  [updateCopy setAnnounceProviderIdentifier:announceCallsProviderIdentifier];

  account = [updateCopy account];
  localSenderIdentityUUID = [updateCopy localSenderIdentityUUID];
  if (account || !localSenderIdentityUUID)
  {
    goto LABEL_19;
  }

  v15 = [v255 senderIdentityForUUID:localSenderIdentityUUID];
  v16 = v15;
  if (v15)
  {
    handle = [v15 handle];
    if (handle)
    {
      v18 = [CXHandle handleWithTUHandle:handle];
    }

    else
    {
      v18 = 0;
    }

    iSOCountryCode = [v16 ISOCountryCode];
    if (![iSOCountryCode length])
    {
      coreTelephonyClient = [(CSDProviderCallDataSource *)self coreTelephonyClient];
      v21 = [coreTelephonyClient accountISOCountryCodeForSubscriptionUUID:localSenderIdentityUUID];

      iSOCountryCode = v21;
    }

    accountUUID = [v16 accountUUID];
    localizedName = [v16 localizedName];
    localizedServiceName = [v16 localizedServiceName];
    localizedShortName = [v16 localizedShortName];
    v26 = localizedShortName;
    if (accountUUID && localizedName && localizedServiceName && iSOCountryCode && localizedShortName)
    {
      v27 = [[CXAccount alloc] initWithUUID:accountUUID description:localizedName serviceName:localizedServiceName isoCountryCode:iSOCountryCode handle:v18 shortLabel:localizedShortName];
      [updateCopy setAccount:v27];
    }

    else if (!accountUUID)
    {
LABEL_17:

      goto LABEL_18;
    }

    uUIDString = [accountUUID UUIDString];
    [updateCopy setLocalSenderSubscriptionIdentifier:uUIDString];

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  isTelephonyProvider = [v255 isTelephonyProvider];
  if (localSenderIdentityUUID)
  {
    v30 = isTelephonyProvider;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == 1)
  {
    coreTelephonyClient2 = [(CSDProviderCallDataSource *)selfCopy coreTelephonyClient];
    v247 = [coreTelephonyClient2 isInHomeCountryForSubscriptionUUID:localSenderIdentityUUID];

    localizedCallerName = [updateCopy localizedCallerName];
    v33 = [localizedCallerName length] == 0;

    if (v33)
    {
      v246 = 0;
    }

    else
    {
      coreTelephonyClient3 = [(CSDProviderCallDataSource *)selfCopy coreTelephonyClient];
      v35 = [coreTelephonyClient3 spamIdentifiersForSubscriptionUUID:localSenderIdentityUUID];

      v281 = 0u;
      v282 = 0u;
      v279 = 0u;
      v280 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v279 objects:v306 count:16];
      if (v37)
      {
        v38 = *v280;
        while (2)
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v280 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = *(*(&v279 + 1) + 8 * i);
            localizedCallerName2 = [updateCopy localizedCallerName];
            LOBYTE(v40) = [localizedCallerName2 rangeOfString:v40 options:1] == 0x7FFFFFFFFFFFFFFFLL;

            if ((v40 & 1) == 0)
            {
              v246 = 1;
              goto LABEL_35;
            }
          }

          v37 = [v36 countByEnumeratingWithState:&v279 objects:v306 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      v246 = 0;
LABEL_35:
    }
  }

  else
  {
    v246 = 0;
    v247 = 0;
  }

  localMemberHandleValue = [updateCopy localMemberHandleValue];
  if (localMemberHandleValue)
  {
    localSenderSubscriptionIdentifier = [updateCopy localSenderSubscriptionIdentifier];
    v44 = localSenderSubscriptionIdentifier == 0;

    if (v44)
    {
      coreTelephonyClient4 = [(CSDProviderCallDataSource *)selfCopy coreTelephonyClient];
      telephonySubscriptions = [coreTelephonyClient4 telephonySubscriptions];

      v277 = 0u;
      v278 = 0u;
      v275 = 0u;
      v276 = 0u;
      v47 = telephonySubscriptions;
      v48 = [v47 countByEnumeratingWithState:&v275 objects:v305 count:16];
      if (v48)
      {
        v49 = *v276;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v276 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v275 + 1) + 8 * j);
            phoneNumber = [v51 phoneNumber];
            if (phoneNumber)
            {
              phoneNumber2 = [v51 phoneNumber];
              v54 = _FTAreIDsEquivalent();

              if (v54)
              {
                labelID = [v51 labelID];
                [updateCopy setLocalSenderSubscriptionIdentifier:labelID];
              }
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v275 objects:v305 count:16];
        }

        while (v48);
      }
    }
  }

  iSOCountryCode2 = [updateCopy ISOCountryCode];
  if (!iSOCountryCode2)
  {
    iSOCountryCode2 = [(CSDProviderCallDataSource *)selfCopy _ISOCountryCodeForCallWithUUID:dCopy provider:v255 callUpdate:updateCopy];
    if (iSOCountryCode2)
    {
      [updateCopy setISOCountryCode:iSOCountryCode2];
    }
  }

  v244 = iSOCountryCode2;
  callContainer = [callStateController callContainer];
  _allCalls = [callContainer _allCalls];
  if ([_allCalls count])
  {
    goto LABEL_54;
  }

  if (![v255 isTelephonyProvider])
  {
    if (!isAvailable)
    {
LABEL_54:
      v245 = 0;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v245 = 0;
  if (((v246 | v247 ^ 1) & 1) == 0 && ((isAvailable ^ 1) & 1) == 0)
  {
LABEL_60:
    lowPowerModeEnabledBlock = [(CSDProviderCallDataSource *)selfCopy lowPowerModeEnabledBlock];
    v60 = lowPowerModeEnabledBlock[2]();

    v245 = v60 ^ 1;
  }

LABEL_61:

  v61 = +[SOSUtilities shouldBlockNonEmergencyCalls];
  if (v61)
  {
    v62 = sub_100004778(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because SOS is active", buf, 2u);
    }

    v63 = [NSError cx_incomingCallErrorWithCode:3];
    v64 = 0;
    v65 = 0;
    v66 = v284[5];
    v284[5] = v63;
    v67 = 1;
    goto LABEL_155;
  }

  if ([updateCopy priority] == 2 && objc_msgSend(v255, "isTelephonyProvider"))
  {
    v68 = [(CSDProviderCallDataSource *)selfCopy _endMutuallyExclusiveCalls:updateCopy];
    v69 = v284[5];
    v284[5] = v68;

    if (v284[5])
    {
      v64 = 0;
      v65 = 0;
      v67 = 0;
LABEL_156:
      v257[0] = _NSConcreteStackBlock;
      v257[1] = 3221225472;
      v257[2] = sub_10025B54C;
      v257[3] = &unk_10061FD20;
      v159 = callStateController;
      v258 = v159;
      v265 = v65;
      v243 = dCopy;
      v259 = v243;
      v260 = selfCopy;
      v264 = &v283;
      v263 = completionCopy;
      v266 = v67;
      v241 = v252;
      v261 = v241;
      v239 = updateCopy;
      v262 = v239;
      v267 = v67;
      v268 = v247;
      v269 = isAvailable;
      v270 = v246;
      v160 = objc_retainBlock(v257);
      isAutoAnswerDeviceBlock = [(CSDProviderCallDataSource *)selfCopy isAutoAnswerDeviceBlock];
      v162 = isAutoAnswerDeviceBlock[2]();

      v164 = sub_100004778(v163);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        v235 = v160;
        v165 = v159;
        if (v65)
        {
          v166 = @"YES";
        }

        else
        {
          v166 = @"NO";
        }

        if (v64)
        {
          v167 = @"YES";
        }

        else
        {
          v167 = @"NO";
        }

        callContainer2 = [v165 callContainer];
        _allCalls2 = [callContainer2 _allCalls];
        if ([_allCalls2 count])
        {
          v170 = @"NO";
        }

        else
        {
          v170 = @"YES";
        }

        *buf = 138413826;
        if (v247)
        {
          v171 = @"YES";
        }

        else
        {
          v171 = @"NO";
        }

        *v290 = v166;
        *&v290[8] = 2112;
        if (v246)
        {
          v172 = @"YES";
        }

        else
        {
          v172 = @"NO";
        }

        v291 = v167;
        if (isAvailable)
        {
          v173 = @"YES";
        }

        else
        {
          v173 = @"NO";
        }

        v292 = 2112;
        if (v162)
        {
          v174 = @"YES";
        }

        else
        {
          v174 = @"NO";
        }

        v293 = v170;
        v294 = 2112;
        v295 = v171;
        v296 = 2112;
        v297 = v172;
        v298 = 2112;
        v299 = v173;
        v300 = 2112;
        v301 = v174;
        _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "Should we send to AnsweringMachine? shouldSendToLVM=%@ shouldSendToReceptionist=%@ noOtherCalls=%@ homeCountry=%@ hasSpamIdentifierInCarrierName=%@ isAnsweringMachineAvailable=%@ isAutoAnswerDevice=%@", buf, 0x48u);

        v159 = v234;
        v160 = v235;
      }

      featureFlags = [v159 featureFlags];
      callScreeningEnabledM3 = [featureFlags callScreeningEnabledM3];

      if ((callScreeningEnabledM3 & v65 & v245 & v162) != 0)
      {
        v178 = 1;
      }

      else
      {
        v178 = 2;
      }

      if (((v64 | callScreeningEnabledM3 & v65) & v245 & v162) == 1)
      {
        v179 = sub_100004778(v177);
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v290 = v178;
          _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "Sending update to see if it should be screened with type %ld", buf, 0xCu);
        }

        [v159 screenUpdate:v239 withProvider:v255 callSource:v241 callUUID:v243 screeningType:v178];
        [(CSDProviderCallDataSource *)selfCopy dispatchDelay];
        v181 = dispatch_time(0, (v180 * 1000000000.0));
        queue = [(CSDCallDataSource *)selfCopy queue];
        dispatch_after(v181, queue, v160);
      }

      else
      {
        (v160[2])(v160);
      }

      v143 = v258;
      goto LABEL_188;
    }

    v66 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v252 UUID:dCopy update:updateCopy originatingUIType:45];
    [v66 setLocalUserInHomeCountry:v247];
    [v66 setAnsweringMachineAvailable:isAvailable];
    [v66 setIdentifiedSpamInCallerName:v246];
    [callStateController setCallDelegatesIfNeeded:v66];
    [callStateController propertiesChangedForCall:v66];
    v64 = 0;
    v65 = 0;
    v67 = 0;
LABEL_155:

    goto LABEL_156;
  }

  routeManager = [(CSDProviderCallDataSource *)selfCopy routeManager];
  incomingCallFilterQueryResult = [(CSDProviderCallDataSource *)selfCopy incomingCallFilterQueryResult];
  remoteHandle = [updateCopy remoteHandle];
  value = [remoteHandle value];
  identifier = [v252 identifier];
  v240 = (incomingCallFilterQueryResult)[2](incomingCallFilterQueryResult, value, identifier);

  v75 = sub_100004778(v74);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    remoteHandle2 = [updateCopy remoteHandle];
    value2 = [remoteHandle2 value];
    v78 = TULoggableStringForHandle();
    identifier2 = [v252 identifier];
    *buf = 138412802;
    *v290 = v240;
    *&v290[8] = 2112;
    v291 = v78;
    v292 = 2112;
    v293 = identifier2;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Query result: %@ for handle: %@ callSource: %@", buf, 0x20u);
  }

  if (TUCommunicationTrustEnabled())
  {
    if ([updateCopy commTrustScore] == 2 || !objc_msgSend(v240, "allowCallForDestinationID"))
    {
      v238 = 1;
    }

    else
    {
      liveLookupExtensionsAllowCallsFromHandle = [(CSDProviderCallDataSource *)selfCopy liveLookupExtensionsAllowCallsFromHandle];
      remoteHandle3 = [updateCopy remoteHandle];
      value3 = [remoteHandle3 value];
      if ((liveLookupExtensionsAllowCallsFromHandle)[2](liveLookupExtensionsAllowCallsFromHandle, value3))
      {
        systemAllowsCall = [(CSDProviderCallDataSource *)selfCopy systemAllowsCall];
        remoteHandle4 = [updateCopy remoteHandle];
        value4 = [remoteHandle4 value];
        identifier3 = [v252 identifier];
        v237 = (systemAllowsCall)[2](systemAllowsCall, value4, identifier3);

        v87 = v237 ^ 1;
      }

      else
      {
        v87 = 1;
      }

      v238 = v87;
    }

    commTrustScore = [updateCopy commTrustScore];
    if (commTrustScore)
    {
      commTrustScore = [v240 isFromBlockList];
      isFromBlockList = commTrustScore;
    }

    else
    {
      isFromBlockList = 1;
    }
  }

  else
  {
    incomingCallFilterQueryResult2 = [(CSDProviderCallDataSource *)selfCopy incomingCallFilterQueryResult];
    remoteHandle5 = [updateCopy remoteHandle];
    value5 = [remoteHandle5 value];
    identifier4 = [v252 identifier];
    v92 = (*(incomingCallFilterQueryResult2 + 16))(incomingCallFilterQueryResult2, value5, identifier4);

    LODWORD(incomingCallFilterQueryResult2) = [v92 allowCallForDestinationID];
    isFromBlockList = [v92 isFromBlockList];

    v238 = incomingCallFilterQueryResult2 ^ 1;
  }

  v94 = sub_100004778(commTrustScore);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    v95 = @"NO";
    if (isFromBlockList)
    {
      v96 = @"YES";
    }

    else
    {
      v96 = @"NO";
    }

    if (v238)
    {
      v95 = @"YES";
    }

    *buf = 138412546;
    *v290 = v96;
    *&v290[8] = 2112;
    v291 = v95;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "shouldBlock: %@ shouldSilence %@", buf, 0x16u);
  }

  featureFlags2 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
  isFocusBasedSimSilencingEnabled = [featureFlags2 isFocusBasedSimSilencingEnabled];

  if (isFocusBasedSimSilencingEnabled)
  {
    v100 = sub_100004778(v99);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      isTelephonyProvider2 = [v255 isTelephonyProvider];
      *buf = 67109376;
      *v290 = v238;
      *&v290[4] = 1024;
      *&v290[6] = isTelephonyProvider2;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "simFocus: shouldSilence:%d, isTelephonyProvider: %d", buf, 0xEu);
    }

    if ([v255 isTelephonyProvider])
    {
      focusAllowsCall = [(CSDProviderCallDataSource *)selfCopy focusAllowsCall];
      v103 = (focusAllowsCall)[2](focusAllowsCall, updateCopy, v255);

      v105 = sub_100004778(v104);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v290 = v103;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "simFocus: focusAllowsCall result: %d", buf, 8u);
      }

      LOBYTE(v238) = v238 | v103 ^ 1;
    }
  }

  isCarModeActive = [routeManager isCarModeActive];
  isAnyVehicleRouteAvailableForAnyCall = [routeManager isAnyVehicleRouteAvailableForAnyCall];
  if (isAnyVehicleRouteAvailableForAnyCall)
  {
    v108 = 1;
  }

  else
  {
    isAnyVehicleRouteAvailableForAnyCall = [routeManager isAnyBluetoothHeadphoneRouteAvailableForAnyCall];
    v108 = isAnyVehicleRouteAvailableForAnyCall;
  }

  if (isCarModeActive & v108 & 1) != 0 || isCarModeActive && (isAnyVehicleRouteAvailableForAnyCall = [routeManager isCarPlayRouteAvailable], (isAnyVehicleRouteAvailableForAnyCall))
  {
    v109 = 1;
  }

  else
  {
    featureFlags3 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
    if ([featureFlags3 nearbyFaceTimeEnabled])
    {
      v109 = [updateCopy nearbyMode] != 0;
    }

    else
    {
      v109 = 0;
    }
  }

  v111 = sub_100004778(isAnyVehicleRouteAvailableForAnyCall);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v290 = isCarModeActive;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "carModeActive=%d", buf, 8u);
  }

  v113 = sub_100004778(v112);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    isCarPlayRouteAvailable = [routeManager isCarPlayRouteAvailable];
    *buf = 67109120;
    *v290 = isCarPlayRouteAvailable;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "routeManager.isCarPlayRouteAvailable=%d", buf, 8u);
  }

  v116 = sub_100004778(v115);
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v290 = v109;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "shouldIgnoreDND=%d", buf, 8u);
  }

  supportsPrimaryCalling = [(CSDProviderCallDataSource *)selfCopy supportsPrimaryCalling];
  if (supportsPrimaryCalling[2]())
  {
    isTelephonyProvider3 = 0;
  }

  else
  {
    isTelephonyProvider3 = [v255 isTelephonyProvider];
  }

  v120 = sub_100004778(v119);
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v290 = isTelephonyProvider3;
    _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "isThumperCall=%d", buf, 8u);
  }

  if (!v255 || ([v255 isSystemProvider] & 1) != 0)
  {
LABEL_124:
    protectedAppsUtilities = [(CSDProviderCallDataSource *)selfCopy protectedAppsUtilities];
    bundleIdentifier = [v252 bundleIdentifier];
    v128 = [protectedAppsUtilities shouldBlockCallWithBundleIdentifier:bundleIdentifier];

    if (v128)
    {
      v130 = sub_100004778(v129);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier2 = [v252 bundleIdentifier];
        *buf = 138412290;
        *v290 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[WARN] Blocking incoming call UI because the originating app [Bundle Identifier: %@] responsible for the call is hidden and currently not foregrounded", buf, 0xCu);
      }

      v132 = [NSError cx_incomingCallErrorWithCode:6];
      v133 = v284[5];
      v284[5] = v132;

LABEL_132:
      v64 = 0;
      v65 = 0;
      v67 = 0;
LABEL_154:

      v66 = routeManager;
      goto LABEL_155;
    }

    if (isFromBlockList)
    {
      v134 = sub_100004778(v129);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because it was on the block list", buf, 2u);
      }

      v135 = [NSError cx_incomingCallErrorWithCode:4];
      v136 = v284[5];
      v284[5] = v135;

      goto LABEL_132;
    }

    _shouldBlockIfScreenSharing = [(CSDProviderCallDataSource *)selfCopy _shouldBlockIfScreenSharing];
    if (_shouldBlockIfScreenSharing)
    {
      v138 = sub_100004778(_shouldBlockIfScreenSharing);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "[WARN] Blocking call because we are screen sharing and don't want to let that notification come through", buf, 2u);
      }

      v139 = [NSError cx_incomingCallErrorWithCode:104];
      v140 = v284[5];
      v284[5] = v139;

LABEL_137:
      v64 = 0;
      v65 = 0;
LABEL_153:
      v67 = 1;
      goto LABEL_154;
    }

    if (!v109 && (v238 & 1) != 0)
    {
      v145 = sub_100004778(_shouldBlockIfScreenSharing);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        isCarPlayRouteAvailable2 = [routeManager isCarPlayRouteAvailable];
        *buf = 67109632;
        *v290 = isCarModeActive;
        *&v290[4] = 1024;
        *&v290[6] = v108;
        LOWORD(v291) = 1024;
        *(&v291 + 2) = isCarPlayRouteAvailable2;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because call did not pass DND filter. CarMode (%d) BT Audio Route (%d), CarPlay (%d)", buf, 0x14u);
      }

      v147 = [NSError cx_incomingCallErrorWithCode:3];
      v148 = v284[5];
      v284[5] = v147;

      v64 = 0;
      v65 = 1;
      goto LABEL_153;
    }

    supportsPrimaryCalling2 = [(CSDProviderCallDataSource *)selfCopy supportsPrimaryCalling];
    if (supportsPrimaryCalling2[2]())
    {
    }

    else
    {
      shouldPreferRelayOverDirectSecondaryCalling = [(CSDProviderCallDataSource *)selfCopy shouldPreferRelayOverDirectSecondaryCalling];
      v150 = (shouldPreferRelayOverDirectSecondaryCalling)[2](shouldPreferRelayOverDirectSecondaryCalling, v255, [updateCopy hasVideo]);

      if (v150)
      {
        v152 = sub_100004778(v151);
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because it is a direct call to a secondary device and relay calling is preferred over direct calling", buf, 2u);
        }

        v153 = [NSError cx_incomingCallErrorWithCode:100];
        v154 = v284[5];
        v284[5] = v153;

        goto LABEL_132;
      }
    }

    shouldFilterCall = [(CSDProviderCallDataSource *)selfCopy shouldFilterCall];
    v156 = (shouldFilterCall)[2](shouldFilterCall, updateCopy, v255);

    if (v156)
    {
      v157 = [NSError cx_incomingCallErrorWithCode:4];
      v158 = v284[5];
      v284[5] = v157;

      v64 = 0;
      v65 = [updateCopy filteredOutReason] != 5;
      goto LABEL_153;
    }

    if (!([routeManager isCarPlayRouteAvailable] & 1 | ((v245 & 1) == 0)) && ((isAvailable ^ 1) & 1) == 0 && TUCommunicationTrustEnabled() && objc_msgSend(updateCopy, "commTrustScore") <= 4)
    {
      featureFlags4 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
      if (!TUReceptionistAvailable())
      {
LABEL_196:

        goto LABEL_197;
      }

      remoteHandle6 = [updateCopy remoteHandle];
      value6 = [remoteHandle6 value];
      serverBag = [(CSDProviderCallDataSource *)selfCopy serverBag];
      if (isTelephonyProvider3 & 1 | ((TUCheckReceptionistDisclosed() & 1) == 0))
      {

        goto LABEL_196;
      }

      isEligibleBlock = [(CSDProviderCallDataSource *)selfCopy isEligibleBlock];
      v231 = (isEligibleBlock)[2](isEligibleBlock, updateCopy, v255, 1);

      if (v231)
      {
        v233 = sub_100004778(v232);
        if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "Call has commTrustScore of unknown or less and we're not sending to LVM, send to Receptionist", buf, 2u);
        }

        v65 = 0;
        v64 = 1;
        goto LABEL_153;
      }
    }

LABEL_197:
    featureFlags5 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
    if ([featureFlags5 nudityDetectionEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      remoteParticipantHandles = [updateCopy remoteParticipantHandles];
      v189 = [(CSDProviderCallDataSource *)selfCopy remoteScaParticipants:remoteParticipantHandles];
      if ([updateCopy hasVideo])
      {
        v190 = 1;
      }

      else
      {
        v190 = 2;
      }

      v191 = [SCAnalysisHistory shouldDeclineIncomingCallFromParticipants:v189 callType:v190];

      if (v191)
      {
        v193 = sub_100004778(v192);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because it was on the sensitive content shared list", buf, 2u);
        }

        v194 = [NSError cx_incomingCallErrorWithCode:7];
        v195 = v284[5];
        v284[5] = v194;

        goto LABEL_137;
      }
    }

    else
    {
    }

    requiresAuthentication = [updateCopy requiresAuthentication];
    if (requiresAuthentication)
    {
      v197 = sub_100004778(requiresAuthentication);
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "[WARN] Update requires additional authentication before it can be answered", buf, 2u);
      }

      v198 = [CSDIDSPendingChat alloc];
      uUID = [updateCopy UUID];
      hasVideo = [updateCopy hasVideo];
      remoteHandle7 = [updateCopy remoteHandle];
      tuHandle = [remoteHandle7 tuHandle];
      v203 = [(CSDIDSPendingChat *)v198 initWithUUID:uUID isVideo:hasVideo handle:tuHandle];

      v204 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v252 UUID:dCopy update:updateCopy originatingUIType:45];
      [v204 setLocalUserInHomeCountry:v247];
      [v204 setAnsweringMachineAvailable:isAvailable];
      [v204 setIdentifiedSpamInCallerName:v246];
      answeringMachineController2 = [callStateController answeringMachineController];
      LODWORD(remoteHandle7) = answeringMachineController2 == 0;

      if ((remoteHandle7 | isAvailable))
      {
        if ((TUCallScreeningEnabled() & 1) == 0)
        {
          [v204 setLiveVoicemailUnavailableReason:5];
        }
      }

      else
      {
        answeringMachineController3 = [callStateController answeringMachineController];
        [v204 setLiveVoicemailUnavailableReason:{objc_msgSend(answeringMachineController3, "liveVoicemailUnavailableReason")}];
      }

      [callStateController setCallDelegatesIfNeeded:v204];
      pendingCallsToChatUUIDs = [(CSDProviderCallDataSource *)selfCopy pendingCallsToChatUUIDs];
      uuid = [(CSDIDSPendingChat *)v203 uuid];
      [pendingCallsToChatUUIDs setObject:v204 forKeyedSubscript:uuid];

      v222 = +[NSNotificationCenter defaultCenter];
      v303 = @"CSDIDSPendingChatKey";
      v304 = v203;
      v223 = [NSDictionary dictionaryWithObjects:&v304 forKeys:&v303 count:1];
      [v222 postNotificationName:@"CSDIDSPendingMessageDidReceiveInviteNotification" object:0 userInfo:v223];

      goto LABEL_132;
    }

    v206 = [(CSDProviderCallDataSource *)selfCopy _endMutuallyExclusiveCalls:updateCopy];
    v207 = v284[5];
    v284[5] = v206;

    featureFlags6 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
    if ([featureFlags6 uplevelFTAEnabled])
    {
      isUpgradeToVideo = [updateCopy isUpgradeToVideo];

      if (!isUpgradeToVideo)
      {
        v211 = 0;
LABEL_230:
        if (!v284[5])
        {
          v226 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v252 UUID:dCopy update:updateCopy originatingUIType:45];
          [v226 setLocalUserInHomeCountry:v247];
          [v226 setUpgradedFromCallUUID:v211];
          [v226 setAnsweringMachineAvailable:isAvailable];
          [v226 setIdentifiedSpamInCallerName:v246];
          answeringMachineController4 = [callStateController answeringMachineController];
          v228 = answeringMachineController4 == 0;

          if ((v228 | isAvailable))
          {
            if ((TUCallScreeningEnabled() & 1) == 0)
            {
              [v226 setLiveVoicemailUnavailableReason:5];
            }
          }

          else
          {
            answeringMachineController5 = [callStateController answeringMachineController];
            [v226 setLiveVoicemailUnavailableReason:{objc_msgSend(answeringMachineController5, "liveVoicemailUnavailableReason")}];
          }

          [callStateController setCallDelegatesIfNeeded:v226];
          [callStateController propertiesChangedForCall:v226];
        }

        goto LABEL_132;
      }

      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      callCenter = [callStateController callCenter];
      featureFlags6 = [callCenter currentCalls];

      v211 = [featureFlags6 countByEnumeratingWithState:&v271 objects:v302 count:16];
      if (v211)
      {
        v212 = *v272;
        while (2)
        {
          for (k = 0; k != v211; k = k + 1)
          {
            if (*v272 != v212)
            {
              objc_enumerationMutation(featureFlags6);
            }

            v214 = *(*(&v271 + 1) + 8 * k);
            handle2 = [v214 handle];
            v216 = [CXHandle handleWithTUHandle:handle2];

            remoteHandle8 = [updateCopy remoteHandle];
            v218 = [v216 isEqual:remoteHandle8];

            if (v218)
            {
              v224 = [NSUUID alloc];
              callUUID = [v214 callUUID];
              v211 = [v224 initWithUUIDString:callUUID];

              goto LABEL_229;
            }
          }

          v211 = [featureFlags6 countByEnumeratingWithState:&v271 objects:v302 count:16];
          if (v211)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v211 = 0;
    }

LABEL_229:

    goto LABEL_230;
  }

  bundleIdentifier3 = [v255 bundleIdentifier];
  voipApplicationController = [callStateController voipApplicationController];
  v123 = [voipApplicationController shouldAllowIncomingCall:bundleIdentifier3];

  if (v123)
  {
    voipApplicationController2 = [callStateController voipApplicationController];
    [voipApplicationController2 noteReportedNewIncomingVoIPCallForBundleIdentifier:bundleIdentifier3];

    goto LABEL_124;
  }

  v141 = sub_100004778(v124);
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring add incoming call request because we are not allowing the app to receive calls: ", buf, 2u);
  }

  v142 = [NSError cx_incomingCallErrorWithCode:106];
  (*(completionCopy + 2))(completionCopy, v142);

  v143 = routeManager;
LABEL_188:

  _Block_object_dispose(&v283, 8);
}

- (void)callSource:(id)source _reportedNewIncomingCallWithUUIDSilently:(id)silently update:(id)update
{
  sourceCopy = source;
  silentlyCopy = silently;
  updateCopy = update;
  v11 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  callStateController = [(CSDCallDataSource *)self callStateController];
  iSOCountryCode = [updateCopy ISOCountryCode];
  if (!iSOCountryCode)
  {
    iSOCountryCode = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCallWithUUID:silentlyCopy provider:v11 callUpdate:updateCopy];
    if (iSOCountryCode)
    {
      [updateCopy setISOCountryCode:iSOCountryCode];
    }
  }

  v23 = v11;
  incomingCallFilterQueryResult = [(CSDProviderCallDataSource *)self incomingCallFilterQueryResult];
  remoteHandle = [updateCopy remoteHandle];
  value = [remoteHandle value];
  identifier = [sourceCopy identifier];
  v18 = (incomingCallFilterQueryResult)[2](incomingCallFilterQueryResult, value, identifier);

  isFromBlockList = [v18 isFromBlockList];
  v20 = isFromBlockList;
  v21 = sub_100004778(isFromBlockList);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "creating protected call", buf, 2u);
  }

  v22 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:sourceCopy UUID:silentlyCopy update:updateCopy originatingUIType:45];
  [v22 setDisconnectedReason:21];
  [v22 setSupportsRecents:v20 ^ 1u];
  [v22 setLocalUserInHomeCountry:0];
  [v22 setAnsweringMachineAvailable:0];
  [v22 setFilteredOutReason:10];
  [callStateController setCallDelegatesIfNeeded:v22];
  [callStateController propertiesChangedForCall:v22];
}

- (void)callSource:(id)source reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  completionCopy = completion;
  v14 = sub_100004778(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138412802;
    v51 = sourceCopy;
    v52 = 2112;
    v53 = uUIDString;
    v54 = 2112;
    v55 = updateCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received add incoming call request from call source %@ with UUID %@ update %@", buf, 0x20u);
  }

  [CSDSignposts trace:4];
  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy];
  v17 = [(CSDProviderCallDataSource *)self _relayCallWithUUID:dCopy];
  v18 = v17;
  if (!(v16 | v17))
  {
    if ([updateCopy shouldSilentlyRegisterIMAVCall])
    {
      [(CSDProviderCallDataSource *)self callSource:sourceCopy _reportedNewIncomingCallWithUUIDSilently:dCopy update:updateCopy];
      completionCopy[2](completionCopy, 0);
      goto LABEL_39;
    }

    v21 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
    if (!TUCommunicationTrustEnabled())
    {
LABEL_38:
      [(CSDProviderCallDataSource *)self callSource:sourceCopy _reportedNewIncomingCallWithUUID:dCopy update:updateCopy completion:completionCopy];

      goto LABEL_39;
    }

    v22 = [(CSDCommunicationTrustScoreDataProviderProtocol *)self->_communicationTrustScoreDataProvider getTrustScoreFor:updateCopy callProvider:v21];
    v23 = v22;
    [updateCopy setCommTrustScore:v22];
    [updateCopy setIsKnownCaller:v23 > 4];
    serverBag = [(CSDProviderCallDataSource *)self serverBag];
    v25 = [serverBag objectForKey:@"disable-receptionist-disclosure-checks"];

    v49 = v25;
    if (v25)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [v25 BOOLValue];
        LODWORD(v25) = isKindOfClass;
      }

      else
      {
        LODWORD(v25) = 0;
      }
    }

    v27 = sub_100004778(isKindOfClass);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      if (v25)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v51 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "specialUnknown: disclosureChecksEnabled=%@", buf, 0xCu);
    }

    if (v25 & 1 | (([v21 isTelephonyProvider] & 1) == 0) || !objc_msgSend(updateCopy, "isKnownCaller") || (objc_msgSend(updateCopy, "remoteHandle"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "value"), v30 = objc_claimAutoreleasedReturnValue(), -[CSDProviderCallDataSource serverBag](self, "serverBag"), v48 = v21, v31 = objc_claimAutoreleasedReturnValue(), v47 = TUCheckReceptionistDisclosed(), v31, v21 = v48, v30, v29, !v47))
    {
LABEL_37:

      goto LABEL_38;
    }

    v33 = sub_100004778(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "We have a known caller, might force it to specialUnknown", buf, 2u);
    }

    v34 = +[NSUserDefaults tu_defaults];
    v35 = [v34 objectForKey:@"specialUnknownValue"];

    if (v35)
    {
      v36 = +[NSUserDefaults tu_defaults];
      [updateCopy setSpecialUnknown:{objc_msgSend(v36, "BOOLForKey:", @"specialUnknownValue"}];

      v38 = sub_100004778(v37);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      specialUnknown = [updateCopy specialUnknown];
      v40 = @"NO";
      if (specialUnknown)
      {
        v40 = @"YES";
      }

      *buf = 138412290;
      v51 = v40;
      v41 = "Default set, set specialUnknown: %@";
    }

    else
    {
      0x32 = [updateCopy setSpecialUnknown:arc4random_uniform(0x64u) < 0x32];
      v38 = sub_100004778(0x32);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      specialUnknown2 = [updateCopy specialUnknown];
      v44 = @"NO";
      if (specialUnknown2)
      {
        v44 = @"YES";
      }

      *buf = 138412290;
      v51 = v44;
      v41 = "Default not set, calculated specialUnknown: %@";
    }

    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
LABEL_33:
    v21 = v48;

    specialUnknown3 = [updateCopy specialUnknown];
    if (specialUnknown3)
    {
      v46 = sub_100004778(specialUnknown3);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "We are forcing a known caller to be specialUnknown", buf, 2u);
      }

      [updateCopy setCommTrustScore:4];
      [updateCopy setIsKnownCaller:0];
    }

    goto LABEL_37;
  }

  v19 = sub_100004778(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v51 = v16;
    v52 = 2112;
    v53 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring add incoming call request because a call already exists with the same UUID: existingCall: %@, relayCallWithUUID: %@", buf, 0x16u);
  }

  v20 = [NSError cx_incomingCallErrorWithCode:2];
  (completionCopy)[2](completionCopy, v20);

LABEL_39:
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d updated:(id)updated
{
  sourceCopy = source;
  dCopy = d;
  updatedCopy = updated;
  v11 = sub_100004778(updatedCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138412802;
    v46 = sourceCopy;
    v47 = 2112;
    v48 = uUIDString;
    v49 = 2112;
    v50 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with update %@", buf, 0x20u);
  }

  v14 = sub_100004778(v13);
  if (os_signpost_enabled(v14))
  {
    uUID = [updatedCopy UUID];
    uUIDString2 = [uUID UUIDString];
    *buf = 138543362;
    v46 = uUIDString2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSDProviderCallDataSource", "callSourceUpdated-%{public}@", buf, 0xCu);
  }

  v17 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy controllableByCallSource:sourceCopy];
  if ((-[NSObject isMutuallyExclusiveCall](v17, "isMutuallyExclusiveCall") & 1) != 0 || [updatedCopy isMutuallyExclusiveCall])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    calls = [(CSDCallDataSource *)self calls];
    v19 = [calls countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      selfCopy = self;
      v40 = sourceCopy;
      v21 = *v42;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(calls);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          uniqueProxyIdentifierUUID = [v17 uniqueProxyIdentifierUUID];
          uniqueProxyIdentifierUUID2 = [v23 uniqueProxyIdentifierUUID];
          v26 = [uniqueProxyIdentifierUUID isEqual:uniqueProxyIdentifierUUID2];

          if (!v26)
          {

            calls = [[CXEndCallAction alloc] initWithCallUUID:dCopy];
            v27 = sub_100004778(calls);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v46 = calls;
              v47 = 2112;
              v48 = dCopy;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Sending %@ for existing call with uniqueProxyIdentifierUUID=%@ since it cannot co-exist with ongoing calls.", buf, 0x16u);
            }

            self = selfCopy;
            [(CSDProviderCallDataSource *)selfCopy performCallAction:calls forCall:v17];
            sourceCopy = v40;
            goto LABEL_19;
          }
        }

        v20 = [calls countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      self = selfCopy;
      sourceCopy = v40;
    }

LABEL_19:
  }

  if (v17 || (-[CSDProviderCallDataSource pendingPulledCallContexts](self, "pendingPulledCallContexts"), v28 = objc_claimAutoreleasedReturnValue(), [v28 objectForKeyedSubscript:dCopy], v29 = objc_claimAutoreleasedReturnValue(), v28, objc_msgSend(v29, "call"), v17 = objc_claimAutoreleasedReturnValue(), v29, v17))
  {
    isoCountryCode = [v17 isoCountryCode];
    if (!isoCountryCode)
    {
      iSOCountryCode = [updatedCopy ISOCountryCode];

      if (iSOCountryCode)
      {
        goto LABEL_25;
      }

      isoCountryCode = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCall:v17];
      iSOCountryCode2 = [updatedCopy ISOCountryCode];
      v38 = TUStringsAreEqualOrNil();

      if ((v38 & 1) == 0)
      {
        [updatedCopy setISOCountryCode:isoCountryCode];
      }
    }

LABEL_25:
    v33 = sub_100004778([v17 updateWithCallUpdate:updatedCopy]);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString3 = [dCopy UUIDString];
      *buf = 138413058;
      v46 = sourceCopy;
      v47 = 2112;
      v48 = uUIDString3;
      v49 = 2112;
      v50 = updatedCopy;
      v51 = 2112;
      v52 = v17;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with update %@ => %@", buf, 0x2Au);
    }

    goto LABEL_28;
  }

  v17 = sub_100004778(v30);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString4 = [dCopy UUIDString];
    calls2 = [(CSDCallDataSource *)self calls];
    *buf = 138412802;
    v46 = sourceCopy;
    v47 = 2112;
    v48 = uUIDString4;
    v49 = 2112;
    v50 = calls2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", buf, 0x20u);
  }

LABEL_28:
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  v11 = sub_100004778(updateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = uUIDString;
    v25 = 2112;
    v26 = updateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with DTMFUpdate %@", &v21, 0x20u);
  }

  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy controllableByCallSource:sourceCopy];
  v14 = v13;
  if (v13 && ([updateCopy digits], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16))
  {
    callStateController = [(CSDCallDataSource *)self callStateController];
    tuCallDTMFUpdate = [updateCopy tuCallDTMFUpdate];
    [callStateController handleReceivedCallDTMFUpdate:tuCallDTMFUpdate forCall:v14];
  }

  else
  {
    callStateController = sub_100004778(v13);
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [dCopy UUIDString];
      calls = [(CSDCallDataSource *)self calls];
      v21 = 138412802;
      v22 = sourceCopy;
      v23 = 2112;
      v24 = uUIDString2;
      v25 = 2112;
      v26 = calls;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
    }
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v16 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138413314;
    v79 = sourceCopy;
    v80 = 2112;
    v81 = uUIDString;
    v82 = 2112;
    v83 = dateCopy;
    v84 = 2048;
    reasonCopy = reason;
    v86 = 2112;
    v87 = contextCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Call source %@ ended call with UUID %@ with ended at date %@ with reason %ld failure context %@", buf, 0x34u);
  }

  v18 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v19 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  v64 = contextCopy;
  if (!v18)
  {
    pendingCallsToChatUUIDs = [(CSDProviderCallDataSource *)self pendingCallsToChatUUIDs];
    v30 = [pendingCallsToChatUUIDs objectForKeyedSubscript:dCopy];

    if (v30)
    {
      v32 = +[NSNotificationCenter defaultCenter];
      v75[0] = @"CSDIDSPendingChatUUIDKey";
      v75[1] = @"CSDIDSPendingCallKey";
      v76[0] = dCopy;
      v76[1] = v30;
      [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
      v34 = v33 = v19;
      [v32 postNotificationName:@"CSDIDSPendingMessageDidReceiveCancelNotification" object:0 userInfo:v34];

      v19 = v33;
      pendingCallsToChatUUIDs2 = [(CSDProviderCallDataSource *)self pendingCallsToChatUUIDs];
      [pendingCallsToChatUUIDs2 setObject:0 forKeyedSubscript:dCopy];
    }

    else
    {
      pendingCallsToChatUUIDs2 = sub_100004778(v31);
      if (os_log_type_enabled(pendingCallsToChatUUIDs2, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString2 = [dCopy UUIDString];
        calls = [(CSDCallDataSource *)self calls];
        *buf = 138412802;
        v79 = sourceCopy;
        v80 = 2112;
        v81 = uUIDString2;
        v82 = 2112;
        v83 = calls;
        _os_log_impl(&_mh_execute_header, pendingCallsToChatUUIDs2, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  if ([v18 isIncoming] && v19 && (objc_msgSend(v19, "isSystemProvider") & 1) == 0 && (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v21 = v20, objc_msgSend(v18, "dateCreated"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSinceReferenceDate"), v24 = v21 - v23, v22, v24 < 2.0))
  {
    v39 = dateCopy;
    v40 = sub_100004778(v25);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString3 = [dCopy UUIDString];
      *buf = 138412290;
      v79 = uUIDString3;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] Deferring acknowledgement of VoIP call with UUID %@ ended until minimum ring duration has passed", buf, 0xCu);
    }

    v42 = dispatch_time(0, ((2.0 - v24 + 0.01) * 1000000000.0));
    queue = [(CSDCallDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10025CDD4;
    block[3] = &unk_10061D378;
    block[4] = self;
    v70 = sourceCopy;
    v71 = dCopy;
    v72 = v39;
    reasonCopy2 = reason;
    v36 = v64;
    v73 = v64;
    v44 = v42;
    dateCopy = v39;
    dispatch_after(v44, queue, block);
  }

  else
  {
    dateEnded = [v18 dateEnded];

    if (dateEnded)
    {
      v28 = sub_100004778(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v18;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Call %@ already has a date ended", buf, 0xCu);
      }

LABEL_19:
      v36 = v64;
      goto LABEL_20;
    }

    [v18 setEndedReason:reason];
    v36 = contextCopy;
    [v18 setFailureContext:contextCopy];
    if (dateCopy)
    {
      [v18 setDateEnded:dateCopy];
    }

    else
    {
      v45 = +[NSDate date];
      [v18 setDateEnded:v45];
    }

    callGroupUUID = [v18 callGroupUUID];

    if (callGroupUUID)
    {
      v60 = v19;
      v61 = dateCopy;
      v62 = dCopy;
      v63 = sourceCopy;
      v47 = +[NSMutableArray array];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      calls2 = [(CSDCallDataSource *)self calls];
      v49 = [calls2 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v66;
        do
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v66 != v51)
            {
              objc_enumerationMutation(calls2);
            }

            v53 = *(*(&v65 + 1) + 8 * i);
            if (v53 != v18)
            {
              callGroupUUID2 = [*(*(&v65 + 1) + 8 * i) callGroupUUID];
              callGroupUUID3 = [v18 callGroupUUID];
              v56 = [callGroupUUID2 isEqual:callGroupUUID3];

              if (v56)
              {
                [v47 addObject:v53];
              }
            }
          }

          v50 = [calls2 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v50);
      }

      dCopy = v62;
      sourceCopy = v63;
      v19 = v60;
      dateCopy = v61;
      v36 = v64;
      if ([v47 count] == 1)
      {
        v57 = sub_100004778(1);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          firstObject = [v47 firstObject];
          *buf = 138412290;
          v79 = firstObject;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Setting callGroupUUID to nil for orphaned grouped call %@", buf, 0xCu);
        }

        firstObject2 = [v47 firstObject];
        [firstObject2 setCallGroupUUID:0];
      }
    }
  }

LABEL_20:
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = sourceCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ sent invitation for outgoing call with UUID %@ at date %@", &v23, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v13 = v12;
  if (v12)
  {
    isOutgoing = [v12 isOutgoing];
    if (isOutgoing)
    {
      dateSentInvitation = [v13 dateSentInvitation];

      if (!dateSentInvitation)
      {
        if (dateCopy)
        {
          [v13 setDateSentInvitation:dateCopy];
          goto LABEL_15;
        }

        v17 = +[NSDate date];
        [v13 setDateSentInvitation:v17];
        goto LABEL_14;
      }

      v17 = sub_100004778(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = uniqueProxyIdentifier;
        v19 = "[WARN] Call with UUID %@ already has a date started outgoing";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, &v23, 0xCu);
      }
    }

    else
    {
      v17 = sub_100004778(isOutgoing);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = uniqueProxyIdentifier;
        v19 = "[WARN] Call with UUID %@ is not outgoing";
        goto LABEL_13;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v20 = sub_100004778(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    calls = [(CSDCallDataSource *)self calls];
    v22 = [(CSDProviderCallDataSource *)self _identifiersForCalls:calls];
    v23 = 138412802;
    v24 = sourceCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v23, 0x20u);
  }

LABEL_15:
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = sourceCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ started connecting call with UUID %@ at date %@", &v23, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v13 = v12;
  if (v12)
  {
    isOutgoing = [v12 isOutgoing];
    if (isOutgoing)
    {
      dateStartedConnecting = [v13 dateStartedConnecting];

      if (!dateStartedConnecting)
      {
        if (dateCopy)
        {
          [v13 setDateStartedConnecting:dateCopy];
          goto LABEL_15;
        }

        v17 = +[NSDate date];
        [v13 setDateStartedConnecting:v17];
        goto LABEL_14;
      }

      v17 = sub_100004778(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = uniqueProxyIdentifier;
        v19 = "[WARN] Call with UUID %@ already has a date started connecting";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, &v23, 0xCu);
      }
    }

    else
    {
      v17 = sub_100004778(isOutgoing);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = uniqueProxyIdentifier;
        v19 = "[WARN] Call with UUID %@ is not outgoing";
        goto LABEL_13;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v20 = sub_100004778(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    calls = [(CSDCallDataSource *)self calls];
    v22 = [(CSDProviderCallDataSource *)self _identifiersForCalls:calls];
    v23 = 138412802;
    v24 = sourceCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v23, 0x20u);
  }

LABEL_15:
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d connectedAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = sourceCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ connected outgoing call with UUID %@ at date %@", &v23, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v13 = v12;
  if (v12)
  {
    if (([v12 isOutgoing] & 1) == 0)
    {
      shouldAcceptDateConnectedProviderUpdates = [v13 shouldAcceptDateConnectedProviderUpdates];
      if (!shouldAcceptDateConnectedProviderUpdates)
      {
        v17 = sub_100004778(shouldAcceptDateConnectedProviderUpdates);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
          v23 = 138412290;
          v24 = uniqueProxyIdentifier;
          v19 = "[WARN] Call with %@ is not outgoing";
          goto LABEL_16;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    dateConnected = [v13 dateConnected];

    if (dateConnected)
    {
      v17 = sub_100004778(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = uniqueProxyIdentifier;
        v19 = "[WARN] Call with UUID %@ already has a date connected";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, &v23, 0xCu);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (!dateCopy)
    {
      v17 = +[NSDate date];
      [v13 setDateConnected:v17];
      goto LABEL_18;
    }

    [v13 setDateConnected:dateCopy];
  }

  else
  {
    v20 = sub_100004778(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      calls = [(CSDCallDataSource *)self calls];
      v22 = [(CSDProviderCallDataSource *)self _identifiersForCalls:calls];
      v23 = 138412802;
      v24 = sourceCopy;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v23, 0x20u);
    }
  }

LABEL_19:
}

- (void)callSource:(id)source reportedNewOutgoingCallWithUUID:(id)d update:(id)update
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  v10 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  if (!v10)
  {
    v11 = [[CSDProviderCall alloc] initOutgoingWithUpdate:updateCopy callUUID:dCopy backingCallSource:sourceCopy isExpanseProvider:1];
    callStateController = [(CSDCallDataSource *)self callStateController];
    [callStateController setCallDelegatesIfNeeded:v11];
    [callStateController propertiesChangedForCall:v11];
  }
}

- (void)callSource:(id)source reportedAudioFinishedForCallWithUUID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  v8 = sub_100004778(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v17 = 138412546;
    v18 = sourceCopy;
    v19 = 2112;
    v20 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call source %@ finished audio for call with UUID %@", &v17, 0x16u);
  }

  v10 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v11 = sub_100004778(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      uUIDString2 = [dCopy UUIDString];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found call %@ for UUID %@, so setting hasAudioFinished", &v17, 0x16u);
    }

    [v10 setHasAudioFinished:1];
  }

  else
  {
    if (v12)
    {
      uUIDString3 = [dCopy UUIDString];
      v17 = 138412290;
      v18 = uUIDString3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find a call for UUID %@, so expediting deferred end interruption instead", &v17, 0xCu);
    }

    callStateController = [(CSDCallDataSource *)self callStateController];
    audioController = [callStateController audioController];
    [audioController expediteDeferredEndInterruptionForCallWithUUID:dCopy];
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dataCopy = data;
  v11 = [(CSDProviderCallDataSource *)self _callWithUUID:d backingCallSource:source];
  v12 = v11;
  if (v11)
  {
    if (direction == 2)
    {
      v15 = v11;
      v13 = &v15;
      goto LABEL_6;
    }

    if (direction == 1)
    {
      v16 = v11;
      v13 = &v16;
LABEL_6:
      v14 = [NSArray arrayWithObjects:v13 count:1];
      [(CSDCallDataSource *)self handleFrequencyDataChanged:dataCopy inDirection:direction forCalls:v14];
    }
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  v9 = [(CSDProviderCallDataSource *)self _callWithUUID:d backingCallSource:source];
  v10 = v9;
  if (v9)
  {
    if (direction == 2)
    {
      v14 = v9;
      v11 = &v14;
      goto LABEL_6;
    }

    if (direction == 1)
    {
      v15 = v9;
      v11 = &v15;
LABEL_6:
      v12 = [NSArray arrayWithObjects:v11 count:1];
      *&v13 = level;
      [(CSDCallDataSource *)self handleMeterLevelChanged:direction inDirection:v12 forCalls:v13];
    }
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  sourceCopy = source;
  dCopy = d;
  identifierCopy = identifier;
  v13 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v16 = 138413058;
    v17 = sourceCopy;
    v18 = 2112;
    v19 = uUIDString;
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 2048;
    usedCopy = used;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Call source %@ received call with UUID: %@ crossDeviceIdentifier %@ bytesOfDataUsed %ld", &v16, 0x2Au);
  }

  uUIDString2 = [dCopy UUIDString];
  [(CSDCallDataSource *)self handleBytesOfDataUsedChanged:used forCallWithUniqueProxyIdentifier:uUIDString2 callHistoryIdentifier:identifierCopy];
}

- (void)callSource:(id)source requestedTransaction:(id)transaction completion:(id)completion
{
  sourceCopy = source;
  transactionCopy = transaction;
  completionCopy = completion;
  v11 = sub_100004778(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = sourceCopy;
    v14 = 2112;
    v15 = transactionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ received requested transaction %@", &v12, 0x16u);
  }

  [(CSDProviderCallDataSource *)self _processRequestedTransaction:transactionCopy fromCallSource:sourceCopy completion:completionCopy];
}

- (void)callSourceManager:(id)manager completedTransactionGroup:(id)group
{
  managerCopy = manager;
  groupCopy = group;
  queue = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025DE08;
  block[3] = &unk_100619E58;
  v12 = managerCopy;
  v13 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  v10 = managerCopy;
  dispatch_async(queue, block);
}

- (void)callSourcesChangedForCallSourceManager:(id)manager
{
  queue = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025E3E0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)callControllerHost:(id)host clientWithIdentifier:(id)identifier requestedTransaction:(id)transaction completion:(id)completion
{
  hostCopy = host;
  identifierCopy = identifier;
  transactionCopy = transaction;
  completionCopy = completion;
  v14 = sub_100004778(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = hostCopy;
    v24 = 2112;
    v25 = transactionCopy;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Call controller host %@ requested transaction %@ for connection with identifier: %@", buf, 0x20u);
  }

  channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
  v16 = [channelSourceManager channelSourceForIdentifier:identifierCopy];

  if (v16 && [(CSDProviderCallDataSource *)self transactionContainsChannelActions:transactionCopy])
  {
    [(CSDProviderCallDataSource *)self _processRequestedTransaction:transactionCopy fromProviderSource:v16 completionHandler:completionCopy];
  }

  else
  {
    callSourceFetcher = [(CSDProviderCallDataSource *)self callSourceFetcher];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10025E85C;
    v18[3] = &unk_10061FD48;
    v19 = transactionCopy;
    selfCopy = self;
    v21 = completionCopy;
    [callSourceFetcher fetchCallSourceForIdentifier:identifierCopy completion:v18];
  }
}

- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain
{
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Marking all calls as changed because providers changed", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v7 = [calls countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(calls);
        }

        [*(*(&v11 + 1) + 8 * v10) propertiesChanged];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [calls countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)callSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  v6 = [callSourceManager callSourceWithIdentifier:identifierCopy];

  return v6;
}

+ (BOOL)_isSystemProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy isEqualToString:@"com.apple.coretelephony"];
  v5 = [identifierCopy isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  v6 = [identifierCopy isEqualToString:@"com.apple.Superbox"];
  v7 = [identifierCopy isEqualToString:@"com.apple.telephonyutilities.callservicesd.TinCan"];

  v8 = _TUIsInternalInstall();
  if (v8 && v6)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Because this is an internal install, com.apple.Superbox (aka Speakerbox) is acting as a system provider", v12, 2u);
    }

    v10 = 1;
  }

  else
  {
    v10 = v4 | v5 | v7;
  }

  return v10 & 1;
}

- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  addressesCopy = addresses;
  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  v9 = [screenTimeCallFilter policyForAddresses:addressesCopy forBundleIdentifier:identifierCopy];

  return v9;
}

- (BOOL)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  identifierCopy = identifier;
  addressesCopy = addresses;
  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  allObjects = [addressesCopy allObjects];

  LOBYTE(synchronouslyCopy) = [screenTimeCallFilter shouldRestrictAddresses:allObjects forBundleIdentifier:identifierCopy performSynchronously:synchronouslyCopy];
  return synchronouslyCopy;
}

- (void)screenTimeCallFilter:(id)filter didChangeAllowed:(BOOL)allowed forCallUUID:(id)d
{
  allowedCopy = allowed;
  dCopy = d;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v29 = allowedCopy;
    *&v29[4] = 2112;
    *&v29[6] = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Changed ScreenTime allowed %d for call with UUID %@", buf, 0x12u);
  }

  if (!allowedCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    calls = [(CSDCallDataSource *)self calls];
    v12 = [calls countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v24;
      *&v13 = 138412290;
      v22 = v13;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(calls);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (([v17 isEmergency] & 1) == 0)
          {
            uniqueProxyIdentifierUUID = [v17 uniqueProxyIdentifierUUID];
            v19 = [uniqueProxyIdentifierUUID isEqual:dCopy];

            if (v19)
            {
              v21 = sub_100004778(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v22;
                *v29 = dCopy;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Call is not allowed by ScreenTime; disconnecting call with UUID: %@", buf, 0xCu);
              }

              [v17 disconnectWithReason:25];
            }
          }
        }

        v14 = [calls countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (OS_dispatch_queue)processObserverQueue
{
  processObserverQueue = self->_processObserverQueue;
  if (!processObserverQueue)
  {
    v4 = dispatch_queue_create("com.apple.csd.providerdatasource.processobserver", 0);
    v5 = self->_processObserverQueue;
    self->_processObserverQueue = v4;

    processObserverQueue = self->_processObserverQueue;
  }

  return processObserverQueue;
}

- (CSDProcessObserverProtocol)processObserver
{
  processObserver = self->_processObserver;
  if (!processObserver)
  {
    v4 = [CSDProcessObserver alloc];
    processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
    v6 = [(CSDProcessObserver *)v4 initWithQueue:processObserverQueue];
    v7 = self->_processObserver;
    self->_processObserver = v6;

    processObserver = self->_processObserver;
  }

  return processObserver;
}

- (CSDBluetoothHangupCommandObserver)btHangupObserver
{
  btHangupObserver = self->_btHangupObserver;
  if (!btHangupObserver)
  {
    v4 = [CSDBluetoothHangupCommandObserver alloc];
    queue = [(CSDCallDataSource *)self queue];
    v6 = [(CSDBluetoothHangupCommandObserver *)v4 initWithQueue:queue];
    v7 = self->_btHangupObserver;
    self->_btHangupObserver = v6;

    btHangupObserver = self->_btHangupObserver;
  }

  return btHangupObserver;
}

- (id)remoteScaParticipants:(id)participants
{
  v3 = [CXHandle tuHandlesWithMembers:participants];
  allObjects = [v3 allObjects];

  v5 = [allObjects tu_mapObjectsUsingBlock:&stru_10061FD88];

  return v5;
}

@end