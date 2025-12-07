@interface _IDSService
+ (_IDSService)serviceWithIdentifier:(id)identifier commands:(id)commands manuallyAckMessages:(BOOL)messages delegateContext:(id)context completion:(id)completion;
+ (id)deviceForFromID:(id)d fromDevices:(id)devices;
- (BOOL)_canAccount:(id)account sendWithFromID:(id)d;
- (BOOL)canSend;
- (BOOL)canSendMessageWithAccount:(id)account toDestination:(id)destination;
- (BOOL)cancelIdentifier:(id)identifier error:(id *)error;
- (BOOL)cancelMessageWithOptions:(id)options destination:(id)destination identifier:(id *)identifier error:(id *)error;
- (BOOL)cancelMessageWithOptions:(id)options destinations:(id)destinations identifier:(id *)identifier error:(id *)error;
- (BOOL)cancelMessageWithOptions:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)cancelOpportunisticDataWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)getProgressUpdateForIdentifier:(id)identifier error:(id *)error;
- (BOOL)isPretendingToBeFull;
- (BOOL)needsLaunchOnNearbyDevicesChanged;
- (BOOL)noteMetricOfType:(int64_t)type context:(id)context;
- (BOOL)reportSpamMessage:(id)message;
- (BOOL)sendAccessoryData:(id)data toAccessoryID:(id)d accessToken:(id)token options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendAheadGroup:(id)group priority:(int64_t)priority options:(id)options identifier:(id *)identifier completion:(id)completion;
- (BOOL)sendBatchMessageProcessedContext:(id)context;
- (BOOL)sendCertifiedDeliveryReceipt:(id)receipt;
- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendData:(id)data priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitation:(id)invitation fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitationUpdate:(id)update fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendOpportunisticData:(id)data options:(id)options identifier:(id)identifier error:(id *)error;
- (BOOL)sendProtobuf:(id)protobuf fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)self0;
- (BOOL)sendServerMessage:(id)message command:(id)command fromAccount:(id)account;
- (BOOL)setWakingPushPriority:(int64_t)priority error:(id *)error;
- (BOOL)updateSubServices:(id)services forDevice:(id)device;
- (IDSAccount)iCloudAccount;
- (IDSServiceProperties)serviceProperties;
- (NSArray)URIs;
- (NSArray)devices;
- (NSDictionary)pseudonymURIMap;
- (NSSet)accounts;
- (NSSet)internalAccounts;
- (NSString)serviceDomain;
- (SEL)protobufActionForType:(unsigned __int16)type isResponse:(BOOL)response;
- (_IDSService)initWithService:(id)service commands:(id)commands manuallyAckMessages:(BOOL)messages delegateContext:(id)context;
- (id)_accountWithURI:(id)i orPseudonym:(id)pseudonym;
- (id)_acknowledgementBlockWithDelegateIdentifier:(id)identifier;
- (id)_activeDeviceForUniqueID:(id)d;
- (id)_filteredAccountsFrom:(id)from;
- (id)_init;
- (id)_initWithDelegateContext:(id)context;
- (id)_payloadFromDecryptedData:(id)data;
- (id)_preferredURIForAccount:(id)account;
- (id)_sendingAccountForAccount:(id)account destination:(id)destination fromID:(id)d;
- (id)daemonListener;
- (id)datagramChannelForSessionDestination:(id)destination options:(id)options error:(id *)error;
- (id)datagramChannelForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)datagramConnectionForSessionDestination:(id)destination error:(id *)error;
- (id)datagramConnectionForSessionDestination:(id)destination uid:(unsigned int)uid error:(id *)error;
- (id)datagramConnectionForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)deviceForFromID:(id)d;
- (id)deviceForUniqueID:(id)d;
- (id)devicesForBTUUID:(id)d;
- (id)firstRoutableInternetDestinationForSelf;
- (id)groupContextController:(id)controller accountsForAlises:(id)alises;
- (id)linkedDeviceForFromID:(id)d withRelationship:(int64_t)relationship;
- (id)linkedDevicesWithRelationship:(int64_t)relationship;
- (id)pseudonymForPseudonymURI:(id)i;
- (id)pseudonymPropertiesWithFeatureID:(id)d scopeID:(id)iD expiryDurationInSeconds:(double)seconds;
- (id)pseudonymsForMaskedURI:(id)i;
- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties;
- (id)streamConnectionForSessionDestination:(id)destination error:(id *)error;
- (id)streamConnectionForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)uriForFromID:(id)d;
- (int64_t)_messageTypeForCommand:(id)command;
- (int64_t)maxEffectivePayloadSize;
- (unint64_t)registrationRestrictionReason;
- (void)OTRTestCallback:(id)callback time:(double)time error:(id)error;
- (void)_callDelegatesForDevicesChanged;
- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group;
- (void)_callIsActiveChanged;
- (void)_callLinkedDevicesChanged;
- (void)_calloutPseudonymsDidUpdate;
- (void)_enforceSandboxPolicy;
- (void)_handlePretendingToBeFullWithIdentifier:(id *)identifier;
- (void)_loadCachedLinkedDevices;
- (void)_logConnectionMap;
- (void)_processAccountSet:(id)set;
- (void)_reloadCachedLinkedDevices;
- (void)_sendMissingMessageMetric:(id)metric;
- (void)_setupNewConnectionForAccount:(id)account;
- (void)_tearDownConnectionForUniqueID:(id)d;
- (void)_updateLinkedDevicesWithDevicesInfo:(id)info;
- (void)account:(id)account pseudonymsChanged:(id)changed;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)accountController:(id)controller accountDisabled:(id)disabled;
- (void)accountController:(id)controller accountEnabled:(id)enabled;
- (void)accountController:(id)controller accountRemoved:(id)removed;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)connection:(id)connection account:(id)account inviteDroppedForSessionID:(id)d fromID:(id)iD context:(id)context error:(id)error;
- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update;
- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context;
- (void)connection:(id)connection account:(id)account sessionInviteReceived:(id)received fromID:(id)d transportType:(id)type options:(id)options context:(id)context messageContext:(id)self0;
- (void)connection:(id)connection connectedDevicesChanged:(id)changed;
- (void)connection:(id)connection devicesChanged:(id)changed;
- (void)connection:(id)connection didCancelMessageWithSuccess:(BOOL)success error:(id)error identifier:(id)identifier;
- (void)connection:(id)connection didFlushCacheForKTPeerURI:(id)i;
- (void)connection:(id)connection didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid;
- (void)connection:(id)connection didHintCheckingTransportLogWithReason:(int64_t)reason;
- (void)connection:(id)connection didSendOpportunisticDataWithIdentifier:(id)identifier toIDs:(id)ds;
- (void)connection:(id)connection identifier:(id)identifier alternateCallbackID:(id)d willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations;
- (void)connection:(id)connection identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)connection:(id)connection identifier:(id)identifier fromURI:(id)i hasBeenDeliveredWithContext:(id)context;
- (void)connection:(id)connection incomingAccessoryData:(id)data fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingAccessoryReportMessage:(id)message accessoryID:(id)d controllerID:(id)iD context:(id)context;
- (void)connection:(id)connection incomingBatchMessage:(id)message;
- (void)connection:(id)connection incomingData:(id)data fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingEngramMessage:(id)message fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingGroupData:(id)data fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingInvitation:(id)invitation fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingInvitationUpdate:(id)update fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingMessage:(id)message fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingOpportunisticData:(id)data withIdentifier:(id)identifier fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingPendingMessageFromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingPendingResourceWithMetadata:(id)metadata guid:(id)guid fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingProtobuf:(id)protobuf fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingTopLevelMessage:(id)message fromURI:(id)i messageContext:(id)context;
- (void)connection:(id)connection isActiveChanged:(BOOL)changed;
- (void)connection:(id)connection messageIdentifier:(id)identifier alternateCallbackID:(id)d updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call messageContext:(id)context;
- (void)connection:(id)connection nearbyDevicesChanged:(id)changed;
- (void)daemonConnected;
- (void)daemonDisconnected;
- (void)dealloc;
- (void)didSwitchActivePairedDevice:(id)device forService:(id)service wasHandled:(BOOL *)handled;
- (void)finishedProvisioningPseudonym:(id)pseudonym success:(BOOL)success error:(id)error forRequestUUID:(id)d;
- (void)finishedRenewingPseudonym:(id)pseudonym success:(BOOL)success error:(id)error requestUUID:(id)d;
- (void)finishedReportingRequestUUID:(id)d withError:(id)error;
- (void)finishedRevokingPseudonymWithSuccess:(BOOL)success error:(id)error requestUUID:(id)d;
- (void)finishedSigningForRequest:(id)request signedData:(id)data error:(id)error;
- (void)finishedVerifyingBatchedSignedDataForRequest:(id)request results:(id)results error:(id)error;
- (void)finishedVerifyingSignedDataForRequest:(id)request success:(BOOL)success error:(id)error;
- (void)groupContextController:(id)controller didCreateGroup:(id)group;
- (void)performGroupTask:(id)task;
- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties completion:(id)completion;
- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion;
- (void)resendSubServicesToDaemonForCurrentDevice;
- (void)revokePseudonym:(id)pseudonym requestProperties:(id)properties completion:(id)completion;
- (void)scheduleTransactionLogTask:(id)task;
- (void)sendAckForMessageWithContext:(id)context;
- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendServerMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendServiceUpdateMessage:(id)message options:(id)options completion:(id)completion;
- (void)service:(id)service linkedDevicesUpdated:(id)updated;
- (void)service:(id)service restrictionReasonChanged:(unint64_t)changed;
- (void)service:(id)service tinkerDeviceAdded:(id)added;
- (void)service:(id)service tinkerDeviceRemoved:(id)removed;
- (void)service:(id)service tinkerDeviceUpdated:(id)updated;
- (void)setLinkPreferences:(id)preferences;
- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)changed;
- (void)setPreferInfraWiFi:(BOOL)fi;
- (void)setPretendingToBeFull:(BOOL)full;
- (void)setProtobufAction:(SEL)action forProtobufType:(unsigned __int16)type isResponse:(BOOL)response;
- (void)setWantsPseudonymUpdates:(BOOL)updates;
- (void)signData:(id)data withAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
- (void)startOTRTest:(int64_t)test;
- (void)testCloudQRConnection;
- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
@end

@implementation _IDSService

- (NSArray)devices
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A680();
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(_IDSService *)self accounts];
  v43 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v43)
  {
    v42 = *v61;
    v45 = v7;
    v46 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v8;
        v9 = *(*(&v60 + 1) + 8 * v8);
        _internal = [v9 _internal];
        lastGDRDate = [_internal lastGDRDate];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        _internal2 = [v9 _internal];
        devices = [_internal2 devices];

        v48 = devices;
        v50 = [devices countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v50)
        {
          v49 = *v57;
          v47 = lastGDRDate;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v57 != v49)
              {
                objc_enumerationMutation(v48);
              }

              v15 = *(*(&v56 + 1) + 8 * i);
              _internal3 = [v15 _internal];
              uniqueIDOverride = [_internal3 uniqueIDOverride];

              if (![uniqueIDOverride length])
              {
                _internal4 = [v15 _internal];
                uniqueID = [_internal4 uniqueID];

                uniqueIDOverride = uniqueID;
              }

              if ([uniqueIDOverride length])
              {
                v20 = [v6 objectForKey:uniqueIDOverride];
                v21 = [v7 objectForKey:uniqueIDOverride];
              }

              else
              {
                v21 = 0;
                v20 = 0;
              }

              if ([uniqueIDOverride length])
              {
                pushToken = 0;
              }

              else
              {
                _internal5 = [v15 _internal];
                pushToken = [_internal5 pushToken];

                if ([pushToken length])
                {
                  v24 = [v6 objectForKey:pushToken];

                  v25 = [v7 objectForKey:pushToken];

                  v21 = v25;
                  v20 = v24;
                }
              }

              if (!v20)
              {
                goto LABEL_27;
              }

              v51 = v21;
              v26 = [lastGDRDate laterDate:v21];
              v27 = [v26 isEqualToDate:lastGDRDate];

              if (v27)
              {

                v21 = v51;
LABEL_27:
                if ([uniqueIDOverride length])
                {
                  if (v15)
                  {
                    CFDictionarySetValue(v6, uniqueIDOverride, v15);
                  }

                  if (lastGDRDate)
                  {
                    v28 = v7;
                    v29 = uniqueIDOverride;
                    goto LABEL_45;
                  }
                }

                else if ([pushToken length])
                {
                  if (v15)
                  {
                    CFDictionarySetValue(v6, pushToken, v15);
                  }

                  if (lastGDRDate)
                  {
                    v28 = v7;
                    v29 = pushToken;
LABEL_45:
                    CFDictionarySetValue(v28, v29, lastGDRDate);
                  }
                }

                v20 = 0;
                goto LABEL_47;
              }

              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              _internal6 = [v15 _internal];
              identities = [_internal6 identities];

              v32 = [identities countByEnumeratingWithState:&v52 objects:v64 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v53;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v53 != v34)
                    {
                      objc_enumerationMutation(identities);
                    }

                    v36 = *(*(&v52 + 1) + 8 * j);
                    _internal7 = [v20 _internal];
                    [_internal7 _addIdentity:v36];
                  }

                  v33 = [identities countByEnumeratingWithState:&v52 objects:v64 count:16];
                }

                while (v33);
              }

              v7 = v45;
              v6 = v46;
              lastGDRDate = v47;
              v21 = v51;
LABEL_47:
            }

            v50 = [v48 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v50);
        }

        v8 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v43);
  }

  allValues = [v6 allValues];
  v39 = [allValues copy];

  return v39;
}

- (NSSet)accounts
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A540();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  accounts = [_internal accounts];

  v8 = [(_IDSService *)self _filteredAccountsFrom:accounts];

  return v8;
}

- (void)_enforceSandboxPolicy
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Enforcing sandbox policy...", &v13, 2u);
  }

  getpid();
  v4 = CUTProcessNameForPid();
  v5 = v4;
  if (self->_clientIsSandboxed)
  {
    v6 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = serviceName;
      v8 = "%@ (initializing service %@) is sandboxed";
LABEL_11:
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = qword_1ED5DDF48;
  v10 = v4;
  if (v9 != -1)
  {
    sub_195B3C7F8();
  }

  v11 = [qword_1ED5DDF50 containsObject:v10];

  v12 = +[IDSLogging _IDSService];
  v6 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = serviceName;
      v8 = "%@ (initializing service %@) is not sandboxed but is in the sandbox allowlist.  Not enforcing sandbox policy.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_17;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C820(v10, self);
  }

  if (!isRunningTests())
  {
    abort();
  }

  throwsIDSAbortException();
LABEL_17:
}

- (void)_logConnectionMap
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38804();
    }
  }

  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Connection map:", v7, 2u);
  }

  [(NSMutableDictionary *)self->_uniqueIDToConnection enumerateKeysAndObjectsUsingBlock:&unk_1F09E6B00];
}

- (id)daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  listener = [v2 listener];

  return listener;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _os_activity_create(&dword_1959FF000, "Framework init with service commands", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
    *buf = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = serviceName;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "_IDSService - deallocing {self: %p, serviceName: %@}", buf, 0x16u);
  }

  daemonListener = [(_IDSService *)self daemonListener];
  [daemonListener removeHandler:self];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v6.receiver = self;
  v6.super_class = _IDSService;
  [(_IDSService *)&v6 dealloc];
}

- (void)daemonDisconnected
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_completionBlocksByRequestID;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        second = [v8 second];

        if (second)
        {
          second[2](second);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_completionBlocksByRequestID removeAllObjects];
}

- (void)_loadCachedLinkedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A860();
    }
  }

  if (!self->_linkedDevicesLoaded)
  {
    v6 = +[IDSDaemonController sharedInstance];
    [v6 blockUntilConnected];

    accounts = [(_IDSService *)self accounts];
    anyObject = [accounts anyObject];
    serviceName = [anyObject serviceName];

    daemonListener = [(_IDSService *)self daemonListener];
    v11 = [daemonListener linkedDevicesForService:serviceName];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v11];
    self->_linkedDevicesLoaded = 1;
  }
}

- (IDSAccount)iCloudAccount
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A400();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  accounts = [_internal accounts];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = accounts;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        _internal2 = [v12 _internal];
        accountType = [_internal2 accountType];

        if (accountType == 1)
        {
          v9 = v12;
          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v9;
}

- (IDSServiceProperties)serviceProperties
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A720();
    }
  }

  serviceProperties = self->_serviceProperties;

  return serviceProperties;
}

- (void)daemonConnected
{
  v9 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _os_activity_create(&dword_1959FF000, "Framework Daemon Connected", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B38490();
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AB4B54;
  v6[3] = &unk_1E7441CD8;
  v6[4] = self;
  [(_IDSService *)self _callDelegatesWithBlock:v6];
  if (self->_subServices)
  {
    [(_IDSService *)self resendSubServicesToDaemonForCurrentDevice];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_callIsActiveChanged
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38A84();
    }
  }

  accounts = [(_IDSService *)self accounts];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = accounts;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        _internal = [*(*(&v38 + 1) + 8 * i) _internal];
        uniqueID = [_internal uniqueID];
        [v7 addObject:uniqueID];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v10);
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    lastIsActiveSet = self->_lastIsActiveSet;
    *buf = 138412546;
    v44 = lastIsActiveSet;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "activeAccountsChanged, oldSet: %@  newSet: %@", buf, 0x16u);
  }

  p_lastIsActiveSet = &self->_lastIsActiveSet;
  v17 = self->_lastIsActiveSet;
  if (v17 && ([(NSMutableSet *)v17 isEqual:v7]& 1) == 0)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_195AB7D50;
    v35[3] = &unk_1E7441E18;
    v36 = v8;
    selfCopy = self;
    [(_IDSService *)self _callDelegatesWithBlock:v35];
  }

  v19 = *p_lastIsActiveSet;
  objc_storeStrong(&self->_lastIsActiveSet, v7);
  v20 = [(NSMutableSet *)*p_lastIsActiveSet count];
  if (v20 != [(NSMutableSet *)v19 count]|| *p_lastIsActiveSet && v19 && ([(NSMutableSet *)*p_lastIsActiveSet isEqualToSet:v19]& 1) == 0)
  {
    _internal2 = [(IDSAccountController *)self->_accountController _internal];
    accounts2 = [_internal2 accounts];

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = accounts2;
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          _internal3 = [*(*(&v31 + 1) + 8 * j) _internal];
          [v23 addObject:_internal3];
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v26);
    }

    if (sub_195A0CBF4(v23))
    {
      iDSService = [MEMORY[0x1E69A6138] IDSService];
      if (os_log_type_enabled(iDSService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, iDSService, OS_LOG_TYPE_DEFAULT, "*** dropping devicesChanged callback! -- accountsChanged", buf, 2u);
      }
    }

    else
    {
      [(_IDSService *)self _callDelegatesForDevicesChanged];
    }
  }
}

- (void)_callDelegatesForDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B398C0();
    }
  }

  devices = [(_IDSService *)self devices];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A0E018;
  v8[3] = &unk_1E7441E18;
  v8[4] = self;
  v9 = devices;
  v7 = devices;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
}

- (id)_initWithDelegateContext:(id)context
{
  contextCopy = context;
  _init = [(_IDSService *)self _init];
  if (_init)
  {
    v6 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    v7 = _init[5];
    _init[5] = v6;
  }

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _IDSService;
  return [(_IDSService *)&v3 init];
}

+ (_IDSService)serviceWithIdentifier:(id)identifier commands:(id)commands manuallyAckMessages:(BOOL)messages delegateContext:(id)context completion:(id)completion
{
  messagesCopy = messages;
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  commandsCopy = commands;
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    if (_IDSRunningInDaemon())
    {
      v16 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_195B3816C(self, v16);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    else
    {
      v17 = +[IDSInternalQueueController sharedInstance];
      assertQueueIsCurrent = [v17 assertQueueIsCurrent];

      if (assertQueueIsCurrent)
      {
        utilities = [MEMORY[0x1E69A5270] utilities];
        if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
        {
          sub_195B380CC();
        }
      }

      v20 = [[_IDSService alloc] initWithService:identifierCopy commands:commandsCopy manuallyAckMessages:messagesCopy delegateContext:contextCopy];
      v21 = +[IDSDaemonController sharedInstance];
      [v21 blockUntilConnected];

      v22 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = v20;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "_IDSService - serviceWithIdentifier finished {serviceObject: %p}", &v24, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, v20, 0);
    }
  }

  return result;
}

- (_IDSService)initWithService:(id)service commands:(id)commands manuallyAckMessages:(BOOL)messages delegateContext:(id)context
{
  messagesCopy = messages;
  v56 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  commandsCopy = commands;
  contextCopy = context;
  if (!_IDSRunningInDaemon())
  {
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v47 = _os_activity_create(&dword_1959FF000, "Framework init with service, commands", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v47, &state);
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x1E696AF00] callStackSymbols];
        objc_claimAutoreleasedReturnValue();
        sub_195B381FC();
      }
    }

    v45.receiver = self;
    v45.super_class = _IDSService;
    self = [(_IDSService *)&v45 init];
    if (!self)
    {
      goto LABEL_22;
    }

    v18 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      *buf = 134218754;
      selfCopy = self;
      if (messagesCopy)
      {
        v19 = @"YES";
      }

      v50 = 2112;
      v51 = serviceCopy;
      v52 = 2112;
      v53 = commandsCopy;
      v54 = 2112;
      v55 = v19;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "_IDSService - initing {self: %p, service: %@, commands: %@, manualAck: %@}", buf, 0x2Au);
    }

    v20 = [objc_alloc(MEMORY[0x1E69A5408]) initWithServiceIdentifier:serviceCopy];
    serviceProperties = self->_serviceProperties;
    self->_serviceProperties = v20;

    if (!self->_serviceProperties)
    {
      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_195B3824C();
      }

      selfCopy2 = 0;
      goto LABEL_26;
    }

    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    if ([mEMORY[0x1E69A60F0] isInternalInstall] && (_os_feature_enabled_impl() & 1) == 0)
    {
      v44 = [serviceCopy containsString:@"com.apple.private.alloy.accessibility.local"];

      if ((v44 & 1) == 0)
      {
        getpid();
        self->_clientIsSandboxed = sandbox_check() != 0;
        [(_IDSService *)self _enforceSandboxPolicy];
        goto LABEL_19;
      }
    }

    else
    {
    }

    self->_clientIsSandboxed = 1;
LABEL_19:
    v23 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    delegateContext = self->_delegateContext;
    self->_delegateContext = v23;

    v25 = [commandsCopy copy];
    commands = self->_commands;
    self->_commands = v25;

    v27 = [[IDSAccountController alloc] _initWithService:serviceCopy];
    accountController = self->_accountController;
    self->_accountController = v27;

    _internal = [(IDSAccountController *)self->_accountController _internal];
    v30 = +[IDSInternalQueueController sharedInstance];
    queue = [v30 queue];
    [_internal addDelegate:self queue:queue];

    lastIsActiveSet = self->_lastIsActiveSet;
    self->_lastIsActiveSet = 0;

    v33 = [IDSGroupContextController alloc];
    v34 = +[IDSInternalQueueController sharedInstance];
    queue2 = [v34 queue];
    v36 = [(IDSGroupContextController *)v33 initWithServiceName:serviceCopy queue:queue2 delegate:self];
    groupContextController = self->_groupContextController;
    self->_groupContextController = v36;

    v38 = objc_alloc_init(IDSQuickSwitchAcknowledgementTracker);
    acknowledgementTracker = self->_acknowledgementTracker;
    self->_acknowledgementTracker = v38;

    self->_manuallyAckMessages = messagesCopy;
    mEMORY[0x1E69A60F0]2 = [MEMORY[0x1E69A60F0] sharedInstance];
    LOBYTE(v34) = [mEMORY[0x1E69A60F0]2 isNonUIInstall];

    if ((v34 & 1) == 0)
    {
      [(_IDSService *)self _processAccountSet:0];
    }

    daemonListener = [(_IDSService *)self daemonListener];
    [daemonListener addHandler:self];

LABEL_22:
    selfCopy2 = self;
LABEL_26:
    os_activity_scope_leave(&state);
    cut_arc_os_release();

    goto LABEL_27;
  }

  v13 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_195B382BC(self, v13);
  }

  selfCopy2 = 0;
LABEL_27:

  return selfCopy2;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38350();
    }
  }

  if (delegateCopy && queueCopy)
  {
    v11 = [(NSMapTable *)self->_delegateToInfo objectForKey:delegateCopy];

    if (!v11)
    {
      if (!self->_delegateToInfo)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        delegateToInfo = self->_delegateToInfo;
        self->_delegateToInfo = weakToStrongObjectsMapTable;
      }

      v14 = objc_alloc_init(MEMORY[0x1E69A5228]);
      [v14 setQueue:queueCopy];
      [(NSMapTable *)self->_delegateToInfo setObject:v14 forKey:delegateCopy];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195AB38C0;
    v17[3] = &unk_1E743E878;
    v17[4] = self;
    v15 = MEMORY[0x19A8BBEF0](v17);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 16))(v15);
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v5 = [(IDSQuickSwitchAcknowledgementTracker *)self->_acknowledgementTracker identifierForServiceDelegate:delegateCopy];
    if (v5)
    {
      [(_IDSService *)self _stopAwaitingQuickSwitchAcknowledgementFromDelegateWithIdentifier:v5];
    }

    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:delegateCopy];
    if (![(NSMapTable *)self->_delegateToInfo count])
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;
    }

    v7 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v9 = 134218498;
      selfCopy = self;
      v11 = 2112;
      v12 = serviceName;
      v13 = 2048;
      v14 = delegateCopy;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_IDSService - removed delegate {self: %p, serviceName %@, delegate: %p}", &v9, 0x20u);
    }
  }
}

- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group
{
  v66 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  callbackBlockCopy = callbackBlock;
  callbacksBlockCopy = callbacksBlock;
  groupCopy = group;
  groupCopy6 = groupCopy;
  v50 = callbackBlockCopy;
  if (callbackBlockCopy)
  {
    group = groupCopy;
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B383F0();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    context = objc_autoreleasePoolPush();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v20 = self->_delegateToInfo;
    v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v62;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v61 + 1) + 8 * i);
          v26 = [(NSMapTable *)self->_delegateToInfo objectForKey:v25];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && (!selector || (objc_opt_respondsToSelector() & 1) != 0))
          {
            [v18 addObject:v25];
            [v19 addObject:v27];
          }
        }

        v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v22);
    }

    objc_autoreleasePoolPop(context);
    groupCopy6 = group;
    if ([v18 count])
    {
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [v18 objectAtIndex:0];
        v32 = [v19 objectAtIndex:0];
        [v18 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v30);
        v33 = [v18 count];
        queue = [v32 queue];
        if (groupCopy6)
        {
          dispatch_group_enter(groupCopy6);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        queue2 = [v35 queue];

        if (queue == queue2)
        {
          if (selector)
          {
            groupCopy6 = group;
            if (blockCopy != 0 && (v29 & 1) != 0)
            {
              blockCopy[2](blockCopy, 1);
            }

            (v50)[2](v50, v31);
            if (callbacksBlockCopy && !v33)
            {
              callbacksBlockCopy[2](callbacksBlockCopy, 1);
            }
          }

          else
          {
            (v50)[2](v50, v31);
            groupCopy6 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!groupCopy6)
          {
            goto LABEL_42;
          }
        }

        else if (queue)
        {
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = sub_195AB4A98;
          v52[3] = &unk_1E7440E10;
          selectorCopy = selector;
          v59 = v29 & 1;
          v55 = blockCopy;
          v56 = v50;
          v53 = v31;
          v60 = v33 == 0;
          v57 = callbacksBlockCopy;
          v54 = v32;
          v37 = MEMORY[0x19A8BBEF0](v52);
          v38 = v37;
          if (queue == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          groupCopy6 = group;
          if (group)
          {
            dispatch_group_async(group, queue, v42);
          }

          else
          {
            dispatch_async(queue, v42);
          }

          if (!group)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v40 = objc_opt_self();
          v41 = objc_opt_self();
          groupCopy6 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(groupCopy6);
LABEL_42:

        v29 = 0;
      }

      while ([v18 count]);
    }

    v45 = objc_opt_self();
    v46 = objc_opt_self();
  }
}

- (void)OTRTestCallback:(id)callback time:(double)time error:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  errorCopy = error;
  v10 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v10 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B384E0();
    }
  }

  v13 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v22 = 2112;
    v23 = callbackCopy;
    v24 = 2048;
    timeCopy = time;
    v26 = 1024;
    v27 = errorCopy == 0;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%@: OTRTestCallback: token is %@, setupTime is %.6f, error==nil is %d", buf, 0x26u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AB4DAC;
  v16[3] = &unk_1E7441D00;
  v16[4] = self;
  v17 = callbackCopy;
  timeCopy2 = time;
  v18 = errorCopy;
  v14 = errorCopy;
  v15 = callbackCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v16];
}

- (void)connection:(id)connection didCancelMessageWithSuccess:(BOOL)success error:(id)error identifier:(id)identifier
{
  successCopy = success;
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  identifierCopy = identifier;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38580();
    }
  }

  v14 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    *buf = 138413058;
    selfCopy = self;
    if (successCopy)
    {
      v15 = @"YES";
    }

    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = errorCopy;
    v28 = 2112;
    v29 = identifierCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@: didCancelMessageWithSuccess: %@ error: %@ identifier %@", buf, 0x2Au);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB500C;
  v18[3] = &unk_1E7441D28;
  v21 = successCopy;
  v18[4] = self;
  v19 = errorCopy;
  v20 = identifierCopy;
  v16 = identifierCopy;
  v17 = errorCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v18];
}

- (void)didSwitchActivePairedDevice:(id)device forService:(id)service wasHandled:(BOOL *)handled
{
  v116 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  serviceCopy = service;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38620();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];

  aCKTracker = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(aCKTracker, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = serviceName;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v113 = deviceCopy;
    _os_log_impl(&dword_1959FF000, aCKTracker, OS_LOG_TYPE_DEFAULT, "%@ Switched active paired device for service name %@. deviceUniqueID: %@", buf, 0x20u);
  }

  if ([serviceName isEqualToIgnoringCase:serviceCopy])
  {
    if (handled)
    {
      *handled = 1;
    }

    [(IDSQuickSwitchAcknowledgementTracker *)self->_acknowledgementTracker stopAwaitingAcknowledgementFromAllServiceDelegates];
    object = [self->_delegateContext object];
    v110[0] = 0;
    v110[1] = v110;
    v110[2] = 0x2020000000;
    v111 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v113 = sub_195A007B4;
    v114 = sub_195A03D80;
    v115 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = sub_195AB5A84;
    v103[3] = &unk_1E7441D50;
    v108 = buf;
    v109 = v110;
    v14 = serviceName;
    v104 = v14;
    v15 = object;
    v105 = v15;
    selfCopy = self;
    v107 = serviceCopy;
    v16 = MEMORY[0x19A8BBEF0](v103);
    v17 = dispatch_group_create();
    dispatch_group_enter(v17);
    v101[0] = 0;
    v101[1] = v101;
    v101[2] = 0x2020000000;
    v102 = 0;
    v99[0] = 0;
    v99[1] = v99;
    v99[2] = 0x3032000000;
    v99[3] = sub_195A007B4;
    v99[4] = sub_195A03D80;
    v100 = 0;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = sub_195AB5C94;
    v92[3] = &unk_1E7441D78;
    v18 = v14;
    v93 = v18;
    v19 = v16;
    v96 = v19;
    v20 = deviceCopy;
    v97 = v101;
    v98 = v99;
    v94 = v20;
    selfCopy2 = self;
    v43 = MEMORY[0x19A8BBEF0](v92);
    v21 = [MEMORY[0x1E6995700] weakRefWithObject:self];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = sub_195AB5E68;
    v87[3] = &unk_1E7441DA0;
    v87[4] = self;
    v42 = v21;
    v88 = v42;
    v22 = v18;
    v89 = v22;
    v91 = v99;
    v23 = v15;
    v90 = v23;
    v44 = MEMORY[0x19A8BBEF0](v87);
    [(_IDSService *)self _callDelegatesRespondingToSelector:sel_service_didSwitchActivePairedDevice_acknowledgementBlock_ withPreCallbacksBlock:v43 callbackBlock:v44 postCallbacksBlock:0 group:v17];
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x2020000000;
    v86 = 0;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x3032000000;
    v83[3] = sub_195A007B4;
    v83[4] = sub_195A03D80;
    v84 = 0;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = sub_195AB5FBC;
    v76[3] = &unk_1E7441D78;
    v24 = v22;
    v77 = v24;
    v25 = v19;
    v80 = v25;
    v26 = v20;
    v78 = v26;
    v81 = v85;
    v82 = v83;
    v27 = v23;
    v79 = v27;
    v45 = MEMORY[0x19A8BBEF0](v76);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = sub_195AB60C0;
    v72[3] = &unk_1E7441DC8;
    v28 = v24;
    v73 = v28;
    v75 = v83;
    v29 = v27;
    v74 = v29;
    v46 = MEMORY[0x19A8BBEF0](v72);
    [(_IDSService *)self _callDelegatesRespondingToSelector:sel_service_devicesChanged_ withPreCallbacksBlock:v45 callbackBlock:v46 postCallbacksBlock:0 group:v17];
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v71 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = sub_195A007B4;
    v68[4] = sub_195A03D80;
    v69 = 0;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = sub_195AB61BC;
    v61[3] = &unk_1E7441D78;
    v30 = v28;
    v62 = v30;
    v31 = v25;
    v65 = v31;
    v32 = v26;
    v63 = v32;
    v66 = v70;
    v67 = v68;
    v33 = v29;
    v64 = v33;
    v34 = MEMORY[0x19A8BBEF0](v61);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_195AB62C4;
    v57[3] = &unk_1E7441DC8;
    v35 = v30;
    v58 = v35;
    v60 = v68;
    v36 = v33;
    v59 = v36;
    v37 = MEMORY[0x19A8BBEF0](v57);
    [(_IDSService *)self _callDelegatesRespondingToSelector:sel_service_linkedDevicesChanged_ withPreCallbacksBlock:v34 callbackBlock:v37 postCallbacksBlock:0 group:v17];
    v38 = +[IDSInternalQueueController sharedInstance];
    queue = [v38 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB63C0;
    block[3] = &unk_1E7441DF0;
    v51 = v35;
    v53 = v31;
    v52 = v32;
    v54 = v99;
    v55 = v83;
    v56 = buf;
    v40 = v31;
    dispatch_group_notify(v17, queue, block);

    dispatch_group_leave(v17);
    _Block_object_dispose(v68, 8);

    _Block_object_dispose(v70, 8);
    _Block_object_dispose(v83, 8);

    _Block_object_dispose(v85, 8);
    _Block_object_dispose(v99, 8);

    _Block_object_dispose(v101, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v110, 8);
  }

  else
  {
    aCKTracker2 = [MEMORY[0x1E69A6138] ACKTracker];
    if (os_log_type_enabled(aCKTracker2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = serviceCopy;
      *&buf[12] = 2112;
      *&buf[14] = serviceName;
      _os_log_impl(&dword_1959FF000, aCKTracker2, OS_LOG_TYPE_DEFAULT, "Ignoring didSwitch callback for %@, mine is %@", buf, 0x16u);
    }

    if (handled)
    {
      *handled = 0;
    }
  }
}

- (id)_activeDeviceForUniqueID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B386C4();
    }
  }

  if (dCopy)
  {
    [(_IDSService *)self linkedDevicesWithRelationship:3];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          uniqueID = [v13 uniqueID];
          if ([uniqueID isEqualToIgnoringCase:dCopy])
          {

LABEL_19:
            v17 = v13;
            goto LABEL_20;
          }

          uniqueIDOverride = [v13 uniqueIDOverride];
          v16 = [uniqueIDOverride isEqualToIgnoringCase:dCopy];

          if (v16)
          {
            goto LABEL_19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v17 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_20:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_acknowledgementBlockWithDelegateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E6995700] weakRefWithObject:self];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195AB6794;
  v14 = &unk_1E743EA30;
  v15 = v5;
  v16 = identifierCopy;
  v6 = identifierCopy;
  v7 = v5;
  v8 = MEMORY[0x19A8BBEF0](&v11);
  v9 = [v8 copy];

  return v9;
}

- (void)_callLinkedDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38764();
    }
  }

  v6 = [(NSMutableArray *)self->_linkedDevices copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AB6940;
  v8[3] = &unk_1E7441E18;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
}

- (void)service:(id)service tinkerDeviceAdded:(id)added
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v16 = 138412546;
      v17 = serviceCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceAdded (linkedDevices count: %@)", &v16, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6A80];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v16, 0xCu);
    }
  }
}

- (void)service:(id)service tinkerDeviceRemoved:(id)removed
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v16 = 138412546;
      v17 = serviceCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceRemoved (linkedDevices count: %@)", &v16, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AA0];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v16, 0xCu);
    }
  }
}

- (void)service:(id)service tinkerDeviceUpdated:(id)updated
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v16 = 138412546;
      v17 = serviceCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceUpdated (linkedDevices count: %@)", &v16, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AC0];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v16, 0xCu);
    }
  }
}

- (void)service:(id)service linkedDevicesUpdated:(id)updated
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v16 = 138412546;
      v17 = serviceCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ linkedDevicesUpdated (linkedDevices count: %@)", &v16, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AE0];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v16, 0xCu);
    }
  }
}

- (void)service:(id)service restrictionReasonChanged:(unint64_t)changed
{
  serviceCopy = service;
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  v9 = [serviceCopy isEqualToString:identifier];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195AB7270;
    v10[3] = &unk_1E7441E40;
    v10[4] = self;
    v10[5] = changed;
    [(_IDSService *)self _callDelegatesWithBlock:v10];
  }
}

- (void)_setupNewConnectionForAccount:(id)account
{
  v27 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v7 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B388A4();
      }
    }

    if (accountCopy)
    {
      _internal = [accountCopy _internal];
      uniqueID = [_internal uniqueID];

      v12 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
      if (v12)
      {
        v13 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          _internal2 = [v12 _internal];
          v25 = 138412290;
          v26 = _internal2;
          _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_INFO, "We have an existing connection for this unique ID: %@", &v25, 0xCu);
        }
      }

      else
      {
        v13 = [IDSConnection _connectionWithAccount:accountCopy commands:self->_commands indirectDelegateCallouts:1];
        uniqueIDToConnection = self->_uniqueIDToConnection;
        if (!uniqueIDToConnection)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v17 = self->_uniqueIDToConnection;
          self->_uniqueIDToConnection = Mutable;

          uniqueIDToConnection = self->_uniqueIDToConnection;
        }

        [(NSMutableDictionary *)uniqueIDToConnection setObject:v13 forKey:uniqueID];
        v18 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = uniqueID;
          _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Setting up new connection for %@", &v25, 0xCu);
        }

        [(_IDSService *)self _logConnectionMap];
        if (self->_everHadDelegate)
        {
          v19 = +[IDSLogging _IDSService];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            listenerCaps = self->_listenerCaps;
            v25 = 67109120;
            LODWORD(v26) = listenerCaps;
            _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_INFO, "Setting up new connection with caps %d", &v25, 8u);
          }

          _internal3 = [v13 _internal];
          [_internal3 setDelegateCapabilities:self->_listenerCaps];

          _internal4 = [v13 _internal];
          v23 = +[IDSInternalQueueController sharedInstance];
          queue = [v23 queue];
          [_internal4 addDelegate:self queue:queue];

          [(_IDSService *)self connection:v13 devicesChanged:0];
        }
      }
    }
  }
}

- (void)_tearDownConnectionForUniqueID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38944();
    }
  }

  if (dCopy)
  {
    v8 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:dCopy];
    _internal = [v8 _internal];
    [_internal removeDelegate:self];

    [(NSMutableDictionary *)self->_uniqueIDToConnection removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_uniqueIDToConnection count])
    {
      uniqueIDToConnection = self->_uniqueIDToConnection;
      self->_uniqueIDToConnection = 0;
    }

    v11 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Tearing down connection for %@", &v12, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
  }
}

- (void)_processAccountSet:(id)set
{
  v62 = *MEMORY[0x1E69E9840];
  setCopy = set;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v7 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B389E4();
      }
    }

    context = objc_autoreleasePoolPush();
    if (!setCopy || (v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:setCopy]) == 0)
    {
      _internal = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal accounts];
      if (accounts)
      {
        v13 = objc_alloc(MEMORY[0x1E695DFD8]);
        _internal2 = [(IDSAccountController *)self->_accountController _internal];
        accounts2 = [_internal2 accounts];
        v10 = [v13 initWithSet:accounts2];
      }

      else
      {
        v10 = 0;
      }
    }

    v44 = setCopy;
    v16 = MEMORY[0x1E695DFD8];
    allKeys = [(NSMutableDictionary *)self->_uniqueIDToConnection allKeys];
    v45 = [v16 setWithArray:allKeys];

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v56;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v55 + 1) + 8 * i);
          _internal3 = [v25 _internal];
          uniqueID = [_internal3 uniqueID];

          if (uniqueID)
          {
            [v19 addObject:uniqueID];
            [v18 setObject:v25 forKey:uniqueID];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v22);
    }

    v28 = [v45 mutableCopy];
    [v28 minusSet:v19];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v52;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v52 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [(_IDSService *)self _tearDownConnectionForUniqueID:*(*(&v51 + 1) + 8 * j)];
        }

        v31 = [v29 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v31);
    }

    if (![(NSMutableDictionary *)self->_uniqueIDToConnection count])
    {
      uniqueIDToConnection = self->_uniqueIDToConnection;
      self->_uniqueIDToConnection = 0;
    }

    v35 = [v19 mutableCopy];
    [v35 minusSet:v45];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v48;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [v18 objectForKey:*(*(&v47 + 1) + 8 * k)];
          [(_IDSService *)self _setupNewConnectionForAccount:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v38);
    }

    v42 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "Finished processing accounts set.", buf, 2u);
    }

    [(_IDSService *)self _logConnectionMap];
    objc_autoreleasePoolPop(context);
    setCopy = v44;
  }
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  addedCopy = added;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38B24();
    }
  }

  if (addedCopy)
  {
    [(_IDSService *)self _setupNewConnectionForAccount:addedCopy];
    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)controller accountRemoved:(id)removed
{
  removedCopy = removed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38BC4();
    }
  }

  if (removedCopy)
  {
    _internal = [removedCopy _internal];
    uniqueID = [_internal uniqueID];
    [(_IDSService *)self _tearDownConnectionForUniqueID:uniqueID];

    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)controller accountEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38C64();
    }
  }

  if (enabledCopy)
  {
    [(_IDSService *)self _setupNewConnectionForAccount:enabledCopy];
    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)controller accountDisabled:(id)disabled
{
  disabledCopy = disabled;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38D04();
    }
  }

  if (disabledCopy)
  {
    _internal = [disabledCopy _internal];
    uniqueID = [_internal uniqueID];
    [(_IDSService *)self _tearDownConnectionForUniqueID:uniqueID];

    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)connection:(id)connection incomingOpportunisticData:(id)data withIdentifier:(id)identifier fromURI:(id)i context:(id)context
{
  v69 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  identifierCopy = identifier;
  iCopy = i;
  contextCopy = context;
  v17 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v17 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38DA4();
    }
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v22 = v19;
    v23 = iCopy;
    v24 = dataCopy;
    v25 = identifierCopy;
    v26 = connectionCopy;
    if ([contextCopy usedEngram])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v64 = outgoingResponseIdentifier;
    v65 = 2112;
    v66 = v27;
    connectionCopy = v26;
    identifierCopy = v25;
    dataCopy = v24;
    iCopy = v23;
    v19 = v22;
    v67 = 2048;
    v68 = v28;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "incomingOpportunisticData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_195AB8568;
  v56[3] = &unk_1E7441E88;
  v32 = contextCopy;
  v57 = v32;
  selfCopy = self;
  v33 = account;
  v59 = v33;
  v34 = dataCopy;
  v60 = v34;
  v35 = identifierCopy;
  v61 = v35;
  v36 = iCopy;
  v62 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v56 group:v19];
  if (!self->_manuallyAckMessages)
  {
    v46 = v35;
    wantsAppAck = [v32 wantsAppAck];
    [v32 storageGuid];
    v38 = v47 = v34;
    outgoingResponseIdentifier2 = [v32 outgoingResponseIdentifier];
    +[IDSInternalQueueController sharedInstance];
    v45 = v33;
    v41 = v40 = connectionCopy;
    queue = [v41 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB8774;
    block[3] = &unk_1E7441038;
    v55 = wantsAppAck;
    v35 = v46;
    v49 = v32;
    selfCopy2 = self;
    v51 = outgoingResponseIdentifier2;
    v52 = v36;
    v53 = v40;
    v54 = v38;
    v43 = v38;
    v44 = outgoingResponseIdentifier2;
    dispatch_group_notify(v19, queue, block);

    connectionCopy = v40;
    v33 = v45;

    v34 = v47;
  }

  dispatch_group_leave(v19);
}

- (void)connection:(id)connection incomingData:(id)data fromURI:(id)i context:(id)context
{
  v91 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v14 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38E44();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v17 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v19 = dataCopy;
    if ([contextCopy usedEngram])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v82 = outgoingResponseIdentifier;
    v83 = 2112;
    v84 = v20;
    dataCopy = v19;
    v85 = 2048;
    v86 = v21;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "incomingData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v22 = +[IDSTransportLog IDSService];
  v63 = connectionCopy;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v24 = iCopy;
    v25 = [dataCopy length];
    _internal2 = [connectionCopy _internal];
    _internal3 = [connectionCopy _internal];
    account2 = [_internal3 account];
    _internal4 = [account2 _internal];
    [contextCopy outgoingResponseIdentifier];
    v30 = v59 = dataCopy;
    *buf = 134219010;
    v82 = v25;
    iCopy = v24;
    self = selfCopy;
    v83 = 2112;
    v84 = _internal2;
    v85 = 2112;
    v86 = _internal4;
    v87 = 2112;
    v88 = iCopy;
    v89 = 2112;
    v90 = v30;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingData of size %lu on connection %@ account %@ from ID %@ sender-side-identifier %@", buf, 0x34u);

    connectionCopy = v63;
    dataCopy = v59;
  }

  v31 = dispatch_group_create();
  dispatch_group_enter(v31);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = sub_195AB8F80;
  v75[3] = &unk_1E7441EB0;
  v33 = contextCopy;
  v76 = v33;
  selfCopy2 = self;
  v34 = account;
  v78 = v34;
  v35 = dataCopy;
  v79 = v35;
  v36 = iCopy;
  v80 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v75 group:v31];
  if (!self->_manuallyAckMessages)
  {
    v58 = v36;
    v62 = v34;
    wantsAppAck = [v33 wantsAppAck];
    isDirectMessage = [v33 isDirectMessage];
    outgoingResponseIdentifier2 = [v33 outgoingResponseIdentifier];
    storageGuid = [v33 storageGuid];
    broadcastTime = [v33 broadcastTime];

    if (broadcastTime)
    {
      v41 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v43 = v42;
      broadcastTime2 = [v33 broadcastTime];
      [broadcastTime2 doubleValue];
      v54 = [v41 numberWithDouble:v43 - v45];
    }

    else
    {
      v54 = 0;
    }

    v60 = v35;
    v46 = +[IDSLogging _IDSService];
    v47 = wantsAppAck;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = @"NO";
      *buf = 138413058;
      v82 = v33;
      if (wantsAppAck)
      {
        v48 = @"YES";
      }

      v83 = 2112;
      v84 = v48;
      v85 = 2112;
      v86 = outgoingResponseIdentifier2;
      v87 = 2112;
      v88 = storageGuid;
      _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v49 = +[IDSInternalQueueController sharedInstance];
    [v49 queue];
    v51 = v50 = outgoingResponseIdentifier2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB9188;
    block[3] = &unk_1E7441ED8;
    v65 = v33;
    v73 = v47;
    v74 = isDirectMessage;
    connectionCopy = v63;
    v66 = v63;
    v67 = outgoingResponseIdentifier2;
    selfCopy3 = self;
    v36 = v58;
    v69 = v58;
    v70 = storageGuid;
    v71 = v55;
    v35 = v60;
    v72 = v60;
    v57 = v55;
    v52 = storageGuid;
    v53 = v50;
    dispatch_group_notify(v31, v51, block);

    v34 = v62;
  }

  dispatch_group_leave(v31);
}

- (void)connection:(id)connection incomingGroupData:(id)data fromURI:(id)i context:(id)context
{
  v76 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v14 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38EE4();
    }
  }

  v16 = +[IDSTransportLog IDSService];
  v53 = iCopy;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    if ([contextCopy usedEngram])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v67 = outgoingResponseIdentifier;
    v68 = 2112;
    v69 = v18;
    iCopy = v53;
    v70 = 2048;
    v71 = v19;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "incomingGroupData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v20 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [dataCopy length];
    _internal = [connectionCopy _internal];
    _internal2 = [connectionCopy _internal];
    account = [_internal2 account];
    [account _internal];
    selfCopy = self;
    v25 = dataCopy;
    v27 = v26 = connectionCopy;
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    *buf = 134219010;
    v67 = v21;
    iCopy = v53;
    v68 = 2112;
    v69 = _internal;
    v70 = 2112;
    v71 = v27;
    v72 = 2112;
    v73 = v53;
    v74 = 2112;
    v75 = outgoingResponseIdentifier2;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "incomingGroupData of size %lu on connection %@ account %@ from ID %@ sender-side-identifier %@", buf, 0x34u);

    connectionCopy = v26;
    dataCopy = v25;
    self = selfCopy;
  }

  v29 = dispatch_group_create();
  dispatch_group_enter(v29);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  v31 = +[IDSInternalQueueController sharedInstance];
  queue = [v31 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AB99F4;
  block[3] = &unk_1E743EA30;
  block[4] = self;
  v33 = dataCopy;
  v65 = v33;
  dispatch_group_async(v29, queue, block);

  if (!self->_manuallyAckMessages)
  {
    v52 = connectionCopy;
    wantsAppAck = [contextCopy wantsAppAck];
    outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
    storageGuid = [contextCopy storageGuid];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v38 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v40 = v39;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      v43 = [v38 numberWithDouble:v40 - v42];
    }

    else
    {
      v43 = 0;
    }

    v44 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = @"NO";
      *buf = 138413058;
      v67 = contextCopy;
      if (wantsAppAck)
      {
        v45 = @"YES";
      }

      v68 = 2112;
      v69 = v45;
      v70 = 2112;
      v71 = outgoingResponseIdentifier3;
      v72 = 2112;
      v73 = storageGuid;
      _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v46 = +[IDSInternalQueueController sharedInstance];
    queue2 = [v46 queue];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = sub_195AB9DAC;
    v54[3] = &unk_1E7441F28;
    v63 = wantsAppAck;
    v55 = contextCopy;
    selfCopy2 = self;
    v57 = outgoingResponseIdentifier3;
    v58 = v53;
    connectionCopy = v52;
    v59 = v52;
    v60 = storageGuid;
    v61 = v43;
    v62 = v33;
    v50 = v43;
    v48 = storageGuid;
    v49 = outgoingResponseIdentifier3;
    dispatch_group_notify(v29, queue2, v54);

    iCopy = v53;
  }

  dispatch_group_leave(v29);
}

- (void)connection:(id)connection incomingAccessoryData:(id)data fromURI:(id)i context:(id)context
{
  v71 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(data) = [v14 assertQueueIsCurrent];

  if (data)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38F84();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195ABA46C;
  v57[3] = &unk_1E7441EB0;
  v20 = contextCopy;
  v58 = v20;
  selfCopy = self;
  v21 = account;
  v60 = v21;
  v22 = dataCopy;
  v61 = v22;
  v23 = iCopy;
  v62 = v23;
  [(_IDSService *)self _callDelegatesWithBlock:v57 group:v18];
  if (!self->_manuallyAckMessages)
  {
    v43 = v23;
    v45 = v21;
    v46 = connectionCopy;
    wantsAppAck = [v20 wantsAppAck];
    outgoingResponseIdentifier = [v20 outgoingResponseIdentifier];
    storageGuid = [v20 storageGuid];
    broadcastTime = [v20 broadcastTime];

    if (broadcastTime)
    {
      v28 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v30 = v29;
      broadcastTime2 = [v20 broadcastTime];
      [broadcastTime2 doubleValue];
      v41 = [v28 numberWithDouble:v30 - v32];
    }

    else
    {
      v41 = 0;
    }

    v44 = v22;
    v33 = +[IDSLogging _IDSService];
    v34 = wantsAppAck;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v35 = @"NO";
      *buf = 138413058;
      v64 = v20;
      if (wantsAppAck)
      {
        v35 = @"YES";
      }

      v65 = 2112;
      v66 = v35;
      v67 = 2112;
      v68 = outgoingResponseIdentifier;
      v69 = 2112;
      v70 = storageGuid;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v36 = +[IDSInternalQueueController sharedInstance];
    [v36 queue];
    v38 = v37 = outgoingResponseIdentifier;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABA674;
    block[3] = &unk_1E7441F28;
    v56 = v34;
    v48 = v20;
    selfCopy2 = self;
    v50 = outgoingResponseIdentifier;
    v23 = v43;
    v51 = v43;
    connectionCopy = v46;
    v52 = v46;
    v53 = storageGuid;
    v54 = v41;
    v22 = v44;
    v55 = v44;
    v42 = v41;
    v39 = storageGuid;
    v40 = v37;
    dispatch_group_notify(v18, v38, block);

    v21 = v45;
  }

  dispatch_group_leave(v18);
}

