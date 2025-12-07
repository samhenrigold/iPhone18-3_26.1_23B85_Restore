@interface CSDIDSGroupSessionProvider
- (CSDIDSGroupSessionProvider)initWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled isLightweightMember:(BOOL)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3;
- (CSDIDSGroupSessionProviderDelegate)delegate;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)UUID;
- (NSString)description;
- (NSString)destination;
- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unsigned)endedReason;
- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt;
- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)allowParticipants:(id)participants;
- (void)dealloc;
- (void)groupSessionDidConnectUnderlyingLinks:(id)links;
- (void)groupSessionDidDisconnectUnderlyingLinks:(id)links;
- (void)groupSessionDidTerminate:(id)terminate;
- (void)groupSessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)joinWithOptions:(id)options;
- (void)kickParticipants:(id)participants;
- (void)leave;
- (void)leaveWithOptions:(id)options;
- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion;
- (void)reconnect;
- (void)registerPluginWithOptions:(id)options;
- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic;
- (void)restart;
- (void)sendParticipantData:(id)data withContext:(id)context;
- (void)session:(id)session didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success;
- (void)session:(id)session didReceiveActiveParticipants:(id)participants success:(BOOL)success;
- (void)session:(id)session didReceiveBlockedParticipantIDs:(id)ds withCode:(unsigned int)code withType:(unsigned __int16)type isTruncated:(BOOL)truncated;
- (void)session:(id)session didReceiveData:(id)data dataType:(unsigned __int16)type forParticipant:(id)participant;
- (void)session:(id)session didReceiveDataBlob:(id)blob forParticipant:(id)participant;
- (void)session:(id)session didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveParticipantIDs:(id)ds withCode:(unsigned int)code managementType:(unsigned __int16)type;
- (void)session:(id)session didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveReport:(id)report;
- (void)session:(id)session didReceiveServerErrorCode:(unsigned int)code;
- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info;
- (void)session:(id)session didUnregisterPluginAllocationInfo:(id)info;
- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error;
- (void)sessionDidLeaveGroup:(id)group error:(id)error;
- (void)sessionDidReceiveParticipantUpgrade:(id)upgrade participantType:(unsigned __int16)type error:(id)error;
- (void)sessionDidReceiveParticipantUpgrade:(id)upgrade participantType:(unsigned __int16)type requestIdentifier:(unint64_t)identifier error:(id)error;
- (void)sessiondidReceiveKeyUpdate:(id)update;
- (void)setLocalParticipantType:(unsigned __int16)type memberDestinations:(id)destinations withContext:(id)context timestamp:(id)timestamp identifier:(unint64_t)identifier;
- (void)setParticipantType:(unsigned __int16)type forRemoteMemberDestinations:(id)destinations;
- (void)setPreferences:(id)preferences;
- (void)setScreening:(BOOL)screening;
- (void)setUpSession;
- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data requiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities triggeredLocally:(BOOL)locally;
- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data triggeredLocally:(BOOL)locally;
- (void)updateParticipantInfo:(id)info;
@end

@implementation CSDIDSGroupSessionProvider

