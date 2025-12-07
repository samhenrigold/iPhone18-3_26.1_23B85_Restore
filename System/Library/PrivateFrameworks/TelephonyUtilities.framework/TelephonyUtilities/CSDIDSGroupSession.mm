@interface CSDIDSGroupSession
- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider;
- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider featureFlags:(id)flags;
- (CSDIDSGroupSessionDelegate)delegate;
- (NSArray)participantDestinationIDs;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)idsDestination;
- (id)_updateParticipantDestinationIDForParticipant:(id)participant members:(id)members;
- (id)idsDestinationForActiveParticipant:(id)participant;
- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unint64_t)callTypeForJoinContext:(id)context;
- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt;
- (void)addMembers:(id)members toExistingMembers:(id)existingMembers activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)handles report:(id)report invitationPreferences:(id)self0 requiredCapabilities:(id)self1 messagesGroupUUID:(id)self2 messagesGroupName:(id)self3 addingFromLetMeIn:(BOOL)self4 triggeredLocally:(BOOL)self5 highlightIdentifier:(id)self6 stagedActivitySession:(id)self7 avMode:(unint64_t)self8;
- (void)addMembers:(id)members toExistingMembers:(id)existingMembers participantDestinationIDs:(id)ds webDestinationIDs:(id)iDs activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)self0 report:(id)self1 invitationPreferences:(id)self2;
- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)allowMember:(id)member;
- (void)joinUsingContext:(id)context localParticipantAVCData:(id)data members:(id)members otherInvitedHandles:(id)handles participantDestinationIDs:(id)ds link:(id)link report:(id)report stagedActivitySession:(id)self0 personaHandshakeBlob:(id)self1 activitySession:(id)self2;
- (void)kickMember:(id)member;
- (void)leaveGroupSessionWithContext:(id)context;
- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion;
- (void)reconnect;
- (void)registerPluginWithOptions:(id)options;
- (void)removeMembers:(id)members fromExistingMembers:(id)existingMembers activeParticipants:(id)participants triggeredLocally:(BOOL)locally;
- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic;
- (void)restart;
- (void)sendLocalParticipant:(id)participant;
- (void)sessionProvider:(id)provider didJoinGroupWithParticipantIdentifiers:(id)identifiers localParticipantIdentifier:(unint64_t)identifier error:(id)error;
- (void)sessionProvider:(id)provider didLeaveGroupWithError:(id)error;
- (void)sessionProvider:(id)provider didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success;
- (void)sessionProvider:(id)provider didReceiveActiveParticipants:(id)participants success:(BOOL)success;
- (void)sessionProvider:(id)provider didReceiveData:(id)data dataType:(unsigned __int16)type forParticipant:(id)participant;
- (void)sessionProvider:(id)provider didReceiveDataBlob:(id)blob forParticipant:(id)participant;
- (void)sessionProvider:(id)provider didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context;
- (void)sessionProvider:(id)provider didReceiveKickedParticipantIDs:(id)ds withCode:(unsigned int)code withType:(unsigned __int16)type isTruncated:(BOOL)truncated;
- (void)sessionProvider:(id)provider didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context;
- (void)sessionProvider:(id)provider didReceiveLocalParticipantType:(unsigned __int16)type requestIdentifier:(unint64_t)identifier error:(id)error;
- (void)sessionProvider:(id)provider didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context;
- (void)sessionProvider:(id)provider didReceiveReport:(id)report;
- (void)sessionProvider:(id)provider didReceiveServerErrorCode:(unsigned int)code;
- (void)sessionProvider:(id)provider didRegisterPluginAllocationInfo:(id)info;
- (void)sessionProvider:(id)provider didUnregisterPluginAllocationInfo:(id)info;
- (void)sessionProvider:(id)provider endedWithReason:(unsigned int)reason error:(id)error;
- (void)sessionProviderDidReceiveKeyUpdate:(id)update;
- (void)sessionProviderDidTerminate:(id)terminate;
- (void)setIsUnderlyingLinksConnected:(BOOL)connected;
- (void)setParticipantType:(unsigned __int16)type forParticipant:(id)participant members:(id)members isLocalParticipant:(BOOL)localParticipant;
- (void)setParticipantType:(unsigned __int16)type forParticipant:(id)participant members:(id)members isLocalParticipant:(BOOL)localParticipant withContext:(id)context timestamp:(id)timestamp identifier:(unint64_t)identifier;
- (void)setScreening:(BOOL)screening;
- (void)updateLocalParticipantInfo:(id)info;
@end

@implementation CSDIDSGroupSession

- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider featureFlags:(id)flags
{
  providerCopy = provider;
  flagsCopy = flags;
  v18.receiver = self;
  v18.super_class = CSDIDSGroupSession;
  v9 = [(CSDIDSSession *)&v18 initWithSessionProvider:providerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureFlags, flags);
    v10->_localParticipantType = objc_msgSend_isAVLess(providerCopy) ^ 1;
    objc_storeStrong(&v10->_sessionProvider, provider);
    [(CSDIDSGroupSessionProvider *)v10->_sessionProvider setDelegate:v10];
    v11 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v10->_serverBag;
    v10->_serverBag = v11;

    v13 = +[NSMutableDictionary dictionary];
    sessionProvider = [(CSDIDSGroupSession *)v10 sessionProvider];
    clientUUIDString = [sessionProvider clientUUIDString];
    [(NSMutableDictionary *)v13 setObject:clientUUIDString forKeyedSubscript:IDSSessionClientUUIDKey];

    preferences = v10->_preferences;
    v10->_preferences = v13;

    v10->_isUnderlyingLinksConnected = 1;
  }

  return v10;
}

- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(CSDIDSGroupSession *)self initWithGroupSessionProvider:providerCopy featureFlags:v5];

  return v6;
}

- (NSString)idsDestination
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  destination = [sessionProvider destination];

  return destination;
}

- (NSArray)participantDestinationIDs
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  participantDestinationIDs = [sessionProvider participantDestinationIDs];

  return participantDestinationIDs;
}