- (void)connection:(id)connection incomingAccessoryReportMessage:(id)message accessoryID:(id)d controllerID:(id)iD context:(id)context
{
  v71 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v17 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v17 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39024();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_195ABACB8;
  v56[3] = &unk_1E7441E88;
  v23 = contextCopy;
  v57 = v23;
  selfCopy = self;
  v24 = account;
  v59 = v24;
  v25 = messageCopy;
  v60 = v25;
  v26 = iDCopy;
  v61 = v26;
  v27 = dCopy;
  v62 = v27;
  [(_IDSService *)self _callDelegatesWithBlock:v56 group:v22];
  [v23 setWantsManualAck:self->_manuallyAckMessages];
  [v23 setFromID:v27];
  if (!self->_manuallyAckMessages)
  {
    v44 = v25;
    v45 = connectionCopy;
    wantsAppAck = [v23 wantsAppAck];
    outgoingResponseIdentifier = [v23 outgoingResponseIdentifier];
    storageGuid = [v23 storageGuid];
    broadcastTime = [v23 broadcastTime];

    if (broadcastTime)
    {
      v31 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v33 = v32;
      broadcastTime2 = [v23 broadcastTime];
      [broadcastTime2 doubleValue];
      broadcastTime = [v31 numberWithDouble:v33 - v35];
    }

    v43 = v24;
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = @"NO";
      *buf = 138413058;
      v64 = v23;
      if (wantsAppAck)
      {
        v37 = @"YES";
      }

      v65 = 2112;
      v66 = v37;
      v67 = 2112;
      v68 = outgoingResponseIdentifier;
      v69 = 2112;
      v70 = storageGuid;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v38 = +[IDSInternalQueueController sharedInstance];
    queue = [v38 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABAE9C;
    block[3] = &unk_1E7441010;
    v55 = wantsAppAck;
    v48 = v23;
    selfCopy2 = self;
    v50 = outgoingResponseIdentifier;
    v51 = v27;
    v52 = v45;
    v53 = storageGuid;
    v54 = broadcastTime;
    v40 = broadcastTime;
    v41 = storageGuid;
    v42 = outgoingResponseIdentifier;
    dispatch_group_notify(v22, queue, block);

    connectionCopy = v45;
    v24 = v43;
    v25 = v44;
  }

  dispatch_group_leave(v22);
}

- (void)connection:(id)connection incomingInvitation:(id)invitation fromURI:(id)i context:(id)context
{
  v56 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  invitationCopy = invitation;
  iCopy = i;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v12 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B390C4();
    }
  }

  v45 = connectionCopy;
  _internal = [connectionCopy _internal];
  account = [_internal account];

  v16 = objc_alloc(MEMORY[0x1E696AFB0]);
  v17 = objc_opt_class();
  v18 = sub_195ABB4FC(v17, invitationCopy, *MEMORY[0x1E69A49E0]);
  v19 = [v16 initWithUUIDString:v18];

  v20 = objc_opt_class();
  v21 = sub_195ABB4FC(v20, invitationCopy, *MEMORY[0x1E69A49A8]);
  v22 = *MEMORY[0x1E69A49C0];
  v23 = [invitationCopy objectForKey:*MEMORY[0x1E69A49C0]];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    v25 = objc_opt_class();
    v26 = sub_195ABB4FC(v25, invitationCopy, v22);
    [v26 doubleValue];
    v27 = [v24 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_class();
  v29 = sub_195ABB4FC(v28, invitationCopy, *MEMORY[0x1E69A49D8]);
  intValue = [v29 intValue];
  v31 = intValue;

  if (intValue <= 5 && ((1 << intValue) & 0x3A) != 0)
  {
    v32 = objc_opt_class();
    v33 = sub_195ABB4FC(v32, v21, *MEMORY[0x1E69A49B8]);
    [v33 intValue];

    v34 = [[IDSDictionaryInvitationContext alloc] initWithPayload:v21];
    v35 = [IDSReceivedInvitation alloc];
    prefixedURI = [iCopy prefixedURI];
    v37 = [(IDSReceivedInvitation *)v35 initWithfromID:prefixedURI state:v31 expirationDate:v27 uniqueID:v19 context:v34];

    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    [(IDSReceivedInvitation *)v37 setSenderMergeID:senderCorrelationIdentifier];

    toID = [contextCopy toID];
    [(IDSReceivedInvitation *)v37 setSelfHandle:toID];

    v40 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v37;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "incomingInvitation: created invitation object from incoming message : {%@}", buf, 0xCu);
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_195ABB5B8;
    v47[3] = &unk_1E7441F50;
    v48 = contextCopy;
    selfCopy = self;
    v50 = account;
    v51 = v37;
    v41 = v37;
    [(_IDSService *)self _callDelegatesWithBlock:v47];

    v42 = v45;
  }

  else
  {
    v34 = +[IDSLogging _IDSService];
    v42 = v45;
    if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v19 UUIDString];
      *buf = 134218242;
      v53 = v31;
      v54 = 2112;
      v55 = uUIDString;
      _os_log_impl(&dword_1959FF000, &v34->super, OS_LOG_TYPE_DEFAULT, "Invalid state {%ld} received in incomingInvitation. Dropping invitation %@", buf, 0x16u);
    }
  }
}

- (void)connection:(id)connection incomingInvitationUpdate:(id)update fromURI:(id)i context:(id)context
{
  v57 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  updateCopy = update;
  iCopy = i;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v12 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B391E0();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v16 = objc_alloc(MEMORY[0x1E696AFB0]);
  v17 = objc_opt_class();
  v18 = sub_195ABB4FC(v17, updateCopy, *MEMORY[0x1E69A49E0]);
  v19 = [v16 initWithUUIDString:v18];

  v20 = objc_opt_class();
  v21 = sub_195ABB4FC(v20, updateCopy, *MEMORY[0x1E69A49A8]);
  v22 = *MEMORY[0x1E69A49C0];
  v23 = [updateCopy objectForKey:*MEMORY[0x1E69A49C0]];

  v46 = connectionCopy;
  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    v25 = objc_opt_class();
    v26 = sub_195ABB4FC(v25, updateCopy, v22);
    [v26 doubleValue];
    v27 = [v24 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_class();
  v29 = sub_195ABB4FC(v28, updateCopy, *MEMORY[0x1E69A49D8]);
  intValue = [v29 intValue];
  v31 = intValue;

  if (intValue <= 5 && ((1 << intValue) & 0x3A) != 0)
  {
    v32 = objc_opt_class();
    v33 = sub_195ABB4FC(v32, v21, *MEMORY[0x1E69A49B8]);
    [v33 intValue];

    v34 = MEMORY[0x1E69A5240];
    prefixedURI = [iCopy prefixedURI];
    v36 = [v34 destinationWithURI:prefixedURI];

    v37 = [[IDSDictionaryInvitationContext alloc] initWithPayload:v21];
    v38 = [[IDSSentInvitation alloc] initWithDestination:v36 state:v31 expirationDate:v27 uniqueID:v19 context:v37];
    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    [(IDSSentInvitation *)v38 setSenderMergeID:senderCorrelationIdentifier];

    toID = [contextCopy toID];
    [(IDSSentInvitation *)v38 setSelfHandle:toID];

    v41 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v38;
      _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "incomingInvitationUpdate: created invitation object from incoming message : {%@}", buf, 0xCu);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_195ABBC50;
    v48[3] = &unk_1E7441F50;
    v49 = contextCopy;
    selfCopy = self;
    v51 = account;
    v52 = v38;
    v42 = v38;
    [(_IDSService *)self _callDelegatesWithBlock:v48];

    v43 = v46;
  }

  else
  {
    v36 = +[IDSLogging _IDSService];
    v43 = v46;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v19 UUIDString];
      *buf = 134218242;
      v54 = v31;
      v55 = 2112;
      v56 = uUIDString;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Invalid state {%ld} received in incomingInvitationUpdate. Dropping invitation %@", buf, 0x16u);
    }
  }
}

- (void)connection:(id)connection incomingMessage:(id)message fromURI:(id)i context:(id)context
{
  v137 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  iCopy = i;
  contextCopy = context;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v10 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39280();
    }
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v125 = _os_activity_create(&dword_1959FF000, "Service recieved message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v125, &state);
  _internal = [connectionCopy _internal];
  account = [_internal account];

  prefixedURI = [iCopy prefixedURI];
  v78 = [(_IDSService *)self deviceForFromID:prefixedURI];

  v14 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    _internal2 = [connectionCopy _internal];
    _internal3 = [connectionCopy _internal];
    account2 = [_internal3 account];
    _internal4 = [account2 _internal];
    _internal5 = [v78 _internal];
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    *buf = 138413314;
    v128 = _internal2;
    v129 = 2112;
    v130 = _internal4;
    v131 = 2112;
    v132 = iCopy;
    v133 = 2112;
    v134 = _internal5;
    v135 = 2112;
    v136 = outgoingResponseIdentifier;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "incomingMessage on connection %@ account %@ from ID %@  from device: %@  sender-side-identifier: %@", buf, 0x34u);
  }

  v21 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    usedEngram = [contextCopy usedEngram];
    v24 = [(NSMapTable *)self->_delegateToInfo count];
    v25 = @"NO";
    *buf = 138412802;
    v128 = outgoingResponseIdentifier2;
    if (usedEngram)
    {
      v25 = @"YES";
    }

    v129 = 2112;
    v130 = v25;
    v131 = 2048;
    v132 = v24;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "incomingMessage on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v26 = dispatch_group_create();
  dispatch_group_enter(v26);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI2 = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI2];

  resourceTransferURLString = [contextCopy resourceTransferURLString];
  v29 = resourceTransferURLString;
  if (!resourceTransferURLString)
  {
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = sub_195ABCFFC;
    v99[3] = &unk_1E7441EB0;
    v33 = contextCopy;
    v100 = v33;
    selfCopy = self;
    v34 = account;
    v102 = v34;
    v35 = messageCopy;
    v103 = v35;
    v36 = iCopy;
    v104 = v36;
    [(_IDSService *)self _callDelegatesWithBlock:v99 group:v26];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = sub_195ABD200;
    v93[3] = &unk_1E7441EB0;
    v94 = v33;
    selfCopy2 = self;
    v96 = v34;
    v97 = v35;
    v98 = v36;
    [(_IDSService *)self _callDelegatesWithBlock:v93 group:v26];

    v37 = 0;
    v32 = v100;
    goto LABEL_34;
  }

  v30 = resourceTransferURLString;
  fileSystemRepresentation = [v29 fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:fileSystemRepresentation];
  }

  else
  {
    v32 = 0;
  }

  resourceTransferMetadata = [contextCopy resourceTransferMetadata];
  resourceTransferSandboxExtension = [contextCopy resourceTransferSandboxExtension];
  if (([v32 containsString:@"/Library/IdentityServices/files/"] & 1) != 0 || objc_msgSend(v32, "containsString:", @"/Library/IdentityServices/incomingfiles/"))
  {
    v40 = [v32 containsString:@".."];
    v41 = v32 ? v40 : 1;
    if ((v41 & 1) == 0)
    {
      if (resourceTransferSandboxExtension)
      {
        v43 = resourceTransferSandboxExtension;
        [resourceTransferSandboxExtension UTF8String];
        v44 = sandbox_extension_consume();
        if (v44 == -1)
        {
          v42 = +[IDSLogging _IDSService];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            v45 = __error();
            sub_195B39324(v45, v126, v42);
          }

          goto LABEL_24;
        }
      }

      else
      {
        v46 = +[IDSTransportLog IDSService];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v128 = v32;
          _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "No sandbox extension for received resource [%@]", buf, 0xCu);
        }

        v44 = 0;
      }

      v74 = resourceTransferMetadata;
      v75 = v29;
      v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:v32];
      v48 = [IDSAutoCleanup alloc];
      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 3221225472;
      v120[2] = sub_195ABC9D4;
      v120[3] = &unk_1E7441F78;
      v49 = v47;
      v121 = v49;
      v122 = resourceTransferSandboxExtension;
      v123 = v44;
      v50 = [(IDSAutoCleanup *)v48 initWithBlock:v120];
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = sub_195ABCBD8;
      v113[3] = &unk_1E7441E88;
      v51 = contextCopy;
      v114 = v51;
      selfCopy3 = self;
      v52 = account;
      v116 = v52;
      v53 = v49;
      v117 = v53;
      v54 = iCopy;
      v118 = v54;
      v55 = v50;
      v119 = v55;
      [(_IDSService *)self _callDelegatesWithBlock:v113 group:v26];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = sub_195ABCDE8;
      v105[3] = &unk_1E7441FA0;
      v106 = v51;
      selfCopy4 = self;
      v108 = v52;
      v42 = v53;
      v109 = v42;
      v110 = v74;
      v111 = v54;
      v56 = v55;
      v112 = v56;
      [(_IDSService *)self _callDelegatesWithBlock:v105 group:v26];

      resourceTransferMetadata = v74;
      v29 = v75;

      v37 = 0;
      goto LABEL_33;
    }
  }

  v42 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
  {
    sub_195B39370();
  }

LABEL_24:
  v37 = 1;
LABEL_33:

LABEL_34:
  if (v37 & 1 | !self->_manuallyAckMessages)
  {
    wantsAppAck = [contextCopy wantsAppAck];
    isDirectMessage = [contextCopy isDirectMessage];
    outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
    v76 = v29;
    storageGuid = [contextCopy storageGuid];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v62 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v64 = v63;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      broadcastTime = [v62 numberWithDouble:v64 - v66];
    }

    v67 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = @"NO";
      *buf = 138413058;
      v128 = contextCopy;
      if (wantsAppAck)
      {
        v68 = @"YES";
      }

      v129 = 2112;
      v130 = v68;
      v131 = 2112;
      v132 = outgoingResponseIdentifier3;
      v133 = 2112;
      v134 = storageGuid;
      _os_log_impl(&dword_1959FF000, v67, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v69 = +[IDSInternalQueueController sharedInstance];
    queue = [v69 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABD408;
    block[3] = &unk_1E7440FE8;
    v91 = wantsAppAck;
    v92 = isDirectMessage;
    v84 = connectionCopy;
    v85 = outgoingResponseIdentifier3;
    v86 = contextCopy;
    selfCopy5 = self;
    v88 = iCopy;
    v89 = storageGuid;
    v90 = broadcastTime;
    v71 = broadcastTime;
    v72 = storageGuid;
    v73 = outgoingResponseIdentifier3;
    dispatch_group_notify(v26, queue, block);

    v29 = v76;
  }

  dispatch_group_leave(v26);

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)connection:(id)connection incomingProtobuf:(id)protobuf fromURI:(id)i context:(id)context
{
  v96 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  protobufCopy = protobuf;
  iCopy = i;
  contextCopy = context;
  v11 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v11 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B393E4();
    }
  }

  v13 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    *buf = 138412546;
    *v91 = protobufCopy;
    *&v91[8] = 2112;
    *v92 = outgoingResponseIdentifier;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Incoming protobuf %@, routing to selector/delegate. sender-side-identifier %@", buf, 0x16u);
  }

  v15 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    if ([contextCopy usedEngram])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    *v91 = outgoingResponseIdentifier2;
    *&v91[8] = 2112;
    *v92 = v17;
    *&v92[8] = 2048;
    v93 = v18;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Incoming protobuf on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  context = objc_autoreleasePoolPush();
  v57 = [MEMORY[0x1E69A5388] keyRepresentationForType:objc_msgSend(protobufCopy isResponse:{"type"), objc_msgSend(protobufCopy, "isResponse")}];
  v55 = [(NSMutableDictionary *)self->_protobufSelectors objectForKey:v57];
  _internal = [connectionCopy _internal];
  account = [_internal account];

  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v89 = 0;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  if (v55)
  {
    pointerValue = [v55 pointerValue];
    v23 = NSStringFromSelector(pointerValue);
    v24 = v23;
    if (![(NSString *)v23 hasSuffix:@"service:account:fromID:context:"])
    {
      v24 = [(NSString *)v23 stringByAppendingString:@"service:account:fromID:context:"];
    }

    v25 = NSSelectorFromString(v24);
    v26 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      unsignedIntValue = [v57 unsignedIntValue];
      *buf = 138412802;
      *v91 = v23;
      *&v91[8] = 2112;
      *v92 = v24;
      *&v92[8] = 1024;
      LODWORD(v93) = unsignedIntValue;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Found selector %@ fullSelector %@ for key 0x%x", buf, 0x1Cu);
    }

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = sub_195ABDF48;
    v79[3] = &unk_1E7441FC8;
    v86 = v25;
    v80 = protobufCopy;
    v81 = iCopy;
    v82 = account;
    selfCopy = self;
    v84 = contextCopy;
    v85 = v88;
    v87 = pointerValue;
    [(_IDSService *)self _callDelegatesWithBlock:v79 group:v20];
  }

  else
  {
    v28 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      unsignedIntValue2 = [v57 unsignedIntValue];
      type = [protobufCopy type];
      isResponse = [protobufCopy isResponse];
      v32 = @"NO";
      *buf = 67109634;
      *v91 = unsignedIntValue2;
      if (isResponse)
      {
        v32 = @"YES";
      }

      *&v91[4] = 1024;
      *&v91[6] = type;
      *v92 = 2112;
      *&v92[2] = v32;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "No selector for key 0x%x = type(%u) isResponse(%@), notifying delegates", buf, 0x18u);
    }

    messageSequenceNumber = [contextCopy messageSequenceNumber];
    [messageSequenceNumber unsignedIntegerValue];
    kdebug_trace();

    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = sub_195ABE284;
    v72[3] = &unk_1E7441FF0;
    v73 = protobufCopy;
    selfCopy2 = self;
    v75 = account;
    v76 = iCopy;
    v77 = contextCopy;
    v78 = v88;
    [(_IDSService *)self _callDelegatesWithBlock:v72 group:v20];

    v23 = v73;
  }

  if (!self->_manuallyAckMessages)
  {
    wantsAppAck = [contextCopy wantsAppAck];
    isDirectMessage = [contextCopy isDirectMessage];
    outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
    v52 = isDirectMessage;
    storageGuid = [contextCopy storageGuid];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v39 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v41 = v40;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      v44 = [v39 numberWithDouble:v41 - v43];
    }

    else
    {
      v44 = 0;
    }

    v45 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = @"NO";
      *buf = 138413058;
      *v91 = contextCopy;
      if (wantsAppAck)
      {
        v46 = @"YES";
      }

      *&v91[8] = 2112;
      *v92 = v46;
      *&v92[8] = 2112;
      v93 = outgoingResponseIdentifier3;
      v94 = 2112;
      v95 = storageGuid;
      _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v47 = +[IDSInternalQueueController sharedInstance];
    queue = [v47 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABE44C;
    block[3] = &unk_1E7442018;
    v69 = v88;
    v61 = outgoingResponseIdentifier3;
    v70 = wantsAppAck;
    v71 = v52;
    v62 = connectionCopy;
    v63 = contextCopy;
    selfCopy3 = self;
    v65 = iCopy;
    v66 = storageGuid;
    v67 = v44;
    v68 = protobufCopy;
    v49 = v44;
    v50 = storageGuid;
    v51 = outgoingResponseIdentifier3;
    dispatch_group_notify(v20, queue, block);
  }

  dispatch_group_leave(v20);

  _Block_object_dispose(v88, 8);
  objc_autoreleasePoolPop(context);
}

- (void)connection:(id)connection incomingTopLevelMessage:(id)message fromURI:(id)i messageContext:(id)context
{
  v67 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39500();
    }
  }

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v19 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v17;
    if ([contextCopy usedEngram])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v62 = outgoingResponseIdentifier;
    v63 = 2112;
    v64 = v21;
    v17 = v20;
    v65 = 2048;
    v66 = v22;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "incomingTopLevelMessage on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
  if ([serviceName isEqualToString:@"com.apple.madrid"])
  {
    v24 = [(NSMapTable *)self->_delegateToInfo count];

    if (v24)
    {
      goto LABEL_16;
    }

    v25 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = outgoingResponseIdentifier;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "No delegates for incoming madrid message. Sending 115 for guid %@", buf, 0xCu);
    }

    v26 = objc_alloc(MEMORY[0x1E69A5338]);
    serviceName2 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
    serviceName = [v26 initWithReason:709 guid:outgoingResponseIdentifier service:serviceName2 additionalInformation:0];

    [(_IDSService *)self _sendMissingMessageMetric:serviceName];
  }

LABEL_16:
  v28 = contextCopy;
  [v28 setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [v28 setFromID:prefixedURI];

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_195ABEB74;
  v54[3] = &unk_1E7441E88;
  v32 = v28;
  v55 = v32;
  selfCopy = self;
  v33 = account;
  v57 = v33;
  v34 = messageCopy;
  v58 = v34;
  v35 = iCopy;
  v59 = v35;
  v36 = outgoingResponseIdentifier;
  v60 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v54 group:v17];
  if (!self->_manuallyAckMessages)
  {
    [v32 storageGuid];
    v38 = v37 = connectionCopy;
    [v32 outgoingResponseIdentifier];
    v39 = v47 = v34;
    v40 = +[IDSInternalQueueController sharedInstance];
    [v40 queue];
    v46 = v35;
    v42 = v41 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABED58;
    block[3] = &unk_1E743EF38;
    v49 = v38;
    v50 = v39;
    selfCopy2 = self;
    v52 = v37;
    v53 = v32;
    v43 = v39;
    v44 = v38;
    connectionCopy = v37;
    v45 = v44;
    dispatch_group_notify(v41, v42, block);

    v17 = v41;
    v35 = v46;

    v34 = v47;
  }

  dispatch_group_leave(v17);
}

- (void)connection:(id)connection incomingBatchMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B395A0();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
  service = [messageCopy service];
  v15 = [pushTopic isEqualToString:service];

  if (v15)
  {
    messages = [messageCopy messages];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195ABF070;
    v20[3] = &unk_1E7442040;
    v20[4] = self;
    [messages enumerateObjectsUsingBlock:v20];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195ABF0C8;
    v17[3] = &unk_1E7442068;
    v17[4] = self;
    v18 = account;
    v19 = messageCopy;
    [(_IDSService *)self _callDelegatesWithBlock:v17];
  }
}

- (void)connection:(id)connection incomingPendingMessageFromURI:(id)i context:(id)context
{
  connectionCopy = connection;
  iCopy = i;
  contextCopy = context;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39640();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  originalCommand = [contextCopy originalCommand];
  v17 = [(_IDSService *)self _messageTypeForCommand:originalCommand];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195ABF998;
  v21[3] = &unk_1E7442090;
  v22 = contextCopy;
  selfCopy = self;
  v25 = iCopy;
  v26 = v17;
  v24 = account;
  v18 = iCopy;
  v19 = account;
  v20 = contextCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v21];
}

- (void)connection:(id)connection incomingPendingResourceWithMetadata:(id)metadata guid:(id)guid fromURI:(id)i context:(id)context
{
  metadataCopy = metadata;
  guidCopy = guid;
  iCopy = i;
  contextCopy = context;
  _internal = [connection _internal];
  account = [_internal account];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_195ABFD54;
  v32[3] = &unk_1E74420B8;
  v32[4] = self;
  v33 = guidCopy;
  v18 = guidCopy;
  v19 = MEMORY[0x19A8BBEF0](v32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195ABFDB8;
  v25[3] = &unk_1E74420E0;
  v26 = contextCopy;
  selfCopy = self;
  v28 = account;
  v29 = metadataCopy;
  v30 = iCopy;
  v31 = v19;
  v20 = v19;
  v21 = iCopy;
  v22 = metadataCopy;
  v23 = account;
  v24 = contextCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v25];
}

- (int64_t)_messageTypeForCommand:(id)command
{
  integerValue = [command integerValue];
  if (integerValue > 231)
  {
    if (integerValue > 242)
    {
      if (integerValue > 249)
      {
        if (integerValue == 250)
        {
          return 13;
        }

        if (integerValue == 251)
        {
          return 14;
        }
      }

      else
      {
        if (integerValue == 243)
        {
          return 3;
        }

        if (integerValue == 245)
        {
          return 4;
        }
      }
    }

    else if (integerValue > 238)
    {
      if (integerValue == 239)
      {
        return 11;
      }

      if (integerValue == 242)
      {
        return 2;
      }
    }

    else
    {
      if (integerValue == 232)
      {
        return 6;
      }

      if (integerValue == 235)
      {
        return 7;
      }
    }

    return 15;
  }

  if (integerValue > 208)
  {
    if ((integerValue - 210) < 2)
    {
      return 12;
    }

    if (integerValue == 209)
    {
      return 10;
    }

    if (integerValue == 227)
    {
      return 1;
    }

    return 15;
  }

  if (integerValue <= 205)
  {
    if (integerValue == 100)
    {
      return 0;
    }

    if (integerValue == 121)
    {
      return 5;
    }

    return 15;
  }

  if (integerValue == 206)
  {
    return 12;
  }

  if (integerValue == 207)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (id)_payloadFromDecryptedData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _FTOptionallyDecompressData = [dataCopy _FTOptionallyDecompressData];
      v4 = JWDecodeDictionary();
      if (![v4 count])
      {
        v6 = JWDecodeDictionary();

        v4 = v6;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)connection:(id)connection incomingEngramMessage:(id)message fromURI:(id)i context:(id)context
{
  connectionCopy = connection;
  messageCopy = message;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B396E0();
    }
  }

  v17 = objc_alloc(MEMORY[0x1E699BB88]);
  engramGroupID = [contextCopy engramGroupID];
  v19 = [v17 initWithDataRepresentation:engramGroupID];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_195AC040C;
  v33[3] = &unk_1E7442108;
  v20 = messageCopy;
  v34 = v20;
  v35 = contextCopy;
  selfCopy = self;
  v37 = connectionCopy;
  v38 = iCopy;
  v21 = iCopy;
  v22 = connectionCopy;
  v23 = contextCopy;
  v24 = MEMORY[0x19A8BBEF0](v33);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_195AC07AC;
  v28[3] = &unk_1E7442180;
  v29 = v19;
  v30 = v20;
  selfCopy2 = self;
  v32 = v24;
  v25 = v24;
  v26 = v20;
  v27 = v19;
  [(_IDSService *)self performGroupTask:v28];
}

- (void)connection:(id)connection isActiveChanged:(BOOL)changed
{
  changedCopy = changed;
  v18 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39780();
    }
  }

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    _internal = [connectionCopy _internal];
    v12 = _internal;
    v13 = @"NO";
    if (changedCopy)
    {
      v13 = @"YES";
    }

    v14 = 138412546;
    v15 = _internal;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_INFO, "isActiveChanged on connection %@ isActive %@", &v14, 0x16u);
  }

  [(_IDSService *)self _callIsActiveChanged];
}