- (CSDIDSGroupSessionProvider)initWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled isLightweightMember:(BOOL)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3
{
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  accountCopy = account;
  queueCopy = queue;
  configurationCopy = configuration;
  v47.receiver = self;
  v47.super_class = CSDIDSGroupSessionProvider;
  v23 = [(CSDIDSGroupSessionProvider *)&v47 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_groupID, d);
    objc_storeStrong(&v24->_participantDestinationIDs, ds);
    objc_storeStrong(&v24->_account, account);
    objc_storeStrong(&v24->_queue, queue);
    v25 = [iDCopy copy];
    callerID = v24->_callerID;
    v24->_callerID = v25;

    v24->_isOneToOneModeEnabled = enabled;
    v24->_isLightweightMember = member;
    v24->_isScreenSharingRequest = request;
    v24->_avLess = less;
    v27 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v24->_featureFlags;
    v24->_featureFlags = v27;

    v29 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v24->_serverBag;
    v24->_serverBag = v29;

    objc_storeStrong(&v24->_testConfiguration, configuration);
    v31 = +[CSDIDSChat faceTimeAppUUID];
    uUIDString = [v31 UUIDString];
    if (uUIDString)
    {
      v33 = +[CSDIDSChat faceTimeAppUUID];
      uUIDString2 = [v33 UUIDString];
      p_clientUUIDString = &v24->_clientUUIDString;
      clientUUIDString = v24->_clientUUIDString;
      v24->_clientUUIDString = uUIDString2;
    }

    else
    {
      v33 = +[NSUUID UUID];
      clientUUIDString = [v33 UUIDString];
      v37 = [clientUUIDString copy];
      p_clientUUIDString = &v24->_clientUUIDString;
      v38 = v24->_clientUUIDString;
      v24->_clientUUIDString = v37;
    }

    v24->_isInitiator = initiator;
    v39 = sub_100004778([(CSDIDSGroupSessionProvider *)v24 setUpSession]);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = @"NO";
      v41 = *p_clientUUIDString;
      *buf = 138413314;
      if (member)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v49 = v42;
      v50 = 2112;
      if (less)
      {
        v40 = @"YES";
      }

      v51 = v40;
      v52 = 2112;
      v53 = dsCopy;
      v54 = 2112;
      v55 = v41;
      v56 = 2112;
      v57 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "initWithGroupID: isLightweightMember: %@, isAVLess: %@, participantDestinationIDs: %@, clientUUIDString: %@, testConfiguration: %@", buf, 0x34u);
    }
  }

  return v24;
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(IDSGroupSession *)self->_session invalidate];
  }

  v3.receiver = self;
  v3.super_class = CSDIDSGroupSessionProvider;
  [(CSDIDSGroupSessionProvider *)&v3 dealloc];
}

- (NSString)description
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [session description];

  return v3;
}