- (void)joinUsingContext:(id)context localParticipantAVCData:(id)data members:(id)members otherInvitedHandles:(id)handles participantDestinationIDs:(id)ds link:(id)link report:(id)report stagedActivitySession:(id)self0 personaHandshakeBlob:(id)self1 activitySession:(id)self2
{
  contextCopy = context;
  dataCopy = data;
  linkCopy = link;
  reportCopy = report;
  selfCopy = self;
  activitySessionCopy = activitySession;
  sessionCopy = session;
  dsCopy = ds;
  handlesCopy = handles;
  membersCopy = members;
  sessionProvider = [(CSDIDSGroupSession *)selfCopy sessionProvider];
  preferences = [(CSDIDSGroupSession *)selfCopy preferences];
  [sessionProvider setPreferences:preferences];

  v27 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setTuConversationMembers:membersCopy];

  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setOtherInvitedTUHandles:handlesCopy];
  messagesGroupUUID = [contextCopy messagesGroupUUID];
  uUIDString = [messagesGroupUUID UUIDString];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessagesGroupUUIDString:uUIDString];

  messagesGroupName = [contextCopy messagesGroupName];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessagesGroupName:messagesGroupName];

  -[CSDMessagingConversationParticipantDidJoinContext setIsMomentsAvailable:](v27, "setIsMomentsAvailable:", [contextCopy isMomentsAvailable]);
  featureFlags = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [contextCopy provider];
    -[CSDMessagingConversationParticipantDidJoinContext setIsScreenSharingAvailable:](v27, "setIsScreenSharingAvailable:", [provider supportsSharePlay]);
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsScreenSharingAvailable:1];
  }

  featureFlags2 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags2 groupFacetimeAsAServiceEnabled])
  {
    provider2 = [contextCopy provider];
    -[CSDMessagingConversationParticipantDidJoinContext setIsGondolaCallingAvailable:](v27, "setIsGondolaCallingAvailable:", [provider2 supportsLinks]);
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsGondolaCallingAvailable:1];
  }

  if ([contextCopy isVideo])
  {
    featureFlags3 = [(CSDIDSGroupSession *)selfCopy featureFlags];
    if ([featureFlags3 groupFacetimeAsAServiceEnabled])
    {
      provider3 = [contextCopy provider];
      -[CSDMessagingConversationParticipantDidJoinContext setVideo:](v27, "setVideo:", [provider3 supportsVideo]);
    }

    else
    {
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideo:1];
    }
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideo:0];
  }

  if ([contextCopy isVideoEnabled])
  {
    featureFlags4 = [(CSDIDSGroupSession *)selfCopy featureFlags];
    if ([featureFlags4 groupFacetimeAsAServiceEnabled])
    {
      provider4 = [contextCopy provider];
      -[CSDMessagingConversationParticipantDidJoinContext setVideoEnabled:](v27, "setVideoEnabled:", [provider4 supportsVideo]);
    }

    else
    {
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideoEnabled:1];
    }
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideoEnabled:0];
  }

  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setSupportsLeaveContext:1];
  -[CSDMessagingConversationParticipantDidJoinContext setSupportsRequestToScreenShare:](v27, "setSupportsRequestToScreenShare:", [contextCopy supportsRequestToScreenShare]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsPersonaAvailable:](v27, "setIsPersonaAvailable:", [contextCopy isPersonaAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsGFTDowngradeToOneToOneAvailable:](v27, "setIsGFTDowngradeToOneToOneAvailable:", [contextCopy isGFTDowngradeToOneToOneAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusNDowngradeAvailable:](v27, "setIsUPlusNDowngradeAvailable:", [contextCopy isUPlusNDowngradeAvailable]);
  provider5 = [contextCopy provider];
  identifier = [provider5 identifier];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setProviderIdentifier:identifier];

  -[CSDMessagingConversationParticipantDidJoinContext setIsLightweight:](v27, "setIsLightweight:", [contextCopy isLightweight]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneVisionToVisionAvailable:](v27, "setIsUPlusOneVisionToVisionAvailable:", [contextCopy isUPlusOneVisionToVisionAvailable]);
  collaborationIdentifier = [contextCopy collaborationIdentifier];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setCollaborationIdentifier:collaborationIdentifier];

  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneScreenSharingAvailable:](v27, "setIsUPlusOneScreenSharingAvailable:", [contextCopy isUPlusOneScreenShareAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsSpatialPersonaEnabled:](v27, "setIsSpatialPersonaEnabled:", [contextCopy isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneAVLessAvailable:](v27, "setIsUPlusOneAVLessAvailable:", [contextCopy isUPlusOneAVLessAvailable]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsNearbySharePlay:](v27, "setIsNearbySharePlay:", [contextCopy isNearbySharePlay]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsTranslationAvailable:](v27, "setIsTranslationAvailable:", [contextCopy isTranslationAvailable]);
  screenSharingRequest = [contextCopy screenSharingRequest];
  if (screenSharingRequest)
  {
    v43 = screenSharingRequest;
    featureFlags5 = [(CSDIDSGroupSession *)selfCopy featureFlags];
    usesModernScreenSharingFromMessages = [featureFlags5 usesModernScreenSharingFromMessages];

    if (usesModernScreenSharingFromMessages)
    {
      v46 = [CSDMessagingScreenShareContext alloc];
      screenSharingRequest2 = [contextCopy screenSharingRequest];
      v48 = [(CSDMessagingScreenShareContext *)v46 initOutgoingRequestWithScreenSharingRequest:screenSharingRequest2];
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setScreenSharingRequest:v48];
    }
  }

  featureFlags6 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags6 conversationHandoffEnabled])
  {
    participantAssociation = [contextCopy participantAssociation];

    if (!participantAssociation)
    {
      goto LABEL_26;
    }

    featureFlags6 = [contextCopy participantAssociation];
    v51 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:featureFlags6];
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setParticipantAssociation:v51];
  }

LABEL_26:
  participantCluster = [contextCopy participantCluster];
  v53 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:participantCluster];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setParticipantCluster:v53];

  v54 = objc_alloc_init(CSDMessagingConversationMessage);
  v55 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:reportCopy];
  [(CSDMessagingConversationMessage *)v54 setReportData:v55];

  [(CSDMessagingConversationMessage *)v54 setStagedActivitySession:sessionCopy];
  featureFlags7 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  LODWORD(participantCluster) = [featureFlags7 avLessSharePlayEnabled];

  if (participantCluster)
  {
    avMode = [contextCopy avMode];
  }

  else if ([contextCopy isVideo])
  {
    avMode = 2;
  }

  else
  {
    avMode = 1;
  }

  [(CSDMessagingConversationMessage *)v54 setAvMode:avMode];
  -[CSDMessagingConversationMessage setPresentationMode:](v54, "setPresentationMode:", [contextCopy presentationMode]);
  if (activitySessionCopy)
  {
    [(CSDMessagingConversationMessage *)v54 addActivitySessions:activitySessionCopy];
  }

  invitationPreferences = [contextCopy invitationPreferences];
  v59 = [invitationPreferences count];

  if (v59)
  {
    invitationPreferences2 = [contextCopy invitationPreferences];
    [(CSDMessagingConversationMessage *)v54 setTUInvitationPreferences:invitationPreferences2];
  }

  requiredCapabilities = [(CSDIDSGroupSession *)selfCopy requiredCapabilities];
  v62 = [requiredCapabilities containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

  if (v62)
  {
    [(CSDMessagingConversationMessage *)v54 setIsNearbySession:1];
  }

  featureFlags8 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags8 groupFacetimeAsAServiceEnabled])
  {
    provider6 = [contextCopy provider];
    supportsLinks = [provider6 supportsLinks];

    v66 = supportsLinks ^ 1;
  }

  else
  {
    v66 = 0;
  }

  if (linkCopy && (v66 & 1) == 0)
  {
    v67 = [CSDMessagingConversationLink linkWithTUConversationLink:linkCopy includeGroupUUID:1];
    [(CSDMessagingConversationMessage *)v54 setLink:v67];
  }

  v124 = v54;
  if ([contextCopy isInvitation])
  {
    -[CSDMessagingConversationMessage setShouldSuppressInCallUI:](v54, "setShouldSuppressInCallUI:", [contextCopy shouldSuppressInCallUI]);
    goto LABEL_57;
  }

  if ([contextCopy isUpgrade])
  {
    upgradeSessionUUID = [contextCopy upgradeSessionUUID];

    if (upgradeSessionUUID)
    {
      [(CSDMessagingConversationMessage *)v54 setType:2];
      upgradeSessionUUID2 = [contextCopy upgradeSessionUUID];
      uUIDString2 = [upgradeSessionUUID2 UUIDString];
      [(CSDMessagingConversationMessage *)v54 setProtoUpgradeSessionUUID:uUIDString2];

      goto LABEL_57;
    }
  }

  if (![contextCopy isOneToOneModeEnabled] || !objc_msgSend(contextCopy, "isInitiator"))
  {
    goto LABEL_57;
  }

  featureFlags9 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if (([featureFlags9 nearbyFaceTimeEnabled] & 1) == 0)
  {

    goto LABEL_56;
  }

  invitationPreferences3 = [contextCopy invitationPreferences];
  v73 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
  v74 = [invitationPreferences3 isEqualToSet:v73];

  if (!v74)
  {
LABEL_56:
    v54 = v124;
    [(CSDMessagingConversationMessage *)v124 setType:1];
    goto LABEL_57;
  }

  v76 = sub_100004778(v75);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Not setting message type to invitation since invitation preferences are set to nearby.", buf, 2u);
  }

  v54 = v124;
