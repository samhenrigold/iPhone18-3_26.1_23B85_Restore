@interface CSDConversationManager
- (BOOL)_conversationIsOverGreenTeaCapacity:(id)capacity addingMembers:(id)members;
- (BOOL)_isActiveRemoteMemberForHandle:(id)handle conversation:(id)conversation;
- (BOOL)_isConversationDisallowedByGreenTeaForConversation:(id)conversation withUpdateContext:(id)context conversationProvider:(id)provider;
- (BOOL)_shouldNotifyDelegatesOfMessage:(id)message localHandleAdded:(BOOL)added isFromStorage:(BOOL)storage;
- (BOOL)_shouldRingForIncomingCallWithHandle:(id)handle conversation:(id)conversation isFromPendingMessage:(BOOL)message isOldMessage:(BOOL)oldMessage message:(id)a7;
- (BOOL)_shouldSkipManualApprovalForHandle:(id)handle conversation:(id)conversation responseKeyData:(id)data;
- (BOOL)allActiveConversationParticipantsSupportSharePlay;
- (BOOL)broadcastData:(id)data onConversation:(id)conversation additionalOptions:(id)options;
- (BOOL)broadcastFile:(id)file onConversation:(id)conversation additionalOptions:(id)options;
- (BOOL)conversationContainsScreenShareRequest:(id)request localRequest:(BOOL)localRequest requestHandle:(id)handle;
- (BOOL)hasActiveActivitySessionContainer;
- (BOOL)isConversationWithUUIDRedirectingAudio:(id)audio;
- (BOOL)isConversationWithUUIDRelaying:(id)relaying;
- (BOOL)isConversationWithUUIDScreening:(id)screening;
- (BOOL)isHandleLocalPseudonym:(id)pseudonym provider:(id)provider;
- (BOOL)isHandleStringLocalPseudonym:(id)pseudonym provider:(id)provider;
- (BOOL)isScreenSharingAvailable;
- (BOOL)isScreenSharingInitiationAvailable;
- (BOOL)isSharePlayAvailable;
- (BOOL)isValidLocalHandle:(id)handle;
- (BOOL)isValidLocalHandle:(id)handle activeLocalHandles:(id)handles provider:(id)provider;
- (BOOL)isValidLocalHandle:(id)handle forProvider:(id)provider;
- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d;
- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d additionalOptions:(id)options;
- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d fromMember:(id)member additionalOptions:(id)options isBlobResponse:(BOOL)response callback:(id)callback;
- (BOOL)sendData:(id)data onConversation:(id)conversation toHandle:(id)handle isBlobResponse:(BOOL)response;
- (BOOL)sendData:(id)data onConversation:(id)conversation toMember:(id)member additionalOptions:(id)options;
- (BOOL)sendMessagesForCreatedOrChangedLink:(id)link conversation:(id)conversation messageType:(int)type;
- (BOOL)sendMessagesForInvalidatedLink:(id)link;
- (BOOL)shouldAcceptMembershipUpdateFromHandle:(id)handle joinContext:(id)context participantUpdate:(id)update existingConversation:(id)conversation;
- (BOOL)shouldAcceptMessageFromHandle:(id)handle messageContext:(id)context message:(id)message existingConversation:(id)conversation;
- (BOOL)shouldCreatePendingChatForMessageType:(int64_t)type fromHandle:(id)handle;
- (BOOL)shouldIgnoreMessageForConversation:(id)conversation;
- (BOOL)verifyActivitySessionOriginatorFromHandle:(id)handle message:(id)message;
- (BOOL)verifyAllLightweightmembersAssociated:(id)associated remoteMembers:(id)members;
- (BOOL)verifyBlobResponseFromHandle:(id)handle message:(id)message existingConversation:(id)conversation;
- (BOOL)verifyEndorseRepresentsMemberFromHandle:(id)handle message:(id)message existingConversation:(id)conversation;
- (BOOL)verifyGroupSessionParticipantUpdateAllowedFromHandle:(id)handle participantUpdate:(id)update message:(id)message existingConversation:(id)conversation lightweightMembers:(id)members;
- (BOOL)verifyKickMemberPermittedFromHandle:(id)handle message:(id)message;
- (BOOL)verifyLightweightMessageTypeFromHandle:(id)handle message:(id)message existingConversation:(id)conversation;
- (BOOL)verifyMessageIntentKeyFromContext:(id)context message:(id)message;
- (CSDConduitIDSProxy)messageProxy;
- (CSDConversation)activeConversation;
- (CSDConversationManager)init;
- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager cpApplicationController:(id)applicationController invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)self0 applicationPolicyManager:(id)self1;
- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)flags;
- (CSDConversationManager)initWithReportingController:(id)controller cpApplicationController:(id)applicationController invitationResolver:(id)resolver;
- (FTDeviceSupport)deviceSupport;
- (NSDictionary)_conversationsByUUID;
- (NSDictionary)activityAuthorizedBundleIdentifierState;
- (NSDictionary)conversationsByGroupUUID;
- (NSDictionary)incomingPendingConversationsByGroupUUID;
- (NSDictionary)pseudonymsByCallUUID;
- (id)_getActivatedLinkWithHandle:(id)handle updateGroupUUID:(id)d updateInvitedHandles:(id)handles;
- (id)_inactiveRemoteMemberForHandle:(id)handle conversation:(id)conversation;
- (id)_incomingPendingConversationsByGroupUUID;
- (id)_kickedOrRejectedMemberForHandle:(id)handle conversation:(id)conversation;
- (id)_removePendingConversationWithPseudonym:(id)pseudonym;
- (id)_removePendingConversationsWithTemporaryGroupUUIDIfNecessary:(id)necessary;
- (id)activatedConversationLinksWithError:(id *)error;
- (id)activeApprovedConversationWithLink:(id)link;
- (id)activityAuthorizationStatePresentAlertIfIncapable:(BOOL)incapable;
- (id)advertisementsOnSystem;
- (id)callerIDForLocalMember:(id)member forProvider:(id)provider;
- (id)callerIDHandleForSenderIdentityUUID:(id)d callerID:(id)iD;
- (id)conversationLinkForGroupUUID:(id)d;
- (id)conversationLinkForPseudonym:(id)pseudonym;
- (id)conversationRepresentedByRemoteMembers:(id)members andLink:(id)link;
- (id)conversationWithGroupUUID:(id)d;
- (id)conversationWithGroupUUID:(id)d andProvider:(id)provider;
- (id)conversationWithGroupUUID:(id)d orMemberIdentifiers:(id)identifiers orRemoteMembers:(id)members andLink:(id)link andVideo:(BOOL)video;
- (id)conversationWithGroupUUID:(id)d orRepresentedByRemoteMembers:(id)members andLink:(id)link;
- (id)conversationsByUUIDIncludingStorageConversations:(BOOL)conversations;
- (id)createActivitySession:(id)session onConversation:(id)conversation fromHandle:(id)handle;
- (id)createCPActivitySessionForActivitySession:(id)session onConversationWithUUID:(id)d;
- (id)createConversationIfNecessaryWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member remoteMembers:(id)members pendingMembers:(id)pendingMembers otherInvitedHandles:(id)self0 remotePushTokens:(id)self1 lightweightMembers:(id)self2 link:(id)self3 activity:(id)self4 avMode:(unint64_t)self5 presentationMode:(unint64_t)self6 provider:(id)self7 screenSharingRequest:(id)self8;
- (id)createConversationWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)initiator remoteMembers:(id)members pendingMembers:(id)self0 otherInvitedHandles:(id)self1 remotePushTokens:(id)self2 lightweightMembers:(id)self3 activity:(id)self4 link:(id)self5 report:(id)self6 fromStorage:(BOOL)self7 avMode:(unint64_t)self8 presentationMode:(unint64_t)self9 provider:(id)provider screenSharingRequest:(id)request isInitiator:(BOOL)isInitiator isOldMessage:(BOOL)message;
- (id)deletedConversationLinksWithError:(id *)error;
- (id)findConversationLinkMatchingPseudonym:(id)pseudonym;
- (id)findOrCreateConversationWithGroupUUID:(id)d messagesGroupUUID:(id)iD remoteMembers:(id)members otherInvitedHandles:(id)handles localMember:(id)member remotePushTokens:(id)tokens link:(id)link activity:(id)self0 avMode:(unint64_t)self1 presentationMode:(unint64_t)self2 conversationProvider:(id)self3 screenSharingRequest:(id)self4;
- (id)initiatePendingConversationForLink:(id)link localMember:(id)member isVideoEnabled:(BOOL)enabled;
- (id)localMemberForProvider:(id)provider fromHandle:(id)handle members:(id)members lightweightMembers:(id)lightweightMembers activeLocalHandles:(id)handles;
- (id)memberExistsForParticipantDestination:(id)destination groupSessionParticipantUpdate:(id)update;
- (id)memberExistsForParticipantDestination:(id)destination members:(id)members;
- (id)pendingConversationUUIDWithPseudonym:(id)pseudonym;
- (id)pendingConversationWithPseudonym:(id)pseudonym;
- (id)pickInitiatorFromActiveParticipants:(id)participants forUpdate:(id)update;
- (id)pushTokenForSelf;
- (id)removePendingConversationWithPseudonym:(id)pseudonym;
- (id)senderIdentityUUIDForCallerIDHandle:(id)handle;
- (id)temporaryFilePath;
- (int)presentationStateForConversationWithUUID:(id)d;
- (void)_displaySharePlayUnableToStartAlert;
- (void)_leaveConversation:(id)conversation;
- (void)_leaveConversation:(id)conversation withContext:(id)context;
- (void)_runCallbackIfNecessaryForMessage:(id)message;
- (void)_sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member withMessage:(id)message;
- (void)_service:(id)_service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context attemptCount:(unint64_t)count;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)activateLink:(id)link completionHandler:(id)handler;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler;
- (void)addAliasesToConversationContainer:(id)container forBundleIdentifier:(id)identifier;
- (void)addCollaborationDictionary:(id)dictionary forConversationWithUUID:(id)d fromMe:(BOOL)me;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d;
- (void)addHighlightIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d;
- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler;
- (void)addInvitedMemberHandlesFromAddedRemoteMembers:(id)members toConversationLink:(id)link;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)addPseudonym:(id)pseudonym forCallUUID:(id)d;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversationWithUUID:(id)d;
- (void)addScreenSharingType:(unint64_t)type forConversationUUID:(id)d;
- (void)advertiseGroupActivity:(id)activity completionHandler:(id)handler;
- (void)applicationPolicyManager:(id)manager authorizationChangedForBundleIdentifier:(id)identifier;
- (void)approvePendingMember:(id)member forConversationUUID:(id)d;
- (void)beginListeningOnService:(id)service;
- (void)broadcastImageForSession:(id)session onConversation:(id)conversation;
- (void)broadcastLightweightEndorsementForAddedMembers:(id)members onConversation:(id)conversation;
- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversationUUID:(id)iD;
- (void)cancelOrDenyScreenShareRequest:(id)request forConversationUUID:(id)d;
- (void)cancelPreviouslySentScreenShareRequests:(id)requests;
- (void)checkLinkValidity:(id)validity completionHandler:(id)handler;
- (void)cleanupExpiredPendingConversations;
- (void)collaborationStateChanged:(int64_t)changed forCollaborationIdentifier:(id)identifier onConversationUUID:(id)d;
- (void)conversation:(id)conversation activityChangedOnSession:(id)session;
- (void)conversation:(id)conversation activitySessionChanged:(id)changed;
- (void)conversation:(id)conversation activitySessionRemoved:(id)removed userOriginated:(BOOL)originated;
- (void)conversation:(id)conversation addedActiveParticipant:(id)participant;
- (void)conversation:(id)conversation addedMembers:(id)members triggeredLocally:(BOOL)locally;
- (void)conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session;
- (void)conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used;
- (void)conversation:(id)conversation didChangeLocalParticipant:(id)participant broadcastActivitySession:(BOOL)session currentSequenceNumber:(unint64_t)number fromResponse:(BOOL)response;
- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session;
- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session;
- (void)conversation:(id)conversation didReceiveParticipantUpdateMessage:(id)message fromNormalizedHandle:(id)handle;
- (void)conversation:(id)conversation failedWithContext:(id)context;
- (void)conversation:(id)conversation mediaPrioritiesChangedForParticipant:(id)participant;
- (void)conversation:(id)conversation participant:(id)participant didReact:(id)react;
- (void)conversation:(id)conversation participantDidStopReacting:(id)reacting;
- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)conversation:(id)conversation remoteMembersChanged:(id)changed;
- (void)conversation:(id)conversation removedActiveParticipant:(id)participant withLeaveReason:(unint64_t)reason;
- (void)conversation:(id)conversation removedScreenShareRequest:(id)request;
- (void)conversation:(id)conversation requestBlobRecoveryForParticipantDestination:(id)destination completion:(id)completion;
- (void)conversation:(id)conversation requestedEndpointWithIdentifier:(id)identifier activitySession:(id)session completion:(id)completion;
- (void)conversation:(id)conversation screenShareAttributesDidChange:(id)change;
- (void)conversation:(id)conversation screenShareAttributesSelected:(id)selected;
- (void)conversation:(id)conversation screenShareAttributesUpdated:(id)updated;
- (void)conversation:(id)conversation sendDeclineMessageToParticipantDestination:(id)destination;
- (void)conversation:(id)conversation sendResourceAtURL:(id)l toParticipants:(id)participants metadata:(id)metadata activitySessionUUID:(id)d completion:(id)completion;
- (void)conversation:(id)conversation updatedActiveParticipant:(id)participant;
- (void)conversation:(id)conversation updatedActiveParticipantWithScreenSharing:(id)sharing;
- (void)conversationChanged:(id)changed;
- (void)conversationConnectionDidStart:(id)start;
- (void)conversationDidStopScreenCapture:(id)capture;
- (void)conversationDidTriggerJoin:(id)join;
- (void)conversationInvalidated:(id)invalidated;
- (void)createActivitySession:(id)session onConversationWithUUID:(id)d options:(unint64_t)options withCompletion:(id)completion;
- (void)denyScreenShareRequestFrom:(id)from screenShareRequest:(id)request conversation:(id)conversation allowMemberFallbackForMessage:(BOOL)message;
- (void)displaySharePlayUnableToStartAlert;
- (void)endActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)fetchActiveActivitySessionContainersWithCompletion:(id)completion;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler;
- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination;
- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully;
- (void)foundAvailableAdvertisement:(id)advertisement;
- (void)generateAllInactiveLinks;
- (void)generateLinkForConversationUUID:(id)d completionHandler:(id)handler;
- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler;
- (void)getInactiveLinkWithCompletionHandler:(id)handler;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity onContainerWithID:(NSUUID *)d completionHandler:(id)handler;
- (void)handleConversation:(id)conversation addHighlight:(id)highlight fromHandle:(id)handle;
- (void)handleConversation:(id)conversation participantUpdateMessage:(id)message fromNormalizedHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedActivitySession:(id)session fromHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedBlobRecoveryRequest:(id)request fromHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedBlobRecoveryResponse:(id)response fromHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedEndorsementForMember:(id)member fromHandle:(id)handle;
- (void)handleConversation:(id)conversation registerMessagesGroupUUIDMessage:(id)message fromNormalizedHandle:(id)handle;
- (void)handleConversation:(id)conversation removeActivitySession:(id)session fromHandle:(id)handle;
- (void)handleConversation:(id)conversation removeHighlight:(id)highlight fromHandle:(id)handle;
- (void)handleConversation:(id)conversation screenShareRequest:(id)request fromHandle:(id)handle;
- (void)handleConversation:(id)conversation screenShareResponse:(id)response fromHandle:(id)handle;
- (void)handleConversation:(id)conversation updateActivity:(id)activity fromHandle:(id)handle;
- (void)handleConversation:(id)conversation updateActivityImage:(id)image fromHandle:(id)handle;
- (void)handleConversation:(id)conversation updateGuestMode:(id)mode fromHandle:(id)handle;
- (void)handleConversationHandoffRecommendationChangedNotification:(id)notification;
- (void)handleConversationHandoffRouteIdentifierChangedNotification:(id)notification;
- (void)handleDelegatedPendingMemberIfNecessary:(id)necessary conversation:(id)conversation groupUUID:(id)d fromHandle:(id)handle transactionUUID:(id)iD;
- (void)handleEncryptedLetMeInRequest:(id)request fromHandle:(id)handle context:(id)context;
- (void)handleEncryptedLetMeInResponse:(id)response fromHandle:(id)handle context:(id)context;
- (void)handleEncryptedMessageWithin:(id)within fromHandle:(id)handle context:(id)context;
- (void)handleParticipantWithIdentifier:(unint64_t)identifier leftConversationWithGroupUUID:(id)d fromHandle:(id)handle withGroupSessionUpdate:(id)update;
- (void)handleParticipants:(id)participants joinedConversationWithUpdate:(id)update joinContext:(id)context fromHandle:(id)handle isFromPendingMessage:(BOOL)message;
- (void)handleReceivedLMIDelegateMessage:(id)message fromHandle:(id)handle;
- (void)handleReceivedLetMeInRequest:(id)request toPseudonym:(id)pseudonym fromHandle:(id)handle responseKeyData:(id)data dateInitiated:(id)initiated;
- (void)handleReceivedLetMeInResponse:(id)response pendingConversation:(id)conversation fromHandle:(id)handle;
- (void)handleReceivedLinkCreatedOrChangedMessage:(id)message fromHandle:(id)handle;
- (void)handleReceivedLinkInvalidatedMessage:(id)message fromHandle:(id)handle;
- (void)handleReceivedUpdateJoinedMetadataMessage:(id)message fromHandle:(id)handle;
- (void)handleRemovedLinkDescriptors:(id)descriptors;
- (void)includeMetricsReport:(id)report onConversationWithUUID:(id)d;
- (void)invalidateLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler;
- (void)joinConversationWithRequest:(id)request;
- (void)joinExistingConversationWithUUID:(id)d context:(id)context;
- (void)kickMember:(id)member conversationUUID:(id)d;
- (void)launchApplicationForActivitySessionUUID:(id)d authorizedExternally:(BOOL)externally forceBackground:(BOOL)background completionHandler:(id)handler;
- (void)leaveActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)leaveAllConversations;
- (void)leaveConversationWithUUID:(id)d;
- (void)leaveConversationWithUUID:(id)d withContext:(id)context;
- (void)linkManager:(id)manager removedLinkDescriptorsFromIDSSignal:(id)signal;
- (void)linkManager:(id)manager removedLinkDescriptorsFromValidityCheck:(id)check;
- (void)linkManager:(id)manager updatedLinkDescriptorsFromIDSSignal:(id)signal;
- (void)linkManager:(id)manager updatedLinkDescriptorsFromSync:(id)sync;
- (void)linkSyncStateIncludeLinks:(BOOL)links WithCompletion:(id)completion;
- (void)lostAvailableAdvertisement:(id)advertisement;
- (void)markCollaborationWithIdentifierOpened:(id)opened forConversationUUID:(id)d;
- (void)maybeAddComplementaryAssociationVoucherFor:(id)for toLocalMemberOf:(id)of completion:(id)completion;
- (void)noticeManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice;
- (void)notifyDelegateOfHighlightAddedForConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier byParticipant:(id)participant isFirstAdd:(BOOL)add;
- (void)notifyDelegateOfHighlightRemovedFromConversation:(id)conversation highlightIdentifier:(id)identifier byParticipant:(id)participant;
- (void)notifyDelegatesOf:(id)of removedScreenShareRequest:(id)request;
- (void)notifyDelegatesOfAVModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation;
- (void)notifyDelegatesOfChangedLink:(id)link conversation:(id)conversation;
- (void)notifyDelegatesOfChangedLinkDescriptors:(id)descriptors;
- (void)notifyDelegatesOfCreatedConversation:(id)conversation;
- (void)notifyDelegatesOfInvalidLinkForPendingConversation:(id)conversation;
- (void)notifyDelegatesOfLetMeInRejectedForPendingConversation:(id)conversation;
- (void)notifyDelegatesOfMessage:(id)message fromHandle:(id)handle forConversation:(id)conversation withUpdate:(id)update shouldRing:(BOOL)ring;
- (void)notifyDelegatesOfNewConversation:(id)conversation fromHandle:(id)handle;
- (void)notifyDelegatesOfRemoteScreenShareAttributes:(id)attributes isLocallySharing:(BOOL)sharing;
- (void)notifyDelegatesOfRemoteScreenShareEndedWithReason:(id)reason;
- (void)notifyDelegatesOfRemovedConversationWithUUID:(id)d;
- (void)notifyDelegatesOfTrackedPendingMember:(id)member forConversationLink:(id)link;
- (void)notifyDelegatesOfUpdatePendingConversations;
- (void)pendingMembershipTracker:(id)tracker didTrack:(id)track forGroupUUID:(id)d;
- (void)pendingMembershipTracker:(id)tracker willAdd:(id)add to:(id)to using:(id)using;
- (void)pendingMembershipTracker:(id)tracker willNotAdd:(id)add to:(id)to using:(id)using;
- (void)postEndEventForSession:(id)session originator:(id)originator conversation:(id)conversation;
- (void)postSessionStartedForSession:(id)session originator:(id)originator conversation:(id)conversation;
- (void)prepareAdditionOfActiveParticipant:(id)participant toInvitedMembersForLinkOnConversation:(id)conversation;
- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d onConversationWithUUID:(id)iD;
- (void)processGroupSessionParticipantUpdate:(id)update context:(id)context;
- (void)processJoinUpdate:(id)update fromHandle:(id)handle senderCorrelationIdentifier:(id)identifier isFromPendingMessage:(BOOL)message;
- (void)processParticipantDataUpdate:(id)update fromHandle:(id)handle;
- (void)processProxiedGroupUpdate:(id)update;
- (void)processProxiedMessage:(id)message fromID:(id)d context:(id)context;
- (void)processProxiedResource:(id)resource metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)processUpdateMembersUpdate:(id)update fromHandle:(id)handle;
- (void)processUpdatedNickname:(id)nickname forHandle:(id)handle conversationUUID:(id)d;
- (void)recoverLinksForPseudonyms:(id)pseudonyms;
- (void)refreshActiveParticipantsList;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)d;
- (void)rejectPendingMember:(id)member forConversationUUID:(id)d;
- (void)removeAllConversations;
- (void)removeAllPendingConversations;
- (void)removeConversationNoticeWithUUID:(id)d;
- (void)removeConversationWithUUID:(id)d;
- (void)removeDelegate:(id)delegate;
- (void)removeHighlightIdentifier:(id)identifier forConversationUUID:(id)d;
- (void)removeLink:(id)link reason:(int64_t)reason withConversation:(id)conversation;
- (void)removeNearbyMemberWithHandle:(id)handle onConversationWithUUID:(id)d;
- (void)removeNonIndefiniteLinks;
- (void)removePendingMemberMatchingActiveParticipant:(id)participant conversation:(id)conversation;
- (void)removePseudonym:(id)pseudonym forCallUUID:(id)d;
- (void)removeRemoteMembers:(id)members fromConversationWithUUID:(id)d;
- (void)removeScreenShareRequestFromParticipant:(id)participant conversation:(id)conversation screenShareContext:(id)context;
- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler;
- (void)renewLinkIfNeeded:(id)needed completionHandler:(id)handler;
- (void)requestActivityAuthorizationForApplicationWithBundleIdentifier:(id)identifier overrides:(id)overrides completionHandler:(id)handler;
- (void)requestAuthorizationForActivity:(TUConversationActivity *)activity withOptions:(unint64_t)options completionHandler:(id)handler;
- (void)requestLetMeInApprovalForPseudonym:(id)pseudonym;
- (void)requestParticipant:(id)participant toCancelScreenShareRequest:(id)request conversation:(id)conversation allowMemberFallbackForMessage:(BOOL)message;
- (void)requestParticipant:(id)participant toScreenShareWithRequest:(id)request conversation:(id)conversation;
- (void)requestParticipantToShareScreen:(id)screen forConversationUUID:(id)d;
- (void)requestUpdatedActivitySessionContainers;
- (void)resetActivitySessionSceneAssociationsForBundleID:(id)d;
- (void)retreiveActiveConversations;
- (void)revokeBackgroundPipAuthorizationsForBundleID:(id)d;
- (void)sanitizeAndProcessParticipantUpdate:(id)update context:(id)context;
- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial;
- (void)screenSharingActivityManager:(id)manager invalidatedSessionWithReason:(id)reason wasLocallySharing:(BOOL)sharing;
- (void)screenSharingActivityManager:(id)manager receivedUpdatedRemoteAttributes:(id)attributes isLocallySharing:(BOOL)sharing;
- (void)sendDataForScreenShareMessage:(id)message toParticipant:(id)participant conversation:(id)conversation screenShareRequestHandle:(id)handle allowMemberFallbackForMessage:(BOOL)forMessage;
- (void)sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member;
- (void)sendDelegationResponseMessageTo:(id)to conversation:(id)conversation transactionUUID:(id)d forMember:(id)member withResponse:(BOOL)response;
- (void)sendHighlightMessageForConversation:(id)conversation highlightIdentifier:(id)identifier type:(int)type;
- (void)sendInvitationMessageToMember:(id)member destinationID:(id)d invitationContext:(id)context forConversation:(id)conversation includeAllAttributes:(BOOL)attributes invitationPreferences:(id)preferences additionalOptions:(id)options;
- (void)sendLetMeInResponseToPendingMember:(id)member forConversation:(id)conversation usingResponseKeyData:(id)data approved:(BOOL)approved callback:(id)callback;
- (void)sendMessage:(id)message forConversation:(id)conversation withActivitySession:(id)session additionalOptions:(id)options;
- (void)sendVideoUpgradeMessageforConversationWithUUID:(id)d;
- (void)sendWithMessage:(id)message toHandle:(id)handle fromHandle:(id)fromHandle;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context;
- (void)setActivityAuthorization:(BOOL)authorization forBundleID:(id)d;
- (void)setAudioInjectionAllowed:(BOOL)allowed forConversationWithUUID:(id)d;
- (void)setAudioPaused:(BOOL)paused forConversationWithUUID:(id)d;
- (void)setAutoSharePlayEnabled:(BOOL)enabled;
- (void)setConversationLink:(id)link forConversation:(id)conversation replyToCompletionHandler:(id)handler;
- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants inConversationWithUUID:(id)d completionHandler:(id)handler;
- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsOnConversationWithUUID:(id)d;
- (void)setGridDisplayMode:(unint64_t)mode forConversationWithUUID:(id)d;
- (void)setIgnoreLetMeInRequests:(BOOL)requests forConversationUUID:(id)d;
- (void)setIsHeld:(BOOL)held forConversationUUID:(id)d;
- (void)setIsNearbySharePlay:(BOOL)play forConversationWithUUID:(id)d;
- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d presentationMode:(unint64_t)presentationMode;
- (void)setLocalParticipantCluster:(id)cluster forConversationUUID:(id)d;
- (void)setMessagesGroupName:(id)name onConversationWithUUID:(id)d;
- (void)setPresentationRect:(CGRect)rect forConversationWithUUID:(id)d;
- (void)setPresentationState:(int)state forConversationWithUUID:(id)d;
- (void)setProvider:(id)provider forConversationUUID:(id)d;
- (void)setRelaying:(BOOL)relaying forConversationWithUUID:(id)d;
- (void)setScreenEnabled:(BOOL)enabled forConversationWithUUID:(id)d;
- (void)setScreenEnabled:(BOOL)enabled screenShareAttributes:(id)attributes forConversationWithUUID:(id)d;
- (void)setScreenShareAttributes:(id)attributes forConversationWithUUID:(id)d;
- (void)setScreening:(BOOL)screening forConversationWithUUID:(id)d;
- (void)setSharePlayHandedOff:(BOOL)off onConversationWithUUID:(id)d;
- (void)setUplinkMuted:(BOOL)muted forConversationWithUUID:(id)d;
- (void)setUplinkMuted:(BOOL)muted forPendingConversationWithUUID:(id)d;
- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)setVideo:(BOOL)video forConversationWithUUID:(id)d;
- (void)setVideoEnabled:(BOOL)enabled forConversationWithUUID:(id)d;
- (void)setVideoEnabled:(BOOL)enabled forPendingConversationWithUUID:(id)d;
- (void)setVideoPaused:(BOOL)paused forConversationWithUUID:(id)d;
- (void)setupPendingConversationCleanupTimer;
- (void)startAudioForConversationWithUUID:(id)d;
- (void)startTrackingCollaborationWithIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d completionHandler:(id)handler;
- (void)stopAdvertisingGroupActivity:(id)activity completionHandler:(id)handler;
- (void)systemStateObserver:(id)observer screenSharingAllowedStateChanged:(BOOL)changed;
- (void)systemStateObserver:(id)observer sharePlayAllowedStateChanged:(BOOL)changed;
- (void)updateConversationHandoffEligibility:(id)eligibility;
- (void)updateExternalParticipants:(id)participants;
- (void)updateLetMeInRequestState:(int64_t)state addLink:(id)link forConversationWithUUID:(id)d;
- (void)updateLocalMemberNickname:(id)nickname conversationUUID:(id)d;
- (void)updateMessagesGroupName:(id)name onConversationWithUUID:(id)d;
- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)d;
- (void)updateParticipantPresentationContexts:(id)contexts onConversationWithUUID:(id)d;
- (void)updateRemoteControlStatus:(int64_t)status onConversationWithUUID:(id)d;
@end

@implementation CSDConversationManager

- (void)refreshActiveParticipantsList
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Refreshing active pariticpants for active conversations", buf, 2u);
  }

  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA64;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (CSDConversationManager)initWithReportingController:(id)controller cpApplicationController:(id)applicationController invitationResolver:(id)resolver
{
  resolverCopy = resolver;
  applicationControllerCopy = applicationController;
  controllerCopy = controller;
  v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationmanager", 0);
  v12 = [[CSDConversationPersistenceController alloc] initWithQueue:v11];
  v13 = objc_alloc_init(CSDConversationLinkManager);
  v14 = objc_alloc_init(CSDPendingMembershipTracker);
  v15 = objc_alloc_init(TUFeatureFlags);
  v16 = [(CSDConversationManager *)self initWithQueue:v11 reportingController:controllerCopy persistenceController:v12 linkManager:v13 cpApplicationController:applicationControllerCopy invitationResolver:resolverCopy pendingMembershipTracker:v14 featureFlags:v15 applicationPolicyManager:0];

  return v16;
}

- (CSDConversationManager)init
{
  [(CSDConversationManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)flags
{
  flagsCopy = flags;
  trackerCopy = tracker;
  resolverCopy = resolver;
  managerCopy = manager;
  persistenceControllerCopy = persistenceController;
  controllerCopy = controller;
  queueCopy = queue;
  if ([flagsCopy expanseEnabled])
  {
    v23 = objc_alloc_init(CPApplicationController);
  }

  else
  {
    v23 = 0;
  }

  v24 = +[CPApplicationPolicyManager sharedInstance];
  v25 = [(CSDConversationManager *)self initWithQueue:queueCopy reportingController:controllerCopy persistenceController:persistenceControllerCopy linkManager:managerCopy cpApplicationController:v23 invitationResolver:resolverCopy pendingMembershipTracker:trackerCopy featureFlags:flagsCopy applicationPolicyManager:v24];

  return v25;
}

- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager cpApplicationController:(id)applicationController invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)self0 applicationPolicyManager:(id)self1
{
  queueCopy = queue;
  controllerCopy = controller;
  persistenceControllerCopy = persistenceController;
  managerCopy = manager;
  applicationControllerCopy = applicationController;
  resolverCopy = resolver;
  trackerCopy = tracker;
  flagsCopy = flags;
  policyManagerCopy = policyManager;
  v161.receiver = self;
  v161.super_class = CSDConversationManager;
  v18 = [(CSDConversationManager *)&v161 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_reportingController, controller);
    objc_storeStrong(&v19->_linkManager, manager);
    [(CSDConversationLinkManager *)v19->_linkManager setDelegate:v19, controllerCopy, persistenceControllerCopy, managerCopy, applicationControllerCopy, resolverCopy, trackerCopy, flagsCopy];
    objc_storeStrong(&v19->_featureFlags, flags);
    objc_storeStrong(&v19->_invitationResolver, resolver);
    objc_storeStrong(&v19->_pendingMembershipTracker, tracker);
    [(CSDPendingMembershipTracker *)v19->_pendingMembershipTracker setMessenger:v19];
    [(CSDPendingMembershipTracker *)v19->_pendingMembershipTracker setDelegate:v19];
    v20 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v19->_serverBag;
    v19->_serverBag = v20;

    v22 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v19->_callProviderManager;
    v19->_callProviderManager = v22;

    v24 = objc_alloc_init(NSMutableSet);
    listeningOnIDSServiceIdentifiers = v19->_listeningOnIDSServiceIdentifiers;
    v19->_listeningOnIDSServiceIdentifiers = v24;

    v26 = +[NSMutableDictionary dictionary];
    mutableConversationsByUUID = v19->_mutableConversationsByUUID;
    v19->_mutableConversationsByUUID = v26;

    v28 = +[NSMutableDictionary dictionary];
    advertisementsBySessionUUID = v19->_advertisementsBySessionUUID;
    v19->_advertisementsBySessionUUID = v28;

    v30 = +[NSMutableDictionary dictionary];
    mutablePendingConversationsByPseudonym = v19->_mutablePendingConversationsByPseudonym;
    v19->_mutablePendingConversationsByPseudonym = v30;

    v32 = +[NSMutableDictionary dictionary];
    mutablePseudonymsByCallUUID = v19->_mutablePseudonymsByCallUUID;
    v19->_mutablePseudonymsByCallUUID = v32;

    v34 = +[NSMutableDictionary dictionary];
    mutablePseudonymsByRequestIdentifiers = v19->_mutablePseudonymsByRequestIdentifiers;
    v19->_mutablePseudonymsByRequestIdentifiers = v34;

    v36 = +[NSMutableDictionary dictionary];
    mutableSendDataCallbacksByRequestIdentifiers = v19->_mutableSendDataCallbacksByRequestIdentifiers;
    v19->_mutableSendDataCallbacksByRequestIdentifiers = v36;

    v38 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v19->_delegateToQueue;
    v19->_delegateToQueue = v38;

    v40 = +[NSMutableDictionary dictionary];
    mutableConversationsRequestingUpgradeWithPreferences = v19->_mutableConversationsRequestingUpgradeWithPreferences;
    v19->_mutableConversationsRequestingUpgradeWithPreferences = v40;

    v42 = +[NSMutableDictionary dictionary];
    screenCaptureQueue = v19->_screenCaptureQueue;
    v19->_screenCaptureQueue = v42;

    v44 = +[NSMutableDictionary dictionary];
    outIdentifierToConversationInfo = v19->_outIdentifierToConversationInfo;
    v19->_outIdentifierToConversationInfo = v44;

    v46 = objc_alloc_init(NSMutableSet);
    incomingPendingMessageGUIDs = v19->_incomingPendingMessageGUIDs;
    v19->_incomingPendingMessageGUIDs = v46;

    v48 = +[NSMutableDictionary dictionary];
    groupUUIDToActivityIdentifierUUIDString = v19->_groupUUIDToActivityIdentifierUUIDString;
    v19->_groupUUIDToActivityIdentifierUUIDString = v48;

    v50 = [[CSDPendingConversationMessageHandler alloc] initWithQueue:v19->_queue serverBag:v19->_serverBag featureFlags:v19->_featureFlags];
    pendingConversationMessageHandler = v19->_pendingConversationMessageHandler;
    v19->_pendingConversationMessageHandler = v50;

    v52 = [[CSDConversationNoticeManager alloc] initWithDelegate:v19 queue:v19->_queue];
    conversationNoticeManger = v19->_conversationNoticeManger;
    v19->_conversationNoticeManger = v52;

    v54 = +[CSDConversationProviderManager sharedInstance];
    conversationProviderManager = v19->_conversationProviderManager;
    v19->_conversationProviderManager = v54;

    lockdownModeEnabled = v19->_lockdownModeEnabled;
    v19->_lockdownModeEnabled = &stru_10061CA30;

    isConversationRelayPreferred = v19->_isConversationRelayPreferred;
    v19->_isConversationRelayPreferred = &stru_10061CA50;

    v58 = TUSimulatedModeEnabled();
    v59 = &off_1006166A8;
    if (!v58)
    {
      v59 = off_100616618;
    }

    sharedInstance = [(__objc2_class *)*v59 sharedInstance];
    service = v19->_service;
    v19->_service = sharedInstance;

    v63 = sub_100004778(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v19->_service;
      *buf = 138412290;
      v163 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Initializing CSDConversationManager for service: %@", buf, 0xCu);
    }

    v65 = [CSDVoucherManagerImpl alloc];
    service = [(CSDIDSService *)v19->_service service];
    v67 = [(CSDVoucherManagerImpl *)v65 initWithIdsService:service];
    voucherManager = v19->_voucherManager;
    v19->_voucherManager = v67;

    v69 = [[CSDParticipantUpdateSanitizerImpl alloc] initWithVoucherManager:v19->_voucherManager];
    participantUpdateSanitizer = v19->_participantUpdateSanitizer;
    v19->_participantUpdateSanitizer = v69;

    if (policyManagerCopy)
    {
      v135 = policyManagerCopy;
    }

    else
    {
      v135 = +[CPApplicationPolicyManager sharedInstance];
    }

    v71 = objc_alloc_init(CSDConversationManagerDataSourceObserverStorage);
    observerStorage = v19->_observerStorage;
    v19->_observerStorage = v71;

    objc_storeStrong(&v19->_cpApplicationController, applicationController);
    v73 = [[CPSystemStateObserver alloc] initWithQueue:v19->_queue];
    sharePlaySystemStateObserver = v19->_sharePlaySystemStateObserver;
    v19->_sharePlaySystemStateObserver = v73;

    [(CPSystemStateObserver *)v19->_sharePlaySystemStateObserver addObserver:v19 withQueue:v19->_queue];
    v75 = [[CPActivityAuthorizationManager alloc] initWithDataSource:v19 queue:v19->_queue appPolicyManager:v135];
    activityAuthorizationManager = v19->_activityAuthorizationManager;
    v19->_activityAuthorizationManager = v75;

    v77 = [[CSDCompositeActivitySessionContainerProvider alloc] initWithConversationManagerDataSourceObservers:v19->_observerStorage conversationManagerDataSource:v19 activityAuthorizer:v19];
    activitySessionContainerProvider = v19->_activitySessionContainerProvider;
    v19->_activitySessionContainerProvider = v77;

    [(CSDCompositeActivitySessionContainerProvider *)v19->_activitySessionContainerProvider registerChildProvider:v19];
    v79 = [[CSDSharePlayAvailabilityManager alloc] initWithMessageProvider:v19 referenceDateProvider:&stru_10061CA90 remoteAvailabilityThresholdSeconds:[(CSDSharedConversationServerBag *)v19->_serverBag sharePlayTelephonyRemoteAvailabilityThresholdSeconds] requestToScreenShareEnabled:[(TUFeatureFlags *)v19->_featureFlags requestToScreenShareEnabled] relaySupportEnabled:[(TUFeatureFlags *)v19->_featureFlags sharePlayInCallsForRelayEnabled]];
    sharePlayAvailabilityManager = v19->_sharePlayAvailabilityManager;
    v19->_sharePlayAvailabilityManager = v79;

    featureFlags = [(CSDConversationManager *)v19 featureFlags];
    wagoneerEnabled = [featureFlags wagoneerEnabled];

    if (wagoneerEnabled)
    {
      v84 = sub_100004778(v83);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Initializing CSDNearbySessionManager", buf, 2u);
      }

      v85 = [CSDNearbySessionManager alloc];
      v86 = objc_alloc_init(NSUUID);
      v87 = [(CSDNearbySessionManager *)v85 initWithAdvertisementID:v86];
      nearbySessionManager = v19->_nearbySessionManager;
      v19->_nearbySessionManager = v87;

      [(CSDNearbySessionManager *)v19->_nearbySessionManager setDelegate:v19];
    }

    v89 = [[CSDScreenSharingActivityManager alloc] initWithFeatureFlags:v19->_featureFlags];
    screenSharingActivityManager = v19->_screenSharingActivityManager;
    v19->_screenSharingActivityManager = v89;

    [(CSDScreenSharingActivityManager *)v19->_screenSharingActivityManager setDelegate:v19];
    [v135 addDelegate:v19 withQueue:v19->_queue];
    featureFlags2 = [(CSDConversationManager *)v19 featureFlags];
    sharePlayInFaceTimeCanvasEnabled = [featureFlags2 sharePlayInFaceTimeCanvasEnabled];

    if (sharePlayInFaceTimeCanvasEnabled)
    {
      v93 = [[CSDFileTransferController alloc] initWithService:v19->_service];
      fileTransferController = v19->_fileTransferController;
      v19->_fileTransferController = v93;

      [(CSDFileTransferController *)v19->_fileTransferController setDelegate:v19];
    }

    v95 = +[NSMutableDictionary dictionary];
    resourceTransferCallbacks = v19->_resourceTransferCallbacks;
    v19->_resourceTransferCallbacks = v95;

    v97 = [[_TtC13callservicesd28CSDCollaborationStateManager alloc] initWithQueue:queueCopy];
    collaborationStateManager = v19->_collaborationStateManager;
    v19->_collaborationStateManager = v97;

    [(CSDCollaborationStateManager *)v19->_collaborationStateManager setDelegate:v19];
    v99 = objc_alloc_init(CSDSecureImageTranscoder);
    imageTranscoder = v19->_imageTranscoder;
    v19->_imageTranscoder = v99;

    objc_initWeak(buf, v19);
    queue = v19->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015DC30;
    block[3] = &unk_10061CAB8;
    v102 = v19;
    v159 = v102;
    objc_copyWeak(&v160, buf);
    dispatch_sync(queue, block);
    objc_storeStrong(&v102->_persistenceController, persistenceController);
    v156[0] = _NSConcreteStackBlock;
    v156[1] = 3221225472;
    v156[2] = sub_10015DE50;
    v156[3] = &unk_10061CAE0;
    objc_copyWeak(&v157, buf);
    v103 = objc_retainBlock(v156);
    groupSessionProviderCreationBlock = v102->_groupSessionProviderCreationBlock;
    v102->_groupSessionProviderCreationBlock = v103;

    getPersonalNicknameBlock = v102->_getPersonalNicknameBlock;
    v102->_getPersonalNicknameBlock = &stru_10061CB20;

    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_10015DFE4;
    v154[3] = &unk_10061CB48;
    objc_copyWeak(&v155, buf);
    v106 = objc_retainBlock(v154);
    conversationCreationBlock = v102->_conversationCreationBlock;
    v102->_conversationCreationBlock = v106;

    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_10015E2A4;
    v152[3] = &unk_10061CB70;
    objc_copyWeak(&v153, buf);
    v108 = objc_retainBlock(v152);
    sendDataBlock = v102->_sendDataBlock;
    v102->_sendDataBlock = v108;

    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_10015E8B4;
    v150[3] = &unk_10061CB98;
    objc_copyWeak(&v151, buf);
    v110 = objc_retainBlock(v150);
    notifyPendingMembershipTrackerOfDelegatedMember = v102->_notifyPendingMembershipTrackerOfDelegatedMember;
    v102->_notifyPendingMembershipTrackerOfDelegatedMember = v110;

    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_10015E988;
    v148[3] = &unk_10061CBC0;
    objc_copyWeak(&v149, buf);
    v112 = objc_retainBlock(v148);
    activeLocalHandlesForProvider = v102->_activeLocalHandlesForProvider;
    v102->_activeLocalHandlesForProvider = v112;

    v146[0] = _NSConcreteStackBlock;
    v146[1] = 3221225472;
    v146[2] = sub_10015EBC4;
    v146[3] = &unk_10061CBE8;
    objc_copyWeak(&v147, buf);
    v114 = objc_retainBlock(v146);
    activeLocalHandles = v102->_activeLocalHandles;
    v102->_activeLocalHandles = v114;

    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_10015EC54;
    v144[3] = &unk_10061CC10;
    objc_copyWeak(&v145, buf);
    v116 = objc_retainBlock(v144);
    localCallerID = v102->_localCallerID;
    v102->_localCallerID = v116;

    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_10015ED20;
    v142[3] = &unk_10061CC38;
    objc_copyWeak(&v143, buf);
    v118 = objc_retainBlock(v142);
    senderIdentitiesBlock = v102->_senderIdentitiesBlock;
    v102->_senderIdentitiesBlock = v118;

    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_10015ED94;
    v140[3] = &unk_10061CC60;
    objc_copyWeak(&v141, buf);
    v120 = objc_retainBlock(v140);
    localCallerIDForProvider = v102->_localCallerIDForProvider;
    v102->_localCallerIDForProvider = v120;

    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_10015EFE0;
    v138[3] = &unk_10061CC88;
    objc_copyWeak(&v139, buf);
    v122 = objc_retainBlock(v138);
    isHandleEligibleForScreenSharingRequestsBlock = v102->_isHandleEligibleForScreenSharingRequestsBlock;
    v102->_isHandleEligibleForScreenSharingRequestsBlock = v122;

    v124 = +[NSNotificationCenter defaultCenter];
    [v124 addObserver:v102 selector:"handleConversationHandoffRecommendationChangedNotification:" name:@"CSDUserActivityConversationHandoffRecommendationChangedNotification" object:0];

    v125 = +[NSNotificationCenter defaultCenter];
    v126 = +[CSDHandoffAudioController routeIdentifierChangedNotification];
    [v125 addObserver:v102 selector:"handleConversationHandoffRouteIdentifierChangedNotification:" name:v126 object:0];

    objc_destroyWeak(&v139);
    objc_destroyWeak(&v141);
    objc_destroyWeak(&v143);
    objc_destroyWeak(&v145);
    objc_destroyWeak(&v147);
    objc_destroyWeak(&v149);
    objc_destroyWeak(&v151);
    objc_destroyWeak(&v153);
    objc_destroyWeak(&v155);
    objc_destroyWeak(&v157);
    objc_destroyWeak(&v160);

    objc_destroyWeak(buf);
  }

  return v19;
}

- (BOOL)_shouldNotifyDelegatesOfMessage:(id)message localHandleAdded:(BOOL)added isFromStorage:(BOOL)storage
{
  messageCopy = message;
  v8 = messageCopy;
  if (messageCopy)
  {
    if ([messageCopy type])
    {
      v9 = !storage;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v8 type] == 3)
  {
    v10 = added && v9;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)_shouldRingForIncomingCallWithHandle:(id)handle conversation:(id)conversation isFromPendingMessage:(BOOL)message isOldMessage:(BOOL)oldMessage message:(id)a7
{
  messageCopy = message;
  oldMessageCopy = oldMessage;
  handleCopy = handle;
  conversationCopy = conversation;
  v12 = a7;
  provider = [(__CFString *)conversationCopy provider];
  v80 = handleCopy;
  v14 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy forProvider:provider];

  selfCopy = self;
  invitationResolver = [(CSDConversationManager *)self invitationResolver];
  tuConversation = [(__CFString *)conversationCopy tuConversation];
  localMember = [(__CFString *)conversationCopy localMember];
  handle = [localMember handle];
  tuInvitationPreferences = [v12 tuInvitationPreferences];
  v21 = [invitationResolver shouldShowInvitationRingingUIForConversation:tuConversation handle:handle invitationMessagePreferences:tuInvitationPreferences];

  v81 = conversationCopy;
  invitationPreferences = [(__CFString *)conversationCopy invitationPreferences];
  tuInvitationPreferences2 = [v12 tuInvitationPreferences];
  v24 = [invitationPreferences isEqualToSet:tuInvitationPreferences2];

  v26 = sub_100004778(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    invitationPreferences2 = [(__CFString *)conversationCopy invitationPreferences];
    tuInvitationPreferences3 = [v12 tuInvitationPreferences];
    *buf = 138412546;
    v83 = invitationPreferences2;
    v84 = 2112;
    v85 = tuInvitationPreferences3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "conversation.invitationPreferences: %@, message.tuInvitationPreferences: %@", buf, 0x16u);
  }

  tuInvitationPreferences4 = [v12 tuInvitationPreferences];
  if (([tuInvitationPreferences4 count] == 0) | v24 & 1)
  {
    type = [v12 type];

    v32 = selfCopy;
    if (type == 1)
    {
      v33 = v12;
      v34 = sub_100004778(v31);
      v35 = v80;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        tuInvitationPreferences5 = [v12 tuInvitationPreferences];
        v37 = [tuInvitationPreferences5 count];
        v38 = @"NO";
        if (v24)
        {
          v38 = @"YES";
        }

        *buf = 134218242;
        v83 = v37;
        v84 = 2112;
        v85 = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "setting hasInvitationPreference to NO, message.tuInvitationPreferences.count: %ld, invitationPreferencesEqual %@", buf, 0x16u);
      }

      v39 = 0;
      goto LABEL_18;
    }
  }

  else
  {

    v32 = selfCopy;
  }

  v35 = v80;
  v33 = v12;
  if (v21)
  {
    v39 = 0;
    goto LABEL_19;
  }

  v34 = sub_100004778(v31);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v40 = @"YES";
    if (!v14)
    {
      v40 = @"NO";
    }

    *buf = 138412546;
    v83 = v40;
    v84 = 2112;
    v85 = @"NO";
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "isValidLocalHandle: %@, shouldShowInvitationRingingUIForConversation: %@", buf, 0x16u);
  }

  v39 = 1;
LABEL_18:

LABEL_19:
  featureFlags = [(CSDConversationManager *)v32 featureFlags];
  v42 = ([featureFlags oneToOneFaceTimeMyselfEnabled] ^ 1) & v14;

  if (v42 == 1)
  {
    v44 = sub_100004778(v43);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      LOBYTE(v49) = 0;
      v45 = v81;
      goto LABEL_57;
    }

    v45 = v81;
    remoteMembers = [(__CFString *)v81 remoteMembers];
    v47 = [remoteMembers count];
    *buf = 138412546;
    v83 = @"YES";
    v84 = 2048;
    v85 = v47;
    v48 = "isValidLocalHandle: %@, remoteMember count: %lu, no need to ring";
    goto LABEL_22;
  }

  featureFlags2 = [(CSDConversationManager *)v32 featureFlags];
  if ([featureFlags2 oneToOneFaceTimeMyselfEnabled] & v14)
  {
    v45 = v81;
    remoteMembers2 = [(__CFString *)v81 remoteMembers];
    v52 = [remoteMembers2 count];

    if (v52 >= 2)
    {
      v44 = sub_100004778(isOneToOneModeEnabled);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      remoteMembers = [(__CFString *)v81 remoteMembers];
      v54 = [remoteMembers count];
      *buf = 138412546;
      v83 = @"YES";
      v84 = 2048;
      v85 = v54;
      v48 = "isValidLocalHandle: %@, remoteMember count: %lu, should not ring";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);

LABEL_23:
      LOBYTE(v49) = 0;
      goto LABEL_57;
    }
  }

  else
  {

    v45 = v81;
  }

  v55 = messageCopy;
  if (((v39 | messageCopy) & 1) == 0 && oldMessageCopy)
  {
    isOneToOneModeEnabled = [(__CFString *)v45 isOneToOneModeEnabled];
    if ((isOneToOneModeEnabled & 1) == 0)
    {
      activeParticipantDestinationsByIdentifier = [(__CFString *)v45 activeParticipantDestinationsByIdentifier];
      v57 = [activeParticipantDestinationsByIdentifier count];

      if (v57)
      {
        goto LABEL_34;
      }
    }

LABEL_42:
    v49 = 0;
    goto LABEL_44;
  }

  if ((v39 | messageCopy))
  {
    goto LABEL_42;
  }

LABEL_34:
  isOneToOneModeEnabled = [v33 type];
  if (isOneToOneModeEnabled == 1)
  {
    remoteMembers3 = [(__CFString *)v45 remoteMembers];
    if ([remoteMembers3 count]== 1)
    {
      activeRemoteParticipants = [(__CFString *)v45 activeRemoteParticipants];
      if (![activeRemoteParticipants count])
      {
        localMember2 = [(__CFString *)v45 localMember];
        handle2 = [localMember2 handle];
        v69 = [v35 isEquivalentToHandle:handle2];

        if (!v69)
        {
          v49 = 1;
          goto LABEL_40;
        }

        featureFlags3 = [(CSDConversationManager *)v32 featureFlags];
        if ([featureFlags3 oneToOneFaceTimeMyselfEnabled])
        {
          remoteMembers4 = [(__CFString *)v45 remoteMembers];
          anyObject = [remoteMembers4 anyObject];
          handle3 = [anyObject handle];
          localMember3 = [(__CFString *)v45 localMember];
          handle4 = [localMember3 handle];
          v76 = [handle3 isEqualToHandle:handle4];

          if (v76)
          {
            remoteMembers3 = sub_100004778(v77);
            if (os_log_type_enabled(remoteMembers3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, remoteMembers3, OS_LOG_TYPE_DEFAULT, "U+1 invite FaceTime myself", buf, 2u);
            }

            goto LABEL_38;
          }
        }

        else
        {
        }

        remoteMembers3 = sub_100004778(v77);
        if (os_log_type_enabled(remoteMembers3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v45;
          _os_log_impl(&_mh_execute_header, remoteMembers3, OS_LOG_TYPE_DEFAULT, "This is a U+1 invite sent by the local account from a different device, not ringing on the local device for conversation: %@", buf, 0xCu);
        }

        v49 = 0;
        goto LABEL_39;
      }
    }

LABEL_38:
    v49 = 1;
LABEL_39:

LABEL_40:
    v55 = messageCopy;
    goto LABEL_44;
  }

  v49 = 1;
LABEL_44:
  v44 = sub_100004778(isOneToOneModeEnabled);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v60 = @"YES";
    if (v49)
    {
      v61 = @"YES";
    }

    else
    {
      v61 = @"NO";
    }

    if (v55)
    {
      v62 = @"YES";
    }

    else
    {
      v62 = @"NO";
    }

    if (oldMessageCopy)
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    if (![(__CFString *)v45 isOneToOneModeEnabled])
    {
      v60 = @"NO";
    }

    activeParticipantDestinationsByIdentifier2 = [(__CFString *)v45 activeParticipantDestinationsByIdentifier];
    v65 = [activeParticipantDestinationsByIdentifier2 count];
    *buf = 138413314;
    v83 = v61;
    v84 = 2112;
    v85 = v62;
    v86 = 2112;
    v87 = v63;
    v88 = 2112;
    v89 = v60;
    v90 = 2048;
    v91 = v65;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "shouldRingForIncomingCall: %@, isFromPendingMessage: %@, isOldMessage: %@, isOneToOneModeEnabled: %@, activeParticipantDestinationsByIdentifier.count: %ld", buf, 0x34u);
  }

LABEL_57:

  return v49;
}

- (id)_kickedOrRejectedMemberForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  kickedMembers = [conversationCopy kickedMembers];
  v10 = [kickedMembers countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(kickedMembers);
      }

      v14 = *(*(&v34 + 1) + 8 * v13);
      handle = [v14 handle];
      v16 = [handle isEquivalentToHandle:handleCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [kickedMembers countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v26 = sub_100004778(v17);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    kickedMembers2 = [conversationCopy kickedMembers];
    *buf = 138412546;
    v40 = handleCopy;
    v41 = 2112;
    v42 = kickedMembers2;
    v28 = "handle %@ has already been kicked, conversation.kickedMembers: %@";
  }

  else
  {
LABEL_9:

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    kickedMembers = [conversationCopy rejectedMembers];
    v18 = [kickedMembers countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v18)
    {
LABEL_17:
      v25 = 0;
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v31;
LABEL_11:
    v21 = 0;
    while (1)
    {
      if (*v31 != v20)
      {
        objc_enumerationMutation(kickedMembers);
      }

      v14 = *(*(&v30 + 1) + 8 * v21);
      handle2 = [v14 handle];
      v23 = [handle2 isEquivalentToHandle:handleCopy];

      if (v23)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [kickedMembers countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v19)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    v26 = sub_100004778(v24);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    kickedMembers2 = [conversationCopy rejectedMembers];
    *buf = 138412546;
    v40 = handleCopy;
    v41 = 2112;
    v42 = kickedMembers2;
    v28 = "handle %@ has already been rejected, conversation.rejectedMembers: %@";
  }

  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);

LABEL_23:
  v25 = v14;
LABEL_24:

  return v25;
}

- (BOOL)_isActiveRemoteMemberForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  remoteMembers = [conversationCopy remoteMembers];
  v8 = [remoteMembers countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v23 = *v30;
    v24 = conversationCopy;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v29 + 1) + 8 * i) handle];
        v13 = [handle isEquivalentToHandle:handleCopy];

        if (v13)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
          v15 = [activeRemoteParticipants countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                handle2 = [*(*(&v25 + 1) + 8 * j) handle];
                v20 = [handle2 isEquivalentToHandle:handleCopy];

                if (v20)
                {

                  v21 = 1;
                  conversationCopy = v24;
                  goto LABEL_21;
                }
              }

              v16 = [activeRemoteParticipants countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v10 = v23;
          conversationCopy = v24;
        }
      }

      v9 = [remoteMembers countByEnumeratingWithState:&v29 objects:v34 count:16];
      v21 = 0;
    }

    while (v9);
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (id)_inactiveRemoteMemberForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  remoteMembers = [conversation remoteMembers];
  v7 = [remoteMembers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(remoteMembers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        handle = [v10 handle];
        v12 = [handle isEquivalentToHandle:handleCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [remoteMembers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)_shouldSkipManualApprovalForHandle:(id)handle conversation:(id)conversation responseKeyData:(id)data
{
  handleCopy = handle;
  conversationCopy = conversation;
  dataCopy = data;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [(CSDConversationManager *)self _kickedOrRejectedMemberForHandle:handleCopy conversation:conversationCopy];
  v13 = v12;
  if (v12)
  {
    v14 = sub_100004778(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = handleCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is a handle that has already been kicked/rejected", buf, 0xCu);
    }

    [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v13 forConversation:conversationCopy usingResponseKeyData:dataCopy approved:0 callback:0];
LABEL_9:
    v18 = 1;
    goto LABEL_10;
  }

  v15 = [(CSDConversationManager *)self _isActiveRemoteMemberForHandle:handleCopy conversation:conversationCopy];
  if (v15)
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      remoteMembers = [conversationCopy remoteMembers];
      *buf = 138412546;
      v29 = handleCopy;
      v30 = 2112;
      v31 = remoteMembers;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is active in the session. Ignore Let Me In Request,  conversation.remoteMembers: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v20 = [(CSDConversationManager *)self _inactiveRemoteMemberForHandle:handleCopy conversation:conversationCopy];
  v21 = v20;
  v18 = v20 != 0;
  if (v20)
  {
    v22 = sub_100004778(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      remoteMembers2 = [conversationCopy remoteMembers];
      *buf = 138412546;
      v29 = handleCopy;
      v30 = 2112;
      v31 = remoteMembers2;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is a handle that is already a member of the call; Let Me In not required, conversation.remoteMembers: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001603B0;
    v24[3] = &unk_10061CCB0;
    objc_copyWeak(&v27, buf);
    v25 = v21;
    v26 = conversationCopy;
    [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v25 forConversation:v26 usingResponseKeyData:dataCopy approved:1 callback:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

LABEL_10:
  return v18;
}

- (BOOL)shouldIgnoreMessageForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = conversationCopy;
  if (conversationCopy)
  {
    state = [conversationCopy state];
    if (!state)
    {
      v7 = (*(self->_isConversationRelayPreferred + 2))();
      v8 = v7;
      v9 = sub_100004778(v7);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          LOWORD(v22) = 0;
          v11 = "shouldIgnoreMessageForConversation: Ignore the message, will process messages through relay path";
LABEL_9:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v22, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }

      if (v10)
      {
        v18 = +[CSDCallCapabilities sharedInstance];
        callCapabilitiesState = [v18 callCapabilitiesState];
        v22 = 67109120;
        LODWORD(v23) = [callCapabilitiesState relayCallingAvailability];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation: Still process the message: %d", &v22, 8u);
      }
    }

    v9 = sub_100004778(state);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      state2 = [v5 state];
      v22 = 134217984;
      v23 = state2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation, state: %ld", &v22, 0xCu);
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v12 = (*(self->_isConversationRelayPreferred + 2))();
  v13 = v12;
  v9 = sub_100004778(v12);
  v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v14)
    {
      v16 = +[CSDCallCapabilities sharedInstance];
      callCapabilitiesState2 = [v16 callCapabilitiesState];
      v22 = 67109120;
      LODWORD(v23) = [callCapabilitiesState2 relayCallingAvailability];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation: still process message: %d", &v22, 8u);
    }

    goto LABEL_18;
  }

  if (v14)
  {
    LOWORD(v22) = 0;
    v11 = "shouldIgnoreMessageForConversation: Will process message in relay session";
    goto LABEL_9;
  }

LABEL_10:
  v15 = 1;
LABEL_19:

  return v15;
}

- (BOOL)isValidLocalHandle:(id)handle forProvider:(id)provider
{
  handleCopy = handle;
  providerCopy = provider;
  activeLocalHandles = [(CSDConversationManager *)self activeLocalHandles];
  v9 = activeLocalHandles[2]();
  v10 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy activeLocalHandles:v9 provider:0];

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    activeLocalHandlesForProvider = [(CSDConversationManager *)self activeLocalHandlesForProvider];
    v13 = (activeLocalHandlesForProvider)[2](activeLocalHandlesForProvider, providerCopy);
    v10 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy activeLocalHandles:v13 provider:providerCopy];
  }

  return v10;
}

- (BOOL)isValidLocalHandle:(id)handle
{
  handleCopy = handle;
  activeLocalHandles = [(CSDConversationManager *)self activeLocalHandles];
  v6 = activeLocalHandles[2]();
  LOBYTE(self) = [(CSDConversationManager *)self isValidLocalHandle:handleCopy activeLocalHandles:v6 provider:0];

  return self;
}

- (BOOL)isValidLocalHandle:(id)handle activeLocalHandles:(id)handles provider:(id)provider
{
  handleCopy = handle;
  providerCopy = provider;
  if ([handles containsObject:handleCopy])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(CSDConversationManager *)self isHandleLocalPseudonym:handleCopy provider:providerCopy];
  }

  return v10;
}

- (BOOL)isHandleLocalPseudonym:(id)pseudonym provider:(id)provider
{
  providerCopy = provider;
  value = [pseudonym value];
  LOBYTE(self) = [(CSDConversationManager *)self isHandleStringLocalPseudonym:value provider:providerCopy];

  return self;
}

- (BOOL)isHandleStringLocalPseudonym:(id)pseudonym provider:(id)provider
{
  pseudonymCopy = pseudonym;
  providerCopy = provider;
  v8 = pseudonymCopy;
  destinationIdIsPseudonym = [v8 destinationIdIsPseudonym];
  if (destinationIdIsPseudonym)
  {
    v10 = [[IDSURI alloc] initWithPrefixedURI:v8];
    featureFlags = [(CSDConversationManager *)self featureFlags];
    groupFacetimeAsAServiceEnabled = [featureFlags groupFacetimeAsAServiceEnabled];

    if (providerCopy && groupFacetimeAsAServiceEnabled)
    {
      v13 = +[CSDConversationProviderManager sharedInstance];
      service = [v13 serviceForProvider:providerCopy];
    }

    else
    {
      service = [(CSDConversationManager *)self service];
    }

    v14Service = [service service];
    v17 = [v14Service pseudonymForPseudonymURI:v10];
    v15 = v17 != 0;

    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v14Service2 = [service service];
      service2 = [(CSDConversationManager *)self service];
      v14Service3 = [service service];
      v23 = [v14Service3 pseudonymForPseudonymURI:v10];
      v27 = 138413314;
      v28 = v8;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v14Service2;
      v33 = 2112;
      v34 = service2;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "destinationID: %@, uri: %@, service: %@, self.service: %@, pseudonym: %@", &v27, 0x34u);
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = sub_100004778(destinationIdIsPseudonym);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    v27 = 138412802;
    v28 = v8;
    v29 = 2112;
    if (v15)
    {
      v25 = @"YES";
    }

    v30 = v25;
    v31 = 2112;
    v32 = providerCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "destinationID: %@, isLocalPseudonym: %@, provider: %@", &v27, 0x20u);
  }

  return v15;
}

- (id)senderIdentityUUIDForCallerIDHandle:(id)handle
{
  handleCopy = handle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  senderIdentitiesBlock = [(CSDConversationManager *)self senderIdentitiesBlock];
  v6 = senderIdentitiesBlock[2]();

  uUID = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (uUID)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != uUID; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        handle = [v10 handle];
        v12 = [handle isEqualToHandle:handleCopy];

        if (v12)
        {
          uUID = [v10 UUID];
          goto LABEL_11;
        }
      }

      uUID = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (uUID)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return uUID;
}

- (id)callerIDHandleForSenderIdentityUUID:(id)d callerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  senderIdentitiesBlock = [(CSDConversationManager *)self senderIdentitiesBlock];
  v9 = senderIdentitiesBlock[2]();

  handle2 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (handle2)
  {
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != handle2; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        uUID = [v13 UUID];
        v15 = [uUID isEqual:dCopy];

        if (v15)
        {
          if ([iDCopy length])
          {
            handle = [v13 handle];
            value = [handle value];
            v18 = [value isEqualToString:iDCopy];

            if (v18)
            {
              handle2 = [v13 handle];
              goto LABEL_13;
            }
          }
        }
      }

      handle2 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (handle2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v20 = sub_100004778(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = iDCopy;
    v28 = 2112;
    v29 = handle2;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "callerIDHandleForSenderIdentityUUID: callerID: %@ handle: %@ for %@", buf, 0x20u);
  }

  return handle2;
}

- (id)callerIDForLocalMember:(id)member forProvider:(id)provider
{
  memberCopy = member;
  providerCopy = provider;
  handle = [memberCopy handle];
  LODWORD(self) = [(CSDConversationManager *)self isValidLocalHandle:handle forProvider:providerCopy];

  if (self)
  {
    handle2 = [memberCopy handle];
    normalizedValue = [handle2 normalizedValue];
  }

  else
  {
    v12 = sub_100004778(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004767E8();
    }

    normalizedValue = &stru_100631E68;
  }

  return normalizedValue;
}

- (id)localMemberForProvider:(id)provider fromHandle:(id)handle members:(id)members lightweightMembers:(id)lightweightMembers activeLocalHandles:(id)handles
{
  providerCopy = provider;
  handleCopy = handle;
  membersCopy = members;
  lightweightMembersCopy = lightweightMembers;
  handlesCopy = handles;
  v41 = membersCopy;
  v14 = [NSMutableSet setWithSet:membersCopy];
  v40 = lightweightMembersCopy;
  [v14 unionSet:lightweightMembersCopy];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v50 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v49 + 1) + 8 * v19);
      handle = [v20 handle];
      localCallerIDForProvider = [(CSDConversationManager *)self localCallerIDForProvider];
      v23 = (localCallerIDForProvider)[2](localCallerIDForProvider, providerCopy);
      v24 = [handle isEqual:v23];

      if (v24)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v25 = v20;

    if (!v25)
    {
      goto LABEL_12;
    }

    v26 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = v15;
    v28 = [v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v26 = 0;
      v30 = *v46;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v46 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v45 + 1) + 8 * i);
          handle2 = [v32 handle];
          v34 = [(CSDConversationManager *)self isValidLocalHandle:handle2 activeLocalHandles:handlesCopy provider:providerCopy];

          if (v34)
          {
            handle3 = [v32 handle];
            v36 = [handle3 isEqualToHandle:handleCopy];

            v25 = v32;
            if (!v36)
            {
              goto LABEL_23;
            }

            v26 = v25;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v29);
      v25 = 0;
LABEL_23:

      if (v25)
      {
        v37 = 1;
      }

      else
      {
        v37 = v26 == 0;
      }

      if (!v37)
      {
        v26 = v26;
        v25 = v26;
      }
    }

    else
    {

      v26 = 0;
      v25 = 0;
    }
  }

  v38 = v25;

  return v25;
}

- (id)createConversationWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)initiator remoteMembers:(id)members pendingMembers:(id)self0 otherInvitedHandles:(id)self1 remotePushTokens:(id)self2 lightweightMembers:(id)self3 activity:(id)self4 link:(id)self5 report:(id)self6 fromStorage:(BOOL)self7 avMode:(unint64_t)self8 presentationMode:(unint64_t)self9 provider:(id)provider screenSharingRequest:(id)request isInitiator:(BOOL)isInitiator isOldMessage:(BOOL)message
{
  createdCopy = created;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  memberCopy = member;
  initiatorCopy = initiator;
  membersCopy = members;
  pendingMembersCopy = pendingMembers;
  handlesCopy = handles;
  tokensCopy = tokens;
  lightweightMembersCopy = lightweightMembers;
  selfCopy2 = self;
  activityCopy = activity;
  linkCopy = link;
  reportCopy = report;
  providerCopy = provider;
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v33 = sub_100004778(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v169 = dCopy;
    v170 = 2112;
    v171 = iDCopy;
    v172 = 2112;
    v173 = memberCopy;
    v174 = 2048;
    modeCopy = mode;
    v176 = 1024;
    storageCopy = storage;
    v178 = 2112;
    v179 = reportCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "UUID: %@ groupUUID: %@ localMember: %@ avMode: %lu, fromStorage: %d report: %@", buf, 0x3Au);
  }

  v35 = sub_100004778(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v169 = dCopy;
    v170 = 2112;
    v171 = membersCopy;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "UUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  v152 = +[NSMutableSet set];
  v36 = [tokensCopy count];
  v136 = providerCopy;
  v129 = lightweightMembersCopy;
  if (v36)
  {
    v37 = sub_100004778(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [tokensCopy allObjects];
      v39 = TULoggableStringForHandles();
      *buf = 138412546;
      v169 = dCopy;
      v170 = 2112;
      v171 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Asked to invite specific conversationUUID: %@ participantDestinationIDs: %@", buf, 0x16u);
    }

    allObjects2 = [tokensCopy allObjects];
    [v152 addObjectsFromArray:allObjects2];
  }

  else
  {
    if (lightweightMembersCopy)
    {
      v41 = [membersCopy setByAddingObjectsFromSet:lightweightMembersCopy];
    }

    else
    {
      v41 = membersCopy;
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    allObjects2 = v41;
    v42 = [allObjects2 countByEnumeratingWithState:&v161 objects:v167 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v162;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v162 != v44)
          {
            objc_enumerationMutation(allObjects2);
          }

          v46 = [IDSDestination destinationWithTUConversationMember:*(*(&v161 + 1) + 8 * i)];
          [v152 addObject:v46];
        }

        v43 = [allObjects2 countByEnumeratingWithState:&v161 objects:v167 count:16];
      }

      while (v43);
    }

    providerCopy = v136;
  }

  if ([membersCopy count] != 1)
  {
    goto LABEL_23;
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags uPlusOneSessionWithCapabilitiesEnabled])
  {
    serverBag = [(CSDConversationManager *)self serverBag];
    isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

    if (isUPlusOneSessionCapabilitiesEnabled)
    {
LABEL_23:
      v50 = [IDSDestination destinationWithTUConversationMember:memberCopy];
      [v152 addObject:v50];
      goto LABEL_52;
    }
  }

  else
  {
  }

  pushTokenForSelf = [(CSDConversationManager *)self pushTokenForSelf];
  idsDestination = [memberCopy idsDestination];
  v50 = IDSCopyIDForTokenWithID();

  service = [(CSDConversationManager *)self service];
  v54 = IDSRegistrationPropertySupportsSelfOneToOneInvites;
  handle = [memberCopy handle];
  v56 = [service deviceDestinationsWithCapability:v54 localHandle:handle];

  v58 = sub_100004778(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = TULoggableStringForHandles();
    *buf = 138412546;
    v169 = v50;
    v170 = 2112;
    v171 = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "localDeviceDestination: %@ oneToOneModeCapableLocalDestinations: %@", buf, 0x16u);
  }

  providerCopy = v136;
  if ([v56 count])
  {
    v125 = v50;
    v133 = membersCopy;
    v60 = +[NSMutableSet set];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    obj = v56;
    v147 = [obj countByEnumeratingWithState:&v157 objects:v166 count:16];
    if (v147)
    {
      v145 = *v158;
      do
      {
        v61 = 0;
        do
        {
          if (*v158 != v145)
          {
            objc_enumerationMutation(obj);
          }

          v149 = v61;
          v62 = *(*(&v157 + 1) + 8 * v61);
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          destinationURIs = [v62 destinationURIs];
          v64 = [destinationURIs countByEnumeratingWithState:&v153 objects:v165 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v154;
            do
            {
              for (j = 0; j != v65; j = j + 1)
              {
                if (*v154 != v66)
                {
                  objc_enumerationMutation(destinationURIs);
                }

                v68 = *(*(&v153 + 1) + 8 * j);
                handle2 = [memberCopy handle];
                value = [handle2 value];
                v71 = [v68 rangeOfString:value];

                v72 = [v68 stringByReplacingOccurrencesOfString:@"self-token:" withString:@"token:"];
                if (v71 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v73 = v60;
                }

                else
                {
                  v73 = v152;
                }

                [v73 addObject:v72];
              }

              v65 = [destinationURIs countByEnumeratingWithState:&v153 objects:v165 count:16];
            }

            while (v65);
          }

          v61 = v149 + 1;
        }

        while ((v149 + 1) != v147);
        v147 = [obj countByEnumeratingWithState:&v157 objects:v166 count:16];
      }

      while (v147);
    }

    v75 = sub_100004778(v74);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [v60 description];
      *buf = 138412290;
      v169 = v76;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "These participant destinations with handles are not added because the handle associated is not being called: %@", buf, 0xCu);
    }

    membersCopy = v133;
    selfCopy2 = self;
    providerCopy = v136;
    v50 = v125;
  }

  if (v50)
  {
    [v152 addObject:v50];
  }

  else
  {
    v77 = [IDSDestination destinationWithTUConversationMember:memberCopy];
    [v152 addObject:v77];
  }

LABEL_52:
  v79 = sub_100004778(v78);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    service2 = [(CSDConversationManager *)selfCopy2 service];
    allObjects3 = [v152 allObjects];
    v82 = TULoggableStringForHandles();
    *buf = 138413058;
    v169 = dCopy;
    v170 = 2112;
    v171 = service2;
    v172 = 2112;
    v173 = providerCopy;
    v174 = 2112;
    modeCopy = v82;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ service: %@, provider: %@, participantDestinationIDs: %@", buf, 0x2Au);
  }

  v150 = [(CSDConversationManager *)selfCopy2 callerIDForLocalMember:memberCopy forProvider:providerCopy];
  uUIDString = [uIDCopy UUIDString];
  v84 = uUIDString;
  if (uUIDString)
  {
    uUIDString2 = uUIDString;
  }

  else
  {
    uUIDString2 = [iDCopy UUIDString];
  }

  v148 = uUIDString2;

  if ([membersCopy count] == 1)
  {
    allObjects4 = [membersCopy allObjects];
    firstObject = [allObjects4 firstObject];
    handle3 = [firstObject handle];
    value2 = [handle3 value];
    v90 = [value2 destinationIdIsTemporary] ^ 1;
    if (linkCopy)
    {
      v91 = 0;
    }

    else
    {
      v91 = v90;
    }
  }

  else
  {
    v91 = 0;
  }

  featureFlags2 = [(CSDConversationManager *)selfCopy2 featureFlags];
  if ([featureFlags2 oneToOneFaceTimeMyselfEnabled])
  {
    serverBag2 = [(CSDConversationManager *)selfCopy2 serverBag];
    isFaceTimeMyselfEnabled = [serverBag2 isFaceTimeMyselfEnabled];

    if ((v91 | isFaceTimeMyselfEnabled ^ 1))
    {
      goto LABEL_70;
    }

    v95 = [membersCopy count];
    if (v95 || (v95 = [tokensCopy count]) == 0)
    {
      v91 = 0;
      goto LABEL_70;
    }

    [NSSet setWithObject:memberCopy];
    featureFlags2 = membersCopy;
    membersCopy = v91 = 1;
  }

LABEL_70:
  v96 = sub_100004778(v95);
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = @"NO";
    if (v91)
    {
      v97 = @"YES";
    }

    *buf = 138412546;
    v169 = v97;
    v170 = 2112;
    v171 = membersCopy;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "isOneToOneModeEnabled: %@, remoteMembers: %@", buf, 0x16u);
  }

  featureFlags3 = [(CSDConversationManager *)selfCopy2 featureFlags];
  groupFacetimeAsAServiceEnabled = [featureFlags3 groupFacetimeAsAServiceEnabled];

  if (providerCopy && groupFacetimeAsAServiceEnabled)
  {
    v100 = +[CSDConversationProviderManager sharedInstance];
    service3 = [v100 serviceForProvider:providerCopy];
  }

  else
  {
    service3 = [(CSDConversationManager *)selfCopy2 service];
  }

  v146 = [[CSDConversationABTestConfiguration alloc] initWithGroupUUID:iDCopy];
  v134 = membersCopy;
  v126 = v91;
  if (requestCopy)
  {
    featureFlags4 = [(CSDConversationManager *)selfCopy2 featureFlags];
    requestToScreenShareEnabled = [featureFlags4 requestToScreenShareEnabled];
  }

  else
  {
    requestToScreenShareEnabled = 0;
  }

  groupSessionProviderCreationBlock = [(CSDConversationManager *)selfCopy2 groupSessionProviderCreationBlock];
  allObjects5 = [v152 allObjects];
  v106 = [service3 accountWithCallerID:v150];
  queue2 = [(CSDConversationManager *)selfCopy2 queue];
  v108 = [(CSDConversationABTestConfiguration *)v146 copy];
  HIBYTE(v124) = requestToScreenShareEnabled;
  LOBYTE(v124) = mode == 0;
  v109 = (groupSessionProviderCreationBlock)[2](groupSessionProviderCreationBlock, v148, allObjects5, v150, v106, queue2, v126, memberCopy, v124, v108, isInitiator);

  v110 = [[CSDIDSGroupSession alloc] initWithGroupSessionProvider:v109];
  conversationCreationBlock = [(CSDConversationManager *)self conversationCreationBlock];
  queue3 = [(CSDConversationManager *)self queue];
  v113 = [(CSDConversationABTestConfiguration *)v146 copy];
  v114 = (conversationCreationBlock)[2](conversationCreationBlock, queue3, dCopy, iDCopy, v110, uIDCopy, createdCopy, memberCopy, initiatorCopy, v134, pendingMembersCopy, handlesCopy, v129, tokensCopy, activityCopy, linkCopy, requestCopy, reportCopy, storage, mode, presentationMode, v113, message);

  [v114 setDelegate:self];
  [v114 setProvider:v136];
  if (TUSimulatedModeEnabled())
  {
    [v114 setAvcSessionCreationBlock:&stru_10061CCF0];
  }

  reportingController = [(CSDConversationManager *)self reportingController];
  tuConversation = [v114 tuConversation];
  [reportingController createConversationReportingSession:tuConversation];

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  uUID = [v114 UUID];
  [mutableConversationsByUUID setObject:v114 forKeyedSubscript:uUID];

  persistenceController = [(CSDConversationManager *)self persistenceController];
  [persistenceController updateConversation:v114];

  featureFlags5 = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags5 groupFacetimeAsAServiceEnabled])
  {
    v121 = [v136 supportsLinks] ^ 1;
  }

  else
  {
    v121 = 0;
  }

  if (linkCopy && (v121 & 1) == 0)
  {
    v122 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
    [v114 addRequiredCapabilities:v122 requiredLackOfCapabilities:0];
  }

  [(CSDConversationManager *)self notifyDelegatesOfCreatedConversation:v114];

  return v114;
}

- (id)pendingConversationUUIDWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162458;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v10 = pseudonymCopy;
  v11 = &v12;
  v6 = pseudonymCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)removePendingConversationWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162708;
  block[3] = &unk_10061C678;
  v10 = pseudonymCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pseudonymCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_removePendingConversationWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v7 = [mutablePendingConversationsByPseudonym objectForKeyedSubscript:pseudonymCopy];

  if (v7)
  {
    mutablePendingConversationsByPseudonym2 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
    v9 = [mutablePendingConversationsByPseudonym2 objectForKeyedSubscript:pseudonymCopy];

    mutablePendingConversationsByPseudonym3 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
    [mutablePendingConversationsByPseudonym3 setObject:0 forKeyedSubscript:pseudonymCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_removePendingConversationsWithTemporaryGroupUUIDIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v6 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(mutablePendingConversationsByPseudonym);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mutablePendingConversationsByPseudonym2 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        v11 = [mutablePendingConversationsByPseudonym2 objectForKeyedSubscript:v9];

        temporaryGroupUUID = [v11 temporaryGroupUUID];
        v13 = [temporaryGroupUUID isEqual:necessaryCopy];

        if (v13)
        {
          v6 = [(CSDConversationManager *)self _removePendingConversationWithPseudonym:v9];
          [(CSDConversationManager *)self notifyDelegatesOfRemovedConversationWithUUID:necessaryCopy];

          goto LABEL_11;
        }
      }

      v6 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeAllPendingConversations
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162A4C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (CSDConversation)activeConversation
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 state] == 3)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)conversationWithGroupUUID:(id)d andProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v10 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        featureFlags = [(CSDConversationManager *)self featureFlags];
        groupFacetimeAsAServiceEnabled = [featureFlags groupFacetimeAsAServiceEnabled];

        groupUUID = [v14 groupUUID];
        v18 = [groupUUID isEqual:dCopy];
        if (v18)
        {
          v19 = groupFacetimeAsAServiceEnabled == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          v20 = v18;

          if (v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          provider = [v14 provider];
          v22 = [provider isEqualToConversationProvider:providerCopy];

          if (v22)
          {
LABEL_17:
            v23 = v14;
            goto LABEL_18;
          }
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (id)conversationWithGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        groupUUID = [v11 groupUUID];
        v13 = [groupUUID isEqual:dCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)conversationWithGroupUUID:(id)d orRepresentedByRemoteMembers:(id)members andLink:(id)link
{
  dCopy = d;
  membersCopy = members;
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [(CSDConversationManager *)self conversationWithGroupUUID:dCopy];
  v13 = v12;
  if (!v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
    allValues = [mutableConversationsByUUID allValues];

    v16 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v26;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(allValues);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        if ([v21 isRepresentedByRemoteMembers:membersCopy andLink:linkCopy])
        {
          v13 = v21;

          v18 = v13;
          if (![v13 isFromStorage])
          {
            break;
          }
        }

        if (v17 == ++v20)
        {
          v17 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
          v13 = v18;
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v22 = sub_100004778(v12);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if (v13)
    {
      groupUUID = [v13 groupUUID];
    }

    else
    {
      groupUUID = 0;
    }

    *buf = 138412546;
    v30 = dCopy;
    v31 = 2112;
    v32 = groupUUID;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "found conversation from groupUUID: %@, conversation: %@", buf, 0x16u);
    if (v13)
    {
    }
  }

  return v13;
}

- (id)conversationRepresentedByRemoteMembers:(id)members andLink:(id)link
{
  membersCopy = members;
  linkCopy = link;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100028694;
  v21 = sub_1000328D4;
  v22 = 0;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001632EC;
  v13[3] = &unk_10061CD18;
  v13[4] = self;
  v14 = membersCopy;
  v15 = linkCopy;
  v16 = &v17;
  v9 = linkCopy;
  v10 = membersCopy;
  dispatch_sync(queue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)activeApprovedConversationWithLink:(id)link
{
  linkCopy = link;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163564;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v10 = linkCopy;
  v11 = &v12;
  v6 = linkCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)pendingConversationWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  allValues = [mutablePendingConversationsByPseudonym allValues];

  v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        link = [v11 link];
        pseudonym = [link pseudonym];
        v14 = [pseudonym isEqual:pseudonymCopy];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)findConversationLinkMatchingPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDConversationManager *)self activatedConversationLinksWithError:0, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        pseudonym = [v10 pseudonym];
        v12 = [pseudonym isEqual:pseudonymCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)conversationLinkForPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163B2C;
  block[3] = &unk_10061C678;
  v10 = pseudonymCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pseudonymCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)conversationLinkForGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDConversationManager *)self activatedConversationLinksWithError:0, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        groupUUID = [v10 groupUUID];
        v12 = [groupUUID isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)createConversationIfNecessaryWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member remoteMembers:(id)members pendingMembers:(id)pendingMembers otherInvitedHandles:(id)self0 remotePushTokens:(id)self1 lightweightMembers:(id)self2 link:(id)self3 activity:(id)self4 avMode:(unint64_t)self5 presentationMode:(unint64_t)self6 provider:(id)self7 screenSharingRequest:(id)self8
{
  createdCopy = created;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  memberCopy = member;
  membersCopy = members;
  pendingMembersCopy = pendingMembers;
  handlesCopy = handles;
  tokensCopy = tokens;
  lightweightMembersCopy = lightweightMembers;
  linkCopy = link;
  activityCopy = activity;
  providerCopy = provider;
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v31 = sub_100004778(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v52 = dCopy;
    v53 = 2112;
    v54 = iDCopy;
    v55 = 2112;
    v56 = memberCopy;
    v57 = 2048;
    modeCopy = mode;
    v59 = 2112;
    v60 = providerCopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "UUID: %@ groupUUD: %@ localMember: %@, avMode: %lu, provider: %@", buf, 0x34u);
  }

  v33 = sub_100004778(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v52 = dCopy;
    v53 = 2112;
    v54 = membersCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "UUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  v35 = [mutableConversationsByUUID objectForKeyedSubscript:dCopy];

  if (!v35)
  {
    v36 = objc_alloc_init(TUConversationReport);
    [memberCopy handle];
    v37 = membersCopy;
    v39 = v38 = pendingMembersCopy;
    LOWORD(v42) = 1;
    LOBYTE(v41) = 0;
    v35 = [(CSDConversationManager *)self createConversationWithUUID:dCopy groupUUID:iDCopy messagesGroupUUID:uIDCopy locallyCreated:createdCopy localMember:memberCopy initiator:v39 remoteMembers:v37 pendingMembers:v38 otherInvitedHandles:handlesCopy remotePushTokens:tokensCopy lightweightMembers:lightweightMembersCopy activity:activityCopy link:linkCopy report:v36 fromStorage:v41 avMode:mode presentationMode:presentationMode provider:providerCopy screenSharingRequest:requestCopy isInitiator:v42 isOldMessage:?];

    pendingMembersCopy = v38;
    membersCopy = v37;
  }

  return v35;
}

- (id)conversationWithGroupUUID:(id)d orMemberIdentifiers:(id)identifiers orRemoteMembers:(id)members andLink:(id)link andVideo:(BOOL)video
{
  videoCopy = video;
  dCopy = d;
  identifiersCopy = identifiers;
  membersCopy = members;
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = [(CSDConversationManager *)self conversationWithGroupUUID:dCopy];
  if (!v17)
  {
    v45 = dCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
    allValues = [mutableConversationsByUUID allValues];

    v36 = [allValues countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v51;
      while (2)
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v51 != v38)
          {
            objc_enumerationMutation(allValues);
          }

          v40 = *(*(&v50 + 1) + 8 * i);
          if ([v40 isRepresentedByRemoteMembers:membersCopy andLink:linkCopy])
          {
            isVideo = [v40 isVideo];
            if (isVideo == videoCopy)
            {
              v43 = sub_100004778(isVideo);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                sub_100476824();
              }

              v33 = v40;
LABEL_36:
              dCopy = v45;
              goto LABEL_37;
            }
          }
        }

        v37 = [allValues countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    dCopy = v45;
  }

  serverBag = [(CSDConversationManager *)self serverBag];
  if ([serverBag isParticipantIDToURIIncludedInPush])
  {
    participantIDToURIRemovedEnabled = 0;
  }

  else
  {
    featureFlags = [(CSDConversationManager *)self featureFlags];
    participantIDToURIRemovedEnabled = [featureFlags participantIDToURIRemovedEnabled];
  }

  if (!v17 && (participantIDToURIRemovedEnabled & 1) == 0)
  {
    v45 = dCopy;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    mutableConversationsByUUID2 = [(CSDConversationManager *)self mutableConversationsByUUID];
    allValues2 = [mutableConversationsByUUID2 allValues];

    v24 = [allValues2 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v47;
      while (2)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v47 != v26)
          {
            objc_enumerationMutation(allValues2);
          }

          if (identifiersCopy)
          {
            v28 = *(*(&v46 + 1) + 8 * j);
            memberIdentifiers = [v28 memberIdentifiers];
            v30 = [memberIdentifiers isEqualToSet:identifiersCopy];

            if (v30)
            {
              v42 = sub_100004778(v31);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                sub_10047688C();
              }

              v33 = v28;
              goto LABEL_36;
            }
          }
        }

        v25 = [allValues2 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    dCopy = v45;
  }

  v32 = sub_100004778(v21);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_1004768FC();
  }

  v33 = v17;
LABEL_37:

  return v33;
}

- (void)notifyDelegatesOfMessage:(id)message fromHandle:(id)handle forConversation:(id)conversation withUpdate:(id)update shouldRing:(BOOL)ring
{
  messageCopy = message;
  handleCopy = handle;
  conversationCopy = conversation;
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v19 = [delegateToQueue objectForKey:v16];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164660;
          block[3] = &unk_10061BCB0;
          block[4] = v16;
          v28 = tuConversation;
          selfCopy = self;
          v30 = messageCopy;
          v31 = handleCopy;
          v32 = updateCopy;
          ringCopy = ring;
          v20 = tuConversation;
          dispatch_async(v19, block);
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }
}

- (void)notifyDelegatesOfNewConversation:(id)conversation fromHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001649CC;
          block[3] = &unk_10061A450;
          block[4] = v11;
          v20 = tuConversation;
          selfCopy = self;
          v22 = handleCopy;
          v15 = tuConversation;
          dispatch_async(v14, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfCreatedConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v12 = [delegateToQueue objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164D08;
          block[3] = &unk_100619E58;
          block[4] = v9;
          v17 = tuConversation;
          selfCopy = self;
          v13 = tuConversation;
          dispatch_async(v12, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)notifyDelegatesOfAVModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100165050;
          block[3] = &unk_10061BE60;
          block[4] = v11;
          v21 = tuConversation;
          selfCopy = self;
          changedCopy = changed;
          modeCopy = mode;
          v15 = tuConversation;
          dispatch_async(v14, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfRemovedConversationWithUUID:(id)d
{
  dCopy = d;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v5 = [delegateToQueue countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v11 = [delegateToQueue2 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001654A4;
          block[3] = &unk_100619E58;
          block[4] = v9;
          block[5] = self;
          v29 = dCopy;
          dispatch_async(v11, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [delegateToQueue countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = observerToQueue;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [v14 objectForKey:v19];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1001654B4;
          v22[3] = &unk_100619E58;
          v22[4] = v19;
          v22[5] = self;
          v23 = dCopy;
          dispatch_async(v20, v22);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v16);
  }
}

- (void)notifyDelegatesOfTrackedPendingMember:(id)member forConversationLink:(id)link
{
  memberCopy = member;
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v8 = [delegateToQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue2 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001656C8;
          block[3] = &unk_10061A450;
          block[4] = v12;
          block[5] = self;
          v18 = memberCopy;
          v19 = linkCopy;
          dispatch_async(v14, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [delegateToQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesOfUpdatePendingConversations
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  _incomingPendingConversationsByGroupUUID = [(CSDConversationManager *)self _incomingPendingConversationsByGroupUUID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v5 = [delegateToQueue countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v11 = [delegateToQueue2 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001658B8;
          block[3] = &unk_100619E58;
          block[4] = v9;
          block[5] = self;
          v14 = _incomingPendingConversationsByGroupUUID;
          dispatch_async(v11, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [delegateToQueue countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)notifyDelegatesOfChangedLinkDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if ([descriptorsCopy count])
  {
    v5 = [TUConversationLink alloc];
    firstObject = [descriptorsCopy firstObject];
    v7 = [v5 initWithDescriptor:firstObject];

    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = descriptorsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfChangedLinkDescriptors: %@", &v10, 0xCu);
    }

    [(CSDConversationManager *)self notifyDelegatesOfChangedLink:v7 conversation:0];
  }

  else
  {
    v7 = sub_100004778(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfChangedLinkDescriptors: -- no link descriptors, not updating delegates", &v10, 2u);
    }
  }
}

- (void)notifyDelegatesOfChangedLink:(id)link conversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100165AEC;
    v8[3] = &unk_10061CD40;
    v8[4] = self;
    v9 = conversationCopy;
    [linkManager activatedLinksWithCompletionHandler:v8];
  }
}

- (void)notifyDelegatesOfRemoteScreenShareAttributes:(id)attributes isLocallySharing:(BOOL)sharing
{
  attributesCopy = attributes;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if (supportsScreenSharing)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(CSDConversationManager *)self delegateToQueue];
    v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10016619C;
          block[3] = &unk_10061BE38;
          block[4] = v14;
          block[5] = self;
          v19 = attributesCopy;
          sharingCopy = sharing;
          dispatch_async(v16, block);

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }
}

- (void)notifyDelegatesOfRemoteScreenShareEndedWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if (supportsScreenSharing)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [(CSDConversationManager *)self delegateToQueue];
    v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001663D8;
          block[3] = &unk_100619E58;
          block[4] = v12;
          block[5] = self;
          v17 = reasonCopy;
          dispatch_async(v14, block);

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (void)notifyDelegatesOfLetMeInRejectedForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  tuConversation = [conversationCopy tuConversation];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v13 = [delegateToQueue objectForKey:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10016660C;
        block[3] = &unk_100619E58;
        block[4] = v11;
        v16 = tuConversation;
        selfCopy = self;
        dispatch_async(v13, block);
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfInvalidLinkForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  tuConversation = [conversationCopy tuConversation];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v13 = [delegateToQueue objectForKey:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100166944;
        block[3] = &unk_100619E58;
        block[4] = v11;
        v16 = tuConversation;
        selfCopy = self;
        dispatch_async(v13, block);
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOf:(id)of removedScreenShareRequest:(id)request
{
  ofCopy = of;
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = objc_opt_respondsToSelector();
        if (v13)
        {
          v14 = sub_100004778(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = ofCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfRemovedScreenShareRequest conversation: %@", buf, 0xCu);
          }

          tuConversation = [ofCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100166D18;
          block[3] = &unk_10061A450;
          block[4] = v12;
          v22 = tuConversation;
          selfCopy = self;
          v24 = requestCopy;
          v18 = tuConversation;
          dispatch_async(v17, block);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }
}

- (void)handleConversation:(id)conversation receivedBlobRecoveryRequest:(id)request fromHandle:(id)handle
{
  conversationCopy = conversation;
  requestCopy = request;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  requestBlobRecoveryOptions = [requestCopy requestBlobRecoveryOptions];
  v13 = requestBlobRecoveryOptions;
  v14 = sub_100004778(requestBlobRecoveryOptions);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 67109378;
    *v27 = v13;
    *&v27[4] = 2112;
    *&v27[6] = handleCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryRequest:fromHandle: options: %u from: %@", &v26, 0x12u);
  }

  v15 = TUCopyIDSCanonicalAddressForHandle();
  v16 = [NSArray arrayWithObject:v15];
  v17 = [conversationCopy localConversationParticipantWithDataToSendToDestinationIDs:v16];

  if (v17)
  {
    v19 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v21 = [(CSDMessagingConversationMessage *)v19 initWithType:5 groupUUID:groupUUID link:0];

    v22 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v17];
    if ([requestCopy hasRequestBlobRecoveryOptions] && (v13 & 1) == 0)
    {
      [v22 setAvcData:0];
    }

    [v21 addActiveParticipants:v22];
    data = [v21 data];
    v24 = sub_100004778(data);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      *v27 = v21;
      *&v27[8] = 2112;
      *&v27[10] = handleCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryRequest:fromHandle: Sending message: %@ to: %@", &v26, 0x16u);
    }

    [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toHandle:handleCopy isBlobResponse:1];
  }

  else
  {
    v21 = sub_100004778(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      v26 = 138412290;
      *v27 = uUID;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] handleConversation:receivedBlobRecoveryRequest:fromHandle: No local participant for conversation UUID: %@", &v26, 0xCu);
    }
  }
}

- (void)handleConversation:(id)conversation receivedBlobRecoveryResponse:(id)response fromHandle:(id)handle
{
  conversationCopy = conversation;
  responseCopy = response;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = handleCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryResponse:fromHandle: from: %@", &v28, 0xCu);
  }

  activeParticipants = [responseCopy activeParticipants];
  firstObject = [activeParticipants firstObject];
  csdConversationParticipant = [firstObject csdConversationParticipant];

  if (!csdConversationParticipant)
  {
    v25 = sub_100004778(v17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = responseCopy;
      v26 = "[WARN] handleConversation:receivedBlobRecoveryResponse:fromHandle: Could not find participant in message: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, &v28, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  handle = [csdConversationParticipant handle];
  v19 = [handle isEqualToHandle:handleCopy];

  if (!v19)
  {
    v25 = sub_100004778(v20);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      handle2 = [csdConversationParticipant handle];
      v28 = 138412546;
      v29 = handle2;
      v30 = 2112;
      v31 = handleCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] handleConversation:receivedBlobRecoveryResponse:fromHandle: %@ <!===> %@", &v28, 0x16u);
    }

    goto LABEL_15;
  }

  avcData = [csdConversationParticipant avcData];
  if (!avcData || (v22 = avcData, [csdConversationParticipant avcData], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "length"), v23, v22, !v24))
  {
    v25 = sub_100004778(avcData);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = responseCopy;
      v26 = "[WARN] handleConversation:receivedBlobRecoveryResponse: could not add or update participant: %@";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [conversationCopy addActiveParticipant:csdConversationParticipant];
LABEL_16:
}

- (void)handleConversationHandoffRecommendationChangedNotification:(id)notification
{
  object = [notification object];
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016749C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = object;
  v6 = object;
  dispatch_async(queue, v7);
}

- (void)updateConversationHandoffEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  lockdownModeEnabled = [(CSDConversationManager *)self lockdownModeEnabled];
  v7 = lockdownModeEnabled[2]();

  if (v7)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v65 = eligibilityCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not updating handoff eligibility %@ because lockdown mode is enabled", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v10 = sub_100004778(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (eligibilityCopy)
  {
    if (v11)
    {
      conversationGroupUUID = [eligibilityCopy conversationGroupUUID];
      association = [eligibilityCopy association];
      identifier = [association identifier];
      if ([eligibilityCopy isUplinkMuted])
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *buf = 138413058;
      if ([eligibilityCopy isSendingVideo])
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v65 = conversationGroupUUID;
      v66 = 2048;
      v67 = identifier;
      v68 = 2112;
      v69 = v15;
      v70 = 2112;
      v71 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handoff changed to advertise %@ for identifier %llu, uplink muted %@, sending video %@", buf, 0x2Au);
    }
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handoff changed without eligibility, so stopping advertising", buf, 2u);
  }

  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v19 = allValues;
  v20 = [allValues countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (!v20)
  {
    v22 = 0;
    goto LABEL_42;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v59;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v59 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v58 + 1) + 8 * i);
      if ((+[TUConversationManager supportsConversations]& 1) == 0)
      {
        remoteMembers = [v25 remoteMembers];
        if ([remoteMembers count] >= 2)
        {

LABEL_29:
          v37 = sub_100004778(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = v25;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Handoff eligibility set to nil for GreenTea device: %@", buf, 0xCu);
          }

LABEL_32:
          [v25 setHandoffEligibility:0];
          continue;
        }

        isVideoEnabled = [v25 isVideoEnabled];

        if ((isVideoEnabled & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (eligibilityCopy)
      {
        groupUUID = [v25 groupUUID];
        conversationGroupUUID2 = [eligibilityCopy conversationGroupUUID];
        v28 = [groupUUID isEqual:conversationGroupUUID2];

        if (!v28)
        {
          goto LABEL_32;
        }

        [v25 setHandoffEligibility:eligibilityCopy];
        v29 = v25;

        v31 = sub_100004778(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v29;
          v32 = v31;
          v33 = "Handoff eligibility added to conversation: %@";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
        }
      }

      else
      {
        handoffEligibility = [v25 handoffEligibility];

        if (!handoffEligibility)
        {
          goto LABEL_32;
        }

        [v25 setHandoffEligibility:0];
        v29 = v25;

        v31 = sub_100004778(v39);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v29;
          v32 = v31;
          v33 = "Handoff eligibility removed from conversation: %@";
          goto LABEL_36;
        }
      }

      v22 = v29;
    }

    v21 = [v19 countByEnumeratingWithState:&v58 objects:v63 count:16];
  }

  while (v21);
LABEL_42:
  v9 = v22;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(CSDConversationManager *)selfCopy delegateToQueue];
  v40 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v55;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v54 + 1) + 8 * j);
        tuConversation = [v9 tuConversation];
        delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
        v47 = [delegateToQueue objectForKey:v44];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100167AAC;
        block[3] = &unk_100619E58;
        block[4] = v44;
        v52 = tuConversation;
        v53 = selfCopy;
        v48 = tuConversation;
        dispatch_async(v47, block);
      }

      v41 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v41);
  }

LABEL_50:
}

- (void)handleConversationHandoffRouteIdentifierChangedNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167CE4;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)postSessionStartedForSession:(id)session originator:(id)originator conversation:(id)conversation
{
  sessionCopy = session;
  originatorCopy = originator;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [sessionCopy UUID];
    v19 = 138412546;
    v20 = originatorCopy;
    v21 = 2112;
    v22 = uUID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Posting session started event from participant %@ for session %@", &v19, 0x16u);
  }

  v15 = [TUConversationActivityEvent alloc];
  uUID2 = [sessionCopy UUID];
  v17 = [v15 initWithSessionUUID:uUID2 originator:originatorCopy type:12];

  [v17 setSession:sessionCopy];
  conversationNoticeManger = [(CSDConversationManager *)self conversationNoticeManger];
  [conversationNoticeManger conversation:conversationCopy receivedActivitySessionEvent:v17];
}

- (void)postEndEventForSession:(id)session originator:(id)originator conversation:(id)conversation
{
  sessionCopy = session;
  originatorCopy = originator;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [sessionCopy UUID];
    v19 = 138412546;
    v20 = originatorCopy;
    v21 = 2112;
    v22 = uUID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Posting session ended event from participant %@ for session %@", &v19, 0x16u);
  }

  v15 = [TUConversationActivityEvent alloc];
  uUID2 = [sessionCopy UUID];
  v17 = [v15 initWithSessionUUID:uUID2 originator:originatorCopy type:13];

  [v17 setSession:sessionCopy];
  conversationNoticeManger = [(CSDConversationManager *)self conversationNoticeManger];
  [conversationNoticeManger conversation:conversationCopy receivedActivitySessionEvent:v17];
}

- (id)temporaryFilePath
{
  v2 = NSTemporaryDirectory();
  v3 = +[NSString stringGUID];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)createActivitySession:(id)session onConversation:(id)conversation fromHandle:(id)handle
{
  sessionCopy = session;
  conversationCopy = conversation;
  handleCopy = handle;
  v10 = [conversationCopy memberWithHandle:handleCopy];
  association = [v10 association];
  if (association && (v12 = association, [v10 association], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isPrimary"), v13, v12, (v14 & 1) == 0))
  {
    v18 = sub_100004778(association);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      association2 = [v10 association];
      v28 = 138413058;
      v29 = sessionCopy;
      v30 = 2112;
      v31 = uUID;
      v32 = 2112;
      v33 = handleCopy;
      v34 = 2112;
      v35 = association2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to create ActivitySession %@ on conversation UUID: %@ for fromHandle: %@ using association: %@", &v28, 0x2Au);
    }

    association3 = [v10 association];
    handle = [association3 handle];

    v22 = [CSDMessagingHandle handleWithTUHandle:handle];
    activity = [sessionCopy activity];
    [activity setOriginatorHandle:v22];
  }

  else
  {
    v15 = sub_100004778(association);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v28 = 138412802;
      v29 = sessionCopy;
      v30 = 2112;
      v31 = uUID2;
      v32 = 2112;
      v33 = handleCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Asked to create ActivitySession %@ on conversation UUID: %@ with trusted fromHandle: %@", &v28, 0x20u);
    }

    handle = handleCopy;
  }

  v24 = [CSDMessagingHandle handleWithTUHandle:handle];
  activity2 = [sessionCopy activity];
  [activity2 setFromHandle:v24];

  v26 = [sessionCopy createActivitySessionOnConversation:conversationCopy];

  return v26;
}

- (void)handleEncryptedMessageWithin:(id)within fromHandle:(id)handle context:(id)context
{
  withinCopy = within;
  handleCopy = handle;
  contextCopy = context;
  hasEncryptedMessage = [withinCopy hasEncryptedMessage];
  if (!hasEncryptedMessage || (hasEncryptedMessage = [withinCopy hasEnclosedEncryptedType], (hasEncryptedMessage & 1) == 0))
  {
    v13 = sub_100004778(hasEncryptedMessage);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    LOWORD(v17[0]) = 0;
    v14 = "[WARN] Conversation message of type Encrypted received with either no encryptedMessage or enclosedEncryptedType. Dropping message.";
    v15 = v13;
    v16 = 2;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v17, v16);
    goto LABEL_9;
  }

  enclosedEncryptedType = [withinCopy enclosedEncryptedType];
  if (enclosedEncryptedType == 16)
  {
    [(CSDConversationManager *)self handleEncryptedLetMeInResponse:withinCopy fromHandle:handleCopy context:contextCopy];
    goto LABEL_10;
  }

  if (enclosedEncryptedType != 10)
  {
    v13 = sub_100004778(enclosedEncryptedType);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v17[0] = 67109120;
    v17[1] = [withinCopy enclosedEncryptedType];
    v14 = "[WARN] ConversationMessage of type Encrypted with enclosed type of %d which we do not have support for, dropping.";
    v15 = v13;
    v16 = 8;
    goto LABEL_8;
  }

  [(CSDConversationManager *)self handleEncryptedLetMeInRequest:withinCopy fromHandle:handleCopy context:contextCopy];
LABEL_10:
}

- (void)handleEncryptedLetMeInRequest:(id)request fromHandle:(id)handle context:(id)context
{
  requestCopy = request;
  handleCopy = handle;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  _linksEnabled = [(CSDConversationManager *)self _linksEnabled];
  if (_linksEnabled)
  {
    v13 = sub_100004778(_linksEnabled);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = handleCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received Encrypted message with enclosed type of LetMeInRequest from handle %@", buf, 0xCu);
    }

    csd_pseudonym = [contextCopy csd_pseudonym];
    if ([csd_pseudonym length])
    {
      v15 = [TUHandle normalizedGenericHandleForValue:csd_pseudonym];
      if (v15)
      {
        linkManager = [(CSDConversationManager *)self linkManager];
        encryptedMessage = [requestCopy encryptedMessage];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100168D78;
        v19[3] = &unk_10061CD90;
        v19[4] = self;
        v15 = v15;
        v20 = v15;
        v21 = handleCopy;
        v22 = contextCopy;
        [linkManager decryptLetMeInRequest:encryptedMessage pseudonym:v15 fromHandle:v21 completionHandler:v19];
      }

      else
      {
        v18 = sub_100004778(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Let Me In request was not sent to a pseudonym. Dropping message.", buf, 2u);
        }
      }
    }

    else
    {
      v15 = sub_100004778(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve a pseudonym string from the message context.", buf, 2u);
      }
    }
  }
}

- (void)handleEncryptedLetMeInResponse:(id)response fromHandle:(id)handle context:(id)context
{
  responseCopy = response;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    tuConversationLink = [responseCopy tuConversationLink];
    v11 = sub_100004778(tuConversationLink);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!tuConversationLink)
    {
      if (!v12)
      {
LABEL_26:

        goto LABEL_27;
      }

      link = [responseCopy link];
      *buf = 138412290;
      v43 = link;
      v25 = "[WARN] Provided link is %@, which was not a valid TUConversationLink.";
      v26 = v11;
      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 138412290;
      v43 = handleCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received Encrypted message with enclosed type of LetMeInResponse from handle %@", buf, 0xCu);
    }

    pseudonym = [tuConversationLink pseudonym];
    v11 = [(CSDConversationManager *)self pendingConversationWithPseudonym:pseudonym];

    if (v11)
    {
      letMeInRequestState = [v11 letMeInRequestState];
      if (letMeInRequestState == 2)
      {
        letMeInKeyAgreement = [v11 letMeInKeyAgreement];
        if (!letMeInKeyAgreement || (v17 = letMeInKeyAgreement, -[NSObject letMeInKeyAgreement](v11, "letMeInKeyAgreement"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isExhausted], v18, v17, v19))
        {
          link = sub_100004778(letMeInKeyAgreement);
          if (os_log_type_enabled(link, OS_LOG_TYPE_DEFAULT))
          {
            letMeInKeyAgreement2 = [v11 letMeInKeyAgreement];
            if (letMeInKeyAgreement2)
            {
              v22 = @"NO";
            }

            else
            {
              v22 = @"YES";
            }

            letMeInKeyAgreement3 = [v11 letMeInKeyAgreement];
            if (letMeInKeyAgreement3)
            {
              letMeInKeyAgreement4 = [v11 letMeInKeyAgreement];
              if ([letMeInKeyAgreement4 isExhausted])
              {
                v24 = @"YES";
              }

              else
              {
                v24 = @"NO";
              }
            }

            else
            {
              v24 = 0;
            }

            *buf = 138412546;
            v43 = v22;
            v44 = 2112;
            v45 = v24;
            _os_log_impl(&_mh_execute_header, link, OS_LOG_TYPE_DEFAULT, "[WARN] Pending conversation's let me in key agreement is either nil (%@) or exhausted (%@)", buf, 0x16u);
            if (letMeInKeyAgreement3)
            {
            }
          }

          goto LABEL_25;
        }

        pseudonym2 = [tuConversationLink pseudonym];
        link = [TUHandle normalizedGenericHandleForValue:pseudonym2];

        if (!link)
        {
          v33 = sub_100004778(v29);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Let Me In response was not sent to a pseudonym. Dropping message.", buf, 2u);
          }

          goto LABEL_44;
        }

        linkManager = [(CSDConversationManager *)self linkManager];
        encryptedMessage = [responseCopy encryptedMessage];
        letMeInKeyAgreement5 = [v11 letMeInKeyAgreement];
        v33 = [linkManager decryptLetMeInResponse:encryptedMessage pseudonym:link requestorKeyAgreement:letMeInKeyAgreement5];

        if (v33)
        {
          type = [v33 type];
          if (type == 16)
          {
            [(CSDConversationManager *)self handleReceivedLetMeInResponse:v33 pendingConversation:v11 fromHandle:handleCopy];
LABEL_44:

            goto LABEL_25;
          }

          v36 = sub_100004778(type);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            type2 = [v33 type];
            *buf = 67109120;
            LODWORD(v43) = type2;
            v37 = "[WARN] Decrypted conversation message but was not a let me in response messageType: %d";
            v38 = v36;
            v39 = 8;
            goto LABEL_42;
          }
        }

        else
        {
          v36 = sub_100004778(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v37 = "[WARN] Could not decrypt let me in response";
            v38 = v36;
            v39 = 2;
LABEL_42:
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
          }
        }

        goto LABEL_44;
      }

      link = sub_100004778(letMeInRequestState);
      if (os_log_type_enabled(link, OS_LOG_TYPE_DEFAULT))
      {
        letMeInRequestState2 = [v11 letMeInRequestState];
        *buf = 134217984;
        v43 = letMeInRequestState2;
        v25 = "[WARN] Pending conversation's let me in request state is %ld instead of Requested";
        goto LABEL_23;
      }
    }

    else
    {
      link = sub_100004778(v14);
      if (os_log_type_enabled(link, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = tuConversationLink;
        v25 = "[WARN] No pending conversation found for link %@";
LABEL_23:
        v26 = link;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

- (void)handleReceivedLetMeInRequest:(id)request toPseudonym:(id)pseudonym fromHandle:(id)handle responseKeyData:(id)data dateInitiated:(id)initiated
{
  requestCopy = request;
  pseudonymCopy = pseudonym;
  handleCopy = handle;
  dataCopy = data;
  initiatedCopy = initiated;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    value = [pseudonymCopy value];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001696A8;
    v20[3] = &unk_10061CDE0;
    v20[4] = self;
    v21 = pseudonymCopy;
    v22 = handleCopy;
    v23 = dataCopy;
    v24 = requestCopy;
    v25 = initiatedCopy;
    [linkManager getLinkDescriptorWithPseudonym:value includeInactive:0 completionHandler:v20];
  }
}

- (void)handleReceivedLetMeInResponse:(id)response pendingConversation:(id)conversation fromHandle:(id)handle
{
  responseCopy = response;
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    tuConversationLink = [responseCopy tuConversationLink];
    if (tuConversationLink && [responseCopy hasIsLetMeInApproved])
    {
      if ([responseCopy isLetMeInApproved])
      {
        conversationGroupUUID = [responseCopy conversationGroupUUID];

        if (!conversationGroupUUID)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      link = [conversationCopy link];
      tuConversationLink2 = [responseCopy tuConversationLink];
      v26 = [link isEquivalentToConversationLink:tuConversationLink2];

      if ((v26 & 1) == 0)
      {
        v15 = sub_100004778(v27);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Let me in response is not for the provided pending conversation. Ignoring.", &v45, 2u);
        }

        goto LABEL_21;
      }

      value = [handleCopy value];
      if ([value destinationIdIsPseudonym])
      {
        link2 = [conversationCopy link];
        pseudonym = [link2 pseudonym];
        value2 = [handleCopy value];
        v32 = [pseudonym isEqualToString:value2];

        if ((v32 & 1) == 0)
        {
          v15 = sub_100004778(v33);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          link3 = [conversationCopy link];
          pseudonym2 = [(__CFString *)link3 pseudonym];
          value3 = [handleCopy value];
          v45 = 138412546;
          v46 = pseudonym2;
          v47 = 2112;
          v48 = value3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Let me in response is not from the pseudonym defined in the link %@, instead is from %@", &v45, 0x16u);

          goto LABEL_20;
        }
      }

      else
      {
      }

      if ([responseCopy isLetMeInApproved])
      {
        link4 = [conversationCopy link];
        tuConversationLink3 = [responseCopy tuConversationLink];
        v37 = [link4 isEqualToConversationLink:tuConversationLink3];

        if ((v37 & 1) == 0)
        {
          tuConversationLink4 = [responseCopy tuConversationLink];
          v39 = [tuConversationLink4 copy];
          [conversationCopy setLink:v39];
        }

        conversationGroupUUID2 = [responseCopy conversationGroupUUID];
        [conversationCopy setConversationGroupUUID:conversationGroupUUID2];

        tuConversationLink5 = [responseCopy tuConversationLink];
        originatorHandle = [tuConversationLink5 originatorHandle];
        [conversationCopy setApproverHandle:originatorHandle];
      }

      else
      {
        v43 = [(CSDConversationManager *)self notifyDelegatesOfLetMeInRejectedForPendingConversation:conversationCopy];
      }

      v15 = sub_100004778(v43);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      if ([responseCopy isLetMeInApproved])
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      link3 = [conversationCopy conversationGroupUUID];
      pseudonym2 = [conversationCopy approverHandle];
      v45 = 138543874;
      v46 = v44;
      v47 = 2112;
      v48 = link3;
      v49 = 2112;
      v50 = pseudonym2;
      v21 = "Finished processing let me in response (approved: %{public}@) for groupUUID: %@. Approver handle is %@.";
      v22 = v15;
      v23 = 32;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v45, v23);
LABEL_20:

      goto LABEL_21;
    }

LABEL_8:
    v15 = sub_100004778(v14);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      goto LABEL_22;
    }

    link3 = [responseCopy conversationGroupUUID];
    if (link3)
    {
      v17 = @"NO";
    }

    else
    {
      v17 = @"YES";
    }

    pseudonym2 = [responseCopy tuConversationLink];
    if (pseudonym2)
    {
      v19 = @"NO";
    }

    else
    {
      v19 = @"YES";
    }

    v45 = 138544130;
    if ([responseCopy hasIsLetMeInApproved])
    {
      v20 = @"NO";
    }

    else
    {
      v20 = @"YES";
    }

    v46 = v17;
    v47 = 2114;
    v48 = v19;
    v49 = 2114;
    v50 = v20;
    v51 = 2112;
    v52 = responseCopy;
    v21 = "[WARN] Ignoring let me in response message, as it is missing a groupUUID (%{public}@), missing a link (%{public}@), or does not specify approval/rejection (%{public}@): %@";
    v22 = v15;
    v23 = 42;
    goto LABEL_19;
  }

LABEL_22:
}

- (void)handleReceivedLinkCreatedOrChangedMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016A2C4;
  block[3] = &unk_100619E58;
  v12 = messageCopy;
  v13 = handleCopy;
  selfCopy = self;
  v9 = handleCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)handleReceivedLinkInvalidatedMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AEE8;
  block[3] = &unk_100619E58;
  v12 = messageCopy;
  v13 = handleCopy;
  selfCopy = self;
  v9 = handleCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)removeLink:(id)link reason:(int64_t)reason withConversation:(id)conversation
{
  linkCopy = link;
  conversationCopy = conversation;
  linkManager = [(CSDConversationManager *)self linkManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016B3F0;
  v13[3] = &unk_10061AC68;
  v13[4] = self;
  v14 = linkCopy;
  v15 = conversationCopy;
  v11 = conversationCopy;
  v12 = linkCopy;
  [linkManager removeLink:v12 deleteReason:reason completionHandler:v13];
}

- (void)handleReceivedLMIDelegateMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    conversationGroupUUID = [messageCopy conversationGroupUUID];
    if (!conversationGroupUUID)
    {
      v10 = sub_100004778(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Dismissing let me in delegation because no groupUUID was set", buf, 2u);
      }

      goto LABEL_42;
    }

    v10 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID];
    letMeInDelegationHandle = [messageCopy letMeInDelegationHandle];
    v12 = IDSCopyRawAddressForDestination();
    v13 = [TUHandle normalizedHandleWithDestinationID:v12];

    v14 = +[TUPrivacyManager sharedPrivacyManager];
    LODWORD(v12) = [v14 isIncomingCommunicationBlockedForHandle:v13];

    if (v12)
    {
      v16 = sub_100004778(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v50 = v13;
        v51 = 2112;
        v52 = handleCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Dismissing let me in delegation because the forHandle is blocked {forHandle: %@, fromHandle: %@}", buf, 0x16u);
      }

      goto LABEL_41;
    }

    if (v13)
    {
      v17 = [TUConversationMember alloc];
      nickname = [messageCopy nickname];
      v16 = [v17 initWithHandle:v13 nickname:nickname joinedFromLetMeIn:1];

      if ([messageCopy type] == 14)
      {
        v19 = [NSUUID alloc];
        letMeInDelegationUUID = [messageCopy letMeInDelegationUUID];
        v21 = [v19 initWithUUIDString:letMeInDelegationUUID];

        v23 = sub_100004778(v22);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v24)
          {
            *buf = 138412802;
            v50 = handleCopy;
            v51 = 2112;
            v52 = v13;
            v53 = 2112;
            v54 = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received LMI delegation message! {fromHandle: %@, forHandle: %@, transactionUUID: %@}", buf, 0x20u);
          }

          v48 = v21;

          localMember = [v10 localMember];
          handle = [localMember handle];
          v27 = [v13 isEqualToHandle:handle];

          if (v27)
          {
            v23 = sub_100004778(v28);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "forHandle is equal to myself, do not need to process", buf, 2u);
            }

            v21 = v48;
            goto LABEL_39;
          }

          selfCopy = self;
          letMeInDelegationHandle2 = v48;
          [(CSDConversationManager *)selfCopy handleDelegatedPendingMemberIfNecessary:v16 conversation:v10 groupUUID:conversationGroupUUID fromHandle:handleCopy transactionUUID:v48];
          goto LABEL_35;
        }

        if (v24)
        {
          letMeInDelegationUUID2 = [messageCopy letMeInDelegationUUID];
          *buf = 138412546;
          v50 = handleCopy;
          v51 = 2112;
          v52 = letMeInDelegationUUID2;
          v46 = "Received LMI delegation, unable to parse transactionUUID -- ignoring! {fromHandle: %@, message.letMeInDelegationUUID: %@}";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);

          goto LABEL_39;
        }

        goto LABEL_39;
      }

      type = [messageCopy type];
      if (type == 15)
      {
        if (v10)
        {
          v34 = [NSUUID alloc];
          letMeInDelegationUUID3 = [messageCopy letMeInDelegationUUID];
          v21 = [v34 initWithUUIDString:letMeInDelegationUUID3];

          if (v21)
          {
            hasIsLetMeInApproved = [messageCopy hasIsLetMeInApproved];
            v38 = hasIsLetMeInApproved;
            v23 = sub_100004778(hasIsLetMeInApproved);
            v39 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
            if (v38)
            {
              if (v39)
              {
                isLetMeInApproved = [messageCopy isLetMeInApproved];
                v41 = @"NO";
                *buf = 138413058;
                v50 = handleCopy;
                v51 = 2112;
                if (isLetMeInApproved)
                {
                  v41 = @"YES";
                }

                v52 = v13;
                v53 = 2112;
                v54 = v21;
                v55 = 2112;
                v56 = v41;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received LMI delegation response message! {fromHandle: %@, forHandle: %@, transactionUUID: %@, message.letMeInApproval: %@}", buf, 0x2Au);
              }

              isLetMeInApproved2 = [messageCopy isLetMeInApproved];
              pendingMembershipTracker = [(CSDConversationManager *)self pendingMembershipTracker];
              v44 = pendingMembershipTracker;
              if (isLetMeInApproved2)
              {
                [pendingMembershipTracker handleRemoteApprovalOfMember:v16 forConversation:v10 from:handleCopy transactionUUID:v21];
              }

              else
              {
                [pendingMembershipTracker handleRemoteRejectionOfMember:v16 forConversation:v10 from:handleCopy transactionUUID:v21];
              }

              goto LABEL_40;
            }

            if (v39)
            {
              *buf = 138412802;
              v50 = handleCopy;
              v51 = 2112;
              v52 = v13;
              v53 = 2112;
              v54 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received LMI delegation response message, without letMeInApproval -- dropping! {fromHandle: %@, forHandle: %@, transactionUUID: %@}", buf, 0x20u);
            }
          }

          else
          {
            v23 = sub_100004778(v36);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              letMeInDelegationUUID2 = [messageCopy letMeInDelegationUUID];
              *buf = 138412546;
              v50 = handleCopy;
              v51 = 2112;
              v52 = letMeInDelegationUUID2;
              v46 = "Received LMI delegation response, unable to parse transactionUUID -- ignoring! {fromHandle: %@, message.letMeInDelegationUUID: %@}";
              goto LABEL_38;
            }
          }

LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        letMeInDelegationHandle2 = sub_100004778(type);
        if (!os_log_type_enabled(letMeInDelegationHandle2, OS_LOG_TYPE_DEFAULT))
        {
LABEL_35:

          goto LABEL_41;
        }

        *buf = 138412290;
        v50 = conversationGroupUUID;
        v30 = "[WARN] Dismissing let me in delegation response because no conversation was found for link's groupUUID: %@";
        v31 = letMeInDelegationHandle2;
        v32 = 12;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        goto LABEL_35;
      }
    }

    else
    {
      v16 = sub_100004778(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        letMeInDelegationHandle2 = [messageCopy letMeInDelegationHandle];
        *buf = 138412546;
        v50 = handleCopy;
        v51 = 2112;
        v52 = letMeInDelegationHandle2;
        v30 = "Received LMI delegation, unable to parse forHandle -- ignoring! {fromHandle: %@, message.letMeInDelegationHandle: %@}";
        v31 = v16;
        v32 = 22;
        goto LABEL_19;
      }
    }

LABEL_41:

LABEL_42:
  }
}

- (void)handleDelegatedPendingMemberIfNecessary:(id)necessary conversation:(id)conversation groupUUID:(id)d fromHandle:(id)handle transactionUUID:(id)iD
{
  necessaryCopy = necessary;
  conversationCopy = conversation;
  dCopy = d;
  handleCopy = handle;
  iDCopy = iD;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  remoteMembers = [conversationCopy remoteMembers];
  v16 = [remoteMembers countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v31 + 1) + 8 * v19) handle];
        handle2 = [necessaryCopy handle];
        v22 = [handle isEquivalentToHandle:handle2];

        if (v22)
        {

          notifyPendingMembershipTrackerOfDelegatedMember = sub_100004778(v27);
          if (os_log_type_enabled(notifyPendingMembershipTrackerOfDelegatedMember, OS_LOG_TYPE_ERROR))
          {
            sub_100476B98(necessaryCopy);
          }

          v25 = handleCopy;
          v24 = dCopy;
          v26 = iDCopy;
          goto LABEL_13;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [remoteMembers countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  [conversationCopy setHasReceivedLetMeInRequest:1];
  notifyPendingMembershipTrackerOfDelegatedMember = [(CSDConversationManager *)self notifyPendingMembershipTrackerOfDelegatedMember];
  v25 = handleCopy;
  v24 = dCopy;
  v26 = iDCopy;
  (*(notifyPendingMembershipTrackerOfDelegatedMember + 16))(notifyPendingMembershipTrackerOfDelegatedMember, necessaryCopy, conversationCopy, dCopy, handleCopy, iDCopy);
LABEL_13:
}

- (BOOL)sendMessagesForCreatedOrChangedLink:(id)link conversation:(id)conversation messageType:(int)type
{
  v5 = *&type;
  linkCopy = link;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!conversationCopy || ([conversationCopy remoteMembers], queue = objc_claimAutoreleasedReturnValue(), -[NSObject count](queue, "count")))
  {
    invitedMemberHandles = [linkCopy invitedMemberHandles];
    v13 = [invitedMemberHandles count];

    if (conversationCopy)
    {

      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = conversationCopy;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = linkCopy;
    }

    groupUUID = [v14 groupUUID];
    v15 = [[CSDMessagingConversationMessage alloc] initWithType:v5 groupUUID:groupUUID link:linkCopy];
    link = [(CSDMessagingConversationMessage *)v15 link];
    [link setIsActivated:1];

    originatorHandle = [linkCopy originatorHandle];

    if (originatorHandle)
    {
      originatorHandle2 = [linkCopy originatorHandle];
      v19 = [CSDMessagingHandle handleWithTUHandle:originatorHandle2];
      link2 = [(CSDMessagingConversationMessage *)v15 link];
      [link2 setOriginatorHandle:v19];
    }

    creationDate = [linkCopy creationDate];

    if (creationDate)
    {
      creationDate2 = [linkCopy creationDate];
      [creationDate2 timeIntervalSince1970];
      v24 = v23;
      link3 = [(CSDMessagingConversationMessage *)v15 link];
      [link3 setCreationDateEpochTime:v24];
    }

    expirationDate = [linkCopy expirationDate];

    if (expirationDate)
    {
      expirationDate2 = [linkCopy expirationDate];
      [expirationDate2 timeIntervalSince1970];
      v29 = v28;
      link4 = [(CSDMessagingConversationMessage *)v15 link];
      [link4 setPseudonymExpirationDateEpochTime:v29];
    }

    invitedMemberHandles2 = [linkCopy invitedMemberHandles];

    selfCopy = self;
    if (invitedMemberHandles2)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      invitedMemberHandles3 = [linkCopy invitedMemberHandles];
      v33 = [invitedMemberHandles3 countByEnumeratingWithState:&v82 objects:v88 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v83;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v83 != v35)
            {
              objc_enumerationMutation(invitedMemberHandles3);
            }

            v37 = *(*(&v82 + 1) + 8 * i);
            link5 = [(CSDMessagingConversationMessage *)v15 link];
            v39 = [CSDMessagingHandle handleWithTUHandle:v37];
            [link5 addInvitedHandles:v39];
          }

          v34 = [invitedMemberHandles3 countByEnumeratingWithState:&v82 objects:v88 count:16];
        }

        while (v34);
      }

      self = selfCopy;
    }

    linkName = [linkCopy linkName];

    if (linkName)
    {
      linkName2 = [linkCopy linkName];
      link6 = [(CSDMessagingConversationMessage *)v15 link];
      [link6 setLinkName:linkName2];
    }

    data = [(CSDMessagingConversationMessage *)v15 data];
    if (conversationCopy)
    {
      localMember = [conversationCopy localMember];
      handle = [localMember handle];
      value = [handle value];
    }

    else
    {
      localMember = [linkCopy originatorHandle];
      value = [localMember value];
    }

    service = [(CSDConversationManager *)self service];
    v51 = [service accountWithCallerID:value];

    v52 = +[NSMutableSet set];
    v71 = value;
    if (conversationCopy)
    {
      v80 = 0uLL;
      v81 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      remoteMembers = [conversationCopy remoteMembers];
      v54 = [remoteMembers countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v54)
      {
        v55 = v54;
        v70 = data;
        v56 = *v79;
        do
        {
          for (j = 0; j != v55; j = j + 1)
          {
            if (*v79 != v56)
            {
              objc_enumerationMutation(remoteMembers);
            }

            idsDestination = [*(*(&v78 + 1) + 8 * j) idsDestination];
            [v52 addObject:idsDestination];
          }

          v55 = [remoteMembers countByEnumeratingWithState:&v78 objects:v87 count:16];
        }

        while (v55);
LABEL_48:
        data = v70;
      }
    }

    else
    {
      v76 = 0uLL;
      v77 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      remoteMembers = [linkCopy invitedMemberHandles];
      v59 = [remoteMembers countByEnumeratingWithState:&v74 objects:v86 count:16];
      if (v59)
      {
        v60 = v59;
        v70 = data;
        v61 = *v75;
        do
        {
          for (k = 0; k != v60; ++k)
          {
            if (*v75 != v61)
            {
              objc_enumerationMutation(remoteMembers);
            }

            v63 = TUCopyIDSCanonicalAddressForHandle();
            [v52 addObject:v63];
          }

          v60 = [remoteMembers countByEnumeratingWithState:&v74 objects:v86 count:16];
        }

        while (v60);
        goto LABEL_48;
      }
    }

    if (conversationCopy)
    {
      localMember2 = [conversationCopy localMember];
    }

    else
    {
      v65 = [TUConversationMember alloc];
      originatorHandle3 = [linkCopy originatorHandle];
      localMember2 = [v65 initWithHandle:originatorHandle3];
    }

    sendDataBlock = [(CSDConversationManager *)selfCopy sendDataBlock];
    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];
    v49 = (sendDataBlock)[2](sendDataBlock, data, v51, v52, localMember2, capabilitySendMessageOptions, 0, 0, 0);

    v47 = groupUUID;
    goto LABEL_53;
  }

LABEL_28:
  v47 = sub_100004778(v11);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 138412546;
    v90 = linkCopy;
    v91 = 2112;
    v92 = uUID;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "No invited members or conversation members were specified; no need to send messages (link: %@, conversation UUID: %@)", buf, 0x16u);
  }

  v49 = 0;
LABEL_53:

  return v49;
}

- (BOOL)sendMessagesForInvalidatedLink:(id)link
{
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [CSDMessagingConversationMessage alloc];
  groupUUID = [linkCopy groupUUID];
  v8 = [(CSDMessagingConversationMessage *)v6 initWithType:24 groupUUID:groupUUID link:linkCopy];

  originatorHandle = [linkCopy originatorHandle];

  if (originatorHandle)
  {
    originatorHandle2 = [linkCopy originatorHandle];
    v11 = [CSDMessagingHandle handleWithTUHandle:originatorHandle2];
    link = [(CSDMessagingConversationMessage *)v8 link];
    [link setOriginatorHandle:v11];
  }

  v31 = v8;
  data = [(CSDMessagingConversationMessage *)v8 data];
  service = [(CSDConversationManager *)self service];
  originatorHandle3 = [linkCopy originatorHandle];
  value = [originatorHandle3 value];
  v17 = [service accountWithCallerID:value];

  v18 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  invitedMemberHandles = [linkCopy invitedMemberHandles];
  v20 = [invitedMemberHandles countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      v23 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(invitedMemberHandles);
        }

        v24 = TUCopyIDSCanonicalAddressForHandle();
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [invitedMemberHandles countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }

  v25 = [TUConversationMember alloc];
  originatorHandle4 = [linkCopy originatorHandle];
  v27 = [v25 initWithHandle:originatorHandle4];

  sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
  v29 = (sendDataBlock)[2](sendDataBlock, data, v17, v18, v27, 0, 0, 0, 0);

  return v29;
}

- (void)requestParticipant:(id)participant toScreenShareWithRequest:(id)request conversation:(id)conversation
{
  participantCopy = participant;
  requestCopy = request;
  conversationCopy = conversation;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    groupUUID = [conversationCopy groupUUID];
    v14 = [[CSDMessagingConversationMessage alloc] initWithType:35 groupUUID:groupUUID link:0];
    v15 = [[CSDMessagingScreenShareContext alloc] initOutgoingRequestWithScreenSharingRequest:requestCopy];
    [(CSDMessagingConversationMessage *)v14 setScreenShareContext:v15];
    handle = [requestCopy handle];
    [(CSDConversationManager *)self sendDataForScreenShareMessage:v14 toParticipant:participantCopy conversation:conversationCopy screenShareRequestHandle:handle allowMemberFallbackForMessage:0];
  }
}

- (void)requestParticipant:(id)participant toCancelScreenShareRequest:(id)request conversation:(id)conversation allowMemberFallbackForMessage:(BOOL)message
{
  messageCopy = message;
  participantCopy = participant;
  requestCopy = request;
  conversationCopy = conversation;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    groupUUID = [conversationCopy groupUUID];
    v16 = [[CSDMessagingConversationMessage alloc] initWithType:35 groupUUID:groupUUID link:0];
    v17 = [[CSDMessagingScreenShareContext alloc] initOutgoingRequestWithScreenSharingRequest:requestCopy];
    [v17 setType:2];
    [(CSDMessagingConversationMessage *)v16 setScreenShareContext:v17];
    handle = [requestCopy handle];
    [(CSDConversationManager *)self sendDataForScreenShareMessage:v16 toParticipant:participantCopy conversation:conversationCopy screenShareRequestHandle:handle allowMemberFallbackForMessage:messageCopy];
  }
}

- (void)denyScreenShareRequestFrom:(id)from screenShareRequest:(id)request conversation:(id)conversation allowMemberFallbackForMessage:(BOOL)message
{
  messageCopy = message;
  fromCopy = from;
  requestCopy = request;
  conversationCopy = conversation;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    groupUUID = [conversationCopy groupUUID];
    v16 = [[CSDMessagingConversationMessage alloc] initWithType:36 groupUUID:groupUUID link:0];
    v17 = [[CSDMessagingScreenShareContext alloc] initOutgoingRequestWithScreenSharingRequest:requestCopy];
    [v17 setType:3];
    [(CSDMessagingConversationMessage *)v16 setScreenShareContext:v17];
    handle = [requestCopy handle];
    [(CSDConversationManager *)self sendDataForScreenShareMessage:v16 toParticipant:fromCopy conversation:conversationCopy screenShareRequestHandle:handle allowMemberFallbackForMessage:messageCopy];
  }
}

- (void)sendDataForScreenShareMessage:(id)message toParticipant:(id)participant conversation:(id)conversation screenShareRequestHandle:(id)handle allowMemberFallbackForMessage:(BOOL)forMessage
{
  forMessageCopy = forMessage;
  messageCopy = message;
  participantCopy = participant;
  conversationCopy = conversation;
  handleCopy = handle;
  localMember = [conversationCopy localMember];
  handle = [localMember handle];
  value = [handle value];

  selfCopy = self;
  service = [(CSDConversationManager *)self service];
  v20 = [service accountWithCallerID:value];

  localMember2 = [conversationCopy localMember];
  v22 = objc_alloc_init(NSMutableSet);
  activeIDSDestination = [participantCopy activeIDSDestination];

  if (activeIDSDestination)
  {
    v25 = participantCopy;
    v26 = value;
    v45 = v25;
    activeIDSDestination2 = [v25 activeIDSDestination];
    [v22 addObject:activeIDSDestination2];

LABEL_3:
    v29 = handleCopy;
    v30 = sub_100004778(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v50 = messageCopy;
      v51 = 2112;
      v52 = v26;
      v53 = 2112;
      v54 = v22;
      v55 = 1024;
      v56 = forMessageCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] sendDataForScreenShareMessage: Sending screen share request message %@ from handle %@ to handle %@, allowMemberFallbackForMessage: %d", buf, 0x26u);
    }

    sendDataBlock = [(CSDConversationManager *)selfCopy sendDataBlock];
    data = [messageCopy data];
    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];
    (*(sendDataBlock + 2))(sendDataBlock, data, v20, v22, localMember2, capabilitySendMessageOptions, 0, 0, 0);

    handleCopy = v29;
    value = v26;
    participantCopy = v45;
    goto LABEL_18;
  }

  if (forMessageCopy)
  {
    v44 = messageCopy;
    handle2 = [participantCopy handle];
    v43 = handleCopy;
    if (handle2)
    {
      handle3 = [participantCopy handle];
    }

    else
    {
      handle3 = handleCopy;
    }

    v36 = handle3;

    remoteMembers = [conversationCopy remoteMembers];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10016CFD0;
    v47[3] = &unk_10061A6F0;
    sendDataBlock = v36;
    v48 = sendDataBlock;
    v38 = [remoteMembers tu_anyObjectPassingTest:v47];

    if (v38)
    {
      idsDestination = [v38 idsDestination];

      if (idsDestination)
      {
        v45 = participantCopy;
        v26 = value;
        idsDestination2 = [v38 idsDestination];
        [v22 addObject:idsDestination2];

        handleCopy = v43;
        messageCopy = v44;
        goto LABEL_3;
      }
    }

    v42 = sub_100004778(v39);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100476C94();
    }

    handleCopy = v43;
    messageCopy = v44;
  }

  else
  {
    sendDataBlock = sub_100004778(v24);
    if (os_log_type_enabled(sendDataBlock, OS_LOG_TYPE_ERROR))
    {
      sub_100476C24();
    }
  }

LABEL_18:
}

- (void)handleReceivedUpdateJoinedMetadataMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    v11 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy];
    if ((v11 & 1) == 0)
    {
      conversationGroupUUID = sub_100004778(v11);
      if (os_log_type_enabled(conversationGroupUUID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = handleCopy;
        _os_log_impl(&_mh_execute_header, conversationGroupUUID, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was sent by a non-local handle %@, dropping message.", buf, 0xCu);
      }

      goto LABEL_37;
    }

    conversationGroupUUID = [messageCopy conversationGroupUUID];
    if (!conversationGroupUUID)
    {
      v14 = sub_100004778(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a group UUID, dropping message.", buf, 2u);
      }

      goto LABEL_36;
    }

    joinedMetadata = [messageCopy joinedMetadata];
    v14 = joinedMetadata;
    if (!joinedMetadata)
    {
      csdConversationParticipant = sub_100004778(0);
      if (os_log_type_enabled(csdConversationParticipant, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, csdConversationParticipant, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a joined metadata object, dropping message.", buf, 2u);
      }

      goto LABEL_35;
    }

    v49 = joinedMetadata;
    sender = [joinedMetadata sender];
    csdConversationParticipant = [sender csdConversationParticipant];

    if (csdConversationParticipant)
    {
      sender2 = [v49 sender];
      if ([sender2 hasIdentifier])
      {
        identifier = [csdConversationParticipant identifier];

        if (identifier)
        {
          v20 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID];
          v48 = v20;
          if (!v20)
          {
            audioRouteUniqueIdentifier3 = sub_100004778(0);
            if (os_log_type_enabled(audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = conversationGroupUUID;
              _os_log_impl(&_mh_execute_header, audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT, "[WARN] No conversation was found for group UUID %@, dropping UpdateJoinedMetadata message.", buf, 0xCu);
            }

            v14 = v49;
            goto LABEL_50;
          }

          v47 = conversationGroupUUID;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          activeRemoteParticipants = [v20 activeRemoteParticipants];
          v22 = [activeRemoteParticipants countByEnumeratingWithState:&v50 objects:v60 count:16];
          if (v22)
          {
            v23 = v22;
            v45 = handleCopy;
            v46 = messageCopy;
            v24 = 0;
            v25 = *v51;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v51 != v25)
                {
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                v27 = *(*(&v50 + 1) + 8 * i);
                handle = [csdConversationParticipant handle];
                handle2 = [v27 handle];
                if ([handle isEquivalentToHandle:handle2])
                {
                  identifier2 = [csdConversationParticipant identifier];
                  LOBYTE(identifier2) = identifier2 == [v27 identifier];

                  v24 |= identifier2;
                }

                else
                {
                }
              }

              v23 = [activeRemoteParticipants countByEnumeratingWithState:&v50 objects:v60 count:16];
            }

            while (v23);

            handleCopy = v45;
            messageCopy = v46;
            if (v24)
            {
              v14 = v49;
              audioRouteUniqueIdentifier = [v49 audioRouteUniqueIdentifier];

              v34 = sub_100004778(v33);
              v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
              if (audioRouteUniqueIdentifier)
              {
                conversationGroupUUID = v47;
                if (v35)
                {
                  audioRouteUniqueIdentifier2 = [v49 audioRouteUniqueIdentifier];
                  identifier3 = [csdConversationParticipant identifier];
                  uUID = [v48 UUID];
                  *buf = 138412802;
                  v55 = audioRouteUniqueIdentifier2;
                  v56 = 2048;
                  v57 = identifier3;
                  v58 = 2112;
                  v59 = uUID;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Per UpdateJoinedMetadata message, the local user was using %@ audio route from another device with participant identifier %llu in conversation UUID %@", buf, 0x20u);

                  v14 = v49;
                }

                audioRouteUniqueIdentifier3 = [v14 audioRouteUniqueIdentifier];
                audioRoutesByParticipantIdentifier = [v48 audioRoutesByParticipantIdentifier];
                v41 = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
                [audioRoutesByParticipantIdentifier setObject:audioRouteUniqueIdentifier3 forKeyedSubscript:v41];
              }

              else
              {
                conversationGroupUUID = v47;
                if (v35)
                {
                  identifier4 = [csdConversationParticipant identifier];
                  uUID2 = [v48 UUID];
                  *buf = 134218242;
                  v55 = identifier4;
                  v56 = 2112;
                  v57 = uUID2;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Per UpdateJoinedMetadata message, the local user was using a default audio route from another device with participant identifier %llu in conversation UUID %@; no need to track a route.", buf, 0x16u);
                }

                audioRouteUniqueIdentifier3 = [v48 audioRoutesByParticipantIdentifier];
                audioRoutesByParticipantIdentifier = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
                [audioRouteUniqueIdentifier3 setObject:0 forKeyedSubscript:audioRoutesByParticipantIdentifier];
              }

LABEL_50:
              v42 = v48;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
              goto LABEL_38;
            }
          }

          else
          {
          }

          audioRouteUniqueIdentifier3 = sub_100004778(v31);
          v14 = v49;
          if (os_log_type_enabled(audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = csdConversationParticipant;
            _os_log_impl(&_mh_execute_header, audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find a matching participant for sender %@, dropping UpdateJoinedMetadata message.", buf, 0xCu);
          }

          conversationGroupUUID = v47;
          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    v42 = sub_100004778(v17);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a valid participant, dropping message.", buf, 2u);
    }

    v14 = v49;
    goto LABEL_34;
  }

LABEL_38:
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d fromMember:(id)member additionalOptions:(id)options isBlobResponse:(BOOL)response callback:(id)callback
{
  responseCopy = response;
  conversationCopy = conversation;
  dCopy = d;
  memberCopy = member;
  callbackCopy = callback;
  optionsCopy = options;
  dataCopy = data;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [conversationCopy provider];

    if (provider)
    {
      v21 = +[CSDConversationProviderManager sharedInstance];
      provider2 = [conversationCopy provider];
      service = [v21 serviceForProvider:provider2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  service = [(CSDConversationManager *)self service];
LABEL_6:
  v68 = memberCopy;
  handle = [memberCopy handle];
  value = [handle value];
  v66 = service;
  v26 = [service accountWithCallerID:value];

  v28 = sub_100004778(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = TULoggableStringForHandle();
    *buf = 138412546;
    v70 = v26;
    v71 = 2112;
    v72 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sending data from: %@ to: %@", buf, 0x16u);
  }

  v30 = [optionsCopy mutableCopy];
  capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];

  if (capabilitySendMessageOptions)
  {
    v63 = dCopy;
    if (!v30)
    {
      v30 = objc_alloc_init(NSMutableDictionary);
    }

    capabilitySendMessageOptions2 = [conversationCopy capabilitySendMessageOptions];
    v33 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
    v34 = [capabilitySendMessageOptions2 objectForKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = +[NSSet set];
    }

    v41 = v36;

    v42 = [v30 objectForKeyedSubscript:v33];

    v62 = callbackCopy;
    if (v42)
    {
      v43 = [v30 objectForKeyedSubscript:v33];
      v44 = [v41 setByAddingObjectsFromSet:v43];

      v41 = v44;
    }

    capabilitySendMessageOptions3 = [conversationCopy capabilitySendMessageOptions];
    v46 = IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey;
    v47 = [capabilitySendMessageOptions3 objectForKeyedSubscript:IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = +[NSSet set];
    }

    v50 = v49;

    v51 = [v30 objectForKeyedSubscript:v46];

    if (v51)
    {
      v52 = [v30 objectForKeyedSubscript:v46];
      v53 = [v50 setByAddingObjectsFromSet:v52];

      v50 = v53;
    }

    capabilitySendMessageOptions4 = [conversationCopy capabilitySendMessageOptions];
    [v30 addEntriesFromDictionary:capabilitySendMessageOptions4];

    if ([v41 count])
    {
      [v30 setObject:v41 forKeyedSubscript:v33];
    }

    v55 = [v50 count];
    if (v55)
    {
      v55 = [v30 setObject:v50 forKeyedSubscript:v46];
    }

    if (responseCopy)
    {
      v56 = sub_100004778(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v70 = v33;
        v71 = 2112;
        v72 = v30;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "blob response, removing %@ from options: %@", buf, 0x16u);
      }

      [v30 setObject:0 forKeyedSubscript:v33];
    }

    v38 = conversationCopy;
    v40 = v26;

    v39 = v62;
    v37 = v63;
  }

  else
  {
    v37 = dCopy;
    v38 = conversationCopy;
    v39 = callbackCopy;
    v40 = v26;
  }

  groupUUID = [v38 groupUUID];
  [v30 setObject:groupUUID forKeyedSubscript:@"kCSDConversationGroupUUID"];

  sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
  v59 = [NSSet setWithObject:v37];
  provider3 = [v38 provider];
  v65 = (sendDataBlock)[2](sendDataBlock, dataCopy, v40, v59, v68, v30, 0, v39, provider3);

  return v65;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d
{
  dCopy = d;
  conversationCopy = conversation;
  dataCopy = data;
  localMember = [conversationCopy localMember];
  LOBYTE(self) = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:dCopy fromMember:localMember additionalOptions:0 isBlobResponse:0 callback:0];

  return self;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d additionalOptions:(id)options
{
  optionsCopy = options;
  dCopy = d;
  conversationCopy = conversation;
  dataCopy = data;
  localMember = [conversationCopy localMember];
  LOBYTE(self) = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:dCopy fromMember:localMember additionalOptions:optionsCopy isBlobResponse:0 callback:0];

  return self;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toHandle:(id)handle isBlobResponse:(BOOL)response
{
  responseCopy = response;
  dataCopy = data;
  conversationCopy = conversation;
  handleCopy = handle;
  v13 = TUCopyIDSCanonicalAddressForHandle();
  if (v13)
  {
    localMember = [conversationCopy localMember];
    v15 = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:v13 fromMember:localMember additionalOptions:0 isBlobResponse:responseCopy callback:0];
  }

  else
  {
    v16 = sub_100004778(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = handleCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not convert %@ to IDS destination", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toMember:(id)member additionalOptions:(id)options
{
  dataCopy = data;
  conversationCopy = conversation;
  memberCopy = member;
  optionsCopy = options;
  idsDestination = [memberCopy idsDestination];
  if (idsDestination)
  {
    idsDestination2 = [memberCopy idsDestination];
    localMember = [conversationCopy localMember];
    v17 = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:idsDestination2 fromMember:localMember additionalOptions:optionsCopy isBlobResponse:0 callback:0];
  }

  else
  {
    v18 = sub_100004778(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = memberCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not convert %@ to IDS destination", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)broadcastFile:(id)file onConversation:(id)conversation additionalOptions:(id)options
{
  fileCopy = file;
  conversationCopy = conversation;
  optionsCopy = options;
  localMember = [conversationCopy localMember];
  v12 = localMember;
  if (localMember)
  {
    v58 = localMember;
    idsDestination = [localMember idsDestination];
    v14 = [NSMutableSet setWithObject:idsDestination];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    remoteMembers = [conversationCopy remoteMembers];
    v16 = [remoteMembers countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v66;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v66 != v18)
          {
            objc_enumerationMutation(remoteMembers);
          }

          idsDestination2 = [*(*(&v65 + 1) + 8 * i) idsDestination];
          [v14 addObject:idsDestination2];
        }

        v17 = [remoteMembers countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v17);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    lightweightMembers = [conversationCopy lightweightMembers];
    v22 = [lightweightMembers countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v62;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(lightweightMembers);
          }

          idsDestination3 = [*(*(&v61 + 1) + 8 * j) idsDestination];
          [v14 addObject:idsDestination3];
        }

        v23 = [lightweightMembers countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v23);
    }

    v28 = sub_100004778(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      idsFromID = [v58 idsFromID];
      v30 = TULoggableStringForHandle();
      allObjects = [v14 allObjects];
      TULoggableStringForHandles();
      v33 = v32 = fileCopy;
      *buf = 138412546;
      v70 = v30;
      v71 = 2112;
      v72 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Broadcasting file from: %@ to: %@", buf, 0x16u);

      fileCopy = v32;
    }

    v34 = [optionsCopy mutableCopy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = objc_alloc_init(NSMutableDictionary);
    }

    v38 = v36;

    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];

    if (capabilitySendMessageOptions)
    {
      capabilitySendMessageOptions2 = [conversationCopy capabilitySendMessageOptions];
      [v38 addEntriesFromDictionary:capabilitySendMessageOptions2];
    }

    [v38 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysSkipSelfKey];
    idsFromID2 = [v58 idsFromID];
    [v38 setObject:idsFromID2 forKeyedSubscript:IDSSendMessageOptionFromIDKey];

    featureFlags = [(CSDConversationManager *)self featureFlags];
    v57 = optionsCopy;
    if ([featureFlags groupFacetimeAsAServiceEnabled])
    {
      provider = [conversationCopy provider];

      if (provider)
      {
        v44 = +[CSDConversationProviderManager sharedInstance];
        provider2 = [conversationCopy provider];
        service2 = [v44 serviceForProvider:provider2];

LABEL_31:
        service = [service2 service];
        v48 = fileCopy;
        v49 = [NSURL fileURLWithPath:fileCopy];
        v59 = 0;
        v60 = 0;
        v50 = [service sendResourceAtURL:v49 metadata:0 toDestinations:v14 priority:300 options:v38 identifier:&v60 error:&v59];
        v51 = v60;
        v52 = v59;

        v37 = (v52 == 0) & v50;
        v54 = sub_100004778(v53);
        v55 = v54;
        if (v37)
        {
          v12 = v58;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v70 = v51;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Sent broadcast image message with id %@", buf, 0xCu);
          }
        }

        else
        {
          v12 = v58;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_100476D04();
          }
        }

        fileCopy = v48;
        optionsCopy = v57;
        goto LABEL_37;
      }
    }

    else
    {
    }

    service2 = [(CSDConversationManager *)self service];
    goto LABEL_31;
  }

  v14 = sub_100004778(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100476D74();
  }

  v37 = 0;
LABEL_37:

  return v37;
}

- (BOOL)broadcastData:(id)data onConversation:(id)conversation additionalOptions:(id)options
{
  dataCopy = data;
  conversationCopy = conversation;
  optionsCopy = options;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [conversationCopy provider];

    if (provider)
    {
      v12 = +[CSDConversationProviderManager sharedInstance];
      provider2 = [conversationCopy provider];
      service = [v12 serviceForProvider:provider2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  service = [(CSDConversationManager *)self service];
LABEL_6:
  localMember = [conversationCopy localMember];
  handle = [localMember handle];
  value = [handle value];
  v18 = [service accountWithCallerID:value];

  if (localMember)
  {
    v47 = service;
    v48 = dataCopy;
    idsDestination = [localMember idsDestination];
    v21 = [NSMutableSet setWithObject:idsDestination];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    remoteMembers = [conversationCopy remoteMembers];
    v23 = [remoteMembers countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v55;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(remoteMembers);
          }

          idsDestination2 = [*(*(&v54 + 1) + 8 * i) idsDestination];
          [v21 addObject:idsDestination2];
        }

        v24 = [remoteMembers countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v24);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    lightweightMembers = [conversationCopy lightweightMembers];
    v29 = [lightweightMembers countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(lightweightMembers);
          }

          idsDestination3 = [*(*(&v50 + 1) + 8 * j) idsDestination];
          [v21 addObject:idsDestination3];
        }

        v30 = [lightweightMembers countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v30);
    }

    v35 = sub_100004778(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v18;
      v60 = 2112;
      v61 = v21;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Broadcasting data from: %@ to: %@", buf, 0x16u);
    }

    v36 = optionsCopy;
    v37 = [optionsCopy mutableCopy];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = objc_alloc_init(NSMutableDictionary);
    }

    v41 = v39;

    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];

    if (capabilitySendMessageOptions)
    {
      capabilitySendMessageOptions2 = [conversationCopy capabilitySendMessageOptions];
      [v41 addEntriesFromDictionary:capabilitySendMessageOptions2];
    }

    [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysSkipSelfKey];
    sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
    provider3 = [conversationCopy provider];
    v40 = (sendDataBlock)[2](sendDataBlock, v48, v18, v21, localMember, v41, 0, 0, provider3);

    dataCopy = v48;
    service = v47;
  }

  else
  {
    v21 = sub_100004778(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100476DE4();
    }

    v40 = 0;
    v36 = optionsCopy;
  }

  return v40;
}

- (void)broadcastImageForSession:(id)session onConversation:(id)conversation
{
  sessionCopy = session;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v55 = conversationCopy;
    v56 = 2112;
    v57 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conversation: %@ broadcastImageForSession: %@", buf, 0x16u);
  }

  activity = [sessionCopy activity];
  metadata = [activity metadata];
  imageData = [metadata imageData];

  if (imageData)
  {
    v14 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v16 = [(CSDMessagingConversationMessage *)v14 initWithType:27 groupUUID:groupUUID link:0];

    v17 = objc_alloc_init(CSDMessagingConversationActivitySession);
    uUID = [sessionCopy UUID];
    [uUID UUIDString];
    v19 = v51 = conversationCopy;
    [(CSDMessagingConversationActivitySession *)v17 setIdentifierUUIDString:v19];

    activity2 = [sessionCopy activity];
    v21 = objc_alloc_init(CSDMessagingConversationActivity);
    uUID2 = [activity2 UUID];
    uUIDString = [uUID2 UUIDString];
    [(CSDMessagingConversationActivity *)v21 setIdentifierUUIDString:uUIDString];

    v24 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
    v50 = activity2;
    metadata2 = [activity2 metadata];
    imageData2 = [metadata2 imageData];
    _FTCopyGzippedData = [imageData2 _FTCopyGzippedData];
    [(CSDMessagingConversationActivityMetadata *)v24 setImage:_FTCopyGzippedData];

    v49 = v24;
    [(CSDMessagingConversationActivity *)v21 setActivityMetadata:v24];
    [(CSDMessagingConversationActivitySession *)v17 setActivity:v21];
    v48 = v17;
    [(CSDMessagingConversationMessage *)v16 addActivitySessions:v17];
    v60[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v28 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v16 type]];
    v61[0] = v28;
    v60[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    uUID3 = [sessionCopy UUID];
    uUIDString2 = [uUID3 UUIDString];
    v31 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v16 type]];
    v32 = [NSString stringWithFormat:@"%@:%@", uUIDString2, v31];
    v61[1] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];

    temporaryFilePath = [(CSDConversationManager *)self temporaryFilePath];
    data = [(CSDMessagingConversationMessage *)v16 data];
    v53 = 0;
    [data writeToFile:temporaryFilePath options:1073741825 error:&v53];
    v36 = v53;

    if (v36)
    {
      conversationCopy = v51;
      v38 = sub_100004778(v37);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      activity3 = [sessionCopy activity];
      uUID4 = [activity3 UUID];
      *buf = 138412802;
      v55 = uUID4;
      v56 = 2112;
      v57 = temporaryFilePath;
      v58 = 2112;
      v59 = v36;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error transmitting activity session %@ image. Failed to write to path %@ with error %@", buf, 0x20u);
    }

    else
    {
      conversationCopy = v51;
      v41 = [(CSDConversationManager *)self broadcastFile:temporaryFilePath onConversation:v51 additionalOptions:v33];
      v42 = v41;
      v43 = sub_100004778(v41);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        activity4 = [sessionCopy activity];
        uUID5 = [activity4 UUID];
        *buf = 138412546;
        v55 = uUID5;
        v56 = 1024;
        LODWORD(v57) = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "(broadcastImageForSession activity UUID: %@ success: %d).", buf, 0x12u);

        conversationCopy = v51;
      }

      v46 = +[NSFileManager defaultManager];
      v52 = 0;
      [v46 removeItemAtPath:temporaryFilePath error:&v52];
      v38 = v52;

      if (!v38)
      {
        goto LABEL_13;
      }

      activity3 = sub_100004778(v47);
      if (os_log_type_enabled(activity3, OS_LOG_TYPE_ERROR))
      {
        sub_100476E54();
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)broadcastLightweightEndorsementForAddedMembers:(id)members onConversation:(id)conversation
{
  membersCopy = members;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = conversationCopy;
    v29 = 2112;
    v30 = membersCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conversation: %@ broadcastLightweightEndorsementForAddedMembers: %@", buf, 0x16u);
  }

  localLightweightSecondaryMember = [conversationCopy localLightweightSecondaryMember];
  v12 = localLightweightSecondaryMember;
  if (localLightweightSecondaryMember)
  {
    v13 = sub_100004778(localLightweightSecondaryMember);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      *buf = 138412546;
      v28 = uUID;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conversation: %@ has a splitSessionSecondary (%@), sending verification push", buf, 0x16u);
    }

    v15 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v17 = [(CSDMessagingConversationMessage *)v15 initWithType:29 groupUUID:groupUUID link:0];

    v18 = [CSDMessagingConversationMember memberWithTUConversationMember:v12];
    [(CSDMessagingConversationMessage *)v17 addAddedMembers:v18];

    data = [(CSDMessagingConversationMessage *)v17 data];
    v20 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v17 type]];
    v26 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    v22 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v21];
    v23 = v22;
    v24 = sub_100004778(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v28) = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(success: %d).", buf, 8u);
    }
  }
}

- (id)memberExistsForParticipantDestination:(id)destination members:(id)members
{
  destinationCopy = destination;
  membersCopy = members;
  v7 = TUHandleForIDSCanonicalAddress();
  if (!v7)
  {
    v8 = sub_100004778(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = TULoggableStringForHandle();
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't create handle from participant destination identifier %@", buf, 0xCu);
    }

LABEL_14:

LABEL_15:
    v20 = sub_100004778(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = TULoggableStringForHandle();
      *buf = 138412546;
      v30 = v21;
      v31 = 2112;
      v32 = membersCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find participant destination identifier %@ in members %@", buf, 0x16u);
    }

    v22 = 0;
    goto LABEL_19;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = membersCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v24 = membersCopy;
  v11 = *v26;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v26 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v25 + 1) + 8 * v12);
    handle = [v13 handle];
    normalizedValue = [handle normalizedValue];

    if (normalizedValue)
    {
      normalizedValue2 = [v7 normalizedValue];
      v17 = [normalizedValue2 isEqualToString:normalizedValue];

      if (v17)
      {
        break;
      }
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      membersCopy = v24;
      goto LABEL_14;
    }
  }

  v22 = v13;

  membersCopy = v24;
  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v22;
}

- (id)memberExistsForParticipantDestination:(id)destination groupSessionParticipantUpdate:(id)update
{
  destinationCopy = destination;
  updateCopy = update;
  participantUpdateType = [updateCopy participantUpdateType];
  if (participantUpdateType <= 1)
  {
    if (!participantUpdateType)
    {
      v22 = sub_100004778(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Received unknown participant update message", &v25, 2u);
      }

      goto LABEL_17;
    }

    if (participantUpdateType != 1)
    {
LABEL_17:
      groupUUID = sub_100004778(participantUpdateType);
      if (os_log_type_enabled(groupUUID, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, groupUUID, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to find members from message", &v25, 2u);
      }

LABEL_25:
      v21 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if (participantUpdateType == 2 || participantUpdateType == 4)
    {
      groupUUID = [updateCopy groupUUID];
      if (groupUUID)
      {
        v15 = [(CSDConversationManager *)self conversationWithGroupUUID:groupUUID];
        v16 = v15;
        if (v15)
        {
          remoteMembers = [v15 remoteMembers];
          v18 = [remoteMembers mutableCopy];

          localMember = [v16 localMember];
          [v18 addObject:localMember];

          lightweightMembers = [v16 lightweightMembers];
          [v18 unionSet:lightweightMembers];

          v21 = [(CSDConversationManager *)self memberExistsForParticipantDestination:destinationCopy members:v18];
        }

        else
        {
          v18 = sub_100004778(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 138412290;
            v26 = groupUUID;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find conversation with groupUUID %@", &v25, 0xCu);
          }

          v21 = 0;
        }
      }

      else
      {
        v16 = sub_100004778(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't decode message due to invalid groupUUID", &v25, 2u);
        }

        v21 = 0;
      }

      goto LABEL_32;
    }

    if (participantUpdateType != 3)
    {
      goto LABEL_17;
    }
  }

  v9 = [CSDMessagingConversationParticipantDidJoinContext alloc];
  clientContextData = [updateCopy clientContextData];
  groupUUID = [(CSDMessagingConversationParticipantDidJoinContext *)v9 initWithData:clientContextData];

  data = [groupUUID data];
  v13 = [data length];

  if (!v13)
  {
    v23 = sub_100004778(v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't decode message due to invalid data length.", &v25, 2u);
    }

    goto LABEL_25;
  }

  if ([groupUUID isLightweight])
  {
    [groupUUID tuLightweightMembers];
  }

  else
  {
    [groupUUID tuConversationMembers];
  }
  v16 = ;
  v21 = [(CSDConversationManager *)self memberExistsForParticipantDestination:destinationCopy members:v16];
LABEL_32:

LABEL_33:

  return v21;
}

- (BOOL)shouldAcceptMessageFromHandle:(id)handle messageContext:(id)context message:(id)message existingConversation:(id)conversation
{
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  v13 = [(CSDConversationManager *)self verifyMessageIntentKeyFromContext:context message:messageCopy];
  if ((v13 & 1) == 0)
  {
    v20 = sub_100004778(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476EFC();
    }

    goto LABEL_20;
  }

  v14 = [(CSDConversationManager *)self verifyKickMemberPermittedFromHandle:handleCopy message:messageCopy];
  if ((v14 & 1) == 0)
  {
    v20 = sub_100004778(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476F38();
    }

    goto LABEL_20;
  }

  v15 = [(CSDConversationManager *)self verifyActivitySessionOriginatorFromHandle:handleCopy message:messageCopy];
  if ((v15 & 1) == 0)
  {
    v20 = sub_100004778(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476F74();
    }

    goto LABEL_20;
  }

  v16 = [(CSDConversationManager *)self verifyBlobResponseFromHandle:handleCopy message:messageCopy existingConversation:conversationCopy];
  if ((v16 & 1) == 0)
  {
    v20 = sub_100004778(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476FB0();
    }

    goto LABEL_20;
  }

  v17 = [(CSDConversationManager *)self verifyLightweightMessageTypeFromHandle:handleCopy message:messageCopy existingConversation:conversationCopy];
  if ((v17 & 1) == 0)
  {
    v20 = sub_100004778(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476FEC();
    }

    goto LABEL_20;
  }

  v18 = [(CSDConversationManager *)self verifyEndorseRepresentsMemberFromHandle:handleCopy message:messageCopy existingConversation:conversationCopy];
  if ((v18 & 1) == 0)
  {
    v20 = sub_100004778(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100477028();
    }

LABEL_20:

    v19 = 0;
    goto LABEL_21;
  }

  v19 = 1;
LABEL_21:

  return v19;
}

- (BOOL)shouldAcceptMembershipUpdateFromHandle:(id)handle joinContext:(id)context participantUpdate:(id)update existingConversation:(id)conversation
{
  handleCopy = handle;
  contextCopy = context;
  updateCopy = update;
  conversationCopy = conversation;
  v13 = +[NSMutableSet set];
  v14 = +[NSMutableSet set];
  message = [contextCopy message];
  selfCopy = self;
  v41 = updateCopy;
  if (conversationCopy)
  {
    remoteMembers = [conversationCopy remoteMembers];
    [v13 unionSet:remoteMembers];

    lightweightMembers = [conversationCopy lightweightMembers];
    [v14 unionSet:lightweightMembers];

    localMember = [conversationCopy localMember];
    isLightweightMember = [localMember isLightweightMember];

    localMember2 = [conversationCopy localMember];
    if (isLightweightMember)
    {
      v21 = v14;
    }

    else
    {
      v21 = v13;
    }

    [v21 addObject:localMember2];
  }

  else
  {
    tuConversationMembers = [contextCopy tuConversationMembers];
    [v13 unionSet:tuConversationMembers];

    localMember2 = [contextCopy tuLightweightMembers];
    [v14 unionSet:localMember2];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  addedMembers = [message addedMembers];
  v24 = [addedMembers countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v48;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(addedMembers);
        }

        tuConversationMember = [*(*(&v47 + 1) + 8 * i) tuConversationMember];
        [v13 addObject:tuConversationMember];
      }

      v25 = [addedMembers countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v25);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  lightweightMembers2 = [message lightweightMembers];
  v30 = [lightweightMembers2 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(lightweightMembers2);
        }

        tuConversationMember2 = [*(*(&v43 + 1) + 8 * j) tuConversationMember];
        [v14 addObject:tuConversationMember2];
      }

      v31 = [lightweightMembers2 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v31);
  }

  v35 = [(CSDConversationManager *)selfCopy verifyGroupSessionParticipantUpdateAllowedFromHandle:handleCopy participantUpdate:v41 message:message existingConversation:conversationCopy lightweightMembers:v14];
  if ((v35 & 1) == 0)
  {
    v38 = sub_100004778(v35);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100477064();
    }

    goto LABEL_28;
  }

  v36 = [(CSDConversationManager *)selfCopy verifyAllLightweightmembersAssociated:v14 remoteMembers:v13];
  if ((v36 & 1) == 0)
  {
    v38 = sub_100004778(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = handleCopy;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not all lightweightMembers have an associated lightweightPrimary in the conversation, dropping message fromHandle: %@", buf, 0xCu);
    }

LABEL_28:

    v37 = 0;
    goto LABEL_29;
  }

  v37 = 1;
LABEL_29:

  return v37;
}

- (BOOL)verifyKickMemberPermittedFromHandle:(id)handle message:(id)message
{
  handleCopy = handle;
  messageCopy = message;
  if ([messageCopy type] == 19)
  {
    removedMembers = [messageCopy removedMembers];
    v8 = [removedMembers count];

    if (v8)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      removedMembers2 = [messageCopy removedMembers];
      v11 = [removedMembers2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(removedMembers2);
            }

            handle = [*(*(&v21 + 1) + 8 * i) handle];
            tuHandle = [handle tuHandle];

            v17 = [tuHandle isEquivalentToHandle:handleCopy];
            if (v17)
            {
              v19 = sub_100004778(v17);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_1004770D4();
              }

              goto LABEL_18;
            }
          }

          v12 = [removedMembers2 countByEnumeratingWithState:&v21 objects:v25 count:16];
          v18 = 1;
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      removedMembers2 = sub_100004778(v9);
      if (os_log_type_enabled(removedMembers2, OS_LOG_TYPE_ERROR))
      {
        sub_10047713C();
      }

LABEL_18:
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)verifyActivitySessionOriginatorFromHandle:(id)handle message:(id)message
{
  handleCopy = handle;
  messageCopy = message;
  if ([messageCopy type] == 8 || objc_msgSend(messageCopy, "type") == 23)
  {
    activitySessions = [messageCopy activitySessions];
    v8 = [activitySessions count];

    if (v8)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      activitySessions2 = [messageCopy activitySessions];
      v11 = [activitySessions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v11)
      {
        v20 = 1;
        goto LABEL_24;
      }

      v12 = v11;
      v13 = *v24;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(activitySessions2);
        }

        activity = [*(*(&v23 + 1) + 8 * v14) activity];
        originatorHandle = [activity originatorHandle];
        tuHandle = [originatorHandle tuHandle];

        if (!tuHandle)
        {
          break;
        }

        v19 = [tuHandle isEquivalentToHandle:handleCopy];
        if ((v19 & 1) == 0)
        {
          v21 = sub_100004778(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1004771D0();
          }

LABEL_22:

          goto LABEL_23;
        }

        if (v12 == ++v14)
        {
          v12 = [activitySessions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          v20 = 1;
          if (v12)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }
      }

      v21 = sub_100004778(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100477238();
      }

      goto LABEL_22;
    }

    activitySessions2 = sub_100004778(v9);
    if (os_log_type_enabled(activitySessions2, OS_LOG_TYPE_ERROR))
    {
      sub_10047713C();
    }

LABEL_23:
    v20 = 0;
LABEL_24:
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (BOOL)verifyMessageIntentKeyFromContext:(id)context message:(id)message
{
  contextCopy = context;
  messageCopy = message;
  type = [messageCopy type];
  if (type <= 0x24)
  {
    if (((1 << type) & 0x18D569FE7FLL) != 0)
    {
      v8 = 1;
      goto LABEL_6;
    }

    if (((1 << type) & 0x62A800100) != 0)
    {
      publicIntentAction = [contextCopy publicIntentAction];
      integerValue = [publicIntentAction integerValue];
      v8 = integerValue == [messageCopy type];

      goto LABEL_6;
    }
  }

  v12 = sub_100004778(type);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1004772CC();
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)verifyBlobResponseFromHandle:(id)handle message:(id)message existingConversation:(id)conversation
{
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  type = [messageCopy type];
  if (type != 5)
  {
    goto LABEL_27;
  }

  if (!conversationCopy)
  {
    csdConversationParticipant2 = sub_100004778(type);
    if (os_log_type_enabled(csdConversationParticipant2, OS_LOG_TYPE_ERROR))
    {
      sub_100477520();
    }

    goto LABEL_24;
  }

  activeParticipants = [messageCopy activeParticipants];
  if ([activeParticipants count] == 1)
  {
  }

  else
  {
    activeLightweightParticipants = [messageCopy activeLightweightParticipants];
    v15 = [activeLightweightParticipants count];

    if (v15 != 1)
    {
      csdConversationParticipant2 = sub_100004778(v16);
      if (os_log_type_enabled(csdConversationParticipant2, OS_LOG_TYPE_ERROR))
      {
        sub_100477308();
      }

      goto LABEL_24;
    }
  }

  activeParticipants2 = [messageCopy activeParticipants];
  firstObject = [activeParticipants2 firstObject];
  csdConversationParticipant = [firstObject csdConversationParticipant];
  v20 = csdConversationParticipant;
  if (csdConversationParticipant)
  {
    csdConversationParticipant2 = csdConversationParticipant;
  }

  else
  {
    activeLightweightParticipants2 = [messageCopy activeLightweightParticipants];
    firstObject2 = [activeLightweightParticipants2 firstObject];
    csdConversationParticipant2 = [firstObject2 csdConversationParticipant];
  }

  if (csdConversationParticipant2)
  {
    handle = [csdConversationParticipant2 handle];
    v25 = [handle isEquivalentToHandle:handleCopy];

    if (v25)
    {
      remoteMembers = [conversationCopy remoteMembers];
      v28 = [remoteMembers mutableCopy];

      localMember = [conversationCopy localMember];
      [v28 addObject:localMember];

      isLightweight = [csdConversationParticipant2 isLightweight];
      value = [handleCopy value];
      if (isLightweight)
      {
        lightweightMembers = [conversationCopy lightweightMembers];
        v33 = [lightweightMembers copy];
        v34 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v33];

        if (!v34)
        {
          v36 = sub_100004778(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100477474();
          }

LABEL_31:

          goto LABEL_24;
        }
      }

      else
      {
        v39 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v28];

        if (!v39)
        {
          v36 = sub_100004778(v40);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100477404();
          }

          goto LABEL_31;
        }
      }

LABEL_27:
      v38 = 1;
      goto LABEL_28;
    }

    v37 = sub_100004778(v26);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10047739C();
    }
  }

  else
  {
    v37 = sub_100004778(v23);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1004774E4();
    }
  }

LABEL_24:
  v38 = 0;
LABEL_28:

  return v38;
}

- (BOOL)verifyAllLightweightmembersAssociated:(id)associated remoteMembers:(id)members
{
  associatedCopy = associated;
  membersCopy = members;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = associatedCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v9)
  {
    v20 = 1;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *v25;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      lightweightPrimary = [v13 lightweightPrimary];

      if (!lightweightPrimary)
      {
        v21 = sub_100004778(v15);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v13;
          v22 = "Member: %@ doesn't have a primary";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
        }

LABEL_17:

        v20 = 0;
        goto LABEL_18;
      }

      lightweightPrimary2 = [v13 lightweightPrimary];
      value = [lightweightPrimary2 value];
      v18 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:membersCopy];

      if (!v18)
      {
        v21 = sub_100004778(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v13;
          v22 = "Lightweight member %@ doesn't have their primary in the conversation";
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    v20 = 1;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_18:

  return v20;
}

- (BOOL)verifyGroupSessionParticipantUpdateAllowedFromHandle:(id)handle participantUpdate:(id)update message:(id)message existingConversation:(id)conversation lightweightMembers:(id)members
{
  handleCopy = handle;
  updateCopy = update;
  messageCopy = message;
  membersCopy = members;
  value = [handleCopy value];
  v17 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:membersCopy];

  participantUpdateType = [updateCopy participantUpdateType];
  if (!v17)
  {
    if (participantUpdateType == 3)
    {
      v36 = messageCopy;
      v37 = updateCopy;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      lightweightMembers = [messageCopy lightweightMembers];
      v23 = [lightweightMembers countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        while (2)
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(lightweightMembers);
            }

            lightweightPrimary = [*(*(&v38 + 1) + 8 * i) lightweightPrimary];
            tuHandle = [lightweightPrimary tuHandle];
            v29 = [tuHandle isEquivalentToHandle:handleCopy];

            if ((v29 & 1) == 0)
            {
              v31 = sub_100004778(v30);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_10047763C();
              }

              v19 = 0;
              messageCopy = v36;
              updateCopy = v37;
              goto LABEL_28;
            }
          }

          v24 = [lightweightMembers countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      messageCopy = v36;
      updateCopy = v37;
    }

LABEL_18:
    v19 = 1;
    goto LABEL_28;
  }

  v19 = 0;
  if (participantUpdateType && participantUpdateType != 3)
  {
    if (participantUpdateType == 1)
    {
      if (!conversation)
      {
        v32 = sub_100004778(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1004775CC();
        }

        goto LABEL_27;
      }

      addedMembers = [messageCopy addedMembers];
      if ([addedMembers count])
      {

        goto LABEL_25;
      }

      lightweightMembers2 = [messageCopy lightweightMembers];
      v34 = [lightweightMembers2 count];

      if (v34)
      {
LABEL_25:
        v32 = sub_100004778(v21);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10047755C();
        }

LABEL_27:

        v19 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_18;
  }

LABEL_28:

  return v19;
}

- (BOOL)verifyLightweightMessageTypeFromHandle:(id)handle message:(id)message existingConversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  if (!conversationCopy)
  {
    v13 = sub_100004778(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1004776A4();
    }

    goto LABEL_9;
  }

  value = [handle value];
  lightweightMembers = [conversationCopy lightweightMembers];
  v12 = [lightweightMembers copy];
  v13 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v12];

  if (v13)
  {
    type = [messageCopy type];
    if (type <= 0x23)
    {
      if (((1 << type) & 0xE2749FC6FLL) != 0)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_10;
      }

      if (((1 << type) & 0x8A00310) != 0)
      {
        goto LABEL_6;
      }
    }

    v17 = sub_100004778(type);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1004772CC();
    }

    goto LABEL_9;
  }

LABEL_6:
  v15 = 1;
LABEL_10:

  return v15;
}

- (BOOL)verifyEndorseRepresentsMemberFromHandle:(id)handle message:(id)message existingConversation:(id)conversation
{
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  type = [messageCopy type];
  if (type != 29)
  {
    goto LABEL_9;
  }

  if (!conversationCopy)
  {
    tuConversationMember = sub_100004778(type);
    if (os_log_type_enabled(tuConversationMember, OS_LOG_TYPE_ERROR))
    {
      sub_1004776A4();
    }

    goto LABEL_23;
  }

  addedMembers = [messageCopy addedMembers];
  v13 = [addedMembers count];

  if (v13 != 1)
  {
    tuConversationMember = sub_100004778(v14);
    if (os_log_type_enabled(tuConversationMember, OS_LOG_TYPE_ERROR))
    {
      sub_1004776E0(messageCopy);
    }

    goto LABEL_23;
  }

  addedMembers2 = [messageCopy addedMembers];
  firstObject = [addedMembers2 firstObject];
  tuConversationMember = [firstObject tuConversationMember];

  isLightweightMember = [tuConversationMember isLightweightMember];
  if (!isLightweightMember || (-[NSObject lightweightPrimary](tuConversationMember, "lightweightPrimary"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 isEquivalentToHandle:handleCopy], v19, (v20 & 1) == 0))
  {
    v25 = sub_100004778(isLightweightMember);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412546;
      v37 = handleCopy;
      v38 = 2112;
      v39 = tuConversationMember;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "FromID: %@ attempting to vouch for an invalid member %@", &v36, 0x16u);
    }

    goto LABEL_22;
  }

  handle = [tuConversationMember handle];
  value = [handle value];
  lightweightMembers = [conversationCopy lightweightMembers];
  v24 = [lightweightMembers copy];
  v25 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v24];

  if (!v25)
  {
    v31 = sub_100004778(v26);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      v32 = "No local lightweightMember found for handle trying to be vouched";
      v33 = v31;
      v34 = 2;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, &v36, v34);
    }

LABEL_21:

LABEL_22:
LABEL_23:

    v30 = 0;
    goto LABEL_24;
  }

  lightweightPrimary = [v25 lightweightPrimary];
  v28 = [lightweightPrimary isEquivalentToHandle:handleCopy];

  if ((v28 & 1) == 0)
  {
    v31 = sub_100004778(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412290;
      v37 = handleCopy;
      v32 = "FromHandle: %@ trying to vouch for another member's lightweightMember";
      v33 = v31;
      v34 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_9:
  v30 = 1;
LABEL_24:

  return v30;
}

- (NSDictionary)conversationsByGroupUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017108C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)advertisementsOnSystem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100171434;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)incomingPendingConversationsByGroupUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001716D8;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_incomingPendingConversationsByGroupUUID
{
  pendingMembershipTracker = [(CSDConversationManager *)self pendingMembershipTracker];
  pendingMembersByGroup = [pendingMembershipTracker pendingMembersByGroup];

  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [pendingMembersByGroup count]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = pendingMembersByGroup;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [[TUConversation alloc] initWithUUID:v10 groupUUID:v10];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [NSSet setWithArray:v12];
        [v11 setPendingMembers:v13];

        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  linkManager = [(CSDConversationManager *)self linkManager];
  allKeys = [v5 allKeys];
  v37 = 0;
  v16 = [linkManager conversationLinkDescriptorsWithGroupUUIDs:allKeys error:&v37];
  v17 = v37;

  if (v17)
  {
    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] _incomingPendingConversationsByGroupUUID: issue fetching links for pending incoming {error: %@}", buf, 0xCu);
    }
  }

  v32 = v17;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        groupUUID = [v25 groupUUID];
        v27 = [v4 objectForKeyedSubscript:groupUUID];

        v28 = [[TUConversationLink alloc] initWithDescriptor:v25];
        [v27 setLink:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v22);
  }

  v29 = [v4 copy];

  return v29;
}

- (NSDictionary)_conversationsByUUID
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(CSDConversationManager *)self mutableConversationsByUUID];
}

- (NSDictionary)pseudonymsByCallUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100171BF0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)conversationsByUUIDIncludingStorageConversations:(BOOL)conversations
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100028694;
  v14 = sub_1000328D4;
  v15 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171D8C;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  conversationsCopy = conversations;
  dispatch_sync(queue, block);

  v6 = [v11[5] copy];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)activatedConversationLinksWithError:(id *)error
{
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    v6 = [linkManager fetchActivatedLinksWithError:error];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)deletedConversationLinksWithError:(id *)error
{
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    v6 = [linkManager fetchDeletedLinksWithError:error];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (NSDictionary)activityAuthorizedBundleIdentifierState
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[CPApplicationPolicyManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 autoSharePlayEnabled]);
  [v2 setObject:v4 forKeyedSubscript:@"gk"];

  v5 = +[CPApplicationPolicyManager sharedInstance];
  authorizedBundleIdentifiers = [v5 authorizedBundleIdentifiers];
  [v2 setObject:authorizedBundleIdentifiers forKeyedSubscript:@"bk"];

  return v2;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001722A8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001723B0;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (void)addObserver:(id)observer queue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  observerStorage = [(CSDConversationManager *)self observerStorage];
  [observerStorage addObserver:observerCopy queue:queueCopy];
}

- (void)beginListeningOnService:(id)service
{
  serviceCopy = service;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100172534;
  v7[3] = &unk_100619D88;
  v8 = serviceCopy;
  selfCopy = self;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

- (void)retreiveActiveConversations
{
  service = [(CSDConversationManager *)self service];
  callerID = [service callerID];

  if (callerID)
  {
    persistenceController = [(CSDConversationManager *)self persistenceController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001728F0;
    v9[3] = &unk_10061CE58;
    v9[4] = self;
    [persistenceController enumerateActiveConversations:v9];
  }

  else
  {
    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = 1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldClearDefaults: %d - Removing all conversations", buf, 8u);
    }

    persistenceController2 = [(CSDConversationManager *)self persistenceController];
    [persistenceController2 removeAllConversations];
  }
}

- (void)removeAllConversations
{
  persistenceController = [(CSDConversationManager *)self persistenceController];
  [persistenceController removeAllConversations];
}

- (id)findOrCreateConversationWithGroupUUID:(id)d messagesGroupUUID:(id)iD remoteMembers:(id)members otherInvitedHandles:(id)handles localMember:(id)member remotePushTokens:(id)tokens link:(id)link activity:(id)self0 avMode:(unint64_t)self1 presentationMode:(unint64_t)self2 conversationProvider:(id)self3 screenSharingRequest:(id)self4
{
  dCopy = d;
  iDCopy = iD;
  membersCopy = members;
  handlesCopy = handles;
  memberCopy = member;
  tokensCopy = tokens;
  linkCopy = link;
  activityCopy = activity;
  providerCopy = provider;
  requestCopy = request;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100028694;
  v64 = sub_1000328D4;
  v65 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173278;
  block[3] = &unk_10061CE80;
  v46 = dCopy;
  v47 = membersCopy;
  v48 = providerCopy;
  selfCopy = self;
  v50 = linkCopy;
  v24 = linkCopy;
  v25 = providerCopy;
  v51 = memberCopy;
  v52 = iDCopy;
  v53 = handlesCopy;
  v54 = tokensCopy;
  v55 = activityCopy;
  v56 = requestCopy;
  modeCopy = mode;
  presentationModeCopy = presentationMode;
  v57 = &v60;
  v41 = requestCopy;
  v39 = activityCopy;
  v35 = tokensCopy;
  v38 = handlesCopy;
  v26 = iDCopy;
  v27 = memberCopy;
  v28 = v24;
  v29 = v25;
  v30 = membersCopy;
  v31 = dCopy;
  dispatch_sync(queue, block);

  v32 = v61[5];
  _Block_object_dispose(&v60, 8);

  return v32;
}

- (void)joinExistingConversationWithUUID:(id)d context:(id)context
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173C8C;
  block[3] = &unk_100619E58;
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  v6 = contextCopy;
  v7 = dCopy;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  queue = [(CSDConversationManager *)self queue];
  dispatch_async(queue, v8);
}

- (id)initiatePendingConversationForLink:(id)link localMember:(id)member isVideoEnabled:(BOOL)enabled
{
  linkCopy = link;
  memberCopy = member;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100028694;
  v25 = sub_1000328D4;
  v26 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017467C;
  block[3] = &unk_10061CED0;
  v16 = linkCopy;
  v17 = memberCopy;
  enabledCopy = enabled;
  selfCopy = self;
  v19 = &v21;
  v11 = memberCopy;
  v12 = linkCopy;
  dispatch_sync(queue, block);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)requestLetMeInApprovalForPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100174C04;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = pseudonymCopy;
  v6 = pseudonymCopy;
  dispatch_async(queue, v7);
}

- (void)sendLetMeInResponseToPendingMember:(id)member forConversation:(id)conversation usingResponseKeyData:(id)data approved:(BOOL)approved callback:(id)callback
{
  approvedCopy = approved;
  memberCopy = member;
  conversationCopy = conversation;
  dataCopy = data;
  callbackCopy = callback;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = sub_100004778(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (approvedCopy)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    [conversationCopy UUID];
    v20 = v19 = dataCopy;
    *buf = 138412802;
    v61 = memberCopy;
    v62 = 2112;
    v63 = v18;
    v64 = 2112;
    v65 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LMI: Notifying pending member %@ of our response (approved: %@) to their let me in for conversation UUID %@", buf, 0x20u);

    dataCopy = v19;
  }

  link = [conversationCopy link];
  pseudonym = [link pseudonym];
  v23 = [TUHandle normalizedGenericHandleForValue:pseudonym];

  if (dataCopy)
  {
    v55 = memberCopy;
    v56 = v23;
    p_info = CSDMessagingSharePlayAvailable.info;
    v26 = [CSDMessagingConversationMessage alloc];
    v27 = v26;
    if (approvedCopy)
    {
      groupUUID = [conversationCopy groupUUID];
      [conversationCopy link];
      v30 = v29 = self;
      v31 = [(CSDMessagingConversationMessage *)v27 initWithType:16 groupUUID:groupUUID link:v30];

      localMember = [conversationCopy localMember];
      handle = [localMember handle];
      v34 = [CSDMessagingHandle handleWithTUHandle:handle];
      link2 = [v31 link];
      [link2 setOriginatorHandle:v34];

      self = v29;
      p_info = (CSDMessagingSharePlayAvailable + 32);
    }

    else
    {
      v31 = [(CSDMessagingConversationMessage *)v26 initWithType:16 groupUUID:0 link:0];
      localMember = [conversationCopy link];
      handle = [CSDMessagingConversationLink linkWithTUConversationLink:localMember includeGroupUUID:0];
      [v31 setLink:handle];
    }

    v37 = sub_100004778([v31 setIsLetMeInApproved:approvedCopy]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v31;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LetMeInResponse message assembled as %@", buf, 0xCu);
    }

    linkManager = [(CSDConversationManager *)self linkManager];
    v23 = v56;
    v39 = [linkManager encryptLetMeInResponse:v31 pseudonym:v56 responseKeyData:dataCopy];

    if (v39)
    {
      v41 = objc_alloc((p_info + 136));
      link3 = [conversationCopy link];
      selfCopy = self;
      v43 = [v41 initWithEncryptedMessage:v39 enclosedType:16 link:link3];

      v44 = [TUConversationMember alloc];
      [conversationCopy link];
      v45 = v54 = dataCopy;
      pseudonym2 = [v45 pseudonym];
      v47 = [TUHandle normalizedGenericHandleForValue:pseudonym2];
      v48 = [v44 initWithHandle:v47 nickname:0];

      v58 = @"kCSDConversationIsLetMeInApproved";
      v49 = [NSNumber numberWithBool:approvedCopy];
      v59 = v49;
      v50 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];

      data = [v43 data];
      idsDestination = [v55 idsDestination];
      v36 = callbackCopy;
      [(CSDConversationManager *)selfCopy sendData:data onConversation:conversationCopy toDestinationID:idsDestination fromMember:v48 additionalOptions:v50 isBlobResponse:0 callback:callbackCopy];

      memberCopy = v55;
      dataCopy = v54;

      v23 = v56;
    }

    else
    {
      v43 = sub_100004778(v40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100477900();
      }

      memberCopy = v55;
      v36 = callbackCopy;
    }
  }

  else
  {
    v31 = sub_100004778(v24);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] Response key missing from LMI response; cannot encrypt to send without. Aborting.", buf, 2u);
    }

    v36 = callbackCopy;
  }
}

- (void)updateLetMeInRequestState:(int64_t)state addLink:(id)link forConversationWithUUID:(id)d
{
  linkCopy = link;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100175C28;
  v13[3] = &unk_10061BDD0;
  v14 = dCopy;
  selfCopy = self;
  v16 = linkCopy;
  stateCopy = state;
  v11 = linkCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)sendInvitationMessageToMember:(id)member destinationID:(id)d invitationContext:(id)context forConversation:(id)conversation includeAllAttributes:(BOOL)attributes invitationPreferences:(id)preferences additionalOptions:(id)options
{
  attributesCopy = attributes;
  memberCopy = member;
  dCopy = d;
  contextCopy = context;
  conversationCopy = conversation;
  preferencesCopy = preferences;
  optionsCopy = options;
  v18 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  link = [conversationCopy link];
  v21 = [(CSDMessagingConversationMessage *)v18 initWithType:1 groupUUID:groupUUID link:link];

  if (attributesCopy)
  {
    v62 = dCopy;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    v23 = [activeRemoteParticipants countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v80;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v80 != v25)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v27 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:*(*(&v79 + 1) + 8 * i)];
          [(CSDMessagingConversationMessage *)v21 addActiveParticipants:v27];
        }

        v24 = [activeRemoteParticipants countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v24);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    activeLightweightParticipants = [conversationCopy activeLightweightParticipants];
    v29 = [activeLightweightParticipants countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v76;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v76 != v31)
          {
            objc_enumerationMutation(activeLightweightParticipants);
          }

          v33 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:*(*(&v75 + 1) + 8 * j)];
          [(CSDMessagingConversationMessage *)v21 addActiveLightweightParticipants:v33];
        }

        v30 = [activeLightweightParticipants countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v30);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    remoteMembers = [conversationCopy remoteMembers];
    v35 = [remoteMembers countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v72;
      do
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v72 != v37)
          {
            objc_enumerationMutation(remoteMembers);
          }

          v39 = [CSDMessagingConversationMember memberWithTUConversationMember:*(*(&v71 + 1) + 8 * k)];
          [(CSDMessagingConversationMessage *)v21 addAddedMembers:v39];
        }

        v36 = [remoteMembers countByEnumeratingWithState:&v71 objects:v86 count:16];
      }

      while (v36);
    }

    v60 = contextCopy;
    v63 = memberCopy;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    activitySessions = [conversationCopy activitySessions];
    v41 = [activitySessions countByEnumeratingWithState:&v67 objects:v85 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v68;
      do
      {
        for (m = 0; m != v42; m = m + 1)
        {
          if (*v68 != v43)
          {
            objc_enumerationMutation(activitySessions);
          }

          v45 = *(*(&v67 + 1) + 8 * m);
          activity = [v45 activity];
          isStaticActivity = [activity isStaticActivity];

          if ((isStaticActivity & 1) == 0)
          {
            v48 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v45 fromConversation:conversationCopy forStorage:0];
            [(CSDMessagingConversationMessage *)v21 addActivitySessions:v48];
          }
        }

        v42 = [activitySessions countByEnumeratingWithState:&v67 objects:v85 count:16];
      }

      while (v42);
    }

    highlightIdentifiers = [conversationCopy highlightIdentifiers];
    anyObject = [highlightIdentifiers anyObject];

    if (anyObject)
    {
      [(CSDMessagingConversationMessage *)v21 setHighlightIdentifier:anyObject];
    }

    stagedActivitySession = [conversationCopy stagedActivitySession];

    dCopy = v62;
    memberCopy = v63;
    if (stagedActivitySession)
    {
      stagedActivitySession2 = [conversationCopy stagedActivitySession];
      v53 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:stagedActivitySession2 fromConversation:conversationCopy forStorage:0];
      [(CSDMessagingConversationMessage *)v21 setStagedActivitySession:v53];
    }

    contextCopy = v61;
  }

  if (preferencesCopy)
  {
    [(CSDMessagingConversationMessage *)v21 setTUInvitationPreferences:preferencesCopy];
  }

  else
  {
    invitationPreferences = [conversationCopy invitationPreferences];
    [(CSDMessagingConversationMessage *)v21 setTUInvitationPreferences:invitationPreferences];
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

  if (nearbyFaceTimeEnabled)
  {
    v57 = [(CSDMessagingConversationMessage *)v21 setTUInvitationContext:contextCopy];
  }

  v58 = sub_100004778(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v84 = v21;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Sending invitation message %@", buf, 0xCu);
  }

  data = [(CSDMessagingConversationMessage *)v21 data];
  if (dCopy)
  {
    [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toDestinationID:dCopy additionalOptions:optionsCopy];
  }

  else
  {
    [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toMember:memberCopy additionalOptions:optionsCopy];
  }
}

- (void)startAudioForConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001766B8;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)_leaveConversation:(id)conversation withContext:(id)context
{
  conversationCopy = conversation;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [conversationCopy leaveUsingContext:contextCopy];
  link = [conversationCopy link];
  pseudonym = [link pseudonym];
  v10 = [pseudonym length];

  if (v10)
  {
    link2 = [conversationCopy link];
    pseudonym2 = [link2 pseudonym];
    v13 = [(CSDConversationManager *)self _removePendingConversationWithPseudonym:pseudonym2];
  }
}

- (void)_leaveConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:0];
  [(CSDConversationManager *)self _leaveConversation:conversationCopy withContext:v6];
}

- (void)leaveConversationWithUUID:(id)d
{
  dCopy = d;
  v5 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:0];
  [(CSDConversationManager *)self leaveConversationWithUUID:dCopy withContext:v5];
}

- (void)leaveConversationWithUUID:(id)d withContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176AF4;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)leaveAllConversations
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176C08;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addPseudonym:(id)pseudonym forCallUUID:(id)d
{
  pseudonymCopy = pseudonym;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176DEC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = pseudonymCopy;
  v9 = pseudonymCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)removePseudonym:(id)pseudonym forCallUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100176EFC;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

- (void)setUplinkMuted:(BOOL)muted forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017700C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  mutedCopy = muted;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setVideo:(BOOL)video forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177134;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  videoCopy = video;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)sendVideoUpgradeMessageforConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100177254;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setVideoEnabled:(BOOL)enabled forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001774A4;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  enabledCopy = enabled;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setUplinkMuted:(BOOL)muted forPendingConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001775CC;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  mutedCopy = muted;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setVideoEnabled:(BOOL)enabled forPendingConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001778F0;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  enabledCopy = enabled;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)requestParticipantToShareScreen:(id)screen forConversationUUID:(id)d
{
  screenCopy = screen;
  dCopy = d;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100177C78;
    block[3] = &unk_100619E58;
    v14 = screenCopy;
    selfCopy = self;
    v16 = dCopy;
    dispatch_async(queue, block);

    v12 = v14;
  }

  else
  {
    v12 = sub_100004778(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100477978();
    }
  }
}

- (void)cancelOrDenyScreenShareRequest:(id)request forConversationUUID:(id)d
{
  requestCopy = request;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177FDC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setScreenEnabled:(BOOL)enabled forConversationWithUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  v7 = +[TUCallScreenShareAttributes defaultAttributes];
  [(CSDConversationManager *)self setScreenEnabled:enabledCopy screenShareAttributes:v7 forConversationWithUUID:dCopy];
}

- (void)setScreenEnabled:(BOOL)enabled screenShareAttributes:(id)attributes forConversationWithUUID:(id)d
{
  attributesCopy = attributes;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100178394;
  v13[3] = &unk_10061BE38;
  v13[4] = self;
  v14 = dCopy;
  enabledCopy = enabled;
  v15 = attributesCopy;
  v11 = attributesCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)setVideoPaused:(BOOL)paused forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178B1C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  pausedCopy = paused;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setAudioPaused:(BOOL)paused forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178C44;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  pausedCopy = paused;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setRelaying:(BOOL)relaying forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178D6C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  relayingCopy = relaying;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setScreening:(BOOL)screening forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178E94;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  screeningCopy = screening;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setAudioInjectionAllowed:(BOOL)allowed forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178FBC;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  allowedCopy = allowed;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)isConversationWithUUIDRedirectingAudio:(id)audio
{
  audioCopy = audio;
  if ([(CSDConversationManager *)self isConversationWithUUIDRelaying:audioCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CSDConversationManager *)self isConversationWithUUIDScreening:audioCopy];
  }

  return v5;
}

- (BOOL)isConversationWithUUIDRelaying:(id)relaying
{
  relayingCopy = relaying;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179180;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = relayingCopy;
  v10 = &v11;
  v6 = relayingCopy;
  dispatch_sync(queue, block);

  LOBYTE(relayingCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return relayingCopy;
}

- (BOOL)isConversationWithUUIDScreening:(id)screening
{
  screeningCopy = screening;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001792F4;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = screeningCopy;
  v10 = &v11;
  v6 = screeningCopy;
  dispatch_sync(queue, block);

  LOBYTE(screeningCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return screeningCopy;
}

- (int)presentationStateForConversationWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 2;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017946C;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(queue, block);

  LODWORD(dCopy) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (void)setPresentationState:(int)state forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017959C;
  block[3] = &unk_10061CF48;
  block[4] = self;
  v10 = dCopy;
  stateCopy = state;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setPresentationRect:(CGRect)rect forConversationWithUUID:(id)d
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001796E4;
  v12[3] = &unk_10061CF70;
  v12[4] = self;
  v13 = dCopy;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v11 = dCopy;
  dispatch_async(queue, v12);
}

- (void)setGridDisplayMode:(unint64_t)mode forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179810;
  block[3] = &unk_100619F20;
  block[4] = self;
  v10 = dCopy;
  modeCopy = mode;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setScreenShareAttributes:(id)attributes forConversationWithUUID:(id)d
{
  attributesCopy = attributes;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179954;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = attributesCopy;
  v9 = attributesCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setIsNearbySharePlay:(BOOL)play forConversationWithUUID:(id)d
{
  playCopy = play;
  dCopy = d;
  v7 = sub_100004778(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = playCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationUUID: %d isNearbySharePlay: %@", buf, 0x12u);
  }

  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179B20;
  block[3] = &unk_100619F48;
  block[4] = self;
  v11 = dCopy;
  v12 = playCopy;
  v9 = dCopy;
  dispatch_async(queue, block);
}

- (void)removeRemoteMembers:(id)members fromConversationWithUUID:(id)d
{
  membersCopy = members;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179FBC;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = membersCopy;
  selfCopy = self;
  v9 = membersCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)_conversationIsOverGreenTeaCapacity:(id)capacity addingMembers:(id)members
{
  capacityCopy = capacity;
  membersCopy = members;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  v9 = TUGreenTeaLagunaEnabled();

  if (v9)
  {
    remoteMembers = [capacityCopy remoteMembers];
    remoteMembers3 = [NSMutableSet setWithSet:remoteMembers];

    [remoteMembers3 unionSet:membersCopy];
    localMember = [capacityCopy localMember];
    association = [localMember association];
    v15 = [TUConversation mergedRemoteMembers:remoteMembers3 withLocalMemberAssociation:association removingLocallyAssociatedMember:1];

    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v15 count];
      v19 = @"NO";
      if (v18 > 1)
      {
        v19 = @"YES";
      }

      v26 = 138412290;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Laguna conversationIsOverGreenTeaCapacity: %@", &v26, 0xCu);
    }

    v20 = [v15 count] > 1;
  }

  else
  {
    v21 = sub_100004778(v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      remoteMembers2 = [capacityCopy remoteMembers];
      v23 = [remoteMembers2 count];
      v24 = @"NO";
      if (v23 == 1)
      {
        v24 = @"YES";
      }

      v26 = 138412290;
      v27 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "conversationIsOverGreenTeaCapacity: %@", &v26, 0xCu);
    }

    remoteMembers3 = [capacityCopy remoteMembers];
    v20 = [remoteMembers3 count] == 1;
  }

  return v20;
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversationWithUUID:(id)d
{
  membersCopy = members;
  handlesCopy = handles;
  preferencesCopy = preferences;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017A4B8;
  block[3] = &unk_10061A428;
  v20 = dCopy;
  v21 = membersCopy;
  v22 = handlesCopy;
  selfCopy = self;
  v24 = preferencesCopy;
  v15 = preferencesCopy;
  v16 = handlesCopy;
  v17 = membersCopy;
  v18 = dCopy;
  dispatch_async(queue, block);
}

- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017AC24;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = contextCopy;
  selfCopy = self;
  v9 = contextCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setSharePlayHandedOff:(BOOL)off onConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B194;
  block[3] = &unk_100619F48;
  offCopy = off;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)maybeAddComplementaryAssociationVoucherFor:(id)for toLocalMemberOf:(id)of completion:(id)completion
{
  forCopy = for;
  ofCopy = of;
  completionCopy = completion;
  selfCopy = self;
  voucherManager = [(CSDConversationManager *)self voucherManager];

  if (voucherManager)
  {
    block = completionCopy;
    group = dispatch_group_create();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = forCopy;
    obj = forCopy;
    v13 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      v43 = *v52;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          association = [v17 association];
          if (association)
          {
            v19 = association;
            associationVoucher = [v17 associationVoucher];

            if (associationVoucher)
            {
              v21 = objc_alloc_init(CSDMessagingMemberAssociationClaim);
              localMember = [ofCopy localMember];
              [localMember handle];
              v24 = v23 = v14;
              v25 = [CSDMessagingHandle handleWithTUHandle:v24];
              [(CSDMessagingMemberAssociationClaim *)v21 setPrimaryHandle:v25];

              localParticipant = [ofCopy localParticipant];
              -[CSDMessagingMemberAssociationClaim setPrimaryIdentifier:](v21, "setPrimaryIdentifier:", [localParticipant identifier]);

              localParticipant2 = [ofCopy localParticipant];
              avcIdentifier = [localParticipant2 avcIdentifier];
              [(CSDMessagingMemberAssociationClaim *)v21 setPrimaryAvcIdentifier:avcIdentifier];

              handle = [v17 handle];
              v30 = [CSDMessagingHandle handleWithTUHandle:handle];
              [(CSDMessagingMemberAssociationClaim *)v21 setAssociatedPseudonym:v30];

              groupUUID = [ofCopy groupUUID];
              uUIDString = [groupUUID UUIDString];
              [(CSDMessagingMemberAssociationClaim *)v21 setConversationGroupUUIDString:uUIDString];

              association2 = [v17 association];
              -[CSDMessagingMemberAssociationClaim setType:](v21, "setType:", [association2 type]);

              dispatch_group_enter(group);
              voucherManager2 = [(CSDConversationManager *)selfCopy voucherManager];
              data = [(CSDMessagingMemberAssociationClaim *)v21 data];
              localMember2 = [ofCopy localMember];
              handle2 = [localMember2 handle];
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_10017B75C;
              v47[3] = &unk_10061CF98;
              v47[4] = v17;
              v48 = ofCopy;
              v49 = v21;
              v50 = group;
              v38 = v21;
              [voucherManager2 sign:data as:handle2 completion:v47];

              v14 = v23;
              v15 = v43;
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v14);
    }

    queue = [(CSDConversationManager *)selfCopy queue];
    completionCopy = block;
    dispatch_group_notify(group, queue, block);

    forCopy = v42;
  }

  else
  {
    v40 = sub_100004778(v12);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_100477B90();
    }

    completionCopy[2](completionCopy);
  }
}

- (void)addInvitedMemberHandlesFromAddedRemoteMembers:(id)members toConversationLink:(id)link
{
  membersCopy = members;
  linkCopy = link;
  selfCopy = self;
  _linksEnabled = [(CSDConversationManager *)self _linksEnabled];
  v46 = linkCopy;
  if (!linkCopy || !_linksEnabled || ![linkCopy isLocallyCreated])
  {
    goto LABEL_46;
  }

  v44 = +[NSMutableSet set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = membersCopy;
  v9 = membersCopy;
  v51 = [v9 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (!v51)
  {
    goto LABEL_40;
  }

  v50 = *v57;
  obj = v9;
  do
  {
    v10 = 0;
    do
    {
      if (*v57 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v56 + 1) + 8 * v10);
      handle = [v11 handle];
      value = [handle value];
      if ([value destinationIdIsTemporary])
      {
        goto LABEL_12;
      }

      handle2 = [v11 handle];
      value2 = [handle2 value];
      if ([value2 destinationIdIsPseudonym])
      {

LABEL_12:
LABEL_13:
        handle10 = sub_100004778(v16);
        if (!os_log_type_enabled(handle10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        handle3 = [v11 handle];
        handle4 = [v11 handle];
        value3 = [handle4 value];
        if ([value3 destinationIdIsTemporary])
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        v47 = v19;
        handle5 = [v11 handle];
        value4 = [handle5 value];
        if ([value4 destinationIdIsPseudonym])
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        handle6 = [v11 handle];
        originatorHandle = [v46 originatorHandle];
        v25 = [handle6 isEquivalentToHandle:originatorHandle];
        *buf = 138413058;
        if (v25)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v62 = handle3;
        handle9 = handle3;
        v63 = 2112;
        v64 = v47;
        v65 = 2112;
        v66 = v22;
        v67 = 2112;
        v68 = v26;
        _os_log_impl(&_mh_execute_header, handle10, OS_LOG_TYPE_DEFAULT, "Not adding %@ to invited member handles of link because destinationIdIsTemporary(%@), destinationIdIsPseudonym(%@), or handle is the originator of link (%@)", buf, 0x2Au);

LABEL_24:
        goto LABEL_25;
      }

      handle7 = [v11 handle];
      originatorHandle2 = [v46 originatorHandle];
      v30 = [handle7 isEquivalentToHandle:originatorHandle2];

      if (v30)
      {
        goto LABEL_13;
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      invitedMemberHandles = [v46 invitedMemberHandles];
      v32 = [invitedMemberHandles countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v53;
LABEL_30:
        v35 = 0;
        while (1)
        {
          if (*v53 != v34)
          {
            objc_enumerationMutation(invitedMemberHandles);
          }

          v36 = *(*(&v52 + 1) + 8 * v35);
          handle8 = [v11 handle];
          LOBYTE(v36) = [handle8 isEquivalentToHandle:v36];

          if (v36)
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [invitedMemberHandles countByEnumeratingWithState:&v52 objects:v60 count:16];
            if (v33)
            {
              goto LABEL_30;
            }

            goto LABEL_36;
          }
        }

        handle10 = sub_100004778(v38);
        if (!os_log_type_enabled(handle10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        handle9 = [v11 handle];
        *buf = 138412290;
        v62 = handle9;
        _os_log_impl(&_mh_execute_header, handle10, OS_LOG_TYPE_DEFAULT, "Not adding %@ to invited member handles of link because it is already an invited member handle of the link", buf, 0xCu);
        goto LABEL_24;
      }

LABEL_36:

      handle10 = [v11 handle];
      [v44 addObject:handle10];
LABEL_25:

      v10 = v10 + 1;
    }

    while (v10 != v51);
    v9 = obj;
    v39 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
    v51 = v39;
  }

  while (v39);
LABEL_40:

  v40 = v44;
  if ([v44 count])
  {
    [(CSDConversationManager *)selfCopy addInvitedMemberHandles:v44 toConversationLink:v46 completionHandler:0];
    membersCopy = v42;
  }

  else
  {
    v41 = sub_100004778(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v9;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Not adding any of the following members to the invited handles of the link: %@", buf, 0xCu);
    }

    membersCopy = v42;
    v40 = v44;
  }

LABEL_46:
}

- (BOOL)allActiveConversationParticipantsSupportSharePlay
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = [(CSDConversationManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017BF28;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isSharePlayAvailable
{
  sharePlaySystemStateObserver = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  allowSharePlay = [sharePlaySystemStateObserver allowSharePlay];

  return allowSharePlay;
}

- (BOOL)isScreenSharingAvailable
{
  sharePlaySystemStateObserver = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  allowScreenSharing = [sharePlaySystemStateObserver allowScreenSharing];

  return allowScreenSharing;
}

- (BOOL)isScreenSharingInitiationAvailable
{
  sharePlaySystemStateObserver = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  allowScreenSharingInitiation = [sharePlaySystemStateObserver allowScreenSharingInitiation];

  return allowScreenSharingInitiation;
}

- (void)displaySharePlayUnableToStartAlert
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017C0B8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_displaySharePlayUnableToStartAlert
{
  v3 = TUBundle();
  v4 = [v3 localizedStringForKey:@"SHAREPLAY_INCOMPATIBLE_MESSAGE" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v5 = TUSharePlayForceDisabled();
  if (v5)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Not displaying SharePlay not supported alert because SharePlay features are disabled.", buf, 2u);
    }
  }

  else
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Displaying SharePlay not supported alert with message: %@", buf, 0xCu);
    }

    v10 = TUBundle();
    v6 = [v10 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

    v11 = +[NSString stringGUID];
    v12 = TUBundle();
    v13 = [v12 localizedStringForKey:@"SHAREPLAY_INCOMPATIBLE_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v14 = [IMUserNotification userNotificationWithIdentifier:v11 title:v13 message:v4 defaultButton:v6 alternateButton:0 otherButton:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017C33C;
    block[3] = &unk_100619D38;
    v17 = v14;
    v15 = v14;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)updateMessagesGroupName:(id)name onConversationWithUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017C494;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017C974;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setLocalParticipantCluster:(id)cluster forConversationUUID:(id)d
{
  clusterCopy = cluster;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017CE78;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = clusterCopy;
  selfCopy = self;
  v9 = clusterCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (FTDeviceSupport)deviceSupport
{
  deviceSupport = self->_deviceSupport;
  if (deviceSupport)
  {
    v3 = deviceSupport;
  }

  else
  {
    v3 = +[FTDeviceSupport sharedInstance];
  }

  return v3;
}

- (id)createCPActivitySessionForActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412546;
    v30 = sessionCopy;
    v31 = 2112;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ConversationManager asked to create activitySession for activitySession: %@ on conversation UUID: %@", &v29, 0x16u);
  }

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  v12 = [mutableConversationsByUUID objectForKeyedSubscript:dCopy];

  if (!v12)
  {
    v15 = sub_100004778(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      mutableConversationsByUUID2 = [(CSDConversationManager *)self mutableConversationsByUUID];
      allKeys = [mutableConversationsByUUID2 allKeys];
      v29 = 138412546;
      v30 = dCopy;
      v31 = 2112;
      v32 = allKeys;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v29, 0x16u);
    }

    goto LABEL_14;
  }

  if ([v12 state] != 3)
  {
    isLocallyInitiated = [sessionCopy isLocallyInitiated];
    if (isLocallyInitiated)
    {
      v15 = sub_100004778(isLocallyInitiated);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = dCopy;
      }

LABEL_14:
      v24 = 0;
      goto LABEL_20;
    }
  }

  activity = [sessionCopy activity];
  [activity setTrustedFromHandle:0];

  v15 = [v12 createActivitySession:sessionCopy];
  if (v15)
  {
    [(CSDConversationManager *)self cancelPreviouslySentScreenShareRequests:v12];
    tuConversationActivitySession = [v15 tuConversationActivitySession];
    localParticipant = [v12 localParticipant];
    [(CSDConversationManager *)self postSessionStartedForSession:tuConversationActivitySession originator:localParticipant conversation:v12];

    activity2 = [sessionCopy activity];
    LOBYTE(localParticipant) = [activity2 isStaticActivity];

    if (localParticipant)
    {
      v21 = sub_100004778(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not broadcasting activity session creation for static activity", &v29, 2u);
      }
    }

    else
    {
      v26 = [CSDMessagingConversationMessage alloc];
      groupUUID = [v12 groupUUID];
      v21 = [(CSDMessagingConversationMessage *)v26 initWithType:8 groupUUID:groupUUID link:0];

      [(CSDConversationManager *)self sendMessage:v21 forConversation:v12 withActivitySession:v15];
      [(CSDConversationManager *)self broadcastImageForSession:sessionCopy onConversation:v12];
    }

    v15 = v15;
    v24 = v15;
  }

  else
  {
    v25 = sub_100004778(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100477C7C();
    }

    v24 = 0;
  }

LABEL_20:

  return v24;
}

- (void)advertiseGroupActivity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v8 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = activityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Advertising GroupActivity with UUID = %@", buf, 0xCu);
  }

  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017D4B8;
  block[3] = &unk_10061AF20;
  block[4] = self;
  v13 = activityCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = activityCopy;
  dispatch_async(queue, block);
}

- (void)stopAdvertisingGroupActivity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v8 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = activityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopping advertisement of GroupActivity with UUID = %@", buf, 0xCu);
  }

  queue = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017D654;
  v11[3] = &unk_10061ACD0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(queue, v11);
}

- (void)createActivitySession:(id)session onConversationWithUUID:(id)d options:(unint64_t)options withCompletion:(id)completion
{
  sessionCopy = session;
  dCopy = d;
  completionCopy = completion;
  v13 = sub_100004778(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createActivitySession: %@ onContainerWithUUID: %@", &v15, 0x16u);
  }

  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  [activitySessionContainerProvider handleActivitySessionCreationRequestWithActivity:sessionCopy options:options containerID:dCopy completionHandler:completionCopy];
}

- (void)leaveActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017D8A8;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = sessionCopy;
  selfCopy = self;
  v9 = sessionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)endActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DB14;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = sessionCopy;
  selfCopy = self;
  v9 = sessionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d onConversationWithUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DD84;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = iDCopy;
  selfCopy = self;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)cancelPreviouslySentScreenShareRequests:(id)requests
{
  requestsCopy = requests;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  screenSharingRequests = [requestsCopy screenSharingRequests];
  v6 = [screenSharingRequests countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(screenSharingRequests);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        isLocallyOriginated = [v11 isLocallyOriginated];
        if (isLocallyOriginated)
        {
          v13 = sub_100004778(isLocallyOriginated);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cancelling existing locally originated screen share request: %@", buf, 0xCu);
          }

          uUID = [requestsCopy UUID];
          [(CSDConversationManager *)self cancelOrDenyScreenShareRequest:v11 forConversationUUID:uUID];
        }
      }

      v8 = [screenSharingRequests countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10017E184;
  v13[3] = &unk_10061BE38;
  airplayCopy = airplay;
  v13[4] = self;
  v14 = sessionCopy;
  v15 = dCopy;
  v11 = dCopy;
  v12 = sessionCopy;
  dispatch_async(queue, v13);
}

- (void)sendMessage:(id)message forConversation:(id)conversation withActivitySession:(id)session additionalOptions:(id)options
{
  conversationCopy = conversation;
  optionsCopy = options;
  sessionCopy = session;
  messageCopy = message;
  v13 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:sessionCopy fromConversation:conversationCopy forStorage:0];
  [messageCopy addActivitySessions:v13];

  data = [messageCopy data];
  v29[0] = IDSSendMessageOptionPublicMessageIntentKey;
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [messageCopy type]);
  v30[0] = v15;
  v29[1] = IDSSendMessageOptionQueueOneIdentifierKey;
  identifier = [sessionCopy identifier];

  uUIDString = [identifier UUIDString];
  type = [messageCopy type];

  v19 = [NSNumber numberWithInt:type];
  v20 = [NSString stringWithFormat:@"%@:%@", uUIDString, v19];
  v30[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v22 = [v21 mutableCopy];

  if (optionsCopy)
  {
    [v22 addEntriesFromDictionary:optionsCopy];
  }

  v23 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v22];
  v24 = v23;
  v25 = sub_100004778(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v28 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(success: %d).", buf, 8u);
  }
}

- (void)setActivityAuthorization:(BOOL)authorization forBundleID:(id)d
{
  authorizationCopy = authorization;
  dCopy = d;
  v6 = sub_100004778(dCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = authorizationCopy;
    v9 = 2112;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting activity authorization %d for %@", v8, 0x12u);
  }

  v7 = +[CPApplicationPolicyManager sharedInstance];
  [v7 setAuthorization:authorizationCopy forBundleID:dCopy];
}

- (void)setAutoSharePlayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:enabledCopy];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting auto expanse enabled %@", &v7, 0xCu);
  }

  v6 = +[CPApplicationPolicyManager sharedInstance];
  [v6 setAutoSharePlayEnabled:enabledCopy];
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017E880;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)launchApplicationForActivitySessionUUID:(id)d authorizedExternally:(BOOL)externally forceBackground:(BOOL)background completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017EB34;
  v15[3] = &unk_10061CFE8;
  backgroundCopy = background;
  v16 = dCopy;
  selfCopy = self;
  v18 = handlerCopy;
  externallyCopy = externally;
  v13 = handlerCopy;
  v14 = dCopy;
  dispatch_sync(queue, v15);
}

- (void)requestActivityAuthorizationForApplicationWithBundleIdentifier:(id)identifier overrides:(id)overrides completionHandler:(id)handler
{
  identifierCopy = identifier;
  overridesCopy = overrides;
  handlerCopy = handler;
  v11 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting activity authorization for %@", buf, 0xCu);
  }

  queue = [(CSDConversationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017F91C;
  v16[3] = &unk_10061AF98;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = overridesCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = overridesCopy;
  v15 = identifierCopy;
  dispatch_sync(queue, v16);
}

- (void)revokeBackgroundPipAuthorizationsForBundleID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017FA70;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)resetActivitySessionSceneAssociationsForBundleID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017FCAC;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)handleConversation:(id)conversation participantUpdateMessage:(id)message fromNormalizedHandle:(id)handle
{
  conversationCopy = conversation;
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v147 = messageCopy;
    v148 = 2112;
    v149 = handleCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling participant update message: %@ from: %@", buf, 0x16u);
  }

  if (sub_1000C0318(messageCopy))
  {
    v14 = objc_alloc_init(NSMutableArray);
    localParticipant = [conversationCopy localParticipant];
    v16 = [IDSDestination destinationWithTUConversationParticipant:localParticipant];
    v119 = v14;
    [v14 addObject:v16];

    activeParticipants = [messageCopy activeParticipants];
    firstObject = [activeParticipants firstObject];

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    v20 = [activeRemoteParticipants countByEnumeratingWithState:&v140 objects:v156 count:16];
    if (v20)
    {
      v21 = v20;
      v113 = conversationCopy;
      selfCopy = self;
      v118 = 0;
      v22 = *v141;
      v117 = firstObject;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v141 != v22)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v24 = *(*(&v140 + 1) + 8 * i);
          identifier = [v24 identifier];
          if (identifier == [firstObject identifier])
          {
            handle = [v24 handle];
            v27 = handleCopy;
            v28 = [handle isEquivalentToHandle:handleCopy];

            if ((v28 & 1) == 0)
            {
              v35 = sub_100004778(v29);
              handleCopy = v27;
              firstObject = v117;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                handle2 = [v24 handle];
                *buf = 138412802;
                v147 = v117;
                v148 = 2112;
                v149 = handle2;
                v150 = 2112;
                v151 = handleCopy;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring participant update message %@ because participant handle %@ does not match message sender %@.", buf, 0x20u);
              }

              goto LABEL_24;
            }

            if (v118)
            {
              v30 = sub_100004778(v29);
              handleCopy = v27;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v147 = v113;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Trying to update participant, but one is already found... duplicate participants on conversation? conversation: %@", buf, 0xCu);
              }

              tuConversationParticipant = [v24 tuConversationParticipant];
              v32 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant];
              [v119 addObject:v32];
            }

            else
            {
              v118 = v24;
              handleCopy = v27;
            }

            firstObject = v117;
          }

          else
          {
            tuConversationParticipant2 = [v24 tuConversationParticipant];
            v34 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant2];
            [v119 addObject:v34];
          }
        }

        v21 = [activeRemoteParticipants countByEnumeratingWithState:&v140 objects:v156 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

LABEL_24:

      conversationCopy = v113;
      if (v118)
      {
        v38 = sub_100004778(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v147 = v118;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Found participant for update message: %@", buf, 0xCu);
        }

        audioVideoMode = [v118 audioVideoMode];
        avMode = [firstObject avMode];
        presentationMode = [v118 presentationMode];
        hasPresentationMode = [firstObject hasPresentationMode];
        resolvedPresentationMode = presentationMode;
        v43 = selfCopy;
        if (hasPresentationMode)
        {
          resolvedPresentationMode = [v117 resolvedPresentationMode];
        }

        v120 = avMode;
        avMode2 = [v113 avMode];
        if (avMode2)
        {
          v45 = 0;
        }

        else
        {
          participantIDsChangedFromAVLessToAV = [v113 participantIDsChangedFromAVLessToAV];
          v47 = handleCopy;
          v48 = [NSNumber numberWithUnsignedLongLong:[v118 identifier]];
          v45 = [participantIDsChangedFromAVLessToAV containsObject:v48];

          handleCopy = v47;
        }

        if (audioVideoMode != v120 || v45)
        {
          v111 = v45;
          if (audioVideoMode != v120)
          {
            tuConversationParticipant3 = [v118 tuConversationParticipant];
            [v113 setParticipantAudioVideoMode:v120 presentationMode:resolvedPresentationMode forParticipant:tuConversationParticipant3];
          }

          tuConversationParticipant4 = [v118 tuConversationParticipant];
          v53 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant4];
          [v119 addObject:v53];

          v55 = sub_100004778(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [v113 UUID];
            avMode3 = [v113 avMode];
            *buf = 138413314;
            v58 = @"NO";
            v147 = uUID;
            if (v45)
            {
              v58 = @"YES";
            }

            v148 = 2048;
            v149 = avMode3;
            v150 = 2048;
            v151 = v120;
            v152 = 2048;
            v153 = resolvedPresentationMode;
            v154 = 2112;
            v155 = v58;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ has avMode: %lu and the desiredAudioVideoMode is %lu desiredPresentationMode is %lu, shouldUpgradeToAV: %@", buf, 0x34u);
          }

          v112 = messageCopy;
          v115 = handleCopy;
          if (![v113 avMode] && v120)
          {
            activeLocalHandles = [(CSDConversationManager *)selfCopy activeLocalHandles];
            v60 = activeLocalHandles[2]();
            v61 = handleCopy;
            v62 = [v60 containsObject:handleCopy];

            v63 = ([v113 state] != 3) & v62;
            invitationPreferencesCount = [messageCopy invitationPreferencesCount];
            if (invitationPreferencesCount)
            {
              invitationResolver = [(CSDConversationManager *)selfCopy invitationResolver];
              tuConversation = [v113 tuConversation];
              tuInvitationPreferences = [messageCopy tuInvitationPreferences];
              v68 = [invitationResolver shouldShowInvitationRingingUIForConversation:tuConversation handle:v61 invitationMessagePreferences:tuInvitationPreferences] ^ 1;
            }

            else
            {
              v68 = 1;
            }

            v70 = sub_100004778(invitationPreferencesCount);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = @"YES";
              if (v68)
              {
                v72 = @"NO";
              }

              else
              {
                v72 = @"YES";
              }

              if (v63)
              {
                v71 = @"NO";
              }

              *buf = 138412546;
              v147 = v72;
              v148 = 2112;
              v149 = v71;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Evaluating if we should notify delegates shouldShowInvitationRingingUI: %@ shouldInvokeDelegateBasedOnRemoteHandle: %@", buf, 0x16u);
            }

            if (((v68 | v63) & 1) == 0)
            {
              v74 = sub_100004778(v73);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v147 = v118;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Triggering a ringing call for participant update from: %@", buf, 0xCu);
              }

              tuConversation2 = [v113 tuConversation];
              v136 = 0u;
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
              v76 = [delegateToQueue countByEnumeratingWithState:&v136 objects:v145 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v137;
                do
                {
                  for (j = 0; j != v77; j = j + 1)
                  {
                    if (*v137 != v78)
                    {
                      objc_enumerationMutation(delegateToQueue);
                    }

                    v80 = *(*(&v136 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector())
                    {
                      delegateToQueue2 = [(CSDConversationManager *)selfCopy delegateToQueue];
                      v82 = [delegateToQueue2 objectForKey:v80];

                      block[0] = _NSConcreteStackBlock;
                      block[1] = 3221225472;
                      block[2] = sub_100180CC4;
                      block[3] = &unk_10061D010;
                      block[4] = v80;
                      v131 = tuConversation2;
                      v132 = selfCopy;
                      v134 = audioVideoMode;
                      v135 = v120;
                      v133 = v115;
                      dispatch_async(v82, block);
                    }
                  }

                  v77 = [delegateToQueue countByEnumeratingWithState:&v136 objects:v145 count:16];
                }

                while (v77);
              }

              conversationCopy = v113;
              v43 = selfCopy;
            }
          }

          if ([conversationCopy avMode])
          {
            if (!v120 && [conversationCopy state] == 3)
            {
              remoteMembers = [conversationCopy remoteMembers];
              v84 = [remoteMembers count];

              if (v84 == 1)
              {
                v86 = sub_100004778(v85);
                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Received participant update message to downgrade, but we're in a U+1 call so we should also downgrade!", buf, 2u);
                }

                uUID2 = [conversationCopy UUID];
                [(CSDConversationManager *)v43 setLocalParticipantAudioVideoMode:0 forConversationUUID:uUID2];
              }
            }
          }

          if (![conversationCopy state] && objc_msgSend(conversationCopy, "avMode") < v120)
          {
            activeLocalHandlesForProvider = [(CSDConversationManager *)v43 activeLocalHandlesForProvider];
            provider = [conversationCopy provider];
            v90 = (activeLocalHandlesForProvider)[2](activeLocalHandlesForProvider, provider);
            v91 = [v90 containsObject:v115];

            if (v91)
            {
              v93 = sub_100004778(v92);
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134349056;
                v147 = v120;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Changing conversation AVMode to %{public}lu since conversation is waiting", buf, 0xCu);
              }

              [conversationCopy setAvMode:v120];
            }
          }

          if (!v111 || ([conversationCopy participantIDsChangedFromAVLessToAV], v94 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", -[NSObject identifier](v118, "identifier")), v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v94, "containsObject:", v95), v95, v94, !v96))
          {
            [conversationCopy setRemoteParticipantType:v120 != 0 participant:v118];
            [conversationCopy updateOneToOneModeForParticipantUpdateType:v120 != 0 participant:v118];
            goto LABEL_95;
          }

          v98 = sub_100004778(v97);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v99 = [NSNumber numberWithUnsignedLongLong:[v118 identifier]];
            participantIDsChangedFromAVLessToAV2 = [conversationCopy participantIDsChangedFromAVLessToAV];
            *buf = 138412546;
            v147 = v99;
            v148 = 2112;
            v149 = participantIDsChangedFromAVLessToAV2;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Removing %@ from participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
          }

          participantIDsChangedFromAVLessToAV3 = [conversationCopy participantIDsChangedFromAVLessToAV];
          v101 = [NSNumber numberWithUnsignedLongLong:[v118 identifier]];
          [participantIDsChangedFromAVLessToAV3 removeObject:v101];
        }

        else
        {
          v49 = sub_100004778(avMode2);
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (presentationMode == resolvedPresentationMode)
          {
            if (v50)
            {
              *buf = 138412546;
              v147 = v118;
              v148 = 2048;
              v149 = audioVideoMode;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Participant %@ is already in audioVideoMode: %ld... Not handling update!", buf, 0x16u);
            }

LABEL_105:
            firstObject = v117;
LABEL_106:

            goto LABEL_107;
          }

          v112 = messageCopy;
          if (v50)
          {
            *buf = 138412802;
            v147 = v118;
            v148 = 2048;
            v149 = resolvedPresentationMode;
            v150 = 2048;
            v151 = presentationMode;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Update presentationMode for participant %@ desiredPresentationMode:%lu oldPresentationMode:%lu", buf, 0x20u);
          }

          v115 = handleCopy;

          participantIDsChangedFromAVLessToAV3 = [v118 tuConversationParticipant];
          [v113 setParticipantAudioVideoMode:audioVideoMode presentationMode:resolvedPresentationMode forParticipant:participantIDsChangedFromAVLessToAV3];
        }

LABEL_95:
        persistenceController = [(CSDConversationManager *)v43 persistenceController];
        [persistenceController updateConversation:conversationCopy];

        tuConversation3 = [conversationCopy tuConversation];
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        delegateToQueue3 = [(CSDConversationManager *)v43 delegateToQueue];
        v104 = [delegateToQueue3 countByEnumeratingWithState:&v126 objects:v144 count:16];
        if (v104)
        {
          v105 = v104;
          v106 = *v127;
          do
          {
            for (k = 0; k != v105; k = k + 1)
            {
              if (*v127 != v106)
              {
                objc_enumerationMutation(delegateToQueue3);
              }

              v108 = *(*(&v126 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                delegateToQueue4 = [(CSDConversationManager *)selfCopy delegateToQueue];
                v110 = [delegateToQueue4 objectForKey:v108];

                v123[0] = _NSConcreteStackBlock;
                v123[1] = 3221225472;
                v123[2] = sub_100180E10;
                v123[3] = &unk_100619E58;
                v123[4] = v108;
                v124 = tuConversation3;
                v125 = selfCopy;
                dispatch_async(v110, v123);
              }
            }

            v105 = [delegateToQueue3 countByEnumeratingWithState:&v126 objects:v144 count:16];
          }

          while (v105);
        }

        messageCopy = v112;
        conversationCopy = v113;
        handleCopy = v115;
        goto LABEL_105;
      }
    }

    else
    {
    }

    v118 = sub_100004778(v37);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      sub_100477DD0();
    }

    goto LABEL_106;
  }

LABEL_107:
}

- (void)handleConversation:(id)conversation registerMessagesGroupUUIDMessage:(id)message fromNormalizedHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = handleCopy;
    v14 = 2112;
    v15 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received message from %@ to associate conversation %@ with messages group", &v12, 0x16u);
  }

  [conversationCopy registerMessagesGroupAssociation];
}

- (void)handleConversation:(id)conversation removeActivitySession:(id)session fromHandle:(id)handle
{
  conversationCopy = conversation;
  sessionCopy = session;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessions = [sessionCopy activitySessions];
  v11 = [activitySessions count];

  obj = sub_100004778(v12);
  v13 = os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138412546;
      v41 = sessionCopy;
      v42 = 2112;
      v43 = handleCopy;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Received remove activity session message %@ from %@", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [sessionCopy activitySessions];
    v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v27 = sessionCopy;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = +[TUCallCenter sharedInstance];
          queue2 = [v19 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001813AC;
          block[3] = &unk_100619E58;
          v21 = conversationCopy;
          v32 = v21;
          v33 = v18;
          selfCopy = self;
          dispatch_async(queue2, block);

          v22 = [NSUUID alloc];
          identifierUUIDString = [v18 identifierUUIDString];
          v24 = [v22 initWithUUIDString:identifierUUIDString];

          if (v24)
          {
            [v21 removeActivitySessionWithUUID:v24 usingTerminatingHandle:handleCopy];
          }

          else
          {
            v26 = sub_100004778(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v18;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
      sessionCopy = v27;
    }
  }

  else if (v13)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)conversation updateActivity:(id)activity fromHandle:(id)handle
{
  conversationCopy = conversation;
  activityCopy = activity;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessions = [activityCopy activitySessions];
  v13 = [activitySessions count];

  activitySessions2 = sub_100004778(v14);
  v16 = os_log_type_enabled(activitySessions2, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v16)
    {
      *buf = 138412290;
      v36 = activityCopy;
      _os_log_impl(&_mh_execute_header, activitySessions2, OS_LOG_TYPE_DEFAULT, "Updating activities from message: %@", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    activitySessions2 = [activityCopy activitySessions];
    v17 = [activitySessions2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v29 = activityCopy;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(activitySessions2);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [NSUUID alloc];
          identifierUUIDString = [v21 identifierUUIDString];
          v24 = [v22 initWithUUIDString:identifierUUIDString];

          if (v24)
          {
            activity = [v21 activity];
            tuConversationActivity = [activity tuConversationActivity];

            [tuConversationActivity setTrustedFromHandle:handleCopy];
            activitySessionManager = [conversationCopy activitySessionManager];
            [activitySessionManager updateActivitySessionWithUUID:v24 activity:tuConversationActivity];
          }

          else
          {
            tuConversationActivity = sub_100004778(v25);
            if (os_log_type_enabled(tuConversationActivity, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v21;
              _os_log_error_impl(&_mh_execute_header, tuConversationActivity, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
            }
          }
        }

        v18 = [activitySessions2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
      activityCopy = v29;
    }
  }

  else if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, activitySessions2, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)conversation addHighlight:(id)highlight fromHandle:(id)handle
{
  conversationCopy = conversation;
  highlightCopy = highlight;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  highlightIdentifier = [highlightCopy highlightIdentifier];

  anyObject = sub_100004778(v13);
  v15 = os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT);
  if (highlightIdentifier)
  {
    if (v15)
    {
      highlightIdentifier2 = [highlightCopy highlightIdentifier];
      v25 = 138412290;
      v26 = highlightIdentifier2;
      _os_log_impl(&_mh_execute_header, anyObject, OS_LOG_TYPE_DEFAULT, "Received new highlight identifier %@", &v25, 0xCu);
    }

    highlightIdentifiers = [conversationCopy highlightIdentifiers];
    anyObject = [highlightIdentifiers anyObject];

    v18 = [conversationCopy remoteParticipantForHandle:handleCopy];
    highlightIdentifier3 = [highlightCopy highlightIdentifier];
    v20 = [anyObject isEqualToString:highlightIdentifier3];

    if (v20)
    {
      collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
      highlightIdentifier4 = [highlightCopy highlightIdentifier];
      [collaborationStateManager collaborationReAdded:highlightIdentifier4];
    }

    else
    {
      collaborationStateManager = [highlightCopy highlightIdentifier];
      [conversationCopy addHighlightIdentifier:collaborationStateManager];
    }

    tuConversation = [conversationCopy tuConversation];
    highlightIdentifier5 = [highlightCopy highlightIdentifier];
    [(CSDConversationManager *)self notifyDelegateOfHighlightAddedForConversation:tuConversation highlightIdentifier:highlightIdentifier5 oldHighlightIdentifier:anyObject byParticipant:v18 isFirstAdd:v20 ^ 1];
  }

  else if (v15)
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, anyObject, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid highlight identifier.", &v25, 2u);
  }
}

- (void)handleConversation:(id)conversation removeHighlight:(id)highlight fromHandle:(id)handle
{
  conversationCopy = conversation;
  highlightCopy = highlight;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  highlightIdentifier = [highlightCopy highlightIdentifier];

  log = sub_100004778(v13);
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (!highlightIdentifier)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid highlight identifier.", buf, 2u);
    }

    goto LABEL_15;
  }

  if (v14)
  {
    highlightIdentifier2 = [highlightCopy highlightIdentifier];
    *buf = 138412546;
    v46 = highlightIdentifier2;
    v47 = 2112;
    v48 = conversationCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trying to remove highlight identifier %@ from conversation:%@ ", buf, 0x16u);
  }

  highlightIdentifiers = [conversationCopy highlightIdentifiers];
  highlightIdentifier3 = [highlightCopy highlightIdentifier];
  v18 = [highlightIdentifiers containsObject:highlightIdentifier3];

  if (v18)
  {
    highlightIdentifier4 = [highlightCopy highlightIdentifier];
    [conversationCopy removeHighlightIdentifier:highlightIdentifier4];

    collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
    tuConversation = [conversationCopy tuConversation];
    [collaborationStateManager stopTrackingCollaborationForConversationIfNecessary:tuConversation];

    v31 = handleCopy;
    log = [conversationCopy remoteParticipantForHandle:handleCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(CSDConversationManager *)self delegateToQueue];
    v22 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v33 = *v41;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          tuConversation2 = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          [delegateToQueue objectForKey:v25];
          v29 = v28 = conversationCopy;

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100181F94;
          block[3] = &unk_10061A428;
          block[4] = v25;
          v36 = tuConversation2;
          selfCopy = self;
          v38 = log;
          v39 = highlightCopy;
          v30 = tuConversation2;
          dispatch_async(v29, block);

          conversationCopy = v28;
        }

        v23 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v23);
    }

    handleCopy = v31;
LABEL_15:
  }
}

- (void)handleConversation:(id)conversation screenShareRequest:(id)request fromHandle:(id)handle
{
  conversationCopy = conversation;
  requestCopy = request;
  handleCopy = handle;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = conversationCopy;
      v32 = 2112;
      v33 = requestCopy;
      v34 = 2112;
      v35 = handleCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received screen share request for conversation %@ with message %@ from handle %@", buf, 0x20u);
    }

    screenShareContext = [requestCopy screenShareContext];

    if (!screenShareContext)
    {
      v18 = sub_100004778(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid screen share context.", buf, 2u);
      }

      goto LABEL_18;
    }

    v18 = [conversationCopy remoteParticipantForHandle:handleCopy];
    screenShareContext2 = [requestCopy screenShareContext];
    type = [screenShareContext2 type];

    if (type)
    {
      screenShareContext3 = [requestCopy screenShareContext];
      type2 = [screenShareContext3 type];

      if (type2 != 2)
      {
LABEL_18:

        goto LABEL_19;
      }

      screenShareContext4 = [requestCopy screenShareContext];
      [(CSDConversationManager *)self removeScreenShareRequestFromParticipant:v18 conversation:conversationCopy screenShareContext:screenShareContext4];
    }

    else
    {
      v24 = [(CSDConversationManager *)self conversationContainsScreenShareRequest:conversationCopy localRequest:0 requestHandle:handleCopy];
      if (v24)
      {
        v25 = sub_100004778(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100477E38();
        }

        goto LABEL_18;
      }

      screenShareContext5 = [requestCopy screenShareContext];
      isHandleEligibleForScreenSharingRequestsBlock = self->_isHandleEligibleForScreenSharingRequestsBlock;
      v29 = 0;
      v28 = [screenShareContext5 incomingScreenShareRequestFromParticipant:v18 handleEligibilityBlock:isHandleEligibleForScreenSharingRequestsBlock error:&v29];
      screenShareContext4 = v29;

      if (v28)
      {
        [conversationCopy addScreenSharingRequest:v28];
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)handleConversation:(id)conversation screenShareResponse:(id)response fromHandle:(id)handle
{
  conversationCopy = conversation;
  responseCopy = response;
  handleCopy = handle;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412802;
      v24 = conversationCopy;
      v25 = 2112;
      v26 = responseCopy;
      v27 = 2112;
      v28 = handleCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received screen share response for conversation %@ with message %@ from handle %@", &v23, 0x20u);
    }

    screenShareContext = [responseCopy screenShareContext];

    if (screenShareContext)
    {
      v18 = [conversationCopy remoteParticipantForHandle:handleCopy];
      screenShareContext2 = [responseCopy screenShareContext];
      type = [screenShareContext2 type];

      if ((type & 0xFFFFFFFE) == 2)
      {
        screenShareContext3 = [responseCopy screenShareContext];
        [(CSDConversationManager *)self removeScreenShareRequestFromParticipant:v18 conversation:conversationCopy screenShareContext:screenShareContext3];
      }

      else
      {
        screenShareContext3 = sub_100004778(v21);
        if (os_log_type_enabled(screenShareContext3, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = responseCopy;
          _os_log_impl(&_mh_execute_header, screenShareContext3, OS_LOG_TYPE_DEFAULT, "[WARN] Received screen share response with invalid type %@", &v23, 0xCu);
        }
      }
    }

    else
    {
      v18 = sub_100004778(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid screen share context.", &v23, 2u);
      }
    }
  }
}

- (void)removeScreenShareRequestFromParticipant:(id)participant conversation:(id)conversation screenShareContext:(id)context
{
  participantCopy = participant;
  conversationCopy = conversation;
  contextCopy = context;
  v10 = [NSUUID alloc];
  screenShareUUID = [contextCopy screenShareUUID];
  v12 = [v10 initWithUUIDString:screenShareUUID];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  screenSharingRequests = [conversationCopy screenSharingRequests];
  v14 = [screenSharingRequests countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v24 = contextCopy;
    v15 = participantCopy;
    v16 = *v27;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(screenSharingRequests);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        uUID = [v18 UUID];
        v20 = [uUID isEqual:v12];

        if (v20)
        {
          v14 = v18;
          goto LABEL_11;
        }
      }

      v14 = [screenSharingRequests countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_11:
    participantCopy = v15;
    contextCopy = v24;
  }

  identifier = [participantCopy identifier];
  if (identifier == [v14 participantIdentifier] || (v22 = objc_msgSend(v14, "originType"), v22 == 1))
  {
    if (v14)
    {
      [conversationCopy removeScreenSharingRequest:v14];
    }
  }

  else
  {
    v23 = sub_100004778(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Originator of the screen share request does not match the participant who sent the request to cancel screen share", buf, 2u);
    }
  }
}

- (void)handleConversation:(id)conversation updateActivityImage:(id)image fromHandle:(id)handle
{
  conversationCopy = conversation;
  imageCopy = image;
  handleCopy = handle;
  selfCopy = self;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v57 = imageCopy;
  activitySessions = [imageCopy activitySessions];
  v12 = [activitySessions count];

  log = sub_100004778(v13);
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v15 = imageCopy;
    if (v14)
    {
      *buf = 138412290;
      v86 = imageCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating activity images from message: %@", buf, 0xCu);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    log = [imageCopy activitySessions];
    v64 = [log countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v64)
    {
      v63 = *v81;
      v65 = conversationCopy;
      while (1)
      {
        for (i = 0; i != v64; i = i + 1)
        {
          if (*v81 != v63)
          {
            objc_enumerationMutation(log);
          }

          v17 = *(*(&v80 + 1) + 8 * i);
          v18 = [NSUUID alloc];
          identifierUUIDString = [v17 identifierUUIDString];
          v20 = [v18 initWithUUIDString:identifierUUIDString];

          if (v20)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            activitySessions2 = [conversationCopy activitySessions];
            v23 = [activitySessions2 countByEnumeratingWithState:&v76 objects:v89 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v77;
              while (2)
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v77 != v25)
                  {
                    objc_enumerationMutation(activitySessions2);
                  }

                  v27 = *(*(&v76 + 1) + 8 * j);
                  identifier = [v27 identifier];
                  v29 = [identifier isEqual:v20];

                  if (v29)
                  {
                    v30 = v27;
                    goto LABEL_20;
                  }
                }

                v24 = [activitySessions2 countByEnumeratingWithState:&v76 objects:v89 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }

              v30 = 0;
LABEL_20:
              conversationCopy = v65;
            }

            else
            {
              v30 = 0;
            }

            stagedActivitySession = [conversationCopy stagedActivitySession];
            uUID = [stagedActivitySession UUID];
            v33 = [uUID isEqual:v20];

            if (v33)
            {
              stagedActivitySession2 = [conversationCopy stagedActivitySession];
              v35 = stagedActivitySession2;
            }

            else
            {
              v35 = 0;
            }

            if (v30 | v35)
            {
              v36 = [NSUUID alloc];
              activity = [v17 activity];
              identifierUUIDString2 = [activity identifierUUIDString];
              v39 = [v36 initWithUUIDString:identifierUUIDString2];

              if (v39)
              {
                if (v30)
                {
                  v41 = v30;
                }

                else
                {
                  v41 = v35;
                }

                activity2 = [v41 activity];
                originator = [activity2 originator];
                if (!originator)
                {
                  localMember = [v65 localMember];
                  originator = [localMember handle];
                }

                v45 = [originator isEquivalentToHandle:handleCopy];
                if (v45)
                {
                  v60 = activity2;
                  activity3 = [v17 activity];
                  activityMetadata = [activity3 activityMetadata];

                  v48 = activityMetadata;
                  hasImage = [activityMetadata hasImage];
                  if (hasImage)
                  {
                    [activityMetadata image];
                    v50 = v59 = activityMetadata;
                    _FTOptionallyDecompressData = [v50 _FTOptionallyDecompressData];

                    v68[0] = _NSConcreteStackBlock;
                    v68[1] = 3221225472;
                    v68[2] = sub_100182FC4;
                    v68[3] = &unk_10061D038;
                    v69 = v30;
                    v70 = v39;
                    v71 = v20;
                    v72 = _FTOptionallyDecompressData;
                    v73 = v35;
                    v74 = selfCopy;
                    v75 = v65;
                    v52 = _FTOptionallyDecompressData;
                    v53 = objc_retainBlock(v68);
                    imageTranscoder = [(CSDConversationManager *)selfCopy imageTranscoder];
                    v66[0] = _NSConcreteStackBlock;
                    v66[1] = 3221225472;
                    v66[2] = sub_100183240;
                    v66[3] = &unk_10061D060;
                    v66[4] = selfCopy;
                    v67 = v53;
                    v55 = v53;
                    [imageTranscoder generatePreviewImageFromData:v52 completionHandler:v66];

                    v48 = v59;
                  }

                  else
                  {
                    v52 = sub_100004778(hasImage);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      sub_100477EA8(v84, v17);
                    }
                  }

                  v56 = v52;
                  activity2 = v60;
                }

                else
                {
                  v48 = sub_100004778(v45);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v86 = handleCopy;
                    v87 = 2112;
                    v88 = originator;
                    _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Not updating activity because handle: %@ isn't the originator of the activity: %@", buf, 0x16u);
                  }
                }

LABEL_47:
              }

              else
              {
                activity2 = sub_100004778(v40);
                if (os_log_type_enabled(activity2, OS_LOG_TYPE_DEFAULT))
                {
                  originator = [v17 activity];
                  *buf = 138412290;
                  v86 = originator;
                  _os_log_impl(&_mh_execute_header, activity2, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating activity, no activity UUID was provided in message: %@", buf, 0xCu);
                  goto LABEL_47;
                }
              }
            }

            else
            {
              v39 = sub_100004778(stagedActivitySession2);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v86 = v20;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating activity, couldn't find activitySession || stagedActivitySession with UUID: %@", buf, 0xCu);
              }
            }

            conversationCopy = v65;
            goto LABEL_50;
          }

          v30 = sub_100004778(v21);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v86 = v17;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
          }

LABEL_50:
        }

        v64 = [log countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (!v64)
        {
          goto LABEL_55;
        }
      }
    }
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
    }

LABEL_55:
    v15 = v57;
  }
}

- (void)handleConversation:(id)conversation receivedEndorsementForMember:(id)member fromHandle:(id)handle
{
  memberCopy = member;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = memberCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received endorsement message: %@", &v15, 0xCu);
  }

  addedMembers = [memberCopy addedMembers];
  firstObject = [addedMembers firstObject];
  tuConversationMember = [firstObject tuConversationMember];

  [conversationCopy updateMemberValidationSource:tuConversationMember source:1];
}

- (void)handleConversation:(id)conversation receivedActivitySession:(id)session fromHandle:(id)handle
{
  conversationCopy = conversation;
  sessionCopy = session;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessions = [sessionCopy activitySessions];
  v13 = [activitySessions count];

  log = sub_100004778(v14);
  v15 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412290;
      v46 = sessionCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Received new activity for conversation %@", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    log = [sessionCopy activitySessions];
    v37 = [log countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v37)
    {
      v34 = sessionCopy;
      v36 = *v42;
      while (2)
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(log);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          activity = [v17 activity];
          tuConversationActivity = [activity tuConversationActivity];

          if (tuConversationActivity)
          {
            metadata = [tuConversationActivity metadata];
            if ([metadata supportsContinuationOnTV])
            {
            }

            else
            {
              localMember = [conversationCopy localMember];
              isLightweightMember = [localMember isLightweightMember];

              if (isLightweightMember)
              {
                v33 = sub_100004778(v23);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = v17;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Sending conversation back since new activitySession doesn't support aTV handoff. session: %@", buf, 0xCu);
                }

                [conversationCopy leave];
                goto LABEL_30;
              }
            }
          }

          v24 = [(CSDConversationManager *)self createActivitySession:v17 onConversation:conversationCopy fromHandle:handleCopy];
          if (v24)
          {
            v25 = +[TUCallCenter sharedInstance];
            [v25 queue];
            v27 = v26 = handleCopy;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100183934;
            block[3] = &unk_100619E58;
            block[4] = v17;
            v28 = conversationCopy;
            v39 = v28;
            selfCopy = self;
            dispatch_async(v27, block);

            handleCopy = v26;
            v29 = [v28 remoteParticipantForHandle:v26];
            if (v29)
            {
              tuConversationActivitySession = [v24 tuConversationActivitySession];
              [(CSDConversationManager *)self postSessionStartedForSession:tuConversationActivitySession originator:v29 conversation:v28];
            }

            else
            {
              tuConversationActivitySession = sub_100004778(0);
              if (os_log_type_enabled(tuConversationActivitySession, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v46 = v26;
                v47 = 2112;
                v48 = v24;
                _os_log_error_impl(&_mh_execute_header, tuConversationActivitySession, OS_LOG_TYPE_ERROR, "Not posting start session event. Could not find participant for handle %@ for session %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v31 = sub_100004778(0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              uUID = [conversationCopy UUID];
              *buf = 138412546;
              v46 = v17;
              v47 = 2112;
              v48 = uUID;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to add activitySession: %@ to conversation UUID: %@", buf, 0x16u);
            }
          }
        }

        v37 = [log countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

LABEL_30:
      sessionCopy = v34;
    }
  }

  else if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)conversation updateGuestMode:(id)mode fromHandle:(id)handle
{
  conversationCopy = conversation;
  modeCopy = mode;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDConversationManager *)self serverBag];
  isGuestModeSupported = [serverBag isGuestModeSupported];

  if (isGuestModeSupported)
  {
    hasGuestModeEnabled = [modeCopy hasGuestModeEnabled];
    v15 = hasGuestModeEnabled;
    v16 = sub_100004778(hasGuestModeEnabled);
    delegateToQueue = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = modeCopy;
        _os_log_impl(&_mh_execute_header, delegateToQueue, OS_LOG_TYPE_DEFAULT, "Received guest mode update for participant in conversation %@", buf, 0xCu);
      }

      v39 = modeCopy;
      guestModeEnabled = [modeCopy guestModeEnabled];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      v20 = [activeRemoteParticipants countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v50;
LABEL_7:
        v23 = 0;
        while (1)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v24 = *(*(&v49 + 1) + 8 * v23);
          handle = [v24 handle];
          v26 = [handle isEquivalentToHandle:handleCopy];

          if (v26)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [activeRemoteParticipants countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v21)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        [v24 setGuestModeEnabled:guestModeEnabled];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v29 = [delegateToQueue countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (!v29)
        {
          goto LABEL_27;
        }

        v30 = v29;
        obj = delegateToQueue;
        v38 = handleCopy;
        v31 = *v46;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v45 + 1) + 8 * i);
            tuConversation = [conversationCopy tuConversation];
            delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
            v36 = [delegateToQueue2 objectForKey:v33];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100184088;
            block[3] = &unk_100619E58;
            block[4] = v33;
            v43 = tuConversation;
            selfCopy = self;
            v37 = tuConversation;
            dispatch_async(v36, block);
          }

          v30 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v30);
        handleCopy = v38;
        modeCopy = v39;
        delegateToQueue = obj;
      }

      else
      {
LABEL_13:

        delegateToQueue = sub_100004778(v27);
        if (os_log_type_enabled(delegateToQueue, OS_LOG_TYPE_DEFAULT))
        {
          activeRemoteParticipants2 = [conversationCopy activeRemoteParticipants];
          *buf = 138412546;
          v55 = handleCopy;
          v56 = 2112;
          v57 = activeRemoteParticipants2;
          _os_log_impl(&_mh_execute_header, delegateToQueue, OS_LOG_TYPE_DEFAULT, "Ignoring guest mode update message because the from-handle %@ did not match any active remote participants %@", buf, 0x16u);
        }

LABEL_27:
        modeCopy = v39;
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100477F74();
    }
  }

  else
  {
    delegateToQueue = sub_100004778(v13);
    if (os_log_type_enabled(delegateToQueue, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, delegateToQueue, OS_LOG_TYPE_DEFAULT, "Ignoring guest mode message since guest mode is not currently supported", buf, 2u);
    }
  }
}

- (void)updateParticipantPresentationContexts:(id)contexts onConversationWithUUID:(id)d
{
  contextsCopy = contexts;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001842A8;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = contextsCopy;
  selfCopy = self;
  v9 = contextsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversationUUID:(id)iD
{
  memberCopy = member;
  dCopy = d;
  contextCopy = context;
  iDCopy = iD;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184550;
  block[3] = &unk_10061A428;
  v20 = iDCopy;
  v21 = memberCopy;
  selfCopy = self;
  v23 = contextCopy;
  v24 = dCopy;
  v15 = dCopy;
  v16 = contextCopy;
  v17 = memberCopy;
  v18 = iDCopy;
  dispatch_async(queue, block);
}

- (void)kickMember:(id)member conversationUUID:(id)d
{
  memberCopy = member;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184B80;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = memberCopy;
  selfCopy = self;
  v9 = memberCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)conversationContainsScreenShareRequest:(id)request localRequest:(BOOL)localRequest requestHandle:(id)handle
{
  localRequestCopy = localRequest;
  handleCopy = handle;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  screenSharingRequests = [request screenSharingRequests];
  v9 = [screenSharingRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(screenSharingRequests);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isLocallyOriginated] == localRequestCopy)
        {
          handle = [v13 handle];
          v15 = [handle isEquivalentToHandle:handleCopy];

          if (v15)
          {
            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [screenSharingRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)processUpdatedNickname:(id)nickname forHandle:(id)handle conversationUUID:(id)d
{
  nicknameCopy = nickname;
  handleCopy = handle;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100184FA4;
  v15[3] = &unk_10061A450;
  v15[4] = self;
  v16 = dCopy;
  v17 = handleCopy;
  v18 = nicknameCopy;
  v12 = nicknameCopy;
  v13 = handleCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)noticeManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  queue = [(CSDConversationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100185614;
  v16[3] = &unk_10061A450;
  v16[4] = self;
  v17 = conversationCopy;
  v18 = participantCopy;
  v19 = noticeCopy;
  v13 = noticeCopy;
  v14 = participantCopy;
  v15 = conversationCopy;
  dispatch_async(queue, v16);
}

- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsOnConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185A14;
  block[3] = &unk_100619F48;
  mutedCopy = muted;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants inConversationWithUUID:(id)d completionHandler:(id)handler
{
  participantsCopy = participants;
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185CA0;
  block[3] = &unk_10061D088;
  mutedCopy = muted;
  v18 = dCopy;
  v19 = participantsCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = participantsCopy;
  v16 = dCopy;
  dispatch_async(queue, block);
}

- (void)updateLocalMemberNickname:(id)nickname conversationUUID:(id)d
{
  nicknameCopy = nickname;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185F6C;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = nicknameCopy;
  v9 = nicknameCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenSharingActivityManager = [(CSDConversationManager *)self screenSharingActivityManager];
  latestRemoteAttributes = [screenSharingActivityManager latestRemoteAttributes];

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = latestRemoteAttributes;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to get latest remote attributes, returning: %@", &v9, 0xCu);
  }

  handlerCopy[2](handlerCopy, latestRemoteAttributes);
}

- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018637C;
  block[3] = &unk_10061B008;
  block[4] = self;
  v10 = handlerCopy;
  onlyCopy = only;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)generateLinkForConversationUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186774;
  block[3] = &unk_10061D128;
  v12 = dCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (id)_getActivatedLinkWithHandle:(id)handle updateGroupUUID:(id)d updateInvitedHandles:(id)handles
{
  handleCopy = handle;
  dCopy = d;
  handlesCopy = handles;
  linkManager = [(CSDConversationManager *)self linkManager];
  v12 = [linkManager getInactiveLinkForHandle:handleCopy];

  if (!v12)
  {
    v21 = sub_100004778(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = handleCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to fetch inactive link, generating new links for %@", &v24, 0xCu);
    }

    linkManager2 = [(CSDConversationManager *)self linkManager];
    [linkManager2 generateAllInactiveLinksFor:handleCopy];
    goto LABEL_10;
  }

  pseudonym = [v12 pseudonym];
  v15 = [(CSDConversationManager *)self isHandleStringLocalPseudonym:pseudonym];

  if (!v15)
  {
    linkManager2 = sub_100004778(v16);
    if (os_log_type_enabled(linkManager2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, linkManager2, OS_LOG_TYPE_DEFAULT, "Fetched non-local inactive link %@", &v24, 0xCu);
    }

LABEL_10:

    v19 = 0;
    goto LABEL_11;
  }

  linkManager3 = [(CSDConversationManager *)self linkManager];
  pseudonym2 = [v12 pseudonym];
  v19 = [linkManager3 activateLinkForPseudonym:pseudonym2 updateGroupUUID:dCopy updateInvitedHandles:handlesCopy];

  if (v19)
  {
    linkManager4 = [(CSDConversationManager *)self linkManager];
    [linkManager4 generateInactiveLinkFor:handleCopy afterActivation:1];
  }

LABEL_11:

  return v19;
}

- (void)setConversationLink:(id)link forConversation:(id)conversation replyToCompletionHandler:(id)handler
{
  linkCopy = link;
  conversationCopy = conversation;
  handlerCopy = handler;
  v11 = [conversationCopy setConversationLink:linkCopy allowUpdate:0];
  v12 = v11;
  v13 = sub_100004778(v11);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v17 = 138412290;
      v18 = linkCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setConversationLink %@ completed", &v17, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, linkCopy, 0);
    }

    [(CSDConversationManager *)self notifyDelegatesOfChangedLink:linkCopy conversation:conversationCopy];
    [(CSDConversationManager *)self sendMessagesForCreatedOrChangedLink:linkCopy conversation:conversationCopy messageType:11];
    link2 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
    [conversationCopy addRequiredCapabilities:link2 requiredLackOfCapabilities:0];
    goto LABEL_11;
  }

  if (v14)
  {
    link = [conversationCopy link];
    v17 = 138412290;
    v18 = link;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did not set conversation link as one already existed: %@", &v17, 0xCu);
  }

  if (handlerCopy)
  {
    link2 = [conversationCopy link];
    handlerCopy[2](handlerCopy, link2, 0);
LABEL_11:
  }
}

- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  handlesCopy = handles;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100187420;
  v13[3] = &unk_10061D150;
  v13[4] = self;
  v14 = handlesCopy;
  v15 = handlerCopy;
  scopeCopy = scope;
  v11 = handlesCopy;
  v12 = handlerCopy;
  dispatch_async(queue, v13);
}

- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler
{
  handlesCopy = handles;
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100187DE4;
  v15[3] = &unk_10061D1C8;
  v15[4] = self;
  v16 = handlesCopy;
  v17 = linkCopy;
  v18 = handlerCopy;
  v12 = linkCopy;
  v13 = handlesCopy;
  v14 = handlerCopy;
  dispatch_async(queue, v15);
}

- (void)invalidateLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001882D4;
  v13[3] = &unk_10061D150;
  v13[4] = self;
  v14 = linkCopy;
  v15 = handlerCopy;
  reasonCopy = reason;
  v11 = linkCopy;
  v12 = handlerCopy;
  dispatch_async(queue, v13);
}

- (void)renewLinkIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188838;
  block[3] = &unk_10061AF20;
  block[4] = self;
  v12 = neededCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = neededCopy;
  dispatch_async(queue, block);
}

- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler
{
  linkCopy = link;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188E0C;
  block[3] = &unk_10061D2B8;
  v20 = handlerCopy;
  reasonCopy = reason;
  block[4] = self;
  v18 = linkCopy;
  v19 = dateCopy;
  v14 = dateCopy;
  v15 = linkCopy;
  v16 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)checkLinkValidity:(id)validity completionHandler:(id)handler
{
  validityCopy = validity;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001893C0;
  block[3] = &unk_10061D128;
  v12 = validityCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = validityCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)generateAllInactiveLinks
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100189510;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getInactiveLinkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001896B8;
  v7[3] = &unk_10061ACD0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)activateLink:(id)link completionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100189A60;
  block[3] = &unk_10061D128;
  v12 = linkCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = linkCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler
{
  nameCopy = name;
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100189D04;
  v15[3] = &unk_10061D1C8;
  v15[4] = self;
  v16 = nameCopy;
  v17 = linkCopy;
  v18 = handlerCopy;
  v12 = linkCopy;
  v13 = nameCopy;
  v14 = handlerCopy;
  dispatch_async(queue, v15);
}

- (void)updateExternalParticipants:(id)participants
{
  participantsCopy = participants;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A224;
  v7[3] = &unk_100619D88;
  v8 = participantsCopy;
  selfCopy = self;
  v6 = participantsCopy;
  dispatch_async(queue, v7);
}

- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial
{
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018A398;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  initialCopy = initial;
  dispatch_async(queue, v6);
}

- (void)recoverLinksForPseudonyms:(id)pseudonyms
{
  pseudonymsCopy = pseudonyms;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A534;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = pseudonymsCopy;
  v6 = pseudonymsCopy;
  dispatch_async(queue, v7);
}

- (void)linkSyncStateIncludeLinks:(BOOL)links WithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A6C0;
  block[3] = &unk_10061B008;
  linksCopy = links;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_sync(queue, block);
}

- (void)approvePendingMember:(id)member forConversationUUID:(id)d
{
  memberCopy = member;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A884;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = memberCopy;
  v9 = memberCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)rejectPendingMember:(id)member forConversationUUID:(id)d
{
  memberCopy = member;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AB10;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = memberCopy;
  v9 = memberCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setIgnoreLetMeInRequests:(BOOL)requests forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AD74;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  requestsCopy = requests;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)addScreenSharingType:(unint64_t)type forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B254;
  block[3] = &unk_100619F20;
  selfCopy = self;
  typeCopy = type;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018B734;
  v7[3] = &unk_10061ACD0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B880;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = lCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = lCopy;
  dispatch_async(queue, block);
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018B988;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setMessagesGroupName:(id)name onConversationWithUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018BAB4;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)removeNonIndefiniteLinks
{
  linkManager = [(CSDConversationManager *)self linkManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018BCC4;
  v4[3] = &unk_10061D308;
  v4[4] = self;
  [linkManager getActiveLinksWithCreatedOnly:1 completionHandler:v4];
}

- (void)removeConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018C1B4;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)addAliasesToConversationContainer:(id)container forBundleIdentifier:(id)identifier
{
  containerCopy = container;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C400;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = containerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = containerCopy;
  dispatch_sync(queue, block);
}

- (void)includeMetricsReport:(id)report onConversationWithUUID:(id)d
{
  reportCopy = report;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C624;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  selfCopy = self;
  v14 = reportCopy;
  v9 = reportCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)removeNearbyMemberWithHandle:(id)handle onConversationWithUUID:(id)d
{
  handleCopy = handle;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C8B8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = handleCopy;
  v9 = handleCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d presentationMode:(unint64_t)presentationMode
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018CAAC;
  v11[3] = &unk_10061D330;
  v11[4] = self;
  v12 = dCopy;
  modeCopy = mode;
  presentationModeCopy = presentationMode;
  v10 = dCopy;
  dispatch_async(queue, v11);
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D00C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setupPendingConversationCleanupTimer
{
  pendingConversationCleanupTimer = [(CSDConversationManager *)self pendingConversationCleanupTimer];

  if (pendingConversationCleanupTimer)
  {
    pendingConversationCleanupTimer2 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
    dispatch_source_cancel(pendingConversationCleanupTimer2);
  }

  queue = [(CSDConversationManager *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(CSDConversationManager *)self setPendingConversationCleanupTimer:v6];

  pendingConversationCleanupTimer3 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  v8 = dispatch_time(0, 300000000000);
  dispatch_source_set_timer(pendingConversationCleanupTimer3, v8, 0x45D964B800uLL, 0x4A817C800uLL);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    pendingConversationCleanupTimer4 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
    *buf = 134218498;
    v17 = 0x4072C00000000000;
    v18 = 2048;
    v19 = 0x4034000000000000;
    v20 = 2112;
    v21 = pendingConversationCleanupTimer4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setupPendingConversationCleanupTimer: %f %f %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  pendingConversationCleanupTimer5 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10018D4A4;
  handler[3] = &unk_10061A740;
  objc_copyWeak(&v15, buf);
  dispatch_source_set_event_handler(pendingConversationCleanupTimer5, handler);

  pendingConversationCleanupTimer6 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  dispatch_resume(pendingConversationCleanupTimer6);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)cleanupExpiredPendingConversations
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v6 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(mutablePendingConversationsByPseudonym);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        mutablePendingConversationsByPseudonym2 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        v12 = [mutablePendingConversationsByPseudonym2 objectForKeyedSubscript:v10];

        dateCreated = [v12 dateCreated];
        [dateCreated timeIntervalSinceNow];
        v15 = v14;

        v16 = -v15;
        if (v15 >= 0.0)
        {
          v16 = v15;
        }

        if (v16 > 7200.0)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v7);
  }

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v36 = 0x40BC200000000000;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "cleanupExpiredPendingConversations: %f %@", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v4;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * v23);
        mutablePendingConversationsByPseudonym3 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        [mutablePendingConversationsByPseudonym3 setObject:0 forKeyedSubscript:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }
}

- (void)conversationChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = changedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationChanged: %@", buf, 0xCu);
  }

  activeRemoteParticipants = [changedCopy activeRemoteParticipants];
  if ([activeRemoteParticipants count])
  {
    v9 = 0;
  }

  else
  {
    activeLightweightParticipants = [changedCopy activeLightweightParticipants];
    v9 = [activeLightweightParticipants count] == 0;
  }

  if ([changedCopy state] || !v9)
  {
    persistenceController = [(CSDConversationManager *)selfCopy persistenceController];
    [persistenceController updateConversation:changedCopy];
  }

  else
  {
    [(CSDConversationManager *)selfCopy conversationInvalidated:changedCopy];
    persistenceController = [(CSDConversationManager *)selfCopy collaborationStateManager];
    tuConversation = [changedCopy tuConversation];
    [persistenceController stopTrackingCollaborationForConversationIfNecessary:tuConversation];
  }

  if ([changedCopy state] != 3)
  {
    goto LABEL_20;
  }

  remoteMembers = [changedCopy remoteMembers];
  if ([remoteMembers count] != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  remoteMembers2 = [changedCopy remoteMembers];
  anyObject = [remoteMembers2 anyObject];
  handle = [anyObject handle];
  localMember = [changedCopy localMember];
  handle2 = [localMember handle];
  if ([handle isEqualToHandle:handle2])
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  activeRemoteParticipants2 = [changedCopy activeRemoteParticipants];
  if ([activeRemoteParticipants2 count] != 1)
  {

    goto LABEL_17;
  }

  obj = activeRemoteParticipants2;
  activeRemoteParticipants3 = [changedCopy activeRemoteParticipants];
  anyObject2 = [activeRemoteParticipants3 anyObject];
  handle3 = [anyObject2 handle];
  localMember2 = [changedCopy localMember];
  handle4 = [localMember2 handle];
  v43 = handle3;
  if ([handle3 isEqualToHandle:handle4])
  {
    activeParticipantDestinationsByIdentifier = [changedCopy activeParticipantDestinationsByIdentifier];
    v22 = [activeParticipantDestinationsByIdentifier count] == 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    remoteMembers = [changedCopy remoteMembers];
    remoteMembers2 = [remoteMembers anyObject];
    anyObject = [changedCopy UUID];
    [(CSDConversationManager *)selfCopy buzzMember:remoteMembers2 destinationID:0 invitationContext:0 conversationUUID:anyObject];
    goto LABEL_18;
  }

LABEL_20:
  v46 = changedCopy;
  tuConversation2 = [changedCopy tuConversation];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obja = [(CSDConversationManager *)selfCopy delegateToQueue];
  v24 = [obja countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v60;
    do
    {
      v27 = 0;
      do
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v59 + 1) + 8 * v27);
        delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
        v30 = [delegateToQueue objectForKey:v28];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018DDAC;
        block[3] = &unk_100619E58;
        block[4] = v28;
        v57 = tuConversation2;
        v58 = selfCopy;
        dispatch_async(v30, block);

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [obja countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v25);
  }

  activitySessionContainerProvider = [(CSDConversationManager *)selfCopy activitySessionContainerProvider];
  [activitySessionContainerProvider activitySessionContainersChangedOnChildProvider:selfCopy];

  observerStorage = [(CSDConversationManager *)selfCopy observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v34 = observerToQueue;
  v35 = [v34 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v53;
    do
    {
      v38 = 0;
      do
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v52 + 1) + 8 * v38);
        if (objc_opt_respondsToSelector())
        {
          v40 = [v34 objectForKey:v39];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_10018DEF4;
          v50[3] = &unk_100619E58;
          v50[4] = v39;
          v50[5] = selfCopy;
          v51 = tuConversation2;
          dispatch_async(v40, v50);
        }

        v38 = v38 + 1;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v36);
  }
}

- (void)conversationConnectionDidStart:(id)start
{
  startCopy = start;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [startCopy UUID];
    *buf = 138412290;
    v27 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationConnectionDidStart UUID: %@", buf, 0xCu);
  }

  tuConversation = [startCopy tuConversation];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v10 = [delegateToQueue countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue2 objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018E160;
          block[3] = &unk_100619E58;
          block[4] = v14;
          v19 = tuConversation;
          selfCopy = self;
          dispatch_async(v16, block);
        }
      }

      v11 = [delegateToQueue countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)conversationInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  uUID = [invalidatedCopy UUID];
  v7 = sub_100004778(uUID);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationInvalidated UUID: %@", &v17, 0xCu);
  }

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  [mutableConversationsByUUID setObject:0 forKeyedSubscript:uUID];

  persistenceController = [(CSDConversationManager *)self persistenceController];
  [persistenceController removeConversation:invalidatedCopy];

  pendingMembershipTracker = [(CSDConversationManager *)self pendingMembershipTracker];
  [pendingMembershipTracker clearPendingMembershipFor:invalidatedCopy];

  link = [invalidatedCopy link];
  v12 = link;
  if (link && [link linkLifetimeScope] == 1)
  {
    v13 = sub_100004778(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conversationLink should be removed after call was invalidated %@", &v17, 0xCu);
    }

    linkManager = [(CSDConversationManager *)self linkManager];
    pseudonym = [v12 pseudonym];
    [linkManager invalidateLinkWithPseudonym:pseudonym deleteReason:7 completionHandler:&stru_10061D350];
  }

  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  [collaborationStateManager stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:uUID];

  [(CSDConversationManager *)self notifyDelegatesOfRemovedConversationWithUUID:uUID];
}

- (void)conversation:(id)conversation addedActiveParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v99 = conversationCopy;
    v100 = 2112;
    v101 = participantCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conversation: %@ addedActiveParticipant: %@", buf, 0x16u);
  }

  association = [participantCopy association];
  v75 = conversationCopy;
  selfCopy = self;
  if (association)
  {
    v12 = association;
    featureFlags = [(CSDConversationManager *)self featureFlags];
    if ([featureFlags conversationHandoffEnabled])
    {
      lockdownModeEnabled = [(CSDConversationManager *)self lockdownModeEnabled];
      v15 = lockdownModeEnabled[2]();

      if ((v15 & 1) == 0)
      {
        handle = [participantCopy handle];
        localMember = [conversationCopy localMember];
        handle2 = [localMember handle];
        if ([handle isEquivalentToHandle:handle2])
        {
          association2 = [participantCopy association];
          identifier = [association2 identifier];
          if (identifier == [conversationCopy localParticipantIdentifier])
          {
            state = [conversationCopy state];

            if (state == 3)
            {
              v23 = sub_100004778(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                uUID = [conversationCopy UUID];
                *buf = 138412546;
                v99 = uUID;
                v100 = 2112;
                v101 = participantCopy;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ was continued on another device as participant %@, leaving...", buf, 0x16u);
              }

              featureFlags2 = [(CSDConversationManager *)self featureFlags];
              if ([featureFlags2 groupFacetimeAsAServiceEnabled])
              {
                provider = [conversationCopy provider];

                if (provider)
                {
                  v27 = +[CSDConversationProviderManager sharedInstance];
                  provider2 = [conversationCopy provider];
                  service = [v27 serviceForProvider:provider2];

LABEL_43:
                  activeIDSDestination = [participantCopy activeIDSDestination];
                  v57 = [service deviceForFromID:activeIDSDestination];

                  if (v57)
                  {
                    csd_localizedDeviceCategory = [v57 csd_localizedDeviceCategory];
                  }

                  else
                  {
                    csd_localizedDeviceCategory = 0;
                  }

                  v92[0] = _NSConcreteStackBlock;
                  v92[1] = 3221225472;
                  v92[2] = sub_10018EEF4;
                  v92[3] = &unk_10061A450;
                  v92[4] = self;
                  v59 = conversationCopy;
                  v93 = v59;
                  v94 = participantCopy;
                  v95 = csd_localizedDeviceCategory;
                  v60 = csd_localizedDeviceCategory;
                  v61 = objc_retainBlock(v92);
                  supportsLeaveContext = [v59 supportsLeaveContext];
                  if ((supportsLeaveContext & 1) != 0 || ([v59 activeRemoteParticipants], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "count"), v63, v64 >= 4))
                  {
                    v65 = sub_100004778(supportsLeaveContext);
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                    {
                      uUID2 = [v59 UUID];
                      *buf = 138412290;
                      v99 = uUID2;
                      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Leaving immediately due to handoff since the conversation with UUID: %@ supports leave context or was GFT before handoff", buf, 0xCu);
                    }

                    (v61[2])(v61);
                  }

                  else
                  {
                    v67 = sub_100004778(supportsLeaveContext);
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                    {
                      uUID3 = [v59 UUID];
                      *buf = 138412290;
                      v99 = uUID3;
                      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Delaying leaving due to handoff since the conversation with UUID: %@ does not support leave context and was 1:1 before handoff", buf, 0xCu);
                    }

                    serverBag = [(CSDConversationManager *)self serverBag];
                    v70 = dispatch_time(0, 1000000000 * [serverBag handoffUPlusOneLeaveDelay]);
                    queue2 = [(CSDConversationManager *)self queue];
                    dispatch_after(v70, queue2, v61);
                  }

                  conversationCopy = v75;
                  goto LABEL_17;
                }
              }

              else
              {
              }

              service = [(CSDConversationManager *)self service];
              goto LABEL_43;
            }

            goto LABEL_29;
          }
        }

LABEL_29:
        v42 = sub_100004778(v22);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          association3 = [participantCopy association];
          identifier2 = [association3 identifier];
          localParticipantIdentifier = [conversationCopy localParticipantIdentifier];
          state2 = [conversationCopy state];
          *buf = 138413058;
          v99 = participantCopy;
          v100 = 2048;
          v101 = identifier2;
          v102 = 2048;
          v103 = localParticipantIdentifier;
          v104 = 2048;
          v105 = state2;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Added participant %@ is a handoff continuation for identifier %llu, but my local identifier is %llu. Not leaving, state: %ld", buf, 0x2Au);
        }

        [conversationCopy updateReportInfoForHandoffParticipant:participantCopy];
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        service = [(CSDConversationManager *)self delegateToQueue];
        v47 = [service countByEnumeratingWithState:&v88 objects:v97 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v89;
          v73 = participantCopy;
          do
          {
            for (i = 0; i != v48; i = i + 1)
            {
              if (*v89 != v49)
              {
                objc_enumerationMutation(service);
              }

              v51 = *(*(&v88 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                tuConversation = [conversationCopy tuConversation];
                delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
                v54 = [delegateToQueue objectForKey:v51];

                v85[0] = _NSConcreteStackBlock;
                v85[1] = 3221225472;
                conversationCopy = v75;
                v85[2] = sub_10018F264;
                v85[3] = &unk_100619E58;
                v85[4] = v51;
                v86 = tuConversation;
                v87 = selfCopy;
                v55 = tuConversation;
                dispatch_async(v54, v85);
              }
            }

            v48 = [service countByEnumeratingWithState:&v88 objects:v97 count:16];
          }

          while (v48);
          self = selfCopy;
          participantCopy = v73;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  service = sub_100004778(association);
  if (os_log_type_enabled(service, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = participantCopy;
    _os_log_impl(&_mh_execute_header, service, OS_LOG_TYPE_DEFAULT, "There was no participant association for added participant: %@", buf, 0xCu);
  }

LABEL_17:

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v30 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v82;
    do
    {
      v33 = 0;
      v72 = v31;
      do
      {
        if (*v82 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v81 + 1) + 8 * v33);
        if (objc_opt_respondsToSelector())
        {
          tuConversation2 = [conversationCopy tuConversation];
          tuConversationParticipant = [participantCopy tuConversationParticipant];
          delegateToQueue2 = [(CSDConversationManager *)selfCopy delegateToQueue];
          v38 = [delegateToQueue2 objectForKey:v34];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018F3AC;
          block[3] = &unk_10061A450;
          block[4] = v34;
          v78 = tuConversation2;
          v79 = selfCopy;
          v80 = tuConversationParticipant;
          v39 = tuConversationParticipant;
          v40 = tuConversation2;
          conversationCopy = v75;
          v41 = v40;
          dispatch_async(v38, block);

          v31 = v72;
        }

        v33 = v33 + 1;
      }

      while (v31 != v33);
      v31 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
    }

    while (v31);
  }
}

- (void)conversation:(id)conversation didReceiveParticipantUpdateMessage:(id)message fromNormalizedHandle:(id)handle
{
  conversationCopy = conversation;
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = messageCopy;
    v21 = 2112;
    v22 = handleCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateMessage: %@, from handle: %@", &v19, 0x16u);
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags controlMessageOverQREnabled])
  {
    serverBag = [(CSDConversationManager *)self serverBag];
    isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

    if (isControlMessageOverQREnabled)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "controlMessageOverQREnabled is not enabled, return", &v19, 2u);
  }

LABEL_10:
  [(CSDConversationManager *)self handleConversation:conversationCopy participantUpdateMessage:messageCopy fromNormalizedHandle:handleCopy];
}

- (void)conversation:(id)conversation didChangeLocalParticipant:(id)participant broadcastActivitySession:(BOOL)session currentSequenceNumber:(unint64_t)number fromResponse:(BOOL)response
{
  responseCopy = response;
  sessionCopy = session;
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDMessagingConversationMessage *)conversationCopy state]== 3 || (v15 = [(CSDMessagingConversationMessage *)conversationCopy state], v15 == 2))
  {
    screenCaptureQueue = [(CSDConversationManager *)self screenCaptureQueue];
    uUID = [(CSDMessagingConversationMessage *)conversationCopy UUID];
    v18 = [screenCaptureQueue objectForKeyedSubscript:uUID];

    audioVideoMode = [(CSDMessagingConversationMessage *)participantCopy audioVideoMode];
    if (audioVideoMode && v18)
    {
      v20 = sub_100004778(audioVideoMode);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "executing queued up screenEnabled block since local participant mode changed", buf, 2u);
      }

      (*(v18 + 16))(v18);
      screenCaptureQueue2 = [(CSDConversationManager *)self screenCaptureQueue];
      uUID2 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
      [screenCaptureQueue2 setObject:0 forKeyedSubscript:uUID2];
    }

    v23 = sub_1000C01A0(participantCopy);
    if (!v23)
    {
LABEL_42:

      goto LABEL_43;
    }

    numberCopy = number;
    v88 = sessionCopy;
    mutableConversationsRequestingUpgradeWithPreferences = [(CSDConversationManager *)self mutableConversationsRequestingUpgradeWithPreferences];
    uUID3 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
    v27 = [mutableConversationsRequestingUpgradeWithPreferences objectForKey:uUID3];

    v91 = v27;
    if (v27)
    {
      mutableConversationsRequestingUpgradeWithPreferences2 = [(CSDConversationManager *)self mutableConversationsRequestingUpgradeWithPreferences];
      uUID4 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
      [mutableConversationsRequestingUpgradeWithPreferences2 removeObjectForKey:uUID4];
    }

    groupUUID = [(CSDMessagingConversationMessage *)conversationCopy groupUUID];
    uUID5 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
    v90 = sub_1000C026C(v23, groupUUID, uUID5, v27);

    v100[0] = &off_10063ED08;
    v99[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v99[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 identifier]);
    v33 = [NSString stringWithFormat:@"%@:%@", v32, &off_10063ED08];
    v100[1] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:2];

    if (responseCopy)
    {
      featureFlags = [(CSDConversationManager *)self featureFlags];
      if ([featureFlags controlMessageOverQREnabled])
      {
        serverBag = [(CSDConversationManager *)self serverBag];
        isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

        if (isControlMessageOverQREnabled)
        {
          v84 = v34;
          v86 = participantCopy;
          data2 = [v34 mutableCopy];
          groupUUID2 = [(CSDMessagingConversationMessage *)conversationCopy groupUUID];
          uUIDString = [groupUUID2 UUIDString];
          [data2 setObject:uUIDString forKeyedSubscript:IDSSendMessageOptionGoupUUIDKey];

          sequenceNumberToTime = [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
          v43 = numberCopy;
          v44 = [NSNumber numberWithUnsignedLongLong:numberCopy];
          v45 = [sequenceNumberToTime objectForKey:v44];

          if (v45)
          {
            sequenceNumberToTime2 = [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
            v48 = [NSNumber numberWithUnsignedLongLong:numberCopy];
            v49 = [sequenceNumberToTime2 objectForKeyedSubscript:v48];
            [data2 setObject:v49 forKeyedSubscript:IDSSendMessageOptionTimestampKey];

            v51 = sub_100004778(v50);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
              v53 = v52 = v51;
              v54 = [NSNumber numberWithUnsignedLongLong:v43];
              v55 = [v53 objectForKeyedSubscript:v54];
              *buf = 134218242;
              v102 = v43;
              v103 = 2112;
              v104 = v55;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Find currentSequenceNumber %llu, for time: %@", buf, 0x16u);

              v51 = v52;
            }

            sequenceNumberToTime3 = [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
            v57 = [NSNumber numberWithUnsignedLongLong:v43];
            [sequenceNumberToTime3 removeObjectForKey:v57];
          }

          else
          {
            sequenceNumberToTime3 = sub_100004778(v46);
            if (os_log_type_enabled(sequenceNumberToTime3, OS_LOG_TYPE_ERROR))
            {
              sub_100478128();
            }
          }

          participantCopy = v86;

          v81 = sub_100004778(v80);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v102 = data2;
            v103 = 2112;
            v104 = v86;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "updatedOptions: %@ for participant: %@", buf, 0x16u);
          }

          data = [v90 data];
          v83 = [data2 copy];
          [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v83];

          v59 = v90;
          v34 = v84;
LABEL_24:

          if (v88)
          {
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            activitySessions = [(CSDMessagingConversationMessage *)conversationCopy activitySessions];
            v61 = [activitySessions countByEnumeratingWithState:&v92 objects:v98 count:16];
            if (v61)
            {
              v62 = v61;
              v85 = v34;
              v87 = participantCopy;
              v89 = v18;
              v63 = *v93;
LABEL_27:
              v64 = 0;
              while (1)
              {
                if (*v93 != v63)
                {
                  objc_enumerationMutation(activitySessions);
                }

                v65 = *(*(&v92 + 1) + 8 * v64);
                activity = [v65 activity];
                isSystemActivity = [activity isSystemActivity];

                if (!isSystemActivity)
                {
                  break;
                }

                if (v62 == ++v64)
                {
                  v62 = [activitySessions countByEnumeratingWithState:&v92 objects:v98 count:16];
                  if (v62)
                  {
                    goto LABEL_27;
                  }

                  v68 = activitySessions;
                  participantCopy = v87;
                  v18 = v89;
                  v59 = v90;
                  goto LABEL_38;
                }
              }

              v68 = v65;

              participantCopy = v87;
              v18 = v89;
              v59 = v90;
              v34 = v85;
              if (!v68)
              {
                goto LABEL_41;
              }

              v69 = [CSDMessagingConversationMessage alloc];
              groupUUID3 = [(CSDMessagingConversationMessage *)conversationCopy groupUUID];
              v71 = [(CSDMessagingConversationMessage *)v69 initWithType:8 groupUUID:groupUUID3 link:0];

              v96[0] = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
              v72 = [NSSet setWithObject:IDSRegistrationPropertySupportsCo];
              v97[0] = v72;
              v96[1] = IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey;
              v73 = v71;
              v74 = [NSSet setWithObject:IDSRegistrationPropertySupportsAVLess];
              v97[1] = v74;
              v75 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];

              v77 = sub_100004778(v76);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                uUID6 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
                *buf = 138412546;
                v102 = uUID6;
                v103 = 2112;
                v104 = v73;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "For AVLess to AV upgrade of conversation UUID %@, sending an AddActivitySession message to devices lacking AVLess support: %@", buf, 0x16u);
              }

              [(CSDConversationManager *)self sendMessage:v73 forConversation:conversationCopy withActivitySession:v68 additionalOptions:v75];
              tuConversationActivitySession = [v68 tuConversationActivitySession];
              [(CSDConversationManager *)self broadcastImageForSession:tuConversationActivitySession onConversation:conversationCopy];

              participantCopy = v87;
LABEL_38:
              v34 = v85;
            }

            else
            {
              v68 = activitySessions;
            }
          }

LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
      }
    }

    v58 = sub_100004778(v35);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = participantCopy;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "didChangeLocalParticipant: %@", buf, 0xCu);
    }

    v59 = v90;
    data2 = [v90 data];
    [(CSDConversationManager *)self broadcastData:data2 onConversation:conversationCopy additionalOptions:v34];
    goto LABEL_24;
  }

  v18 = sub_100004778(v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v102 = participantCopy;
    v103 = 2112;
    v104 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not broadcasting localParticipant change for participant %@ since the conversation isn't joined yet %@", buf, 0x16u);
  }

LABEL_43:
}

- (void)conversation:(id)conversation removedActiveParticipant:(id)participant withLeaveReason:(unint64_t)reason
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = conversationCopy;
    v43 = 2112;
    v44 = participantCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ removedActiveParticipant: %@", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v22 = *v37;
    v18 = v26;
    v19 = v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        tuConversation = [conversationCopy tuConversation];
        tuConversationParticipant = [participantCopy tuConversationParticipant];
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v17 = [delegateToQueue objectForKey:v13];

        if (objc_opt_respondsToSelector())
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v32[0] = sub_100190368;
          v32[1] = &unk_10061A450;
          v32[2] = v13;
          v33 = tuConversation;
          selfCopy = self;
          v35 = tuConversationParticipant;
          dispatch_async(v17, block);
        }

        if (objc_opt_respondsToSelector())
        {
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v26[0] = sub_1001904B0;
          v26[1] = &unk_10061A678;
          v26[2] = v13;
          v27 = tuConversation;
          selfCopy2 = self;
          v29 = tuConversationParticipant;
          reasonCopy = reason;
          dispatch_async(v17, v25);
        }

        v12 = v12 + 1;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)conversation updatedActiveParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = conversationCopy;
    v32 = 2112;
    v33 = participantCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conversation: %@ participant: %@", buf, 0x16u);
  }

  v20 = participantCopy;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        tuConversation = [conversationCopy tuConversation];
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v18 = [delegateToQueue objectForKey:v15];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10019084C;
        block[3] = &unk_100619E58;
        block[4] = v15;
        v23 = tuConversation;
        selfCopy = self;
        v19 = tuConversation;
        dispatch_async(v18, block);

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

- (void)conversation:(id)conversation updatedActiveParticipantWithScreenSharing:(id)sharing
{
  conversationCopy = conversation;
  sharingCopy = sharing;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v18 = v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [sharingCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100190BC8;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = tuConversation;
          selfCopy = self;
          v26 = tuConversationParticipant;
          v16 = tuConversationParticipant;
          v17 = tuConversation;
          dispatch_async(v15, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)conversationDidStopScreenCapture:(id)capture
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  sckSystemPickerEnabled = [featureFlags sckSystemPickerEnabled];

  if (sckSystemPickerEnabled)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting to stop the screensharing activity session since screen capture ended", v10, 2u);
    }

    screenSharingActivityManager = [(CSDConversationManager *)self screenSharingActivityManager];
    [screenSharingActivityManager stopActivitySession];
  }
}

- (void)conversation:(id)conversation mediaPrioritiesChangedForParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v18 = v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [participantCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100191004;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = tuConversation;
          selfCopy = self;
          v26 = tuConversationParticipant;
          v16 = tuConversationParticipant;
          v17 = tuConversation;
          dispatch_async(v15, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)conversation:(id)conversation participant:(id)participant didReact:(id)react
{
  conversationCopy = conversation;
  participantCopy = participant;
  reactCopy = react;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v20 = v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [participantCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v26[0] = sub_1001913A8;
          v26[1] = &unk_10061A428;
          v26[2] = v13;
          v27 = tuConversation;
          selfCopy = self;
          v29 = tuConversationParticipant;
          v30 = reactCopy;
          v18 = tuConversationParticipant;
          v19 = tuConversation;
          dispatch_async(v17, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }
}

- (void)conversation:(id)conversation participantDidStopReacting:(id)reacting
{
  conversationCopy = conversation;
  reactingCopy = reacting;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v18 = v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [reactingCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100191728;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = tuConversation;
          selfCopy = self;
          v26 = tuConversationParticipant;
          v16 = tuConversationParticipant;
          v17 = tuConversation;
          dispatch_async(v15, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)conversation:(id)conversation requestBlobRecoveryForParticipantDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = TULoggableStringForHandle();
    v20 = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requesting blob recovery for %@", &v20, 0xCu);
  }

  v15 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v17 = [(CSDMessagingConversationMessage *)v15 initWithType:4 groupUUID:groupUUID link:0];

  [(CSDMessagingConversationMessage *)v17 setRequestBlobRecoveryOptions:1];
  data = [(CSDMessagingConversationMessage *)v17 data];
  v19 = [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toDestinationID:destinationCopy];

  completionCopy[2](completionCopy, v19);
}

- (void)conversation:(id)conversation sendDeclineMessageToParticipantDestination:(id)destination
{
  destinationCopy = destination;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = TULoggableStringForHandle();
    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending decline message for %@", &v16, 0xCu);
  }

  v12 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v14 = [(CSDMessagingConversationMessage *)v12 initWithType:9 groupUUID:groupUUID link:0];

  data = [(CSDMessagingConversationMessage *)v14 data];
  [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toDestinationID:destinationCopy];
}

- (void)conversation:(id)conversation failedWithContext:(id)context
{
  conversationCopy = conversation;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100191D88;
          block[3] = &unk_10061A450;
          block[4] = v11;
          v20 = tuConversation;
          selfCopy = self;
          v22 = contextCopy;
          v15 = tuConversation;
          dispatch_async(v14, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationNoticeManger = [(CSDConversationManager *)self conversationNoticeManger];
  v19 = conversationCopy;
  [conversationNoticeManger conversation:conversationCopy receivedActivitySessionEvent:eventCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [v19 tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192110;
          block[3] = &unk_10061A450;
          block[4] = v14;
          v22 = tuConversation;
          selfCopy = self;
          v24 = eventCopy;
          v18 = tuConversation;
          dispatch_async(v17, block);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)conversation activitySessionChanged:(id)changed
{
  conversationCopy = conversation;
  changedCopy = changed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v12 = 138412546;
    v13 = uUID;
    v14 = 2112;
    v15 = changedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conversation UUID: %@ activitySessionChanged: %@", &v12, 0x16u);
  }

  [(CSDConversationManager *)self conversationChanged:conversationCopy];
}

- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = sessionCopy;
  if ([sessionCopy state] == 4)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CSDSharePlayMediaDidHandoffNotification" object:conversationCopy];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001925C8;
          block[3] = &unk_10061A450;
          block[4] = v13;
          v22 = tuConversation;
          selfCopy = self;
          v24 = v18;
          v17 = tuConversation;
          dispatch_async(v16, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }
}

- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene association changed for activity session: %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192980;
          block[3] = &unk_10061A450;
          block[4] = v13;
          v22 = tuConversation;
          selfCopy = self;
          v24 = sessionCopy;
          v17 = tuConversation;
          dispatch_async(v16, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }
}

- (void)conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 134218498;
    stateCopy = state;
    v36 = 2112;
    v37 = sessionCopy;
    v38 = 2112;
    v39 = uUID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App launch state changed to: %lu for activity session: %@ on conversation with UUID: %@", buf, 0x20u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v18 = [delegateToQueue objectForKey:v15];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192D6C;
          block[3] = &unk_10061A678;
          block[4] = v15;
          v25 = tuConversation;
          selfCopy = self;
          stateCopy2 = state;
          v27 = sessionCopy;
          v19 = tuConversation;
          dispatch_async(v18, block);
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }
}

- (void)conversation:(id)conversation activityChangedOnSession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = conversationCopy;
    v34 = 2112;
    v35 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conversation: %@ activityChangedOnSession: %@", buf, 0x16u);
  }

  activity = [sessionCopy activity];
  originator = [activity originator];

  if (!originator)
  {
    v13 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v15 = [(CSDMessagingConversationMessage *)v13 initWithType:23 groupUUID:groupUUID link:0];

    v16 = objc_alloc_init(CSDMessagingConversationActivitySession);
    activity2 = [sessionCopy activity];
    v18 = [activity2 copy];

    uUID = [sessionCopy UUID];
    uUIDString = [uUID UUIDString];
    [(CSDMessagingConversationActivitySession *)v16 setIdentifierUUIDString:uUIDString];

    v21 = [CSDMessagingConversationActivity activityWithCSDConversationActivity:v18 fromConversation:conversationCopy forStorage:0];
    [(CSDMessagingConversationActivitySession *)v16 setActivity:v21];

    [(CSDMessagingConversationMessage *)v15 addActivitySessions:v16];
    v30[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v30[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v31[0] = &off_10063ED20;
    uUID2 = [sessionCopy UUID];
    uUIDString2 = [uUID2 UUIDString];
    v24 = [NSString stringWithFormat:@"%@:%@", uUIDString2, &off_10063ED20];
    v31[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];

    data = [(CSDMessagingConversationMessage *)v15 data];
    v27 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v25];

    v29 = sub_100004778(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v33) = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(success: %d)", buf, 8u);
    }

    [(CSDConversationManager *)self broadcastImageForSession:sessionCopy onConversation:conversationCopy];
    [(CSDConversationManager *)self conversationChanged:conversationCopy];
  }
}

- (void)notifyDelegateOfHighlightAddedForConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier byParticipant:(id)participant isFirstAdd:(BOOL)add
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  highlightIdentifierCopy = highlightIdentifier;
  participantCopy = participant;
  if (highlightIdentifierCopy && ([highlightIdentifierCopy isEqualToString:identifierCopy] & 1) == 0)
  {
    collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
    [collaborationStateManager collaborationRemoved:highlightIdentifierCopy];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v19 = [delegateToQueue objectForKey:v17];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10019346C;
          block[3] = &unk_10061BCB0;
          block[4] = v17;
          v26 = conversationCopy;
          selfCopy = self;
          v28 = participantCopy;
          v29 = identifierCopy;
          v30 = highlightIdentifierCopy;
          addCopy = add;
          dispatch_async(v19, block);
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }
}

- (void)notifyDelegateOfHighlightRemovedFromConversation:(id)conversation highlightIdentifier:(id)identifier byParticipant:(id)participant
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  participantCopy = participant;
  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  v19 = identifierCopy;
  [collaborationStateManager collaborationRemoved:identifierCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v11 = [delegateToQueue countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue2 objectForKey:v15];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001937F0;
          block[3] = &unk_10061A428;
          block[4] = v15;
          v22 = conversationCopy;
          selfCopy = self;
          v24 = participantCopy;
          v25 = v19;
          dispatch_async(v17, block);
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [delegateToQueue countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }
}

- (void)startTrackingCollaborationWithIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d completionHandler:(id)handler
{
  identifierCopy = identifier;
  lCopy = l;
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100193A88;
  v23[3] = &unk_10061D178;
  v23[4] = self;
  v24 = dCopy;
  v25 = identifierCopy;
  v26 = lCopy;
  v27 = dsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = dsCopy;
  v20 = lCopy;
  v21 = identifierCopy;
  v22 = dCopy;
  dispatch_async(queue, v23);
}

- (void)addHighlightIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d
{
  identifierCopy = identifier;
  lCopy = l;
  dsCopy = ds;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100193D10;
  block[3] = &unk_10061A428;
  v20 = identifierCopy;
  v21 = lCopy;
  selfCopy = self;
  v23 = dCopy;
  v24 = dsCopy;
  v15 = dsCopy;
  v16 = dCopy;
  v17 = lCopy;
  v18 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)removeHighlightIdentifier:(id)identifier forConversationUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100194044;
  block[3] = &unk_100619E58;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = dCopy;
  v9 = dCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)markCollaborationWithIdentifierOpened:(id)opened forConversationUUID:(id)d
{
  openedCopy = opened;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001942DC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = openedCopy;
  v9 = openedCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)collaborationStateChanged:(int64_t)changed forCollaborationIdentifier:(id)identifier onConversationUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  v10 = [mutableConversationsByUUID objectForKeyedSubscript:dCopy];

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Collaboration state changed to %lu", buf, 0xCu);
  }

  if (v10)
  {
    v21 = dCopy;
    v23 = v10;
    tuConversation = [v10 tuConversation];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
    v14 = [delegateToQueue countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        v17 = 0;
        do
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(delegateToQueue);
          }

          v18 = *(*(&v32 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
            v20 = [delegateToQueue2 objectForKey:v18];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001946A0;
            block[3] = &unk_10061D378;
            block[4] = v18;
            v27 = v23;
            selfCopy = self;
            v29 = tuConversation;
            changedCopy2 = changed;
            v30 = identifierCopy;
            dispatch_async(v20, block);
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [delegateToQueue countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    dCopy = v21;
    v10 = v23;
  }
}

- (void)sendHighlightMessageForConversation:(id)conversation highlightIdentifier:(id)identifier type:(int)type
{
  v5 = *&type;
  conversationCopy = conversation;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v27 = conversationCopy;
    *&v27[8] = 2112;
    *&v27[10] = identifierCopy;
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "conversation: %@ highlight identifier: %@ type: %d", buf, 0x1Cu);
  }

  v13 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v15 = [(CSDMessagingConversationMessage *)v13 initWithType:v5 groupUUID:groupUUID link:0];

  [(CSDMessagingConversationMessage *)v15 setHighlightIdentifier:identifierCopy];
  v24[0] = IDSSendMessageOptionPublicMessageIntentKey;
  v16 = [NSNumber numberWithInt:v5];
  v24[1] = IDSSendMessageOptionQueueOneIdentifierKey;
  v25[0] = v16;
  v17 = [NSNumber numberWithInt:v5];
  v18 = [NSString stringWithFormat:@"%@:%@", identifierCopy, v17];
  v25[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  data = [(CSDMessagingConversationMessage *)v15 data];
  v21 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v19];

  v23 = sub_100004778(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v27 = v21;
    *&v27[4] = 2112;
    *&v27[6] = identifierCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(success: %d for highlight identifier: %@)", buf, 0x12u);
  }
}

- (void)addCollaborationDictionary:(id)dictionary forConversationWithUUID:(id)d fromMe:(BOOL)me
{
  dictionaryCopy = dictionary;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100194B58;
  v13[3] = &unk_10061BE38;
  v13[4] = self;
  v14 = dictionaryCopy;
  v15 = dCopy;
  meCopy = me;
  v11 = dCopy;
  v12 = dictionaryCopy;
  dispatch_async(queue, v13);
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  initiatorCopy = initiator;
  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  [collaborationStateManager getNeedsDisclosureOfCollaborationInitiator:initiatorCopy forConversationUUID:dCopy completionHandler:handlerCopy];
}

- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d
{
  dCopy = d;
  initiatorCopy = initiator;
  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  [collaborationStateManager addDisclosedCollaborationInitiator:initiatorCopy toConversationUUID:dCopy];
}

- (void)conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v13 = [delegateToQueue objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001954D4;
          block[3] = &unk_10061BDD0;
          block[4] = v10;
          v19 = tuConversation;
          selfCopy = self;
          usedCopy = used;
          v14 = tuConversation;
          dispatch_async(v13, block);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)conversation:(id)conversation activitySessionRemoved:(id)removed userOriginated:(BOOL)originated
{
  originatedCopy = originated;
  conversationCopy = conversation;
  removedCopy = removed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (originatedCopy)
  {
    activity = [removedCopy activity];
    isStaticActivity = [activity isStaticActivity];

    if ((isStaticActivity & 1) == 0)
    {
      terminatingHandle = [removedCopy terminatingHandle];

      if (terminatingHandle)
      {
        terminatingHandle2 = [removedCopy terminatingHandle];
        localParticipant = [conversationCopy remoteParticipantForHandle:terminatingHandle2];
      }

      else
      {
        localParticipant = [conversationCopy localParticipant];
        v16 = [CSDMessagingConversationMessage alloc];
        groupUUID = [conversationCopy groupUUID];
        terminatingHandle2 = [(CSDMessagingConversationMessage *)v16 initWithType:21 groupUUID:groupUUID link:0];

        v18 = objc_alloc_init(CSDMessagingConversationActivitySession);
        uUID = [removedCopy UUID];
        uUIDString = [uUID UUIDString];
        [(CSDMessagingConversationActivitySession *)v18 setIdentifierUUIDString:uUIDString];

        [(CSDMessagingConversationMessage *)terminatingHandle2 addActivitySessions:v18];
        data = [(CSDMessagingConversationMessage *)terminatingHandle2 data];
        v30 = IDSSendMessageOptionPublicMessageIntentKey;
        v22 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)terminatingHandle2 type]];
        v31 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v24 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v23];

        v26 = sub_100004778(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v29[0] = 67109120;
          v29[1] = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Did send activity removal message successfully? %d", v29, 8u);
        }
      }

      if (localParticipant)
      {
        [(CSDConversationManager *)self postEndEventForSession:removedCopy originator:localParticipant conversation:conversationCopy];
      }

      else
      {
        v28 = sub_100004778(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100478408();
        }
      }
    }
  }
}

- (void)conversation:(id)conversation sendResourceAtURL:(id)l toParticipants:(id)participants metadata:(id)metadata activitySessionUUID:(id)d completion:(id)completion
{
  conversationCopy = conversation;
  lCopy = l;
  participantsCopy = participants;
  metadataCopy = metadata;
  dCopy = d;
  completionCopy = completion;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v22 = sub_100004778(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [lCopy URL];
    *buf = 138412290;
    v57 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending resource at url %@", buf, 0xCu);
  }

  resourceTransferCallbacks = [(CSDConversationManager *)self resourceTransferCallbacks];
  v25 = [lCopy URL];
  v26 = [resourceTransferCallbacks objectForKeyedSubscript:v25];

  if (v26)
  {
    v28 = sub_100004778(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100478478(lCopy);
    }

    v29 = [NSError errorWithDomain:@"CSDResourceTransferErrorDomain" code:1 userInfo:0];
    completionCopy[2](completionCopy, v29);
  }

  else
  {
    v48 = dCopy;
    v49 = metadataCopy;
    v50 = conversationCopy;
    v29 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [participantsCopy count]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = participantsCopy;
    v30 = participantsCopy;
    v31 = [v30 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v52;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(v30);
          }

          activeIDSDestination = [*(*(&v51 + 1) + 8 * i) activeIDSDestination];
          [v29 addObject:activeIDSDestination];
        }

        v32 = [v30 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v32);
    }

    if ([v29 count])
    {
      v36 = +[NSMutableDictionary dictionary];
      groupUUID = [v50 groupUUID];
      uUIDString = [groupUUID UUIDString];
      [v36 setObject:uUIDString forKey:@"resourceTransferConversationIDKey"];

      uUIDString2 = [v48 UUIDString];
      [v36 setObject:uUIDString2 forKey:@"resourceTransferActivitySessionIDKey"];

      if (v49)
      {
        [v36 setObject:v49 forKey:@"resourceTransferClientMetadataKey"];
      }

      if (completionCopy)
      {
        v40 = objc_retainBlock(completionCopy);
        resourceTransferCallbacks2 = [(CSDConversationManager *)self resourceTransferCallbacks];
        v42 = [lCopy URL];
        [resourceTransferCallbacks2 setObject:v40 forKeyedSubscript:v42];
      }

      fileTransferController = [(CSDConversationManager *)self fileTransferController];
      localMember = [v50 localMember];
      [fileTransferController transferFileAtSandboxExtendedURL:lCopy toDestinations:v29 withMetadata:v36 fromMember:localMember];

      conversationCopy = v50;
      participantsCopy = v47;
      metadataCopy = v49;
    }

    else
    {
      v45 = sub_100004778(0);
      metadataCopy = v49;
      conversationCopy = v50;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100478504();
      }

      v36 = [NSError errorWithDomain:@"CSDResourceTransferErrorDomain" code:2 userInfo:0];
      completionCopy[2](completionCopy, v36);
      participantsCopy = v46;
    }

    dCopy = v48;
  }
}

- (void)conversation:(id)conversation addedMembers:(id)members triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  conversationCopy = conversation;
  membersCopy = members;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *buf = 138412802;
    v33 = conversationCopy;
    v34 = 2112;
    if (locallyCopy)
    {
      v13 = @"YES";
    }

    v35 = membersCopy;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "conversation: %@ addedMembers: %@ triggeredLocally: %@", buf, 0x20u);
  }

  [(CSDConversationManager *)self broadcastLightweightEndorsementForAddedMembers:membersCopy onConversation:conversationCopy];
  if (locallyCopy)
  {
    stagedActivitySession = [conversationCopy stagedActivitySession];

    if (stagedActivitySession)
    {
      v16 = sub_100004778(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        stagedActivitySession2 = [conversationCopy stagedActivitySession];
        *buf = 138412290;
        v33 = stagedActivitySession2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found staged ActivitySession on conversation. Distributing image. %@", buf, 0xCu);
      }

      stagedActivitySession3 = [conversationCopy stagedActivitySession];
      [(CSDConversationManager *)self broadcastImageForSession:stagedActivitySession3 onConversation:conversationCopy];
    }

    v26 = membersCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    tuActivitySessions = [conversationCopy tuActivitySessions];
    v20 = [tuActivitySessions countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        v23 = 0;
        do
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(tuActivitySessions);
          }

          v24 = *(*(&v27 + 1) + 8 * v23);
          v25 = sub_100004778(v20);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found ActivitySession on conversation. Distributing image. %@", buf, 0xCu);
          }

          v20 = [(CSDConversationManager *)self broadcastImageForSession:v24 onConversation:conversationCopy];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v20 = [tuActivitySessions countByEnumeratingWithState:&v27 objects:v31 count:16];
        v21 = v20;
      }

      while (v20);
    }

    membersCopy = v26;
  }

  [(CSDConversationManager *)self conversationChanged:conversationCopy];
}

- (void)conversationDidTriggerJoin:(id)join
{
  joinCopy = join;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = joinCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversation: %@ triggered join.", &v16, 0xCu);
  }

  stagedActivitySession = [joinCopy stagedActivitySession];
  if (stagedActivitySession)
  {
    v9 = stagedActivitySession;
    stagedActivitySession2 = [joinCopy stagedActivitySession];
    isLocallyInitiated = [stagedActivitySession2 isLocallyInitiated];

    if (isLocallyInitiated)
    {
      v13 = sub_100004778(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        stagedActivitySession3 = [joinCopy stagedActivitySession];
        v16 = 138412290;
        v17 = stagedActivitySession3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found staged ActivitySession on conversation. Distributing image. %@", &v16, 0xCu);
      }

      stagedActivitySession4 = [joinCopy stagedActivitySession];
      [(CSDConversationManager *)self broadcastImageForSession:stagedActivitySession4 onConversation:joinCopy];
    }
  }
}

- (void)conversation:(id)conversation requestedEndpointWithIdentifier:(id)identifier activitySession:(id)session completion:(id)completion
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  sessionCopy = session;
  completionCopy = completion;
  selfCopy = self;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_100196560;
  v36[4] = sub_10019658C;
  v37 = objc_retainBlock(completionCopy);
  v11 = dispatch_group_create();
  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v14 = observerToQueue;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v14 objectForKey:{v18, conversationCopy}];
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v11);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100196594;
          block[3] = &unk_10061D3C8;
          block[4] = v18;
          block[5] = selfCopy;
          v28 = identifierCopy;
          v29 = sessionCopy;
          v31 = v36;
          v30 = v11;
          dispatch_async(v19, block);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  queue2 = [(CSDConversationManager *)selfCopy queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100196788;
  v26[3] = &unk_10061D3F0;
  v26[4] = v36;
  dispatch_group_notify(v11, queue2, v26);

  _Block_object_dispose(v36, 8);
}

- (void)conversation:(id)conversation screenShareAttributesSelected:(id)selected
{
  selectedCopy = selected;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  uUID = [conversationCopy UUID];

  [(CSDConversationManager *)self setScreenEnabled:1 screenShareAttributes:selectedCopy forConversationWithUUID:uUID];
}

- (void)conversation:(id)conversation screenShareAttributesUpdated:(id)updated
{
  updatedCopy = updated;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  uUID = [conversationCopy UUID];

  [(CSDConversationManager *)self setScreenShareAttributes:updatedCopy forConversationWithUUID:uUID];
}

- (void)conversation:(id)conversation removedScreenShareRequest:(id)request
{
  requestCopy = request;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManager *)self notifyDelegatesOf:conversationCopy removedScreenShareRequest:requestCopy];
}

- (void)conversation:(id)conversation screenShareAttributesDidChange:(id)change
{
  changeCopy = change;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  screenSharingActivityManager = [(CSDConversationManager *)self screenSharingActivityManager];
  [screenSharingActivityManager broadcastAttributes:changeCopy];
}

- (void)conversation:(id)conversation remoteMembersChanged:(id)changed
{
  conversationCopy = conversation;
  changedCopy = changed;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v13 = [delegateToQueue objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100196BE8;
          block[3] = &unk_10061A450;
          block[4] = v10;
          v19 = tuConversation;
          selfCopy = self;
          v21 = changedCopy;
          v14 = tuConversation;
          dispatch_async(v13, block);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (success)
  {
    v14 = sub_100004778(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138412546;
      v42 = identifierCopy;
      v43 = 2112;
      v44 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sent %@ with error: %@", &v41, 0x16u);
    }

    [(CSDConversationManager *)self _runCallbackIfNecessaryForMessage:identifierCopy];
  }

  else
  {
    mutablePseudonymsByRequestIdentifiers = [(CSDConversationManager *)self mutablePseudonymsByRequestIdentifiers];
    v16 = [mutablePseudonymsByRequestIdentifiers objectForKeyedSubscript:identifierCopy];

    if (v16 && [errorCopy code] == 3)
    {
      v17 = [(CSDConversationManager *)self pendingConversationWithPseudonym:v16];
      v18 = v17;
      if (v17)
      {
        v19 = sub_100004778(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 138412290;
          v42 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Let me in request was sent to invalid pseudonym %@, ending pending conversation", &v41, 0xCu);
        }

        [(CSDConversationManager *)self notifyDelegatesOfInvalidLinkForPendingConversation:v18];
      }
    }
  }

  outIdentifierToConversationInfo = [(CSDConversationManager *)self outIdentifierToConversationInfo];
  v21 = [outIdentifierToConversationInfo objectForKey:identifierCopy];

  if (v21)
  {
    v23 = sub_100004778(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      outIdentifierToConversationInfo2 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
      v25 = [outIdentifierToConversationInfo2 objectForKeyedSubscript:identifierCopy];
      v41 = 138412546;
      v42 = identifierCopy;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "outIdentifierToConversationInfo[%@] = %@", &v41, 0x16u);
    }

    if (success)
    {
      outIdentifierToConversationInfo3 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
      v28 = [outIdentifierToConversationInfo3 objectForKeyedSubscript:identifierCopy];

      v29 = [v28 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];
      bOOLValue = [v29 BOOLValue];

      v31 = [v28 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];
      v32 = [(CSDConversationManager *)self conversationWithGroupUUID:v31];

      tuConversation = [v32 tuConversation];

      reportingController = sub_100004778(v34);
      v36 = os_log_type_enabled(reportingController, OS_LOG_TYPE_DEFAULT);
      if (tuConversation)
      {
        if (v36)
        {
          v37 = @"NO";
          if (bOOLValue)
          {
            v37 = @"YES";
          }

          v41 = 138412290;
          v42 = v37;
          _os_log_impl(&_mh_execute_header, reportingController, OS_LOG_TYPE_DEFAULT, "Report sent let me in response (approved: %@)", &v41, 0xCu);
        }

        reportingController = [(CSDConversationManager *)self reportingController];
        tuConversation2 = [v32 tuConversation];
        [reportingController sentLetMeInRequestForConversation:tuConversation2 isApproved:bOOLValue];
      }

      else if (v36)
      {
        v39 = @"NO";
        if (bOOLValue)
        {
          v39 = @"YES";
        }

        v41 = 138412546;
        v42 = v39;
        v43 = 2112;
        v44 = v32;
        _os_log_impl(&_mh_execute_header, reportingController, OS_LOG_TYPE_DEFAULT, "Not report sent let me in response (approved: %@) because TUConversation is null for %@", &v41, 0x16u);
      }
    }

    else
    {
      v28 = sub_100004778(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100478540();
      }
    }

    outIdentifierToConversationInfo4 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
    [outIdentifierToConversationInfo4 removeObjectForKey:identifierCopy];
  }
}

- (void)_runCallbackIfNecessaryForMessage:(id)message
{
  messageCopy = message;
  mutableSendDataCallbacksByRequestIdentifiers = [(CSDConversationManager *)self mutableSendDataCallbacksByRequestIdentifiers];
  v6 = [mutableSendDataCallbacksByRequestIdentifiers objectForKey:messageCopy];

  if (v6)
  {
    mutableSendDataCallbacksByRequestIdentifiers2 = [(CSDConversationManager *)self mutableSendDataCallbacksByRequestIdentifiers];
    [mutableSendDataCallbacksByRequestIdentifiers2 removeObjectForKey:messageCopy];

    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = messageCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running callback for message %@, which has been received by the IDS daemon", &v10, 0xCu);
    }

    v6[2](v6);
  }
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  if ([dCopy length])
  {
    v16 = IDSCopyAddressDestinationForDestination();
    v17 = IDSCopyRawAddressForDestination();

    v18 = [TUHandle normalizedHandleWithDestinationID:v17];
    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [serviceCopy serviceIdentifier];
      v40 = v17;
      selfCopy = self;
      v21 = v18;
      v22 = serviceCopy;
      v24 = v23 = accountCopy;
      v25 = IDSLoggableDescriptionForHandleOnService();
      *buf = 134219010;
      typeCopy3 = type;
      v45 = 2112;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v25;
      v51 = 2112;
      v52 = contextCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Group Session update %ld received for service %@ account %@ from (fromID=%@) with context: %@", buf, 0x34u);

      accountCopy = v23;
      serviceCopy = v22;
      v18 = v21;
      self = selfCopy;
      v17 = v40;
    }

    v26 = [(CSDConversationManager *)self shouldCreatePendingChatForMessageType:type fromHandle:v18];
    v27 = v26;
    v28 = sub_100004778(v26);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        *buf = 134217984;
        typeCopy3 = type;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Recieved pending message of type %ld", buf, 0xCu);
      }

      originalGUID = [contextCopy originalGUID];

      incomingPendingMessageGUIDs = sub_100004778(v31);
      v33 = os_log_type_enabled(incomingPendingMessageGUIDs, OS_LOG_TYPE_DEFAULT);
      if (originalGUID)
      {
        if (v33)
        {
          originalGUID2 = [contextCopy originalGUID];
          *buf = 138412290;
          typeCopy3 = originalGUID2;
          _os_log_impl(&_mh_execute_header, incomingPendingMessageGUIDs, OS_LOG_TYPE_DEFAULT, "Added %@ to the incomingPendingMessageGUIDs", buf, 0xCu);
        }

        incomingPendingMessageGUIDs = [(CSDConversationManager *)self incomingPendingMessageGUIDs];
        originalGUID3 = [contextCopy originalGUID];
        [incomingPendingMessageGUIDs addObject:originalGUID3];
      }

      else if (v33)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, incomingPendingMessageGUIDs, OS_LOG_TYPE_DEFAULT, "[WARN] No originalGUID in the context", buf, 2u);
      }

      v36 = [CSDGroupIDSPendingChat alloc];
      v37 = +[NSUUID UUID];
      v28 = [(CSDGroupIDSPendingChat *)v36 initWithUUID:v37 handle:v18];

      v38 = +[NSNotificationCenter defaultCenter];
      v41 = @"CSDIDSPendingChatKey";
      v42 = v28;
      v39 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      [v38 postNotificationName:@"CSDGroupIDSPendingMessageDidReceiveInviteNotification" object:0 userInfo:v39];
    }

    else if (v29)
    {
      *buf = 134217984;
      typeCopy3 = type;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Not handling pending message of type: %ld", buf, 0xCu);
    }
  }

  else
  {
    v17 = sub_100004778(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty from ID. Dropping message.", buf, 2u);
    }
  }
}

- (BOOL)shouldCreatePendingChatForMessageType:(int64_t)type fromHandle:(id)handle
{
  if (type == 8)
  {
    return ![(CSDConversationManager *)self isValidLocalHandle:handle, v4, v5];
  }

  else
  {
    return 0;
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  metadataCopy = metadata;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  messageProxy = [(CSDConversationManager *)self messageProxy];
  v22 = [messageProxy shouldIgnoreIDSResource:lCopy metadata:metadataCopy fromID:dCopy context:contextCopy];

  v24 = sub_100004778(v23);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v25)
    {
      LOWORD(v35) = 0;
      v26 = "Ignoring IDS resource; already received via conduit IDS proxy.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, &v35, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v25)
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    serviceIdentifier = [serviceCopy serviceIdentifier];
    v29 = IDSLoggableDescriptionForHandleOnService();
    v35 = 138412546;
    v36 = outgoingResponseIdentifier;
    v37 = 2112;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received resource URL with identifier %@ from %@", &v35, 0x16u);
  }

  if ([dCopy length])
  {
    v24 = [NSData dataWithContentsOfURL:lCopy];
    if (![v24 length])
    {
      v31 = sub_100004778(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingResourceAtURL:fromID:context: Empty data. Dropping message.", &v35, 2u);
      }

      goto LABEL_21;
    }

    v30 = [[CSDMessagingConversationMessage alloc] initWithData:v24];
    v31 = v30;
    if (v30)
    {
      type = [(CSDMessagingConversationMessage *)v30 type];
      if (type == 27)
      {
        [(CSDConversationManager *)self _service:serviceCopy account:accountCopy incomingData:v24 fromID:dCopy context:contextCopy attemptCount:0];
LABEL_21:

        goto LABEL_22;
      }

      v33 = sub_100004778(type);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [NSNumber numberWithInt:[v31 type]];
        v35 = 138412290;
        v36 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingResourceAtURL:fromID:context: Got unsupported messaged type %@. Dropping message.", &v35, 0xCu);
      }
    }

    else
    {
      v33 = sub_100004778(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingResourceAtURL:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.", &v35, 2u);
      }
    }

    goto LABEL_21;
  }

  v24 = sub_100004778(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v35) = 0;
    v26 = "[WARN] service:account:incomingResourceAtURL:fromID:context: Empty from ID. Dropping message.";
    goto LABEL_13;
  }

LABEL_22:
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  messageProxy = [(CSDConversationManager *)self messageProxy];
  v18 = [messageProxy shouldIgnoreIDSMessage:dataCopy fromID:dCopy context:contextCopy];

  v20 = sub_10022ACCC(v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v21)
    {
      storageGuid = [contextCopy storageGuid];
      v26 = 141558274;
      v27 = 1752392040;
      v28 = 2112;
      v29 = storageGuid;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "service:account:incomingData:fromID:context: already proxied IDS message with ID %{mask.hash}@, ignoring.", &v26, 0x16u);
    }
  }

  else
  {
    if (v21)
    {
      serviceIdentifier = [serviceCopy serviceIdentifier];
      v24 = IDSLoggableDescriptionForHandleOnService();
      storageGuid2 = [contextCopy storageGuid];
      v26 = 141558786;
      v27 = 1752392040;
      v28 = 2112;
      v29 = v24;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 2112;
      v33 = storageGuid2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "service:account:incomingData:fromID:context: receiving IDS message from %{mask.hash}@ with ID %{mask.hash}@", &v26, 0x2Au);
    }

    [(CSDConversationManager *)self _service:serviceCopy account:accountCopy incomingData:dataCopy fromID:dCopy context:contextCopy attemptCount:0];
  }
}

- (void)processProxiedMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  messageCopy = message;
  v11 = sub_10022ACCC(messageCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10047857C();
  }

  [(CSDConversationManager *)self _service:0 account:0 incomingData:messageCopy fromID:dCopy context:contextCopy attemptCount:0];
}

- (void)processProxiedResource:(id)resource metadata:(id)metadata fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  resourceCopy = resource;
  v12 = sub_10022ACCC(resourceCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10047861C();
  }

  [(CSDConversationManager *)self service:0 account:0 incomingResourceAtURL:resourceCopy fromID:dCopy context:contextCopy];
}

- (void)processProxiedGroupUpdate:(id)update
{
  updateCopy = update;
  v5 = sub_10022ACCC(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004786BC();
  }

  [(CSDConversationManager *)self processGroupSessionParticipantUpdate:updateCopy context:0];
}

- (void)_service:(id)_service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context attemptCount:(unint64_t)count
{
  _serviceCopy = _service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v20 = sub_100004778(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    serviceIdentifier = [_serviceCopy serviceIdentifier];
    IDSLoggableDescriptionForHandleOnService();
    v119 = dCopy;
    selfCopy = self;
    v24 = contextCopy;
    v25 = dataCopy;
    v27 = v26 = accountCopy;
    [NSNumber numberWithUnsignedInteger:count];
    v29 = v28 = _serviceCopy;
    *buf = 138412802;
    v134 = outgoingResponseIdentifier;
    v135 = 2112;
    *v136 = v27;
    *&v136[8] = 2112;
    v137 = v29;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received message with identifier %@ from %@ Attempt count %@", buf, 0x20u);

    _serviceCopy = v28;
    accountCopy = v26;
    dataCopy = v25;
    contextCopy = v24;
    self = selfCopy;
    dCopy = v119;
  }

  if ([dCopy length])
  {
    if ([dataCopy length])
    {
      v30 = [[CSDMessagingConversationMessage alloc] initWithData:dataCopy];
      v31 = sub_100004778(v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (!v30)
      {
        if (v32)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.", buf, 2u);
        }

        goto LABEL_125;
      }

      v120 = _serviceCopy;
      if (v32)
      {
        type = [(CSDMessagingConversationMessage *)v30 type];
        if (type < 0x26 && ((0x3FFFE9FF7FuLL >> type) & 1) != 0)
        {
          v34 = *(&off_10061D458 + type);
        }

        else
        {
          v34 = [NSString stringWithFormat:@"(unknown: %i)", type];
        }

        *buf = 138412290;
        v134 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] Received CSDMessagingConversationMessage with Type of %@", buf, 0xCu);
      }

      v36 = IDSCopyAddressDestinationForDestination();
      v31 = IDSCopyRawAddressForDestination();

      if (![v31 length])
      {
        v37 = sub_100004778(0);
        _serviceCopy = v120;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty destinationID after IDSCopyRawAddressForDestination. Dropping message.", buf, 2u);
        }

        goto LABEL_124;
      }

      v37 = [TUHandle normalizedHandleWithDestinationID:v31];
      _serviceCopy = v120;
      if (!v37)
      {
        v53 = sub_100004778(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v54 = "[WARN] service:account:incomingData:fromID:context: Could not create TUHandle from destinationID. Dropping message.";
LABEL_61:
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 2u);
        }

LABEL_62:

        goto LABEL_124;
      }

      if (![(CSDConversationManager *)self _linksEnabled])
      {
        goto LABEL_49;
      }

      type2 = [(CSDMessagingConversationMessage *)v30 type];
      if (type2 <= 13)
      {
        if (type2 == 10)
        {
          goto LABEL_47;
        }

        if (type2 != 11)
        {
          if (type2 != 13)
          {
            goto LABEL_49;
          }

          [(CSDConversationManager *)self handleEncryptedMessageWithin:v30 fromHandle:v37 context:contextCopy];
LABEL_124:

LABEL_125:
          goto LABEL_126;
        }
      }

      else
      {
        if (type2 <= 23)
        {
          if ((type2 - 14) < 2)
          {
            log = accountCopy;
            if (![contextCopy fromServerStorage])
            {
              goto LABEL_31;
            }

            v39 = [NSDate dateWithTimeIntervalSinceNow:-1800.0];
            serverReceivedTime = [contextCopy serverReceivedTime];
            v41 = contextCopy;
            v42 = [v39 compare:serverReceivedTime];

            v43 = v42 == 1;
            contextCopy = v41;
            if (!v43 || [(CSDMessagingConversationMessage *)v30 type]!= 14)
            {
              goto LABEL_31;
            }

            conversationGroupUUID = [(CSDMessagingConversationMessage *)v30 conversationGroupUUID];
            v45 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID];

            if (v45)
            {

              contextCopy = v41;
LABEL_31:
              v41 = contextCopy;
              publicIntentAction = [contextCopy publicIntentAction];
              integerValue = [publicIntentAction integerValue];

              v50 = sub_100004778(v49);
              v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
              if (integerValue == 20001)
              {
                accountCopy = log;
                if (v51)
                {
                  publicIntentAction2 = [v41 publicIntentAction];
                  *buf = 138412546;
                  v134 = publicIntentAction2;
                  v135 = 2048;
                  *v136 = 20001;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[WARN] Received LetMeInDelegation with Intent of {publicIntentAction: %@, messageIntent: %llu}", buf, 0x16u);
                }

                [(CSDConversationManager *)self handleReceivedLMIDelegateMessage:v30 fromHandle:v37];
              }

              else
              {
                accountCopy = log;
                if (v51)
                {
                  publicIntentAction3 = [v41 publicIntentAction];
                  *buf = 138412290;
                  v134 = publicIntentAction3;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping let me in delegation request or response because it has the wrong intent {publicIntentAction: %@}", buf, 0xCu);
                }
              }

              _serviceCopy = v120;
              goto LABEL_76;
            }

            v99 = sub_100004778(v46);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping let me in delegation request because it is from server storage, older than 30m, and not for an ongoing conversation.", buf, 2u);
            }

LABEL_54:
            accountCopy = log;
            _serviceCopy = v120;
LABEL_76:
            contextCopy = v41;
            goto LABEL_124;
          }

          if (type2 == 16)
          {
LABEL_47:
            v53 = sub_100004778(type2);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v54 = "[WARN] Dropping let me in request or response because it was not encrypted";
              goto LABEL_61;
            }

            goto LABEL_62;
          }

LABEL_49:
          log = accountCopy;
          featureFlags = [(CSDConversationManager *)self featureFlags];
          sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

          if (sharePlayInCallsEnabled && [(CSDMessagingConversationMessage *)v30 type]== 37)
          {
            v41 = contextCopy;
            sharePlayAvailable = [(CSDMessagingConversationMessage *)v30 sharePlayAvailable];
            if (sharePlayAvailable)
            {
              serverReceivedTime2 = [v41 serverReceivedTime];
              [serverReceivedTime2 timeIntervalSince1970];
              v60 = (v59 * 1000.0);

              sharePlayAvailabilityManager = [(CSDConversationManager *)self sharePlayAvailabilityManager];
              [sharePlayAvailabilityManager handleWithMessage:sharePlayAvailable fromHandle:v37 sentAtEpochMillis:v60 completionHandler:&stru_10061D410];
            }

            goto LABEL_54;
          }

          hasConversationGroupUUIDString = [(CSDMessagingConversationMessage *)v30 hasConversationGroupUUIDString];
          if ((hasConversationGroupUUIDString & 1) == 0)
          {
            v53 = sub_100004778(hasConversationGroupUUIDString);
            accountCopy = log;
            _serviceCopy = v120;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v54 = "[WARN] service:account:incomingData:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.";
              goto LABEL_61;
            }

            goto LABEL_62;
          }

          conversationGroupUUID2 = [(CSDMessagingConversationMessage *)v30 conversationGroupUUID];
          accountCopy = log;
          _serviceCopy = v120;
          if (!conversationGroupUUID2)
          {
            v66 = sub_100004778(0);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Could not create group UUID from string. Dropping message.", buf, 2u);
            }

            goto LABEL_123;
          }

          v115 = conversationGroupUUID2;
          v64 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID2];
          v65 = [(CSDConversationManager *)self shouldIgnoreMessageForConversation:v64];
          if (v65)
          {
            v66 = v64;
            conversationGroupUUID2 = v115;
LABEL_123:

            goto LABEL_124;
          }

          v114 = v64;
          if (!v64)
          {
            v73 = sub_100004778(v65);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [NSNumber numberWithUnsignedInteger:count];
              *buf = 138412546;
              v134 = v115;
              v135 = 2112;
              *v136 = v74;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[WARN] No conversation found for groupUUID %@, attempt: %@", buf, 0x16u);

              _serviceCopy = v120;
            }

            pendingConversationMessageHandler = [(CSDConversationManager *)self pendingConversationMessageHandler];
            originalGUID = [contextCopy originalGUID];
            v128 = _serviceCopy;
            v129 = log;
            v130 = dataCopy;
            v131 = dCopy;
            v132 = contextCopy;
            [pendingConversationMessageHandler enqueueMessageRetryAttemptForMessage:v30 messageID:originalGUID attemptCount:? processingBlock:?];

            conversationGroupUUID2 = v115;
            v75 = v128;
            goto LABEL_121;
          }

          isFromStorage = [v64 isFromStorage];
          if (isFromStorage && (isFromStorage = [contextCopy fromServerStorage], (isFromStorage & 1) == 0))
          {
            v76 = sub_100004778(isFromStorage);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              uUID = [v114 UUID];
              *buf = 138412290;
              v134 = uUID;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Updating fromStorage on conversation with UUID: %@ since there are still active remote participants.", buf, 0xCu);
            }

            [v114 setFromStorage:0];
          }

          else
          {
            v68 = sub_100004778(isFromStorage);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              uUID2 = [v114 UUID];
              isFromStorage2 = [v114 isFromStorage];
              fromServerStorage = [contextCopy fromServerStorage];
              *buf = 138412802;
              v134 = uUID2;
              v135 = 1024;
              *v136 = isFromStorage2;
              accountCopy = log;
              *&v136[4] = 1024;
              *&v136[6] = fromServerStorage;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Not updating fromStorage on conversation with UUID: %@ since conversation.isFromStorage: %d, and context.fromServerStorage: %d", buf, 0x18u);
            }
          }

          conversationGroupUUID2 = v115;
          featureFlags2 = [(CSDConversationManager *)self featureFlags];
          if ([featureFlags2 conversationHandoffEnabled])
          {
            type3 = [(CSDMessagingConversationMessage *)v30 type];
            v80 = featureFlags2;
            v81 = type3;

            if (v81 == 32)
            {
              [(CSDConversationManager *)self handleReceivedUpdateJoinedMetadataMessage:v30 fromHandle:v37];
              _serviceCopy = v120;
LABEL_122:
              v66 = v114;
              goto LABEL_123;
            }
          }

          else
          {
          }

          v83 = sub_100004778(v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v134 = v37;
            v135 = 2112;
            *v136 = v114;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Looking for handle: %@ in existingConversation: %@", buf, 0x16u);
          }

          remoteMembers = [v114 remoteMembers];
          v113 = [remoteMembers mutableCopy];

          localMember = [v114 localMember];
          [v113 addObject:localMember];

          lightweightMembers = [v114 lightweightMembers];
          v87 = [lightweightMembers copy];

          v88 = [(CSDConversationManager *)self memberExistsForParticipantDestination:dCopy members:v113];
          v110 = v87;
          v89 = [(CSDConversationManager *)self memberExistsForParticipantDestination:dCopy members:v87];
          v108 = v89;
          v109 = v88;
          if (v88 && v89)
          {
            sub_100004778(v89);
            _serviceCopy = v120;
            v111 = conversationGroupUUID2 = v115;
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              sub_1004787C8();
            }
          }

          else
          {
            if (v89)
            {
              v90 = v89;
            }

            else
            {
              v90 = v88;
            }

            v111 = v90;
            v91 = [(CSDConversationManager *)self verifyLightweightMessageTypeFromHandle:v37 message:v30 existingConversation:v114];
            _serviceCopy = v120;
            conversationGroupUUID2 = v115;
            if (v91)
            {
              if (!v111)
              {
                loga = sub_100004778(v91);
                if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v134 = v37;
                  _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find matching handle: %@  in existingConversation.", buf, 0xCu);
                }

                logb = [(CSDConversationManager *)self pendingConversationMessageHandler];
                originalGUID2 = [contextCopy originalGUID];
                v123 = v120;
                v124 = accountCopy;
                v125 = dataCopy;
                v126 = dCopy;
                v127 = contextCopy;
                [NSObject enqueueMessageRetryAttemptForMessage:"enqueueMessageRetryAttemptForMessage:messageID:attemptCount:processingBlock:" messageID:v30 attemptCount:originalGUID2 processingBlock:?];

                goto LABEL_120;
              }

              if (count)
              {
                v92 = +[CSDReportingController sharedInstance];
                [v92 messageRetrySucceededForConversationGroupUUID:v115];

                if ([(CSDMessagingConversationMessage *)v30 type]== 4)
                {
                  v93 = +[CSDReportingController sharedInstance];
                  [v93 avcBlobRequestMessageRetrySucceededForConversationGroupUUID:v115];
                }
              }

              v94 = [(CSDConversationManager *)self shouldAcceptMessageFromHandle:v37 messageContext:contextCopy message:v30 existingConversation:v114];
              _serviceCopy = v120;
              if (v94)
              {
                accountCopy = log;
                if (-[NSObject isFromStorage](v114, "isFromStorage") && [contextCopy fromServerStorage] && (v95 = -[CSDMessagingConversationMessage type](v30, "type"), v95 == 1))
                {
                  v96 = sub_100004778(v95);
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                  {
                    uUID3 = [v114 UUID];
                    *buf = 138412802;
                    v134 = v30;
                    v135 = 2112;
                    *v136 = contextCopy;
                    *&v136[8] = 2112;
                    v137 = uUID3;
                    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[WARN] Received Invitation conversation message from server storage for conversation where that was also retrieved from server storage. Not notifying delegates of this Invitation message. {message: %@, context: %@, conversationUUID: %@}", buf, 0x20u);
                  }

                  accountCopy = log;
                  _serviceCopy = v120;
LABEL_108:
                  conversationGroupUUID2 = v115;
                }

                else
                {
                  v100 = contextCopy;
                  v101 = [(CSDConversationManager *)self _shouldRingForIncomingCallWithHandle:v37 conversation:v114 isFromPendingMessage:0 isOldMessage:0 message:v30];
                  v102 = sub_100004778(v101);
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = @"NO";
                    if (v101)
                    {
                      v103 = @"YES";
                    }

                    *buf = 138412546;
                    v134 = v103;
                    v135 = 2112;
                    *v136 = v37;
                    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "shouldRing = %@, handle: %@", buf, 0x16u);
                  }

                  handle = [v111 handle];
                  v105 = v101;
                  v106 = handle;
                  [(CSDConversationManager *)self notifyDelegatesOfMessage:v30 fromHandle:handle forConversation:v114 withUpdate:0 shouldRing:v105];

                  _serviceCopy = v120;
                  contextCopy = v100;
                  conversationGroupUUID2 = v115;
                  switch([(CSDMessagingConversationMessage *)v30 type])
                  {
                    case 4:
                      [(CSDConversationManager *)self handleConversation:v114 receivedBlobRecoveryRequest:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 5:
                      [(CSDConversationManager *)self handleConversation:v114 receivedBlobRecoveryResponse:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 6:
                      [(CSDConversationManager *)self notifyDelegatesOfMessage:v30 fromHandle:v37 forConversation:v114 withUpdate:0 shouldRing:0];
                      goto LABEL_120;
                    case 7:
                    case 9:
                    case 0xA:
                    case 0xB:
                    case 0xC:
                    case 0xD:
                    case 0xE:
                    case 0xF:
                    case 0x10:
                    case 0x11:
                    case 0x12:
                    case 0x13:
                    case 0x14:
                    case 0x16:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                    case 0x20:
                      goto LABEL_120;
                    case 8:
                      [(CSDConversationManager *)self handleConversation:v114 receivedActivitySession:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x15:
                      [(CSDConversationManager *)self handleConversation:v114 removeActivitySession:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x17:
                      [(CSDConversationManager *)self handleConversation:v114 updateActivity:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x1B:
                      [(CSDConversationManager *)self handleConversation:v114 updateActivityImage:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x1C:
                      [(CSDConversationManager *)self handleConversation:v114 updateGuestMode:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x1D:
                      [(CSDConversationManager *)self handleConversation:v114 receivedEndorsementForMember:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x1E:
                      [(CSDConversationManager *)self handleConversation:v114 addHighlight:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x1F:
                      [(CSDConversationManager *)self handleConversation:v114 removeHighlight:v30 fromHandle:v37];
                      goto LABEL_120;
                    case 0x21:
                      [(CSDConversationManager *)self handleConversation:v114 participantUpdateMessage:v30 fromNormalizedHandle:v37];
                      goto LABEL_120;
                    case 0x22:
                      [(CSDConversationManager *)self handleConversation:v114 registerMessagesGroupUUIDMessage:v30 fromNormalizedHandle:v37];
                      goto LABEL_120;
                    case 0x23:
                      [(CSDConversationManager *)self handleConversation:v114 screenShareRequest:v30 fromHandle:v37];
                      goto LABEL_142;
                    case 0x24:
LABEL_142:
                      [(CSDConversationManager *)self handleConversation:v114 screenShareResponse:v30 fromHandle:v37];
                      break;
                    default:
                      _serviceCopy = v120;
                      contextCopy = v115;
                      goto LABEL_108;
                  }
                }

                goto LABEL_120;
              }

              v98 = sub_100004778(v94);
              accountCopy = log;
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                sub_10047878C();
              }
            }

            else
            {
              v98 = sub_100004778(v91);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                sub_1004786F8();
              }
            }
          }

LABEL_120:

          v75 = v113;
LABEL_121:

          goto LABEL_122;
        }

        if (type2 == 24)
        {
          [(CSDConversationManager *)self handleReceivedLinkInvalidatedMessage:v30 fromHandle:v37];
          goto LABEL_124;
        }

        if (type2 != 26)
        {
          goto LABEL_49;
        }
      }

      [(CSDConversationManager *)self handleReceivedLinkCreatedOrChangedMessage:v30 fromHandle:v37];
      goto LABEL_124;
    }

    v30 = sub_100004778(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "[WARN] service:account:incomingData:fromID:context: Empty data. Dropping message.";
      goto LABEL_14;
    }
  }

  else
  {
    v30 = sub_100004778(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "[WARN] service:account:incomingData:fromID:context: Empty from ID. Dropping message.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
    }
  }

LABEL_126:
}

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context
{
  contextCopy = context;
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_10022ACCC(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100478804();
  }

  messageProxy = [(CSDConversationManager *)self messageProxy];
  [messageProxy proxyGroupUpdate:updateCopy forConversationManager:self];

  [(CSDConversationManager *)self sanitizeAndProcessParticipantUpdate:updateCopy context:contextCopy];
}

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update
{
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_10022ACCC(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100478804();
  }

  messageProxy = [(CSDConversationManager *)self messageProxy];
  [messageProxy proxyGroupUpdate:updateCopy forConversationManager:self];

  [(CSDConversationManager *)self sanitizeAndProcessParticipantUpdate:updateCopy context:0];
}

- (void)sanitizeAndProcessParticipantUpdate:(id)update context:(id)context
{
  contextCopy = context;
  updateCopy = update;
  participantUpdateSanitizer = [(CSDConversationManager *)self participantUpdateSanitizer];

  if (participantUpdateSanitizer)
  {
    participantUpdateSanitizer2 = [(CSDConversationManager *)self participantUpdateSanitizer];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019938C;
    v12[3] = &unk_10061D438;
    v12[4] = self;
    v13 = contextCopy;
    [participantUpdateSanitizer2 sanitize:updateCopy completion:v12];
  }

  else
  {
    v11 = sub_100004778(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100478840();
    }

    [(CSDConversationManager *)self processGroupSessionParticipantUpdate:updateCopy context:contextCopy];
  }
}

- (BOOL)_isConversationDisallowedByGreenTeaForConversation:(id)conversation withUpdateContext:(id)context conversationProvider:(id)provider
{
  conversationCopy = conversation;
  contextCopy = context;
  providerCopy = provider;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![conversationCopy avMode])
  {
    presentationMode = [conversationCopy presentationMode];

    if (presentationMode == 2)
    {
      identityProvidingTUConversationMembers = [contextCopy identityProvidingTUConversationMembers];
      v20 = [identityProvidingTUConversationMembers count];
      message = [contextCopy message];
      v15 = [message addedMembersCount] + v20;

      goto LABEL_11;
    }
  }

  else
  {
  }

  tuConversationMembers = [contextCopy tuConversationMembers];
  v13 = [tuConversationMembers count];
  message2 = [contextCopy message];
  v15 = [message2 addedMembersCount] + v13;

  if (([contextCopy hasVideo] & 1) == 0)
  {
LABEL_11:
    isDefaultProvider = v15 > 2;
    goto LABEL_12;
  }

  video = [contextCopy video];
  isDefaultProvider = v15 > 2;
  if (v15 <= 2 && (video & 1) == 0)
  {
    if (providerCopy)
    {
      isDefaultProvider = [providerCopy isDefaultProvider];
    }

    else
    {
      isDefaultProvider = 1;
    }
  }

LABEL_12:

  return isDefaultProvider;
}

- (void)processGroupSessionParticipantUpdate:(id)update context:(id)context
{
  updateCopy = update;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!updateCopy)
  {
    v13 = sub_100004778(v9);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "[WARN] processGroupSessionParticipantUpdate: Empty groupSessionParticipantUpdate";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
    goto LABEL_48;
  }

  participantDestinationID = [updateCopy participantDestinationID];

  if (!participantDestinationID)
  {
    v13 = sub_100004778(v11);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "[WARN] processGroupSessionParticipantUpdate: Empty groupSessionParticipantUpdate.participantDestinationID";
    goto LABEL_25;
  }

  groupUUID = [updateCopy groupUUID];
  v13 = [(CSDConversationManager *)self conversationWithGroupUUID:groupUUID];

  v14 = [(CSDConversationManager *)self shouldIgnoreMessageForConversation:v13];
  if ((v14 & 1) == 0)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      participantIDs = [updateCopy participantIDs];
      v17 = TULoggableStringForObject();
      members = [updateCopy members];
      *buf = 138412802;
      v59 = updateCopy;
      v60 = 2112;
      v61 = v17;
      v62 = 2112;
      v63 = members;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Group session participant update received: %@, participantIDs: %@, members: %@", buf, 0x20u);
    }

    v20 = sub_10022ACCC(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      participantDestinationID2 = [updateCopy participantDestinationID];
      v22 = IDSCopyAddressDestinationForDestination();
      v23 = TULoggableStringForHandle();
      participantUpdateType = [updateCopy participantUpdateType];
      [updateCopy participantIDs];
      v25 = v56 = contextCopy;
      allKeys = [v25 allKeys];
      *buf = 138412802;
      v59 = v23;
      v60 = 2048;
      v61 = participantUpdateType;
      v62 = 2112;
      v63 = allKeys;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Participant update from %@, type: %lu, participants: %@", buf, 0x20u);

      contextCopy = v56;
    }

    participantUpdateType2 = [updateCopy participantUpdateType];
    participantDestinationID3 = [updateCopy participantDestinationID];
    v29 = [(CSDConversationManager *)self memberExistsForParticipantDestination:participantDestinationID3 groupSessionParticipantUpdate:updateCopy];
    handle = [v29 handle];

    if (handle)
    {
      deviceSupport = [(CSDConversationManager *)self deviceSupport];
      isGreenTea = [deviceSupport isGreenTea];

      if (isGreenTea)
      {
        v57 = contextCopy;
        v35 = [CSDMessagingConversationParticipantDidJoinContext alloc];
        clientContextData = [updateCopy clientContextData];
        v37 = [(CSDMessagingConversationParticipantDidJoinContext *)v35 initWithData:clientContextData];

        v38 = +[CSDConversationProviderManager sharedInstance];
        providerIdentifier = [(CSDMessagingConversationParticipantDidJoinContext *)v37 providerIdentifier];
        v40 = [v38 tuConversationProviderForIdentifier:providerIdentifier];

        v41 = [(CSDConversationManager *)self _isConversationDisallowedByGreenTeaForConversation:v13 withUpdateContext:v37 conversationProvider:v40];
        if (v41 && v13)
        {
          v42 = sub_100004778(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v13;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Leaving conversation that is not supported on GreenTea devices: %@", buf, 0xCu);
          }

          v43 = +[CSDConversationLeaveContext greenTeaLeaveContext];
          [v13 leaveUsingContext:v43];
        }

        contextCopy = v57;
      }

      if (participantUpdateType2 > 1)
      {
        if (participantUpdateType2 != 2)
        {
          if (participantUpdateType2 == 3)
          {
            [(CSDConversationManager *)self processUpdateMembersUpdate:updateCopy fromHandle:handle];
          }

          else if (participantUpdateType2 == 4)
          {
            [(CSDConversationManager *)self processParticipantDataUpdate:updateCopy fromHandle:handle];
          }

          goto LABEL_47;
        }

        participantIdentifier = [updateCopy participantIdentifier];
        groupUUID2 = [updateCopy groupUUID];
        [(CSDConversationManager *)self handleParticipantWithIdentifier:participantIdentifier leftConversationWithGroupUUID:groupUUID2 fromHandle:handle withGroupSessionUpdate:updateCopy];
        goto LABEL_46;
      }

      if (participantUpdateType2)
      {
        if (participantUpdateType2 == 1)
        {
          if (contextCopy)
          {
            groupUUID2 = [contextCopy senderCorrelationIdentifier];
          }

          else
          {
            groupUUID2 = 0;
          }

          originalGUID = [contextCopy originalGUID];
          if (originalGUID && (-[CSDConversationManager incomingPendingMessageGUIDs](self, "incomingPendingMessageGUIDs"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 containsObject:originalGUID], v50, v51))
          {
            incomingPendingMessageGUIDs = [(CSDConversationManager *)self incomingPendingMessageGUIDs];
            [incomingPendingMessageGUIDs removeObject:originalGUID];

            v54 = sub_100004778(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = originalGUID;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "fromPendingMessage, originalGUID: %@", buf, 0xCu);
            }

            v55 = 1;
          }

          else
          {
            v55 = 0;
          }

          [(CSDConversationManager *)self processJoinUpdate:updateCopy fromHandle:handle senderCorrelationIdentifier:groupUUID2 isFromPendingMessage:v55];

LABEL_46:
        }

LABEL_47:

        goto LABEL_48;
      }

      v45 = sub_100004778(v34);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v46 = "[WARN] Received unknown participant update message";
        goto LABEL_36;
      }
    }

    else
    {
      v45 = sub_100004778(v31);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v46 = "[WARN] Unable to find fromHandle.";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, buf, 2u);
      }
    }

    goto LABEL_47;
  }

LABEL_48:
}

- (void)processJoinUpdate:(id)update fromHandle:(id)handle senderCorrelationIdentifier:(id)identifier isFromPendingMessage:(BOOL)message
{
  messageCopy = message;
  updateCopy = update;
  handleCopy = handle;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = [CSDMessagingConversationParticipantDidJoinContext alloc];
  clientContextData = [updateCopy clientContextData];
  v16 = [(CSDMessagingConversationParticipantDidJoinContext *)v14 initWithData:clientContextData];

  data = [(CSDMessagingConversationParticipantDidJoinContext *)v16 data];
  v18 = [data length];

  v20 = sub_100004778(v19);
  v21 = v20;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received participant join context", buf, 2u);
    }

    [CSDSignposts trace:5];
    v22 = [CSDConversationParticipant alloc];
    participantIdentifier = [updateCopy participantIdentifier];
    participantData = [updateCopy participantData];
    v21 = [(CSDConversationParticipant *)v22 initWithIdentifier:participantIdentifier handle:handleCopy avcData:participantData senderCorrelationIdentifier:identifierCopy];

    v25 = objc_alloc_init(TUConversationParticipantCapabilities);
    [v25 setMomentsAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isMomentsAvailable](v16, "isMomentsAvailable")}];
    [v25 setScreenSharingAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isScreenSharingAvailable](v16, "isScreenSharingAvailable")}];
    [v25 setGondolaCallingAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isGondolaCallingAvailable](v16, "isGondolaCallingAvailable")}];
    [v25 setSupportsLeaveContext:{-[CSDMessagingConversationParticipantDidJoinContext supportsLeaveContext](v16, "supportsLeaveContext")}];
    [v25 setSupportsRequestToScreenShare:{-[CSDMessagingConversationParticipantDidJoinContext supportsRequestToScreenShare](v16, "supportsRequestToScreenShare")}];
    [v25 setPersonaAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isPersonaAvailable](v16, "isPersonaAvailable")}];
    [v25 setGftDowngradeToOneToOneAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isGFTDowngradeToOneToOneAvailable](v16, "isGFTDowngradeToOneToOneAvailable")}];
    [v25 setUPlusOneScreenShareAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusOneScreenSharingAvailable](v16, "isUPlusOneScreenSharingAvailable")}];
    [v25 setUPlusOneAVLessAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusOneAVLessAvailable](v16, "isUPlusOneAVLessAvailable")}];
    [v25 setUPlusNDowngradeAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusNDowngradeAvailable](v16, "isUPlusNDowngradeAvailable")}];
    [v25 setSharePlayProtocolVersion:{-[CSDMessagingConversationParticipantDidJoinContext sharePlayProtocolVersion](v16, "sharePlayProtocolVersion")}];
    [v25 setVisionFeatureVersion:{-[CSDMessagingConversationParticipantDidJoinContext visionFeatureVersion](v16, "visionFeatureVersion")}];
    [v25 setVisionCallEstablishmentVersion:{-[CSDMessagingConversationParticipantDidJoinContext visionCallEstablishmentVersion](v16, "visionCallEstablishmentVersion")}];
    [v25 setUPlusOneVisionToVisionAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusOneVisionToVisionAvailable](v16, "isUPlusOneVisionToVisionAvailable")}];
    [v25 setPhotosSharePlayAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isPhotosSharePlayAvailable](v16, "isPhotosSharePlayAvailable")}];
    [v25 setTranslationAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isTranslationAvailable](v16, "isTranslationAvailable")}];
    [v25 setNearbyFeatureVersion:{-[CSDMessagingConversationParticipantDidJoinContext nearbyFeatureVersion](v16, "nearbyFeatureVersion")}];
    [v21 setCapabilities:v25];
    [v21 setLightweight:[(CSDMessagingConversationParticipantDidJoinContext *)v16 isLightweight]];
    participantDestinationID = [updateCopy participantDestinationID];
    [v21 setActiveIDSDestination:participantDestinationID];

    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasVideoEnabled])
    {
      videoEnabled = [(CSDMessagingConversationParticipantDidJoinContext *)v16 videoEnabled];
    }

    else
    {
      videoEnabled = 1;
    }

    [v21 setVideoEnabled:videoEnabled];
    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasParticipantAssociation])
    {
      participantAssociation = [(CSDMessagingConversationParticipantDidJoinContext *)v16 participantAssociation];
      tuConversationParticipantAssociation = [participantAssociation tuConversationParticipantAssociation];
      [v21 setAssociation:tuConversationParticipantAssociation];
    }

    else
    {
      [v21 setAssociation:0];
    }

    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasParticipantCluster])
    {
      participantCluster = [(CSDMessagingConversationParticipantDidJoinContext *)v16 participantCluster];
      tuConversationParticipantCluster = [participantCluster tuConversationParticipantCluster];
      [v21 setCluster:tuConversationParticipantCluster];
    }

    else
    {
      [v21 setCluster:0];
    }

    v49 = identifierCopy;
    v48 = messageCopy;
    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasIsNearbySharePlay])
    {
      isNearbySharePlay = [(CSDMessagingConversationParticipantDidJoinContext *)v16 isNearbySharePlay];
    }

    else
    {
      isNearbySharePlay = 0;
    }

    [v21 setIsNearbySharePlay:isNearbySharePlay];
    v33 = +[CSDConversationProviderManager sharedInstance];
    providerIdentifier = [(CSDMessagingConversationParticipantDidJoinContext *)v16 providerIdentifier];
    v35 = [v33 tuConversationProviderForIdentifier:providerIdentifier];

    if ([v21 isVideoEnabled])
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    [v21 setAudioVideoMode:v36];
    message = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
    hasAvMode = [message hasAvMode];

    if (hasAvMode)
    {
      message2 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
      -[NSObject setAudioVideoMode:](v21, "setAudioVideoMode:", [message2 avMode]);
    }

    message3 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
    -[NSObject setPresentationMode:](v21, "setPresentationMode:", [message3 resolvedPresentationMode]);

    [v21 setSpatialPersonaEnabled:[(CSDMessagingConversationParticipantDidJoinContext *)v16 isSpatialPersonaEnabled]];
    featureFlags = [(CSDConversationManager *)self featureFlags];
    groupFacetimeAsAServiceEnabled = [featureFlags groupFacetimeAsAServiceEnabled];

    if (groupFacetimeAsAServiceEnabled && v35)
    {
      v43 = +[CSDConversationProviderManager sharedInstance];
      service = [v43 serviceForProvider:v35];
    }

    else
    {
      service = [(CSDConversationManager *)self service];
    }

    allAliases = [service allAliases];
    value = [handleCopy value];
    -[NSObject setLocalAccountHandle:](v21, "setLocalAccountHandle:", [allAliases containsObject:value]);

    v47 = [NSSet setWithObject:v21];
    [(CSDConversationManager *)self handleParticipants:v47 joinedConversationWithUpdate:updateCopy joinContext:v16 fromHandle:handleCopy isFromPendingMessage:v48];

    identifierCopy = v49;
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100478880();
  }
}

- (id)pushTokenForSelf
{
  if (TUSimulatedModeEnabled())
  {
    pushToken = +[NSData data];
  }

  else
  {
    v3 = +[IDSPushHandler sharedInstance];
    pushToken = [v3 pushToken];
  }

  return pushToken;
}

- (void)processUpdateMembersUpdate:(id)update fromHandle:(id)handle
{
  updateCopy = update;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientContextData = [updateCopy clientContextData];

  if (clientContextData)
  {
    v11 = [CSDMessagingConversationParticipantDidJoinContext alloc];
    clientContextData2 = [updateCopy clientContextData];
    v13 = [(CSDMessagingConversationParticipantDidJoinContext *)v11 initWithData:clientContextData2];

    data = [v13 data];
    v15 = [data length];

    v17 = sub_100004778(v16);
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received participant join context", buf, 2u);
      }

      message = [v13 message];
      activeParticipants = [message activeParticipants];
      v18 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeParticipants count]);

      message2 = [v13 message];
      activeParticipants2 = [message2 activeParticipants];
      message3 = [v13 message];
      activeLightweightParticipants = [message3 activeLightweightParticipants];
      v25 = [activeParticipants2 arrayByAddingObjectsFromArray:activeLightweightParticipants];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v33;
        do
        {
          v30 = 0;
          do
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(v26);
            }

            csdConversationParticipant = [*(*(&v32 + 1) + 8 * v30) csdConversationParticipant];
            [v18 addObject:csdConversationParticipant];

            v30 = v30 + 1;
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v28);
      }

      [(CSDConversationManager *)self handleParticipants:v18 joinedConversationWithUpdate:updateCopy joinContext:v13 fromHandle:handleCopy isFromPendingMessage:0];
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1004788BC();
    }
  }

  else
  {
    v13 = sub_100004778(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] processUpdateMembersUpdate: Empty updateMembersUpdate.clientContextData", buf, 2u);
    }
  }
}

- (void)processParticipantDataUpdate:(id)update fromHandle:(id)handle
{
  updateCopy = update;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  groupUUID = [updateCopy groupUUID];

  if (!groupUUID)
  {
    v15 = sub_100004778(v10);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v24 = "[WARN] processParticipantDataUpdate: Empty participantDataUpdate.groupUUID";
LABEL_13:
    v25 = v15;
    v26 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_41;
  }

  participantDestinationID = [updateCopy participantDestinationID];
  v12 = [participantDestinationID length];

  if (!v12)
  {
    v15 = sub_100004778(v13);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v24 = "[WARN] processParticipantDataUpdate: Empty participantDataUpdate.participantDestinationID";
    goto LABEL_13;
  }

  if ([updateCopy participantIdentifier])
  {
    groupUUID2 = [updateCopy groupUUID];
    v15 = [(CSDConversationManager *)self conversationWithGroupUUID:groupUUID2];

    if (!v15)
    {
      csdConversationParticipant = sub_100004778(v16);
      if (os_log_type_enabled(csdConversationParticipant, OS_LOG_TYPE_DEFAULT))
      {
        groupUUID3 = [updateCopy groupUUID];
        mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
        allKeys = [mutableConversationsByUUID allKeys];
        *buf = 138412546;
        participantIdentifier2 = groupUUID3;
        v58 = 2112;
        v59 = allKeys;
        _os_log_impl(&_mh_execute_header, csdConversationParticipant, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with groupUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    clientContextData = [updateCopy clientContextData];
    v18 = [clientContextData length];

    v50 = handleCopy;
    if (v18)
    {
      clientContextData2 = [updateCopy clientContextData];
      participantData = [updateCopy participantData];
      v21 = sub_100004778(participantData);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        participantIdentifier2 = clientContextData2;
        v58 = 2112;
        v59 = participantData;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "processParticipantDataUpdate: contextData: %@, participantData: %@", buf, 0x16u);
      }

      v22 = [[CSDMessagingConversationParticipant alloc] initWithData:clientContextData2];
      [(CSDMessagingConversationParticipant *)v22 setAvcData:participantData];
      csdConversationParticipant = [(CSDMessagingConversationParticipant *)v22 csdConversationParticipant];
    }

    else
    {
      v30 = [CSDConversationParticipant alloc];
      participantIdentifier = [updateCopy participantIdentifier];
      participantData2 = [updateCopy participantData];
      csdConversationParticipant = [(CSDConversationParticipant *)v30 initWithIdentifier:participantIdentifier handle:handleCopy avcData:participantData2];
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    activeRemoteParticipants = [v15 activeRemoteParticipants];
    v34 = [activeRemoteParticipants countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v52;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v52 != v36)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v38 = *(*(&v51 + 1) + 8 * i);
          identifier = [v38 identifier];
          if (identifier == [updateCopy participantIdentifier])
          {
            capabilities = [v38 capabilities];
            [csdConversationParticipant setCapabilities:capabilities];

            -[NSObject setPresentationMode:](csdConversationParticipant, "setPresentationMode:", [v38 presentationMode]);
          }
        }

        v35 = [activeRemoteParticipants countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v35);
    }

    featureFlags = [(CSDConversationManager *)self featureFlags];
    if ([featureFlags groupFacetimeAsAServiceEnabled])
    {
      provider = [v15 provider];

      handleCopy = v50;
      if (provider)
      {
        v43 = +[CSDConversationProviderManager sharedInstance];
        provider2 = [v15 provider];
        service = [v43 serviceForProvider:provider2];

LABEL_34:
        [v15 updateConversationParticipantToHaveMatchingSiriDisplayName:csdConversationParticipant];
        allAliases = [service allAliases];
        value = [handleCopy value];
        -[NSObject setLocalAccountHandle:](csdConversationParticipant, "setLocalAccountHandle:", [allAliases containsObject:value]);

        if (csdConversationParticipant)
        {
          [v15 addActiveParticipant:csdConversationParticipant];
        }

        else
        {
          v49 = sub_100004778(v48);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[WARN] processParticipantDataUpdate: Empty participant", buf, 2u);
          }
        }

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {

      handleCopy = v50;
    }

    service = [(CSDConversationManager *)self service];
    goto LABEL_34;
  }

  v15 = sub_100004778(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    participantIdentifier2 = [updateCopy participantIdentifier];
    v24 = "[WARN] processParticipantDataUpdate: Invalid participantDataUpdate.participantIdentifier %llu";
    v25 = v15;
    v26 = 12;
    goto LABEL_14;
  }

LABEL_41:
}

- (void)handleParticipants:(id)participants joinedConversationWithUpdate:(id)update joinContext:(id)context fromHandle:(id)handle isFromPendingMessage:(BOOL)message
{
  messageCopy = message;
  participantsCopy = participants;
  updateCopy = update;
  contextCopy = context;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  providerIdentifier = [contextCopy providerIdentifier];
  v17 = [TUConversationProvider providerForIdentifier:providerIdentifier];

  featureFlags = [(CSDConversationManager *)self featureFlags];
  LODWORD(providerIdentifier) = [featureFlags groupFacetimeAsAServiceEnabled];

  if (providerIdentifier)
  {
    v20 = +[CSDConversationProviderManager sharedInstance];
    providerIdentifier2 = [contextCopy providerIdentifier];
    v22 = [v20 tuConversationProviderForIdentifier:providerIdentifier2];

    v17 = v22;
  }

  if (contextCopy)
  {
    message = [contextCopy message];
    groupUUID = [updateCopy groupUUID];
    v25 = groupUUID;
    if (!groupUUID)
    {
      v55 = sub_100004778(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipants:joinedConversationWithUpdate:joinContext: Empty participantUpdate.groupUUID", buf, 2u);
      }

      goto LABEL_413;
    }

    v383 = participantsCopy;
    v396 = messageCopy;
    selfCopy = self;
    v387 = groupUUID;
    v26 = sub_10022ACCC(groupUUID);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1004788F8();
    }

    tuConversationLink = [message tuConversationLink];
    tuConversationMembers = [contextCopy tuConversationMembers];
    v394 = [tuConversationMembers mutableCopy];

    tuLightweightMembers = [contextCopy tuLightweightMembers];
    v392 = [tuLightweightMembers mutableCopy];

    [message addedMembers];
    v30 = v29 = message;
    v31 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v30 count]);

    v455 = 0u;
    v454 = 0u;
    v453 = 0u;
    v452 = 0u;
    v389 = v29;
    addedMembers = [v29 addedMembers];
    v33 = [addedMembers countByEnumeratingWithState:&v452 objects:v475 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v453;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v453 != v35)
          {
            objc_enumerationMutation(addedMembers);
          }

          tuConversationMember = [*(*(&v452 + 1) + 8 * i) tuConversationMember];
          [(__CFString *)v31 addObject:tuConversationMember];
        }

        v34 = [addedMembers countByEnumeratingWithState:&v452 objects:v475 count:16];
      }

      while (v34);
    }

    v38 = [(__CFString *)v31 count];
    if (v38)
    {
      v38 = [v394 unionSet:v31];
    }

    v395 = v17;
    v388 = contextCopy;
    v39 = sub_100004778(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(__CFString *)v31 count];
      v41 = [v394 count];
      v42 = @"NO";
      *buf = 134218754;
      *v464 = v40;
      *&v464[8] = 2048;
      if (v396)
      {
        v42 = @"YES";
      }

      *v465 = v41;
      *&v465[8] = 2112;
      v466 = v31;
      v467 = 2112;
      *v468 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "addedMembers count: %lu, members count: %lu, addedMembers: %@, isFromPendingMessage: %@", buf, 0x2Au);
    }

    lightweightMembers = [v389 lightweightMembers];
    v44 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [lightweightMembers count]);

    v451 = 0u;
    v450 = 0u;
    v449 = 0u;
    v448 = 0u;
    lightweightMembers2 = [v389 lightweightMembers];
    v46 = [lightweightMembers2 countByEnumeratingWithState:&v448 objects:v474 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v449;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v449 != v48)
          {
            objc_enumerationMutation(lightweightMembers2);
          }

          tuConversationMember2 = [*(*(&v448 + 1) + 8 * j) tuConversationMember];
          lightweightPrimary = [tuConversationMember2 lightweightPrimary];
          v52 = lightweightPrimary;
          if (lightweightPrimary && [lightweightPrimary isEquivalentToHandle:handleCopy])
          {
            [tuConversationMember2 setValidationSource:1];
          }

          [v44 addObject:tuConversationMember2];
        }

        v47 = [lightweightMembers2 countByEnumeratingWithState:&v448 objects:v474 count:16];
      }

      while (v47);
    }

    [v392 unionSet:v44];
    contextCopy = v388;
    v393 = updateCopy;
    if ([v388 hasMessagesGroupUUIDString])
    {
      v53 = [NSUUID alloc];
      messagesGroupUUIDString = [v388 messagesGroupUUIDString];
      v382 = [v53 initWithUUIDString:messagesGroupUUIDString];
    }

    else
    {
      v382 = 0;
    }

    messagesGroupName = [v388 messagesGroupName];
    v56 = +[NSMutableSet set];
    serverBag = [(CSDConversationManager *)selfCopy serverBag];
    if ([serverBag isParticipantIDToURIIncludedInPush])
    {
    }

    else
    {
      featureFlags2 = [(CSDConversationManager *)selfCopy featureFlags];
      participantIDToURIRemovedEnabled = [featureFlags2 participantIDToURIRemovedEnabled];

      if (participantIDToURIRemovedEnabled)
      {
        goto LABEL_48;
      }
    }

    v447 = 0u;
    v446 = 0u;
    v444 = 0u;
    v445 = 0u;
    participantIDs = [v393 participantIDs];
    allValues = [participantIDs allValues];

    v62 = [allValues countByEnumeratingWithState:&v444 objects:v473 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v445;
      do
      {
        for (k = 0; k != v63; k = k + 1)
        {
          if (*v445 != v64)
          {
            objc_enumerationMutation(allValues);
          }

          [v56 addObjectsFromArray:*(*(&v444 + 1) + 8 * k)];
        }

        v63 = [allValues countByEnumeratingWithState:&v444 objects:v473 count:16];
      }

      while (v63);
    }

LABEL_48:
    v66 = v394;
    if (![v394 count])
    {
      v400 = sub_100004778(0);
      if (os_log_type_enabled(v400, OS_LOG_TYPE_ERROR))
      {
        sub_100478A14();
      }

      goto LABEL_96;
    }

    activeLocalHandlesForProvider = [(CSDConversationManager *)selfCopy activeLocalHandlesForProvider];
    v68 = (activeLocalHandlesForProvider)[2](activeLocalHandlesForProvider, v395);

    v400 = v68;
    v386 = [(CSDConversationManager *)selfCopy localMemberForProvider:v395 fromHandle:handleCopy members:v394 lightweightMembers:v392 activeLocalHandles:v68];
    v440 = 0u;
    v441 = 0u;
    v442 = 0u;
    v443 = 0u;
    v69 = v31;
    v70 = [(__CFString *)v69 countByEnumeratingWithState:&v440 objects:v472 count:16];
    v402 = v69;
    if (v70)
    {
      v71 = v70;
      v72 = *v441;
      while (2)
      {
        for (m = 0; m != v71; m = m + 1)
        {
          if (*v441 != v72)
          {
            objc_enumerationMutation(v69);
          }

          handle = [*(*(&v440 + 1) + 8 * m) handle];
          v75 = [v400 containsObject:handle];

          if (v75)
          {
            v76 = v69;
            v83 = 1;
            goto LABEL_72;
          }
        }

        v71 = [(__CFString *)v69 countByEnumeratingWithState:&v440 objects:v472 count:16];
        if (v71)
        {
          continue;
        }

        break;
      }
    }

    v438 = 0u;
    v439 = 0u;
    v436 = 0u;
    v437 = 0u;
    v76 = v44;
    v77 = [(__CFString *)v76 countByEnumeratingWithState:&v436 objects:v471 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v437;
      while (2)
      {
        for (n = 0; n != v78; n = n + 1)
        {
          if (*v437 != v79)
          {
            objc_enumerationMutation(v76);
          }

          handle2 = [*(*(&v436 + 1) + 8 * n) handle];
          v82 = [(CSDConversationManager *)selfCopy isValidLocalHandle:handle2 activeLocalHandles:v400 provider:v395];

          if (v82)
          {
            v83 = 1;
            goto LABEL_70;
          }
        }

        v78 = [(__CFString *)v76 countByEnumeratingWithState:&v436 objects:v471 count:16];
        if (v78)
        {
          continue;
        }

        break;
      }

      v83 = 0;
LABEL_70:
      contextCopy = v388;
    }

    else
    {
      v83 = 0;
    }

LABEL_72:

    v85 = sub_10022ACCC(v84);
    v86 = selfCopy;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      *v464 = v394;
      *&v464[8] = 2112;
      *v465 = v392;
      *&v465[8] = 2112;
      v466 = v402;
      v467 = 2112;
      *v468 = v44;
      *&v468[8] = 2112;
      *&v468[10] = v400;
      v469 = 2112;
      v470 = v386;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "members: %@\nlightweightMembers: %@\naddedMembers: %@\naddedLightweightMembers: %@\nactiveLocalHandles: %@\nreceivedLocalMember: %@", buf, 0x3Eu);
    }

    v87 = [(CSDConversationManager *)selfCopy isValidLocalHandle:handleCopy activeLocalHandles:v400 provider:v395];
    LODWORD(v390) = v87;
    v88 = sub_100004778(v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v464 = v386;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Received local member: %@", buf, 0xCu);
    }

    [contextCopy otherInvitedHandles];
    v90 = v89 = contextCopy;
    v91 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v90 count]);

    v434 = 0u;
    v435 = 0u;
    v432 = 0u;
    v433 = 0u;
    otherInvitedTUHandles = [v89 otherInvitedTUHandles];
    v93 = [otherInvitedTUHandles countByEnumeratingWithState:&v432 objects:v462 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v433;
      do
      {
        for (ii = 0; ii != v94; ii = ii + 1)
        {
          if (*v433 != v95)
          {
            objc_enumerationMutation(otherInvitedTUHandles);
          }

          [v91 addObject:*(*(&v432 + 1) + 8 * ii)];
        }

        v94 = [otherInvitedTUHandles countByEnumeratingWithState:&v432 objects:v462 count:16];
      }

      while (v94);
    }

    v66 = v394;
    v97 = [v394 mutableCopy];
    featureFlags3 = [(CSDConversationManager *)selfCopy featureFlags];
    v385 = v97;
    if ([featureFlags3 oneToOneFaceTimeMyselfEnabled] && objc_msgSend(v97, "count") == 1)
    {
      anyObject = [v97 anyObject];

      if (v386 == anyObject)
      {
        v101 = sub_100004778(v100);
        contextCopy = v388;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v464 = v385;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Do not remove local handle from membership list because it's FaceTime myself, %@", buf, 0xCu);
        }

        v102 = v385;
        goto LABEL_92;
      }
    }

    else
    {
    }

    contextCopy = v388;
    v102 = v385;
    if (v386)
    {
      [v385 removeObject:v386];
    }

LABEL_92:
    v103 = [v102 count];
    v104 = +[TUConversationManager maximumNumberOfInvitedMembers];
    if (v103 > v104)
    {
      v105 = sub_100004778(v104);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        v106 = [v385 count];
        v107 = +[TUConversationManager maximumNumberOfInvitedMembers];
        *buf = 138412802;
        *v464 = v387;
        *&v464[8] = 2048;
        *v465 = v106;
        v66 = v394;
        *&v465[8] = 2048;
        v466 = v107;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping conversation with groupUUID %@ since it has %tu remote members which is greater than the maximum allowed of %tu.", buf, 0x20u);
      }

LABEL_96:
      message = v389;
LABEL_412:

      updateCopy = v393;
      v17 = v395;
      v25 = v387;
      participantsCopy = v383;
      v55 = tuConversationLink;
LABEL_413:

      goto LABEL_414;
    }

    v377 = v83;
    if ([contextCopy hasVideo])
    {
      video = [contextCopy video];
    }

    else
    {
      video = 1;
    }

    message = v389;
    v109 = [(CSDConversationManager *)selfCopy conversationWithGroupUUID:v387 orMemberIdentifiers:v56 orRemoteMembers:v385 andLink:tuConversationLink andVideo:video];
    collaborationIdentifier = [contextCopy collaborationIdentifier];

    if (collaborationIdentifier)
    {
      collaborationIdentifier2 = [contextCopy collaborationIdentifier];
      [v109 addHighlightIdentifier:collaborationIdentifier2];
    }

    v380 = v109;
    if (v109)
    {
      v111 = [v109 containsMemberWithHandle:handleCopy];
      if ((v111 & 1) == 0)
      {
        v125 = sub_100004778(v111);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v464 = handleCopy;
          *&v464[8] = 2112;
          v126 = v109;
          *v465 = v109;
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "[WARN] We received a message from %@, which was in the remote members list given in the message, but not in the existing conversation UUID: %@. Dropping message.", buf, 0x16u);
LABEL_411:

          goto LABEL_412;
        }

LABEL_172:
        v126 = v380;
        goto LABEL_411;
      }
    }

    v113 = sub_100004778(v111);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v464 = v387;
      *&v464[8] = 2112;
      *v465 = v109;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "groupUUID: %@, find existing conversation: %@", buf, 0x16u);
    }

    v379 = v91;
    if (!v109)
    {
      v127 = 0;
      v128 = 1;
LABEL_165:
      v380 = v127;
      v165 = [(CSDConversationManager *)v86 shouldAcceptMembershipUpdateFromHandle:handleCopy joinContext:contextCopy participantUpdate:v393 existingConversation:v127];
      if (v165)
      {
        v373 = v128;
        if ([contextCopy hasVideo])
        {
          video2 = [contextCopy video];
          v167 = video2 ^ 1;
          if (video2)
          {
            avMode = 2;
          }

          else
          {
            avMode = 1;
          }
        }

        else
        {
          v167 = 0;
          avMode = 2;
        }

        if ([message hasAvMode])
        {
          avMode = [message avMode];
        }

        v370 = avMode;
        v169 = +[IDSCurrentServerTime sharedInstance];
        currentServerTimeDate = [v169 currentServerTimeDate];

        obja = currentServerTimeDate;
        v171 = [NSDate dateWithTimeInterval:currentServerTimeDate sinceDate:-30.0];
        serverDate = [v393 serverDate];
        v371 = [v171 compare:serverDate];

        v174 = sub_100004778(v173);
        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          serverDate2 = [v393 serverDate];
          v176 = serverDate2;
          v177 = @"NO";
          *buf = 138412802;
          *v464 = obja;
          *&v464[8] = 2112;
          if (v371 == 1)
          {
            v177 = @"YES";
          }

          *v465 = serverDate2;
          *&v465[8] = 2112;
          v466 = v177;
          _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "currentServerTime: %@, participantUpdate.serverDate: %@, isOldMessage: %@", buf, 0x20u);
        }

        if (!v373)
        {
          groupUUID2 = [v380 groupUUID];
          v190 = [groupUUID2 isEqual:v387];

          contextCopy = v388;
          if (v190)
          {
            unknownProvider = v380;
            if ([(__CFString *)v402 count])
            {
              [unknownProvider addRemoteMembers:v402 otherInvitedHandles:v91 triggeredLocally:0];
            }

            v193 = &_s10Foundation3URLVMa_ptr_0;
            if ([v44 count])
            {
              [unknownProvider addRemoteMembers:v44 otherInvitedHandles:v91 triggeredLocally:0];
            }

LABEL_274:
            provider = [unknownProvider provider];
            v405 = unknownProvider;
            if (provider)
            {
              provider2 = [unknownProvider provider];
              v247 = v193[190];
              v248 = provider2;
              unknownProvider = [v247 unknownProvider];
              if (([(__CFString *)v248 isEqual:unknownProvider]& 1) == 0)
              {

                goto LABEL_284;
              }

              v390 = v248;
            }

            providerIdentifier3 = [contextCopy providerIdentifier];
            v250 = [providerIdentifier3 length];

            if (provider)
            {
            }

            contextCopy = v388;
            if (!v250)
            {
LABEL_285:
              if (v405)
              {
                featureFlags4 = [(CSDConversationManager *)v86 featureFlags];
                if ([featureFlags4 nearbyFaceTimeEnabled])
                {
                  hasIsNearbySession = [message hasIsNearbySession];

                  v259 = v385;
                  v260 = v377;
                  if (hasIsNearbySession)
                  {
                    isNearbySession = [message isNearbySession];
                    v262 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
                    if (isNearbySession)
                    {
                      [v405 addRequiredCapabilities:v262 requiredLackOfCapabilities:0];
                    }

                    else
                    {
                      [v405 removeRequiredCapabilities:v262 requiredLackOfCapabilities:0];
                    }

                    if (v373)
                    {
                      isNearbySession2 = [message isNearbySession];
                      if (isNearbySession2)
                      {
                        isNearbySession2 = [v405 startTimeOutForNearbySession];
                      }
                    }

                    else
                    {
                      isNearbySession2 = [(CSDConversationManager *)v86 conversationChanged:v380];
                    }
                  }
                }

                else
                {

                  v259 = v385;
                  v260 = v377;
                }

                v263 = sub_100004778(isNearbySession2);
                if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
                {
                  if ([v405 isFromStorage])
                  {
                    v264 = @"YES";
                  }

                  else
                  {
                    v264 = @"NO";
                  }

                  fromServer = [v393 fromServer];
                  v266 = @"YES";
                  if (!fromServer)
                  {
                    v266 = @"NO";
                  }

                  *buf = 138412546;
                  *v464 = v264;
                  *&v464[8] = 2112;
                  *v465 = v266;
                  _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "isFromStorage: %@, participantUpdate.fromServer: %@", buf, 0x16u);
                }

                if ([v405 isFromStorage])
                {
                  fromServer2 = [v393 fromServer];
                  if ((fromServer2 & 1) == 0)
                  {
                    v268 = sub_100004778(fromServer2);
                    if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                    {
                      uUID = [v405 UUID];
                      *buf = 138412290;
                      *v464 = uUID;
                      _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_DEFAULT, "Activating cached conversation with UUID: %@ since participants are joining.", buf, 0xCu);
                    }

                    [v405 setFromStorage:0];
                    messagesGroupUUID = [v405 messagesGroupUUID];
                    v271 = [messagesGroupUUID isEqual:v382];

                    if (v271)
                    {
                      v273 = sub_100004778(v272);
                      if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                      {
                        uUID2 = [v405 UUID];
                        *buf = 138412290;
                        *v464 = uUID2;
                        _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "Updating remoteMembers for conversation with UUID: %@", buf, 0xCu);
                      }

                      remoteMembers = [v405 remoteMembers];
                      v276 = [remoteMembers mutableCopy];

                      [v276 unionSet:v259];
                      localMember = [v405 localMember];
                      [v276 removeObject:localMember];

                      v278 = +[NSSet set];
                      [v405 addRemoteMembers:v276 otherInvitedHandles:v278 triggeredLocally:0];
                    }
                  }
                }

                serverBag2 = [(CSDConversationManager *)v86 serverBag];
                if ([serverBag2 isParticipantIDToURIIncludedInPush])
                {

                  v280 = v405;
                }

                else
                {
                  featureFlags5 = [(CSDConversationManager *)v86 featureFlags];
                  participantIDToURIRemovedEnabled2 = [featureFlags5 participantIDToURIRemovedEnabled];

                  v280 = v405;
                  if (participantIDToURIRemovedEnabled2)
                  {
                    goto LABEL_311;
                  }
                }

                [v280 setMemberIdentifiers:v56];
LABEL_311:
                featureFlags6 = [(CSDConversationManager *)v86 featureFlags];
                if ([featureFlags6 shouldRingForIncomingCallEnabled])
                {
                  serverBag3 = [(CSDConversationManager *)v86 serverBag];
                  shouldRingForIncomingCallEnabled = [serverBag3 shouldRingForIncomingCallEnabled];

                  if (shouldRingForIncomingCallEnabled)
                  {
                    fromServer3 = [v393 fromServer];
                    if (!fromServer3 || v371 != 1)
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_319;
                  }
                }

                else
                {
                }

                fromServer3 = [v393 fromServer];
                if (!fromServer3)
                {
                  goto LABEL_320;
                }

                v287 = [NSDate dateWithTimeIntervalSinceNow:-30.0];
                serverDate3 = [v393 serverDate];
                v289 = [v287 compare:serverDate3];

                if (v289 != 1)
                {
                  goto LABEL_320;
                }

LABEL_319:
                fromServer3 = [v280 state];
                if (fromServer3 != 3)
                {
                  v290 = sub_100004778(fromServer3);
                  if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v464 = v280;
                    _os_log_impl(&_mh_execute_header, v290, OS_LOG_TYPE_DEFAULT, "Not ringing for cached conversation since message is from server storage and is older than 30 seconds. Conversation: %@", buf, 0xCu);
                  }

                  v295 = 1;
LABEL_323:

                  [v280 setFromStorage:v295];
                  featureFlags7 = [(CSDConversationManager *)v86 featureFlags];
                  if ([featureFlags7 shouldRingForIncomingCallEnabled])
                  {
                    serverBag4 = [(CSDConversationManager *)v86 serverBag];
                    shouldRingForIncomingCallEnabled2 = [serverBag4 shouldRingForIncomingCallEnabled];

                    if (shouldRingForIncomingCallEnabled2)
                    {
                      v299 = [(CSDConversationManager *)v86 _shouldRingForIncomingCallWithHandle:handleCopy conversation:v280 isFromPendingMessage:v396 isOldMessage:v371 == 1 message:message];
                      goto LABEL_334;
                    }
                  }

                  else
                  {
                  }

                  provider3 = [v280 provider];
                  if ([(CSDConversationManager *)v86 isValidLocalHandle:handleCopy forProvider:provider3])
                  {
                    v299 = 0;
                  }

                  else
                  {
                    invitationResolver = [(CSDConversationManager *)v86 invitationResolver];
                    tuConversation = [v280 tuConversation];
                    localMember2 = [v280 localMember];
                    handle3 = [localMember2 handle];
                    if ([invitationResolver shouldShowInvitationRingingUIForConversation:tuConversation handle:handle3])
                    {
                      v397 = [v280 isFromStorage] ^ 1;
                    }

                    else
                    {
                      v397 = 0;
                    }

                    v260 = v377;
                    v299 = v397;
                  }

LABEL_334:
                  v304 = [message isLetMeInApproved]^ 1;
                  if ([v393 participantUpdateType] != 1 || (objc_msgSend(v280, "isLocallyCreated") & 1) != 0 || objc_msgSend(v280, "state"))
                  {
                    v398 = 0;
                  }

                  else
                  {
                    v398 = v373 & ([v280 hasJoined] ^ 1);
                  }

                  v305 = v304 & v299;
                  v306 = -[CSDConversationManager _shouldNotifyDelegatesOfMessage:localHandleAdded:isFromStorage:](v86, "_shouldNotifyDelegatesOfMessage:localHandleAdded:isFromStorage:", message, v260, [v280 isFromStorage]);
                  v307 = v306;
                  v308 = sub_100004778(v306);
                  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
                  {
                    if (v307)
                    {
                      v309 = @"YES";
                    }

                    else
                    {
                      v309 = @"NO";
                    }

                    if (v398)
                    {
                      v310 = @"YES";
                    }

                    else
                    {
                      v310 = @"NO";
                    }

                    v374 = v310;
                    if (v305)
                    {
                      v311 = @"YES";
                    }

                    else
                    {
                      v311 = @"NO";
                    }

                    v378 = v311;
                    v391 = v305;
                    type = [v389 type];
                    isFromStorage = [v405 isFromStorage];
                    *buf = 138413314;
                    if (isFromStorage)
                    {
                      v314 = @"YES";
                    }

                    else
                    {
                      v314 = @"NO";
                    }

                    *v464 = v309;
                    v86 = selfCopy;
                    v280 = v405;
                    *&v464[8] = 2112;
                    *v465 = v374;
                    *&v465[8] = 2112;
                    v466 = v378;
                    v467 = 1024;
                    *v468 = type;
                    v305 = v391;
                    *&v468[4] = 2112;
                    *&v468[6] = v314;
                    _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_DEFAULT, "shouldNotifyDelegatesOfMessage: %@, isJoinUpdateForNewConverstion: %@, shouldNotifyDelegatesOfNewConversation: %@, message.type: %d, isFromStorage: %@", buf, 0x30u);
                  }

                  if (v307)
                  {
                    [(CSDConversationManager *)v86 notifyDelegatesOfMessage:v389 fromHandle:handleCopy forConversation:v280 withUpdate:v393 shouldRing:v299];
                    v315 = v383;
                  }

                  else
                  {
                    v315 = v383;
                    if ((v398 & v305) == 1)
                    {
                      [(CSDConversationManager *)v86 notifyDelegatesOfNewConversation:v280 fromHandle:handleCopy];
                    }
                  }

                  featureFlags8 = [(CSDConversationManager *)v86 featureFlags];
                  if ([featureFlags8 sharePlayInCallsEnabled])
                  {
                  }

                  else
                  {
                    featureFlags9 = [(CSDConversationManager *)v86 featureFlags];
                    audioCallTranslationEnabled = [featureFlags9 audioCallTranslationEnabled];

                    if (!audioCallTranslationEnabled)
                    {
                      goto LABEL_368;
                    }
                  }

                  remoteMembers2 = [v280 remoteMembers];
                  if ([remoteMembers2 count] == 1 && objc_msgSend(v388, "hasVideo") && (objc_msgSend(v388, "video") & 1) == 0 && objc_msgSend(v280, "isVideo"))
                  {

                    if (v370)
                    {
                      v321 = sub_100004778(v320);
                      if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_DEFAULT, "Downgrading U+1 call to audio because remote party joined as audio-only (remote members count is 1, join context had video=NO, conversation had video=YES, and not AVLess)", buf, 2u);
                      }

                      [v280 setVideo:0];
                    }
                  }

                  else
                  {
                  }

LABEL_368:
                  v413 = 0u;
                  v414 = 0u;
                  v411 = 0u;
                  v412 = 0u;
                  v399 = v315;
                  v322 = [v399 countByEnumeratingWithState:&v411 objects:v457 count:16];
                  if (v322)
                  {
                    v323 = v322;
                    v324 = *v412;
                    do
                    {
                      for (jj = 0; jj != v323; jj = jj + 1)
                      {
                        if (*v412 != v324)
                        {
                          objc_enumerationMutation(v399);
                        }

                        v326 = *(*(&v411 + 1) + 8 * jj);
                        localParticipantIdentifier = [v280 localParticipantIdentifier];
                        if (localParticipantIdentifier != [v326 identifier])
                        {
                          [v280 updateConversationParticipantToHaveMatchingSiriDisplayName:v326];
                          [(CSDConversationManager *)v86 removePendingMemberMatchingActiveParticipant:v326 conversation:v280];
                          handle4 = [v326 handle];
                          v329 = [v280 containsMemberWithHandle:handle4];

                          if (v329)
                          {
                            [v280 addActiveParticipant:v326];
                          }

                          else
                          {
                            v331 = sub_100004778(v330);
                            if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
                            {
                              remoteMembers3 = [v280 remoteMembers];
                              lightweightMembers3 = [v280 lightweightMembers];
                              *buf = 138412802;
                              *v464 = v326;
                              *&v464[8] = 2112;
                              *v465 = remoteMembers3;
                              *&v465[8] = 2112;
                              v466 = lightweightMembers3;
                              _os_log_impl(&_mh_execute_header, v331, OS_LOG_TYPE_DEFAULT, "[WARN] activeParticipant: %@ is not in the validConversation: %@, lightweight members: %@", buf, 0x20u);

                              v280 = v405;
                            }
                          }

                          v86 = selfCopy;
                          [(CSDConversationManager *)selfCopy prepareAdditionOfActiveParticipant:v326 toInvitedMembersForLinkOnConversation:v280];
                        }
                      }

                      v323 = [v399 countByEnumeratingWithState:&v411 objects:v457 count:16];
                    }

                    while (v323);
                  }

                  v409 = 0u;
                  v410 = 0u;
                  v407 = 0u;
                  v408 = 0u;
                  activitySessions = [v389 activitySessions];
                  v335 = [activitySessions countByEnumeratingWithState:&v407 objects:v456 count:16];
                  if (v335)
                  {
                    v336 = v335;
                    v337 = *v408;
                    do
                    {
                      for (kk = 0; kk != v336; kk = kk + 1)
                      {
                        if (*v408 != v337)
                        {
                          objc_enumerationMutation(activitySessions);
                        }

                        v339 = [(CSDConversationManager *)v86 createActivitySession:*(*(&v407 + 1) + 8 * kk) onConversation:v405 fromHandle:handleCopy];
                      }

                      v336 = [activitySessions countByEnumeratingWithState:&v407 objects:v456 count:16];
                    }

                    while (v336);
                  }

                  message = v389;
                  stagedActivitySession = [v389 stagedActivitySession];

                  if (stagedActivitySession)
                  {
                    stagedActivitySession2 = [v389 stagedActivitySession];
                    tuConversationActivitySession = [stagedActivitySession2 tuConversationActivitySession];
                    v343 = [v405 setStagedActivitySessionForActivitySession:tuConversationActivitySession];

                    if ((v343 & 1) == 0)
                    {
                      v345 = sub_100004778(v344);
                      if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
                      {
                        stagedActivitySession3 = [v389 stagedActivitySession];
                        uUID3 = [v405 UUID];
                        *buf = 138412546;
                        *v464 = stagedActivitySession3;
                        *&v464[8] = 2112;
                        *v465 = uUID3;
                        _os_log_impl(&_mh_execute_header, v345, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't set staged activity session %@ on conversation UUID %@", buf, 0x16u);
                      }
                    }
                  }

                  highlightIdentifier = [v389 highlightIdentifier];
                  v349 = v405;
                  if (!highlightIdentifier)
                  {
                    goto LABEL_400;
                  }

                  highlightIdentifiers = [v405 highlightIdentifiers];
                  anyObject2 = [highlightIdentifiers anyObject];
                  if ([highlightIdentifier isEqualToString:anyObject2])
                  {
                    highlightIdentifiers2 = [v405 highlightIdentifiers];
                    v353 = [highlightIdentifiers2 count];

                    v349 = v405;
                    if (v353)
                    {
                      goto LABEL_400;
                    }
                  }

                  else
                  {
                  }

                  [v349 addHighlightIdentifier:highlightIdentifier];
LABEL_400:
                  remoteMembers4 = [v349 remoteMembers];
                  contextCopy = v388;
                  if ([remoteMembers4 count] == 1 && objc_msgSend(v388, "hasVideo") && (objc_msgSend(v388, "video") & 1) == 0 && objc_msgSend(v349, "isVideo"))
                  {

                    v356 = selfCopy;
                    v126 = v380;
                    if (v370)
                    {
                      v357 = sub_100004778(v355);
                      if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v357, OS_LOG_TYPE_DEFAULT, "Downgrading U+1 call to audio because remote party joined as audio-only (remote members count is 1, join context had video=NO, conversation had video=YES, and not AVLess)", buf, 2u);
                      }

                      [v405 setVideo:0];
                    }
                  }

                  else
                  {

                    v356 = selfCopy;
                    v126 = v380;
                  }

                  pendingConversationMessageHandler = [(CSDConversationManager *)v356 pendingConversationMessageHandler];
                  [pendingConversationMessageHandler retryMessagesForGroupUUID:v387];

                  v66 = v394;
                  v91 = v379;
                  goto LABEL_410;
                }

LABEL_320:
                v290 = sub_100004778(fromServer3);
                if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                {
                  fromServer4 = [v393 fromServer];
                  v292 = [NSDate dateWithTimeIntervalSinceNow:-30.0];
                  message = v389;
                  serverDate4 = [v393 serverDate];
                  v294 = [v292 compare:serverDate4];
                  *buf = 67109634;
                  *v464 = fromServer4;
                  *&v464[4] = 1024;
                  *&v464[6] = v294 == 1;
                  *v465 = 2112;
                  *&v465[2] = v280;

                  v260 = v377;
                }

                v295 = 0;
                goto LABEL_323;
              }

LABEL_290:
              v66 = v394;
              v126 = v380;
LABEL_410:
              v125 = obja;
              goto LABEL_411;
            }

            conversationProviderManager = [(CSDConversationManager *)v86 conversationProviderManager];
            providerIdentifier4 = [v388 providerIdentifier];
            provider = [conversationProviderManager tuConversationProviderForIdentifier:providerIdentifier4];

            v254 = sub_100004778(v253);
            if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
            {
              uUID4 = [v405 UUID];
              *buf = 138412546;
              *v464 = uUID4;
              *&v464[8] = 2112;
              *v465 = provider;
              _os_log_impl(&_mh_execute_header, v254, OS_LOG_TYPE_DEFAULT, "Updating provider on conversation with UUID %@ with provider %@", buf, 0x16u);
            }

            [v405 setProvider:provider];
            contextCopy = v388;
LABEL_284:

            goto LABEL_285;
          }

          v194 = sub_100004778(v191);
          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v464 = v387;
            _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "Ignoring message for group UUID %@", buf, 0xCu);
          }

          unknownProvider = 0;
LABEL_273:
          v193 = &_s10Foundation3URLVMa_ptr_0;
          goto LABEL_274;
        }

        contextCopy = v388;
        if (!v386)
        {
          v195 = sub_100004778(v178);
          if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
          {
            sub_1004789D8();
          }

          v196 = [v394 setByAddingObjectsFromSet:v44];
          v197 = sub_100004778(v196);
          v126 = v380;
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v464 = v400;
            *&v464[8] = 2112;
            *v465 = v196;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "activeLocalHandles: %@, remoteAndLightweightMembers: %@", buf, 0x16u);
          }

          v66 = v394;
          goto LABEL_410;
        }

        tuConversationLink2 = [message tuConversationLink];
        reportData = [message reportData];
        tuConversationReport = [reportData tuConversationReport];

        letMeInRequestState3 = 0;
        v369 = tuConversationLink2;
        if ([(CSDConversationManager *)v86 _linksEnabled]&& tuConversationLink2)
        {
          pseudonym = [tuConversationLink2 pseudonym];
          v182 = [(CSDConversationManager *)v86 pendingConversationWithPseudonym:pseudonym];

          if (v182)
          {
            letMeInRequestState = [v182 letMeInRequestState];
            if (letMeInRequestState != 2 || ([v182 conversationGroupUUID], v184 = objc_claimAutoreleasedReturnValue(), v185 = objc_msgSend(v184, "isEqual:", v387), v184, !v185))
            {
              v198 = sub_100004778(letMeInRequestState);
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
              {
                conversationGroupUUID = [v182 conversationGroupUUID];
                if ([conversationGroupUUID isEqual:v387])
                {
                  v200 = @"NO";
                }

                else
                {
                  v200 = @"YES";
                }

                letMeInRequestState2 = [v182 letMeInRequestState];
                *buf = 138412802;
                if (letMeInRequestState2 == 2)
                {
                  v202 = @"NO";
                }

                else
                {
                  v202 = @"YES";
                }

                v91 = v379;
                *v464 = v182;
                *&v464[8] = 2114;
                *v465 = v200;
                contextCopy = v388;
                message = v389;
                *&v465[8] = 2114;
                v466 = v202;
                _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "Pending conversation %@ found, but the groupUUID does not match (%{public}@) or the let me in request state is not Requested (%{public}@)", buf, 0x20u);
              }

              goto LABEL_290;
            }

            v186 = sub_100004778(letMeInRequestState);
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
            {
              conversationGroupUUID2 = [v182 conversationGroupUUID];
              *buf = 138412290;
              *v464 = conversationGroupUUID2;
              _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "Identified let me in approval for pending conversation group UUID: %@", buf, 0xCu);
            }

            [v182 setLetMeInRequestState:3];
            letMeInRequestState3 = [v182 letMeInRequestState];
            temporaryGroupUUID = [v182 temporaryGroupUUID];

            v86 = selfCopy;
            v367 = temporaryGroupUUID;
            if (temporaryGroupUUID)
            {
LABEL_215:
              resolvedPresentationMode = [message resolvedPresentationMode];
              v204 = sub_100004778(resolvedPresentationMode);
              if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
              {
                v205 = @"YES";
                if (v167)
                {
                  v205 = @"NO";
                }

                *buf = 138543362;
                *v464 = v205;
                _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "Determined video for new conversation should be %{public}@", buf, 0xCu);
              }

              v361 = resolvedPresentationMode;
              if ([v385 count] == 1)
              {
                members = [v393 members];
                v366 = [NSSet setWithArray:members];
              }

              else
              {
                v366 = 0;
              }

              v207 = v369;
              if (v369)
              {
                pendingMembershipTracker = [(CSDConversationManager *)v86 pendingMembershipTracker];
                v365 = [pendingMembershipTracker retrievePendingMembersFor:v387];
              }

              else
              {
                pendingMembershipTracker = +[NSSet set];
                v365 = pendingMembershipTracker;
              }

              v209 = [(CSDConversationManager *)v86 pickInitiatorFromActiveParticipants:v383 forUpdate:v393];
              v210 = v209;
              if (v209)
              {
                handle5 = [v209 handle];

                if ([v388 hasScreenSharingRequest])
                {
                  featureFlags10 = [(CSDConversationManager *)v86 featureFlags];
                  usesModernScreenSharingFromMessages = [featureFlags10 usesModernScreenSharingFromMessages];

                  if (usesModernScreenSharingFromMessages)
                  {
                    screenSharingRequest = [v388 screenSharingRequest];
                    tuConversationParticipant = [v210 tuConversationParticipant];
                    isHandleEligibleForScreenSharingRequestsBlock = v86->_isHandleEligibleForScreenSharingRequestsBlock;
                    v415 = 0;
                    v363 = [screenSharingRequest incomingScreenShareRequestFromParticipant:tuConversationParticipant handleEligibilityBlock:isHandleEligibleForScreenSharingRequestsBlock error:&v415];
                    v217 = v415;

                    v86 = selfCopy;
                    goto LABEL_234;
                  }

                  v219 = sub_100004778(v213);
                  if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "[WARN] Not acknowledging screen share request attached to join context because feature flag is not enabled", buf, 2u);
                  }
                }
              }

              else
              {
                participantDestinationID = [v393 participantDestinationID];
                handle5 = TUHandleForIDSCanonicalAddress();

                [v388 hasScreenSharingRequest];
              }

              v363 = 0;
LABEL_234:
              v220 = [v385 count];
              v362 = v210;
              if (v220 == 1 && !v369 && (v220 = [v393 participantUpdateType], v220 == 1) && (v220 = objc_msgSend(v393, "isInitiator"), (v220 & 1) != 0))
              {
                v221 = 0;
              }

              else
              {
                v222 = sub_100004778(v220);
                if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                {
                  participantUpdateType = [v393 participantUpdateType];
                  if ([v393 isInitiator])
                  {
                    v224 = @"YES";
                  }

                  else
                  {
                    v224 = @"NO";
                  }

                  v225 = [v385 count];
                  *buf = 134218754;
                  *v464 = participantUpdateType;
                  *&v464[8] = 2112;
                  *v465 = v224;
                  *&v465[8] = 2048;
                  v466 = v225;
                  v467 = 2112;
                  *v468 = v369;
                  _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "type: %lu, participantUpdate.isInitiator: %@, remoteMembers.count: %lu, link: %@", buf, 0x2Au);
                }

                v221 = 1;
              }

              BYTE1(v360) = v371 == 1;
              LOBYTE(v360) = v221;
              LOBYTE(v359) = [v393 fromServer];
              v226 = [(CSDConversationManager *)v86 createConversationWithUUID:v367 groupUUID:v387 messagesGroupUUID:v382 locallyCreated:v390 localMember:v386 initiator:handle5 remoteMembers:v385 pendingMembers:v365 otherInvitedHandles:v91 remotePushTokens:v366 lightweightMembers:v392 activity:0 link:v369 report:tuConversationReport fromStorage:v359 avMode:v370 presentationMode:v361 provider:v395 screenSharingRequest:v363 isInitiator:v360 isOldMessage:?];
              [v226 setLetMeInRequestState:letMeInRequestState3];
              [v226 setMessagesGroupName:messagesGroupName];
              serverDate5 = [v393 serverDate];
              [v226 setInvitationDate:serverDate5];

              collaborationIdentifier3 = [v388 collaborationIdentifier];

              if (collaborationIdentifier3)
              {
                collaborationIdentifier4 = [v388 collaborationIdentifier];
                v230 = [NSMutableSet setWithObjects:collaborationIdentifier4, 0];

                [v226 setHighlightIdentifiers:v230];
              }

              v404 = v226;
              message = v389;
              if ([v388 hasVideoEnabled])
              {
                [v404 setVideoEnabled:{objc_msgSend(v388, "videoEnabled")}];
              }

              else if ([v393 participantUpdateType] == 3 && !objc_msgSend(v404, "letMeInRequestState"))
              {
                v231 = sub_100004778([v404 setVideoEnabled:{objc_msgSend(v404, "avMode") == 2}]);
                if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
                {
                  isVideoEnabled = [v404 isVideoEnabled];
                  v233 = @"NO";
                  if (isVideoEnabled)
                  {
                    v233 = @"YES";
                  }

                  v390 = v233;
                  avMode2 = [v404 avMode];
                  *buf = 138412546;
                  *v464 = v390;
                  *&v464[8] = 2048;
                  *v465 = avMode2;
                  _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "Setting videoEnabled to %@ because the user was added to an existing call with av mode %lu", buf, 0x16u);
                }
              }

              if ([v389 invitationPreferencesCount])
              {
                tuInvitationPreferences = [v389 tuInvitationPreferences];
                [v404 setInvitationPreferences:tuInvitationPreferences];

                v237 = sub_100004778(v236);
                if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                {
                  invitationPreferences = [v404 invitationPreferences];
                  *buf = 138412290;
                  *v464 = invitationPreferences;
                  _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "Attached invitation preferences found in message: %@", buf, 0xCu);
                }

                v207 = v369;
              }

              else
              {
                v237 = sub_100004778(0);
                if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "No invitation preferences were set on the message", buf, 2u);
                }
              }

              featureFlags11 = [(CSDConversationManager *)v86 featureFlags];
              if ([featureFlags11 uplevelFTAEnabled])
              {
                isUpgradeToVideo = [v388 isUpgradeToVideo];

                if (isUpgradeToVideo)
                {
                  [v404 setIsUpgradeToVideo:1];
                }
              }

              else
              {
              }

              activitySession = [v388 activitySession];
              if (activitySession)
              {
                v242 = [(CSDConversationManager *)v86 createActivitySession:activitySession onConversation:v404 fromHandle:handleCopy];
                if (!v242)
                {
                  v243 = sub_100004778(0);
                  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
                  {
                    uUID5 = [v404 UUID];
                    *buf = 138412546;
                    *v464 = activitySession;
                    *&v464[8] = 2112;
                    *v465 = uUID5;
                    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "[WARN] Could not create new activity session for activity session %@ and conversation UUID %@", buf, 0x16u);

                    v207 = v369;
                  }
                }

                contextCopy = v388;
              }

              unknownProvider = v404;
              goto LABEL_273;
            }
          }

          else
          {
            letMeInRequestState3 = 0;
          }
        }

        v367 = +[NSUUID UUID];
        goto LABEL_215;
      }

      v125 = sub_100004778(v165);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        sub_100478968();
      }

      goto LABEL_172;
    }

    remoteMembers5 = [v109 remoteMembers];
    if ([remoteMembers5 count] == 1)
    {
      activeRemoteParticipants = [v109 activeRemoteParticipants];
      v116 = [activeRemoteParticipants count];

      if (v116 && !tuConversationLink)
      {
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v117 = v392;
        v118 = [v117 countByEnumeratingWithState:&v428 objects:v461 count:16];
        if (v118)
        {
          v119 = v118;
          v120 = 0;
          v121 = *v429;
          do
          {
            for (mm = 0; mm != v119; mm = mm + 1)
            {
              if (*v429 != v121)
              {
                objc_enumerationMutation(v117);
              }

              handle6 = [*(*(&v428 + 1) + 8 * mm) handle];
              v124 = [handle6 isEqualToHandle:handleCopy];

              v120 |= v124;
            }

            v119 = [v117 countByEnumeratingWithState:&v428 objects:v461 count:16];
          }

          while (v119);
        }

        else
        {
          v120 = 0;
        }

        v426 = 0u;
        v427 = 0u;
        v424 = 0u;
        v425 = 0u;
        activeRemoteParticipants2 = [v380 activeRemoteParticipants];
        v130 = [activeRemoteParticipants2 countByEnumeratingWithState:&v424 objects:v460 count:16];
        v86 = selfCopy;
        if (v130)
        {
          v131 = v130;
          v132 = *v425;
          obj = activeRemoteParticipants2;
          while (2)
          {
            for (nn = 0; nn != v131; nn = nn + 1)
            {
              if (*v425 != v132)
              {
                objc_enumerationMutation(obj);
              }

              activeIDSDestination = [*(*(&v424 + 1) + 8 * nn) activeIDSDestination];
              participantDestinationID2 = [v393 participantDestinationID];
              v136 = [activeIDSDestination isEqualToString:participantDestinationID2];

              if (v136)
              {
                message = v389;
                remoteMembers5 = obj;
                goto LABEL_136;
              }

              v86 = selfCopy;
            }

            activeRemoteParticipants2 = obj;
            v131 = [obj countByEnumeratingWithState:&v424 objects:v460 count:16];
            if (v131)
            {
              continue;
            }

            break;
          }
        }

        message = v389;
        v66 = v394;
        if ((v120 & 1) == 0)
        {
          isInitiator = [v393 isInitiator];
          if (isInitiator)
          {
            v138 = sub_100004778(isInitiator);
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v464 = handleCopy;
              _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "[WARN] We received a message from %@, which was in the remote members list but from a different device; treating as new conversation", buf, 0xCu);
            }

            v127 = 0;
            v128 = 1;
            contextCopy = v388;
LABEL_164:
            v91 = v379;
            goto LABEL_165;
          }
        }
      }
    }

    else
    {
LABEL_136:
    }

    groupUUID3 = [v380 groupUUID];
    uUIDString = [groupUUID3 UUIDString];
    uUIDString2 = [v387 UUIDString];
    v142 = [uUIDString isEqualToString:uUIDString2];

    if (v142)
    {
      v422 = 0u;
      v423 = 0u;
      v420 = 0u;
      v421 = 0u;
      v143 = v385;
      v144 = [v143 countByEnumeratingWithState:&v420 objects:v459 count:16];
      if (v144)
      {
        v145 = v144;
        v146 = *v421;
        do
        {
          for (i1 = 0; i1 != v145; i1 = i1 + 1)
          {
            if (*v421 != v146)
            {
              objc_enumerationMutation(v143);
            }

            v148 = *(*(&v420 + 1) + 8 * i1);
            associationVoucher = [v148 associationVoucher];

            if (associationVoucher)
            {
              [v380 updateRemoteMember:v148];
            }
          }

          v145 = [v143 countByEnumeratingWithState:&v420 objects:v459 count:16];
        }

        while (v145);
      }

      v418 = 0u;
      v419 = 0u;
      v416 = 0u;
      v417 = 0u;
      v150 = v392;
      v151 = [v150 countByEnumeratingWithState:&v416 objects:v458 count:16];
      if (v151)
      {
        v152 = v151;
        v153 = *v417;
        do
        {
          for (i2 = 0; i2 != v152; i2 = i2 + 1)
          {
            if (*v417 != v153)
            {
              objc_enumerationMutation(v150);
            }

            v155 = *(*(&v416 + 1) + 8 * i2);
            associationVoucher2 = [v155 associationVoucher];

            if (associationVoucher2)
            {
              [v380 updateLightweightMember:v155];
            }
          }

          v152 = [v150 countByEnumeratingWithState:&v416 objects:v458 count:16];
        }

        while (v152);
      }

      if (v386)
      {
        association = [v386 association];
        localMember3 = [v380 localMember];
        [localMember3 association];
        v159 = v127 = v380;
        v160 = [association isEqualToAssociation:v159];

        message = v389;
        v91 = v379;
        if ((v160 & 1) == 0)
        {
          [v380 updateLocalMember:v386];
        }

        v128 = 0;
        contextCopy = v388;
        v66 = v394;
        v86 = selfCopy;
        goto LABEL_165;
      }

      v128 = 0;
      contextCopy = v388;
      message = v389;
      v66 = v394;
      v127 = v380;
      v86 = selfCopy;
    }

    else
    {
      v161 = +[CSDReportingController sharedInstance];
      tuConversation2 = [v380 tuConversation];
      [v161 transitionAttemptForConversation:tuConversation2];

      v164 = sub_100004778(v163);
      v86 = selfCopy;
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v464 = handleCopy;
        *&v464[8] = 2112;
        *v465 = v380;
        _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "We received a message from %@, and we found same converastion: %@ with remote members with a different groupUUID; treating as new conversation", buf, 0x16u);
      }

      v127 = 0;
      v128 = 1;
      contextCopy = v388;
      v66 = v394;
    }

    goto LABEL_164;
  }

  message = sub_100004778(v19);
  if (os_log_type_enabled(message, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, message, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipants:joinedConversationWithUpdate:joinContext: Empty joinContext", buf, 2u);
  }

LABEL_414:
}

- (void)handleParticipantWithIdentifier:(unint64_t)identifier leftConversationWithGroupUUID:(id)d fromHandle:(id)handle withGroupSessionUpdate:(id)update
{
  dCopy = d;
  handleCopy = handle;
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100004778(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134218242;
    identifierCopy3 = identifier;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Participant with identifier: %llu left conversation with groupUUID: %@", &v28, 0x16u);
  }

  if (dCopy)
  {
    clientContextData = [updateCopy clientContextData];

    if (clientContextData)
    {
      v19 = [CSDMessagingConversationParticipantDidLeaveContext alloc];
      clientContextData2 = [updateCopy clientContextData];
      v21 = [(CSDMessagingConversationParticipantDidLeaveContext *)v19 initWithData:clientContextData2];

      leaveReason = [v21 leaveReason];
      v23 = leaveReason;
      v24 = sub_100004778(leaveReason);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 134218242;
        identifierCopy3 = identifier;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Participant with identifier %llu left with leave context %@", &v28, 0x16u);
      }
    }

    else
    {
      v21 = sub_100004778(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 134217984;
        identifierCopy3 = identifier;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Participant with identifier %llu left without providing a leave context", &v28, 0xCu);
      }

      v23 = 0;
    }

    v26 = [(CSDConversationManager *)self conversationWithGroupUUID:dCopy];
    v25 = v26;
    if (v26)
    {
      [v26 removeParticipantWithIdentifier:identifier fromHandle:handleCopy withReason:v23];
    }

    else
    {
      v27 = sub_100004778(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        identifierCopy3 = dCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for group UUID %@", &v28, 0xCu);
      }
    }
  }

  else
  {
    v25 = sub_100004778(v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipantWithIdentifier:leftConversationWithGroupUUID: empty groupUUID", &v28, 2u);
    }
  }
}

- (void)removePendingMemberMatchingActiveParticipant:(id)participant conversation:(id)conversation
{
  participantCopy = participant;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingMembers = [conversationCopy pendingMembers];
  v10 = [pendingMembers count];

  if (v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    pendingMembers2 = [conversationCopy pendingMembers];
    v12 = [pendingMembers2 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (!v12)
    {
      v14 = pendingMembers2;
LABEL_16:

      goto LABEL_17;
    }

    v13 = v12;
    selfCopy = self;
    v27 = conversationCopy;
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(pendingMembers2);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        handle = [v17 handle];
        handle2 = [participantCopy handle];
        v20 = [handle isEquivalentToHandle:handle2];

        if (v20)
        {
          v21 = v17;

          v14 = v21;
        }
      }

      v13 = [pendingMembers2 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v13);

    conversationCopy = v27;
    if (v14)
    {
      v23 = sub_100004778(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [v27 UUID];
        *buf = 138412802;
        v33 = participantCopy;
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = uUID;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Active participant %@ was still listed as a pending member %@ for conversation UUID %@; did we miss an approval delegation notice?", buf, 0x20u);
      }

      pendingMembershipTracker = [(CSDConversationManager *)selfCopy pendingMembershipTracker];
      [pendingMembershipTracker stopTrackingPendingMember:v14 forConversation:v27 triggeredLocally:0];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)prepareAdditionOfActiveParticipant:(id)participant toInvitedMembersForLinkOnConversation:(id)conversation
{
  participantCopy = participant;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  link = [conversationCopy link];
  if (link)
  {
    link2 = [conversationCopy link];
    if ([link2 isLocallyCreated])
    {
      memberHandlesAwaitingInvitesToLink = [conversationCopy memberHandlesAwaitingInvitesToLink];
      v11 = [memberHandlesAwaitingInvitesToLink count];

      if (v11)
      {
        v12 = +[NSMutableArray array];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = [conversationCopy memberHandlesAwaitingInvitesToLink];
        v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v13)
        {
          v15 = *v35;
          *&v14 = 138412290;
          v26 = v14;
          do
          {
            v16 = 0;
            do
            {
              if (*v35 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v34 + 1) + 8 * v16);
              handle = [participantCopy handle];
              v19 = [v17 isEquivalentToHandle:handle];

              if (v19)
              {
                objc_initWeak(&location, self);
                v20 = TUKickMemberTimeout();
                v21 = dispatch_time(0, 1000000000 * v20);
                queue2 = [(CSDConversationManager *)self queue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10019E388;
                block[3] = &unk_10061CCB0;
                objc_copyWeak(&v32, &location);
                v30 = conversationCopy;
                v31 = v17;
                dispatch_after(v21, queue2, block);

                v24 = sub_100004778(v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v26;
                  v39 = v12;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing handles %@ from handles awaiting link invites as we have scheduled the block to add them if not kicked", buf, 0xCu);
                }

                [v12 addObject:v17];
                objc_destroyWeak(&v32);
                objc_destroyWeak(&location);
              }

              v16 = v16 + 1;
            }

            while (v13 != v16);
            v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
          }

          while (v13);
        }

        memberHandlesAwaitingInvitesToLink2 = [conversationCopy memberHandlesAwaitingInvitesToLink];
        [memberHandlesAwaitingInvitesToLink2 removeObjectsInArray:v12];
      }
    }

    else
    {
    }
  }
}

- (id)pickInitiatorFromActiveParticipants:(id)participants forUpdate:(id)update
{
  participantsCopy = participants;
  updateCopy = update;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = participantsCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  v9 = 0;
  if (v8)
  {
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if (([v12 isLightweight] & 1) == 0 && (objc_msgSend(v12, "isPseudonym") & 1) == 0)
        {
          if ([updateCopy isInitiator])
          {
            activeIDSDestination = [v12 activeIDSDestination];
            participantDestinationID = [updateCopy participantDestinationID];
            v15 = [activeIDSDestination isEqualToString:participantDestinationID];

            if (v15)
            {
              v17 = sub_100004778(v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v29 = v12;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using group session initiator as conversation initiator: %@", buf, 0xCu);
              }

              v8 = v12;
              goto LABEL_18;
            }
          }

          if (!v9)
          {
            v9 = v12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v19 = sub_100004778(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = v9;
    }

    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Picked initiator for conversation: %@", buf, 0xCu);
  }

  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = v9;
  }

  v22 = v21;

  return v21;
}

- (void)linkManager:(id)manager updatedLinkDescriptorsFromSync:(id)sync
{
  syncCopy = sync;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019E900;
  v8[3] = &unk_100619D88;
  v9 = syncCopy;
  selfCopy = self;
  v7 = syncCopy;
  dispatch_async(queue, v8);
}

- (void)linkManager:(id)manager removedLinkDescriptorsFromIDSSignal:(id)signal
{
  signalCopy = signal;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019EA68;
  v8[3] = &unk_100619D88;
  v9 = signalCopy;
  selfCopy = self;
  v7 = signalCopy;
  dispatch_async(queue, v8);
}

- (void)linkManager:(id)manager updatedLinkDescriptorsFromIDSSignal:(id)signal
{
  signalCopy = signal;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019EBD0;
  v8[3] = &unk_100619D88;
  v9 = signalCopy;
  selfCopy = self;
  v7 = signalCopy;
  dispatch_async(queue, v8);
}

- (void)linkManager:(id)manager removedLinkDescriptorsFromValidityCheck:(id)check
{
  checkCopy = check;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019ED48;
  v8[3] = &unk_100619D88;
  v9 = checkCopy;
  selfCopy = self;
  v7 = checkCopy;
  dispatch_async(queue, v8);
}

- (void)handleRemovedLinkDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManager *)self notifyDelegatesOfChangedLinkDescriptors:descriptorsCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = descriptorsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        v12 = [TUConversationLink alloc];
        v13 = [v12 initWithDescriptor:{v11, v14}];
        [(CSDConversationManager *)self sendMessagesForInvalidatedLink:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)pendingMembershipTracker:(id)tracker willAdd:(id)add to:(id)to using:(id)using
{
  trackerCopy = tracker;
  addCopy = add;
  toCopy = to;
  usingCopy = using;
  v14 = sub_100004778(usingCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [toCopy UUID];
    *buf = 138412546;
    v23 = addCopy;
    v24 = 2112;
    v25 = uUID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Membership tracker prompted response for pending member! {member: %@, conversation UUID: %@}", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10019F130;
  v18[3] = &unk_10061CCB0;
  objc_copyWeak(&v21, buf);
  v16 = toCopy;
  v19 = v16;
  v17 = addCopy;
  v20 = v17;
  [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v17 forConversation:v16 usingResponseKeyData:usingCopy approved:1 callback:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)pendingMembershipTracker:(id)tracker didTrack:(id)track forGroupUUID:(id)d
{
  trackCopy = track;
  dCopy = d;
  v9 = sub_100004778(dCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = trackCopy;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Membership tracker retained pending member because conversation does not yet exist {member: %@, groupUUID: %@}", &v12, 0x16u);
  }

  v10 = [(CSDConversationManager *)self conversationLinkForGroupUUID:dCopy];
  if (v10)
  {
    [(CSDConversationManager *)self notifyDelegatesOfTrackedPendingMember:trackCopy forConversationLink:v10];
    [(CSDConversationManager *)self notifyDelegatesOfUpdatePendingConversations];
  }

  else
  {
    v11 = sub_100004778(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = trackCopy;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No link was found; ignoring tracked pending member {member: %@, groupUUID: %@}", &v12, 0x16u);
    }
  }
}

- (void)pendingMembershipTracker:(id)tracker willNotAdd:(id)add to:(id)to using:(id)using
{
  addCopy = add;
  toCopy = to;
  usingCopy = using;
  v12 = sub_100004778(usingCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = addCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Membership not adding pending member! {member: %@}", buf, 0xCu);
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if (([featureFlags groupFacetimeAsAServiceEnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  provider = [toCopy provider];

  if (!provider)
  {
LABEL_7:
    service = [(CSDConversationManager *)self service];
    goto LABEL_8;
  }

  v15 = +[CSDConversationProviderManager sharedInstance];
  provider2 = [toCopy provider];
  service = [v15 serviceForProvider:provider2];

LABEL_8:
  [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:addCopy forConversation:toCopy usingResponseKeyData:usingCopy approved:0 callback:0];

  handle = [addCopy handle];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10019F5A0;
  v20[3] = &unk_10061A4C0;
  v21 = addCopy;
  v19 = addCopy;
  [service noteDismissedHandle:handle completionHandle:v20];
}

- (void)sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member
{
  memberCopy = member;
  dCopy = d;
  linkCopy = link;
  conversationCopy = conversation;
  toCopy = to;
  v17 = sub_100004778(toCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Asked to send delegation message!", v22, 2u);
  }

  v18 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v20 = [(CSDMessagingConversationMessage *)v18 initWithType:14 groupUUID:groupUUID link:0];

  nickname = [memberCopy nickname];
  [(CSDMessagingConversationMessage *)v20 setNickname:nickname];

  [(CSDConversationManager *)self _sendDelegationMessageTo:toCopy conversation:conversationCopy link:linkCopy transactionUUID:dCopy forMember:memberCopy withMessage:v20];
}

- (void)sendDelegationResponseMessageTo:(id)to conversation:(id)conversation transactionUUID:(id)d forMember:(id)member withResponse:(BOOL)response
{
  responseCopy = response;
  memberCopy = member;
  dCopy = d;
  conversationCopy = conversation;
  toCopy = to;
  v16 = sub_100004778(toCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (responseCopy)
    {
      v17 = @"YES";
    }

    v22 = 138412290;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Asked to send delegation response message! {withResponse: %@}", &v22, 0xCu);
  }

  v18 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v20 = [(CSDMessagingConversationMessage *)v18 initWithType:15 groupUUID:groupUUID link:0];

  [(CSDMessagingConversationMessage *)v20 setIsLetMeInApproved:responseCopy];
  nickname = [memberCopy nickname];
  [(CSDMessagingConversationMessage *)v20 setNickname:nickname];

  [(CSDConversationManager *)self _sendDelegationMessageTo:toCopy conversation:conversationCopy link:0 transactionUUID:dCopy forMember:memberCopy withMessage:v20];
}

- (void)_sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member withMessage:(id)message
{
  toCopy = to;
  conversationCopy = conversation;
  linkCopy = link;
  dCopy = d;
  memberCopy = member;
  messageCopy = message;
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    if (conversationCopy | linkCopy)
    {
      if (conversationCopy)
      {
        v21 = conversationCopy;
        goto LABEL_9;
      }
    }

    else
    {
      groupUUID = [0 groupUUID];
      if (groupUUID)
      {
      }

      else
      {
        originatorHandle = [0 originatorHandle];

        if (!originatorHandle)
        {
          v29 = sub_100004778(v23);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100478A8C();
          }

          goto LABEL_39;
        }
      }
    }

    v21 = linkCopy;
LABEL_9:
    groupUUID2 = [v21 groupUUID];
    v24 = [toCopy count];
    data = sub_100004778(v24);
    v26 = os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT);
    if (!v24)
    {
      if (v26)
      {
        *buf = 138412802;
        v29 = groupUUID2;
        v71 = groupUUID2;
        v72 = 2112;
        v73 = dCopy;
        v74 = 2112;
        v75 = memberCopy;
        _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_DEFAULT, "Not sending delegation message because no handles were specified! {groupUUID: %@, transactionUUID: %@, pendingMember: %@}", buf, 0x20u);
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

LABEL_37:
      v29 = groupUUID2;
      goto LABEL_38;
    }

    if (v26)
    {
      *buf = 138413058;
      v71 = toCopy;
      v72 = 2112;
      v73 = groupUUID2;
      v74 = 2112;
      v75 = dCopy;
      v76 = 2112;
      v77 = memberCopy;
      _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_DEFAULT, "Asked to send delegation message {handles: %@, groupUUID: %@, transactionUUID: %@, pendingMember: %@}", buf, 0x2Au);
    }

    [messageCopy setConversationGroupUUID:groupUUID2];
    idsDestination = [memberCopy idsDestination];
    [messageCopy setLetMeInDelegationHandle:idsDestination];

    uUIDString = [dCopy UUIDString];
    [messageCopy setLetMeInDelegationUUID:uUIDString];

    data = [messageCopy data];
    v57 = dCopy;
    if (conversationCopy)
    {
      localMember = [conversationCopy localMember];
    }

    else
    {
      v30 = [TUConversationMember alloc];
      originatorHandle2 = [linkCopy originatorHandle];
      localMember = [v30 initWithHandle:originatorHandle2];
    }

    featureFlags = [(CSDConversationManager *)self featureFlags];
    v60 = toCopy;
    v58 = linkCopy;
    v56 = memberCopy;
    if ([featureFlags groupFacetimeAsAServiceEnabled])
    {
      provider = [conversationCopy provider];

      if (provider)
      {
        v34 = +[CSDConversationProviderManager sharedInstance];
        provider2 = [conversationCopy provider];
        service = [v34 serviceForProvider:provider2];

LABEL_22:
        handle = [localMember handle];
        value = [handle value];
        v55 = service;
        v59 = [service accountWithCallerID:value];

        v39 = +[NSMutableSet set];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v40 = v60;
        v41 = [v40 countByEnumeratingWithState:&v63 objects:v69 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v64;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v64 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = TUCopyIDSCanonicalAddressForHandle();
              [v39 addObject:v45];
            }

            v42 = [v40 countByEnumeratingWithState:&v63 objects:v69 count:16];
          }

          while (v42);
        }

        v67 = IDSSendMessageOptionPublicMessageIntentKey;
        v68 = &off_10063ED38;
        v46 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v47 = [v46 mutableCopy];

        capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];
        if (capabilitySendMessageOptions)
        {
          [v47 addEntriesFromDictionary:capabilitySendMessageOptions];
        }

        sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
        provider3 = [conversationCopy provider];
        v51 = (sendDataBlock)[2](sendDataBlock, data, v59, v39, localMember, v47, 0, 0, provider3);

        v53 = sub_100004778(v52);
        v54 = v53;
        linkCopy = v58;
        if (v51)
        {
          memberCopy = v56;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Sent delegation request!!!", buf, 2u);
          }
        }

        else
        {
          memberCopy = v56;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            sub_100478A50();
          }
        }

        toCopy = v60;
        dCopy = v57;
        goto LABEL_37;
      }
    }

    else
    {
    }

    service = [(CSDConversationManager *)self service];
    goto LABEL_22;
  }

LABEL_40:
}

- (void)foundAvailableAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = sub_100004778(advertisementCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = advertisementCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying of found advertisement: %@", buf, 0xCu);
  }

  advertisementsBySessionUUID = [(CSDConversationManager *)self advertisementsBySessionUUID];
  sessionUUID = [advertisementCopy sessionUUID];
  [advertisementsBySessionUUID setObject:advertisementCopy forKeyedSubscript:sessionUUID];

  queue = [(CSDConversationManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A0088;
  v10[3] = &unk_100619D88;
  v11 = advertisementCopy;
  selfCopy = self;
  v9 = advertisementCopy;
  dispatch_async(queue, v10);
}

- (void)lostAvailableAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = sub_100004778(advertisementCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = advertisementCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying of lost advertisement: %@", buf, 0xCu);
  }

  advertisementsBySessionUUID = [(CSDConversationManager *)self advertisementsBySessionUUID];
  sessionUUID = [advertisementCopy sessionUUID];
  [advertisementsBySessionUUID setObject:0 forKeyedSubscript:sessionUUID];

  queue = [(CSDConversationManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A05B4;
  v10[3] = &unk_100619D88;
  v11 = advertisementCopy;
  selfCopy = self;
  v9 = advertisementCopy;
  dispatch_async(queue, v10);
}

- (void)fetchActiveActivitySessionContainersWithCompletion:(id)completion
{
  completionCopy = completion;
  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  [activitySessionContainerProvider activeActivitySessionContainersWithCompletionHandler:completionCopy];
}

- (void)requestUpdatedActivitySessionContainers
{
  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  [activitySessionContainerProvider sendLatestContainersToObservers];
}

- (BOOL)hasActiveActivitySessionContainer
{
  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  hasActiveActivitySessionContainer = [activitySessionContainerProvider hasActiveActivitySessionContainer];

  return hasActiveActivitySessionContainer;
}

- (void)screenSharingActivityManager:(id)manager receivedUpdatedRemoteAttributes:(id)attributes isLocallySharing:(BOOL)sharing
{
  attributesCopy = attributes;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0B0C;
  block[3] = &unk_100619F48;
  sharingCopy = sharing;
  v11 = attributesCopy;
  selfCopy = self;
  v9 = attributesCopy;
  dispatch_async(queue, block);
}

- (void)screenSharingActivityManager:(id)manager invalidatedSessionWithReason:(id)reason wasLocallySharing:(BOOL)sharing
{
  reasonCopy = reason;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0CAC;
  block[3] = &unk_100619F48;
  sharingCopy = sharing;
  block[4] = self;
  v11 = reasonCopy;
  v9 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)updateRemoteControlStatus:(int64_t)status onConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0F8C;
  block[3] = &unk_100619F20;
  selfCopy = self;
  statusCopy = status;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)applicationPolicyManager:(id)manager authorizationChangedForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v7 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v13 = [delegateToQueue2 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A12EC;
          block[3] = &unk_100619E58;
          block[4] = v11;
          block[5] = self;
          v16 = identifierCopy;
          dispatch_async(v13, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)systemStateObserver:(id)observer sharePlayAllowedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (changedCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SharePlay allowed: %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v10 = [delegateToQueue countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue2 objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A165C;
          block[3] = &unk_100619F48;
          block[4] = v14;
          block[5] = self;
          v34 = changedCopy;
          dispatch_async(v16, block);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [delegateToQueue countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = observerToQueue;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          v25 = [v19 objectForKey:v24];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001A166C;
          v27[3] = &unk_100619F48;
          v27[4] = v24;
          v27[5] = self;
          v28 = changedCopy;
          dispatch_async(v25, v27);
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v21);
  }
}

- (void)systemStateObserver:(id)observer screenSharingAllowedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (changedCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Screen sharing allowed: %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v10 = [delegateToQueue countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue2 objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A19DC;
          block[3] = &unk_100619F48;
          block[4] = v14;
          block[5] = self;
          v34 = changedCopy;
          dispatch_async(v16, block);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [delegateToQueue countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = observerToQueue;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          v25 = [v19 objectForKey:v24];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001A19EC;
          v27[3] = &unk_100619F48;
          v27[4] = v24;
          v27[5] = self;
          v28 = changedCopy;
          dispatch_async(v25, v27);
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v21);
  }
}

- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination
{
  lCopy = l;
  metadataCopy = metadata;
  destinationCopy = destination;
  queue = [(CSDConversationManager *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A1AFC;
  v17[3] = &unk_10061A450;
  v18 = lCopy;
  v19 = metadataCopy;
  selfCopy = self;
  v21 = destinationCopy;
  v14 = destinationCopy;
  v15 = metadataCopy;
  v16 = lCopy;
  dispatch_async(queue, v17);
}

- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  lCopy = l;
  v8 = sub_100004778(lCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = successfullyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resource transfer did initiate successfully: %d", buf, 8u);
  }

  queue = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A2018;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = lCopy;
  v10 = lCopy;
  dispatch_async(queue, v11);
}

- (void)sendWithMessage:(id)message toHandle:(id)handle fromHandle:(id)fromHandle
{
  messageCopy = message;
  handleCopy = handle;
  fromHandleCopy = fromHandle;
  v11 = sub_100004778(fromHandleCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = messageCopy;
    v23 = 2112;
    v24 = fromHandleCopy;
    v25 = 2112;
    v26 = handleCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Sending SharePlayAvailable message %@ from handle %@ to handle %@", buf, 0x20u);
  }

  service = [(CSDConversationManager *)self service];
  value = [fromHandleCopy value];
  v14 = [service accountWithCallerID:value];

  v15 = [[TUConversationMember alloc] initWithHandle:fromHandleCopy];
  v16 = TUCopyIDSCanonicalAddressForHandle();
  v17 = [NSSet setWithObject:v16];

  v18 = [[CSDMessagingConversationMessage alloc] initWithType:37 groupUUID:0 link:0];
  [(CSDMessagingConversationMessage *)v18 setSharePlayAvailable:messageCopy];
  sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
  data = [(CSDMessagingConversationMessage *)v18 data];
  (sendDataBlock)[2](sendDataBlock, data, v14, v17, v15, 0, 0, 0, 0);
}

- (void)setIsHeld:(BOOL)held forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A239C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  heldCopy = held;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setProvider:(id)provider forConversationUUID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A25A4;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (CSDConduitIDSProxy)messageProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_messageProxy);

  return WeakRetained;
}

- (id)activityAuthorizationStatePresentAlertIfIncapable:(BOOL)incapable
{
  selfCopy = self;
  v5 = CSDConversationManager.activityAuthorizationState(presentAlertIfIncapable:)(incapable);

  return v5;
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity onContainerWithID:(NSUUID *)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = activity;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  activityCopy = activity;
  dCopy = d;
  selfCopy = self;

  sub_10044D610(&unk_10057F8D0, v9);
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_10044D610(&unk_10057F898, v5);
}

- (void)requestAuthorizationForActivity:(TUConversationActivity *)activity withOptions:(unint64_t)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = activity;
  v9[3] = options;
  v9[4] = v8;
  v9[5] = self;
  activityCopy = activity;
  selfCopy = self;

  sub_10044D610(&unk_100587E88, v9);
}

@end