- (void)connection:(id)connection devicesChanged:(id)changed
{
  v37 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39820();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];
  _internal2 = [account _internal];

  devices = [(_IDSService *)self devices];
  iDSService_oversized = [MEMORY[0x1E69A6138] IDSService_oversized];
  if (os_log_type_enabled(iDSService_oversized, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [devices __imArrayByApplyingBlock:&unk_1F09E6B40];
    v17 = [devices count];
    v18 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138413314;
    v28 = connectionCopy;
    v29 = 2112;
    v30 = _internal2;
    v31 = 2112;
    v32 = v16;
    v33 = 2050;
    v34 = v17;
    v35 = 2048;
    v36 = v18;
    _os_log_impl(&dword_1959FF000, iDSService_oversized, OS_LOG_TYPE_DEFAULT, "devicesChanged on connection %@ account %@ all devices %@ num devices %{public}lu num delegates: %lu", buf, 0x34u);
  }

  if (_internal2 && ([MEMORY[0x1E695DFD8] setWithObject:_internal2], v19 = objc_claimAutoreleasedReturnValue(), v20 = sub_195A0CBF4(v19), v19, v20))
  {
    iDSService = [MEMORY[0x1E69A6138] IDSService];
    if (os_log_type_enabled(iDSService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, iDSService, OS_LOG_TYPE_DEFAULT, "*** dropping devicesChanged callback!", buf, 2u);
    }
  }

  else
  {
    iDSService = [MEMORY[0x1E6995700] weakRefWithObject:self];
    if ([changedCopy count])
    {
      [(_IDSService *)self _callDelegatesForDevicesChanged];
    }

    else
    {
      v22 = dispatch_time(0, 60000000000);
      v23 = +[IDSInternalQueueController sharedInstance];
      queue = [v23 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AC15A0;
      block[3] = &unk_1E743E878;
      iDSService = iDSService;
      v26 = iDSService;
      dispatch_after(v22, queue, block);
    }
  }
}

- (void)connection:(id)connection nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39960();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AC16D8;
  v10[3] = &unk_1E7441E18;
  v10[4] = self;
  v11 = changedCopy;
  v9 = changedCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v10];
}

- (void)connection:(id)connection connectedDevicesChanged:(id)changed
{
  v26 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39A00();
    }
  }

  iDSService_oversized = [MEMORY[0x1E69A6138] IDSService_oversized];
  if (os_log_type_enabled(iDSService_oversized, OS_LOG_TYPE_DEFAULT))
  {
    _internal = [connectionCopy _internal];
    account = [_internal account];
    _internal2 = [account _internal];
    *buf = 138413058;
    v19 = connectionCopy;
    v20 = 2112;
    v21 = _internal2;
    v22 = 2112;
    v23 = changedCopy;
    v24 = 2050;
    v25 = [changedCopy count];
    _os_log_impl(&dword_1959FF000, iDSService_oversized, OS_LOG_TYPE_DEFAULT, "connectedDevicesChanged on connection %@ account %@ devices %@ num devices %{public}lu", buf, 0x2Au);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AC1948;
  v16[3] = &unk_1E7441E18;
  v16[4] = self;
  v17 = changedCopy;
  v15 = changedCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v16];
}

- (void)connection:(id)connection messageIdentifier:(id)identifier alternateCallbackID:(id)d updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call messageContext:(id)context
{
  LODWORD(v9) = call;
  v77 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  identifierCopy = identifier;
  dCopy = d;
  errorCopy = error;
  contextCopy = context;
  v18 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v18 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39AA0();
    }
  }

  bytesSent = [contextCopy bytesSent];

  v22 = +[IDSLogging _IDSService];
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (bytesSent)
  {
    if (v23)
    {
      v24 = v9 == 0;
      v44 = v9;
      v9 = connectionCopy;
      if (v24)
      {
        v25 = @"NO";
      }

      else
      {
        v25 = @"YES";
      }

      bytesSent2 = [contextCopy bytesSent];
      totalBytes = [contextCopy totalBytes];
      *buf = 138414082;
      selfCopy2 = self;
      v63 = 2112;
      v64 = identifierCopy;
      v65 = 2112;
      v66 = dCopy;
      v67 = 2048;
      codeCopy2 = code;
      v69 = 2112;
      v70 = errorCopy;
      v71 = 2112;
      v72 = v25;
      connectionCopy = v9;
      LOBYTE(v9) = v44;
      v73 = 2112;
      v74 = bytesSent2;
      v75 = 2112;
      v76 = totalBytes;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got messageIdentifier %@ callbackID %@ updatedWithResponseCode: %ld error %@ lastCall %@ sentBytes %@ totalBytes %@", buf, 0x52u);
    }
  }

  else if (v23)
  {
    v28 = @"NO";
    *buf = 138413570;
    selfCopy2 = self;
    v63 = 2112;
    if (v9)
    {
      v28 = @"YES";
    }

    v64 = identifierCopy;
    v65 = 2112;
    v66 = dCopy;
    v67 = 2048;
    codeCopy2 = code;
    v69 = 2112;
    v70 = errorCopy;
    v71 = 2112;
    v72 = v28;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got messageIdentifier %@ callbackID %@ updatedWithResponseCode: %ld error %@ lastCall %@", buf, 0x3Eu);
  }

  originalCommand = [contextCopy originalCommand];
  v30 = [originalCommand isEqualToNumber:&unk_1F0A299D8];

  if ((v30 & 1) == 0)
  {
    _internal = [connectionCopy _internal];
    account = [_internal account];

    if (!code && (v9 & 1) == 0)
    {
      bytesSent3 = [contextCopy bytesSent];
      if (bytesSent3)
      {
        v34 = bytesSent3;
        totalBytes2 = [contextCopy totalBytes];

        if (totalBytes2)
        {
          bytesSent4 = [contextCopy bytesSent];
          integerValue = [bytesSent4 integerValue];

          totalBytes3 = [contextCopy totalBytes];
          integerValue2 = [totalBytes3 integerValue];

          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = sub_195AC1EB0;
          v56[3] = &unk_1E74421A8;
          v56[4] = self;
          v57 = account;
          v39 = identifierCopy;
          v58 = v39;
          v59 = integerValue;
          v60 = integerValue2;
          [(_IDSService *)self _callDelegatesWithBlock:v56];
          uniqueIDToProgress = self->_uniqueIDToProgress;
          if (uniqueIDToProgress)
          {
            v41 = [(NSMutableDictionary *)uniqueIDToProgress objectForKeyedSubscript:v39];
            v42 = v41;
            if (v41)
            {
              [v41 setTotalUnitCount:integerValue2];
              [v42 setCompletedUnitCount:integerValue];
            }
          }
        }
      }
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_195AC1F30;
    v48[3] = &unk_1E74421D0;
    v48[4] = self;
    v49 = account;
    v50 = identifierCopy;
    v51 = dCopy;
    codeCopy3 = code;
    v52 = errorCopy;
    v55 = v9;
    v53 = contextCopy;
    v43 = account;
    [(_IDSService *)self _callDelegatesWithBlock:v48];
  }
}

- (void)connection:(id)connection identifier:(id)identifier alternateCallbackID:(id)d willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations
{
  v63 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  destinationsCopy = destinations;
  skippedDestinationsCopy = skippedDestinations;
  toDestinationsCopy = toDestinations;
  connectionCopy = connection;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(skippedDestinations) = [v20 assertQueueIsCurrent];

  if (skippedDestinations)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39B40();
    }
  }

  v22 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    serviceProperties = [(_IDSService *)self serviceProperties];
    identifier = [serviceProperties identifier];
    IDSLoggableDescriptionForHandlesOnService();
    v23 = v40 = connectionCopy;
    [(_IDSService *)self serviceProperties];
    v24 = v43 = destinationsCopy;
    [v24 identifier];
    v25 = toDestinationsCopy;
    v26 = dCopy;
    v28 = v27 = identifierCopy;
    v29 = IDSLoggableDescriptionForHandlesOnService();
    v42 = skippedDestinationsCopy;
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    *buf = 138413570;
    selfCopy = self;
    v53 = 2112;
    v54 = v27;
    v55 = 2112;
    v56 = v26;
    v57 = 2112;
    v58 = v23;
    v59 = 2112;
    v60 = v29;
    v61 = 2112;
    v62 = v30;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ callbackID %@ willSendToDestinations %@ skippedDests %@ regPropsToDests (count) %@", buf, 0x3Eu);

    skippedDestinationsCopy = v42;
    identifierCopy = v27;
    dCopy = v26;
    toDestinationsCopy = v25;

    destinationsCopy = v43;
    connectionCopy = v40;
  }

  _internal = [connectionCopy _internal];

  account = [_internal account];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_195AC237C;
  v44[3] = &unk_1E7441FA0;
  v44[4] = self;
  v45 = account;
  v46 = identifierCopy;
  v47 = dCopy;
  v48 = destinationsCopy;
  v49 = skippedDestinationsCopy;
  v50 = toDestinationsCopy;
  v33 = toDestinationsCopy;
  v34 = skippedDestinationsCopy;
  v35 = destinationsCopy;
  v36 = dCopy;
  v37 = identifierCopy;
  v38 = account;
  [(_IDSService *)self _callDelegatesWithBlock:v44];
}

- (void)connection:(id)connection identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v53 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  connectionCopy = connection;
  v16 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v16 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39BE0();
    }
  }

  v19 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138413314;
    selfCopy = self;
    v45 = 2112;
    v46 = identifierCopy;
    v47 = 2112;
    v48 = v20;
    v49 = 2112;
    v50 = errorCopy;
    v51 = 2048;
    v52 = v21;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ didSendWithSuccess %@  error %@ num delegates: %lu", buf, 0x34u);
  }

  _internal = [connectionCopy _internal];

  account = [_internal account];

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = sub_195AC26F0;
  v36 = &unk_1E74421F8;
  selfCopy2 = self;
  v24 = account;
  v38 = v24;
  v25 = identifierCopy;
  v39 = v25;
  v42 = successCopy;
  v26 = errorCopy;
  v40 = v26;
  v27 = contextCopy;
  v41 = v27;
  [(_IDSService *)self _callDelegatesWithBlock:&v33];
  if (v25)
  {
    v28 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v25, v33, v34, v35, v36, selfCopy2, v38, v39, v40];
    v29 = v28;
    if (v28)
    {
      first = [v28 first];
      (first)[2](first, v26);
    }

    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v25];
  }

  uniqueIDToProgress = self->_uniqueIDToProgress;
  if (uniqueIDToProgress)
  {
    [(NSMutableDictionary *)uniqueIDToProgress removeObjectForKey:v25];
    if (![(NSMutableDictionary *)self->_uniqueIDToProgress count])
    {
      v32 = self->_uniqueIDToProgress;
      self->_uniqueIDToProgress = 0;
    }
  }
}

- (void)connection:(id)connection identifier:(id)identifier fromURI:(id)i hasBeenDeliveredWithContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  iCopy = i;
  contextCopy = context;
  connectionCopy = connection;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39C80();
    }
  }

  v17 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2112;
    v34 = contextCopy;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ hasBeenDeliveredWithContext %@", buf, 0x20u);
  }

  _internal = [connectionCopy _internal];

  account = [_internal account];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_195AC29E8;
  v24[3] = &unk_1E7441EB0;
  v24[4] = self;
  v25 = account;
  v26 = identifierCopy;
  v27 = contextCopy;
  v28 = iCopy;
  v20 = iCopy;
  v21 = contextCopy;
  v22 = identifierCopy;
  v23 = account;
  [(_IDSService *)self _callDelegatesWithBlock:v24];
}

- (void)connection:(id)connection didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid
{
  v31 = *MEMORY[0x1E69E9840];
  iCopy = i;
  rICopy = rI;
  guidCopy = guid;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39D20();
    }
  }

  v15 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v25 = 2112;
    v26 = iCopy;
    v27 = 2112;
    v28 = rICopy;
    v29 = 2112;
    v30 = guidCopy;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "%@ didFlushCacheForRemoteURI %@ fromURI %@ guid %@", buf, 0x2Au);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AC2CB8;
  v19[3] = &unk_1E7441F50;
  v19[4] = self;
  v20 = iCopy;
  v21 = rICopy;
  v22 = guidCopy;
  v16 = guidCopy;
  v17 = rICopy;
  v18 = iCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v19];
}

- (void)connection:(id)connection didFlushCacheForKTPeerURI:(id)i
{
  v17 = *MEMORY[0x1E69E9840];
  iCopy = i;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39DC0();
    }
  }

  v9 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = iCopy;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ didFlushCacheForKTPeerURI %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AC2EBC;
  v11[3] = &unk_1E7441E18;
  v11[4] = self;
  v12 = iCopy;
  v10 = iCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v11];
}

- (void)connection:(id)connection account:(id)account sessionInviteReceived:(id)received fromID:(id)d transportType:(id)type options:(id)options context:(id)context messageContext:(id)self0
{
  v42 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  optionsCopy = options;
  contextCopy = context;
  messageContextCopy = messageContext;
  typeCopy = type;
  receivedCopy = received;
  v22 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v22 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39E60();
    }
  }

  v25 = +[_IDSSessionStore sharedInstance];
  v26 = [v25 sessionForAccount:accountCopy fromID:dCopy identifier:receivedCopy transportType:typeCopy];

  _internal = [v26 _internal];
  [_internal setBoostContext:messageContextCopy];

  v28 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = optionsCopy;
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "Sending up options to client: %@", buf, 0xCu);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_195AC31C4;
  v34[3] = &unk_1E7441E88;
  v34[4] = self;
  v35 = accountCopy;
  v36 = v26;
  v37 = dCopy;
  v38 = optionsCopy;
  v39 = contextCopy;
  v29 = contextCopy;
  v30 = optionsCopy;
  v31 = dCopy;
  v32 = v26;
  v33 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v34];
}

- (void)connection:(id)connection account:(id)account inviteDroppedForSessionID:(id)d fromID:(id)iD context:(id)context error:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  errorCopy = error;
  v18 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v18 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39F00();
    }
  }

  v21 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = dCopy;
    v35 = 2112;
    v36 = iDCopy;
    v37 = 2112;
    v38 = errorCopy;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Received invitation but dropped for sessionID %@ fromID %@ with %@", buf, 0x20u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195AC34EC;
  v27[3] = &unk_1E7441E88;
  v27[4] = self;
  v28 = accountCopy;
  v29 = dCopy;
  v30 = iDCopy;
  v31 = contextCopy;
  v32 = errorCopy;
  v22 = errorCopy;
  v23 = contextCopy;
  v24 = iDCopy;
  v25 = dCopy;
  v26 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v27];
}

- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  updateCopy = update;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39FA0();
    }
  }

  v15 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v25 = 2112;
    v26 = updateCopy;
    v27 = 2112;
    v28 = contextCopy;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Received group session participant update {service: %@, update: %@, context: %@}", buf, 0x20u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AC3748;
  v19[3] = &unk_1E7441F50;
  v19[4] = self;
  v20 = accountCopy;
  v21 = updateCopy;
  v22 = contextCopy;
  v16 = contextCopy;
  v17 = updateCopy;
  v18 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v19];
}

- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update
{
  accountCopy = account;
  updateCopy = update;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A040();
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AC3924;
  v14[3] = &unk_1E7442068;
  v14[4] = self;
  v15 = accountCopy;
  v16 = updateCopy;
  v12 = updateCopy;
  v13 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v14];
}

- (void)connection:(id)connection didSendOpportunisticDataWithIdentifier:(id)identifier toIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dsCopy = ds;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A0E0();
    }
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 2112;
    v23 = dsCopy;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Recieved did send opportunistic data {service: %@, identifier: %@, toIDs: %@}", buf, 0x20u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195AC3B58;
  v15[3] = &unk_1E7442068;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = dsCopy;
  v13 = dsCopy;
  v14 = identifierCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v15];
}

- (BOOL)isPretendingToBeFull
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A180();
    }
  }

  return self->_pretendingToBeFull;
}

- (void)setPretendingToBeFull:(BOOL)full
{
  fullCopy = full;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A220();
    }
  }

  if (self->_pretendingToBeFull != fullCopy)
  {
    self->_pretendingToBeFull = fullCopy;
    if (!fullCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_195AC3D44;
      v8[3] = &unk_1E7441CD8;
      v8[4] = self;
      [(_IDSService *)self _callDelegatesWithBlock:v8];
    }
  }
}

- (NSString)serviceDomain
{
  v2 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v2 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A2C0();
    }
  }

  return 0;
}

- (unint64_t)registrationRestrictionReason
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A360();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  listener = [v6 listener];
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  v10 = [listener restrictionReasonForService:identifier];

  return v10;
}

- (id)_filteredAccountsFrom:(id)from
{
  v47 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v4 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v4 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A4A0();
    }
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = fromCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v35;
    v13 = 0x1E743D000uLL;
    *&v10 = 138413058;
    v30 = v10;
    v31 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        _internal = [v15 _internal];
        isTransientAllowlistedAccount = [_internal isTransientAllowlistedAccount];

        if (isTransientAllowlistedAccount || ([v15 _internal], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "canSend"), v18, v19))
        {
          [v7 addObject:v15];
        }

        else
        {
          _IDSService = [*(v13 + 1160) _IDSService];
          if (os_log_type_enabled(_IDSService, OS_LOG_TYPE_INFO))
          {
            _internal2 = [v15 _internal];
            v32 = _internal2;
            _internal3 = [v15 _internal];
            aliases = [_internal3 aliases];
            _internal4 = [v15 _internal];
            v24 = v7;
            if ([_internal4 isActive])
            {
              v25 = @"YES";
            }

            else
            {
              v25 = @"NO";
            }

            _internal5 = [v15 _internal];
            canSend = [_internal5 canSend];
            *buf = v30;
            v28 = @"NO";
            if (canSend)
            {
              v28 = @"YES";
            }

            v39 = _internal2;
            v40 = 2112;
            v41 = aliases;
            v42 = 2112;
            v43 = v25;
            v7 = v24;
            v44 = 2112;
            v45 = v28;
            _os_log_impl(&dword_1959FF000, _IDSService, OS_LOG_TYPE_INFO, "Filtering account %@ with aliases %@  isActive? %@  canSend? %@", buf, 0x2Au);

            v8 = v31;
            v13 = 0x1E743D000;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v11);
  }

  return v7;
}

- (NSSet)internalAccounts
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A5E0();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  internalAccounts = [_internal internalAccounts];

  v8 = [(_IDSService *)self _filteredAccountsFrom:internalAccounts];

  return v8;
}

- (BOOL)canSend
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A7C0();
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _internal = [(IDSAccountController *)self->_accountController _internal];
  accounts = [_internal accounts];

  v8 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(accounts);
        }

        _internal2 = [*(*(&v14 + 1) + 8 * i) _internal];
        canSend = [_internal2 canSend];

        if (canSend)
        {
          LOBYTE(v8) = 1;
          goto LABEL_15;
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v8;
}

- (void)_reloadCachedLinkedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195AC44F8;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4 waitUntilDone:1];
}

- (void)_updateLinkedDevicesWithDevicesInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A900();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  linkedDevices = self->_linkedDevices;
  self->_linkedDevices = v8;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = infoCopy;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [[IDSDevice alloc] _initWithDictionary:*(*(&v23 + 1) + 8 * i)];
        object = [self->_delegateContext object];
        [v14 _setService:object];

        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          _internal = [v14 _internal];
          compactDescription = [_internal compactDescription];
          *buf = 138412290;
          v28 = compactDescription;
          _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Adding linked IDSDevice %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_linkedDevices addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6B60];
    v21 = [v20 count];
    *buf = 67109120;
    LODWORD(v28) = v21;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "Linked devices updated with count %d", buf, 8u);
  }
}

- (id)linkedDevicesWithRelationship:(int64_t)relationship
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A9A0();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (relationship)
  {
    devices = [(_IDSService *)self devices];
    [v8 addObjectsFromArray:devices];
  }

  accounts = [(_IDSService *)self accounts];
  v11 = [accounts count];

  if (v11)
  {
    [(_IDSService *)self _loadCachedLinkedDevices];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_linkedDevices;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          relationship = [v17 relationship];
          if (relationship != 1 && (relationship & relationship) != 0 && [v17 relationship] != 1)
          {
            [v8 addObject:v17];
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  return v8;
}

- (NSArray)URIs
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(_IDSService *)self accounts];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    v4 = *MEMORY[0x1E69A5630];
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v5;
        v6 = *(*(&v27 + 1) + 8 * v5);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        handles = [v6 handles];
        v8 = [handles countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(handles);
              }

              v12 = *(*(&v23 + 1) + 8 * i);
              v13 = [v12 URI];
              unprefixedURI = [v13 unprefixedURI];
              v15 = [unprefixedURI isEqualToIgnoringCase:v4];

              if ((v15 & 1) == 0)
              {
                v16 = [v12 URI];
                [v3 addObject:v16];
              }
            }

            v9 = [handles countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }

        v5 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (int64_t)maxEffectivePayloadSize
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = +[IDSDaemonController sharedInstance];
  listener = [v4 listener];
  identifier = [(IDSServiceProperties *)self->_serviceProperties identifier];
  v7 = [listener maxEffectivePayloadSizeForService:identifier];

  return v7;
}

- (NSDictionary)pseudonymURIMap
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accounts = [(_IDSService *)self accounts];
  v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        pseudonymURIMap = [*(*(&v12 + 1) + 8 * i) pseudonymURIMap];
        [v3 addEntriesFromDictionary:pseudonymURIMap];
      }

      v6 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)pseudonymForPseudonymURI:(id)i
{
  v31 = *MEMORY[0x1E69E9840];
  iCopy = i;
  if (iCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    accounts = [(_IDSService *)self accounts];
    v20 = [accounts countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v6 = *v26;
      v19 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(accounts);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          pseudonyms = [v8 pseudonyms];
          v10 = [pseudonyms countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v22;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(pseudonyms);
                }

                v14 = *(*(&v21 + 1) + 8 * j);
                v15 = [v14 URI];
                v16 = [v15 isEqualToURI:iCopy];

                if (v16)
                {
                  v17 = v14;

                  goto LABEL_21;
                }
              }

              v11 = [pseudonyms countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v6 = v19;
        }

        v17 = 0;
        v20 = [accounts countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)pseudonymsForMaskedURI:(id)i
{
  iCopy = i;
  pseudonymURIMap = [(_IDSService *)self pseudonymURIMap];
  v6 = [pseudonymURIMap objectForKey:iCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(_IDSService *)self pseudonymsForMaskedURI:i];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AC5230;
  v14[3] = &unk_1E7442220;
  v15 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = [v7 __imArrayByFilteringWithBlock:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  return v11;
}

- (id)_accountWithURI:(id)i orPseudonym:(id)pseudonym
{
  v47 = *MEMORY[0x1E69E9840];
  iCopy = i;
  pseudonymCopy = pseudonym;
  if (iCopy | pseudonymCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    accounts = [(_IDSService *)self accounts];
    v30 = [accounts countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v30)
    {
      v9 = *v41;
      v29 = *v41;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v31 = v11;
          if (iCopy)
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            handles = [v11 handles];
            v13 = [handles countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v37;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v37 != v15)
                  {
                    objc_enumerationMutation(handles);
                  }

                  v17 = [*(*(&v36 + 1) + 8 * j) URI];
                  v18 = [v17 isEqualToURI:iCopy];

                  if (v18)
                  {
LABEL_33:
                    v26 = v31;

                    goto LABEL_34;
                  }
                }

                v14 = [handles countByEnumeratingWithState:&v36 objects:v45 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v11 = v31;
          }

          if (pseudonymCopy)
          {
            v28 = accounts;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            handles = [v11 pseudonyms];
            v19 = [handles countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v33;
              while (2)
              {
                for (k = 0; k != v20; ++k)
                {
                  if (*v33 != v21)
                  {
                    objc_enumerationMutation(handles);
                  }

                  v23 = [*(*(&v32 + 1) + 8 * k) URI];
                  v24 = [pseudonymCopy URI];
                  v25 = [v23 isEqualToURI:v24];

                  if (v25)
                  {
                    accounts = v28;
                    goto LABEL_33;
                  }
                }

                v20 = [handles countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            accounts = v28;
          }

          v9 = v29;
        }

        v26 = 0;
        v30 = [accounts countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v30);
    }

    else
    {
      v26 = 0;
    }

LABEL_34:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)setWantsPseudonymUpdates:(BOOL)updates
{
  if (self->_wantsPseudonymUpdates != updates)
  {
    self->_wantsPseudonymUpdates = updates;
    if (updates)
    {
      pseudonymURIMap = [(_IDSService *)self pseudonymURIMap];
      cachedPseudonymURIMap = self->_cachedPseudonymURIMap;
      self->_cachedPseudonymURIMap = pseudonymURIMap;

      v7 = objc_alloc(MEMORY[0x1E69956C8]);
      v13 = +[IDSInternalQueueController sharedInstance];
      queue = [v13 queue];
      v9 = [v7 initWithCapacity:1 queue:queue block:&unk_1F09E6B80];
      pseudonymUpdateTaskQueue = self->_pseudonymUpdateTaskQueue;
      self->_pseudonymUpdateTaskQueue = v9;

      v11 = v13;
    }

    else
    {
      v12 = self->_cachedPseudonymURIMap;
      self->_cachedPseudonymURIMap = 0;

      v11 = self->_pseudonymUpdateTaskQueue;
      self->_pseudonymUpdateTaskQueue = 0;
    }
  }
}

- (void)account:(id)account pseudonymsChanged:(id)changed
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if ([(_IDSService *)self wantsPseudonymUpdates])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    accounts = [(_IDSService *)self accounts];
    v7 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          _internal = [*(*(&v14 + 1) + 8 * v10) _internal];
          uniqueID = [_internal uniqueID];
          v13 = [uniqueID isEqualToString:accountCopy];

          if (v13)
          {

            [(CUTDeferredTaskQueue *)self->_pseudonymUpdateTaskQueue enqueueExecutionWithTarget:self afterDelay:1.0];
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
}

- (void)_calloutPseudonymsDidUpdate
{
  if ([(_IDSService *)self wantsPseudonymUpdates])
  {
    v3 = self->_cachedPseudonymURIMap;
    pseudonymURIMap = [(_IDSService *)self pseudonymURIMap];
    v5 = IDSServiceCalculatedPseudonymChanges_0(v3, pseudonymURIMap);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195AC6444;
    v9[3] = &unk_1E7441E18;
    v9[4] = self;
    v10 = v5;
    v6 = v5;
    [(_IDSService *)self _callDelegatesWithBlock:v9];
    cachedPseudonymURIMap = self->_cachedPseudonymURIMap;
    self->_cachedPseudonymURIMap = pseudonymURIMap;
    v8 = pseudonymURIMap;
  }
}

- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AA40();
  }

  v11 = [(_IDSService *)self _sendingAccountForAccount:0];
  v12 = [(_IDSService *)self _preferredURIForAccount:v11];
  if (v12)
  {
    firstObject = v12;
LABEL_6:
    [(_IDSService *)self provisionPseudonymForURI:firstObject withProperties:propertiesCopy requestProperties:requestPropertiesCopy completion:completionCopy];
    goto LABEL_7;
  }

  uRIs = [(_IDSService *)self URIs];
  firstObject = [uRIs firstObject];

  if (firstObject)
  {
    goto LABEL_6;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    accounts = [(_IDSService *)self accounts];
    v17 = 138412290;
    v18 = accounts;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "No URI found on any account -- returning nil {accounts: %@}", &v17, 0xCu);
  }

  firstObject = sub_195AC667C(400);
  completionCopy[2](completionCopy, 0, firstObject);
LABEL_7:
}

- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  iCopy = i;
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AAB4();
  }

  v14 = [(_IDSService *)self _accountWithURI:iCopy orPseudonym:0];
  if (v14)
  {
    v31 = requestPropertiesCopy;
    v32 = propertiesCopy;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_195AC6D6C;
    v33[3] = &unk_1E743E850;
    v15 = completionCopy;
    v34 = v15;
    v16 = MEMORY[0x19A8BBEF0](v33);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    if (!completionBlocksByRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v20 = self->_completionBlocksByRequestID;
      self->_completionBlocksByRequestID = Mutable;

      completionBlocksByRequestID = self->_completionBlocksByRequestID;
    }

    v21 = MEMORY[0x1E69A6128];
    v22 = MEMORY[0x19A8BBEF0](v15);
    v23 = MEMORY[0x19A8BBEF0](v16);
    v24 = [v21 pairWithFirst:v22 second:v23];
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v24 forKey:stringGUID];

    registration = [MEMORY[0x1E69A6138] registration];
    propertiesCopy = v32;
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v36 = iCopy;
      v37 = 2112;
      v38 = v32;
      v39 = 2112;
      v40 = stringGUID;
      v41 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI called {URI: %@, properties: %@, requestUUID: %@, self: %@}", buf, 0x2Au);
    }

    daemonController = [(_IDSService *)self daemonController];
    uniqueID = [v14 uniqueID];
    requestPropertiesCopy = v31;
    [daemonController provisionPseudonymForURI:iCopy onAccount:uniqueID withProperties:v32 requestProperties:v31 requestUUID:stringGUID];

    v28 = v34;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v36 = iCopy;
      v37 = 2112;
      v38 = accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched URI -- returning nil {URI: %@, accounts: %@}", buf, 0x16u);
    }

    v28 = sub_195AC667C(400);
    (*(completionCopy + 2))(completionCopy, 0, v28);
  }
}