LABEL_57:
  v122 = linkCopy;
  -[CSDMessagingConversationParticipantDidJoinContext setIsUpgradeToVideo:](v27, "setIsUpgradeToVideo:", [contextCopy isUpgradeToVideo]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessage:v54];
  isOneToOneModeEnabled = [contextCopy isOneToOneModeEnabled];
  if (isOneToOneModeEnabled)
  {
    isOneToOneModeEnabled = [contextCopy isInitiator];
    v78 = isOneToOneModeEnabled;
  }

  else
  {
    v78 = 0;
  }

  v79 = sub_100004778(isOneToOneModeEnabled);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    v80 = v27;
    if ([contextCopy isOneToOneModeEnabled])
    {
      v81 = @"YES";
    }

    else
    {
      v81 = @"NO";
    }

    isInitiator = [contextCopy isInitiator];
    *buf = 136315906;
    if (isInitiator)
    {
      v83 = @"YES";
    }

    else
    {
      v83 = @"NO";
    }

    v129 = "[CSDIDSGroupSession joinUsingContext:localParticipantAVCData:members:otherInvitedHandles:participantDestinationIDs:link:report:stagedActivitySession:personaHandshakeBlob:activitySession:]";
    if (v78)
    {
      v84 = @"YES";
    }

    else
    {
      v84 = @"NO";
    }

    v130 = 2112;
    v131 = v81;
    v27 = v80;
    v132 = 2112;
    v133 = v83;
    v134 = 2112;
    v135 = v84;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%s: isOneToOneModeEnabled: %@, isInitiator: %@, shouldHaveNewServerAllocation: %@", buf, 0x2Au);
  }

  v121 = reportCopy;

  v86 = sub_100004778(v85);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v129 = "[CSDIDSGroupSession joinUsingContext:localParticipantAVCData:members:otherInvitedHandles:participantDestinationIDs:link:report:stagedActivitySession:personaHandshakeBlob:activitySession:]";
    v130 = 2112;
    v131 = v27;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%s: Joining with participantJoinContext: %@", buf, 0x16u);
  }

  data = [(CSDMessagingConversationParticipantDidJoinContext *)v27 data];
  v116 = IDSGroupSessionClientContextDataKey;
  v126 = IDSGroupSessionAllParticipantsKey;
  v127 = IDSGroupSessionNoStreamsKey;
  v112 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
  v115 = IDSGroupSessionSubscribedStreamsKey;
  v114 = [NSNumber numberWithInteger:TUMultiwayMaxConcurrentStreams()];
  v113 = IDSGroupSessionMaxConcurrentStreamsKey;
  v111 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy isUpgrade]);
  v110 = IDSGroupSessionJoinTypeKey;
  v120 = selfCopy;
  v87 = [NSNumber numberWithUnsignedInteger:[(CSDIDSGroupSession *)selfCopy callTypeForJoinContext:contextCopy]];
  v109 = IDSGroupSessionCommandContextKey;
  v88 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy isOneToOneModeEnabled]);
  v108 = IDSGroupSessionStartedAsUPlusOneKey;
  v89 = [NSNumber numberWithBool:v78];
  allObjects = [dsCopy allObjects];

  v91 = IDSGroupSessionMessagesGroupMembersKey;
  v92 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy isInitiator]);
  v93 = IDSGroupSessionIsInitiatorKey;
  v94 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy isScreening]);
  v118 = [NSMutableDictionary dictionaryWithObjectsAndKeys:data, v116, v112, v115, v114, v113, v111, v110, v87, v109, v88, v108, v89, @"gs-new-server-allocation-key", allObjects, v91, v92, v93, v94, IDSGroupSessionCallScreeningMode, 0];

  v95 = v27;
  if ([(CSDMessagingConversationParticipantDidJoinContext *)v27 isLightweight])
  {
    v96 = objc_alloc_init(NSData);
    v97 = v118;
    [v118 setObject:v96 forKeyedSubscript:IDSSessionParticipantDataKey];

    v98 = dataCopy;
  }

  else
  {
    v97 = v118;
    v98 = dataCopy;
    [v118 setObject:dataCopy forKeyedSubscript:IDSSessionParticipantDataKey];
  }

  conversationID = [v121 conversationID];

  if (conversationID)
  {
    conversationID2 = [v121 conversationID];
    [v97 setObject:conversationID2 forKeyedSubscript:IDSGroupSessionConversationIDKey];
  }

  timebase = [v121 timebase];

  if (timebase)
  {
    timebase2 = [v121 timebase];
    [v97 setObject:timebase2 forKeyedSubscript:IDSGroupSessionTimeBaseKey];
  }

  v103 = [CSDMessagingConversationParticipant participantWithCSDConversationJoinContext:v95];
  [v103 setAvcData:v98];
  data2 = [v103 data];
  [v97 setObject:data2 forKeyedSubscript:IDSGroupSessionParticipantInfoKey];

  v106 = sub_100004778(v105);
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v129 = v103;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "joinUsingContext: sending dataBlob %@", buf, 0xCu);
  }

  sessionProvider2 = [(CSDIDSGroupSession *)v120 sessionProvider];
  [sessionProvider2 joinWithOptions:v97];
}

- (void)removeMembers:(id)members fromExistingMembers:(id)existingMembers activeParticipants:(id)participants triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  membersCopy = members;
  existingMembersCopy = existingMembers;
  participantsCopy = participants;
  v11 = +[NSMutableArray array];
  v12 = [existingMembersCopy mutableCopy];
  [v12 minusSet:membersCopy];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [IDSDestination destinationWithTUConversationMember:*(*(&v49 + 1) + 8 * i)];
        [v11 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v15);
  }

  if (locallyCopy)
  {
    v36 = locallyCopy;
    v37 = existingMembersCopy;
    v38 = membersCopy;
    v35 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
    [(CSDMessagingConversationParticipantDidJoinContext *)v35 setTuConversationMembers:v13];
    v19 = objc_alloc_init(CSDMessagingConversationMessage);
    [(CSDMessagingConversationMessage *)v19 setType:19];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = participantsCopy;
    v21 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v45 + 1) + 8 * j);
          v26 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v25];
          if ([v25 isLightweight])
          {
            [(CSDMessagingConversationMessage *)v19 addActiveLightweightParticipants:v26];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v19 addActiveParticipants:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v22);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    membersCopy = v38;
    v27 = v38;
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [CSDMessagingConversationMember memberWithTUConversationMember:*(*(&v41 + 1) + 8 * k)];
          [(CSDMessagingConversationMessage *)v19 addRemovedMembers:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v29);
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v35 setMessage:v19];
    data = [(CSDMessagingConversationParticipantDidJoinContext *)v35 data];

    existingMembersCopy = v37;
    locallyCopy = v36;
  }

  else
  {
    data = 0;
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider updateParticipantDestinationIDs:v11 withContextData:data triggeredLocally:locallyCopy];
}