- (void)setUpSession
{
  v34[0] = IDSSessionTransportTypeKey;
  v34[1] = IDSSessionAlwaysSkipSelfKey;
  v35[0] = &off_10063EC18;
  v35[1] = &__kCFBooleanTrue;
  v34[2] = IDSGroupSessionMessagesGroupIDKey;
  groupID = [(CSDIDSGroupSessionProvider *)self groupID];
  v35[2] = groupID;
  v34[3] = IDSGroupSessionMessagesGroupMembersKey;
  participantDestinationIDs = [(CSDIDSGroupSessionProvider *)self participantDestinationIDs];
  v35[3] = participantDestinationIDs;
  v34[4] = IDSGroupSessionMessagesCallerIDKey;
  callerID = [(CSDIDSGroupSessionProvider *)self callerID];
  v35[4] = callerID;
  v34[5] = IDSGroupSessionStartedAsUPlusOneKey;
  if ([(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled])
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  v35[5] = v6;
  v34[6] = IDSGroupSessionIsLightweightParticipantKey;
  isLightweightMember = [(CSDIDSGroupSessionProvider *)self isLightweightMember];
  v8 = &__kCFBooleanTrue;
  if ((isLightweightMember & 1) == 0)
  {
    if (objc_msgSend_isAVLess(self))
    {
      v8 = &__kCFBooleanTrue;
    }

    else
    {
      v8 = &__kCFBooleanFalse;
    }
  }

  v35[6] = v8;
  v34[7] = IDSSessionClientUUIDKey;
  clientUUIDString = [(CSDIDSGroupSessionProvider *)self clientUUIDString];
  v35[7] = clientUUIDString;
  v34[8] = IDSGroupSessionShortMKIEnabledKey;
  testConfiguration = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([testConfiguration isShortMKIEnabled])
  {
    v11 = &__kCFBooleanTrue;
  }

  else
  {
    v11 = &__kCFBooleanFalse;
  }

  v35[8] = v11;
  v34[9] = IDSGroupSessionTLEEnabledKey;
  testConfiguration2 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([testConfiguration2 isTLEEnabled])
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = &__kCFBooleanFalse;
  }

  v35[9] = v13;
  v34[10] = IDSGroupSessionPartialTLEUPlusOneEnabledKey;
  testConfiguration3 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([testConfiguration3 isTLEUPlusOneEnabled])
  {
    v15 = &__kCFBooleanTrue;
  }

  else
  {
    v15 = &__kCFBooleanFalse;
  }

  v35[10] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:11];
  v17 = [v16 mutableCopy];

  isOneToOneModeEnabled = [(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled];
  if (isOneToOneModeEnabled)
  {
    v19 = [NSNumber numberWithBool:[(CSDIDSGroupSessionProvider *)self isInitiator]];
    [v17 setObject:v19 forKeyedSubscript:IDSGroupSessionIsInitiatorKey];
  }

  v20 = sub_100004778(isOneToOneModeEnabled);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = TULoggableStringForObject();
    v32 = 138412290;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating IDSGroupSession with options %@", &v32, 0xCu);
  }

  v22 = [IDSGroupSession alloc];
  account = [(CSDIDSGroupSessionProvider *)self account];
  v24 = [v17 copy];
  v25 = [v22 initWithAccount:account options:v24];
  [(CSDIDSGroupSessionProvider *)self setSession:v25];

  if ([(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled])
  {
    featureFlags = [(CSDIDSGroupSessionProvider *)self featureFlags];
    if (![featureFlags uPlusOneSessionWithCapabilitiesEnabled])
    {
LABEL_26:

      goto LABEL_27;
    }

    serverBag = [(CSDIDSGroupSessionProvider *)self serverBag];
    isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

    if (isUPlusOneSessionCapabilitiesEnabled)
    {
      v29 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
      [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v29 requiredLackOfCapabilities:0];

      if ([(CSDIDSGroupSessionProvider *)self isScreenSharingRequest])
      {
        featureFlags = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
        [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:featureFlags requiredLackOfCapabilities:0];
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  session = [(CSDIDSGroupSessionProvider *)self session];
  queue = [(CSDIDSGroupSessionProvider *)self queue];
  [session setDelegate:self queue:queue];
}

- (unsigned)endedReason
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  sessionEndedReason = [session sessionEndedReason];

  return sessionEndedReason;
}

- (NSString)UUID
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  sessionID = [session sessionID];

  return sessionID;
}

- (NSString)destination
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  destination = [session destination];

  return destination;
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = sub_100004778(preferencesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preferences: %@", &v7, 0xCu);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  [session setPreferences:preferencesCopy];
}

- (void)joinWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = TULoggableStringForObject();
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "options: %@", &v15, 0xCu);
  }

  featureFlags = [(CSDIDSGroupSessionProvider *)self featureFlags];
  if (![featureFlags uPlusOneSessionWithCapabilitiesEnabled])
  {
    goto LABEL_9;
  }

  serverBag = [(CSDIDSGroupSessionProvider *)self serverBag];
  if (![(CSDMessagingConversationParticipantDidJoinContext *)serverBag isUPlusOneSessionCapabilitiesEnabled])
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v9 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionStartedAsUPlusOneKey];
  intValue = [v9 intValue];

  if (intValue >= 1)
  {
    v11 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
    [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v11 requiredLackOfCapabilities:0];

    featureFlags = [optionsCopy objectForKeyedSubscript:IDSGroupSessionClientContextDataKey];
    serverBag = [[CSDMessagingConversationParticipantDidJoinContext alloc] initWithData:featureFlags];
    screenSharingRequest = [(CSDMessagingConversationParticipantDidJoinContext *)serverBag screenSharingRequest];

    if (screenSharingRequest)
    {
      v13 = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
      [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v13 requiredLackOfCapabilities:0];
    }

    goto LABEL_8;
  }

LABEL_10:
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session joinWithOptions:optionsCopy];
}

- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  dsCopy = ds;
  dataCopy = data;
  v10 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = TULoggableStringForHandles();
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = dataCopy;
    v17 = 1024;
    v18 = locallyCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participantDestinationIDs: %@ contextData: %@ triggeredLocally: %d", &v13, 0x1Cu);
  }

  [(CSDIDSGroupSessionProvider *)self setParticipantDestinationIDs:dsCopy];
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session updateMembers:dsCopy withContext:dataCopy triggeredLocally:locallyCopy];
}

- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data requiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  dsCopy = ds;
  dataCopy = data;
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v16 = sub_100004778(ofCapabilitiesCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = TULoggableStringForHandles();
    v23 = 138413314;
    v24 = v17;
    v25 = 2112;
    v26 = dataCopy;
    v27 = 2112;
    v28 = capabilitiesCopy;
    v29 = 2112;
    v30 = ofCapabilitiesCopy;
    v31 = 1024;
    v32 = locallyCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "participantDestinationIDs: %@ contextData: %@ requiredCapabilities: %@ requiredLackOfCapabilities: %@ triggeredLocally: %d", &v23, 0x30u);
  }

  v18 = [IDSMessagingCapabilities alloc];
  v19 = [NSSet setWithArray:capabilitiesCopy];
  v20 = [NSSet setWithArray:ofCapabilitiesCopy];
  v21 = [v18 initWithRequiredCapabilities:v19 requiredMissingCapabilities:v20];

  [(CSDIDSGroupSessionProvider *)self setParticipantDestinationIDs:dsCopy];
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session updateMembers:dsCopy withContext:dataCopy messagingCapabilities:v21 triggeredLocally:locallyCopy];
}

- (void)sendParticipantData:(id)data withContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v8 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = dataCopy;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending participantData: %@, context: %@", &v12, 0x16u);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 updateParticipantData:dataCopy withContext:contextCopy];
  }
}

- (void)updateParticipantInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100004778(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateParticipantInfo: %@", &v9, 0xCu);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 updateParticipantInfo:infoCopy];
  }
}

- (void)leave
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  [session leaveGroupSession];
}

- (void)leaveWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Leaving with options: %@", &v10, 0xCu);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v7 = objc_opt_respondsToSelector();

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v9 = session2;
  if (v7)
  {
    [session2 leaveGroupSessionWithOptions:optionsCopy];
  }

  else
  {
    [session2 leaveGroupSession];
  }
}

- (void)restart
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 invalidate];

    [(CSDIDSGroupSessionProvider *)self setUpSession];
  }
}

- (void)requestActiveParticipants
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v6 = 138412290;
    v7 = session;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session: %@", &v6, 0xCu);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 requestActiveParticipants];
}

- (void)reconnect
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v8 = 138412290;
    v9 = session;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session: %@", &v8, 0xCu);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    session3 = [(CSDIDSGroupSessionProvider *)self session];
    [session3 performSelector:"reconnectUPlusOneSession"];
  }
}

- (void)kickParticipants:(id)participants
{
  participantsCopy = participants;
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session manageDesignatedMembers:participantsCopy withType:1];
}

- (void)allowParticipants:(id)participants
{
  participantsCopy = participants;
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session manageDesignatedMembers:participantsCopy withType:2];
}

- (void)registerPluginWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v10 = 138412546;
    v11 = session;
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session: %@, options: %@", &v10, 0x16u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    session3 = [(CSDIDSGroupSessionProvider *)self session];
    [session3 performSelector:"registerPluginWithOptions:" withObject:optionsCopy];
  }
}

- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v8 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412546;
    v12 = session;
    v13 = 2112;
    v14 = topicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, requestDataCryptor: %@", &v11, 0x16u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 requestDataCryptorForTopic:topicCopy completionHandler:handlerCopy];
}

- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic
{
  participantsCopy = participants;
  topicCopy = topic;
  v8 = sub_100004778(topicCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412802;
    v12 = session;
    v13 = 2112;
    v14 = participantsCopy;
    v15 = 2112;
    v16 = topicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, requestEncryptionKeyForParticipants: %@ topic: %@", &v11, 0x20u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 requestEncryptionKeyForParticipants:participantsCopy];
}

- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  session = [(CSDIDSGroupSessionProvider *)self session];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      session2 = [(CSDIDSGroupSessionProvider *)self session];
      v22 = 138412802;
      v23 = session2;
      v24 = 2112;
      v25 = capabilitiesCopy;
      v26 = 2112;
      v27 = ofCapabilitiesCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "session: %@, setRequiredCapabilities: %@ requiredLackOfCapabilities: %@", &v22, 0x20u);
    }

    session3 = [(CSDIDSGroupSessionProvider *)self session];
    requiredCapabilities = [session3 requiredCapabilities];
    v15 = [requiredCapabilities mutableCopy];

    if ([capabilitiesCopy count])
    {
      if (!v15)
      {
        v15 = +[NSMutableSet set];
      }

      allObjects = [capabilitiesCopy allObjects];
      [v15 addObjectsFromArray:allObjects];
    }

    session4 = [(CSDIDSGroupSessionProvider *)self session];
    requiredLackOfCapabilities = [session4 requiredLackOfCapabilities];
    v19 = [requiredLackOfCapabilities mutableCopy];

    if ([ofCapabilitiesCopy count])
    {
      if (!v19)
      {
        v19 = +[NSMutableSet set];
      }

      allObjects2 = [ofCapabilitiesCopy allObjects];
      [v19 addObjectsFromArray:allObjects2];
    }

    session5 = [(CSDIDSGroupSessionProvider *)self session];
    [session5 setRequiredCapabilities:v15 requiredLackOfCapabilities:v19];
  }
}

- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v8 = sub_100004778(ofCapabilitiesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v17 = 138412802;
    v18 = session;
    v19 = 2112;
    v20 = capabilitiesCopy;
    v21 = 2112;
    v22 = ofCapabilitiesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, removeRequiredCapabilities: %@ requiredLackOfCapabilities: %@", &v17, 0x20u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  requiredCapabilities = [session2 requiredCapabilities];
  v12 = [requiredCapabilities mutableCopy];

  if ([capabilitiesCopy count])
  {
    [v12 minusSet:capabilitiesCopy];
  }

  session3 = [(CSDIDSGroupSessionProvider *)self session];
  requiredLackOfCapabilities = [session3 requiredLackOfCapabilities];
  v15 = [requiredLackOfCapabilities mutableCopy];

  if ([ofCapabilitiesCopy count])
  {
    [v15 minusSet:ofCapabilitiesCopy];
  }

  session4 = [(CSDIDSGroupSessionProvider *)self session];
  [session4 setRequiredCapabilities:v12 requiredLackOfCapabilities:v15];
}

- (NSSet)requiredCapabilities
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  requiredCapabilities = [session requiredCapabilities];

  return requiredCapabilities;
}

- (NSSet)requiredLackOfCapabilities
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  requiredLackOfCapabilities = [session requiredLackOfCapabilities];

  return requiredLackOfCapabilities;
}

- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt
{
  containerCopy = container;
  saltCopy = salt;
  v8 = sub_100004778(saltCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    *buf = 138412802;
    v35 = session;
    v36 = 2112;
    v37 = containerCopy;
    v38 = 2112;
    v39 = saltCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, addAliasesToConversationContainer: %@ salt: %@", buf, 0x20u);
  }

  v10 = [NSUUID alloc];
  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v12 = [session2 sessionIDAliasWithSalt:saltCopy];
  v13 = [v10 initWithUUIDString:v12];
  [containerCopy setGroupUUID:v13];

  if ([containerCopy localParticipantIdentifier])
  {
    session3 = [(CSDIDSGroupSessionProvider *)self session];
    [containerCopy setLocalParticipantIdentifier:{objc_msgSend(session3, "createAliasForParticipantID:salt:", objc_msgSend(containerCopy, "localParticipantIdentifier"), saltCopy)}];
  }

  v15 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = containerCopy;
  obj = [containerCopy virtualParticipants];
  v16 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        [(CSDIDSGroupSessionProvider *)self session];
        v22 = v21 = self;
        v23 = [v22 createAliasForParticipantID:objc_msgSend(v20 salt:{"identifier"), saltCopy}];

        v24 = [TUConversationVirtualParticipant alloc];
        pluginName = [v20 pluginName];
        v26 = [v24 initWithIdentifier:v23 pluginName:pluginName];
        [v15 addObject:v26];

        self = v21;
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  [v27 setVirtualParticipants:v15];
}

- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt
{
  saltCopy = salt;
  v7 = sub_100004778(saltCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412802;
    v12 = session;
    v13 = 2048;
    dCopy = d;
    v15 = 2112;
    v16 = saltCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session: %@, aliasForParticipantID: %llu salt: %@", &v11, 0x20u);
  }

  if (d)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    d = [session2 createAliasForParticipantID:d salt:saltCopy];
  }

  return d;
}

- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion
{
  saltCopy = salt;
  completionCopy = completion;
  v10 = sub_100004778(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v13 = 138412802;
    v14 = session;
    v15 = 2048;
    aliasCopy = alias;
    v17 = 2112;
    v18 = saltCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session: %@, participantIDForAlias: %llu salt: %@", &v13, 0x20u);
  }

  if (alias)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 getParticipantIDForAlias:alias salt:saltCopy completionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)setLocalParticipantType:(unsigned __int16)type memberDestinations:(id)destinations withContext:(id)context timestamp:(id)timestamp identifier:(unint64_t)identifier
{
  typeCopy = type;
  destinationsCopy = destinations;
  contextCopy = context;
  timestampCopy = timestamp;
  v15 = timestampCopy;
  if (typeCopy == 1)
  {
    v16 = [NSSet setWithObject:IDSRegistrationPropertySupportsAVLess];
    [(CSDIDSGroupSessionProvider *)self removeRequiredCapabilities:v16 requiredLackOfCapabilities:0];
  }

  v17 = sub_100004778(timestampCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v19 = TULoggableStringForHandles();
    v21 = 138413314;
    v22 = session;
    v23 = 1024;
    v24 = typeCopy;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v15;
    v29 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "session: %@ updating local participant type: %hu destinations: %@, timestamp: %@, identifier: %llu", &v21, 0x30u);
  }

  [(CSDIDSGroupSessionProvider *)self setParticipantDestinationIDs:destinationsCopy];
  self->_avLess = typeCopy == 0;
  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [v15 doubleValue];
  [session2 updateParticipantType:typeCopy members:destinationsCopy withContext:contextCopy triggeredLocally:1 timestamp:identifier identifier:?];
}

- (void)setParticipantType:(unsigned __int16)type forRemoteMemberDestinations:(id)destinations
{
  typeCopy = type;
  destinationsCopy = destinations;
  v7 = sub_100004778(destinationsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v9 = TULoggableStringForHandles();
    v11 = 138412802;
    v12 = session;
    v13 = 1024;
    v14 = typeCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session: %@ updating remote participant type: %hu destinations: %@", &v11, 0x1Cu);
  }

  [(CSDIDSGroupSessionProvider *)self setParticipantDestinationIDs:destinationsCopy];
  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 updateParticipantType:typeCopy members:destinationsCopy withContext:0 triggeredLocally:0];
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v7 = session;
    v8 = @"NO";
    if (screeningCopy)
    {
      v8 = @"YES";
    }

    v10 = 138412546;
    v11 = session;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session: %@ setScreening: %@", &v10, 0x16u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 setCallScreeningMode:screeningCopy];
}

- (void)groupSessionDidTerminate:(id)terminate
{
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProviderDidTerminate:self];
}

- (void)groupSessionDidDisconnectUnderlyingLinks:(id)links
{
  linksCopy = links;
  v5 = sub_100004778(linksCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = linksCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "groupSessionDidDisconnectUnderlyingLinks for session: %@", &v7, 0xCu);
  }

  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveUnderlyingLinksStatus:0];
}