- (void)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  propertiesCopy = properties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AB28();
  }

  v13 = [(_IDSService *)self _accountWithURI:0 orPseudonym:pseudonymCopy];
  if (v13)
  {
    v30 = propertiesCopy;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_195AC7120;
    v31[3] = &unk_1E743E850;
    v14 = completionCopy;
    v32 = v14;
    v15 = MEMORY[0x19A8BBEF0](v31);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    if (!completionBlocksByRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v19 = self->_completionBlocksByRequestID;
      self->_completionBlocksByRequestID = Mutable;

      completionBlocksByRequestID = self->_completionBlocksByRequestID;
    }

    v20 = MEMORY[0x1E69A6128];
    v21 = MEMORY[0x19A8BBEF0](v14);
    v22 = MEMORY[0x19A8BBEF0](v15);
    v23 = [v20 pairWithFirst:v21 second:v22];
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v23 forKey:stringGUID];

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v34 = pseudonymCopy;
      v35 = 2048;
      epochCopy = epoch;
      v37 = 2112;
      v38 = stringGUID;
      v39 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "renewPseudonym called {pseudonym: %@, expiry: %f, requestUUID: %@, self: %@}", buf, 0x2Au);
    }

    daemonController = [(_IDSService *)self daemonController];
    uniqueID = [v13 uniqueID];
    propertiesCopy = v30;
    [daemonController renewPseudonym:pseudonymCopy onAccount:uniqueID forUpdatedExpiryEpoch:v30 requestProperties:stringGUID requestUUID:epoch];

    v27 = v32;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v34 = pseudonymCopy;
      v35 = 2112;
      epochCopy = *&accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched pseudonym -- returning nil {pseudonym: %@, accounts: %@}", buf, 0x16u);
    }

    v27 = sub_195AC667C(400);
    (*(completionCopy + 2))(completionCopy, 0, v27);
  }
}

- (void)revokePseudonym:(id)pseudonym requestProperties:(id)properties completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  propertiesCopy = properties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AB9C();
  }

  v11 = [(_IDSService *)self _accountWithURI:0 orPseudonym:pseudonymCopy];
  if (v11)
  {
    v28 = propertiesCopy;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_195AC74B8;
    v29[3] = &unk_1E743E850;
    v12 = completionCopy;
    v30 = v12;
    v13 = MEMORY[0x19A8BBEF0](v29);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    if (!completionBlocksByRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v17 = self->_completionBlocksByRequestID;
      self->_completionBlocksByRequestID = Mutable;

      completionBlocksByRequestID = self->_completionBlocksByRequestID;
    }

    v18 = MEMORY[0x1E69A6128];
    v19 = MEMORY[0x19A8BBEF0](v12);
    v20 = MEMORY[0x19A8BBEF0](v13);
    v21 = [v18 pairWithFirst:v19 second:v20];
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v21 forKey:stringGUID];

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = pseudonymCopy;
      v33 = 2112;
      v34 = stringGUID;
      v35 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "revokePseudonym called {pseudonym: %@, requestUUID: %@, self: %@}", buf, 0x20u);
    }

    daemonController = [(_IDSService *)self daemonController];
    uniqueID = [v11 uniqueID];
    propertiesCopy = v28;
    [daemonController revokePseudonym:pseudonymCopy onAccount:uniqueID requestProperties:v28 requestUUID:stringGUID];

    v25 = v30;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v32 = pseudonymCopy;
      v33 = 2112;
      v34 = accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched pseudonym -- returning nil {pseudonym: %@, accounts: %@}", buf, 0x16u);
    }

    v25 = sub_195AC667C(400);
    (*(completionCopy + 2))(completionCopy, 0, v25);
  }
}

- (id)pseudonymPropertiesWithFeatureID:(id)d scopeID:(id)iD expiryDurationInSeconds:(double)seconds
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69A5398];
  iDCopy = iD;
  dCopy = d;
  v11 = [v8 alloc];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v14 = v13 + seconds;
  identifier = [(IDSServiceProperties *)self->_serviceProperties identifier];
  v19[0] = identifier;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [v11 initWithFeatureID:dCopy scopeID:iDCopy expiryEpoch:v16 allowedServices:v14];

  return v17;
}

- (void)finishedProvisioningPseudonym:(id)pseudonym success:(BOOL)success error:(id)error forRequestUUID:(id)d
{
  successCopy = success;
  v36 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  dCopy = d;
  v12 = sub_195AC78FC(error);
  v13 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v13 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v27 = pseudonymCopy;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedProvisioningPseudonym called {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }

    v17 = +[IDSInternalQueueController sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195AC79FC;
    v20[3] = &unk_1E7442268;
    v21 = pseudonymCopy;
    v25 = successCopy;
    v22 = dCopy;
    v23 = v12;
    v24 = first;
    [v17 performBlock:v20];

    registration2 = v21;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v27 = pseudonymCopy;
      v28 = 2112;
      if (successCopy)
      {
        v19 = @"YES";
      }

      v29 = v19;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "finishedProvisioningPseudonym called but no block! {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }
  }
}

- (void)finishedRenewingPseudonym:(id)pseudonym success:(BOOL)success error:(id)error requestUUID:(id)d
{
  successCopy = success;
  v36 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  dCopy = d;
  v12 = sub_195AC78FC(error);
  v13 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v13 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v27 = pseudonymCopy;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedRenewingPseudonym called {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }

    v17 = +[IDSInternalQueueController sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195AC7DAC;
    v20[3] = &unk_1E7442268;
    v21 = pseudonymCopy;
    v25 = successCopy;
    v22 = dCopy;
    v23 = v12;
    v24 = first;
    [v17 performBlock:v20];

    registration2 = v21;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v27 = pseudonymCopy;
      v28 = 2112;
      if (successCopy)
      {
        v19 = @"YES";
      }

      v29 = v19;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "finishedRenewingPseudonym called but no block! {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }
  }
}

- (void)finishedRevokingPseudonymWithSuccess:(BOOL)success error:(id)error requestUUID:(id)d
{
  successCopy = success;
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = sub_195AC78FC(error);
  v10 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v10 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      *buf = 138413058;
      if (successCopy)
      {
        v13 = @"YES";
      }

      v23 = v13;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedRevokingPseudonymWithSuccess called {success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195AC8124;
    v17[3] = &unk_1E7441988;
    v21 = successCopy;
    v18 = dCopy;
    v19 = v9;
    v20 = first;
    [v14 performBlock:v17];

    registration2 = v18;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v23 = v16;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "finishedRevokingPseudonymWithSuccess called but no block {success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x2Au);
    }
  }
}

- (void)signData:(id)data withAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!dataCopy)
    {
LABEL_14:
      v33 = sub_195AC85F4(1u);
      completionCopy[2](completionCopy, 0, v33);

      goto LABEL_15;
    }
  }

  else
  {
    sub_195B3AC10();
    if (!dataCopy)
    {
      goto LABEL_14;
    }
  }

  if ((IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_14;
  }

  keyDiversifier = [optionsCopy keyDiversifier];
  diversifier = [keyDiversifier diversifier];
  v15 = diversifier != 0;

  keyDiversifier2 = [optionsCopy keyDiversifier];
  trackingPreventionSecret = [keyDiversifier2 trackingPreventionSecret];

  v18 = [optionsCopy keyType] != 1;
  if (v15 == (trackingPreventionSecret == 0) || ((v15 ^ v18) & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_14;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_195AC8C30;
  v41[3] = &unk_1E743E850;
  v19 = completionCopy;
  v42 = v19;
  v20 = MEMORY[0x19A8BBEF0](v41);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  v25 = MEMORY[0x1E69A6128];
  v26 = MEMORY[0x19A8BBEF0](v19);
  v34 = v20;
  v27 = MEMORY[0x19A8BBEF0](v20);
  v28 = [v25 pairWithFirst:v26 second:v27];
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v28 forKey:stringGUID];

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v44 = stringGUID;
    v45 = 2112;
    v46 = dataCopy;
    v47 = 2048;
    algorithmCopy = algorithm;
    v49 = 2112;
    v50 = optionsCopy;
    v51 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "signData called {requestID: %@, data: %@, algo: %ld, options: %@, self: %@}", buf, 0x34u);
  }

  daemonController = [(_IDSService *)self daemonController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_195AC8C94;
  v35[3] = &unk_1E7442290;
  algorithmCopy2 = algorithm;
  v36 = dataCopy;
  selfCopy2 = self;
  v38 = optionsCopy;
  v39 = stringGUID;
  v31 = stringGUID;
  [daemonController forwardMethodWithReplyIsSync:0 block:v35];

LABEL_15:
}

- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  v66 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  expectedDataCopy = expectedData;
  iCopy = i;
  optionsCopy = options;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3ACF4();
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    v36 = 1;
LABEL_18:
    v37 = sub_195AC85F4(v36);
    completionCopy[2](completionCopy, 0, v37);

    goto LABEL_19;
  }

  if (!dataCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!expectedDataCopy || !iCopy || (IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_17;
  }

  keyDiversifier = [optionsCopy keyDiversifier];
  diversifier = [keyDiversifier diversifier];
  v21 = diversifier != 0;

  keyDiversifier2 = [optionsCopy keyDiversifier];
  trackingPreventionSecret = [keyDiversifier2 trackingPreventionSecret];

  v24 = [optionsCopy keyType] != 1;
  if (v21 == (trackingPreventionSecret == 0) || ((v21 ^ v24) & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_17;
  }

  if (([iCopy isTokenURI] & 1) == 0)
  {
    v36 = 2;
    goto LABEL_18;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_195AC9184;
  v50[3] = &unk_1E743E850;
  v25 = completionCopy;
  v51 = v25;
  v26 = MEMORY[0x19A8BBEF0](v50);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v29 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  v38 = MEMORY[0x1E69A6128];
  v39 = MEMORY[0x19A8BBEF0](v25);
  v41 = v26;
  v30 = MEMORY[0x19A8BBEF0](v26);
  v31 = [v38 pairWithFirst:v39 second:v30];
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v31 forKey:stringGUID];

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v53 = stringGUID;
    v54 = 2112;
    v55 = dataCopy;
    v56 = 2112;
    v57 = expectedDataCopy;
    v58 = 2112;
    v59 = iCopy;
    v60 = 2048;
    algorithmCopy = algorithm;
    v62 = 2112;
    v63 = optionsCopy;
    v64 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "verifySignedData called {requestID: %@, signedData: %@, data: %@, uri: %@, algo: %ld, options: %@, self: %@}", buf, 0x48u);
  }

  daemonController = [(_IDSService *)self daemonController];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_195AC91E8;
  v42[3] = &unk_1E74422B8;
  v43 = dataCopy;
  algorithmCopy2 = algorithm;
  v44 = expectedDataCopy;
  selfCopy2 = self;
  v46 = iCopy;
  v47 = optionsCopy;
  v48 = stringGUID;
  v34 = stringGUID;
  [daemonController forwardMethodWithReplyIsSync:0 block:v42];

LABEL_19:
}

- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  payloadsCopy = payloads;
  optionsCopy = options;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AD68();
    if (payloadsCopy)
    {
      goto LABEL_3;
    }

LABEL_24:
    v41 = sub_195AC85F4(1u);
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F8], v41);

    goto LABEL_25;
  }

  if (!payloadsCopy)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (![payloadsCopy count] || (IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_24;
  }

  keyDiversifier = [optionsCopy keyDiversifier];
  diversifier = [keyDiversifier diversifier];
  v15 = diversifier != 0;

  keyDiversifier2 = [optionsCopy keyDiversifier];
  trackingPreventionSecret = [keyDiversifier2 trackingPreventionSecret];

  v18 = [optionsCopy keyType] != 1;
  if (v15 == (trackingPreventionSecret == 0) || ((v15 ^ v18) & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_24;
  }

  algorithmCopy = algorithm;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_195AC9754;
  v56[3] = &unk_1E743E850;
  v19 = completionCopy;
  v57 = v19;
  v20 = MEMORY[0x19A8BBEF0](v56);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  selfCopy = self;
  v25 = MEMORY[0x1E69A6128];
  v26 = MEMORY[0x19A8BBEF0](v19);
  v43 = v20;
  v27 = MEMORY[0x19A8BBEF0](v20);
  v28 = [v25 pairWithFirst:v26 second:v27];
  v42 = stringGUID;
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v28 forKey:stringGUID];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = payloadsCopy;
  v31 = [v30 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v53;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(&v52 + 1) + 8 * i) requiringSecureCoding:1 error:0];
        if (v35)
        {
          [v29 addObject:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v32);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v59 = v42;
    v60 = 2048;
    v61 = algorithmCopy;
    v62 = 2112;
    v63 = optionsCopy;
    v64 = 2112;
    v65 = selfCopy;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "verifySignedPayloads called {requestID: %@, algo: %ld, options: %@, self: %@}", buf, 0x2Au);
  }

  daemonController = [(_IDSService *)selfCopy daemonController];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_195AC97BC;
  v46[3] = &unk_1E7442290;
  v51 = algorithmCopy;
  v47 = v29;
  v48 = selfCopy;
  v49 = optionsCopy;
  v50 = v42;
  v38 = v42;
  v39 = v29;
  [daemonController forwardMethodWithReplyIsSync:0 block:v46];

LABEL_25:
}

- (void)finishedSigningForRequest:(id)request signedData:(id)data error:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataCopy = data;
  v10 = sub_195AC78FC(error);
  v11 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:requestCopy];
  first = [v11 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:requestCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v21 = requestCopy;
      v22 = 2112;
      v23 = dataCopy;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedSigningForRequest called {requestUUID: %@, signedData: %@, error: %@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195AC9AB8;
    v16[3] = &unk_1E743F1D8;
    v19 = first;
    v17 = dataCopy;
    v18 = v10;
    [v14 performBlock:v16];

    registration2 = v19;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v21 = requestCopy;
      v22 = 2112;
      v23 = dataCopy;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_ERROR, "finishedSigningForRequest called but no block! {requestUUID: %@, signedData: %@, error: %@, self: %@}", buf, 0x2Au);
    }
  }
}

- (void)finishedVerifyingSignedDataForRequest:(id)request success:(BOOL)success error:(id)error
{
  successCopy = success;
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = sub_195AC78FC(error);
  v10 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:requestCopy];
  first = [v10 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:requestCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      *buf = 138413058;
      v22 = requestCopy;
      if (successCopy)
      {
        v13 = @"YES";
      }

      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedVerifyingSignedDataForRequest called {requestUUID: %@, sucess: %@, error: %@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195AC9D3C;
    v17[3] = &unk_1E743F160;
    v19 = first;
    v20 = successCopy;
    v18 = v9;
    [v14 performBlock:v17];

    registration2 = v19;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      v16 = @"NO";
      *buf = 138413058;
      v22 = requestCopy;
      v23 = 2112;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v24 = v16;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_ERROR, "finishedVerifyingSignedDataForRequest called but no block! {requestUUID: %@, sucess: %@, error: %@, self: %@}", buf, 0x2Au);
    }
  }
}

- (void)finishedVerifyingBatchedSignedDataForRequest:(id)request results:(id)results error:(id)error
{
  v45 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultsCopy = results;
  v10 = sub_195AC78FC(error);
  v11 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:requestCopy];
  first = [v11 first];

  if (first)
  {
    v27 = first;
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:requestCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = requestCopy;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedVerifyingSignedDataForRequest called {requestUUID: %@, error: %@, self: %@}", buf, 0x20u);
    }

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = resultsCopy;
    v14 = resultsCopy;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:v19];
          v21 = [v14 objectForKeyedSubscript:v19];
          if (v21)
          {
            v22 = [MEMORY[0x1E696ACD0] ids_secureUnarchiveObjectOfClass:objc_opt_class() withData:v21];
            v23 = v22;
            if (v20)
            {
              v24 = v22 == 0;
            }

            else
            {
              v24 = 1;
            }

            if (!v24)
            {
              [v29 setObject:v22 forKeyedSubscript:v20];
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v16);
    }

    v25 = +[IDSInternalQueueController sharedInstance];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_195ACA0F4;
    v30[3] = &unk_1E743F1D8;
    first = v27;
    v33 = v27;
    v31 = v29;
    v32 = v10;
    registration2 = v29;
    [v25 performBlock:v30];

    resultsCopy = v28;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v40 = requestCopy;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_ERROR, "finishedVerifyingSignedDataForRequest called but no block! {requestUUID: %@, error: %@, self: %@}", buf, 0x20u);
    }
  }
}

- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  iCopy = i;
  rICopy = rI;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3ADDC();
  }

  if ([iCopy FZIDType] == 4)
  {
    v13 = [(_IDSService *)self _accountWithURI:rICopy orPseudonym:0];
    v14 = v13;
    if (rICopy)
    {
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      prefixedURI = [0 prefixedURI];
      v16 = [(_IDSService *)self _sendingAccountForAccount:0 destination:0 fromID:prefixedURI];

      rICopy = [(_IDSService *)self _preferredURIForAccount:v16];
      v14 = v16;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    if (rICopy)
    {
      actionCopy = action;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_195ACA778;
      v35[3] = &unk_1E743E850;
      v17 = completionCopy;
      v36 = v17;
      v18 = MEMORY[0x19A8BBEF0](v35);
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      completionBlocksByRequestID = self->_completionBlocksByRequestID;
      if (!completionBlocksByRequestID)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v22 = self->_completionBlocksByRequestID;
        self->_completionBlocksByRequestID = Mutable;

        completionBlocksByRequestID = self->_completionBlocksByRequestID;
      }

      v23 = MEMORY[0x1E69A6128];
      v24 = MEMORY[0x19A8BBEF0](v17);
      v33 = v18;
      v25 = MEMORY[0x19A8BBEF0](v18);
      v26 = [v23 pairWithFirst:v24 second:v25];
      [(NSMutableDictionary *)completionBlocksByRequestID setObject:v26 forKey:stringGUID];

      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v38 = iCopy;
        v39 = 2112;
        v40 = rICopy;
        v41 = 2112;
        v42 = stringGUID;
        v43 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "reportApprovalOfURI called {tempURI: %@, fromURI: %@, requestID: %@, self: %@}", buf, 0x2Au);
      }

      daemonController = [(_IDSService *)self daemonController];
      uniqueID = [v14 uniqueID];
      [daemonController reportAction:actionCopy ofTempURI:iCopy fromURI:rICopy onAccount:uniqueID requestUUID:stringGUID];

      v30 = v36;
      goto LABEL_18;
    }

LABEL_15:
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v38 = rICopy;
      v39 = 2112;
      v40 = accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched to report with -- returning nil {fromURI: %@, accounts: %@}", buf, 0x16u);
    }

    v30 = sub_195ACA530(400);
    (*(completionCopy + 2))(completionCopy, v30);
LABEL_18:

    goto LABEL_19;
  }

  v14 = sub_195ACA530(400);
  (*(completionCopy + 2))(completionCopy, v14);
LABEL_19:
}

- (void)finishedReportingRequestUUID:(id)d withError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = sub_195AC78FC(error);
  v8 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v8 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = dCopy;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedReportingRequestUUID called {requestUUID: %@, error:%@, self: %@}", &v12, 0x20u);
    }

    (first)[2](first, v7);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = dCopy;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "finishedReportingRequestUUID called but no block {requestUUID: %@, error:%@, self: %@}", &v12, 0x20u);
    }
  }
}

- (BOOL)updateSubServices:(id)services forDevice:(id)device
{
  v38 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  deviceCopy = device;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AE50();
    }
  }

  if (deviceCopy)
  {
    goto LABEL_17;
  }

  devices = [(_IDSService *)self devices];
  _copyForEnumerating = [devices _copyForEnumerating];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = _copyForEnumerating;
  deviceCopy = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (deviceCopy)
  {
    v14 = *v34;
    while (2)
    {
      for (i = 0; i != deviceCopy; i = (i + 1))
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        _internal = [v16 _internal];
        isActive = [_internal isActive];

        if (isActive)
        {
          deviceCopy = v16;
          goto LABEL_16;
        }
      }

      deviceCopy = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (deviceCopy)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  if (deviceCopy)
  {
LABEL_17:
    _internal2 = [deviceCopy _internal];
    uniqueIDOverride = [_internal2 uniqueIDOverride];

    if (![uniqueIDOverride length])
    {
      _internal3 = [deviceCopy _internal];
      uniqueID = [_internal3 uniqueID];

      uniqueIDOverride = uniqueID;
    }

    if ([uniqueIDOverride length])
    {
      v23 = [(NSMutableDictionary *)self->_subServices objectForKey:uniqueIDOverride];
      warning = v23;
      if (v23 != servicesCopy && ([v23 isEqualToArray:servicesCopy]& 1) == 0)
      {
        subServices = self->_subServices;
        if (!subServices)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v27 = self->_subServices;
          self->_subServices = Mutable;

          subServices = self->_subServices;
        }

        [(NSMutableDictionary *)subServices setObject:servicesCopy forKey:uniqueIDOverride];
        daemonController = [(_IDSService *)self daemonController];
        _internal4 = [(IDSAccountController *)self->_accountController _internal];
        serviceName = [_internal4 serviceName];
        [daemonController updateSubServices:servicesCopy forService:serviceName deviceUniqueID:uniqueIDOverride];

        v31 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195B3AEF0(deviceCopy);
      }
    }

    v31 = 0;
LABEL_28:

    goto LABEL_29;
  }

  deviceCopy = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(deviceCopy, OS_LOG_TYPE_ERROR))
  {
    sub_195B3AF7C();
  }

  v31 = 0;
LABEL_29:

  return v31;
}

- (void)resendSubServicesToDaemonForCurrentDevice
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AFB0();
    }
  }

  warning = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
  {
    sub_195B3B050();
  }

  devices = [(_IDSService *)self devices];
  _copyForEnumerating = [devices _copyForEnumerating];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = _copyForEnumerating;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        _internal = [v13 _internal];
        isActive = [_internal isActive];

        if (isActive)
        {
          v10 = v13;
          goto LABEL_17;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (v10)
  {
    _internal2 = [v10 _internal];
    uniqueIDOverride = [_internal2 uniqueIDOverride];

    if (![uniqueIDOverride length])
    {
      _internal3 = [v10 _internal];
      uniqueID = [_internal3 uniqueID];

      uniqueIDOverride = uniqueID;
    }

    if ([uniqueIDOverride length])
    {
      warning2 = [(NSMutableDictionary *)self->_subServices objectForKey:uniqueIDOverride];
      daemonController = [(_IDSService *)self daemonController];
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      serviceName = [_internal4 serviceName];
      [daemonController updateSubServices:warning2 forService:serviceName deviceUniqueID:uniqueIDOverride];
    }

    else
    {
      warning2 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_195B3AEF0(v10);
      }
    }
  }

  else
  {
    uniqueIDOverride = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(uniqueIDOverride, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AF7C();
    }
  }
}

- (void)setProtobufAction:(SEL)action forProtobufType:(unsigned __int16)type isResponse:(BOOL)response
{
  responseCopy = response;
  typeCopy = type;
  v19 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = _os_activity_create(&dword_1959FF000, "Framework Set Protobuf Action", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v18, &state);
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B084();
    }
  }

  if (action)
  {
    if (!self->_protobufSelectors)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      protobufSelectors = self->_protobufSelectors;
      self->_protobufSelectors = Mutable;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E69A5388] keyRepresentationForType:typeCopy isResponse:responseCopy];
    v16 = [MEMORY[0x1E696B098] valueWithPointer:action];
    [(NSMutableDictionary *)self->_protobufSelectors setObject:v16 forKey:v15];

    objc_autoreleasePoolPop(v14);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (SEL)protobufActionForType:(unsigned __int16)type isResponse:(BOOL)response
{
  responseCopy = response;
  typeCopy = type;
  v17 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v16 = _os_activity_create(&dword_1959FF000, "Framework Get Protobuf Action", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v16, &state);
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B0D4();
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E69A5388] keyRepresentationForType:typeCopy isResponse:responseCopy];
  v12 = [(NSMutableDictionary *)self->_protobufSelectors objectForKey:v11];
  pointerValue = [v12 pointerValue];

  objc_autoreleasePoolPop(v10);
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return pointerValue;
}