- (void)addMembers:(id)members toExistingMembers:(id)existingMembers activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)handles report:(id)report invitationPreferences:(id)self0 requiredCapabilities:(id)self1 messagesGroupUUID:(id)self2 messagesGroupName:(id)self3 addingFromLetMeIn:(BOOL)self4 triggeredLocally:(BOOL)self5 highlightIdentifier:(id)self6 stagedActivitySession:(id)self7 avMode:(unint64_t)self8
{
  membersCopy = members;
  existingMembersCopy = existingMembers;
  participantsCopy = participants;
  sessionsCopy = sessions;
  linkCopy = link;
  handlesCopy = handles;
  reportCopy = report;
  preferencesCopy = preferences;
  capabilitiesCopy = capabilities;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  sessionCopy = session;
  v23 = +[NSMutableArray array];
  v144 = +[NSMutableArray array];
  v146 = +[NSMutableArray array];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = membersCopy;
  v24 = [obj countByEnumeratingWithState:&v180 objects:v193 count:16];
  v148 = v23;
  if (v24)
  {
    v25 = v24;
    v145 = 0;
    v140 = 0;
    v26 = *v181;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v181 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v180 + 1) + 8 * i);
        v29 = [IDSDestination destinationWithTUConversationMember:v28];
        [v23 addObject:v29];
        handle = [v28 handle];
        value = [handle value];
        destinationIdIsPseudonym = [value destinationIdIsPseudonym];

        if (destinationIdIsPseudonym)
        {
          [v146 addObject:v29];
        }

        else
        {
          handle2 = [v28 handle];
          value2 = [handle2 value];
          destinationIdIsTemporary = [value2 destinationIdIsTemporary];

          if (destinationIdIsTemporary)
          {
            v36 = [IDSDestination destinationWithTUConversationMember:v28];
            [v144 addObject:v36];
          }

          else
          {
            v37 = +[TUIDSLookupManager sharedManager];
            idsDestination = [v28 idsDestination];
            v39 = [v37 faceTimeMultiwayAvailabilityForDestination:idsDestination];

            if (v39)
            {
              v40 = +[TUIDSLookupManager sharedManager];
              idsDestination2 = [v28 idsDestination];
              v42 = [v40 isWebCapableFaceTimeAvailableForDestination:idsDestination2];

              v145 |= v42;
            }

            else
            {
              v140 = 1;
            }
          }
        }

        v23 = v148;
      }

      v25 = [obj countByEnumeratingWithState:&v180 objects:v193 count:16];
    }

    while (v25);
  }

  else
  {
    v145 = 0;
    v140 = 0;
  }

  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v142 = existingMembersCopy;
  v43 = [v142 countByEnumeratingWithState:&v176 objects:v192 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v177;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v177 != v45)
        {
          objc_enumerationMutation(v142);
        }

        v47 = *(*(&v176 + 1) + 8 * j);
        v48 = [IDSDestination destinationWithTUConversationMember:v47];
        [v148 addObject:v48];
        handle3 = [v47 handle];
        value3 = [handle3 value];
        destinationIdIsPseudonym2 = [value3 destinationIdIsPseudonym];

        if (destinationIdIsPseudonym2)
        {
          v52 = v146;
LABEL_26:
          [v52 addObject:v48];
          goto LABEL_28;
        }

        handle4 = [v47 handle];
        value4 = [handle4 value];
        destinationIdIsTemporary2 = [value4 destinationIdIsTemporary];

        if (destinationIdIsTemporary2)
        {
          v52 = v144;
          goto LABEL_26;
        }

        v56 = +[TUIDSLookupManager sharedManager];
        idsDestination3 = [v47 idsDestination];
        [v56 faceTimeMultiwayAvailabilityForDestination:idsDestination3];

        v58 = +[TUIDSLookupManager sharedManager];
        idsDestination4 = [v47 idsDestination];
        v60 = [v58 isWebCapableFaceTimeAvailableForDestination:idsDestination4];

        v145 |= v60;