- (void)groupSessionDidConnectUnderlyingLinks:(id)links
{
  linksCopy = links;
  v5 = sub_100004778(linksCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = linksCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "groupSessionDidConnectUnderlyingLinks for session: %@", &v7, 0xCu);
  }

  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveUnderlyingLinksStatus:1];
}

- (void)groupSessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v5 = *&reason;
  errorCopy = error;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self endedWithReason:v5 error:errorCopy];
}

- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error
{
  errorCopy = error;
  updateCopy = update;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  participantIDs = [updateCopy participantIDs];
  participantIdentifier = [updateCopy participantIdentifier];

  [delegate sessionProvider:self didJoinGroupWithParticipantIdentifiers:participantIDs localParticipantIdentifier:participantIdentifier error:errorCopy];
}

- (void)sessionDidLeaveGroup:(id)group error:(id)error
{
  errorCopy = error;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didLeaveGroupWithError:errorCopy];
}

- (void)session:(id)session didReceiveActiveParticipants:(id)participants success:(BOOL)success
{
  successCopy = success;
  participantsCopy = participants;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveActiveParticipants:participantsCopy success:successCopy];
}

- (void)session:(id)session didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success
{
  successCopy = success;
  participantsCopy = participants;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveActiveLightweightParticipants:participantsCopy success:successCopy];
}

- (void)session:(id)session didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveLeftParticipantID:d withContext:contextCopy];
}

- (void)session:(id)session didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveJoinedParticipantID:d withContext:contextCopy];
}

- (void)session:(id)session didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveParticipantUpdateParticipantID:d withContext:contextCopy];
}

- (void)session:(id)session didReceiveReport:(id)report
{
  reportCopy = report;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveReport:reportCopy];
}

- (void)session:(id)session didReceiveBlockedParticipantIDs:(id)ds withCode:(unsigned int)code withType:(unsigned __int16)type isTruncated:(BOOL)truncated
{
  truncatedCopy = truncated;
  typeCopy = type;
  v9 = *&code;
  dsCopy = ds;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveKickedParticipantIDs:dsCopy withCode:v9 withType:typeCopy isTruncated:truncatedCopy];
}

- (void)session:(id)session didReceiveParticipantIDs:(id)ds withCode:(unsigned int)code managementType:(unsigned __int16)type
{
  if (type <= 3u)
  {
    [CSDIDSGroupSessionProvider session:"session:didReceiveBlockedParticipantIDs:withCode:withType:isTruncated:" didReceiveBlockedParticipantIDs:session withCode:ds withType:*&code isTruncated:?];
  }
}

- (void)sessionDidReceiveParticipantUpgrade:(id)upgrade participantType:(unsigned __int16)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveLocalParticipantType:typeCopy requestIdentifier:0 error:errorCopy];
}

- (void)sessionDidReceiveParticipantUpgrade:(id)upgrade participantType:(unsigned __int16)type requestIdentifier:(unint64_t)identifier error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveLocalParticipantType:typeCopy requestIdentifier:identifier error:errorCopy];
}

- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didRegisterPluginAllocationInfo:infoCopy];
}

- (void)session:(id)session didUnregisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didUnregisterPluginAllocationInfo:infoCopy];
}

- (void)sessiondidReceiveKeyUpdate:(id)update
{
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProviderDidReceiveKeyUpdate:self];
}

- (void)session:(id)session didReceiveDataBlob:(id)blob forParticipant:(id)participant
{
  participantCopy = participant;
  blobCopy = blob;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveDataBlob:blobCopy forParticipant:participantCopy];
}

- (void)session:(id)session didReceiveData:(id)data dataType:(unsigned __int16)type forParticipant:(id)participant
{
  typeCopy = type;
  participantCopy = participant;
  dataCopy = data;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveData:dataCopy dataType:typeCopy forParticipant:participantCopy];
}

- (void)session:(id)session didReceiveServerErrorCode:(unsigned int)code
{
  v4 = *&code;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveServerErrorCode:v4];
}

- (CSDIDSGroupSessionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end