- (BOOL)canSendMessageWithAccount:(id)account toDestination:(id)destination
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  destinationCopy = destination;
  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = accountCopy;
    v31 = 2112;
    v32 = destinationCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Attempting To Send message from account %@ to destinations %@", buf, 0x16u);
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];

  if ([serviceName isEqualToIgnoringCase:@"com.apple.private.alloy.idscredentials"] & 1) != 0 || (objc_msgSend(serviceName, "isEqualToIgnoringCase:", @"com.apple.private.alloy.pbbridge"))
  {
    goto LABEL_22;
  }

  if (!self->_clientIsSandboxed)
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B124();
    }
  }

  if ([accountCopy accountType] == 2)
  {
    destinationURIs = [destinationCopy destinationURIs];
    v13 = [destinationURIs count];

    if (v13 < 2)
    {
      destinationURIs2 = [destinationCopy destinationURIs];
      allObjects = [destinationURIs2 allObjects];
      __imFirstObject = [allObjects __imFirstObject];
      _stripFZIDPrefix = [__imFirstObject _stripFZIDPrefix];
      if ([_stripFZIDPrefix _appearsToBeEmail])
      {
      }

      else
      {
        destinationURIs3 = [destinationCopy destinationURIs];
        [destinationURIs3 allObjects];
        v20 = v28 = allObjects;
        [v20 __imFirstObject];
        v21 = v27 = destinationURIs2;
        _stripFZIDPrefix2 = [v21 _stripFZIDPrefix];
        _appearsToBePhoneNumber = [_stripFZIDPrefix2 _appearsToBePhoneNumber];

        if ((_appearsToBePhoneNumber & 1) == 0)
        {
          v23 = ![(_IDSService *)self _isDroppingMessages];
          goto LABEL_23;
        }
      }

      v14 = +[IDSLogging _IDSService];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v15 = "Attempting to send to a remote destination from a local account, this is permited if proxy is permitted and will fail in the daemon if not";
      goto LABEL_20;
    }

    v14 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Attempting to send to more than 1 destination, this message will fail in the daemon if necessary";
LABEL_20:
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }
  }

  else
  {
    v14 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Attempting to send on a non local account, this message is allowed to progress";
      goto LABEL_20;
    }
  }

LABEL_21:

LABEL_22:
  LOBYTE(v23) = 1;
LABEL_23:

  return v23;
}

- (id)_preferredURIForAccount:(id)account
{
  v4 = MEMORY[0x1E69A5428];
  accountCopy = account;
  v6 = [v4 alloc];
  aliasStrings = [accountCopy aliasStrings];

  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  _IDSPrefersPhoneNumbersForServiceIdentifier();
  v10 = _IDSCopyCallerID();
  v11 = [v6 initWithUnprefixedURI:v10];

  return v11;
}

- (id)_sendingAccountForAccount:(id)account destination:(id)destination fromID:(id)d
{
  v98 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  destinationCopy = destination;
  dCopy = d;
  v11 = dCopy;
  if (accountCopy)
  {
    _internal = [accountCopy _internal];
    serviceName = [_internal serviceName];
    if ([serviceName isEqualToString:@"com.apple.madrid"])
    {
LABEL_11:

LABEL_12:
      v22 = accountCopy;
      goto LABEL_59;
    }

    _internal2 = [accountCopy _internal];
    serviceName2 = [_internal2 serviceName];
    if ([serviceName2 isEqualToString:@"com.apple.madrid.lite"])
    {
LABEL_10:

      goto LABEL_11;
    }

    _internal3 = [accountCopy _internal];
    serviceName3 = [_internal3 serviceName];
    if ([serviceName3 isEqualToString:@"com.apple.madrid.lite.relay"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v81 = serviceName3;
    v86 = _internal3;
    _internal4 = [accountCopy _internal];
    serviceName4 = [_internal4 serviceName];
    if ([serviceName4 isEqualToString:@"com.apple.private.alloy.biz"])
    {
LABEL_8:

      _internal3 = v86;
      serviceName3 = v81;
      goto LABEL_9;
    }

    v77 = serviceName4;
    v78 = _internal4;
    _internal5 = [accountCopy _internal];
    serviceName5 = [_internal5 serviceName];
    if ([serviceName5 isEqualToString:@"com.apple.private.alloy.sms"])
    {

      serviceName4 = v77;
      _internal4 = v78;
      goto LABEL_8;
    }

    v75 = serviceName5;
    v76 = _internal5;
    _internal6 = [accountCopy _internal];
    serviceName6 = [_internal6 serviceName];
    if ([serviceName6 isEqualToString:@"com.apple.private.alloy.facetime.multi"])
    {
      v63 = 1;
    }

    else
    {
      _internal7 = [accountCopy _internal];
      serviceName7 = [_internal7 serviceName];
      if ([serviceName7 isEqualToString:@"com.apple.private.alloy.facetime.audio"])
      {
        v63 = 1;
      }

      else
      {
        _internal8 = [accountCopy _internal];
        serviceName8 = [_internal8 serviceName];
        if ([serviceName8 isEqualToString:@"com.apple.private.alloy.facetime.video"])
        {
          v63 = 1;
        }

        else
        {
          _internal9 = [accountCopy _internal];
          serviceName9 = [_internal9 serviceName];
          if ([serviceName9 isEqualToString:@"com.apple.private.alloy.maps.eta"])
          {
            v63 = 1;
          }

          else
          {
            _internal10 = [accountCopy _internal];
            serviceName10 = [_internal10 serviceName];
            if ([serviceName10 isEqualToString:@"com.apple.private.alloy.nearby"])
            {
              v63 = 1;
            }

            else
            {
              _internal11 = [accountCopy _internal];
              [_internal11 serviceName];
              v64 = v85 = v11;
              v63 = [v64 isEqualToString:@"com.apple.private.alloy.willow"];

              v11 = v85;
            }
          }
        }
      }
    }

    if (v63)
    {
      goto LABEL_12;
    }

    v84 = v11;
    anyObject = accountCopy;
  }

  else
  {
    v84 = dCopy;
    accounts = [(_IDSService *)self accounts];
    anyObject = [accounts anyObject];
  }

  _internal12 = [(IDSAccountController *)self->_accountController _internal];
  accounts2 = [_internal12 accounts];
  allObjects = [accounts2 allObjects];
  v28 = [allObjects __imArrayByFilteringWithBlock:&unk_1F09E6BA0];
  v29 = [v28 sortedArrayUsingComparator:&unk_1F09E6BC0];

  iCloudAccount = [(_IDSService *)self iCloudAccount];
  v87 = iCloudAccount;
  if (destinationCopy && (v31 = iCloudAccount, [accountCopy accountType] != 2))
  {
    v79 = destinationCopy;
    v82 = v29;
    destinationURIs = [destinationCopy destinationURIs];
    v34 = [destinationURIs __imSetByApplyingBlock:&unk_1F09E6BE0];
    v35 = [v34 mutableCopy];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    handles = [v31 handles];
    v37 = [handles countByEnumeratingWithState:&v92 objects:v97 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v93;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v93 != v39)
          {
            objc_enumerationMutation(handles);
          }

          v41 = [*(*(&v92 + 1) + 8 * i) URI];
          unprefixedURI = [v41 unprefixedURI];
          [v35 removeObject:unprefixedURI];
        }

        v38 = [handles countByEnumeratingWithState:&v92 objects:v97 count:16];
      }

      while (v38);
    }

    v32 = [v35 count] != 0;
    destinationCopy = v79;
    v29 = v82;
  }

  else
  {
    v32 = 0;
  }

  v43 = [v29 __imArrayByFilteringWithBlock:&unk_1F09E6C00];
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  v46 = _IDSPrefersPhoneNumbersForServiceIdentifier();

  if (v46 && [v43 count])
  {
    firstObject = [v43 firstObject];
    v11 = v84;
LABEL_38:
    v48 = v87;
    goto LABEL_39;
  }

  v11 = v84;
  v48 = v87;
  if (!v87 || v32 && ([v87 isUsableForOuterMessaging] & 1) == 0 && objc_msgSend(v43, "count"))
  {
    if (![v29 count])
    {
      goto LABEL_40;
    }

    v49 = v29;
    firstObject2 = [v43 firstObject];
    v51 = firstObject2;
    if (firstObject2)
    {
      firstObject3 = firstObject2;
    }

    else
    {
      firstObject3 = [v49 firstObject];
    }

    firstObject = firstObject3;

    anyObject = v51;
    v29 = v49;
    goto LABEL_38;
  }

  firstObject = v87;
LABEL_39:

  anyObject = firstObject;
LABEL_40:
  if (v11 && ![(_IDSService *)self _canAccount:anyObject sendWithFromID:v11])
  {
    if (anyObject == v48 || ![(_IDSService *)self _canAccount:v48 sendWithFromID:v11])
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v83 = v29;
      v53 = v29;
      v54 = [v53 countByEnumeratingWithState:&v88 objects:v96 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = v11;
        v80 = destinationCopy;
        v57 = *v89;
        while (2)
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v89 != v57)
            {
              objc_enumerationMutation(v53);
            }

            v59 = *(*(&v88 + 1) + 8 * j);
            if (anyObject != v59 && [(_IDSService *)self _canAccount:*(*(&v88 + 1) + 8 * j) sendWithFromID:v56])
            {
              v60 = v59;

              anyObject = v60;
              goto LABEL_56;
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v88 objects:v96 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }

LABEL_56:
        destinationCopy = v80;
        v29 = v83;
        v11 = v56;
        v48 = v87;
      }
    }

    else
    {
      v53 = anyObject;
      anyObject = v48;
    }
  }

  v22 = anyObject;

LABEL_59:

  return v22;
}

- (BOOL)_canAccount:(id)account sendWithFromID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  v7 = IDSCopyRawAddressForDestination(dCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  aliasStrings = [accountCopy aliasStrings];
  v9 = [aliasStrings countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(aliasStrings);
      }

      _stripFZIDPrefix = [*(*(&v26 + 1) + 8 * v12) _stripFZIDPrefix];
      v14 = [v7 isEqualToString:_stripFZIDPrefix];

      if (v14)
      {
        goto LABEL_19;
      }

      if (v10 == ++v12)
      {
        v10 = [aliasStrings countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (![dCopy _appearsToBePseudonymID])
  {
    LOBYTE(v15) = 0;
    goto LABEL_21;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  aliasStrings = [accountCopy pseudonyms];
  v15 = [aliasStrings countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
LABEL_12:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(aliasStrings);
      }

      v18 = [*(*(&v22 + 1) + 8 * v17) URI];
      prefixedURI = [v18 prefixedURI];
      v20 = [v7 isEqualToString:prefixedURI];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [aliasStrings countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    LOBYTE(v15) = 1;
  }

LABEL_20:

LABEL_21:
  return v15;
}

- (BOOL)sendOpportunisticData:(id)data options:(id)options identifier:(id)identifier error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  identifierCopy = identifier;
  v13 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v13 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B158();
    }
  }

  if (!identifierCopy)
  {
    identifierCopy = @"Default";
  }

  if (error)
  {
    *error = 0;
  }

  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
  v17 = [(_IDSService *)self _sendingAccountForAccount:0];
  uniqueID = [v17 uniqueID];

  opportunistic = [MEMORY[0x1E69A5270] opportunistic];
  if (os_log_type_enabled(opportunistic, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = optionsCopy;
    v28 = 2048;
    v29 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, opportunistic, OS_LOG_TYPE_DEFAULT, "Client request to send opportunistic data {identifier: %@, options: %@, dataLength: %llu}", &v24, 0x20u);
  }

  if (!dictionaryRepresentation)
  {
    dictionaryRepresentation = MEMORY[0x1E695E0F8];
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController sendOpportunisticData:dataCopy onService:serviceName usingAccountWithUniqueID:uniqueID withIdentifier:identifierCopy options:dictionaryRepresentation];

  return 1;
}

- (BOOL)cancelOpportunisticDataWithIdentifier:(id)identifier error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
  }

  else
  {
    v7 = @"Default";
  }

  if (error)
  {
    *error = 0;
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];

  opportunistic = [MEMORY[0x1E69A5270] opportunistic];
  if (os_log_type_enabled(opportunistic, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = serviceName;
    _os_log_impl(&dword_1959FF000, opportunistic, OS_LOG_TYPE_DEFAULT, "Client request to cancel opportunistic data {identifier: %@, serviceName: %@}", &v13, 0x16u);
  }

  daemonController = [(_IDSService *)self daemonController];
  [daemonController cancelOpportunisticDataOnService:serviceName withIdentifier:v7];

  return 1;
}

- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion
{
  v101[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[IDSInternalQueueController sharedInstance];
  LODWORD(options) = [v8 assertQueueIsCurrent];

  if (options)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B1F8();
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  recipientURI = [messageCopy recipientURI];
  prefixedURI = [recipientURI prefixedURI];
  v13 = [v10 initWithObjects:{prefixedURI, 0}];

  senderURI = [messageCopy senderURI];
  prefixedURI2 = [senderURI prefixedURI];

  v16 = MEMORY[0x1E69A5240];
  if (prefixedURI2)
  {
    v17 = [v13 setByAddingObject:prefixedURI2];
    v76 = [v16 destinationWithDestinations:v17];
  }

  else
  {
    v76 = [MEMORY[0x1E69A5240] destinationWithDestinations:v13];
  }

  v18 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v76 fromID:prefixedURI2];
  _internal = [v18 _internal];
  uniqueID = [_internal uniqueID];

  identifier = [optionsCopy identifier];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  payload = [messageCopy payload];
  if (payload)
  {
    CFDictionarySetValue(v20, *MEMORY[0x1E69A4F78], payload);
  }

  theDict = v20;

  encryptionProperties = [messageCopy encryptionProperties];
  segmentNumber = [encryptionProperties segmentNumber];

  if (segmentNumber)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A4E18], segmentNumber);
  }

  encryptionProperties2 = [messageCopy encryptionProperties];
  totalSegments = [encryptionProperties2 totalSegments];

  if (totalSegments)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5190], totalSegments);
  }

  v70 = v13;

  originalUUID = [optionsCopy originalUUID];
  if (originalUUID)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A4F70], originalUUID);
  }

  v27 = MEMORY[0x1E695DF90];
  v71 = optionsCopy;
  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
  v29 = [v27 dictionaryWithDictionary:dictionaryRepresentation];

  CFDictionarySetValue(v29, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  if (prefixedURI2)
  {
    CFDictionarySetValue(v29, @"IDSSendMessageOptionFromID", prefixedURI2);
  }

  v30 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v29, @"IDSSendMessageOptionWantsResponse", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v29, @"IDSSendMessageOptionWantsDeliveryStatus", v30);
  v31 = MEMORY[0x1E695DFD8];
  v101[0] = *MEMORY[0x1E69A5088];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
  v33 = [v31 setWithArray:v32];

  if (v33)
  {
    CFDictionarySetValue(v29, @"IDSSendMessageOptionRequireAllRegistrationProperties", v33);
  }

  v34 = +[IDSLogging _IDSService];
  v73 = v18;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    payload2 = [messageCopy payload];
    v36 = [payload2 debugDescription];
    encryptionProperties3 = [messageCopy encryptionProperties];
    segmentNumber2 = [encryptionProperties3 segmentNumber];
    [messageCopy encryptionProperties];
    v40 = v39 = prefixedURI2;
    totalSegments2 = [v40 totalSegments];
    *buf = 138413314;
    v92 = identifier;
    v93 = 2112;
    v94 = v76;
    v95 = 2112;
    v96 = v36;
    v97 = 2112;
    v98 = segmentNumber2;
    v99 = 2112;
    v100 = totalSegments2;
    _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendMessageLite with identifier: %@ destination: %@ - Message {pn: %@, tp: %@, p: %@}", buf, 0x34u);

    prefixedURI2 = v39;
    v18 = v73;
  }

  if ([(_IDSService *)self canSendMessageWithAccount:v18 toDestination:v76])
  {
    if (uniqueID)
    {
      v42 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v42)
      {
        v43 = v42;
        _internal2 = [v42 _internal];
        v90 = identifier;
        v89 = 0;
        [_internal2 sendMessage:theDict toDestinations:v76 priority:300 options:v29 identifier:&v90 error:&v89];
        v45 = v90;

        v46 = v89;
        identifier = v45;
        goto LABEL_33;
      }
    }

    v48 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v18 _internal];
      *buf = 138412290;
      v92 = _internal3;
      _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "sendMessageLite - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v43 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *buf = 138412290;
      v92 = accounts;
      _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "sendMessageLite - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v43 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      _internal5 = [v18 _internal];
      *buf = 138412290;
      v92 = _internal5;
      _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "sendMessageLite - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v46 = 0;
LABEL_33:

  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_195ACCF0C;
  v85[3] = &unk_1E743F1D8;
  v52 = completionCopy;
  v88 = v52;
  v53 = messageCopy;
  v86 = v53;
  v54 = identifier;
  v87 = v54;
  v55 = MEMORY[0x19A8BBEF0](v85);
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = sub_195ACCF98;
  v81[3] = &unk_1E7442320;
  v56 = v52;
  v84 = v56;
  v57 = v53;
  v82 = v57;
  v58 = v54;
  v83 = v58;
  v59 = MEMORY[0x19A8BBEF0](v81);
  if (!self->_completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;
  }

  if (v58)
  {
    v62 = self->_completionBlocksByRequestID;
    v63 = prefixedURI2;
    v64 = MEMORY[0x1E69A6128];
    v78 = v46;
    v80 = v57;
    v65 = v29;
    v66 = MEMORY[0x19A8BBEF0](v59);
    v67 = MEMORY[0x19A8BBEF0](v55);
    v68 = [v64 pairWithFirst:v66 second:v67];
    [(NSMutableDictionary *)v62 setObject:v68 forKey:v58];

    prefixedURI2 = v63;
    v29 = v65;
    v46 = v78;
    v57 = v80;
  }
}

- (void)sendServiceUpdateMessage:(id)message options:(id)options completion:(id)completion
{
  v84 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  optionsCopy = options;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(options) = [v10 assertQueueIsCurrent];

  if (options)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B298();
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  recipientURI = [messageCopy recipientURI];
  prefixedURI = [recipientURI prefixedURI];
  v15 = [v12 initWithObjects:{prefixedURI, 0}];

  senderURI = [messageCopy senderURI];
  prefixedURI2 = [senderURI prefixedURI];

  v18 = MEMORY[0x1E69A5240];
  if (prefixedURI2)
  {
    v19 = [v15 setByAddingObject:prefixedURI2];
    v20 = [v18 destinationWithDestinations:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E69A5240] destinationWithDestinations:v15];
  }

  v65 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v20 fromID:prefixedURI2];
  _internal = [v65 _internal];
  uniqueID = [_internal uniqueID];

  v22 = MEMORY[0x1E695DF90];
  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];

  v24 = [v22 dictionaryWithDictionary:dictionaryRepresentation];

  CFDictionarySetValue(v24, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  if (prefixedURI2)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionFromID", prefixedURI2);
  }

  v25 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v24, @"IDSSendMessageOptionSkipPayloadCheck", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionForceEncryptionOff", v25);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionWantsResponse", v25);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionWantsCertifiedDelivery", v25);
  v62 = v24;
  CFDictionarySetValue(v24, @"IDSSendMessageOptionCommand", &unk_1F0A299F0);
  v26 = +[IDSLogging _IDSService];
  v64 = v20;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    senderURI2 = [messageCopy senderURI];
    recipientURI2 = [messageCopy recipientURI];
    *buf = 138413058;
    v77 = v64;
    v78 = 2112;
    v79 = senderURI2;
    v80 = 2112;
    v81 = recipientURI2;
    v82 = 2048;
    preferredServiceType = [messageCopy preferredServiceType];
    _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage with destination: %@ - Message {senderURI: %@, recipientURI: %@, preferredServiceType: %ld}", buf, 0x2Au);

    v20 = v64;
  }

  if ([(_IDSService *)self canSendMessageWithAccount:v65 toDestination:v20])
  {
    if (uniqueID)
    {
      v29 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v29)
      {
        v30 = v29;
        _internal2 = [v29 _internal];
        v74 = 0;
        v75 = 0;
        [_internal2 sendMessage:0 toDestinations:v20 priority:300 options:v24 identifier:&v75 error:&v74];
        v32 = v75;
        v33 = v74;

        goto LABEL_23;
      }
    }

    v35 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v65 _internal];
      *buf = 138412290;
      v77 = _internal3;
      _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v30 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *buf = 138412290;
      v77 = accounts;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v30 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      _internal5 = [v65 _internal];
      *buf = 138412290;
      v77 = _internal5;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v32 = 0;
  v33 = 0;
LABEL_23:

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = sub_195ACD720;
  v70[3] = &unk_1E743F1D8;
  v39 = completionCopy;
  v73 = v39;
  v40 = messageCopy;
  v71 = v40;
  v41 = v32;
  v72 = v41;
  v42 = MEMORY[0x19A8BBEF0](v70);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_195ACD7AC;
  v66[3] = &unk_1E7442320;
  v43 = v39;
  v69 = v43;
  v44 = v40;
  v67 = v44;
  v45 = v41;
  v68 = v45;
  v46 = MEMORY[0x19A8BBEF0](v66);
  if (!self->_completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;
  }

  if (v45)
  {
    v49 = self->_completionBlocksByRequestID;
    v50 = MEMORY[0x1E69A6128];
    v59 = v43;
    v61 = v44;
    v51 = prefixedURI2;
    v52 = v15;
    v53 = MEMORY[0x19A8BBEF0](v46);
    v54 = MEMORY[0x19A8BBEF0](v42);
    v55 = v42;
    v56 = v33;
    v57 = v54;
    v58 = [v50 pairWithFirst:v53 second:v54];
    [(NSMutableDictionary *)v49 setObject:v58 forKey:v45];

    v33 = v56;
    v42 = v55;

    v15 = v52;
    prefixedURI2 = v51;
    v43 = v59;
    v44 = v61;
  }
}

- (void)sendServerMessage:(id)message options:(id)options completion:(id)completion
{
  v90 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(options) = [v10 assertQueueIsCurrent];

  if (options)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B338();
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  recipientURI = [messageCopy recipientURI];
  prefixedURI = [recipientURI prefixedURI];
  v15 = [v12 initWithObjects:{prefixedURI, 0}];

  senderURI = [messageCopy senderURI];
  prefixedURI2 = [senderURI prefixedURI];

  v18 = MEMORY[0x1E69A5240];
  if (prefixedURI2)
  {
    v19 = [v15 setByAddingObject:prefixedURI2];
    v20 = [v18 destinationWithDestinations:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E69A5240] destinationWithDestinations:v15];
  }

  v71 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v20 fromID:prefixedURI2];
  _internal = [v71 _internal];
  uniqueID = [_internal uniqueID];

  v22 = MEMORY[0x1E695DF90];
  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
  v24 = [v22 dictionaryWithDictionary:dictionaryRepresentation];

  topLevelFields = [messageCopy topLevelFields];

  if (topLevelFields)
  {
    topLevelFields2 = [messageCopy topLevelFields];
    [v24 addEntriesFromDictionary:topLevelFields2];
  }

  if (prefixedURI2)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionFromID", prefixedURI2);
  }

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "command")}];
  if (v27)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionCommand", v27);
  }

  v28 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v24, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionSkipPayloadCheck", v28);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionForceEncryptionOff", v28);
  v69 = v24;
  CFDictionarySetValue(v24, @"IDSSendMessageOptionWantsResponse", v28);
  v29 = +[IDSLogging _IDSService];
  v70 = v20;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    senderURI2 = [messageCopy senderURI];
    recipientURI2 = [messageCopy recipientURI];
    *buf = 138413058;
    v83 = v70;
    v84 = 2112;
    v85 = senderURI2;
    v86 = 2112;
    v87 = recipientURI2;
    v88 = 2048;
    command = [optionsCopy command];
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "sendServerMessage with destination: %@ - Message {senderURI: %@, recipientURI: %@, command: %ld}", buf, 0x2Au);

    v20 = v70;
  }

  v67 = prefixedURI2;
  if ([(_IDSService *)self canSendMessageWithAccount:v71 toDestination:v20])
  {
    if (uniqueID)
    {
      v32 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v32)
      {
        v33 = v32;
        _internal2 = [v32 _internal];
        v35 = v20;
        v36 = _internal2;
        v80 = 0;
        v81 = 0;
        [_internal2 sendMessage:0 toDestinations:v35 priority:300 options:v24 identifier:&v81 error:&v80];
        v37 = v81;
        v38 = v80;

        goto LABEL_27;
      }
    }

    v40 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v71 _internal];
      *buf = 138412290;
      v83 = _internal3;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "sendServerMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v33 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *buf = 138412290;
      v83 = accounts;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendServerMessage - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v33 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      _internal5 = [v71 _internal];
      *buf = 138412290;
      v83 = _internal5;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v37 = 0;
  v38 = 0;
LABEL_27:

  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_195ACDF8C;
  v76[3] = &unk_1E743F1D8;
  v44 = completionCopy;
  v79 = v44;
  v45 = messageCopy;
  v77 = v45;
  v46 = v37;
  v78 = v46;
  v47 = MEMORY[0x19A8BBEF0](v76);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_195ACE018;
  v72[3] = &unk_1E7442320;
  v48 = v44;
  v75 = v48;
  v49 = v45;
  v73 = v49;
  v50 = v46;
  v74 = v50;
  v51 = MEMORY[0x19A8BBEF0](v72);
  if (!self->_completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;
  }

  if (v50)
  {
    v54 = self->_completionBlocksByRequestID;
    v55 = MEMORY[0x1E69A6128];
    v66 = v38;
    v56 = MEMORY[0x19A8BBEF0](v51);
    v57 = MEMORY[0x19A8BBEF0](v47);
    v64 = v47;
    v58 = v48;
    v59 = v49;
    v60 = v15;
    v61 = optionsCopy;
    v62 = v57;
    v63 = [v55 pairWithFirst:v56 second:v57];
    [(NSMutableDictionary *)v54 setObject:v63 forKey:v50];

    v24 = v69;
    optionsCopy = v61;
    v15 = v60;
    v49 = v59;
    v48 = v58;
    v47 = v64;

    v38 = v66;
  }
}

- (BOOL)sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  v19 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v19 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B3D8();
    }
  }

  if (!self->_pretendingToBeFull)
  {
    priorityCopy = priority;
    v50 = messageCopy;
    v51 = optionsCopy;
    v49 = destinationsCopy;
    [MEMORY[0x1E69A5240] destinationWithDestinations:destinationsCopy];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = v56 = 0u;
    destinationURIs = [v52 destinationURIs];
    v24 = [destinationURIs countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
LABEL_9:
      v27 = 0;
      while (1)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v28 = *(*(&v53 + 1) + 8 * v27);
        if (![v28 _FZIDType])
        {
          serviceProperties = [(_IDSService *)self serviceProperties];
          wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

          if ((wantsPhoneNumberAccount & 1) == 0)
          {
            break;
          }
        }

        if (v25 == ++v27)
        {
          v25 = [destinationURIs countByEnumeratingWithState:&v53 objects:v67 count:16];
          if (v25)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      v37 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        serviceProperties2 = [(_IDSService *)self serviceProperties];
        identifier = [serviceProperties2 identifier];
        *buf = 138412546;
        v64 = v28;
        v65 = 2112;
        v66 = identifier;
        _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to %@ on service %@ since phone number accounts are disabled", buf, 0x16u);
      }

      destinationsCopy = v49;
      optionsCopy = v51;
      if (error)
      {
        v61 = *MEMORY[0x1E696A578];
        v62 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        uniqueID = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:uniqueID];
        *error = v22 = 0;
        v31 = accountCopy;
        goto LABEL_38;
      }

      v22 = 0;
      goto LABEL_39;
    }