LABEL_28:
      }

      v44 = [v142 countByEnumeratingWithState:&v176 objects:v192 count:16];
    }

    while (v44);
  }

  locallyCopy2 = locally;
  if (locally)
  {
    v62 = participantsCopy;
    selfCopy2 = self;
    v64 = &_s10Foundation3URLVMa_ptr_0;
    if ([v144 count])
    {
      if (v145)
      {
        [(CSDIDSGroupSession *)self addMembers:obj toExistingMembers:v142 participantDestinationIDs:v148 webDestinationIDs:v144 activeParticipants:participantsCopy activitySessions:sessionsCopy link:linkCopy otherInvitedHandles:handlesCopy report:reportCopy invitationPreferences:preferencesCopy];
      }

      else if (v140)
      {
        v67 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v148 count]);
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v68 = v148;
        v69 = [v68 countByEnumeratingWithState:&v172 objects:v191 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v173;
          do
          {
            for (k = 0; k != v70; k = k + 1)
            {
              if (*v173 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v172 + 1) + 8 * k);
              if (([v144 containsObject:v73] & 1) == 0)
              {
                destinationURIs = [v73 destinationURIs];
                allObjects = [destinationURIs allObjects];
                [v67 addObjectsFromArray:allObjects];

                v64 = &_s10Foundation3URLVMa_ptr_0;
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v172 objects:v191 count:16];
          }

          while (v70);
        }

        v77 = sub_100004778(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v188 = v67;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Querying for capabilities of call members using native destinations: %@", buf, 0xCu);
        }

        sharedManager = [v64[206] sharedManager];
        v161[0] = _NSConcreteStackBlock;
        v161[1] = 3221225472;
        v161[2] = sub_1001BBD48;
        v161[3] = &unk_10061DA08;
        v161[4] = self;
        v162 = obj;
        v163 = v142;
        v164 = v68;
        v165 = v144;
        v166 = participantsCopy;
        v167 = sessionsCopy;
        v168 = linkCopy;
        v169 = handlesCopy;
        v170 = reportCopy;
        selfCopy2 = self;
        v171 = preferencesCopy;
        [sharedManager queryHasWebOnlyEndpointsForDestinations:v67 completionBlock:v161];
      }
    }

    v79 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setTuConversationMembers:v142];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setIsScreenSharingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setIsGondolaCallingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setVisionFeatureVersion:TUVisionFeatureVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setIsTranslationAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setMessagesGroupName:nameCopy];
    uUIDString = [dCopy UUIDString];
    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setMessagesGroupUUIDString:uUIDString];

    v81 = objc_alloc_init(CSDMessagingConversationMessage);
    v82 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:reportCopy];
    [(CSDMessagingConversationMessage *)v81 setReportData:v82];

    v84 = sub_100004778(v83);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      reportData = [(CSDMessagingConversationMessage *)v81 reportData];
      *buf = 136315394;
      v188 = "[CSDIDSGroupSession addMembers:toExistingMembers:activeParticipants:activitySessions:link:otherInvitedHandles:report:invitationPreferences:requiredCapabilities:messagesGroupUUID:messagesGroupName:addingFromLetMeIn:triggeredLocally:highlightIdentifier:stagedActivitySession:avMode:]";
      v189 = 2112;
      v190 = reportData;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%s: Conversation report = %@", buf, 0x16u);
    }

    [(CSDMessagingConversationMessage *)v81 setType:3];
    featureFlags = [(CSDIDSGroupSession *)selfCopy2 featureFlags];
    if ([featureFlags nearbyFaceTimeEnabled])
    {
      requiredCapabilities = [(CSDIDSGroupSession *)selfCopy2 requiredCapabilities];
      v88 = IDSRegistrationPropertySupportsNearbyFaceTime;
      v89 = [requiredCapabilities containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

      if (v89)
      {
        if (preferencesCopy && (+[TUConversationInvitationPreference nearbyInvitationPreferences](TUConversationInvitationPreference, "nearbyInvitationPreferences"), v90 = objc_claimAutoreleasedReturnValue(), v91 = [preferencesCopy isEqualToSet:v90], v90, (v91 & 1) == 0))
        {
          v94 = [NSSet setWithObject:v88];
          [(CSDIDSGroupSession *)self removeRequiredCapabilities:v94 requiredLackOfCapabilities:0];

          v92 = v81;
          v93 = 0;
        }

        else
        {
          v92 = v81;
          v93 = 1;
        }

        [(CSDMessagingConversationMessage *)v92 setIsNearbySession:v93];
      }
    }

    else
    {
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v95 = participantsCopy;
    v96 = [v95 countByEnumeratingWithState:&v157 objects:v186 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = *v158;
      do
      {
        for (m = 0; m != v97; m = m + 1)
        {
          if (*v158 != v98)
          {
            objc_enumerationMutation(v95);
          }

          v100 = *(*(&v157 + 1) + 8 * m);
          v101 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v100];
          if ([v100 isLightweight])
          {
            [(CSDMessagingConversationMessage *)v81 addActiveLightweightParticipants:v101];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v81 addActiveParticipants:v101];
          }
        }

        v97 = [v95 countByEnumeratingWithState:&v157 objects:v186 count:16];
      }

      while (v97);
    }

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v102 = obj;
    v103 = [v102 countByEnumeratingWithState:&v153 objects:v185 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v154;
      do
      {
        for (n = 0; n != v104; n = n + 1)
        {
          if (*v154 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = *(*(&v153 + 1) + 8 * n);
          isLightweightMember = [v107 isLightweightMember];
          v109 = [CSDMessagingConversationMember memberWithTUConversationMember:v107];
          if (isLightweightMember)
          {
            [(CSDMessagingConversationMessage *)v81 addLightweightMembers:v109];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v81 addAddedMembers:v109];
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v153 objects:v185 count:16];
      }

      while (v104);
    }

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v110 = sessionsCopy;
    v111 = [v110 countByEnumeratingWithState:&v149 objects:v184 count:16];
    v66 = linkCopy;
    if (v111)
    {
      v112 = v111;
      v113 = *v150;
      do
      {
        for (ii = 0; ii != v112; ii = ii + 1)
        {
          if (*v150 != v113)
          {
            objc_enumerationMutation(v110);
          }

          [(CSDMessagingConversationMessage *)v81 addActivitySessions:*(*(&v149 + 1) + 8 * ii)];
        }

        v112 = [v110 countByEnumeratingWithState:&v149 objects:v184 count:16];
      }

      while (v112);
    }

    if (linkCopy)
    {
      v115 = [CSDMessagingConversationLink linkWithTUConversationLink:linkCopy includeGroupUUID:1];
      [(CSDMessagingConversationMessage *)v81 setLink:v115];

      groupUUID = [linkCopy groupUUID];
      [(CSDMessagingConversationMessage *)v81 setConversationGroupUUID:groupUUID];
    }

    if (preferencesCopy)
    {
      [(CSDMessagingConversationMessage *)v81 setTUInvitationPreferences:?];
    }

    if (in)
    {
      [(CSDMessagingConversationMessage *)v81 setIsLetMeInApproved:1];
    }

    if (identifierCopy)
    {
      [(CSDMessagingConversationMessage *)v81 setHighlightIdentifier:?];
    }

    [(CSDMessagingConversationMessage *)v81 setStagedActivitySession:sessionCopy];
    featureFlags2 = [(CSDIDSGroupSession *)self featureFlags];
    avLessSharePlayEnabled = [featureFlags2 avLessSharePlayEnabled];

    if (avLessSharePlayEnabled)
    {
      [(CSDMessagingConversationMessage *)v81 setAvMode:mode];
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v79 setMessage:v81];
    data = [(CSDMessagingConversationParticipantDidJoinContext *)v79 data];

    locallyCopy2 = locally;
  }

  else
  {
    data = 0;
    v62 = participantsCopy;
    v66 = linkCopy;
  }

  if ([v146 count])
  {
    if ([capabilitiesCopy count])
    {
      [NSMutableSet setWithArray:capabilitiesCopy];
    }

    else
    {
      +[NSMutableSet set];
    }
    v119 = ;
    [v119 addObject:IDSRegistrationPropertySupportsModernGFT];
    [(CSDIDSGroupSession *)self addRequiredCapabilities:v119 requiredLackOfCapabilities:0];
  }

  if (locallyCopy2 && ([v144 count] || objc_msgSend(v146, "count")))
  {
    if ([capabilitiesCopy count])
    {
      [NSMutableSet setWithArray:capabilitiesCopy];
    }

    else
    {
      +[NSMutableSet set];
    }
    v123 = ;
    v125 = preferencesCopy;
    [v123 addObject:IDSRegistrationPropertySupportsGondola];
    [v123 addObject:IDSRegistrationPropertySupportsModernGFT];
    sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
    allObjects2 = [v123 allObjects];
    v124 = v148;
    [sessionProvider updateParticipantDestinationIDs:v148 withContextData:data requiredCapabilities:allObjects2 requiredLackOfCapabilities:&__NSArray0__struct triggeredLocally:1];

    v120 = capabilitiesCopy;
  }

  else
  {
    v120 = capabilitiesCopy;
    v121 = [capabilitiesCopy count];
    sessionProvider2 = [(CSDIDSGroupSession *)self sessionProvider];
    v123 = sessionProvider2;
    v124 = v148;
    if (v121)
    {
      [sessionProvider2 updateParticipantDestinationIDs:v148 withContextData:data requiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:&__NSArray0__struct triggeredLocally:locallyCopy2];
    }

    else
    {
      [sessionProvider2 updateParticipantDestinationIDs:v148 withContextData:data triggeredLocally:locallyCopy2];
    }

    v125 = preferencesCopy;
  }
}

- (void)addMembers:(id)members toExistingMembers:(id)existingMembers participantDestinationIDs:(id)ds webDestinationIDs:(id)iDs activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)self0 report:(id)self1 invitationPreferences:(id)self2
{
  membersCopy = members;
  existingMembersCopy = existingMembers;
  dsCopy = ds;
  participantsCopy = participants;
  sessionsCopy = sessions;
  linkCopy = link;
  handlesCopy = handles;
  reportCopy = report;
  preferencesCopy = preferences;
  v85 = [membersCopy mutableCopy];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = membersCopy;
  v19 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v104;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v104 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v103 + 1) + 8 * i);
        handle = [v23 handle];
        value = [handle value];
        destinationIdIsTemporary = [value destinationIdIsTemporary];

        if (destinationIdIsTemporary)
        {
          [v85 removeObject:v23];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
    }

    while (v20);
  }

  if ([v85 count])
  {
    v77 = linkCopy;
    v27 = [existingMembersCopy mutableCopy];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v28 = existingMembersCopy;
    v29 = [v28 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v100;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v100 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v99 + 1) + 8 * j);
          handle2 = [v33 handle];
          value2 = [handle2 value];
          destinationIdIsTemporary2 = [value2 destinationIdIsTemporary];

          if (destinationIdIsTemporary2)
          {
            [v27 removeObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v30);
    }

    v37 = [handlesCopy mutableCopy];
    v38 = [v27 count];
    if (&v38[[v85 count]] <= 2)
    {
      do
      {
        if (![v37 count])
        {
          break;
        }

        anyObject = [v37 anyObject];
        v40 = [[TUConversationMember alloc] initWithHandle:anyObject];
        [v85 addObject:v40];
        [v37 removeObject:anyObject];

        v41 = [v27 count];
      }

      while (&v41[[v85 count]] < 3);
    }

    v75 = v37;
    v42 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
    v76 = v27;
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setTuConversationMembers:v27];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setIsScreenSharingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setIsGondolaCallingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setVisionFeatureVersion:TUVisionFeatureVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
    v74 = v42;
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
    v43 = objc_alloc_init(CSDMessagingConversationMessage);
    v44 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:reportCopy];
    [(CSDMessagingConversationMessage *)v43 setReportData:v44];

    [(CSDMessagingConversationMessage *)v43 setType:3];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v45 = participantsCopy;
    v46 = [v45 countByEnumeratingWithState:&v95 objects:v111 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v96;
      do
      {
        for (k = 0; k != v47; k = k + 1)
        {
          if (*v96 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v95 + 1) + 8 * k);
          handle3 = [v50 handle];
          value3 = [handle3 value];
          destinationIdIsTemporary3 = [value3 destinationIdIsTemporary];

          if ((destinationIdIsTemporary3 & 1) == 0)
          {
            v54 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v50];
            [(CSDMessagingConversationMessage *)v43 addActiveParticipants:v54];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v47);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v55 = v85;
    v56 = [v55 countByEnumeratingWithState:&v91 objects:v110 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v92;
      do
      {
        for (m = 0; m != v57; m = m + 1)
        {
          if (*v92 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v91 + 1) + 8 * m);
          isLightweightMember = [v60 isLightweightMember];
          v62 = [CSDMessagingConversationMember memberWithTUConversationMember:v60];
          if (isLightweightMember)
          {
            [(CSDMessagingConversationMessage *)v43 addLightweightMembers:v62];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v43 addAddedMembers:v62];
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v91 objects:v110 count:16];
      }

      while (v57);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v63 = sessionsCopy;
    v64 = [v63 countByEnumeratingWithState:&v87 objects:v109 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v88;
      do
      {
        for (n = 0; n != v65; n = n + 1)
        {
          if (*v88 != v66)
          {
            objc_enumerationMutation(v63);
          }

          [(CSDMessagingConversationMessage *)v43 addActivitySessions:*(*(&v87 + 1) + 8 * n)];
        }

        v65 = [v63 countByEnumeratingWithState:&v87 objects:v109 count:16];
      }

      while (v65);
    }

    linkCopy = v77;
    if (v77)
    {
      v68 = [CSDMessagingConversationLink linkWithTUConversationLink:v77 includeGroupUUID:1];
      [(CSDMessagingConversationMessage *)v43 setLink:v68];

      groupUUID = [v77 groupUUID];
      [(CSDMessagingConversationMessage *)v43 setConversationGroupUUID:groupUUID];
    }

    if (preferencesCopy)
    {
      [(CSDMessagingConversationMessage *)v43 setTUInvitationPreferences:?];
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v74 setMessage:v43];
    data = [(CSDMessagingConversationParticipantDidJoinContext *)v74 data];
    sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
    v108 = IDSRegistrationPropertySupportsGondola;
    v72 = [NSArray arrayWithObjects:&v108 count:1];
    v107 = IDSRegistrationPropertySupportsModernGFT;
    v73 = [NSArray arrayWithObjects:&v107 count:1];
    [sessionProvider updateParticipantDestinationIDs:dsCopy withContextData:data requiredCapabilities:v72 requiredLackOfCapabilities:v73 triggeredLocally:1];
  }
}

- (void)sendLocalParticipant:(id)participant
{
  participantCopy = participant;
  v11 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:participantCopy];
  data = [v11 data];
  v6 = [data copy];

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider updateParticipantInfo:v6];

  [v11 setAvcData:0];
  sessionProvider2 = [(CSDIDSGroupSession *)self sessionProvider];
  avcData = [participantCopy avcData];

  data2 = [v11 data];
  [sessionProvider2 sendParticipantData:avcData withContext:data2];
}

- (void)updateLocalParticipantInfo:(id)info
{
  v6 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:info];
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  data = [v6 data];
  [sessionProvider updateParticipantInfo:data];
}

- (void)requestActiveParticipants
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "requestActiveParticipants self: %@", &v5, 0xCu);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider requestActiveParticipants];
}

- (void)leaveGroupSessionWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    v6 = objc_alloc_init(CSDMessagingConversationParticipantDidLeaveContext);
    contextCopy = -[CSDMessagingConversationParticipantDidLeaveContext setLeaveReason:](v6, "setLeaveReason:", [v5 leaveReason]);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Leaving with participantLeaveContext: %@", buf, 0xCu);
  }

  data = [(CSDMessagingConversationParticipantDidLeaveContext *)v6 data];

  if (data)
  {
    data2 = [(CSDMessagingConversationParticipantDidLeaveContext *)v6 data];
    v10 = [NSDictionary dictionaryWithObjectsAndKeys:data2, IDSGroupSessionClientContextDataKey, 0];
  }

  else
  {
    v10 = +[NSDictionary dictionary];
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider leaveWithOptions:v10];
}

- (void)registerPluginWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = optionsCopy;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "registerPluginWithOptions:%@ self: %@", &v7, 0x16u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider registerPluginWithOptions:optionsCopy];
}

- (void)restart
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "restart self: %@", &v5, 0xCu);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider restart];
}

- (void)reconnect
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reconnect self: %@", &v5, 0xCu);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider reconnect];
}

- (void)kickMember:(id)member
{
  memberCopy = member;
  v5 = sub_100004778(memberCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = memberCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "member: %@", &v9, 0xCu);
  }

  idsDestinations = [memberCopy idsDestinations];
  v7 = [NSArray arrayWithArray:idsDestinations];

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider kickParticipants:v7];
}

- (void)allowMember:(id)member
{
  memberCopy = member;
  v5 = sub_100004778(memberCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = memberCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "member: %@", &v9, 0xCu);
  }

  idsDestinations = [memberCopy idsDestinations];
  v7 = [NSArray arrayWithArray:idsDestinations];

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider allowParticipants:v7];
}

- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v8 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = topicCopy;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestDataCryptorForTopic: %@ self: %@", &v10, 0x16u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider requestDataCryptorForTopic:topicCopy completionHandler:handlerCopy];
}

- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic
{
  participantsCopy = participants;
  topicCopy = topic;
  v8 = sub_100004778(topicCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = participantsCopy;
    v12 = 2112;
    v13 = topicCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestEncryptionKeyForParticipants: %@ topic: %@ self: %@", &v10, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider requestEncryptionKeyForParticipants:participantsCopy topic:topicCopy];
}

- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt
{
  containerCopy = container;
  saltCopy = salt;
  v8 = sub_100004778(saltCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = containerCopy;
    v12 = 2112;
    v13 = saltCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addAliasesToConversationContainer: %@ salt: %@ self: %@", &v10, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider addAliasesToConversationContainer:containerCopy withSalt:saltCopy];
}

- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt
{
  saltCopy = salt;
  v7 = sub_100004778(saltCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    dCopy = d;
    v13 = 2112;
    v14 = saltCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "aliasForParticipantID: %llu salt: %@ self: %@", &v11, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  v9 = [sessionProvider aliasForParticipantID:d salt:saltCopy];

  return v9;
}

- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion
{
  saltCopy = salt;
  completionCopy = completion;
  v10 = sub_100004778(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218498;
    aliasCopy = alias;
    v14 = 2112;
    v15 = saltCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participantIDForAlias: %llu salt: %@ self: %@", &v12, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider participantIDForAlias:alias salt:saltCopy completion:completionCopy];
}

- (NSSet)requiredCapabilities
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  requiredCapabilities = [sessionProvider requiredCapabilities];

  return requiredCapabilities;
}

- (NSSet)requiredLackOfCapabilities
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  requiredLackOfCapabilities = [sessionProvider requiredLackOfCapabilities];

  return requiredLackOfCapabilities;
}

- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v8 = sub_100004778(ofCapabilitiesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = capabilitiesCopy;
    v13 = 2112;
    v14 = ofCapabilitiesCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addRequiredCapabilities: %@ requiredLackOfCapabilities: %@ self: %@", &v11, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider addRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didAddRequiredCapabilities:capabilitiesCopy];
}

- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v8 = sub_100004778(ofCapabilitiesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = capabilitiesCopy;
    v13 = 2112;
    v14 = ofCapabilitiesCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removeRequiredCapabilities: %@ requiredLackOfCapabilities: %@ self: %@", &v11, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider removeRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didRemoveRequiredCapabilities:capabilitiesCopy];
}

- (void)setParticipantType:(unsigned __int16)type forParticipant:(id)participant members:(id)members isLocalParticipant:(BOOL)localParticipant withContext:(id)context timestamp:(id)timestamp identifier:(unint64_t)identifier
{
  localParticipantCopy = localParticipant;
  typeCopy = type;
  participantCopy = participant;
  membersCopy = members;
  contextCopy = context;
  timestampCopy = timestamp;
  v19 = sub_100004778(timestampCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134219010;
    v20 = @"NO";
    v25 = typeCopy;
    v26 = 2112;
    if (localParticipantCopy)
    {
      v20 = @"YES";
    }

    v27 = v20;
    v28 = 2112;
    v29 = participantCopy;
    v30 = 2112;
    v31 = membersCopy;
    v32 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "setParticipantType: %ld isLocalParticipant: %@, for forParticipant: %@, members: %@, identifier: %llu", &v24, 0x34u);
  }

  v21 = [(CSDIDSGroupSession *)self _updateParticipantDestinationIDForParticipant:participantCopy members:membersCopy];
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  v23 = sessionProvider;
  if (localParticipantCopy)
  {
    [sessionProvider setLocalParticipantType:typeCopy memberDestinations:v21 withContext:contextCopy timestamp:timestampCopy identifier:identifier];
  }

  else
  {
    [sessionProvider setParticipantType:typeCopy forRemoteMemberDestinations:v21];
  }
}

- (void)setParticipantType:(unsigned __int16)type forParticipant:(id)participant members:(id)members isLocalParticipant:(BOOL)localParticipant
{
  localParticipantCopy = localParticipant;
  typeCopy = type;
  participantCopy = participant;
  membersCopy = members;
  v12 = sub_100004778(membersCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v15 = typeCopy;
    v13 = @"YES";
    v16 = 2112;
    if (!localParticipantCopy)
    {
      v13 = @"NO";
    }

    v17 = v13;
    v18 = 2112;
    v19 = participantCopy;
    v20 = 2112;
    v21 = membersCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setParticipantType: %ld isLocalParticipant: %@, for forParticipant: %@, members: %@", buf, 0x2Au);
  }

  [(CSDIDSGroupSession *)self setParticipantType:typeCopy forParticipant:participantCopy members:membersCopy isLocalParticipant:localParticipantCopy withContext:0 timestamp:&off_10063ED68 identifier:0];
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (screeningCopy)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDIDSGroupSession: setScreening: %@", &v8, 0xCu);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider setScreening:screeningCopy];
}

- (void)setIsUnderlyingLinksConnected:(BOOL)connected
{
  connectedCopy = connected;
  featureFlags = [(CSDIDSGroupSession *)self featureFlags];
  callRecordingEnabled = [featureFlags callRecordingEnabled];

  if (callRecordingEnabled)
  {
    isUnderlyingLinksConnected = [(CSDIDSGroupSession *)self isUnderlyingLinksConnected];
    if (isUnderlyingLinksConnected != connectedCopy)
    {
      v8 = sub_100004778(isUnderlyingLinksConnected);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"NO";
        if (connectedCopy)
        {
          v9 = @"YES";
        }

        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting underlying network link status to %@", &v11, 0xCu);
      }

      self->_isUnderlyingLinksConnected = connectedCopy;
      delegate = [(CSDIDSGroupSession *)self delegate];
      [delegate session:self didReceiveUnderlyingLinksStatus:connectedCopy];
    }
  }
}

- (id)_updateParticipantDestinationIDForParticipant:(id)participant members:(id)members
{
  participantCopy = participant;
  membersCopy = members;
  participantDestinationIDs = [(CSDIDSGroupSession *)self participantDestinationIDs];
  v9 = [participantDestinationIDs mutableCopy];

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "participantDestinationIDs: %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = membersCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v33;
    *&v14 = 138412290;
    v31 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        handle = [v18 handle];
        handle2 = [participantCopy handle];
        v21 = [handle isEqualToHandle:handle2];

        if (v21)
        {
          v22 = [IDSDestination destinationWithTUConversationMember:v18];
          v23 = [v9 containsObject:v22];
          if (v23)
          {
            [v9 removeObject:v22];
            tuConversationParticipant = [participantCopy tuConversationParticipant];
            v25 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant];
            [v9 addObject:v25];

            v27 = sub_100004778(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              tuConversationParticipant2 = [participantCopy tuConversationParticipant];
              *buf = 138412546;
              v37 = v22;
              v38 = 2112;
              v39 = tuConversationParticipant2;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "_updateParticipantDestinationIDForParticipant: remove: %@, add: %@", buf, 0x16u);
            }
          }

          else
          {
            v27 = sub_100004778(v23);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v31;
              v37 = v22;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "_updateParticipantDestinationIDForParticipant: couldn't find idsDestination: %@", buf, 0xCu);
            }
          }
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = [v9 copy];

  return v29;
}

- (id)idsDestinationForActiveParticipant:(id)participant
{
  participantCopy = participant;
  participantPushToken = [participantCopy participantPushToken];
  if (participantPushToken && (v5 = participantPushToken, [participantCopy participantURI], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    participantPushToken2 = [participantCopy participantPushToken];
    participantURI = [participantCopy participantURI];
    participantURI2 = IDSCopyIDForTokenWithID();
  }

  else
  {
    participantURI2 = [participantCopy participantURI];
  }

  return participantURI2;
}

- (unint64_t)callTypeForJoinContext:(id)context
{
  contextCopy = context;
  featureFlags = [(CSDIDSGroupSession *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [contextCopy provider];
    supportsVideo = [provider supportsVideo];
  }

  else
  {
    supportsVideo = 1;
  }

  if (([contextCopy isVideo] & supportsVideo) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (void)sessionProvider:(id)provider endedWithReason:(unsigned int)reason error:(id)error
{
  v6 = *&reason;
  providerCopy = provider;
  errorCopy = error;
  v10 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 1024;
    v15 = v6;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ reason: %d error: %@", &v12, 0x1Cu);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self endedWithError:errorCopy reason:v6];
}

- (void)sessionProvider:(id)provider didJoinGroupWithParticipantIdentifiers:(id)identifiers localParticipantIdentifier:(unint64_t)identifier error:(id)error
{
  providerCopy = provider;
  identifiersCopy = identifiers;
  errorCopy = error;
  v13 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = providerCopy;
    v28 = 2112;
    v29 = identifiersCopy;
    v30 = 2048;
    identifierCopy = identifier;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ participantIDs: %@ localParticipantID: %llu error: %@", buf, 0x2Au);
  }

  [(CSDIDSGroupSession *)self setLocalParticipantIdentifier:identifier];
  [(CSDIDSGroupSession *)self setJoined:errorCopy == 0];
  v14 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [identifiersCopy allValues];
  v16 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(allValues);
        }

        [v14 addObjectsFromArray:*(*(&v21 + 1) + 8 * v19)];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didJoinGroup:-[CSDIDSGroupSession isJoined](self participantIdentifiers:"isJoined") error:{v14, errorCopy}];
}

- (void)sessionProvider:(id)provider didLeaveGroupWithError:(id)error
{
  providerCopy = provider;
  errorCopy = error;
  v8 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = providerCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ error: %@", &v10, 0x16u);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didLeaveGroupWithError:errorCopy];
}

- (void)sessionProvider:(id)provider didReceiveLocalParticipantType:(unsigned __int16)type requestIdentifier:(unint64_t)identifier error:(id)error
{
  typeCopy = type;
  providerCopy = provider;
  errorCopy = error;
  v12 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    v15 = providerCopy;
    v16 = 2048;
    v17 = typeCopy;
    v18 = 2048;
    identifierCopy = identifier;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ participantType: %ld, requestIdentifier: %llu error: %@", &v14, 0x2Au);
  }

  if (!errorCopy)
  {
    [(CSDIDSGroupSession *)self setLocalParticipantType:typeCopy];
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveLocalParticipantType:typeCopy requestIdentifier:identifier error:errorCopy];
}