LABEL_16:

    destinationURIs = [v51 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v31 = [(_IDSService *)self _sendingAccountForAccount:accountCopy destination:v52 fromID:destinationURIs];

    _internal = [v31 _internal];
    uniqueID = [_internal uniqueID];

    if ([(_IDSService *)self canSendMessageWithAccount:v31 toDestination:v52])
    {
      if (uniqueID)
      {
        v34 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:uniqueID];
        if (v34)
        {
          v35 = v34;
          _internal2 = [v34 _internal];
          v22 = [_internal2 sendMessage:v50 toDestinations:v52 priority:priorityCopy options:v51 identifier:identifier error:error];

          optionsCopy = v51;
          destinationsCopy = v49;
LABEL_36:

LABEL_38:
          accountCopy = v31;
LABEL_39:

          messageCopy = v50;
          goto LABEL_40;
        }
      }

      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [v31 _internal];
        *buf = 138412290;
        v64 = _internal3;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendMessage - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v44 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        _internal4 = [(IDSAccountController *)self->_accountController _internal];
        accounts = [_internal4 accounts];
        *buf = 138412290;
        v64 = accounts;
        _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendMessage - All accounts %@", buf, 0xCu);
      }

      destinationsCopy = v49;
      if (error)
      {
        v59 = *MEMORY[0x1E696A578];
        v60 = @"Could not find valid account";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v35];
        *error = v22 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v40 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [v31 _internal];
        *buf = 138412290;
        v64 = _internal5;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
      }

      destinationsCopy = v49;
      if (error)
      {
        v57 = *MEMORY[0x1E696A578];
        v58 = @"Destination device is not active for this account";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v35];
        *error = v22 = 0;
LABEL_35:
        optionsCopy = v51;
        goto LABEL_36;
      }
    }

    v22 = 0;
    optionsCopy = v51;
    goto LABEL_38;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:identifier];
  v22 = 1;
LABEL_40:

  return v22;
}

- (BOOL)cancelMessageWithOptions:(id)options identifier:(id *)identifier error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B478();
    }
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v13 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionQueueOneIdentifier"];

  if (v13)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v15 = stringGUID;
    if (identifier)
    {
      v16 = stringGUID;
      *identifier = v15;
    }

    pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    v18 = [(_IDSService *)self _sendingAccountForAccount:0];
    uniqueID = [v18 uniqueID];

    v20 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138413314;
      v25 = pushTopic;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = uniqueID;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "cancelMessageWithOptions { service: %@  fromID: %@  queueOneIdentifier: %@  guid: %@ accountUniqueID: %@ }", &v24, 0x34u);
    }

    daemonController = [(_IDSService *)self daemonController];
    [daemonController cancelMessageWithQueueOneIdentifier:v13 fromID:v12 service:pushTopic accountUniqueID:uniqueID messageIdentifier:v15];

    goto LABEL_13;
  }

  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"Cannot cancel message without a queue one identifier.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    *error = [v22 errorWithDomain:@"com.apple.identityservices.error" code:28 userInfo:v15];
LABEL_13:
  }

  return v13 != 0;
}

- (BOOL)cancelMessageWithOptions:(id)options destination:(id)destination identifier:(id *)identifier error:(id *)error
{
  v10 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  v12 = [v10 setWithObject:destination];
  LOBYTE(error) = [(_IDSService *)self cancelMessageWithOptions:optionsCopy destinations:v12 identifier:identifier error:error];

  return error;
}

- (BOOL)cancelMessageWithOptions:(id)options destinations:(id)destinations identifier:(id *)identifier error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  destinationsCopy = destinations;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B518();
    }
  }

  if (_os_feature_enabled_impl())
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v16 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionQueueOneIdentifier"];
    if (v16)
    {
      if (destinationsCopy && [destinationsCopy count])
      {
        pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
        if (v15)
        {
          v18 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionAlwaysIncludeSelfKey"];

          v19 = MEMORY[0x1E69A5240];
          if (v18)
          {
            v20 = [destinationsCopy setByAddingObject:v15];
            v21 = [v19 destinationWithDestinations:v20];

            v22 = v21;
            goto LABEL_21;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69A5240];
        }

        v22 = [v19 destinationWithDestinations:destinationsCopy];
LABEL_21:
        v39 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v22 fromID:v15];
        _internal = [v39 _internal];
        uniqueID = [_internal uniqueID];

        v29 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v45 = pushTopic;
          v46 = 2112;
          v47 = v15;
          v48 = 2112;
          v49 = v16;
          v50 = 2112;
          v51 = v22;
          _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "cancelMessageWithOptions { service: %@  fromID: %@  queueOneIdentifier: %@  idsDestination: %@ }", buf, 0x2Au);
        }

        v40 = v22;

        v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
        v31 = MEMORY[0x1E695E118];
        CFDictionarySetValue(v30, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionSkipPayloadCheck", v31);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionForceEncryptionOff", v31);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionCommand", &unk_1F0A29A08);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionWantsResponse", v31);
        v32 = uniqueID;
        if (uniqueID && ([(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:uniqueID], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v34 = v33;
          _internal2 = [v33 _internal];
          v23 = [_internal2 sendMessage:0 toDestinations:v40 priority:300 options:v30 identifier:identifier error:error];
        }

        else
        {
          if (!error)
          {
            v23 = 0;
            v37 = v40;
            goto LABEL_30;
          }

          v36 = MEMORY[0x1E696ABC0];
          v42 = *MEMORY[0x1E696A578];
          v43 = @"Could not find valid account to cancel message.";
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          [v36 errorWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v34];
          *error = v23 = 0;
        }

        v37 = v40;
        v32 = uniqueID;
LABEL_30:

        goto LABEL_31;
      }

      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A578];
        v53 = @"Cannot cancel message without a destination.";
        v25 = MEMORY[0x1E695DF20];
        v26 = &v53;
        v27 = &v52;
LABEL_17:
        pushTopic = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
        [v24 errorWithDomain:@"com.apple.identityservices.error" code:28 userInfo:pushTopic];
        *error = v23 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    else if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      v55[0] = @"Cannot cancel message without a queue one identifier.";
      v25 = MEMORY[0x1E695DF20];
      v26 = v55;
      v27 = &v54;
      goto LABEL_17;
    }

    v23 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v23 = [(_IDSService *)self cancelMessageWithOptions:optionsCopy identifier:identifier error:error];
LABEL_33:

  return v23;
}

- (BOOL)sendProtobuf:(id)protobuf fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v84 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v73 = _os_activity_create(&dword_1959FF000, "Framework Send Protobuf", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v73, &state);
  v15 = OSLogHandleForTransportCategory();
  selfCopy = self;
  v60 = accountCopy;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
    *buf = 138412290;
    v82 = v16;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState priority=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *identifier;
      *buf = 138412290;
      v82 = v18;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v19 = destinationsCopy;
  v20 = [v19 countByEnumeratingWithState:&v68 objects:v83 count:16];
  if (v20)
  {
    v21 = *v69;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v68 + 1) + 8 * i);
        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v23;
          _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "!setState destination=%@", buf, 0xCu);
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v68 objects:v83 count:16];
    }

    while (v20);
  }

  v25 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v25 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B5B8();
    }
  }

  if (!self->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:v19];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v63 = v65 = 0u;
    destinationURIs = [v63 destinationURIs];
    v30 = [destinationURIs countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (v30)
    {
      v31 = *v65;
LABEL_24:
      v32 = 0;
      while (1)
      {
        if (*v65 != v31)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v33 = *(*(&v64 + 1) + 8 * v32);
        if (![v33 _FZIDType])
        {
          serviceProperties = [(_IDSService *)selfCopy serviceProperties];
          wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

          if ((wantsPhoneNumberAccount & 1) == 0)
          {
            break;
          }
        }

        if (v30 == ++v32)
        {
          v30 = [destinationURIs countByEnumeratingWithState:&v64 objects:v80 count:16];
          if (v30)
          {
            goto LABEL_24;
          }

          goto LABEL_31;
        }
      }

      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        serviceProperties2 = [(_IDSService *)selfCopy serviceProperties];
        identifier = [serviceProperties2 identifier];
        *v76 = 138412546;
        v77 = v33;
        v78 = 2112;
        v79 = identifier;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Unable to send message to %@ on service %@ since phone number accounts are disabled", v76, 0x16u);
      }

      if (error)
      {
        v74 = *MEMORY[0x1E696A578];
        v75 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        uniqueID = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:uniqueID];
        *error = v28 = 0;
        goto LABEL_52;
      }

      v28 = 0;
      goto LABEL_53;
    }

LABEL_31:

    destinationURIs = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v36 = [(_IDSService *)selfCopy _sendingAccountForAccount:v60 destination:v63 fromID:destinationURIs];

    _internal = [v36 _internal];
    uniqueID = [_internal uniqueID];

    if ([(_IDSService *)selfCopy canSendMessageWithAccount:v36 toDestination:v63])
    {
      if (uniqueID)
      {
        v39 = [(NSMutableDictionary *)selfCopy->_uniqueIDToConnection objectForKey:uniqueID];
        v40 = v39;
        if (v39)
        {
          _internal2 = [v39 _internal];
          v28 = [_internal2 sendProtobuf:protobufCopy toDestinations:v63 priority:priority options:optionsCopy identifier:identifier error:error];
          goto LABEL_51;
        }
      }

      v49 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [v36 _internal];
        *v76 = 138412290;
        v77 = _internal3;
        _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Could not find connection for account %@", v76, 0xCu);
      }

      [(_IDSService *)selfCopy _logConnectionMap];
      v51 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        _internal4 = [(IDSAccountController *)selfCopy->_accountController _internal];
        accounts = [_internal4 accounts];
        *v76 = 138412290;
        v77 = accounts;
        _os_log_impl(&dword_1959FF000, v51, OS_LOG_TYPE_DEFAULT, "sendProtobuf - All accounts %@", v76, 0xCu);
      }

      v54 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v54 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v48 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v40];
    }

    else
    {
      v45 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [v36 _internal];
        *v76 = 138412290;
        v77 = _internal5;
        _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Unable to send protobuf to this destination from this account %@", v76, 0xCu);
      }

      v47 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v47 initWithObjectsAndKeys:{@"Destination device is not active for this account", *MEMORY[0x1E696A578], 0}];
      v48 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v40];
    }

    _internal2 = v48;
    if (error)
    {
      v55 = v48;
      v28 = 0;
      *error = _internal2;
    }

    else
    {
      v28 = 0;
    }

LABEL_51:

    v60 = v36;
LABEL_52:

LABEL_53:
    goto LABEL_54;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:identifier];
  v28 = 1;
LABEL_54:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v28;
}

- (void)_handlePretendingToBeFullWithIdentifier:(id *)identifier
{
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v6 = stringGUID;
  if (identifier)
  {
    v7 = stringGUID;
    *identifier = v6;
  }

  v8 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195ACF880;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 performBlock:v10];
}

- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v86 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v75 = _os_activity_create(&dword_1959FF000, "Framework Send Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v75, &state);
  v15 = OSLogHandleForTransportCategory();
  v63 = accountCopy;
  selfCopy = self;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    *buf = 138412290;
    v84 = serviceName;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState service=%@", buf, 0xCu);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
    *buf = 138412290;
    v84 = v18;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState priority=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *identifier;
      *buf = 138412290;
      v84 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v21 = destinationsCopy;
  v22 = [v21 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v22)
  {
    v23 = *v71;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v70 + 1) + 8 * i);
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v84 = v25;
          _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "!setState destination=%@", buf, 0xCu);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v22);
  }

  v27 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v27 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B608();
    }
  }

  if (!selfCopy->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:v21];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v65 = v67 = 0u;
    destinationURIs = [v65 destinationURIs];
    v32 = [destinationURIs countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v32)
    {
      v33 = *v67;
LABEL_26:
      v34 = 0;
      while (1)
      {
        if (*v67 != v33)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v35 = *(*(&v66 + 1) + 8 * v34);
        if (![v35 _FZIDType])
        {
          serviceProperties = [(_IDSService *)selfCopy serviceProperties];
          wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

          if ((wantsPhoneNumberAccount & 1) == 0)
          {
            break;
          }
        }

        if (v32 == ++v34)
        {
          v32 = [destinationURIs countByEnumeratingWithState:&v66 objects:v82 count:16];
          if (v32)
          {
            goto LABEL_26;
          }

          goto LABEL_33;
        }
      }

      v44 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        serviceProperties2 = [(_IDSService *)selfCopy serviceProperties];
        identifier = [serviceProperties2 identifier];
        *v78 = 138412546;
        v79 = v35;
        v80 = 2112;
        v81 = identifier;
        _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendData - Unable to send message to %@ on service %@ since phone number accounts are disabled", v78, 0x16u);
      }

      if (error)
      {
        v76 = *MEMORY[0x1E696A578];
        v77 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        uniqueID = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:uniqueID];
        *error = v30 = 0;
        goto LABEL_54;
      }

      v30 = 0;
      goto LABEL_55;
    }

LABEL_33:

    destinationURIs = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v38 = [(_IDSService *)selfCopy _sendingAccountForAccount:v63 destination:v65 fromID:destinationURIs];

    _internal = [v38 _internal];
    uniqueID = [_internal uniqueID];

    if ([(_IDSService *)selfCopy canSendMessageWithAccount:v38 toDestination:v65])
    {
      if (uniqueID)
      {
        v41 = [(NSMutableDictionary *)selfCopy->_uniqueIDToConnection objectForKey:uniqueID];
        v42 = v41;
        if (v41)
        {
          _internal2 = [v41 _internal];
          v30 = [_internal2 sendData:dataCopy toDestinations:v65 priority:priority options:optionsCopy identifier:identifier error:error];
          goto LABEL_53;
        }
      }

      v51 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [v38 _internal];
        *v78 = 138412290;
        v79 = _internal3;
        _os_log_impl(&dword_1959FF000, v51, OS_LOG_TYPE_DEFAULT, "sendData - Could not find connection for account %@", v78, 0xCu);
      }

      [(_IDSService *)selfCopy _logConnectionMap];
      v53 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        _internal4 = [(IDSAccountController *)selfCopy->_accountController _internal];
        accounts = [_internal4 accounts];
        *v78 = 138412290;
        v79 = accounts;
        _os_log_impl(&dword_1959FF000, v53, OS_LOG_TYPE_DEFAULT, "sendData - All accounts %@", v78, 0xCu);
      }

      v56 = objc_alloc(MEMORY[0x1E695DF20]);
      v42 = [v56 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v50 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v42];
    }

    else
    {
      v47 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [v38 _internal];
        *v78 = 138412290;
        v79 = _internal5;
        _os_log_impl(&dword_1959FF000, v47, OS_LOG_TYPE_DEFAULT, "sendData - Unable to send data to this destination from this account %@", v78, 0xCu);
      }

      v49 = objc_alloc(MEMORY[0x1E695DF20]);
      v42 = [v49 initWithObjectsAndKeys:{@"Destination device is not active for this account", *MEMORY[0x1E696A578], 0}];
      v50 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v42];
    }

    _internal2 = v50;
    if (error)
    {
      v57 = v50;
      v30 = 0;
      *error = _internal2;
    }

    else
    {
      v30 = 0;
    }

LABEL_53:

    v63 = v38;
LABEL_54:

LABEL_55:
    goto LABEL_56;
  }

  [(_IDSService *)selfCopy _handlePretendingToBeFullWithIdentifier:identifier];
  v30 = 1;
LABEL_56:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v30;
}

- (BOOL)sendAccessoryData:(id)data toAccessoryID:(id)d accessToken:(id)token options:(id)options identifier:(id *)identifier error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  tokenCopy = token;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v47 = _os_activity_create(&dword_1959FF000, "Framework Send Accessory Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v47, &state);
  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = dCopy;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState accessoryID=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *identifier;
      *buf = 138412290;
      v51 = v17;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v18 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v18 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B658();
    }
  }

  v21 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v48 = 0;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Sending AccessoryData Now", v48, 2u);
  }

  v22 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v23 = [(_IDSService *)self _sendingAccountForAccount:0 destination:0 fromID:v22];
  v42 = v22;
  _internal = [v23 _internal];
  uniqueID = [_internal uniqueID];

  if (uniqueID)
  {
    v26 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
  }

  else
  {
    v26 = 0;
  }

  v27 = IDSCopyIDForAccessory();

  v28 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
  [v28 setObject:tokenCopy forKey:@"IDSSendMessageOptionAccessToken"];
  [v28 setObject:MEMORY[0x1E695E118] forKey:@"IDSSendMessageOptionHomeKitMessage"];
  [v28 setObject:MEMORY[0x1E695E118] forKey:@"IDSSendMessageOptionDisableAliasValidation"];
  v29 = v28;

  v30 = [MEMORY[0x1E695DFD8] setWithObject:v27];
  v31 = [MEMORY[0x1E69A5240] destinationWithDestinations:v30];
  if (v26)
  {
    _internal2 = [v26 _internal];
    v33 = [_internal2 sendData:dataCopy toDestinations:v31 priority:300 options:v29 identifier:identifier error:error];
  }

  else
  {
    v34 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v23 _internal];
      *v48 = 138412290;
      v49 = _internal3;
      _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendAccessoryData - Could not find connection for account %@", v48, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *v48 = 138412290;
      v49 = accounts;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendAccessoryData - All accounts %@", v48, 0xCu);
    }

    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    _internal2 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
    v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:_internal2];
    if (error)
    {
      v40 = v40;
      *error = v40;
    }

    v33 = 0;
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v33;
}

- (BOOL)sendInvitation:(id)invitation fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v14 = MEMORY[0x1E69A5240];
  v15 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  accountCopy = account;
  v18 = [v15 setWithObject:destination];
  v19 = [v14 destinationWithDestinations:v18];

  v20 = [optionsCopy mutableCopy];
  if ([invitationCopy state] != 1)
  {
    selfHandle = [invitationCopy selfHandle];

    if (selfHandle)
    {
      selfHandle2 = [invitationCopy selfHandle];
      _stripFZIDPrefix = [selfHandle2 _stripFZIDPrefix];
      _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

      [v20 setObject:_bestGuessURI forKey:@"IDSSendMessageOptionFromID"];
      v25 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = _bestGuessURI;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - overriding fromID to %@", buf, 0xCu);
      }
    }
  }

  v26 = [v20 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v27 = [(_IDSService *)self _sendingAccountForAccount:accountCopy destination:v19 fromID:v26];

  _internal = [v27 _internal];
  uniqueID = [_internal uniqueID];

  if (!uniqueID)
  {
    if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) != 0)
    {
LABEL_13:
      v34 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        _internal2 = [v27 _internal];
        *buf = 138412290;
        v48 = _internal2;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendInvitation - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v36 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [(IDSAccountController *)self->_accountController _internal];
        accounts = [_internal3 accounts];
        *buf = 138412290;
        v48 = accounts;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendInvitation - All accounts %@", buf, 0xCu);
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v30];
      _internal4 = v40;
      if (error)
      {
        v41 = v40;
        v33 = 0;
        *error = _internal4;
        goto LABEL_26;
      }

LABEL_25:
      v33 = 0;
      goto LABEL_26;
    }

    v30 = 0;
LABEL_20:
    v42 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendInvitation - Service is not enabled for Invitations", buf, 2u);
    }

    v43 = objc_alloc(MEMORY[0x1E695DF20]);
    _internal4 = [v43 initWithObjectsAndKeys:{@"Service is not enabled for Invitations", *MEMORY[0x1E696A578], 0}];
    v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:53 userInfo:_internal4];
    if (error)
    {
      v44 = v44;
      *error = v44;
    }

    goto LABEL_25;
  }

  v30 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
  if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v30)
  {
    goto LABEL_13;
  }

  v31 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = invitationCopy;
    v49 = 2112;
    v50 = v20;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "sendInvitation - Attempting to send invitation: %@ with options %@", buf, 0x16u);
  }

  _internal4 = [v30 _internal];
  v33 = [_internal4 sendInvitation:invitationCopy toDestination:v19 priority:300 options:v20 identifier:identifier error:error];
LABEL_26:

  return v33;
}

- (BOOL)sendInvitationUpdate:(id)update fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v14 = MEMORY[0x1E69A5240];
  v15 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  accountCopy = account;
  v18 = [v15 setWithObject:destination];
  v19 = [v14 destinationWithDestinations:v18];

  v20 = [optionsCopy mutableCopy];
  if ([updateCopy state] != 1)
  {
    selfHandle = [updateCopy selfHandle];

    if (selfHandle)
    {
      selfHandle2 = [updateCopy selfHandle];
      _stripFZIDPrefix = [selfHandle2 _stripFZIDPrefix];
      _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

      [v20 setObject:_bestGuessURI forKey:@"IDSSendMessageOptionFromID"];
      v25 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = _bestGuessURI;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - overriding fromID to %@", buf, 0xCu);
      }
    }
  }

  v26 = [v20 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v27 = [(_IDSService *)self _sendingAccountForAccount:accountCopy destination:v19 fromID:v26];

  _internal = [v27 _internal];
  uniqueID = [_internal uniqueID];

  if (!uniqueID)
  {
    if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) != 0)
    {
LABEL_13:
      v34 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        _internal2 = [v27 _internal];
        *buf = 138412290;
        v48 = _internal2;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v36 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [(IDSAccountController *)self->_accountController _internal];
        accounts = [_internal3 accounts];
        *buf = 138412290;
        v48 = accounts;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - All accounts %@", buf, 0xCu);
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v30];
      _internal4 = v40;
      if (error)
      {
        v41 = v40;
        v33 = 0;
        *error = _internal4;
        goto LABEL_26;
      }

LABEL_25:
      v33 = 0;
      goto LABEL_26;
    }

    v30 = 0;
LABEL_20:
    v42 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Service is not enabled for Invitations", buf, 2u);
    }

    v43 = objc_alloc(MEMORY[0x1E695DF20]);
    _internal4 = [v43 initWithObjectsAndKeys:{@"Service is not enabled for Invitations", *MEMORY[0x1E696A578], 0}];
    v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:53 userInfo:_internal4];
    if (error)
    {
      v44 = v44;
      *error = v44;
    }

    goto LABEL_25;
  }

  v30 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
  if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v30)
  {
    goto LABEL_13;
  }

  v31 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = updateCopy;
    v49 = 2112;
    v50 = v20;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Attempting to send invitation: %@ with options %@", buf, 0x16u);
  }

  _internal4 = [v30 _internal];
  v33 = [_internal4 sendInvitationUpdate:updateCopy toDestination:v19 priority:300 options:v20 identifier:identifier error:error];
LABEL_26:

  return v33;
}

- (BOOL)setWakingPushPriority:(int64_t)priority error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    *buf = 134218242;
    priorityCopy = priority;
    v20 = 2112;
    v21 = pushTopic;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Setting waking priority %ld on topic %@", buf, 0x16u);
  }

  valid = _IDSIsValidWakingPushPriority();
  if (valid)
  {
    daemonController = [(_IDSService *)self daemonController];
    pushTopic2 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    [daemonController setWakingPushPriority:priority forTopic:pushTopic2];
  }

  else
  {
    v12 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B6A8();
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Invalid priority";
    daemonController = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:56 userInfo:daemonController];
    pushTopic2 = v13;
    if (error)
    {
      v14 = v13;
      *error = pushTopic2;
    }
  }

  return valid;
}

- (BOOL)sendData:(id)data priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v7 = [IDSInternalQueueController sharedInstance:data];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B6DC();
    }
  }

  return 0;
}

- (BOOL)sendServerMessage:(id)message command:(id)command fromAccount:(id)account
{
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  commandCopy = command;
  accountCopy = account;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B77C();
    }
  }

  v14 = [(_IDSService *)self _sendingAccountForAccount:accountCopy];

  _internal = [v14 _internal];
  uniqueID = [_internal uniqueID];

  if (uniqueID && ([(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    _internal2 = [v17 _internal];
    v20 = [_internal2 sendServerMessage:messageCopy command:commandCopy];
  }

  else
  {
    v21 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v14 _internal];
      v26 = 138412290;
      v27 = _internal3;
      _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "sendServerMessage - Could not find connection for account %@", &v26, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v18 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      v26 = 138412290;
      v27 = accounts;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "sendServerMessage - All accounts %@", &v26, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (BOOL)cancelIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B81C();
    }
  }

  v10 = [identifierCopy length];
  if (v10)
  {
    if (error)
    {
      *error = 0;
    }

    daemonController = [(_IDSService *)self daemonController];
    _internal = [(IDSAccountController *)self->_accountController _internal];
    serviceName = [_internal serviceName];
    [daemonController cancelItemWithIdentifier:identifierCopy service:serviceName];
  }

  return v10 != 0;
}

- (BOOL)getProgressUpdateForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B8BC();
    }
  }

  v10 = [identifierCopy length];
  if (v10)
  {
    if (error)
    {
      *error = 0;
    }

    daemonController = [(_IDSService *)self daemonController];
    _internal = [(IDSAccountController *)self->_accountController _internal];
    serviceName = [_internal serviceName];
    [daemonController getProgressUpdateForIdentifier:identifierCopy service:serviceName];

    if (identifierCopy)
    {
      currentProgress = [MEMORY[0x1E696AE38] currentProgress];

      if (currentProgress)
      {
        if (!self->_uniqueIDToProgress)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          uniqueIDToProgress = self->_uniqueIDToProgress;
          self->_uniqueIDToProgress = Mutable;
        }

        v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
        [(NSMutableDictionary *)self->_uniqueIDToProgress setObject:v17 forKeyedSubscript:identifierCopy];
      }
    }
  }

  return v10 != 0;
}