- (void)sessionProviderDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  v5 = sub_100004778(terminateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = terminateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sessionProviderDidTerminate: %@", &v7, 0xCu);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate sessionDidTerminate:self];
}

- (void)sessionProvider:(id)provider didReceiveActiveParticipants:(id)participants success:(BOOL)success
{
  successCopy = success;
  providerCopy = provider;
  participantsCopy = participants;
  v10 = sub_100004778(participantsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = providerCopy;
    v44 = 2112;
    v45 = participantsCopy;
    v46 = 1024;
    v47 = successCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ activeParticipants: %@ success: %d", buf, 0x1Cu);
  }

  if (successCopy)
  {
    v35 = providerCopy;
    [(CSDIDSGroupSession *)self setRetryCount:0];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [participantsCopy count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = participantsCopy;
    obj = participantsCopy;
    v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [(CSDIDSGroupSession *)self idsDestinationForActiveParticipant:v17];
          selfCopy = self;
          v20 = v18;
          if (v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = &stru_100631E68;
          }

          v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v17 participantIdentifier]);
          [v12 setObject:v21 forKeyedSubscript:v22];

          self = selfCopy;
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    delegate = [(CSDIDSGroupSession *)self delegate];
    [delegate session:self receivedActiveParticipantDestinationsByIdentifier:v12];

    participantsCopy = v34;
    providerCopy = v35;
  }

  else
  {
    v24 = sub_100004778(v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Received an error for active remote participants", buf, 2u);
    }

    retryCount = [(CSDIDSGroupSession *)self retryCount];
    serverBag = [(CSDIDSGroupSession *)self serverBag];
    maxActiveParticipantFetchRetries = [serverBag maxActiveParticipantFetchRetries];

    if (retryCount >= maxActiveParticipantFetchRetries)
    {
      v31 = sub_100004778(v28);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        serverBag2 = [(CSDIDSGroupSession *)self serverBag];
        maxActiveParticipantFetchRetries2 = [serverBag2 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v43 = maxActiveParticipantFetchRetries2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying requestActiveParticipants, max retry count (%lu) reached", buf, 0xCu);
      }
    }

    else
    {
      v29 = sub_100004778([(CSDIDSGroupSession *)self setRetryCount:[(CSDIDSGroupSession *)self retryCount]+ 1]);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        retryCount2 = [(CSDIDSGroupSession *)self retryCount];
        *buf = 134217984;
        v43 = retryCount2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying requestActiveParticipants, retry_count=%lu", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)self requestActiveParticipants];
    }
  }
}

- (void)sessionProvider:(id)provider didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success
{
  successCopy = success;
  providerCopy = provider;
  participantsCopy = participants;
  v10 = sub_100004778(participantsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = providerCopy;
    v44 = 2112;
    v45 = participantsCopy;
    v46 = 1024;
    v47 = successCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveActiveLightweightParticipants: %@ success: %d", buf, 0x1Cu);
  }

  if (successCopy)
  {
    v35 = providerCopy;
    [(CSDIDSGroupSession *)self setLightweightRetryCount:0];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [participantsCopy count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = participantsCopy;
    obj = participantsCopy;
    v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [(CSDIDSGroupSession *)self idsDestinationForActiveParticipant:v17];
          selfCopy = self;
          v20 = v18;
          if (v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = &stru_100631E68;
          }

          v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v17 participantIdentifier]);
          [v12 setObject:v21 forKeyedSubscript:v22];

          self = selfCopy;
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    delegate = [(CSDIDSGroupSession *)self delegate];
    [delegate session:self receivedActiveLightweightParticipantDestinationsByIdentifier:v12];

    participantsCopy = v34;
    providerCopy = v35;
  }

  else
  {
    v24 = sub_100004778(v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Received an error for active remote participants", buf, 2u);
    }

    lightweightRetryCount = [(CSDIDSGroupSession *)self lightweightRetryCount];
    serverBag = [(CSDIDSGroupSession *)self serverBag];
    maxActiveParticipantFetchRetries = [serverBag maxActiveParticipantFetchRetries];

    if (lightweightRetryCount >= maxActiveParticipantFetchRetries)
    {
      v31 = sub_100004778(v28);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        serverBag2 = [(CSDIDSGroupSession *)self serverBag];
        maxActiveParticipantFetchRetries2 = [serverBag2 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v43 = maxActiveParticipantFetchRetries2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying requestActiveLightweightParticipants, max retry count (%lu) reached", buf, 0xCu);
      }
    }

    else
    {
      v29 = sub_100004778([(CSDIDSGroupSession *)self setLightweightRetryCount:[(CSDIDSGroupSession *)self lightweightRetryCount]+ 1]);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        lightweightRetryCount2 = [(CSDIDSGroupSession *)self lightweightRetryCount];
        *buf = 134217984;
        v43 = lightweightRetryCount2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying requestActiveLightweightParticipants, retry_count=%lu", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)self requestActiveParticipants];
    }
  }
}

- (void)sessionProvider:(id)provider didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v10 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 2048;
    dCopy = d;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveJoinedParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveJoinedParticipantID:d withContext:contextCopy];
}

- (void)sessionProvider:(id)provider didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v10 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 2048;
    dCopy = d;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveParticipantUpdateParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveParticipantUpdateParticipantID:d withContext:contextCopy];
}

- (void)sessionProvider:(id)provider didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v10 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 2048;
    dCopy = d;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveLeftParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveLeftParticipantID:d withContext:contextCopy];
}

- (void)sessionProvider:(id)provider didReceiveReport:(id)report
{
  reportCopy = report;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveReport:reportCopy];
}

- (void)sessionProvider:(id)provider didReceiveKickedParticipantIDs:(id)ds withCode:(unsigned int)code withType:(unsigned __int16)type isTruncated:(BOOL)truncated
{
  truncatedCopy = truncated;
  typeCopy = type;
  v9 = *&code;
  dsCopy = ds;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveKickedParticipantIDs:dsCopy withCode:v9 withType:typeCopy isTruncated:truncatedCopy];
}

- (void)sessionProvider:(id)provider didRegisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didRegisterPluginAllocationInfo:infoCopy];
}

- (void)sessionProvider:(id)provider didUnregisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didUnregisterPluginAllocationInfo:infoCopy];
}

- (void)sessionProviderDidReceiveKeyUpdate:(id)update
{
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate sessionDidReceiveKeyUpdate:self];
}

- (void)sessionProvider:(id)provider didReceiveDataBlob:(id)blob forParticipant:(id)participant
{
  participantCopy = participant;
  blobCopy = blob;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveDataBlob:blobCopy forParticipant:participantCopy];
}

- (void)sessionProvider:(id)provider didReceiveData:(id)data dataType:(unsigned __int16)type forParticipant:(id)participant
{
  typeCopy = type;
  participantCopy = participant;
  dataCopy = data;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveData:dataCopy dataType:typeCopy forParticipant:participantCopy];
}

- (void)sessionProvider:(id)provider didReceiveServerErrorCode:(unsigned int)code
{
  v4 = *&code;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveServerErrorCode:v4];
}

- (CSDIDSGroupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end