- (id)uriForFromID:(id)d
{
  dCopy = d;
  v4 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v4 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B95C();
    }
  }

  if (dCopy && ([dCopy isEqualToString:*MEMORY[0x1E69A4B50]] & 1) == 0)
  {
    v7 = [dCopy _stripPotentialTokenURIWithToken:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceForFromID:(id)d fromDevices:(id)devices
{
  v65 = *MEMORY[0x1E69E9840];
  dCopy = d;
  devicesCopy = devices;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B9FC();
    }
  }

  if (dCopy)
  {
    if ([dCopy isEqualToString:*MEMORY[0x1E69A4B50]])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      _stripFZIDPrefix = devicesCopy;
      v11 = [_stripFZIDPrefix countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v53;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v53 != v13)
            {
              objc_enumerationMutation(_stripFZIDPrefix);
            }

            v15 = *(*(&v52 + 1) + 8 * i);
            _internal = [v15 _internal];
            isDefaultPairedDevice = [_internal isDefaultPairedDevice];

            if (isDefaultPairedDevice)
            {
              v29 = v15;
              goto LABEL_49;
            }
          }

          v12 = [_stripFZIDPrefix countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    if ([dCopy containsString:@"device:"])
    {
      v18 = dCopy;
      _stripFZIDPrefix = [dCopy _stripFZIDPrefix];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v19 = devicesCopy;
      v20 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v49;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v49 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v48 + 1) + 8 * j);
            uniqueIDOverride = [v24 uniqueIDOverride];
            v26 = [uniqueIDOverride isEqualToIgnoringCase:_stripFZIDPrefix];

            if (v26)
            {
              v29 = v24;

              dCopy = v18;
              goto LABEL_49;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      dCopy = v18;
    }

    v47 = 0;
    v27 = [dCopy _stripPotentialTokenURIWithToken:&v47];
    _stripFZIDPrefix = v47;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v58 = dCopy;
      v59 = 2112;
      v60 = v27;
      v61 = 2112;
      v62 = _stripFZIDPrefix;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_INFO, "FromID %@, strippedURI %@, token %@", buf, 0x20u);
    }

    v29 = 0;
    if (_stripFZIDPrefix && v27)
    {
      v40 = dCopy;
      v41 = v27;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = devicesCopy;
      registration3 = devicesCopy;
      v31 = [registration3 countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v44;
        while (2)
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v44 != v33)
            {
              objc_enumerationMutation(registration3);
            }

            v35 = *(*(&v43 + 1) + 8 * k);
            _internal2 = [v35 _internal];
            pushToken = [_internal2 pushToken];

            registration2 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v58 = pushToken;
              v59 = 2112;
              v60 = _stripFZIDPrefix;
              _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "Comparing device token %@ to token %@", buf, 0x16u);
            }

            if ([pushToken isEqualToData:_stripFZIDPrefix])
            {
              v29 = v35;

              goto LABEL_47;
            }
          }

          v32 = [registration3 countByEnumeratingWithState:&v43 objects:v56 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = _stripFZIDPrefix;
        _os_log_impl(&dword_1959FF000, registration3, OS_LOG_TYPE_DEFAULT, "Did not find a device matching the token %@", buf, 0xCu);
      }

      v29 = 0;
LABEL_47:
      v27 = v41;
      devicesCopy = v42;
      dCopy = v40;
    }

LABEL_49:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)deviceForFromID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BA9C();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  accounts = [(_IDSService *)self accounts];
  v10 = [accounts countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        _internal = [v14 _internal];
        devices = [_internal devices];

        v17 = [devices countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v24;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(devices);
              }

              [v8 addObject:*(*(&v23 + 1) + 8 * j)];
            }

            v18 = [devices countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v18);
        }
      }

      v11 = [accounts countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = [_IDSService deviceForFromID:dCopy fromDevices:v8];

  return v21;
}

- (id)linkedDeviceForFromID:(id)d withRelationship:(int64_t)relationship
{
  dCopy = d;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BB3C();
    }
  }

  v10 = [(_IDSService *)self linkedDevicesWithRelationship:relationship];
  v11 = [_IDSService deviceForFromID:dCopy fromDevices:v10];

  return v11;
}

- (id)firstRoutableInternetDestinationForSelf
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  accounts = [(_IDSService *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if ([v7 accountType] == 1 || !objc_msgSend(v7, "accountType"))
        {
          pushToken = [v7 pushToken];

          if (pushToken)
          {
            loginID = [v7 loginID];
            _appearsToBeEmail = [loginID _appearsToBeEmail];
            loginID2 = [v7 loginID];
            v13 = loginID2;
            if (_appearsToBeEmail)
            {
              v14 = IDSCopyIDForEmailAddress(loginID2);
            }

            else
            {
              v14 = IDSCopyIDForPhoneNumber(loginID2);
            }

            v15 = v14;

            pushToken2 = [v7 pushToken];
            v9 = IDSCopyIDForTokenWithID();

            goto LABEL_16;
          }
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (id)devicesForBTUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BBDC();
    }
  }

  if (dCopy)
  {
    v8 = [(_IDSService *)self linkedDevicesWithRelationship:3];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          nsuuid = [v14 nsuuid];
          v16 = [nsuuid isEqual:dCopy];

          if (v16)
          {
            if (!v11)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v11 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)deviceForUniqueID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BC7C();
    }
  }

  if (dCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    devices = [(_IDSService *)self devices];
    v9 = [devices countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(devices);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          uniqueID = [v13 uniqueID];
          if ([uniqueID isEqualToIgnoringCase:dCopy])
          {

LABEL_19:
            v17 = v13;
            goto LABEL_20;
          }

          uniqueIDOverride = [v13 uniqueIDOverride];
          v16 = [uniqueIDOverride isEqualToIgnoringCase:dCopy];

          if (v16)
          {
            goto LABEL_19;
          }
        }

        v10 = [devices countByEnumeratingWithState:&v19 objects:v23 count:16];
        v17 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_20:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setPreferInfraWiFi:(BOOL)fi
{
  fiCopy = fi;
  v15 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BD1C();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (fiCopy)
    {
      v9 = @"YES";
    }

    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "setPreferInfraWiFi: %@", &v13, 0xCu);
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController setPreferInfraWiFi:fiCopy service:serviceName];
}

- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)changed
{
  changedCopy = changed;
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BDBC();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (changedCopy)
    {
      v9 = @"YES";
    }

    v13 = 136315394;
    v14 = "[_IDSService setNeedsLaunchOnNearbyDevicesChanged:]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v13, 0x16u);
  }

  serviceProperties = [(_IDSService *)self serviceProperties];
  allowLaunchOnNearbyDevicesChanged = [serviceProperties allowLaunchOnNearbyDevicesChanged];

  if (allowLaunchOnNearbyDevicesChanged)
  {
    serviceProperties2 = [(_IDSService *)self serviceProperties];
    [serviceProperties2 setNeedsLaunchOnNearbyDevicesChanged:changedCopy];
  }

  else
  {
    serviceProperties2 = [MEMORY[0x1E69A60E0] daemon];
    if (os_log_type_enabled(serviceProperties2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BE5C();
    }
  }
}

- (BOOL)needsLaunchOnNearbyDevicesChanged
{
  serviceProperties = [(_IDSService *)self serviceProperties];
  needsLaunchOnNearbyDevicesChanged = [serviceProperties needsLaunchOnNearbyDevicesChanged];

  return needsLaunchOnNearbyDevicesChanged;
}

- (void)setLinkPreferences:(id)preferences
{
  v18 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BEDC();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = preferencesCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "setLinkPreferences: %{public}@", &v16, 0xCu);
  }

  v9 = [preferencesCopy objectForKey:@"LinkType"];
  v10 = [preferencesCopy objectForKey:@"PacketsPerSecond"];
  v11 = [preferencesCopy objectForKey:@"InputBytesPerSecond"];
  v12 = [preferencesCopy objectForKey:@"OutputBytesPerSecond"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    daemonController = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(daemonController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1959FF000, daemonController, OS_LOG_TYPE_DEFAULT, "Received invalid link preferences", &v16, 2u);
    }
  }

  else
  {
    daemonController = [(_IDSService *)self daemonController];
    _internal = [(IDSAccountController *)self->_accountController _internal];
    serviceName = [_internal serviceName];
    [daemonController setLinkPreferences:preferencesCopy service:serviceName];
  }
}

- (void)startOTRTest:(int64_t)test
{
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BF7C();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "forceOTRNegotiation", v12, 2u);
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController startOTRTest:serviceName priority:test];
}

- (void)testCloudQRConnection
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C01C();
    }
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController testCloudQRConnection:serviceName];
}

- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)self0
{
  v120 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v105 = _os_activity_create(&dword_1959FF000, "Framework Send Resource At URL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v105, &state);
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v110 = lCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "!setState ResourceURL=%@", buf, 0xCu);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    *buf = 138412290;
    v110 = serviceName;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState serviceName=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *identifier;
      *buf = 138412290;
      v110 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  if (!self->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:destinationsCopy];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v94 = v101 = 0u;
    destinationURIs = [v94 destinationURIs];
    v23 = [destinationURIs countByEnumeratingWithState:&v100 objects:v119 count:16];
    if (v23)
    {
      v24 = *v101;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v101 != v24)
          {
            objc_enumerationMutation(destinationURIs);
          }

          v26 = *(*(&v100 + 1) + 8 * i);
          if (![v26 _FZIDType])
          {
            serviceProperties = [(_IDSService *)self serviceProperties];
            wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

            if ((wantsPhoneNumberAccount & 1) == 0)
            {
              v48 = +[IDSLogging _IDSService];
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                serviceProperties2 = [(_IDSService *)self serviceProperties];
                identifier = [serviceProperties2 identifier];
                *buf = 138412546;
                v110 = v26;
                v111 = 2112;
                v112 = identifier;
                _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - Unable to send message to %@ on service %@ since phone number accounts are disabled", buf, 0x16u);
              }

              if (error)
              {
                v117 = *MEMORY[0x1E696A578];
                v118 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
                v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
                *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:v51];
              }

              goto LABEL_37;
            }
          }
        }

        v23 = [destinationURIs countByEnumeratingWithState:&v100 objects:v119 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    if (([lCopy isFileURL] & 1) == 0)
    {
      v52 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v110 = lCopy;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - resourceURL not a file %@", buf, 0xCu);
      }

      v53 = objc_alloc(MEMORY[0x1E695DF20]);
      destinationURIs = [v53 initWithObjectsAndKeys:{@"Sending non-file resource unsupported", *MEMORY[0x1E696A578], 0}];
      if (error)
      {
        v21 = 0;
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:28 userInfo:destinationURIs];
      }

      else
      {
LABEL_37:
        v21 = 0;
      }

      goto LABEL_89;
    }

    destinationURIs = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
    v91 = NSTemporaryDirectory();
    v29 = lCopy;
    path = [v29 path];
    lastPathComponent = [v29 lastPathComponent];

    v31 = [v91 stringByAppendingString:lastPathComponent];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v108 = 0;
    v90 = [defaultManager attributesOfItemAtPath:v31 error:&v108];
    v89 = v108;

    if (v90)
    {
      v33 = [(__CFString *)v31 stringByAppendingString:@".XXXX"];

      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v33);
      v35 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
      if (!v35)
      {
        v54 = +[IDSTransportLog IDSService];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v110 = MaximumSizeOfFileSystemRepresentation;
          _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - can't allocate %ld bytes for new file path", buf, 0xCu);
        }

        v92 = 0;
        goto LABEL_45;
      }

      [(__CFString *)v33 getFileSystemRepresentation:v35 maxLength:MaximumSizeOfFileSystemRepresentation];
      mktemp(v35);
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v31 = [defaultManager2 stringWithFileSystemRepresentation:v35 length:strlen(v35)];

      free(v35);
    }

    v37 = path;
    v38 = [path cStringUsingEncoding:4];
    v39 = v31;
    LODWORD(v38) = clonefile(v38, [(__CFString *)v31 cStringUsingEncoding:4], 0);
    v40 = __error();
    if ((v38 & 0x80000000) != 0)
    {
      v41 = *v40;
      v42 = +[IDSTransportLog IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v110 = path;
        v111 = 2112;
        v112 = v31;
        v113 = 1024;
        LODWORD(v114) = v41;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - failed to clone file %@ => %@ (error %d). Will try hard link.", buf, 0x1Cu);
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v107 = 0;
      v44 = [defaultManager3 linkItemAtPath:path toPath:v31 error:&v107];
      v89 = v107;

      if ((v44 & 1) == 0)
      {

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        v106 = 0;
        v46 = [defaultManager4 copyItemAtPath:path toPath:v31 error:&v106];
        v89 = v106;

        if ((v46 & 1) == 0)
        {
          v47 = +[IDSTransportLog IDSService];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v110 = path;
            v111 = 2112;
            v112 = v31;
            v113 = 2112;
            v114 = v89;
            _os_log_impl(&dword_1959FF000, v47, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - failed to link and failed to copy file %@ => %@ (error %@)", buf, 0x20u);
          }

          v31 = 0;
        }
      }
    }

    v33 = v31;
    v92 = v33;
LABEL_45:

    v55 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = NSTemporaryDirectory();
      v57 = v29;
      fileSystemRepresentation = [v29 fileSystemRepresentation];
      *buf = 138413058;
      v110 = v29;
      v111 = 2112;
      v112 = v56;
      v113 = 2080;
      v114 = fileSystemRepresentation;
      v115 = 2112;
      v116 = v92;
      _os_log_impl(&dword_1959FF000, v55, OS_LOG_TYPE_DEFAULT, "Attempted to link or copy file %@ destination %@ (%s to %@)", buf, 0x2Au);
    }

    if ([(__CFString *)v92 length])
    {
      v59 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        isFileURL = [v29 isFileURL];
        v61 = [destinationURIs objectForKey:@"IDSSendMessageOptionLocalDelivery"];
        v62 = v61;
        v63 = @"NO";
        *buf = 138412802;
        v110 = v29;
        v111 = 2112;
        if (isFileURL)
        {
          v63 = @"YES";
        }

        v112 = v63;
        v113 = 2112;
        v114 = v61;
        _os_log_impl(&dword_1959FF000, v59, OS_LOG_TYPE_INFO, "sendResourceAtURL - resourceURL %@  isFileURL %@  localDelivery %@", buf, 0x20u);
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v65 = v92;
      if (v65)
      {
        CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EB8], v65);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B3C0BC();
      }

      v68 = metadataCopy;
      if (v68)
      {
        CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4E98], v68);
      }

      absoluteString = [v29 absoluteString];
      if (absoluteString)
      {
        CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EA8], absoluteString);
      }

      v70 = v65;
      [(__CFString *)v65 UTF8String];
      v71 = sandbox_extension_issue_file();
      if (v71)
      {
        v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v71];
        if (v72)
        {
          CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EB0], v72);
        }

        free(v71);
      }

      else
      {
        v73 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = v65;
          _os_log_impl(&dword_1959FF000, v73, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for linked/copied file [%@]", buf, 0xCu);
        }
      }

      path2 = [v29 path];
      v75 = path2;
      [path2 UTF8String];
      v76 = sandbox_extension_issue_file();

      if (v76)
      {
        v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
        if (v77)
        {
          CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EA0], v77);
        }

        free(v76);
      }

      else
      {
        v78 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = v29;
          _os_log_impl(&dword_1959FF000, v78, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for original file [%@]", buf, 0xCu);
        }
      }

      v21 = [(_IDSService *)self sendMessage:dictionary fromAccount:accountCopy toDestinations:destinationsCopy priority:priority options:destinationURIs identifier:identifier error:error];
      v79 = !v21;
      if (!identifier)
      {
        v79 = 1;
      }

      if ((v79 & 1) == 0)
      {
        if (*identifier)
        {
          currentProgress = [MEMORY[0x1E696AE38] currentProgress];
          v81 = currentProgress == 0;

          if (!v81)
          {
            v82 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsProgress"];

            if (v82)
            {
              v83 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionWantsProgress"];
              v84 = v83 == 0;

              if (!v84)
              {
                if (!self->_uniqueIDToProgress)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  uniqueIDToProgress = self->_uniqueIDToProgress;
                  self->_uniqueIDToProgress = Mutable;
                }

                v87 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
                [(NSMutableDictionary *)self->_uniqueIDToProgress setObject:v87 forKeyedSubscript:*identifier];
              }
            }
          }
        }
      }
    }

    else
    {
      v66 = +[IDSTransportLog IDSService];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v110 = v29;
        _os_log_impl(&dword_1959FF000, v66, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - unable to link or copy file %@", buf, 0xCu);
      }

      v67 = objc_alloc(MEMORY[0x1E695DF20]);
      dictionary = [v67 initWithObjectsAndKeys:{@"Unable to link or copy file", *MEMORY[0x1E696A578], 0}];
      v21 = 0;
      if (error)
      {
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:dictionary];
      }
    }

LABEL_89:
    goto LABEL_90;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:identifier];
  v21 = 1;
LABEL_90:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v21;
}

- (BOOL)sendAheadGroup:(id)group priority:(int64_t)priority options:(id)options identifier:(id *)identifier completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  optionsCopy = options;
  completionCopy = completion;
  v15 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v15 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C158();
    }
  }

  groupCrypto = [MEMORY[0x1E69A5270] groupCrypto];
  if (os_log_type_enabled(groupCrypto, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [groupCopy groupID];
    *buf = 138543362;
    v32 = groupID;
    _os_log_impl(&dword_1959FF000, groupCrypto, OS_LOG_TYPE_DEFAULT, "Sending Ahead group {groupID: %{public}@}", buf, 0xCu);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_195AD41A0;
  v24[3] = &unk_1E7442370;
  v25 = optionsCopy;
  selfCopy = self;
  v27 = groupCopy;
  v28 = completionCopy;
  priorityCopy = priority;
  identifierCopy = identifier;
  v20 = groupCopy;
  v21 = optionsCopy;
  v22 = completionCopy;
  [(_IDSService *)self performGroupTask:v24];

  return 1;
}

- (BOOL)reportSpamMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C298();
    }
  }

  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];

  if (identifier)
  {
    v10 = [messageCopy objectForKey:*MEMORY[0x1E69A5468]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      if (unsignedIntegerValue == 1)
      {
        v16 = [messageCopy objectForKeyedSubscript:*MEMORY[0x1E69A5460]];

        if (v16)
        {
          goto LABEL_10;
        }

        daemonController = +[IDSLogging _IDSService];
        if (os_log_type_enabled(daemonController, OS_LOG_TYPE_ERROR))
        {
          sub_195B3C338();
        }

        goto LABEL_16;
      }

      if (unsignedIntegerValue)
      {
LABEL_10:
        daemonController = [(_IDSService *)self daemonController];
        [daemonController reportSpamMessage:messageCopy serviceIdentifier:identifier];
        v14 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = [messageCopy objectForKeyedSubscript:*MEMORY[0x1E69A5488]];

    if (v12)
    {
      goto LABEL_10;
    }

    daemonController = +[IDSLogging _IDSService];
    if (os_log_type_enabled(daemonController, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C36C();
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C3A0();
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (void)sendAckForMessageWithContext:(id)context
{
  v42 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C3D4();
    }
  }

  if (self->_manuallyAckMessages)
  {
    storageGuid = [contextCopy storageGuid];
    v9 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = storageGuid;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Received call made to manually ack a message using storageGuid: %@", buf, 0xCu);
    }

    v37 = [(_IDSService *)self _sendingAccountForAccount:0];
    _internal = [v37 _internal];
    uniqueID = [_internal uniqueID];

    if (uniqueID)
    {
      v12 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
    }

    else
    {
      v12 = 0;
    }

    wantsAppAck = [contextCopy wantsAppAck];
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    fromID = [contextCopy fromID];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v15 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v17 = v16;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      v20 = [v15 numberWithDouble:v17 - v19];

      if (!wantsAppAck)
      {
LABEL_16:
        if (storageGuid | v20)
        {
          daemonController = [(_IDSService *)self daemonController];
          _internal2 = [v12 _internal];
          account = [_internal2 account];
          [account _internal];
          v29 = v36 = uniqueID;
          [v29 uniqueID];
          v31 = v30 = v12;
          priority = [contextCopy priority];
          [daemonController acknowledgeMessageWithStorageGUID:storageGuid realGUID:outgoingResponseIdentifier forAccountWithUniqueID:v31 broadcastTime:v20 messageSize:0 priority:priority broadcastID:objc_msgSend(contextCopy connectionType:{"broadcastID"), objc_msgSend(contextCopy, "connectionType")}];

          v12 = v30;
          uniqueID = v36;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v20 = 0;
      if (!wantsAppAck)
      {
        goto LABEL_16;
      }
    }

    connectionType = [contextCopy connectionType];
    daemonController2 = [(_IDSService *)self daemonController];
    _internal3 = [v12 _internal];
    [_internal3 account];
    v23 = v35 = v12;
    _internal4 = [v23 _internal];
    [_internal4 uniqueID];
    v26 = v25 = uniqueID;
    [daemonController2 sendAppAckWithGUID:outgoingResponseIdentifier toDestination:fromID forAccountWithUniqueID:v26 connectionType:connectionType];

    uniqueID = v25;
    v12 = v35;

    goto LABEL_16;
  }

  storageGuid = +[IDSLogging _IDSService];
  if (os_log_type_enabled(storageGuid, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C474();
  }

LABEL_19:
}

- (BOOL)sendCertifiedDeliveryReceipt:(id)receipt
{
  v16 = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  if (receiptCopy)
  {
    v5 = [(_IDSService *)self _sendingAccountForAccount:0];
    _internal = [v5 _internal];
    pushTopic = [_internal pushTopic];

    service = [receiptCopy service];
    v9 = [pushTopic isEqualToString:service];

    v10 = +[IDSLogging _IDSService];
    daemonController = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = receiptCopy;
        _os_log_impl(&dword_1959FF000, daemonController, OS_LOG_TYPE_DEFAULT, "sendCertifiedDeliveryReceipt passing context to daemon { context: %@ }", &v14, 0xCu);
      }

      daemonController = [(_IDSService *)self daemonController];
      dictionaryRepresentation = [receiptCopy dictionaryRepresentation];
      [daemonController sendCertifiedDeliveryReceipt:dictionaryRepresentation serviceName:pushTopic];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C4A8(receiptCopy);
    }
  }

  else
  {
    v5 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C544();
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)sendBatchMessageProcessedContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[IDSLogging _IDSService];
  v6 = v5;
  if (contextCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = contextCopy;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "sendBatchMessageProcessedContext given context: %@", &v11, 0xCu);
    }

    v6 = [(_IDSService *)self _sendingAccountForAccount:0];
    _internal = [v6 _internal];
    pushTopic = [_internal pushTopic];

    daemonController = [(_IDSService *)self daemonController];
    [daemonController sendBatchMessageProcessedContext:contextCopy serviceName:pushTopic];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C578();
  }

  return contextCopy != 0;
}

- (BOOL)noteMetricOfType:(int64_t)type context:(id)context
{
  contextCopy = context;
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];

  if (!identifier)
  {
    v10 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C684();
    }

    goto LABEL_9;
  }

  if (type == 1)
  {
    timestampDictionary = [contextCopy timestampDictionary];

    if (!timestampDictionary)
    {
      v10 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C5AC();
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (type)
    {
      v14 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C614();
      }

      goto LABEL_15;
    }

    timestamp = [contextCopy timestamp];

    if (!timestamp)
    {
      v10 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C5E0();
      }

LABEL_9:

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  daemonController = [(_IDSService *)self daemonController];
  [daemonController noteMetricOfType:type context:contextCopy serviceName:identifier];

  v13 = 1;
LABEL_16:

  return v13;
}

- (void)_sendMissingMessageMetric:(id)metric
{
  metricCopy = metric;
  if ([metricCopy shouldReportMetric])
  {
    payload = [metricCopy payload];
    command = [metricCopy command];
    [(_IDSService *)self sendServerMessage:payload command:command fromAccount:0];
  }
}

- (id)datagramConnectionForSessionDestination:(id)destination error:(id *)error
{
  destinationCopy = destination;
  v7 = [(_IDSService *)self datagramConnectionForSessionDestination:destinationCopy uid:getuid() error:error];

  return v7;
}

- (id)datagramConnectionForSessionDestination:(id)destination uid:(unsigned int)uid error:(id *)error
{
  v6 = *&uid;
  v7 = [MEMORY[0x1E6977E28] endpointWithHostname:destination port:@"0"];
  v8 = objc_alloc_init(MEMORY[0x1E6977E40]);
  [v8 setDataMode:1];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], v6];
  [v8 requireNetworkAgentWithDomain:v9 type:*MEMORY[0x1E69A4EC0]];

  v10 = [MEMORY[0x1E6977E18] connectionWithEndpoint:v7 parameters:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695DF20]);
    v14 = [v13 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v14];
    }
  }

  return v11;
}

- (id)datagramConnectionForSocketDescriptor:(int)descriptor error:(id *)error
{
  v5 = dup(descriptor);
  if (v5 == -1 || ([MEMORY[0x1E6977E18] connectionWithConnectedSocket:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v7 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)streamConnectionForSessionDestination:(id)destination error:(id *)error
{
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [v5 initWithObjectsAndKeys:{@"Unable to create stream connection with destination", *MEMORY[0x1E696A578], 0}];
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v6];
  }

  return 0;
}

- (id)streamConnectionForSocketDescriptor:(int)descriptor error:(id *)error
{
  v5 = dup(descriptor);
  if (v5 == -1 || ([MEMORY[0x1E6977E60] connectionWithConnectedSocket:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v7 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)datagramChannelForSessionDestination:(id)destination options:(id)options error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  optionsCopy = options;
  v9 = [[IDSDatagramChannel alloc] initWithDestination:destinationCopy options:optionsCopy];

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = destinationCopy;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Creating datagram channel with destination %@ => %@", buf, 0x16u);
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    v13 = [v12 initWithObjectsAndKeys:{@"Unable to create datagram channel with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v13];
    }
  }

  return v9;
}

- (id)datagramChannelForSocketDescriptor:(int)descriptor error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = dup(descriptor);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

  v7 = [[IDSDatagramChannel alloc] initWithSocketDescriptor:v6];
  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    descriptorCopy = descriptor;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Creating datagram channel with socket %d => %@", buf, 0x12u);
  }

  if (!v7)
  {
LABEL_5:
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v10 = [v9 initWithObjectsAndKeys:{@"Unable to create datagram channel with socket descriptor", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v10];
    }

    v7 = 0;
  }

  return v7;
}

- (void)performGroupTask:(id)task
{
  taskCopy = task;
  groupContextController = [(_IDSService *)self groupContextController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AD5A54;
  v7[3] = &unk_1E7442398;
  v8 = taskCopy;
  v6 = taskCopy;
  [groupContextController groupContextWithCompletion:v7];
}

- (void)scheduleTransactionLogTask:(id)task
{
  taskCopy = task;
  groupContextController = [(_IDSService *)self groupContextController];
  [groupContextController scheduleTransactionLogTask:taskCopy];
}

- (void)connection:(id)connection didHintCheckingTransportLogWithReason:(int64_t)reason
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "checkTransportLog {reason: %ld}", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AD5BD0;
  v7[3] = &unk_1E7441E40;
  v7[4] = self;
  v7[5] = reason;
  [(_IDSService *)self _callDelegatesWithBlock:v7];
}

- (void)groupContextController:(id)controller didCreateGroup:(id)group
{
  groupCopy = group;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C6B8();
    }
  }

  v14 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AD5D70;
  v11[3] = &unk_1E74423C0;
  v12 = groupCopy;
  v13 = 0;
  v9 = groupCopy;
  [(_IDSService *)self sendAheadGroup:v9 priority:300 options:MEMORY[0x1E695E0F8] identifier:&v14 completion:v11];
  v10 = v14;
}

- (id)groupContextController:(id)controller accountsForAlises:(id)alises
{
  v34 = *MEMORY[0x1E69E9840];
  alisesCopy = alises;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C758();
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(alisesCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = alisesCopy;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        accounts = [(_IDSService *)self accounts];
        v12 = [accounts countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(accounts);
              }

              v16 = *(*(&v24 + 1) + 8 * j);
              aliasStrings = [v16 aliasStrings];
              v18 = [aliasStrings containsObject:v10];

              if (v18)
              {
                [v8 setObject:v16 forKeyedSubscript:v10];
              }
            }

            v13 = [accounts countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  return v8;
}

@end