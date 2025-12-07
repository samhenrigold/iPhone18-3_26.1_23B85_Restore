@interface CSDConversation
- (BOOL)_addActiveParticipantIsDisallowedByGreenTea:(id)tea;
- (BOOL)_endScreenCallIfNecessary;
- (BOOL)_expanseEnabled;
- (BOOL)_joinIsDisallowedByGreenTeaWithContext:(id)context;
- (BOOL)_shouldSendSetParticipantType:(unint64_t)type;
- (BOOL)activitySessionManager:(id)manager activitySessionIsJoinable:(id)joinable;
- (BOOL)activitySessionManagerShouldSupportEndOnlyForMe:(id)me;
- (BOOL)allowsScreenSharing;
- (BOOL)containsMemberWithHandle:(id)handle;
- (BOOL)isAnyOtherAccountDeviceActive;
- (BOOL)isAudioEnabled;
- (BOOL)isAudioPaused;
- (BOOL)isAudioReady;
- (BOOL)isFromStorage;
- (BOOL)isNearbySession;
- (BOOL)isOneToOneHandoffOngoing;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isRedirectingAudio;
- (BOOL)isRelaying;
- (BOOL)isRepresentedByRemoteMembers:(id)members andLink:(id)link;
- (BOOL)isScreenEnabled;
- (BOOL)isScreenSharingInitiationAvailable;
- (BOOL)isScreening;
- (BOOL)isUplinkMuted;
- (BOOL)isVideo;
- (BOOL)isVideoEnabled;
- (BOOL)isVideoPaused;
- (BOOL)remoteJoinedActivity:(id)activity;
- (BOOL)setConversationLink:(id)link allowUpdate:(BOOL)update;
- (BOOL)setStagedActivitySessionForActivitySession:(id)session;
- (BOOL)shouldRespondToLetMeInRequestForMember:(id)member;
- (BOOL)supportsLeaveContext;
- (CGRect)presentationRect;
- (CGSize)localPortraitAspectRatio;
- (CSDConversation)initWithQueue:(id)queue UUID:(id)d groupUUID:(id)iD groupSession:(id)session messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)self0 remoteMembers:(id)self1 pendingMembers:(id)self2 otherInvitedHandles:(id)self3 lightweightMembers:(id)self4 activity:(id)self5 link:(id)self6 report:(id)self7 fromStorage:(BOOL)self8 avMode:(unint64_t)self9 presentationMode:(unint64_t)presentationMode applicationController:(id)controller;
- (CSDConversation)initWithQueue:(id)queue UUID:(id)d groupUUID:(id)iD groupSession:(id)session messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)self0 remoteMembers:(id)self1 pendingMembers:(id)self2 otherInvitedHandles:(id)self3 lightweightMembers:(id)self4 remotePushTokens:(id)self5 activity:(id)self6 link:(id)self7 report:(id)self8 fromStorage:(BOOL)self9 avMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode applicationController:(id)controller featureFlags:(id)flags systemStateObserver:(id)observer applicationPolicyManager:(id)manager screenSharingRequest:(id)request testConfiguration:(id)configuration;
- (CSDConversation)initWithQueue:(id)queue UUID:(id)d groupUUID:(id)iD groupSession:(id)session messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)self0 remoteMembers:(id)self1 pendingMembers:(id)self2 otherInvitedHandles:(id)self3 lightweightMembers:(id)self4 remotePushTokens:(id)self5 activity:(id)self6 link:(id)self7 report:(id)self8 fromStorage:(BOOL)self9 avMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode applicationController:(id)controller featureFlags:(id)flags systemStateObserver:(id)observer applicationPolicyManager:(id)manager screenSharingRequest:(id)request testConfiguration:(id)configuration isOldMessage:(BOOL)message;
- (CSDConversationDelegate)delegate;
- (CSDConversationParticipant)localCSDParticipant;
- (FTDeviceSupport)deviceSupport;
- (NSDictionary)capabilitySendMessageOptions;
- (NSSet)activeLightweightParticipants;
- (NSSet)activeRemoteParticipants;
- (NSSet)activitySessions;
- (NSSet)memberHandlesEligibleForLinkApproval;
- (NSSet)memberIdentifiers;
- (NSSet)screenSharingRequests;
- (NSSet)tuActivitySessions;
- (NSSet)virtualParticipants;
- (NSString)description;
- (TUConversation)tuConversation;
- (TUConversationParticipant)localParticipant;
- (TUVideoDeviceController)videoDeviceController;
- (id)_allMembers;
- (id)_stableExpanseIdentifier;
- (id)activeParticipants;
- (id)activitySessionManagerRequestedCallTypeStringForLogging:(id)logging;
- (id)avcSessionIdentifier;
- (id)createActivitySession:(id)session isAutoStartedStagedActivity:(BOOL)activity;
- (id)createStagedActivitySessionForActivity:(id)activity;
- (id)localCSDConversationParticipant;
- (id)localConversationParticipantWithData;
- (id)localConversationParticipantWithDataToSendToDestinationIDs:(id)ds;
- (id)localParticipantCapabilities;
- (id)localParticipantData;
- (id)localParticipantDataToSendToDestinationIDs:(id)ds;
- (id)memberWithHandle:(id)handle;
- (id)onlyAvailableSessionConversationParticipant:(id)participant;
- (id)reducedInfoMembers:(id)members;
- (id)remoteMemberForHandle:(id)handle;
- (id)remoteParticipantForHandle:(id)handle;
- (id)remoteParticipantForIdentifier:(unint64_t)identifier;
- (id)session:(id)session conversationParticipantWithParticipantIdentifier:(unint64_t)identifier;
- (id)setupNewAVCSession:(BOOL)session;
- (id)tuSystemActivitySessions;
- (int)_errorToAVCProviderEndedReason:(id)reason defaultProviderReason:(int)providerReason;
- (int)presentationState;
- (int64_t)activeRemoteParticipantCountMinusEligibleAVLess;
- (int64_t)avcLocalCaptionsToken;
- (int64_t)avcSessionToken;
- (int64_t)maxVideoDecodesAllowed;
- (unint64_t)_resolvedNearbyTimeOut;
- (unint64_t)activitySessionManager:(id)manager localParticipantAliasForBundleIdentifier:(id)identifier;
- (unint64_t)localParticipantIdentifier;
- (void)_addParticipantsWaitingToBeAddedToAVCSession;
- (void)_addRemoteParticipantToAVCSessionIfPossible:(id)possible;
- (void)_allowMember:(id)member;
- (void)_applyUpdateFromDataBlobForRemoteParticipant:(id)participant participantIdentifier:(unint64_t)identifier;
- (void)_beginTimeoutForLeavingConversationWithReason:(id)reason;
- (void)_cancelInFlightAVCBlobRecoveryIfNecessary;
- (void)_cancelTimeoutForLeavingConversation;
- (void)_cleanUpConversation;
- (void)_cleanUpFromAVCSessionFailure;
- (void)_cleanUpHandoffMetricsIfNecessary;
- (void)_emitRTCConnectionSetupEvent:(int64_t)event participantIdentifier:(unint64_t)identifier;
- (void)_emitRTCConnectionSetupEventForAddActiveParticipant:(id)participant;
- (void)_endCallIfNecessary;
- (void)_generateHandoffReportIfNecessaryForUpdatedParticipantID:(unint64_t)d isAddParticipant:(BOOL)participant;
- (void)_handleStateChanged:(int64_t)changed oldState:(int64_t)state;
- (void)_launchApplicationDueToActivityCreation:(id)creation;
- (void)_launchApplicationForActivityIfNecessary:(id)necessary;
- (void)_launchApplicationForActivityIfNecessary:(id)necessary shouldForeground:(BOOL)foreground;
- (void)_launchApplicationsForActivitiesIfNecessary;
- (void)_launchApplicationsForActivitiesIfNecessary:(BOOL)necessary;
- (void)_pruneRemoteParticipantsIfNecessary;
- (void)_recomputeAudioStates;
- (void)_registerPluginsIfNecessary;
- (void)_removeMemberFromPendingMemberListForParticipant:(id)participant;
- (void)_reportConversationFailedWithFailureReason:(int64_t)reason providerEndedReason:(unint64_t)endedReason;
- (void)_reportConversationFailedWithProviderEndedReason:(unint64_t)reason;
- (void)_requestAVCBlobsIfNecessary;
- (void)_restartIDSSessionIfNecessary;
- (void)_showLetMeInUIIfNecessary;
- (void)_startAVCSessionIfNecessary;
- (void)_startIDSSessionWithContext:(id)context;
- (void)_stopAVCSession;
- (void)_updateParticipantTypesForAddedParticipant:(id)participant;
- (void)activitySessionManager:(id)manager activityChangedOnSession:(id)session;
- (void)activitySessionManager:(id)manager activitySessionAssociatedSceneChanged:(id)changed;
- (void)activitySessionManager:(id)manager activitySessionChanged:(id)changed;
- (void)activitySessionManager:(id)manager activitySessionRemoved:(id)removed userOriginated:(BOOL)originated;
- (void)activitySessionManager:(id)manager activitySessionStateChanged:(id)changed oldState:(unint64_t)state;
- (void)activitySessionManager:(id)manager fetchDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)activitySessionManager:(id)manager participantWithIdentifier:(unint64_t)identifier bundleIdentifier:(id)bundleIdentifier includeLocalParticipant:(BOOL)participant completionHandler:(id)handler;
- (void)activitySessionManager:(id)manager receivedActivitySessionEvent:(id)event;
- (void)activitySessionManager:(id)manager requestEncryptionKeysForParticipants:(id)participants topicName:(id)name;
- (void)activitySessionManager:(id)manager requestForegroundPresentationForActivity:(id)activity;
- (void)activitySessionManager:(id)manager requestedEndpointWithIdentifier:(id)identifier activitySession:(id)session completion:(id)completion;
- (void)activitySessionManager:(id)manager sendResourceAtURL:(id)l toParticipants:(id)participants metadata:(id)metadata activitySessionUUID:(id)d completion:(id)completion;
- (void)activitySessionManager:(id)manager sessionUnjoined:(id)unjoined startDate:(id)date endDate:(id)endDate;
- (void)activitySessionManager:(id)manager shouldRegisterPlugin:(id)plugin;
- (void)activitySessionManager:(id)manager tuActivitySessionsDidChange:(id)change;
- (void)addActiveParticipant:(id)participant;
- (void)addAliasesToConversationContainer:(id)container forBundleIdentifier:(id)identifier;
- (void)addHighlightIdentifier:(id)identifier;
- (void)addPendingMembers:(id)members triggeredLocally:(BOOL)locally;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences addingFromLetMeIn:(BOOL)in triggeredLocally:(BOOL)locally;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences triggeredLocally:(BOOL)locally;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles triggeredLocally:(BOOL)locally;
- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)addScreenSharingRequest:(id)request;
- (void)addScreenSharingType:(unint64_t)type;
- (void)addVirtualParticipant:(id)participant;
- (void)addedRemoteParticipantWithIdentifier:(unint64_t)identifier updatedAudioEnabled:(BOOL)enabled updatedVideoEnabled:(BOOL)videoEnabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken;
- (void)audioPolicyManager:(id)manager sharePlayAllowedStateChanged:(BOOL)changed;
- (void)broadcastLocalParticipantData;
- (void)cleanUpIDSSessionState;
- (void)continueHandoffAudioRouteForIdentifier:(unint64_t)identifier participantLeft:(BOOL)left;
- (void)executeSessionDidStart;
- (void)fulfillLocalScreenShareRequests;
- (void)fulfillPendingScreenSharingRequestsForRemoteParticipant:(id)participant;
- (void)handleRemoteControlStatusChanged:(int64_t)changed;
- (void)joinUsingContext:(id)context;
- (void)kickMember:(id)member;
- (void)leaveActivitySessionWithUUID:(id)d;
- (void)leaveUsingContext:(id)context;
- (void)leaveWithReason:(unint64_t)reason;
- (void)postSharePlayActivityDidChangeNotificationIfNecessary:(id)necessary;
- (void)postUserNotificationForUnsupportedScreenSharingActivity:(id)activity alternateReponseHandler:(id)handler;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d;
- (void)refreshActiveParticipantsList;
- (void)registerMessagesGroupAssociation;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier cameraMixedWithScreenDidChange:(BOOL)change;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier didChangeAudioPriority:(int64_t)priority videoPriority:(int64_t)videoPriority;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier didReact:(id)react;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedAudioEnabled:(BOOL)enabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedAudioPaused:(BOOL)paused streamToken:(int64_t)token;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedScreenEnabled:(BOOL)enabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken;
- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedVideoEnabled:(BOOL)enabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken;
- (void)removeActivitySessionIfNecessary;
- (void)removeActivitySessionWithUUID:(id)d usingTerminatingHandle:(id)handle;
- (void)removeHighlightIdentifier:(id)identifier;
- (void)removeNearbyMemberWithHandleIfNecessary:(id)necessary;
- (void)removeParticipantWithIdentifier:(unint64_t)identifier fromHandle:(id)handle withReason:(unint64_t)reason;
- (void)removeParticipantsForMember:(id)member;
- (void)removePendingMembers:(id)members triggeredLocally:(BOOL)locally;
- (void)removeRemoteMembers:(id)members triggeredLocally:(BOOL)locally;
- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)removeScreenSharingRequest:(id)request;
- (void)removeVirtualParticipant:(id)participant;
- (void)removedRemoteParticipantWithIdentifier:(unint64_t)identifier didSucceed:(BOOL)succeed;
- (void)resetAVCSession;
- (void)resetActivitySessionSceneAssociationsForBundleID:(id)d;
- (void)resetConversation;
- (void)reviveOrInvalidateCachedConversationIfNecessary;
- (void)serverDisconnectedForSession:(id)session;
- (void)session:(id)session cameraMixedWithScreenDidChange:(BOOL)change;
- (void)session:(id)session changedBytesOfDataUsed:(int64_t)used;
- (void)session:(id)session changedLocalAudioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session changedLocalAudioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session changedLocalVideoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session changedLocalVideoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session changedScreenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session didDetectError:(id)error;
- (void)session:(id)session didJoinGroup:(BOOL)group participantIdentifiers:(id)identifiers error:(id)error;
- (void)session:(id)session didLeaveGroupWithError:(id)error;
- (void)session:(id)session didReceiveData:(id)data dataType:(unsigned __int16)type forParticipant:(id)participant;
- (void)session:(id)session didReceiveDataBlob:(id)blob forParticipant:(id)participant;
- (void)session:(id)session didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveKickedParticipantIDs:(id)ds withCode:(unsigned int)code withType:(unsigned __int16)type isTruncated:(BOOL)truncated;
- (void)session:(id)session didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveLocalParticipantType:(unsigned __int16)type requestIdentifier:(unint64_t)identifier error:(id)error;
- (void)session:(id)session didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveReport:(id)report;
- (void)session:(id)session didReceiveServerErrorCode:(unsigned int)code;
- (void)session:(id)session didReceiveUnderlyingLinksStatus:(BOOL)status;
- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info;
- (void)session:(id)session didStart:(BOOL)start error:(id)error;
- (void)session:(id)session didStopWithError:(id)error;
- (void)session:(id)session didUnregisterPluginAllocationInfo:(id)info;
- (void)session:(id)session endedWithError:(id)error reason:(unsigned int)reason;
- (void)session:(id)session localParticipantDidReact:(id)react;
- (void)session:(id)session receivedActiveLightweightParticipantDestinationsByIdentifier:(id)identifier;
- (void)session:(id)session receivedActiveParticipantDestinationsByIdentifier:(id)identifier;
- (void)session:(id)session requestedOneToOneModeEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session screenCaptureDidStart:(BOOL)start withError:(id)error;
- (void)session:(id)session screenCaptureDidStop:(BOOL)stop withError:(id)error;
- (void)session:(id)session screenShareAttributesUpdated:(id)updated;
- (void)sessionDidReceiveKeyUpdate:(id)update;
- (void)sessionDidTerminate:(id)terminate;
- (void)sessionLocalParticipantDidStopReacting:(id)reacting;
- (void)sessionShouldReconnect:(id)reconnect;
- (void)setActiveLightweightParticipantDestinationsByIdentifier:(id)identifier;
- (void)setActiveParticipantDestinationsByIdentifier:(id)identifier;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setAudioInjectionAllowed:(BOOL)allowed;
- (void)setAudioPaused:(BOOL)paused;
- (void)setConversationGridDisplayMode:(unint64_t)mode;
- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants;
- (void)setForceExpanseEnabled:(BOOL)enabled;
- (void)setFromStorage:(BOOL)storage;
- (void)setIDSAliasingSalt:(id)salt onContainer:(id)container;
- (void)setIsHeld:(BOOL)held;
- (void)setIsNearbySharePlay:(BOOL)play;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode;
- (void)setMemberIdentifiers:(id)identifiers;
- (void)setOneToOneModeEnabled:(BOOL)enabled;
- (void)setParticipantAudioVideoMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode forParticipant:(id)participant;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setPresentationRect:(CGRect)rect;
- (void)setPresentationState:(int)state;
- (void)setProvider:(id)provider;
- (void)setRelaying:(BOOL)relaying;
- (void)setRemoteMembers:(id)members;
- (void)setRemoteParticipantType:(unsigned __int16)type participant:(id)participant;
- (void)setRemoteParticipantsDownlinkMuted:(BOOL)muted;
- (void)setScreenEnabled:(BOOL)enabled attributes:(id)attributes;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setScreening:(BOOL)screening;
- (void)setSharePlayHandedOff:(BOOL)off;
- (void)setSplitSessionSecondary:(id)secondary;
- (void)setState:(int64_t)state;
- (void)setUplinkMuted:(BOOL)muted;
- (void)setUsingAirplay:(BOOL)airplay forActivitySessionUUID:(id)d;
- (void)setVideo:(BOOL)video;
- (void)setVideoEnabled:(BOOL)enabled;
- (void)setVideoPaused:(BOOL)paused;
- (void)startAudio;
- (void)startTimeOutForNearbyMembers:(id)members;
- (void)startTimeOutForNearbySession;
- (void)stopContentSharingSession;
- (void)switchBackToOneToOneIfPossibleUsingDelay:(BOOL)delay;
- (void)systemStateObserver:(id)observer screenSharingAllowedStateChanged:(BOOL)changed;
- (void)systemStateObserver:(id)observer screenSharingInitiationAllowedStateChanged:(BOOL)changed;
- (void)updateConversationParticipantToHaveMatchingSiriDisplayName:(id)name;
- (void)updateLightweightMember:(id)member;
- (void)updateLocalAspectRatios;
- (void)updateLocalParticipantCluster:(id)cluster;
- (void)updateLocalParticipantInfo;
- (void)updateMemberValidationSource:(id)source source:(int64_t)a4;
- (void)updateMessagesGroupName:(id)name;
- (void)updateOneToOneModeForParticipantUpdateType:(unsigned __int16)type participant:(id)participant;
- (void)updateParticipantPresentationContexts:(id)contexts;
- (void)updateParticipantsWithDestinationIdentifiers:(id)identifiers;
- (void)updateRemoteMember:(id)member;
- (void)updateReportInfoForHandoffParticipant:(id)participant;
- (void)updateScreenEnabledForRemoteParticipants:(BOOL)participants;
@end

@implementation CSDConversation

- (CSDConversation)initWithQueue:(id)queue UUID:(id)d groupUUID:(id)iD groupSession:(id)session messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)self0 remoteMembers:(id)self1 pendingMembers:(id)self2 otherInvitedHandles:(id)self3 lightweightMembers:(id)self4 activity:(id)self5 link:(id)self6 report:(id)self7 fromStorage:(BOOL)self8 avMode:(unint64_t)self9 presentationMode:(unint64_t)presentationMode applicationController:(id)controller
{
  createdCopy = created;
  controllerCopy = controller;
  reportCopy = report;
  linkCopy = link;
  activityCopy = activity;
  lightweightMembersCopy = lightweightMembers;
  handlesCopy = handles;
  pendingMembersCopy = pendingMembers;
  membersCopy = members;
  initiatorCopy = initiator;
  memberCopy = member;
  uIDCopy = uID;
  sessionCopy = session;
  iDCopy = iD;
  dCopy = d;
  queueCopy = queue;
  v39 = objc_alloc_init(TUFeatureFlags);
  LOBYTE(v27) = storage;
  v42 = [(CSDConversation *)self initWithQueue:queueCopy UUID:dCopy groupUUID:iDCopy groupSession:sessionCopy messagesGroupUUID:uIDCopy locallyCreated:createdCopy localMember:memberCopy initiator:initiatorCopy remoteMembers:membersCopy pendingMembers:pendingMembersCopy otherInvitedHandles:handlesCopy lightweightMembers:lightweightMembersCopy remotePushTokens:0 activity:activityCopy link:linkCopy report:reportCopy fromStorage:v27 avMode:mode presentationMode:presentationMode applicationController:controllerCopy featureFlags:v39 systemStateObserver:0 applicationPolicyManager:0 screenSharingRequest:0 testConfiguration:0];

  return v42;
}

- (CSDConversation)initWithQueue:(id)queue UUID:(id)d groupUUID:(id)iD groupSession:(id)session messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)self0 remoteMembers:(id)self1 pendingMembers:(id)self2 otherInvitedHandles:(id)self3 lightweightMembers:(id)self4 remotePushTokens:(id)self5 activity:(id)self6 link:(id)self7 report:(id)self8 fromStorage:(BOOL)self9 avMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode applicationController:(id)controller featureFlags:(id)flags systemStateObserver:(id)observer applicationPolicyManager:(id)manager screenSharingRequest:(id)request testConfiguration:(id)configuration
{
  LOBYTE(v29) = 0;
  LOBYTE(v28) = storage;
  return [(CSDConversation *)self initWithQueue:queue UUID:d groupUUID:iD groupSession:session messagesGroupUUID:uID locallyCreated:created localMember:member initiator:initiator remoteMembers:members pendingMembers:pendingMembers otherInvitedHandles:handles lightweightMembers:lightweightMembers remotePushTokens:tokens activity:activity link:link report:report fromStorage:v28 avMode:mode presentationMode:presentationMode applicationController:controller featureFlags:flags systemStateObserver:observer applicationPolicyManager:manager screenSharingRequest:request testConfiguration:configuration isOldMessage:v29];
}

- (CSDConversation)initWithQueue:(id)queue UUID:(id)d groupUUID:(id)iD groupSession:(id)session messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)self0 remoteMembers:(id)self1 pendingMembers:(id)self2 otherInvitedHandles:(id)self3 lightweightMembers:(id)self4 remotePushTokens:(id)self5 activity:(id)self6 link:(id)self7 report:(id)self8 fromStorage:(BOOL)self9 avMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode applicationController:(id)controller featureFlags:(id)flags systemStateObserver:(id)observer applicationPolicyManager:(id)manager screenSharingRequest:(id)request testConfiguration:(id)configuration isOldMessage:(BOOL)message
{
  createdCopy = created;
  queueCopy = queue;
  dCopy = d;
  iDCopy = iD;
  sessionCopy = session;
  sessionCopy2 = session;
  uIDCopy = uID;
  memberCopy = member;
  initiatorCopy = initiator;
  membersCopy = members;
  pendingMembersCopy = pendingMembers;
  handlesCopy = handles;
  lightweightMembersCopy = lightweightMembers;
  tokensCopy = tokens;
  activityCopy = activity;
  linkCopy = link;
  reportCopy = report;
  controllerCopy = controller;
  flagsCopy = flags;
  observerCopy = observer;
  managerCopy = manager;
  requestCopy = request;
  configurationCopy = configuration;
  v178.receiver = self;
  v178.super_class = CSDConversation;
  v32 = [(CSDConversation *)&v178 init];
  v33 = v32;
  if (v32)
  {
    v34 = sub_100004778(v32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"NO";
      *buf = 138413826;
      v181 = dCopy;
      if (createdCopy)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      if (message)
      {
        v35 = @"YES";
      }

      v182 = 2112;
      v183 = iDCopy;
      v184 = 2112;
      v185 = v36;
      v186 = 2112;
      v187 = initiatorCopy;
      v188 = 2112;
      v189 = membersCopy;
      v190 = 2112;
      v191 = v35;
      v192 = 2112;
      v193 = memberCopy;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "init CSDConversation: %@, %@, %@, initiator: %@, remoteMembers: %@, isOldMessage: %@, localMember: %@", buf, 0x48u);
    }

    objc_storeStrong(&v33->_queue, queue);
    objc_storeStrong(&v33->_featureFlags, flags);
    objc_storeStrong(&v33->_UUID, d);
    objc_storeStrong(&v33->_groupUUID, iD);
    objc_storeStrong(&v33->_messagesGroupUUID, uID);
    v33->_state = 0;
    v33->_letMeInRequestState = 0;
    v33->_locallyCreated = createdCopy;
    objc_storeStrong(&v33->_initiator, initiator);
    objc_storeStrong(&v33->_localMember, member);
    v37 = +[NSDictionary dictionary];
    activeParticipantDestinationsByIdentifier = v33->_activeParticipantDestinationsByIdentifier;
    v33->_activeParticipantDestinationsByIdentifier = v37;

    v39 = +[NSMutableDictionary dictionary];
    activeRemoteParticipantsByIdentifier = v33->_activeRemoteParticipantsByIdentifier;
    v33->_activeRemoteParticipantsByIdentifier = v39;

    v41 = objc_alloc_init(NSMutableDictionary);
    activeLightweightParticipantsByIdentifier = v33->_activeLightweightParticipantsByIdentifier;
    v33->_activeLightweightParticipantsByIdentifier = v41;

    v43 = objc_alloc_init(NSMutableDictionary);
    screenSharingRequestsByUUID = v33->_screenSharingRequestsByUUID;
    v33->_screenSharingRequestsByUUID = v43;

    v45 = objc_alloc_init(NSMutableSet);
    recentlyLeftParticipantIdentifiers = v33->_recentlyLeftParticipantIdentifiers;
    v33->_recentlyLeftParticipantIdentifiers = v45;

    v47 = objc_alloc_init(NSMutableSet);
    kickedParticipants = v33->_kickedParticipants;
    v33->_kickedParticipants = v47;

    v49 = objc_alloc_init(NSMutableSet);
    pendingRemoteMembers = v33->_pendingRemoteMembers;
    v33->_pendingRemoteMembers = v49;

    v51 = objc_alloc_init(NSMutableArray);
    removedHandoffParticipants = v33->_removedHandoffParticipants;
    v33->_removedHandoffParticipants = v51;

    v53 = objc_alloc_init(NSMutableArray);
    addedHandoffParticipants = v33->_addedHandoffParticipants;
    v33->_addedHandoffParticipants = v53;

    v55 = +[NSMutableDictionary dictionary];
    startAddingHandoffParticipantToTime = v33->_startAddingHandoffParticipantToTime;
    v33->_startAddingHandoffParticipantToTime = v55;

    v57 = +[NSMutableDictionary dictionary];
    addedHandoffParticipantToTime = v33->_addedHandoffParticipantToTime;
    v33->_addedHandoffParticipantToTime = v57;

    v59 = +[NSMutableDictionary dictionary];
    removedHandoffParticipantToTime = v33->_removedHandoffParticipantToTime;
    v33->_removedHandoffParticipantToTime = v59;

    v61 = +[NSMutableDictionary dictionary];
    sequenceNumberToTime = v33->_sequenceNumberToTime;
    v33->_sequenceNumberToTime = v61;

    currentParticipantPresentationContexts = v33->_currentParticipantPresentationContexts;
    v33->_currentParticipantPresentationContexts = &__NSArray0__struct;

    v64 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v33->_serverBag;
    v33->_serverBag = v64;

    v33->_fromStorage = storage;
    v66 = +[NSDate distantPast];
    lastRebroadcastTime = v33->_lastRebroadcastTime;
    v33->_lastRebroadcastTime = v66;

    v33->_rebroadcastTimeThreshold = 0;
    objc_storeStrong(&v33->_report, report);
    v33->_avMode = mode;
    v33->_presentationMode = presentationMode;
    v33->_video = mode == 2;
    objc_storeStrong(&v33->_link, link);
    objc_storeStrong(&v33->_sharePlaySystemStateObserver, observer);
    if (observerCopy)
    {
      [(CPSystemStateObserver *)v33->_sharePlaySystemStateObserver addObserver:v33 withQueue:v33->_queue];
    }

    else
    {
      v69 = sub_100004778(v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        sub_100471E94();
      }
    }

    v70 = [CPActivitySessionManager alloc];
    v71 = +[NSSet set];
    v72 = +[CSDSceneObservationManager shared];
    v73 = [v70 initWithIdentifier:dCopy groupUUID:iDCopy activities:v71 applicationController:controllerCopy delegate:v33 queue:queueCopy systemStateObserver:observerCopy sceneObservationManager:v72];
    activitySessionManager = v33->_activitySessionManager;
    v33->_activitySessionManager = v73;

    if ([flagsCopy sharePlayCanEndWhenInitiatorLeaves])
    {
      v75 = [[_TtC13callservicesd36CSDActivitySessionParticipantMonitor alloc] initWithActivitySessionManager:v33->_activitySessionManager];
      activitySessionParticipantMonitor = v33->_activitySessionParticipantMonitor;
      v33->_activitySessionParticipantMonitor = v75;
    }

    if (activityCopy)
    {
      v77 = [(CSDConversation *)v33 createStagedActivitySessionForActivity:activityCopy];
    }

    featureFlags = [(CSDConversation *)v33 featureFlags];
    usesModernScreenSharingFromMessages = [featureFlags usesModernScreenSharingFromMessages];
    if (requestCopy)
    {
      v80 = usesModernScreenSharingFromMessages;
    }

    else
    {
      v80 = 0;
    }

    if (v80)
    {
      screenSharingRequestsByUUID = [(CSDConversation *)v33 screenSharingRequestsByUUID];
      uUID = [requestCopy UUID];
      [screenSharingRequestsByUUID setObject:requestCopy forKeyedSubscript:uUID];
    }

    v83 = +[NSMutableDictionary dictionary];
    inflightAVCBlobRecoveryBlocksByIdentifier = v33->_inflightAVCBlobRecoveryBlocksByIdentifier;
    v33->_inflightAVCBlobRecoveryBlocksByIdentifier = v83;

    objc_storeStrong(&v33->_ABTestConfiguration, configuration);
    [(CSDConversation *)v33 setRemoteMembers:membersCopy];
    v85 = [lightweightMembersCopy mutableCopy];
    lightweightMembers = v33->_lightweightMembers;
    v33->_lightweightMembers = v85;

    if (pendingMembersCopy)
    {
      v87 = [pendingMembersCopy copy];
    }

    else
    {
      v87 = +[NSSet set];
    }

    pendingMembers = v33->_pendingMembers;
    v33->_pendingMembers = v87;

    v89 = +[NSMutableSet set];
    v177 = 0u;
    v175 = 0u;
    v176 = 0u;
    v174 = 0u;
    pendingMembers = [(CSDConversation *)v33 pendingMembers];
    v91 = [pendingMembers countByEnumeratingWithState:&v174 objects:v179 count:16];
    if (v91)
    {
      v92 = *v175;
      do
      {
        for (i = 0; i != v91; i = i + 1)
        {
          if (*v175 != v92)
          {
            objc_enumerationMutation(pendingMembers);
          }

          handle = [*(*(&v174 + 1) + 8 * i) handle];
          [v89 addObject:handle];
        }

        v91 = [pendingMembers countByEnumeratingWithState:&v174 objects:v179 count:16];
      }

      while (v91);
    }

    v95 = [v89 copy];
    pendingMemberHandles = v33->_pendingMemberHandles;
    v33->_pendingMemberHandles = v95;

    v97 = +[NSSet set];
    kickedMembers = v33->_kickedMembers;
    v33->_kickedMembers = v97;

    objc_storeStrong(&v33->_remotePushTokens, tokens);
    v99 = +[NSMutableDictionary dictionary];
    pendingKickedMembersByIdentifier = v33->_pendingKickedMembersByIdentifier;
    v33->_pendingKickedMembersByIdentifier = v99;

    v101 = +[NSMutableSet set];
    pendingAllowedMembers = v33->_pendingAllowedMembers;
    v33->_pendingAllowedMembers = v101;

    v103 = +[NSMutableSet set];
    participantIDsChangedFromAVLessToAV = v33->_participantIDsChangedFromAVLessToAV;
    v33->_participantIDsChangedFromAVLessToAV = v103;

    v105 = +[NSSet set];
    rejectedMembers = v33->_rejectedMembers;
    v33->_rejectedMembers = v105;

    [(CSDConversation *)v33 setOtherInvitedHandles:handlesCopy];
    v107 = +[NSMutableSet set];
    highlightIdentifiers = v33->_highlightIdentifiers;
    v33->_highlightIdentifiers = v107;

    v109 = +[NSMutableArray array];
    memberHandlesAwaitingInvitesToLink = v33->_memberHandlesAwaitingInvitesToLink;
    v33->_memberHandlesAwaitingInvitesToLink = v109;

    objc_storeStrong(&v33->_idsSession, sessionCopy);
    [(CSDIDSGroupSession *)v33->_idsSession setDelegate:v33];
    v111 = objc_alloc_init(CSDFaceTimeInviteDemuxer);
    faceTimeInviteDemuxer = v33->_faceTimeInviteDemuxer;
    v33->_faceTimeInviteDemuxer = v111;

    v113 = [RTCReporting newHierarchyTokenFromParentToken:0];
    reportingHierarchyToken = v33->_reportingHierarchyToken;
    v33->_reportingHierarchyToken = v113;

    objc_initWeak(&location, v33);
    v171[0] = _NSConcreteStackBlock;
    v171[1] = 3221225472;
    v171[2] = sub_100086398;
    v171[3] = &unk_10061A548;
    objc_copyWeak(&v172, &location);
    v115 = objc_retainBlock(v171);
    avcSessionCreationBlock = v33->_avcSessionCreationBlock;
    v33->_avcSessionCreationBlock = v115;

    v169[0] = _NSConcreteStackBlock;
    v169[1] = 3221225472;
    v169[2] = sub_100086608;
    v169[3] = &unk_10061A570;
    objc_copyWeak(&v170, &location);
    v117 = objc_retainBlock(v169);
    videoDeviceControllerCreationBlock = v33->_videoDeviceControllerCreationBlock;
    v33->_videoDeviceControllerCreationBlock = v117;

    if (v33->_fromStorage || message)
    {
      v120 = sub_100004778(v119);
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        UUID = v33->_UUID;
        *buf = 138412290;
        v181 = UUID;
        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Requesting remote active participants for cached conversation with UUID: %@", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)v33->_idsSession requestActiveParticipants];
    }

    v122 = +[NSMutableDictionary dictionary];
    virtualParticipantsByPluginName = v33->_virtualParticipantsByPluginName;
    v33->_virtualParticipantsByPluginName = v122;

    v124 = +[TUConversationProvider unknownProvider];
    provider = v33->_provider;
    v33->_provider = v124;

    if (managerCopy)
    {
      v126 = managerCopy;
    }

    else
    {
      v126 = +[CPApplicationPolicyManager sharedInstance];
    }

    applicationLaunchPolicyManager = v33->_applicationLaunchPolicyManager;
    v33->_applicationLaunchPolicyManager = v126;

    v128 = +[CPAudioRoutePolicyManager sharedInstance];
    audioRoutePolicyManager = v33->_audioRoutePolicyManager;
    v33->_audioRoutePolicyManager = v128;

    [(CPAudioRoutePolicyManager *)v33->_audioRoutePolicyManager addObserver:v33 withQueue:v33->_queue];
    v130 = +[NSMutableDictionary dictionary];
    audioRoutesByParticipantIdentifier = v33->_audioRoutesByParticipantIdentifier;
    v33->_audioRoutesByParticipantIdentifier = v130;

    v132 = +[NSMutableDictionary dictionary];
    pendingConversationParticipantsByIdentifier = v33->_pendingConversationParticipantsByIdentifier;
    v33->_pendingConversationParticipantsByIdentifier = v132;

    personaHandshakeBlobCreationBlock = v33->_personaHandshakeBlobCreationBlock;
    v33->_personaHandshakeBlobCreationBlock = &stru_10061A5B0;

    localMember = [(CSDConversation *)v33 localMember];
    isLightweightMember = [localMember isLightweightMember];

    if (isLightweightMember)
    {
      v137 = [NSSet setWithObject:IDSRegistrationPropertySupportsCo];
      [(CSDConversation *)v33 addRequiredCapabilities:v137 requiredLackOfCapabilities:0];
    }

    if (!v33->_avMode)
    {
      v138 = [NSSet setWithObject:IDSRegistrationPropertySupportsAVLess];
      [(CSDConversation *)v33 addRequiredCapabilities:v138 requiredLackOfCapabilities:0];
    }

    v33->_sessionSwitchTimeout = 3.0;
    v139 = [[CSDConversationLocalParticipantBlobTracker alloc] initWithConversation:v33 idsGroupSession:sessionCopy2 queue:v33->_queue];
    localParticipantBlobTracker = v33->_localParticipantBlobTracker;
    v33->_localParticipantBlobTracker = v139;

    v33->_screenSharingType = 0;
    v141 = +[NSMutableDictionary dictionary];
    nearbyMemberRemovalBlockByHandle = v33->_nearbyMemberRemovalBlockByHandle;
    v33->_nearbyMemberRemovalBlockByHandle = v141;

    objc_destroyWeak(&v170);
    objc_destroyWeak(&v172);
    objc_destroyWeak(&location);
  }

  return v33;
}

- (TUVideoDeviceController)videoDeviceController
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDeviceController = self->_videoDeviceController;
  if (!videoDeviceController)
  {
    videoDeviceControllerCreationBlock = [(CSDConversation *)self videoDeviceControllerCreationBlock];
    v6 = videoDeviceControllerCreationBlock[2]();
    v7 = self->_videoDeviceController;
    self->_videoDeviceController = v6;

    [(TUVideoDeviceController *)self->_videoDeviceController setIgnoreStartPreview:1];
    videoDeviceController = self->_videoDeviceController;
  }

  return videoDeviceController;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CSDConversation *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  groupUUID = [(CSDConversation *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", groupUUID];

  link = [(CSDConversation *)self link];

  if (link)
  {
    link2 = [(CSDConversation *)self link];
    [v3 appendFormat:@" link=%@", link2];
  }

  messagesGroupUUID = [(CSDConversation *)self messagesGroupUUID];

  if (messagesGroupUUID)
  {
    messagesGroupUUID2 = [(CSDConversation *)self messagesGroupUUID];
    [v3 appendFormat:@" messagesGroupUUID=%@", messagesGroupUUID2];
  }

  [v3 appendFormat:@" state=%ld", -[CSDConversation state](self, "state")];
  [v3 appendFormat:@" hasReceivedLetMeInRequest=%ld", -[CSDConversation hasReceivedLetMeInRequest](self, "hasReceivedLetMeInRequest")];
  [v3 appendFormat:@" letMeInRequestState=%ld", -[CSDConversation letMeInRequestState](self, "letMeInRequestState")];
  [v3 appendFormat:@" ignoreLMIRequests=%d", -[CSDConversation ignoreLMIRequests](self, "ignoreLMIRequests")];
  [v3 appendFormat:@" avcSessionToken=%ld", -[CSDConversation avcSessionToken](self, "avcSessionToken")];
  avcSessionIdentifier = [(CSDConversation *)self avcSessionIdentifier];
  [v3 appendFormat:@" avcSessionIdentifier=%@", avcSessionIdentifier];

  [v3 appendFormat:@" isLocallyCreated=%d", -[CSDConversation isLocallyCreated](self, "isLocallyCreated")];
  [v3 appendFormat:@" hasJoined=%d", -[CSDConversation hasJoined](self, "hasJoined")];
  [v3 appendFormat:@" isAudioInjectionAllowed=%d", -[CSDConversation isAudioInjectionAllowed](self, "isAudioInjectionAllowed")];
  [v3 appendFormat:@" isHeld=%d", -[CSDConversation isHeld](self, "isHeld")];
  [v3 appendFormat:@" isUnderlyingLinksConnected=%d", -[CSDConversation isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")];
  [v3 appendFormat:@" isUplinkMuted=%d", -[CSDConversation isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendFormat:@" video=%d", -[CSDConversation isVideo](self, "isVideo")];
  [v3 appendFormat:@" isUpgradeToVideo=%d", -[CSDConversation isUpgradeToVideo](self, "isUpgradeToVideo")];
  [v3 appendFormat:@" isAudioEnabled=%d", -[CSDConversation isAudioEnabled](self, "isAudioEnabled")];
  [v3 appendFormat:@" isVideoEnabled=%d", -[CSDConversation isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" isScreenEnabled=%d", -[CSDConversation isScreenEnabled](self, "isScreenEnabled")];
  [v3 appendFormat:@" oneToOneModeEnabled=%d", -[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled")];
  localMember = [(CSDConversation *)self localMember];
  [v3 appendFormat:@" localMember=%@", localMember];

  remoteMembers = [(CSDConversation *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", remoteMembers];

  localMember2 = [(CSDConversation *)self localMember];
  handle = [localMember2 handle];
  [v3 appendFormat:@" localMemberHandle=%@", handle];

  pendingMembers = [(CSDConversation *)self pendingMembers];
  v16 = [pendingMembers count];

  if (v16)
  {
    pendingMembers2 = [(CSDConversation *)self pendingMembers];
    [v3 appendFormat:@" pendingMembers=%@", pendingMembers2];
  }

  kickedMembers = [(CSDConversation *)self kickedMembers];
  v19 = [kickedMembers count];

  if (v19)
  {
    kickedMembers2 = [(CSDConversation *)self kickedMembers];
    [v3 appendFormat:@" kickedMembers=%@", kickedMembers2];
  }

  rejectedMembers = [(CSDConversation *)self rejectedMembers];
  v22 = [rejectedMembers count];

  if (v22)
  {
    rejectedMembers2 = [(CSDConversation *)self rejectedMembers];
    [v3 appendFormat:@" rejectedMembers=%@", rejectedMembers2];
  }

  otherInvitedHandles = [(CSDConversation *)self otherInvitedHandles];
  v25 = [otherInvitedHandles count];

  if (v25)
  {
    otherInvitedHandles2 = [(CSDConversation *)self otherInvitedHandles];
    allObjects = [otherInvitedHandles2 allObjects];
    v28 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" otherInvitedHandles=%@", v28];
  }

  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  v30 = [lightweightMembers count];

  if (v30)
  {
    lightweightMembers2 = [(CSDConversation *)self lightweightMembers];
    [v3 appendFormat:@" lightweightMembers=%@", lightweightMembers2];
  }

  memberIdentifiers = [(CSDConversation *)self memberIdentifiers];
  v33 = [memberIdentifiers count];

  if (v33)
  {
    memberIdentifiers2 = [(CSDConversation *)self memberIdentifiers];
    allObjects2 = [memberIdentifiers2 allObjects];
    v36 = [allObjects2 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" memberIdentifiers=%@", v36];
  }

  screenSharingRequests = [(CSDConversation *)self screenSharingRequests];
  v38 = [screenSharingRequests count];

  if (v38)
  {
    screenSharingRequests2 = [(CSDConversation *)self screenSharingRequests];
    allObjects3 = [screenSharingRequests2 allObjects];
    v41 = [allObjects3 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" screenSharingRequests=%@", v41];
  }

  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  [v3 appendFormat:@" activeRemoteParticipants=%@", activeRemoteParticipants];

  activeLightweightParticipants = [(CSDConversation *)self activeLightweightParticipants];
  v44 = [activeLightweightParticipants count];

  if (v44)
  {
    activeLightweightParticipants2 = [(CSDConversation *)self activeLightweightParticipants];
    allObjects4 = [activeLightweightParticipants2 allObjects];
    v47 = [allObjects4 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" activeLightweightParticipants=%@", v47];
  }

  report = [(CSDConversation *)self report];
  [v3 appendFormat:@" report=%@", report];

  virtualParticipants = [(CSDConversation *)self virtualParticipants];
  v50 = [virtualParticipants count];

  if (v50)
  {
    virtualParticipants2 = [(CSDConversation *)self virtualParticipants];
    [v3 appendFormat:@" virtualParticipants=%@", virtualParticipants2];
  }

  provider = [(CSDConversation *)self provider];
  [v3 appendFormat:@" provider=%@", provider];

  tuActivitySessions = [(CSDConversation *)self tuActivitySessions];
  v54 = [tuActivitySessions count];

  if (v54)
  {
    tuActivitySessions2 = [(CSDConversation *)self tuActivitySessions];
    [v3 appendFormat:@" tuActivitySessions=%@", tuActivitySessions2];
  }

  tuSystemActivitySessions = [(CSDConversation *)self tuSystemActivitySessions];
  v57 = [tuSystemActivitySessions count];

  if (v57)
  {
    tuSystemActivitySessions2 = [(CSDConversation *)self tuSystemActivitySessions];
    [v3 appendFormat:@" tuSystemActivitySessions=%@", tuSystemActivitySessions2];
  }

  handoffEligibility = [(CSDConversation *)self handoffEligibility];

  if (handoffEligibility)
  {
    handoffEligibility2 = [(CSDConversation *)self handoffEligibility];
    [v3 appendFormat:@" handoffEligibility=%@", handoffEligibility2];
  }

  highlightIdentifiers = [(CSDConversation *)self highlightIdentifiers];
  v62 = [highlightIdentifiers count];

  if (v62)
  {
    highlightIdentifiers2 = [(CSDConversation *)self highlightIdentifiers];
    allObjects5 = [highlightIdentifiers2 allObjects];
    v65 = [allObjects5 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" highlightIdentifiers=%@", v65];
  }

  splitSessionSecondary = [(CSDConversation *)self splitSessionSecondary];

  if (splitSessionSecondary)
  {
    splitSessionSecondary2 = [(CSDConversation *)self splitSessionSecondary];
    [v3 appendFormat:@" splitSessionSecondary=%@", splitSessionSecondary2];
  }

  localLightweightSecondaryMember = [(CSDConversation *)self localLightweightSecondaryMember];

  if (localLightweightSecondaryMember)
  {
    localLightweightSecondaryMember2 = [(CSDConversation *)self localLightweightSecondaryMember];
    [v3 appendFormat:@" localLightweightSecondaryMember=%@", localLightweightSecondaryMember2];
  }

  invitationPreferences = [(CSDConversation *)self invitationPreferences];

  if (invitationPreferences)
  {
    invitationPreferences2 = [(CSDConversation *)self invitationPreferences];
    [v3 appendFormat:@" invitationPreferences=%@", invitationPreferences2];
  }

  [v3 appendFormat:@" avMode=%ld", -[CSDConversation avMode](self, "avMode")];
  [v3 appendFormat:@" presentationMode=%ld", -[CSDConversation presentationMode](self, "presentationMode")];
  [v3 appendFormat:@" screening=%d", -[CSDConversation isScreening](self, "isScreening")];
  v72 = objc_opt_self();
  isFromStorage = [v72 isFromStorage];

  if (isFromStorage)
  {
    v74 = objc_opt_self();
    [v3 appendFormat:@" self.isFromStorage=%d", objc_msgSend(v74, "isFromStorage")];
  }

  if ([(CSDConversation *)self isCameraMixedWithScreen])
  {
    [v3 appendFormat:@" isCameraMixedWithScreen=%d", -[CSDConversation isCameraMixedWithScreen](self, "isCameraMixedWithScreen")];
  }

  handoffContext = [(CSDConversation *)self handoffContext];

  if (handoffContext)
  {
    handoffContext2 = [(CSDConversation *)self handoffContext];
    [v3 appendFormat:@" handoffContext=%@", handoffContext2];
  }

  v77 = objc_opt_self();
  aBTestConfiguration = [v77 ABTestConfiguration];

  if (aBTestConfiguration)
  {
    v79 = objc_opt_self();
    aBTestConfiguration2 = [v79 ABTestConfiguration];
    [v3 appendFormat:@" self.ABTestConfiguration=%@", aBTestConfiguration2];
  }

  [v3 appendFormat:@" screenSharingType=%ld", -[CSDConversation screenSharingType](self, "screenSharingType")];
  localParticipantCluster = [(CSDConversation *)self localParticipantCluster];

  if (localParticipantCluster)
  {
    localParticipantCluster2 = [(CSDConversation *)self localParticipantCluster];
    [v3 appendFormat:@" localParticipantCluster=%@", localParticipantCluster2];
  }

  [v3 appendString:@">"];
  v83 = [v3 copy];

  return v83;
}

- (void)setProvider:(id)provider
{
  providerCopy = provider;
  p_provider = &self->_provider;
  provider = self->_provider;
  if (!provider || (+[TUConversationProvider unknownProvider], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(TUConversationProvider *)provider isEqual:v8], v8, v9))
  {
    objc_storeStrong(&self->_provider, provider);
  }

  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags sharePlayInCallsEnabled] && -[TUConversationProvider isTelephonyWithSharePlayProvider](*p_provider, "isTelephonyWithSharePlayProvider"))
  {
    isDefaultProvider = [providerCopy isDefaultProvider];

    if (isDefaultProvider)
    {
      v13 = sub_100004778(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_provider;
        uUID = [(CSDConversation *)self UUID];
        v16 = 138412802;
        v17 = v14;
        v18 = 2112;
        v19 = providerCopy;
        v20 = 2112;
        v21 = uUID;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[CSDConversation] Overriding conversation provider from %@ to %@, conversation: %@", &v16, 0x20u);
      }

      objc_storeStrong(p_provider, provider);
    }
  }

  else
  {
  }
}

- (void)setActiveParticipantDestinationsByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeParticipantDestinationsByIdentifier = self->_activeParticipantDestinationsByIdentifier;
  self->_activeParticipantDestinationsByIdentifier = identifierCopy;
  v7 = identifierCopy;

  [(CSDConversation *)self updateParticipantsWithDestinationIdentifiers:v7];
}

- (void)setActiveLightweightParticipantDestinationsByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeLightweightParticipantDestinationsByIdentifier = self->_activeLightweightParticipantDestinationsByIdentifier;
  self->_activeLightweightParticipantDestinationsByIdentifier = identifierCopy;
  v7 = identifierCopy;

  [(CSDConversation *)self updateParticipantsWithDestinationIdentifiers:v7];
}

- (id)activeParticipants
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  activeLightweightParticipants = [(CSDConversation *)self activeLightweightParticipants];
  v6 = [activeRemoteParticipants setByAddingObjectsFromSet:activeLightweightParticipants];

  return v6;
}

- (NSSet)activeRemoteParticipants
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  allValues = [activeRemoteParticipantsByIdentifier allValues];
  v6 = [NSSet setWithArray:allValues];

  return v6;
}

- (NSSet)activeLightweightParticipants
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  allValues = [activeLightweightParticipantsByIdentifier allValues];
  v6 = [NSSet setWithArray:allValues];

  return v6;
}

- (BOOL)isAnyOtherAccountDeviceActive
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v3 = [activeRemoteParticipants countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        if ([*(*(&v7 + 1) + 8 * i) isLocalAccountHandle])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [activeRemoteParticipants countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSSet)screenSharingRequests
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  screenSharingRequestsByUUID = [(CSDConversation *)self screenSharingRequestsByUUID];
  allValues = [screenSharingRequestsByUUID allValues];
  v6 = [NSSet setWithArray:allValues];

  return v6;
}

- (TUConversation)tuConversation
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [TUMutableConversation alloc];
  uUID = [(CSDConversation *)self UUID];
  groupUUID = [(CSDConversation *)self groupUUID];
  provider = [(CSDConversation *)self provider];
  v8 = [v4 initWithUUID:uUID groupUUID:groupUUID provider:provider];

  [v8 setState:{-[CSDConversation state](self, "state")}];
  [v8 setHasReceivedLetMeInRequest:{-[CSDConversation hasReceivedLetMeInRequest](self, "hasReceivedLetMeInRequest")}];
  [v8 setLetMeInRequestState:{-[CSDConversation letMeInRequestState](self, "letMeInRequestState")}];
  link = [(CSDConversation *)self link];
  [v8 setLink:link];

  messagesGroupUUID = [(CSDConversation *)self messagesGroupUUID];
  [v8 setMessagesGroupUUID:messagesGroupUUID];

  [v8 setAvcSessionToken:{-[CSDConversation avcSessionToken](self, "avcSessionToken")}];
  [v8 setLocalCaptionToken:{-[CSDConversation avcLocalCaptionsToken](self, "avcLocalCaptionsToken")}];
  avcSessionIdentifier = [(CSDConversation *)self avcSessionIdentifier];
  [v8 setAvcSessionIdentifier:avcSessionIdentifier];

  [v8 setAudioEnabled:{-[CSDConversation isAudioEnabled](self, "isAudioEnabled")}];
  [v8 setVideoEnabled:{-[CSDConversation isVideoEnabled](self, "isVideoEnabled")}];
  [v8 setVideoPaused:{-[CSDConversation isVideoPaused](self, "isVideoPaused")}];
  [v8 setScreenEnabled:{-[CSDConversation isScreenEnabled](self, "isScreenEnabled")}];
  [v8 setLocallyCreated:{-[CSDConversation isLocallyCreated](self, "isLocallyCreated")}];
  [v8 setHasJoined:{-[CSDConversation hasJoined](self, "hasJoined")}];
  initiator = [(CSDConversation *)self initiator];
  [v8 setInitiator:initiator];

  remoteMembers = [(CSDConversation *)self remoteMembers];
  [v8 setRemoteMembers:remoteMembers];

  pendingMembers = [(CSDConversation *)self pendingMembers];
  [v8 setPendingMembers:pendingMembers];

  kickedMembers = [(CSDConversation *)self kickedMembers];
  [v8 setKickedMembers:kickedMembers];

  rejectedMembers = [(CSDConversation *)self rejectedMembers];
  [v8 setRejectedMembers:rejectedMembers];

  otherInvitedHandles = [(CSDConversation *)self otherInvitedHandles];
  [v8 setOtherInvitedHandles:otherInvitedHandles];

  [v8 setIgnoreLMIRequests:{-[CSDConversation ignoreLMIRequests](self, "ignoreLMIRequests")}];
  messagesGroupName = [(CSDConversation *)self messagesGroupName];
  [v8 setMessagesGroupName:messagesGroupName];

  [v8 setMaxVideoDecodesAllowed:{-[CSDConversation maxVideoDecodesAllowed](self, "maxVideoDecodesAllowed")}];
  report = [(CSDConversation *)self report];
  [v8 setReport:report];

  reportingHierarchyToken = [(CSDConversation *)self reportingHierarchyToken];
  [v8 setReportingHierarchyToken:reportingHierarchyToken];

  reportingHierarchySubToken = [(CSDConversation *)self reportingHierarchySubToken];
  [v8 setReportingHierarchySubToken:reportingHierarchySubToken];

  localMember = [(CSDConversation *)self localMember];
  [v8 setLocalMember:localMember];

  [v8 setLocalParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}];
  featureFlags = [(CSDConversation *)self featureFlags];
  LODWORD(groupUUID) = [featureFlags conversationHandoffEnabled];

  if (groupUUID)
  {
    localParticipantAssociation = [(CSDConversation *)self localParticipantAssociation];
    [v8 setLocalParticipantAssociation:localParticipantAssociation];

    [v8 setOneToOneHandoffOngoing:{-[CSDConversation isOneToOneHandoffOngoing](self, "isOneToOneHandoffOngoing")}];
    handoffEligibility = [(CSDConversation *)self handoffEligibility];
    [v8 setHandoffEligibility:handoffEligibility];
  }

  [v8 setOneToOneModeEnabled:{-[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled")}];
  tuActivitySessions = [(CSDConversation *)self tuActivitySessions];
  [v8 setActivitySessions:tuActivitySessions];

  tuSystemActivitySessions = [(CSDConversation *)self tuSystemActivitySessions];
  [v8 setSystemActivitySessions:tuSystemActivitySessions];

  stagedActivitySession = [(CSDConversation *)self stagedActivitySession];
  [v8 setStagedActivitySession:stagedActivitySession];

  [v8 setVideo:{-[CSDConversation isVideo](self, "isVideo")}];
  [v8 setIsUpgradeToVideo:{-[CSDConversation isUpgradeToVideo](self, "isUpgradeToVideo")}];
  virtualParticipants = [(CSDConversation *)self virtualParticipants];
  [v8 setVirtualParticipants:virtualParticipants];

  invitationPreferences = [(CSDConversation *)self invitationPreferences];
  [v8 setInvitationPreferences:invitationPreferences];

  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  [v8 setLightweightMembers:lightweightMembers];

  [v8 setFromStorage:{-[CSDConversation isFromStorage](self, "isFromStorage")}];
  invitationDate = [(CSDConversation *)self invitationDate];
  [v8 setInvitationDate:invitationDate];

  failureContext = [(CSDConversation *)self failureContext];
  [v8 setConversationFailureContext:failureContext];

  [v8 setIsAnyOtherAccountDeviceActive:{-[CSDConversation isAnyOtherAccountDeviceActive](self, "isAnyOtherAccountDeviceActive")}];
  [v8 setAvMode:{-[CSDConversation avMode](self, "avMode")}];
  [v8 setPresentationMode:{-[CSDConversation presentationMode](self, "presentationMode")}];
  [v8 setScreening:{-[CSDConversation isScreening](self, "isScreening")}];
  [v8 setRelaying:{-[CSDConversation isRelaying](self, "isRelaying")}];
  [v8 setEndpointOnCurrentDevice:{-[CSDConversation isRelaying](self, "isRelaying") ^ 1}];
  [v8 setSpatialPersonaEnabled:{-[CSDConversation isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")}];
  [v8 setCameraMixedWithScreen:{-[CSDConversation isCameraMixedWithScreen](self, "isCameraMixedWithScreen")}];
  [v8 setIsNearbySharePlay:{-[CSDConversation isNearbySharePlay](self, "isNearbySharePlay")}];
  [v8 setIsUnderlyingLinksConnected:{-[CSDConversation isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")}];
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v35 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipants count]);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
  v37 = [activeRemoteParticipants2 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v65;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(activeRemoteParticipants2);
        }

        tuConversationParticipant = [*(*(&v64 + 1) + 8 * i) tuConversationParticipant];
        [v35 addObject:tuConversationParticipant];
      }

      v38 = [activeRemoteParticipants2 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v38);
  }

  activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  v43 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeLightweightParticipantsByIdentifier count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  activeLightweightParticipants = [(CSDConversation *)self activeLightweightParticipants];
  v45 = [activeLightweightParticipants countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v61;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(activeLightweightParticipants);
        }

        tuConversationParticipant2 = [*(*(&v60 + 1) + 8 * j) tuConversationParticipant];
        [v43 addObject:tuConversationParticipant2];
      }

      v46 = [activeLightweightParticipants countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v46);
  }

  featureFlags2 = [(CSDConversation *)self featureFlags];
  aTVHandoff = [featureFlags2 aTVHandoff];

  if ((aTVHandoff & 1) == 0)
  {
    [v35 unionSet:v43];
  }

  [v8 setActiveRemoteParticipants:v35];
  [v8 setActiveLightweightParticipants:v43];
  highlightIdentifiers = [(CSDConversation *)self highlightIdentifiers];
  [v8 setHighlightIdentifiers:highlightIdentifiers];

  screenSharingRequests = [(CSDConversation *)self screenSharingRequests];
  [v8 setScreenSharingRequests:screenSharingRequests];

  supportedMediaTypes = [(CSDConversation *)self supportedMediaTypes];
  [v8 setSupportedMediaTypes:supportedMediaTypes];

  handoffContext = [(CSDConversation *)self handoffContext];
  [v8 setHandoffContext:handoffContext];

  screenSharingRequests2 = [(CSDConversation *)self screenSharingRequests];
  [v8 setScreenSharingRequests:screenSharingRequests2];

  [v8 setScreenSharingType:{-[CSDConversation screenSharingType](self, "screenSharingType")}];
  localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
  [v8 setLocalParticipantCluster:localParticipantCluster];

  [v8 setNearbySession:{-[CSDConversation isNearbySession](self, "isNearbySession")}];
  v58 = [v8 copy];

  return v58;
}

- (id)avcSessionIdentifier
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  sessionIdentifier = [avcSession sessionIdentifier];

  return sessionIdentifier;
}

- (int64_t)avcSessionToken
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  sessionToken = [avcSession sessionToken];

  return sessionToken;
}

- (int64_t)avcLocalCaptionsToken
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  localCaptionsToken = [avcSession localCaptionsToken];

  return localCaptionsToken;
}

- (unint64_t)localParticipantIdentifier
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  idsSession = [(CSDConversation *)self idsSession];
  localParticipantIdentifier = [idsSession localParticipantIdentifier];

  return localParticipantIdentifier;
}

- (int64_t)maxVideoDecodesAllowed
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  maxVideoDecodesAllowed = [avcSession maxVideoDecodesAllowed];

  return maxVideoDecodesAllowed;
}

- (BOOL)isAudioReady
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  LOBYTE(queue) = [avcSession isAudioReady];

  return queue;
}

- (void)setRemoteMembers:(id)members
{
  if (self->_remoteMembers != members)
  {
    v4 = [members copy];
    remoteMembers = self->_remoteMembers;
    self->_remoteMembers = v4;

    v6 = +[NSMutableSet set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v8 = [remoteMembers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(remoteMembers);
          }

          handle = [*(*(&v14 + 1) + 8 * v11) handle];
          [v6 addObject:handle];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [remoteMembers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(CSDConversation *)self setRemoteMemberHandles:v6];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self remoteMembersChanged:self->_remoteMembers];
  }
}

- (id)localParticipantCapabilities
{
  v3 = objc_alloc_init(TUMutableConversationParticipantCapabilities);
  [v3 setScreenSharingAvailable:1];
  [v3 setGondolaCallingAvailable:1];
  [v3 setSupportsLeaveContext:1];
  featureFlags = [(CSDConversation *)self featureFlags];
  [v3 setGftDowngradeToOneToOneAvailable:{objc_msgSend(featureFlags, "gftDowngradeToOneToOne")}];

  featureFlags2 = [(CSDConversation *)self featureFlags];
  [v3 setUPlusOneScreenShareAvailable:{objc_msgSend(featureFlags2, "uPlusOneScreenSharing")}];

  featureFlags3 = [(CSDConversation *)self featureFlags];
  [v3 setUPlusNDowngradeAvailable:{objc_msgSend(featureFlags3, "uPlusNDowngrade")}];

  [v3 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [v3 setPersonaAvailable:TUIsPersonaAvailable()];
  [v3 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  [v3 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [v3 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
  [v3 setUPlusOneAVLessAvailable:1];
  featureFlags4 = [(CSDConversation *)self featureFlags];
  [v3 setTranslationAvailable:{objc_msgSend(featureFlags4, "audioCallTranslationEnabled")}];

  featureFlags5 = [(CSDConversation *)self featureFlags];
  [(CSDConversation *)self isRelaying];
  [(CSDConversation *)self isScreenSharingInitiationAvailable];
  [v3 setSupportsRequestToScreenShare:TUIsRequestToScreenShareAvailable()];

  v9 = +[CSDMomentsController localCapabilities];
  [v3 setMomentsAvailable:{objc_msgSend(v9, "isEnabled")}];

  [v3 setPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];

  return v3;
}

- (id)localConversationParticipantWithData
{
  v3 = [NSMutableArray alloc];
  remoteMembers = [(CSDConversation *)self remoteMembers];
  v5 = [v3 initWithCapacity:{objc_msgSend(remoteMembers, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  remoteMembers2 = [(CSDConversation *)self remoteMembers];
  v7 = [remoteMembers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        handle = [*(*(&v15 + 1) + 8 * i) handle];
        value = [handle value];
        [v5 addObject:value];
      }

      v8 = [remoteMembers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(CSDConversation *)self localConversationParticipantWithDataToSendToDestinationIDs:v5];

  return v13;
}

- (id)localConversationParticipantWithDataToSendToDestinationIDs:(id)ds
{
  v4 = [(CSDConversation *)self localParticipantDataToSendToDestinationIDs:ds];
  v5 = 0;
  if ([(CSDConversation *)self localParticipantIdentifier]&& v4)
  {
    v6 = [CSDConversationParticipant alloc];
    localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
    localMember = [(CSDConversation *)self localMember];
    handle = [localMember handle];
    v5 = [(CSDConversationParticipant *)v6 initWithIdentifier:localParticipantIdentifier handle:handle avcData:v4];

    [(CSDConversationParticipant *)v5 setAudioVideoMode:[(CSDConversation *)self avMode]];
    [(CSDConversationParticipant *)v5 setSpatialPersonaEnabled:[(CSDConversation *)self isSpatialPersonaEnabled]];
    localParticipantCapabilities = [(CSDConversation *)self localParticipantCapabilities];
    [(CSDConversationParticipant *)v5 setCapabilities:localParticipantCapabilities];

    localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
    [(CSDConversationParticipant *)v5 setCluster:localParticipantCluster];

    [(CSDConversationParticipant *)v5 setIsNearbySharePlay:[(CSDConversation *)self isNearbySharePlay]];
  }

  return v5;
}

- (id)localParticipantData
{
  v3 = [NSMutableArray alloc];
  remoteMembers = [(CSDConversation *)self remoteMembers];
  v5 = [v3 initWithCapacity:{objc_msgSend(remoteMembers, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  remoteMembers2 = [(CSDConversation *)self remoteMembers];
  v7 = [remoteMembers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        handle = [*(*(&v15 + 1) + 8 * i) handle];
        value = [handle value];
        [v5 addObject:value];
      }

      v8 = [remoteMembers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(CSDConversation *)self localParticipantDataToSendToDestinationIDs:v5];

  return v13;
}

- (id)localParticipantDataToSendToDestinationIDs:(id)ds
{
  dsCopy = ds;
  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    v5 = 2;
  }

  else if ([dsCopy count])
  {
    faceTimeInviteDemuxer = [(CSDConversation *)self faceTimeInviteDemuxer];
    if ([faceTimeInviteDemuxer destinationIDsCanUseV2Blobs:dsCopy])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  avcSession = [(CSDConversation *)self avcSession];
  v8 = [avcSession localParticipantDataWithVersion:v5];

  return v8;
}

- (BOOL)_expanseEnabled
{
  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags expanseEnabled])
  {
    forceExpanseEnabled = 1;
  }

  else
  {
    forceExpanseEnabled = [(CSDConversation *)self forceExpanseEnabled];
  }

  return forceExpanseEnabled;
}

- (void)setForceExpanseEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _expanseEnabled = [(CSDConversation *)self _expanseEnabled];
  if (enabledCopy)
  {
    if ((_expanseEnabled & 1) == 0)
    {
      v6 = [CPActivitySessionManager alloc];
      uUID = [(CSDConversation *)self UUID];
      groupUUID = [(CSDConversation *)self groupUUID];
      v9 = +[NSSet set];
      v10 = objc_alloc_init(CPApplicationController);
      queue = [(CSDConversation *)self queue];
      sharePlaySystemStateObserver = [(CSDConversation *)self sharePlaySystemStateObserver];
      v13 = +[CSDSceneObservationManager shared];
      v14 = [v6 initWithIdentifier:uUID groupUUID:groupUUID activities:v9 applicationController:v10 delegate:self queue:queue systemStateObserver:sharePlaySystemStateObserver sceneObservationManager:v13];
      [(CSDConversation *)self setActivitySessionManager:v14];
    }
  }

  else if (_expanseEnabled)
  {
    [(CSDConversation *)self setActivitySessionManager:0];
  }

  self->_forceExpanseEnabled = enabledCopy;
}

- (NSSet)virtualParticipants
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  virtualParticipantsByPluginName = [(CSDConversation *)self virtualParticipantsByPluginName];
  allValues = [virtualParticipantsByPluginName allValues];
  v6 = [NSSet setWithArray:allValues];

  return v6;
}

- (NSSet)memberHandlesEligibleForLinkApproval
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableSet set];
  link = [(CSDConversation *)self link];

  if (link)
  {
    link2 = [(CSDConversation *)self link];
    invitedMemberHandles = [link2 invitedMemberHandles];
    v8 = [invitedMemberHandles mutableCopy];

    v4 = v8;
    goto LABEL_15;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  remoteMemberHandles = [(CSDConversation *)self remoteMemberHandles];
  v10 = [remoteMemberHandles countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v21;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(remoteMemberHandles);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      value = [v14 value];
      if ([value destinationIdIsPhoneNumber])
      {
      }

      else
      {
        value2 = [v14 value];
        destinationIdIsEmailAddress = [value2 destinationIdIsEmailAddress];

        if (!destinationIdIsEmailAddress)
        {
          continue;
        }
      }

      [v4 addObject:v14];
    }

    v11 = [remoteMemberHandles countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
LABEL_14:

LABEL_15:
  v18 = [v4 copy];

  return v18;
}

- (BOOL)isUplinkMuted
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  LOBYTE(queue) = [avcSession isUplinkMuted];

  return queue;
}

- (void)setUplinkMuted:(BOOL)muted
{
  mutedCopy = muted;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversation *)self isAudioInjectionAllowed])
  {
    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags callRecordingEnabled])
    {

LABEL_5:
      v10 = sub_100004778(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v13 = mutedCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting expected uplink muted to %d instead of muting avcsession because injection is allowed", buf, 8u);
      }

      [(CSDConversation *)self setExpectedUplinkMuted:mutedCopy];
      return;
    }

    featureFlags2 = [(CSDConversation *)self featureFlags];
    audioCallTranslationEnabled = [featureFlags2 audioCallTranslationEnabled];

    if (audioCallTranslationEnabled)
    {
      goto LABEL_5;
    }
  }

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setUplinkMuted:mutedCopy];
}

- (void)setAudioInjectionAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags callRecordingEnabled])
  {
  }

  else
  {
    featureFlags2 = [(CSDConversation *)self featureFlags];
    audioCallTranslationEnabled = [featureFlags2 audioCallTranslationEnabled];

    if (!audioCallTranslationEnabled)
    {
      return;
    }
  }

  if ([(CSDConversation *)self isAudioInjectionAllowed]!= allowedCopy)
  {
    isUplinkMuted = [(CSDConversation *)self isUplinkMuted];
    v10 = sub_100004778(isUplinkMuted);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (allowedCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (isUplinkMuted)
      {
        v11 = @"YES";
      }

      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting audio injection allowed to %@, isUplinkMuted: %@", &v16, 0x16u);
    }

    if (allowedCopy)
    {
      [(CSDConversation *)self setExpectedUplinkMuted:isUplinkMuted];
      [(CSDConversation *)self setUplinkMuted:0];
      self->_audioInjectionAllowed = allowedCopy;
    }

    else
    {
      v14 = sub_100004778(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        expectedUplinkMuted = [(CSDConversation *)self expectedUplinkMuted];
        v16 = 67109120;
        LODWORD(v17) = expectedUplinkMuted;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Resetting uplink mute to exected uplink muted %d", &v16, 8u);
      }

      self->_audioInjectionAllowed = 0;
      [(CSDConversation *)self setUplinkMuted:[(CSDConversation *)self expectedUplinkMuted]];
    }
  }
}

- (void)setIsHeld:(BOOL)held
{
  heldCopy = held;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_isHeld != heldCopy)
  {
    self->_isHeld = heldCopy;
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
  }
}

- (BOOL)isAudioEnabled
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  expectedAudioEnabled = [(CSDConversation *)self expectedAudioEnabled];
  if (expectedAudioEnabled)
  {
    expectedAudioEnabled2 = [(CSDConversation *)self expectedAudioEnabled];
    bOOLValue = [expectedAudioEnabled2 BOOLValue];
  }

  else
  {
    expectedAudioEnabled2 = [(CSDConversation *)self avcSession];
    bOOLValue = [expectedAudioEnabled2 isAudioEnabled];
  }

  v7 = bOOLValue;

  return v7;
}

- (void)setAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting audioEnabled to %d", v11, 8u);
  }

  expectedAudioEnabled = [(CSDConversation *)self expectedAudioEnabled];

  if (!expectedAudioEnabled)
  {
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setAudioEnabled:enabledCopy];
  }

  v10 = [NSNumber numberWithBool:enabledCopy];
  [(CSDConversation *)self setExpectedAudioEnabled:v10];
}

- (BOOL)isVideoEnabled
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  expectedVideoEnabled = [(CSDConversation *)self expectedVideoEnabled];
  if (expectedVideoEnabled)
  {
    expectedVideoEnabled2 = [(CSDConversation *)self expectedVideoEnabled];
    bOOLValue = [expectedVideoEnabled2 BOOLValue];
  }

  else
  {
    expectedVideoEnabled2 = [(CSDConversation *)self avcSession];
    bOOLValue = [expectedVideoEnabled2 isVideoEnabled];
  }

  v7 = bOOLValue;

  return v7;
}

- (BOOL)isScreenEnabled
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  expectedScreenEnabled = [(CSDConversation *)self expectedScreenEnabled];
  if (expectedScreenEnabled)
  {
    expectedScreenEnabled2 = [(CSDConversation *)self expectedScreenEnabled];
    bOOLValue = [expectedScreenEnabled2 BOOLValue];
  }

  else
  {
    expectedScreenEnabled2 = [(CSDConversation *)self avcSession];
    bOOLValue = [expectedScreenEnabled2 isScreenEnabled];
  }

  v7 = bOOLValue;

  return v7;
}

- (void)setVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  isRedirectingAudio = [(CSDConversation *)self isRedirectingAudio];
  v7 = isRedirectingAudio;
  avcSession = sub_100004778(isRedirectingAudio);
  v9 = os_log_type_enabled(avcSession, OS_LOG_TYPE_DEFAULT);
  if (v7 && enabledCopy)
  {
    if (v9)
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, avcSession, OS_LOG_TYPE_DEFAULT, "Ignoring to set videoEnabled since conversation is relaying or being screened", v12, 2u);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v12[0] = 67109120;
    v12[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, avcSession, OS_LOG_TYPE_DEFAULT, "Setting videoEnabled to %d", v12, 8u);
  }

  expectedVideoEnabled = [(CSDConversation *)self expectedVideoEnabled];

  v11 = [NSNumber numberWithBool:enabledCopy];
  [(CSDConversation *)self setExpectedVideoEnabled:v11];

  if (!expectedVideoEnabled)
  {
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setVideoEnabled:enabledCopy];
LABEL_9:
  }
}

- (void)setScreenEnabled:(BOOL)enabled attributes:(id)attributes
{
  enabledCopy = enabled;
  attributesCopy = attributes;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109378;
    v17[1] = enabledCopy;
    v18 = 2112;
    v19 = attributesCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting screenEnabled to %d, screenShareAttributes: %@", v17, 0x12u);
  }

  expectedScreenEnabled = [(CSDConversation *)self expectedScreenEnabled];
  if (!expectedScreenEnabled || (v11 = expectedScreenEnabled, -[CSDConversation expectedScreenEnabled](self, "expectedScreenEnabled"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 BOOLValue], v12, v11, v13 != enabledCopy))
  {
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setScreenEnabled:enabledCopy attributes:attributesCopy];
  }

  v15 = [NSNumber numberWithBool:enabledCopy];
  [(CSDConversation *)self setExpectedScreenEnabled:v15];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)addScreenSharingType:(unint64_t)type
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    screenSharingType = self->_screenSharingType;
    v10 = 134218240;
    typeCopy = type;
    v12 = 2048;
    v13 = screenSharingType;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding %lu to screenSharingType %lu", &v10, 0x16u);
  }

  self->_screenSharingType |= type;
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)setIsNearbySharePlay:(BOOL)play
{
  playCopy = play;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (playCopy)
    {
      v8 = @"YES";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting isNearbySharePlay = %@", &v10, 0xCu);
  }

  self->_isNearbySharePlay = playCopy;
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)handleRemoteControlStatusChanged:(int64_t)changed
{
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling changed remote control status: %lu", &v7, 0xCu);
  }

  switch(changed)
  {
    case 3:
      avcSession = [(CSDConversation *)self avcSession];
      [avcSession handleUpdatedControllingRemoteScreen:1];
      break;
    case 2:
      avcSession = [(CSDConversation *)self avcSession];
      [avcSession enableRemoteControlWithCursorCapture:0];
      break;
    case 1:
      avcSession = [(CSDConversation *)self avcSession];
      [avcSession disableRemoteControl];
      break;
    default:
      return;
  }
}

- (BOOL)isVideoPaused
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  expectedVideoPaused = [(CSDConversation *)self expectedVideoPaused];
  if (expectedVideoPaused)
  {
    expectedVideoPaused2 = [(CSDConversation *)self expectedVideoPaused];
    bOOLValue = [expectedVideoPaused2 BOOLValue];
  }

  else
  {
    expectedVideoPaused2 = [(CSDConversation *)self avcSession];
    bOOLValue = [expectedVideoPaused2 isVideoPaused];
  }

  v7 = bOOLValue;

  return v7;
}

- (void)setVideoPaused:(BOOL)paused
{
  pausedCopy = paused;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = pausedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting videoPaused to %d", v11, 8u);
  }

  expectedVideoPaused = [(CSDConversation *)self expectedVideoPaused];

  v9 = [NSNumber numberWithBool:pausedCopy];
  [(CSDConversation *)self setExpectedVideoPaused:v9];

  if (!expectedVideoPaused)
  {
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setVideoPaused:pausedCopy];
  }
}

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = attributesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting screenShareAttributes to %@", &v10, 0xCu);
  }

  isScreenEnabled = [(CSDConversation *)self isScreenEnabled];
  if (isScreenEnabled)
  {
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setScreenShareAttributes:attributesCopy];
  }

  else
  {
    avcSession = sub_100004778(isScreenEnabled);
    if (os_log_type_enabled(avcSession, OS_LOG_TYPE_ERROR))
    {
      sub_100471ED4();
    }
  }
}

- (BOOL)isAudioPaused
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  expectedAudioPaused = [(CSDConversation *)self expectedAudioPaused];
  if (expectedAudioPaused)
  {
    expectedAudioPaused2 = [(CSDConversation *)self expectedAudioPaused];
    bOOLValue = [expectedAudioPaused2 BOOLValue];
  }

  else
  {
    expectedAudioPaused2 = [(CSDConversation *)self avcSession];
    bOOLValue = [expectedAudioPaused2 isAudioPaused];
  }

  v7 = bOOLValue;

  return v7;
}

- (void)setAudioPaused:(BOOL)paused
{
  pausedCopy = paused;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = pausedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting audioPaused to %d", buf, 8u);
  }

  expectedAudioPaused = [(CSDConversation *)self expectedAudioPaused];

  if (!expectedAudioPaused)
  {
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setAudioPaused:pausedCopy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
    v11 = [activeRemoteParticipants countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          avcSession2 = [(CSDConversation *)self avcSession];
          [avcSession2 setAudioPaused:pausedCopy forParticipantWithIdentifier:{objc_msgSend(v15, "identifier")}];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [activeRemoteParticipants countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v17 = [NSNumber numberWithBool:pausedCopy];
  [(CSDConversation *)self setExpectedAudioPaused:v17];
}

- (BOOL)isRedirectingAudio
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversation *)self isRelaying])
  {
    return 1;
  }

  return [(CSDConversation *)self isScreening];
}

- (BOOL)isRelaying
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_relaying;
}

- (BOOL)isScreening
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_screening;
}

- (void)setRelaying:(BOOL)relaying
{
  relayingCopy = relaying;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (relayingCopy)
    {
      v8 = @"YES";
    }

    v16 = 136315394;
    v17 = "[CSDConversation setRelaying:]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:  %@", &v16, 0x16u);
  }

  if (relayingCopy)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Turning off video since we are requesting to relay this conversation", &v16, 2u);
    }

    [(CSDConversation *)self setVideoEnabled:0];
  }

  isRelaying = [(CSDConversation *)self isRelaying];
  self->_relaying = relayingCopy;
  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setRelaying:relayingCopy];

  if (isRelaying != relayingCopy)
  {
    featureFlags = [(CSDConversation *)self featureFlags];
    requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

    if (requestToScreenShareEnabled)
    {
      [(CSDConversation *)self broadcastLocalParticipantData];
    }

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
  }
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_screening = screeningCopy;
  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (screeningCopy)
    {
      v8 = @"YES";
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setScreening: %@", &v12, 0xCu);
  }

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setScreening:screeningCopy];

  idsSession = [(CSDConversation *)self idsSession];
  [idsSession setScreening:screeningCopy];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (BOOL)_shouldSendSetParticipantType:(unint64_t)type
{
  if (type - 1 > 1)
  {
    return 1;
  }

  idsSession = [(CSDConversation *)self idsSession];
  v4 = [idsSession localParticipantType] != 1;

  return v4;
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    avMode = self->_avMode;
    presentationMode = self->_presentationMode;
    *buf = 134218752;
    modeCopy2 = mode;
    v49 = 2048;
    v50 = avMode;
    v51 = 2048;
    presentationModeCopy = presentationMode;
    v53 = 2048;
    presentationModeCopy2 = presentationMode;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setLocalParticipantAudioVideoMode: %lu, _avMode: %lu, presentationMode: %lu, _presentationMode: %lu", buf, 0x2Au);
  }

  self->_avMode = mode;
  self->_presentationMode = presentationMode;
  _allMembers = [(CSDConversation *)self _allMembers];
  localCSDConversationParticipant = [(CSDConversation *)self localCSDConversationParticipant];
  v14 = &_s10Foundation3URLVMa_ptr_0;
  v15 = [NSNumber numberWithInt:0];
  featureFlags = [(CSDConversation *)self featureFlags];
  if (![featureFlags controlMessageOverQREnabled])
  {
    goto LABEL_10;
  }

  serverBag = [(CSDConversation *)self serverBag];
  isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

  if (isControlMessageOverQREnabled && [(CSDConversation *)self _shouldSendSetParticipantType:mode])
  {
    localParticipant = [(CSDConversation *)self localParticipant];
    featureFlags = sub_1000C01A0(localParticipant);

    if (featureFlags)
    {
      groupUUID = [(CSDConversation *)self groupUUID];
      uUID = [(CSDConversation *)self UUID];
      invitationPreferences = [(CSDConversation *)self invitationPreferences];
      v23 = sub_1000C026C(featureFlags, groupUUID, uUID, invitationPreferences);

      v24 = +[NSDate date];
      [v24 timeIntervalSinceReferenceDate];
      v25 = [NSNumber numberWithDouble:?];

      [v25 doubleValue];
      v27 = v26;
      sequenceNumberToTime = [(CSDConversation *)self sequenceNumberToTime];
      participantUpdateSequenceNumber = [(CSDConversation *)self participantUpdateSequenceNumber];
      [(CSDConversation *)self setParticipantUpdateSequenceNumber:participantUpdateSequenceNumber + 1];
      v30 = [NSNumber numberWithUnsignedLongLong:participantUpdateSequenceNumber + 1];
      [sequenceNumberToTime setObject:v25 forKeyedSubscript:v30];

      participantUpdateSequenceNumber2 = [(CSDConversation *)self participantUpdateSequenceNumber];
      v32 = sub_100004778(participantUpdateSequenceNumber2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        participantUpdateSequenceNumber3 = [(CSDConversation *)self participantUpdateSequenceNumber];
        *buf = 134219010;
        modeCopy2 = mode;
        v49 = 2112;
        v50 = v25;
        v51 = 2048;
        presentationModeCopy = v27;
        v53 = 2048;
        presentationModeCopy2 = participantUpdateSequenceNumber3;
        v55 = 2112;
        v56 = v23;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "setLocalParticipantAudioVideoMode: %lu, time: %@, timestampValue: %f, participantUpdateSequenceNumber: %lu, message: %@", buf, 0x34u);
      }

      v14 = &_s10Foundation3URLVMa_ptr_0;
      goto LABEL_11;
    }

LABEL_10:
    participantUpdateSequenceNumber2 = 0;
    v23 = 0;
    v25 = v15;
LABEL_11:

    v15 = v25;
    goto LABEL_13;
  }

  participantUpdateSequenceNumber2 = 0;
  v23 = 0;
LABEL_13:
  if (mode - 1 >= 2)
  {
    if (!mode)
    {
      idsSession = [(CSDConversation *)self idsSession];
      data = [v23 data];
      [idsSession setParticipantType:0 forParticipant:localCSDConversationParticipant members:_allMembers isLocalParticipant:1 withContext:data timestamp:v15 identifier:participantUpdateSequenceNumber2];

      v39 = sub_100004778(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Stopping session since local av mode is switching to none", buf, 2u);
      }

      [(CSDConversation *)self _stopAVCSession];
    }
  }

  else
  {
    idsSession2 = [(CSDConversation *)self idsSession];
    localParticipantType = [idsSession2 localParticipantType];

    if (localParticipantType == 1)
    {
      [(CSDConversation *)self setVideo:mode == 2];
    }

    else
    {
      v40 = v14[59];
      v41 = mode == 2 && [(CSDConversation *)self isVideoEnabled];
      v42 = [v40 numberWithInt:v41];
      [(CSDConversation *)self setExpectedVideoEnabled:v42];

      v44 = sub_100004778(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Rebroadcasting AVC data to other members of this group to since we are transioning to normal and setup a new AVCSession.", buf, 2u);
      }

      [(CSDConversation *)self broadcastLocalParticipantData];
      idsSession3 = [(CSDConversation *)self idsSession];
      data2 = [v23 data];
      [idsSession3 setParticipantType:1 forParticipant:localCSDConversationParticipant members:_allMembers isLocalParticipant:1 withContext:data2 timestamp:v15 identifier:participantUpdateSequenceNumber2];
    }
  }
}

- (void)registerMessagesGroupAssociation
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    v9 = 138412290;
    v10 = uUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ asked to register messages group association", &v9, 0xCu);
  }

  groupUUID = [(CSDConversation *)self groupUUID];
  [(CSDConversation *)self setMessagesGroupUUID:groupUUID];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)setVideo:(BOOL)video
{
  videoCopy = video;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(CSDConversation *)self _endScreenCallIfNecessary]&& self->_video != videoCopy)
  {
    v6 = 1;
    if (videoCopy)
    {
      v6 = 2;
    }

    self->_avMode = v6;
    self->_video = videoCopy;
    if (!videoCopy)
    {
      [(CSDConversation *)self setVideoEnabled:0];
    }

    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setVideo:videoCopy];

    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (videoCopy)
      {
        v10 = @"YES";
      }

      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting video to %@", &v13, 0xCu);
    }

    delegate = [(CSDConversation *)self delegate];
    localParticipant = [(CSDConversation *)self localParticipant];
    [delegate conversation:self didChangeLocalParticipant:localParticipant broadcastActivitySession:1 currentSequenceNumber:0 fromResponse:0];

    [delegate conversationChanged:self];
  }
}

- (BOOL)isVideo
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags avLessSharePlayEnabled];

  if (avLessSharePlayEnabled)
  {
    return [(CSDConversation *)self avMode]== 2;
  }

  else
  {
    return self->_video;
  }
}

- (int64_t)activeRemoteParticipantCountMinusEligibleAVLess
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v4 = [activeRemoteParticipants countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        capabilities = [v10 capabilities];
        isUPlusOneAVLessAvailable = [capabilities isUPlusOneAVLessAvailable];

        if (isUPlusOneAVLessAvailable)
        {
          if (![v10 audioVideoMode])
          {
            ++v6;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      v5 = [activeRemoteParticipants countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v14 = [activeRemoteParticipantsByIdentifier count];

  if (((v6 > 0) & v8) != 0)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  return v14 - v15;
}

- (BOOL)isOneToOneModeEnabled
{
  selfCopy = self;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)selfCopy avcSession];

  if (avcSession)
  {
    avcSession2 = [(CSDConversation *)selfCopy avcSession];
    LOBYTE(selfCopy) = [avcSession2 isOneToOneModeEnabled];
    goto LABEL_68;
  }

  featureFlags = [(CSDConversation *)selfCopy featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    localParticipantAssociation = [(CSDConversation *)selfCopy localParticipantAssociation];
    if (localParticipantAssociation)
    {
      activeRemoteParticipants = [(CSDConversation *)selfCopy activeRemoteParticipants];
      v10 = [activeRemoteParticipants count] < 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  localMember = [(CSDConversation *)selfCopy localMember];
  isLightweightMember = [localMember isLightweightMember];

  remoteMembers = [(CSDConversation *)selfCopy remoteMembers];
  v14 = [remoteMembers count];

  if (v14 == 1)
  {
    isFaceTimeMyselfEnabled = isLightweightMember ^ 1;
    goto LABEL_49;
  }

  if ([(CSDConversation *)selfCopy state]> 1)
  {
    activeRemoteParticipantCountMinusEligibleAVLess = [(CSDConversation *)selfCopy activeRemoteParticipantCountMinusEligibleAVLess];
    isFaceTimeMyselfEnabled = activeRemoteParticipantCountMinusEligibleAVLess == 1;
    goto LABEL_49;
  }

  remoteMembers2 = [(CSDConversation *)selfCopy remoteMembers];
  v18 = [remoteMembers2 count];

  if (v18)
  {
    remoteMembers3 = [(CSDConversation *)selfCopy remoteMembers];
    localMember2 = [(CSDConversation *)selfCopy localMember];
    association = [localMember2 association];
    v22 = [TUConversation mergedRemoteMembers:remoteMembers3 withLocalMemberAssociation:association removingLocallyAssociatedMember:0];

    if ((isLightweightMember & 1) != 0 || [v22 count] != 1)
    {
      isFaceTimeMyselfEnabled = 0;
    }

    else
    {
      lightweightMembers = [(CSDConversation *)selfCopy lightweightMembers];
      isFaceTimeMyselfEnabled = [lightweightMembers count] == 0;
    }

    goto LABEL_49;
  }

  featureFlags2 = [(CSDConversation *)selfCopy featureFlags];
  if (([featureFlags2 oneToOneFaceTimeMyselfEnabled] & 1) == 0)
  {

LABEL_39:
    isFaceTimeMyselfEnabled = 0;
    goto LABEL_49;
  }

  serverBag = [(CSDConversation *)selfCopy serverBag];
  isFaceTimeMyselfEnabled = [serverBag isFaceTimeMyselfEnabled];

  if (!isFaceTimeMyselfEnabled)
  {
    goto LABEL_49;
  }

  remotePushTokens = [(CSDConversation *)selfCopy remotePushTokens];
  v27 = [remotePushTokens count];

  if (!v27)
  {
    goto LABEL_39;
  }

  isFaceTimeMyselfEnabled = isLightweightMember ^ 1;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [(CSDConversation *)selfCopy remotePushTokens];
  v28 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (!v28)
  {
    goto LABEL_48;
  }

  v29 = v28;
  v64 = *v66;
  while (2)
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v66 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v65 + 1) + 8 * i);
      v32 = TUHandleForIDSURI();
      if (v32)
      {
        v33 = v32;
        v34 = TUCopyIDSFromIDForHandle();
        v35 = TUHandleForIDSCanonicalAddress();

        localMember3 = [(CSDConversation *)selfCopy localMember];
        handle = [localMember3 handle];
        v38 = [v35 isEqualToHandle:handle];

        if ((v38 & 1) == 0)
        {
          v46 = sub_100004778(v39);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            value = [v35 value];
            localMember4 = [(CSDConversation *)selfCopy localMember];
            handle2 = [localMember4 handle];
            value2 = [handle2 value];
            *buf = 138412546;
            v70 = value;
            v71 = 2112;
            v72 = value2;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "not local handle: %@, %@", buf, 0x16u);
          }

          goto LABEL_47;
        }

        value3 = [v35 value];
        destinationIdIsPseudonym = [value3 destinationIdIsPseudonym];

        if (destinationIdIsPseudonym)
        {
          v46 = sub_100004778(v42);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v70 = v35;
            v51 = "handle is pseudonym: %@";
LABEL_46:
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v51, buf, 0xCu);
          }
        }

        else
        {
          value4 = [v35 value];
          destinationIdIsTemporary = [value4 destinationIdIsTemporary];

          if (!destinationIdIsTemporary)
          {

            goto LABEL_35;
          }

          v46 = sub_100004778(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v70 = v35;
            v51 = "handle is temporary: %@";
            goto LABEL_46;
          }
        }

LABEL_47:

        isFaceTimeMyselfEnabled = 0;
        goto LABEL_48;
      }

      v35 = sub_100004778(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = v31;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] null handle for %@", buf, 0xCu);
      }

      isFaceTimeMyselfEnabled = 0;
LABEL_35:
    }

    v29 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_48:

LABEL_49:
  v52 = sub_100004778(activeRemoteParticipantCountMinusEligibleAVLess);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = @"NO";
    if (isFaceTimeMyselfEnabled)
    {
      v54 = @"YES";
    }

    else
    {
      v54 = @"NO";
    }

    if (v10)
    {
      v53 = @"YES";
    }

    *buf = 138412546;
    v70 = v54;
    v71 = 2112;
    v72 = v53;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "meetsRemoteCountCriteria: %@, meetsParticipantCriteria: %@", buf, 0x16u);
  }

  avcSession2 = [(CSDConversation *)selfCopy featureFlags];
  if (([avcSession2 conversationOneToOneModeEnabled] & isFaceTimeMyselfEnabled & v10) == 1)
  {
    remoteMembers4 = [(CSDConversation *)selfCopy remoteMembers];
    allObjects = [remoteMembers4 allObjects];
    firstObject = [allObjects firstObject];
    handle3 = [firstObject handle];
    value5 = [handle3 value];
    if ([value5 destinationIdIsTemporary])
    {
      LOBYTE(selfCopy) = 0;
    }

    else
    {
      link = [(CSDConversation *)selfCopy link];
      if (link)
      {
        LOBYTE(selfCopy) = 0;
      }

      else
      {
        provider = [(CSDConversation *)selfCopy provider];
        if ([provider isTelephonyWithSharePlayProvider])
        {
          LOBYTE(selfCopy) = 0;
        }

        else
        {
          LODWORD(selfCopy) = ![(CSDConversation *)selfCopy isNearbySession];
        }
      }
    }
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

LABEL_68:

  return selfCopy;
}

- (BOOL)isOneToOneHandoffOngoing
{
  featureFlags = [(CSDConversation *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (!conversationHandoffEnabled)
  {
    return 0;
  }

  remoteMembers = [(CSDConversation *)self remoteMembers];
  if ([remoteMembers count] != 1)
  {

    return 0;
  }

  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v7 = [activeRemoteParticipants count];

  if (v7 != 2)
  {
    return 0;
  }

  localParticipantAssociation = [(CSDConversation *)self localParticipantAssociation];

  if (localParticipantAssociation)
  {
    localParticipantAssociation2 = [(CSDConversation *)self localParticipantAssociation];
    identifier = [localParticipantAssociation2 identifier];

    if (identifier != [(CSDConversation *)self localParticipantIdentifier])
    {
      activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
      v12 = [NSNumber numberWithUnsignedLongLong:identifier];
      v13 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v12];
      v14 = v13 != 0;

      return v14;
    }

    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
  v17 = [activeRemoteParticipants2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
LABEL_12:
    v20 = 0;
    while (1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(activeRemoteParticipants2);
      }

      v21 = *(*(&v28 + 1) + 8 * v20);
      association = [v21 association];

      if (association)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [activeRemoteParticipants2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    association2 = [v21 association];
    identifier2 = [association2 identifier];

    if (identifier2 == [v21 identifier])
    {
      goto LABEL_20;
    }

    if (identifier2 == [(CSDConversation *)self localParticipantIdentifier])
    {
      v14 = 1;
    }

    else
    {
      activeRemoteParticipantsByIdentifier2 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
      v26 = [NSNumber numberWithUnsignedLongLong:identifier2];
      v27 = [activeRemoteParticipantsByIdentifier2 objectForKeyedSubscript:v26];
      v14 = v27 != 0;
    }
  }

  else
  {
LABEL_20:
    v14 = 0;
  }

  return v14;
}

- (void)addHighlightIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [NSMutableSet setWithObject:identifierCopy];

  [(CSDConversation *)self setHighlightIdentifiers:v6];
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)removeHighlightIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  highlightIdentifiers = [(CSDConversation *)self highlightIdentifiers];
  v6 = [highlightIdentifiers containsObject:identifierCopy];

  if (v6)
  {
    highlightIdentifiers2 = [(CSDConversation *)self highlightIdentifiers];
    [highlightIdentifiers2 removeObject:identifierCopy];

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
  }
}

- (void)setOneToOneModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
  if (isOneToOneModeEnabled != enabledCopy)
  {
    v7 = sub_100004778(isOneToOneModeEnabled);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = enabledCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting oneToOneModeEnabled to %d", v9, 8u);
    }

    [(CSDConversation *)self updateLocalAspectRatios];
    avcSession = [(CSDConversation *)self avcSession];
    [avcSession setOneToOneModeEnabled:enabledCopy];
  }
}

- (void)setSplitSessionSecondary:(id)secondary
{
  secondaryCopy = secondary;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = self->_splitSessionSecondary;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    objc_storeStrong(&self->_splitSessionSecondary, secondary);
    if (v7)
    {
      v20 = secondaryCopy;
      v9 = sub_100004778(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [(CSDConversation *)self UUID];
        *buf = 138412546;
        v27 = uUID;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Kicking previous participant on conversation UUID: %@ participant: %@", buf, 0x16u);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      lightweightMembers = [(CSDConversation *)self lightweightMembers];
      v12 = [lightweightMembers countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(lightweightMembers);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            handle = [v16 handle];
            handle2 = [(CSDConversationParticipant *)v7 handle];
            v19 = [handle isEquivalentToHandle:handle2];

            if (v19)
            {
              [(CSDConversation *)self kickMember:v16];
            }
          }

          v13 = [lightweightMembers countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      secondaryCopy = v20;
    }

    [(CSDConversation *)self setSharePlayHandedOff:secondaryCopy != 0];
  }
}

- (void)setSharePlayHandedOff:(BOOL)off
{
  offCopy = off;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v18) = offCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sharePlayHandedOff: %d", buf, 8u);
  }

  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  handedOff = [activitySessionManager handedOff];

  if (handedOff != offCopy)
  {
    activitySessionManager2 = [(CSDConversation *)self activitySessionManager];
    [activitySessionManager2 setHandedOff:offCopy];

    state = [(CSDConversation *)self state];
    if (state == 3)
    {
      if (!offCopy)
      {
        [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary];
        return;
      }

      splitSessionSecondary = [(CSDConversation *)self splitSessionSecondary];

      if (!splitSessionSecondary)
      {
        return;
      }

      v13 = +[NSURL faceTimeShowInCallUIURL];
      if ([(CSDConversation *)self isVideo])
      {
        TUOpenURL();
      }

      else
      {
        v16 = +[NSURL faceTimeShowSystemCallControlsURL];

        v13 = v16;
        TUOpenHomeScreenWithCompletion();
      }
    }

    else
    {
      v13 = sub_100004778(state);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [(CSDConversation *)self UUID];
        state2 = [(CSDConversation *)self state];
        *buf = 138412546;
        v18 = uUID;
        v19 = 2048;
        v20 = state2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring splitSessionSecondary since we aren't joined into the conversation UUID: %@ state: (%tu)", buf, 0x16u);
      }
    }
  }
}

- (int)presentationState
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  LODWORD(queue) = [avcSession presentationState];

  return queue;
}

- (void)setPresentationState:(int)state
{
  v3 = *&state;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setPresentationState:v3];
}

- (void)setPresentationMode:(unint64_t)mode
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_presentationMode != mode)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      presentationMode = self->_presentationMode;
      v9 = 134218240;
      modeCopy = mode;
      v11 = 2048;
      v12 = presentationMode;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setPresentationMode: %lu from _presentationMode: %lu", &v9, 0x16u);
    }

    self->_presentationMode = mode;
  }
}

- (CGRect)presentationRect
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession presentationRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setPresentationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setPresentationRect:{x, y, width, height}];
}

- (void)setConversationGridDisplayMode:(unint64_t)mode
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setGridDisplayMode:mode];
}

- (void)updateLocalAspectRatios
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversation *)self localPortraitAspectRatio];
  v5 = v4;
  v7 = v6;
  videoDeviceController = [(CSDConversation *)self videoDeviceController];
  [videoDeviceController setLocalPortraitAspectRatio:v5 localLandscapeAspectRatio:{v7, v7, v5}];
}

- (BOOL)isFromStorage
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_fromStorage;
}

- (void)setFromStorage:(BOOL)storage
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_fromStorage = storage;
}

- (NSSet)memberIdentifiers
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  memberIdentifiers = self->_memberIdentifiers;

  return memberIdentifiers;
}

- (void)setMemberIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [identifiersCopy copy];
  memberIdentifiers = self->_memberIdentifiers;
  self->_memberIdentifiers = v6;
}

- (BOOL)_addActiveParticipantIsDisallowedByGreenTea:(id)tea
{
  teaCopy = tea;
  featureFlags = [(CSDConversation *)self featureFlags];
  if (TUGreenTeaLagunaEnabled())
  {
    presentationMode = self->_presentationMode;

    if (presentationMode == 2)
    {
      v8 = sub_100004778(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = teaCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addActiveParticipantIsDisallowedByGreenTea for continuity session: %@", &v13, 0xCu);
      }

      tuConversation = [(CSDConversation *)self tuConversation];
      mergedActiveRemoteParticipants = [tuConversation mergedActiveRemoteParticipants];
      if ([mergedActiveRemoteParticipants count])
      {
        LODWORD(v11) = [teaCopy isPseudonym] ^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = sub_100004778(v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = teaCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "addActiveParticipantIsDisallowedByGreenTea: %@", &v13, 0xCu);
  }

  tuConversation = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  LOBYTE(v11) = [tuConversation count] != 0;
LABEL_13:

  return v11;
}

- (void)addActiveParticipant:(id)participant
{
  participantCopy = participant;
  val = self;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = participantCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding active participant: %@", buf, 0xCu);
  }

  if (!_TUIsInternalInstall())
  {
LABEL_11:
    activeRemoteParticipantsByIdentifier = [(CSDConversation *)val activeRemoteParticipantsByIdentifier];
    v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    v21 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v20];

    if ([participantCopy isLightweight])
    {
      if ([participantCopy audioVideoMode])
      {
        [CSDCrashReporter simulateCrashReportWithFormat:@"Attempting to add lightweight participant with invalid AVMode. Please file a bug to [FaceTime | (New Bugs)]"];
      }

      [participantCopy setAudioVideoMode:0];
      activeLightweightParticipantsByIdentifier = [(CSDConversation *)val activeLightweightParticipantsByIdentifier];
      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
      v24 = [activeLightweightParticipantsByIdentifier objectForKeyedSubscript:v23];

      v25 = v24;
    }

    else
    {
      v25 = v21;
    }

    v86 = v25;
    if ([v25 audioVideoMode])
    {
      v26 = 0;
    }

    else
    {
      v26 = [participantCopy audioVideoMode] != 0;
    }

    if (v86)
    {
      avcData = [v86 avcData];
      avcData2 = [participantCopy avcData];
      if ([avcData isEqual:avcData2] & 1) != 0 || (objc_msgSend(participantCopy, "isLightweight"))
      {

        if (!v26)
        {
          v30 = sub_100004778(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [(CSDConversation *)val UUID];
            *buf = 138412802;
            v95 = participantCopy;
            v96 = 2112;
            v97 = v86;
            v98 = 2112;
            v99 = uUID;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Conversation already contains participant %@, existing active participant: %@ with no change in AVC data or av mode: %@", buf, 0x20u);
          }

          [(CSDConversation *)val _recomputeAudioStates];
LABEL_75:
          [(CSDConversation *)val _removeMemberFromPendingMemberListForParticipant:participantCopy];
          [(CSDConversation *)val _cancelInFlightAVCBlobRecoveryIfNecessary];
          [(CSDConversation *)val _endScreenCallIfNecessary];
          goto LABEL_76;
        }
      }

      else
      {
      }
    }

    if ([(CSDConversation *)val state]== 2 || [(CSDConversation *)val state]== 3)
    {
      [(CSDConversation *)val _emitRTCConnectionSetupEventForAddActiveParticipant:participantCopy];
    }

    if ([participantCopy isLightweight])
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      lightweightMembers = [(CSDConversation *)val lightweightMembers];
      v33 = [lightweightMembers countByEnumeratingWithState:&v90 objects:v100 count:16];
      if (v33)
      {
        v34 = *v91;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v91 != v34)
            {
              objc_enumerationMutation(lightweightMembers);
            }

            v36 = *(*(&v90 + 1) + 8 * i);
            handle = [v36 handle];
            handle2 = [participantCopy handle];
            v39 = [handle isEquivalentToHandle:handle2];

            if (v39)
            {
              v41 = sub_100004778(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v95 = v36;
                v96 = 2112;
                v97 = participantCopy;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found member: %@ representing participant: %@", buf, 0x16u);
              }

              if ([v36 isLightweightMember])
              {
                lightweightPrimary = [v36 lightweightPrimary];
                localMember = [(CSDConversation *)val localMember];
                handle3 = [localMember handle];
                if ([lightweightPrimary isEquivalentToHandle:handle3])
                {
                  lightweightPrimaryParticipantIdentifier = [v36 lightweightPrimaryParticipantIdentifier];
                  LODWORD(lightweightPrimaryParticipantIdentifier) = lightweightPrimaryParticipantIdentifier == [(CSDConversation *)val localParticipantIdentifier];

                  if (lightweightPrimaryParticipantIdentifier)
                  {
                    v47 = sub_100004778(v46);
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v95 = participantCopy;
                      v96 = 2112;
                      v97 = v36;
                      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "AddedParticipant %@ for member: %@ is representing our localMember", buf, 0x16u);
                    }

                    [(CSDConversation *)val setSplitSessionSecondary:participantCopy];
                  }
                }

                else
                {
                }
              }
            }
          }

          v33 = [lightweightMembers countByEnumeratingWithState:&v90 objects:v100 count:16];
        }

        while (v33);
      }

      activeLightweightParticipantsByIdentifier2 = [(CSDConversation *)val activeLightweightParticipantsByIdentifier];
      v49 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
      [activeLightweightParticipantsByIdentifier2 setObject:participantCopy forKeyedSubscript:v49];

LABEL_68:
      [(CSDConversation *)val _updateParticipantTypesForAddedParticipant:participantCopy];
      if ([(CSDConversation *)val activeRemoteParticipantCountMinusEligibleAVLess]>= 2)
      {
        [(CSDConversation *)val setOneToOneModeEnabled:0];
      }

      featureFlags = [(CSDConversation *)val featureFlags];
      nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

      if (nearbyFaceTimeEnabled)
      {
        handle4 = [participantCopy handle];
        v68 = [(CSDConversation *)val memberWithHandle:handle4];

        [v68 setProposedParticipantCluster:0];
      }

      [(CSDConversation *)val _recomputeAudioStates];
      activitySessionManager = [(CSDConversation *)val activitySessionManager];
      [activitySessionManager refreshActivitySessionActiveParticipants];

      cluster = [participantCopy cluster];
      v71 = cluster == 0;

      if (!v71)
      {
        v72 = +[CSDReportingController sharedInstance];
        tuConversation = [(CSDConversation *)val tuConversation];
        [v72 participantClusterChangedForConversation:tuConversation];
      }

      [(CSDConversation *)val setServerProvidedParticipantIdentifiers:0];
      [(CSDConversation *)val setServerProvidedLightweightParticipantIdentifiers:0];
      [(CSDConversation *)val refreshActiveParticipantsList];
      serverBag = [(CSDConversation *)val serverBag];
      -[CSDConversation setRebroadcastTimeThreshold:](val, "setRebroadcastTimeThreshold:", [serverBag rebroadcastTimeThreshold]);

      delegate = [(CSDConversation *)val delegate];
      [delegate conversation:val addedActiveParticipant:participantCopy];
      [delegate conversationChanged:val];

      goto LABEL_75;
    }

    if (v86)
    {
      audioVideoMode = [v86 audioVideoMode];
      if (audioVideoMode)
      {
        v51 = sub_100004778(audioVideoMode);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v95 = v86;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Removing active participant %@ and replacing it with one with the same identifier but a newer AVC data blob.", buf, 0xCu);
        }

        audioVideoMode2 = [participantCopy audioVideoMode];
        audioVideoMode3 = [v86 audioVideoMode];
        if (audioVideoMode2 != audioVideoMode3)
        {
          v54 = sub_100004778(audioVideoMode3);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "New participant blob's audioVideoMode is different than our current audioVideoMode. AVModeUpdates need to happen with the explicit ParticipantUpdate message. Resetting to known audioVideoMode", buf, 2u);
          }

          [participantCopy setAudioVideoMode:{objc_msgSend(v86, "audioVideoMode")}];
        }

        avcSession = [(CSDConversation *)val avcSession];
        [avcSession removeParticipant:v86];

        goto LABEL_63;
      }
    }

    deviceSupport = [(CSDConversation *)val deviceSupport];
    if ([deviceSupport isGreenTea] && -[CSDConversation _addActiveParticipantIsDisallowedByGreenTea:](val, "_addActiveParticipantIsDisallowedByGreenTea:", participantCopy))
    {
      if ([(CSDConversation *)val state]== 2)
      {

        goto LABEL_81;
      }

      v76 = [(CSDConversation *)val state]== 3;

      if (v76)
      {
LABEL_81:
        association = [participantCopy association];
        v78 = association == 0;

        v80 = sub_100004778(v79);
        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
        if (v78)
        {
          if (v81)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[WARN] GreenTea device cannot be in a call with more than one other participant, leaving", buf, 2u);
          }

          v85 = +[CSDConversationLeaveContext greenTeaLeaveContext];
          [(CSDConversation *)val leaveUsingContext:v85];
        }

        else
        {
          if (v81)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "GreenTea hand off eligible call, will leave shortly if handoff not completed", buf, 2u);
          }

          objc_initWeak(buf, val);
          serverBag2 = [(CSDConversation *)val serverBag];
          v83 = dispatch_time(0, 1000000000 * [serverBag2 greenTeaHandoffTimeout]);
          queue2 = [(CSDConversation *)val queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008D458;
          block[3] = &unk_10061A600;
          objc_copyWeak(&v89, buf);
          block[4] = val;
          dispatch_after(v83, queue2, block);

          objc_destroyWeak(&v89);
          objc_destroyWeak(buf);
        }
      }
    }

    else
    {
    }

LABEL_63:
    if (v26)
    {
      v58 = sub_100004778(v56);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
        participantIDsChangedFromAVLessToAV = [(CSDConversation *)val participantIDsChangedFromAVLessToAV];
        *buf = 138412546;
        v95 = v59;
        v96 = 2112;
        v97 = participantIDsChangedFromAVLessToAV;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "adding %@ to participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
      }

      participantIDsChangedFromAVLessToAV2 = [(CSDConversation *)val participantIDsChangedFromAVLessToAV];
      v62 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
      [participantIDsChangedFromAVLessToAV2 addObject:v62];
    }

    activeRemoteParticipantsByIdentifier2 = [(CSDConversation *)val activeRemoteParticipantsByIdentifier];
    v64 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    [activeRemoteParticipantsByIdentifier2 setObject:participantCopy forKeyedSubscript:v64];

    [(CSDConversation *)val _addRemoteParticipantToAVCSessionIfPossible:participantCopy];
    goto LABEL_68;
  }

  v8 = +[NSUserDefaults tu_defaults];
  v86 = [v8 stringForKey:@"DefaultsRemovedURI"];

  v9 = v86;
  if (!v86 || ([participantCopy handle], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "value"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v86), v11, v10, v9 = v86, !v12))
  {
LABEL_10:

    goto LABEL_11;
  }

  remoteMemberHandles = [(CSDConversation *)val remoteMemberHandles];
  handle5 = [participantCopy handle];
  v15 = [remoteMemberHandles containsObject:handle5];

  v17 = sub_100004778(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v18)
    {
      *buf = 138412290;
      v95 = v86;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User defaults: added to remote member: %@, continue adding active participant", buf, 0xCu);
    }

    v9 = v86;
    goto LABEL_10;
  }

  if (v18)
  {
    *buf = 138412290;
    v95 = v86;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User defaults: do not add %@ to participant", buf, 0xCu);
  }

LABEL_76:
}

- (void)removeParticipantsForMember:(id)member
{
  memberCopy = member;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeParticipants = [(CSDConversation *)self activeParticipants];
  v7 = sub_100004778(activeParticipants);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 138412802;
    v26 = memberCopy;
    v27 = 2112;
    v28 = uUID;
    v29 = 2112;
    v30 = activeParticipants;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing participants for member: %@ on conversation UUID: %@ participants: %@", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = activeParticipants;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        handle = [v14 handle];
        handle2 = [memberCopy handle];
        v17 = [handle isEquivalentToHandle:handle2];

        if (v17)
        {
          identifier = [v14 identifier];
          handle3 = [v14 handle];
          [(CSDConversation *)self removeParticipantWithIdentifier:identifier fromHandle:handle3 withReason:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)setParticipantAudioVideoMode:(unint64_t)mode presentationMode:(unint64_t)presentationMode forParticipant:(id)participant
{
  participantCopy = participant;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v10 = [activeRemoteParticipants countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(activeRemoteParticipants);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      identifier = [v14 identifier];
      if (identifier == [participantCopy identifier])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [activeRemoteParticipants countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v14;

    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = sub_100004778(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      modeCopy = mode;
      v33 = 2048;
      presentationModeCopy = presentationMode;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "setParticipantAudioVideoMode: audioVideoMode: %lu, presentationMode: %lu for %@", buf, 0x20u);
    }

    if (!mode)
    {
      participantIDsChangedFromAVLessToAV = [(CSDConversation *)self participantIDsChangedFromAVLessToAV];
      v20 = [NSNumber numberWithUnsignedLongLong:[v17 identifier]];
      v21 = [participantIDsChangedFromAVLessToAV containsObject:v20];

      if (v21)
      {
        v23 = sub_100004778(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          participantIDsChangedFromAVLessToAV2 = [(CSDConversation *)self participantIDsChangedFromAVLessToAV];
          *buf = 138412546;
          modeCopy = participantCopy;
          v33 = 2112;
          presentationModeCopy = participantIDsChangedFromAVLessToAV2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "remove participant %@ from participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
        }

        participantIDsChangedFromAVLessToAV3 = [(CSDConversation *)self participantIDsChangedFromAVLessToAV];
        v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
        [participantIDsChangedFromAVLessToAV3 removeObject:v26];
      }
    }

    [v17 setAudioVideoMode:mode];
    [v17 setPresentationMode:presentationMode];
  }

  else
  {
LABEL_9:

LABEL_19:
    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100471F80();
    }
  }
}

- (void)updateReportInfoForHandoffParticipant:(id)participant
{
  participantCopy = participant;
  if ([(CSDConversation *)self state]== 3)
  {
    addedHandoffParticipants = [(CSDConversation *)self addedHandoffParticipants];
    [addedHandoffParticipants addObject:participantCopy];

    startAddingHandoffParticipantToTime = [(CSDConversation *)self startAddingHandoffParticipantToTime];
    v6 = +[NSDate now];
    handle = [participantCopy handle];
    [startAddingHandoffParticipantToTime setObject:v6 forKey:handle];
  }
}

- (BOOL)allowsScreenSharing
{
  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags supportsScreenSharing] && (TUSharePlayForceDisabled() & 1) == 0)
  {
    audioRoutePolicyManager = [(CSDConversation *)self audioRoutePolicyManager];
    if ([audioRoutePolicyManager sharePlaySupported])
    {
      sharePlaySystemStateObserver = [(CSDConversation *)self sharePlaySystemStateObserver];
      allowScreenSharing = [sharePlaySystemStateObserver allowScreenSharing];
    }

    else
    {
      allowScreenSharing = 0;
    }
  }

  else
  {
    allowScreenSharing = 0;
  }

  return allowScreenSharing;
}

- (void)removeParticipantWithIdentifier:(unint64_t)identifier fromHandle:(id)handle withReason:(unint64_t)reason
{
  handleCopy = handle;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [NSNumber numberWithUnsignedInteger:reason];
    *buf = 134218498;
    identifierCopy5 = identifier;
    v144 = 2112;
    identifierCopy4 = handleCopy;
    v146 = 2112;
    selfCopy3 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing participant with identifier: %lu handle: %@ withReason: %@", buf, 0x20u);
  }

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v14 = [NSNumber numberWithUnsignedLongLong:identifier];
  v15 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v14];

  v125 = v15;
  if (v15 || (-[CSDConversation activeLightweightParticipantsByIdentifier](self, "activeLightweightParticipantsByIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", identifier), v17 = objc_claimAutoreleasedReturnValue(), [v16 objectForKeyedSubscript:v17], v18 = objc_claimAutoreleasedReturnValue(), v17, v16, (v125 = v18) != 0))
  {
    handle = [v125 handle];
    v21 = [handle isEqualToHandle:handleCopy];

    v23 = sub_100004778(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      reasonCopy = reason;
      if (v24)
      {
        handle2 = [v125 handle];
        *buf = 134218242;
        identifierCopy5 = identifier;
        v144 = 2112;
        identifierCopy4 = handle2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found matching handle %lu: %@", buf, 0x16u);
      }

      delegate = [(CSDConversation *)self delegate];
      recentlyLeftParticipantIdentifiers = [(CSDConversation *)self recentlyLeftParticipantIdentifiers];
      v28 = [NSNumber numberWithUnsignedLongLong:identifier];
      [recentlyLeftParticipantIdentifiers addObject:v28];

      identifierCopy3 = identifier;
      if ([v125 isLightweight])
      {
        splitSessionSecondary = [(CSDConversation *)self splitSessionSecondary];

        if (splitSessionSecondary == v125)
        {
          v45 = sub_100004778(v30);
          v33 = v125;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            identifierCopy5 = v125;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Removing splitSessionSecondary: %@", buf, 0xCu);
          }

          [(CSDConversation *)self setSplitSessionSecondary:0];
        }

        else
        {
          activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
          v32 = [NSNumber numberWithUnsignedLongLong:identifier];
          [activeLightweightParticipantsByIdentifier setObject:0 forKeyedSubscript:v32];

          v33 = v125;
        }
      }

      else
      {
        activeRemoteParticipantsByIdentifier2 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
        v36 = [NSNumber numberWithUnsignedLongLong:identifier];
        [activeRemoteParticipantsByIdentifier2 setObject:0 forKeyedSubscript:v36];

        avcSession = [(CSDConversation *)self avcSession];
        [avcSession removeParticipant:v125];

        [(CSDConversation *)self _recomputeAudioStates];
        localMember = [(CSDConversation *)self localMember];
        lightweightPrimaryParticipantIdentifier = [localMember lightweightPrimaryParticipantIdentifier];

        v33 = v125;
        if (lightweightPrimaryParticipantIdentifier == identifier)
        {
          v41 = sub_100004778(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [(CSDConversation *)self UUID];
            localMember2 = [(CSDConversation *)self localMember];
            *buf = 138412802;
            identifierCopy5 = uUID;
            v144 = 2112;
            identifierCopy4 = v125;
            v146 = 2112;
            selfCopy3 = localMember2;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Leaving conversation because lightweightPrimary left on conversation UUID: %@ participant: %@ localMember: %@", buf, 0x20u);
          }

          [(CSDConversation *)self leave];
        }
      }

      if ([v33 isScreenEnabled])
      {
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
        v47 = [activeRemoteParticipants countByEnumeratingWithState:&v135 objects:v141 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v136;
          v50 = 1;
          do
          {
            for (i = 0; i != v48; i = i + 1)
            {
              if (*v136 != v49)
              {
                objc_enumerationMutation(activeRemoteParticipants);
              }

              v50 &= [*(*(&v135 + 1) + 8 * i) isScreenEnabled] ^ 1;
            }

            v48 = [activeRemoteParticipants countByEnumeratingWithState:&v135 objects:v141 count:16];
          }

          while (v48);

          v33 = v125;
          if ((v50 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
        }

        v53 = sub_100004778(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Removing screen sharing activity sessions since screen sharing participant was removed and no other screen sharing participant is active.", buf, 2u);
        }

        activitySessionManager = [(CSDConversation *)self activitySessionManager];
        [activitySessionManager removeScreenSharingSessions];
      }

LABEL_37:
      tuActivitySessions = [(CSDConversation *)self tuActivitySessions];
      [(CSDConversation *)self checkAndSetTUActivityActive:tuActivitySessions];

      featureFlags = [(CSDConversation *)self featureFlags];
      sharePlayCanEndWhenInitiatorLeaves = [featureFlags sharePlayCanEndWhenInitiatorLeaves];

      if (sharePlayCanEndWhenInitiatorLeaves)
      {
        activitySessionParticipantMonitor = [(CSDConversation *)self activitySessionParticipantMonitor];
        [activitySessionParticipantMonitor evaluateConversation:self];
      }

      featureFlags2 = [(CSDConversation *)self featureFlags];
      conversationHandoffEnabled = [featureFlags2 conversationHandoffEnabled];

      if (conversationHandoffEnabled)
      {
        localParticipantAssociation = [(CSDConversation *)self localParticipantAssociation];
        if (localParticipantAssociation)
        {
          v62 = localParticipantAssociation;
          localParticipantAssociation2 = [(CSDConversation *)self localParticipantAssociation];
          identifier = [localParticipantAssociation2 identifier];
          identifier2 = [v33 identifier];

          if (identifier == identifier2)
          {
            v67 = sub_100004778(v66);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
              *buf = 134218242;
              identifierCopy5 = localParticipantIdentifier;
              v144 = 2112;
              identifierCopy4 = v33;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Local participant %llu was associated with participant %@ who is now being removed. Clearing local participant association.", buf, 0x16u);
            }

            [(CSDConversation *)self setLocalParticipantAssociation:0];
          }
        }

        v118 = delegate;
        selfCopy = self;
        v120 = handleCopy;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
        v70 = [activeRemoteParticipants2 countByEnumeratingWithState:&v131 objects:v140 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v132;
          v123 = activeRemoteParticipants2;
          v124 = *v132;
          do
          {
            for (j = 0; j != v71; j = j + 1)
            {
              if (*v132 != v72)
              {
                objc_enumerationMutation(activeRemoteParticipants2);
              }

              v74 = *(*(&v131 + 1) + 8 * j);
              association = [v74 association];
              if (association)
              {
                v76 = association;
                association2 = [v74 association];
                identifier3 = [association2 identifier];
                if (identifier3 != [v33 identifier])
                {

                  continue;
                }

                association3 = [v74 association];
                avcIdentifier = [association3 avcIdentifier];
                if (avcIdentifier)
                {
                  association4 = [v74 association];
                  [association4 avcIdentifier];
                  v83 = v82 = v71;
                  avcIdentifier2 = [v33 avcIdentifier];
                  v126 = [v83 isEqualToString:avcIdentifier2];

                  v33 = v125;
                  v71 = v82;

                  activeRemoteParticipants2 = v123;
                  v72 = v124;

                  if ((v126 & 1) == 0)
                  {
                    continue;
                  }
                }

                else
                {
                }

                v86 = sub_100004778(v85);
                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                {
                  identifier4 = [v74 identifier];
                  identifier5 = [v74 identifier];
                  *buf = 134218498;
                  identifierCopy5 = identifier4;
                  v144 = 2112;
                  identifierCopy4 = v33;
                  v146 = 2048;
                  selfCopy3 = identifier5;
                  _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Remote participant %llu was associated with participant %@ who is now being removed. Clearing participant association for %llu.", buf, 0x20u);
                }

                [v74 setAssociation:0];
              }
            }

            v71 = [activeRemoteParticipants2 countByEnumeratingWithState:&v131 objects:v140 count:16];
          }

          while (v71);
        }

        self = selfCopy;
        handleCopy = v120;
        delegate = v118;
      }

      if ([(CSDConversation *)self state]== 3)
      {
        [(CSDConversation *)self continueHandoffAudioRouteForIdentifier:identifierCopy3 participantLeft:1];
        if (reasonCopy == 1)
        {
          removedHandoffParticipants = [(CSDConversation *)self removedHandoffParticipants];
          [removedHandoffParticipants addObject:v33];
        }
      }

      [delegate conversation:self removedActiveParticipant:v33 withLeaveReason:reasonCopy];
      [delegate conversationChanged:self];
      featureFlags3 = [(CSDConversation *)self featureFlags];
      uPlusNDowngrade = [featureFlags3 uPlusNDowngrade];

      if (!uPlusNDowngrade)
      {
LABEL_89:
        featureFlags4 = [(CSDConversation *)self featureFlags];
        if ([featureFlags4 nearbyFaceTimeEnabled])
        {
          isNearbySession = [(CSDConversation *)self isNearbySession];

          if (!isNearbySession)
          {
            goto LABEL_104;
          }

          remoteMembers = [(CSDConversation *)self remoteMembers];
          v107 = [remoteMembers count];

          if (v107 < 2)
          {
            goto LABEL_104;
          }

          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          featureFlags4 = [(CSDConversation *)self remoteMembers];
          v108 = [featureFlags4 countByEnumeratingWithState:&v127 objects:v139 count:16];
          if (v108)
          {
            v109 = v108;
            v110 = delegate;
            selfCopy2 = self;
            v112 = *v128;
LABEL_94:
            v113 = 0;
            while (1)
            {
              if (*v128 != v112)
              {
                objc_enumerationMutation(featureFlags4);
              }

              v114 = *(*(&v127 + 1) + 8 * v113);
              handle3 = [v114 handle];
              v116 = [handle3 isEqualToHandle:handleCopy];

              if (v116)
              {
                break;
              }

              if (v109 == ++v113)
              {
                v109 = [featureFlags4 countByEnumeratingWithState:&v127 objects:v139 count:16];
                if (v109)
                {
                  goto LABEL_94;
                }

                v33 = v125;
                delegate = v110;
                goto LABEL_103;
              }
            }

            v117 = v114;

            v33 = v125;
            delegate = v110;
            if (!v117)
            {
              goto LABEL_104;
            }

            [(CSDConversation *)selfCopy2 kickMember:v117];
            featureFlags4 = v117;
          }
        }

LABEL_103:

LABEL_104:
        goto LABEL_105;
      }

      activeRemoteParticipants3 = [(CSDConversation *)self activeRemoteParticipants];
      if ([activeRemoteParticipants3 count])
      {
        isOneToOneModeEnabled = 0;
      }

      else
      {
        remoteMembers2 = [(CSDConversation *)self remoteMembers];
        if ([remoteMembers2 count] == 1)
        {
          isOneToOneModeEnabled = 0;
        }

        else
        {
          isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
        }
      }

      featureFlags5 = [(CSDConversation *)self featureFlags];
      if ([featureFlags5 oneToOneFaceTimeMyselfEnabled])
      {
        serverBag = [(CSDConversation *)self serverBag];
        isFaceTimeMyselfEnabled = [serverBag isFaceTimeMyselfEnabled];

        if (isFaceTimeMyselfEnabled)
        {
          activeRemoteParticipants4 = [(CSDConversation *)self activeRemoteParticipants];
          if (![activeRemoteParticipants4 count])
          {
            remoteMembers3 = [(CSDConversation *)self remoteMembers];
            if ([remoteMembers3 count] > 1)
            {
              isOneToOneModeEnabled2 = [(CSDConversation *)self isOneToOneModeEnabled];

              if ((isOneToOneModeEnabled2 & 1) == 0)
              {
                goto LABEL_87;
              }

LABEL_82:
              v102 = sub_100004778(v98);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                remoteMembers4 = [(CSDConversation *)self remoteMembers];
                *buf = 138412290;
                identifierCopy5 = remoteMembers4;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "No active remote participants left, remoteMembers: %@, requesting to move back to oneToOne=0", buf, 0xCu);
              }

              [(CSDConversation *)self setOneToOneModeEnabled:0];
              goto LABEL_88;
            }
          }
        }

        else if (isOneToOneModeEnabled)
        {
          goto LABEL_82;
        }

LABEL_87:
        [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:1];
LABEL_88:
        v33 = v125;
        goto LABEL_89;
      }

      if ((isOneToOneModeEnabled & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    v33 = v125;
    if (v24)
    {
      handle4 = [v125 handle];
      *buf = 138412802;
      identifierCopy5 = handle4;
      v144 = 2048;
      identifierCopy4 = identifier;
      v146 = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] removeParticipantWithIdentifier:fromHandle: Not removing participant handle (%@) didn't match, with identifier %lu: %@", buf, 0x20u);
    }
  }

  else
  {
    v33 = sub_100004778(v19);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [(CSDConversation *)self UUID];
      *buf = 134218242;
      identifierCopy5 = identifier;
      v144 = 2112;
      identifierCopy4 = uUID2;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] removeParticipantWithIdentifier:fromHandle: Could not find participant with identifier %lu: %@", buf, 0x16u);
    }
  }

LABEL_105:
}

- (void)updateParticipantPresentationContexts:(id)contexts
{
  contextsCopy = contexts;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  [avcSession beginParticipantUpdates];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = contextsCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        avcSession2 = [(CSDConversation *)self avcSession];
        videoQuality = [v11 videoQuality];
        visibility = [v11 visibility];
        prominence = [v11 prominence];
        [v11 spatialPosition];
        [avcSession2 setVideoQuality:videoQuality visibility:visibility prominence:prominence spatialPosition:objc_msgSend(v11 isInCanvas:"isInCanvas") forParticipantWithIdentifier:{objc_msgSend(v11, "participantIdentifier"), v16, v17, v18, v19}];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  avcSession3 = [(CSDConversation *)self avcSession];
  [avcSession3 commitParticipantUpdates];

  [(CSDConversation *)self setCurrentParticipantPresentationContexts:obj];
}

- (void)addVirtualParticipant:(id)participant
{
  participantCopy = participant;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = participantCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding virtual participant: %@", &v17, 0xCu);
  }

  virtualParticipantsByPluginName = [(CSDConversation *)self virtualParticipantsByPluginName];
  pluginName = [participantCopy pluginName];
  v10 = [virtualParticipantsByPluginName objectForKeyedSubscript:pluginName];

  if (v10)
  {
    v11 = [v10 isEqual:participantCopy];
    if ((v11 & 1) == 0)
    {
      activitySessionManager = sub_100004778(v11);
      if (os_log_type_enabled(activitySessionManager, OS_LOG_TYPE_FAULT))
      {
        sub_100471FF0(participantCopy, self, activitySessionManager);
      }

      goto LABEL_9;
    }
  }

  else
  {
    virtualParticipantsByPluginName2 = [(CSDConversation *)self virtualParticipantsByPluginName];
    pluginName2 = [participantCopy pluginName];
    [virtualParticipantsByPluginName2 setObject:participantCopy forKeyedSubscript:pluginName2];

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

    pluginName3 = [participantCopy pluginName];
    LODWORD(pluginName2) = [pluginName3 isEqualToString:@"PubSub"];

    if (pluginName2)
    {
      activitySessionManager = [(CSDConversation *)self activitySessionManager];
      -[NSObject updateVirtualParticipantIdentifier:](activitySessionManager, "updateVirtualParticipantIdentifier:", [participantCopy identifier]);
LABEL_9:
    }
  }
}

- (void)removeVirtualParticipant:(id)participant
{
  participantCopy = participant;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = participantCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing virtual participant: %@", &v25, 0xCu);
  }

  virtualParticipantsByPluginName = [(CSDConversation *)self virtualParticipantsByPluginName];
  pluginName = [participantCopy pluginName];
  v10 = [virtualParticipantsByPluginName objectForKeyedSubscript:pluginName];

  if (!v10)
  {
    v19 = sub_100004778(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      pluginName2 = [participantCopy pluginName];
      v25 = 138412546;
      v26 = pluginName2;
      v27 = 2112;
      selfCopy = self;
      v21 = "[WARN] Could not find virtual participant for plugin %@: %@";
      v22 = v19;
      v23 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v25, v23);
    }

LABEL_13:

    goto LABEL_14;
  }

  identifier = [v10 identifier];
  identifier2 = [participantCopy identifier];
  if (identifier != identifier2)
  {
    v19 = sub_100004778(identifier2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      pluginName2 = [participantCopy pluginName];
      identifier3 = [participantCopy identifier];
      v25 = 138412802;
      v26 = pluginName2;
      v27 = 2048;
      selfCopy = identifier3;
      v29 = 2112;
      selfCopy2 = self;
      v21 = "[WARN] Trying to remove virtual participant for plugin %@ with different identifier %llu: %@";
      v22 = v19;
      v23 = 32;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  virtualParticipantsByPluginName2 = [(CSDConversation *)self virtualParticipantsByPluginName];
  pluginName3 = [participantCopy pluginName];
  [virtualParticipantsByPluginName2 setObject:0 forKeyedSubscript:pluginName3];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];

  pluginName4 = [participantCopy pluginName];
  LODWORD(pluginName3) = [pluginName4 isEqualToString:@"PubSub"];

  if (pluginName3)
  {
    activitySessionManager = [(CSDConversation *)self activitySessionManager];
    [activitySessionManager updateVirtualParticipantIdentifier:0];
  }

  [(CSDConversation *)self _registerPluginsIfNecessary];
LABEL_14:
}

- (void)removeRemoteMembers:(id)members triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  membersCopy = members;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v95 = 1024;
    LODWORD(v96) = locallyCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ remove remoteMembers triggeredLocally: %d", buf, 0x12u);
  }

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 138412546;
    selfCopy2 = uUID;
    v95 = 2112;
    v96 = membersCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UUID: %@ remove remoteMembers: %@", buf, 0x16u);
  }

  remoteMembers = [(CSDConversation *)self remoteMembers];
  v14 = [remoteMembers mutableCopy];

  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  v16 = [lightweightMembers mutableCopy];

  remoteMembers2 = [(CSDConversation *)self remoteMembers];
  v18 = [remoteMembers2 mutableCopy];

  localMember = [(CSDConversation *)self localMember];
  [v18 addObject:localMember];

  lightweightMembers2 = [(CSDConversation *)self lightweightMembers];
  [v18 unionSet:lightweightMembers2];

  if ([membersCopy count])
  {
    v69 = v18;
    v67 = locallyCopy;
    kickedMembers = [(CSDConversation *)self kickedMembers];
    [kickedMembers setByAddingObjectsFromSet:membersCopy];
    v23 = v22 = v14;
    [(CSDConversation *)self setKickedMembers:v23];

    [v22 minusSet:membersCopy];
    v66 = v22;
    [(CSDConversation *)self setRemoteMembers:v22];
    [v16 minusSet:membersCopy];
    v65 = v16;
    v24 = [v16 copy];
    [(CSDConversation *)self setLightweightMembers:v24];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v68 = membersCopy;
    v25 = membersCopy;
    v26 = [v25 countByEnumeratingWithState:&v85 objects:v92 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v86;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v86 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v85 + 1) + 8 * i);
          localLightweightSecondaryMember = [(CSDConversation *)self localLightweightSecondaryMember];
          handle = [localLightweightSecondaryMember handle];
          handle2 = [v30 handle];
          v34 = [handle isEqual:handle2];

          if (v34)
          {
            [(CSDConversation *)self setLocalLightweightSecondaryMember:0];
          }

          [(CSDConversation *)self removeParticipantsForMember:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v85 objects:v92 count:16];
      }

      while (v27);
    }

    v35 = +[NSMutableSet set];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v36 = v25;
    v37 = [v36 countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v82;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v82 != v39)
          {
            objc_enumerationMutation(v36);
          }

          handle3 = [*(*(&v81 + 1) + 8 * j) handle];
          [v35 addObject:handle3];
        }

        v38 = [v36 countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v38);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v69;
    v42 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v78;
      do
      {
        for (k = 0; k != v43; k = k + 1)
        {
          if (*v78 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v77 + 1) + 8 * k);
          association = [v46 association];

          if (association)
          {
            association2 = [v46 association];
            handle4 = [association2 handle];
            v50 = [v35 containsObject:handle4];

            if (v50)
            {
              [v46 setAssociation:0];
              [v46 setAssociationVoucher:0];
              [v46 setValidationSource:0];
            }
          }
        }

        v43 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v43);
    }

    v64 = v36;

    v70 = +[NSMutableDictionary dictionary];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    pendingConversationParticipantsByIdentifier = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
    v51 = [pendingConversationParticipantsByIdentifier countByEnumeratingWithState:&v73 objects:v89 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v74;
      do
      {
        for (m = 0; m != v52; m = m + 1)
        {
          if (*v74 != v53)
          {
            objc_enumerationMutation(pendingConversationParticipantsByIdentifier);
          }

          v55 = *(*(&v73 + 1) + 8 * m);
          pendingConversationParticipantsByIdentifier2 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
          v57 = [pendingConversationParticipantsByIdentifier2 objectForKeyedSubscript:v55];
          handle5 = [v57 handle];
          v59 = [v35 containsObject:handle5];

          if ((v59 & 1) == 0)
          {
            pendingConversationParticipantsByIdentifier3 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            v61 = [pendingConversationParticipantsByIdentifier3 objectForKeyedSubscript:v55];
            [v70 setObject:v61 forKeyedSubscript:v55];
          }
        }

        v52 = [pendingConversationParticipantsByIdentifier countByEnumeratingWithState:&v73 objects:v89 count:16];
      }

      while (v52);
    }

    [(CSDConversation *)self setPendingConversationParticipantsByIdentifier:v70];
    [(CSDConversation *)self removeActivitySessionIfNecessary];
    idsSession = [(CSDConversation *)self idsSession];
    [idsSession removeMembers:v64 fromExistingMembers:obj activeParticipants:0 triggeredLocally:v67];

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

    membersCopy = v68;
    v18 = v69;
    v16 = v65;
    v14 = v66;
  }

  else
  {
    v35 = sub_100004778(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] No members were removed to conversation: %@", buf, 0xCu);
    }
  }
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  handlesCopy = handles;
  membersCopy = members;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversation *)self addRemoteMembers:membersCopy otherInvitedHandles:handlesCopy invitationPreferences:0 triggeredLocally:locallyCopy];
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  membersCopy = members;
  handlesCopy = handles;
  preferencesCopy = preferences;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = preferencesCopy;
  link = [(CSDConversation *)self link];

  v15 = v13;
  if (!v13)
  {
    v15 = 0;
    if (link)
    {
      v15 = +[TUConversationInvitationPreference incomingCallAndNotificationInvitationPreferences];
    }
  }

  [(CSDConversation *)self addRemoteMembers:membersCopy otherInvitedHandles:handlesCopy invitationPreferences:v15 addingFromLetMeIn:0 triggeredLocally:locallyCopy];
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences addingFromLetMeIn:(BOOL)in triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  inCopy = in;
  membersCopy = members;
  handlesCopy = handles;
  preferencesCopy = preferences;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100004778(v14);
  v201 = locallyCopy;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    groupUUID = [(CSDConversation *)self groupUUID];
    *buf = 138413058;
    v225 = uUID;
    v226 = 2112;
    v227 = groupUUID;
    v228 = 2112;
    v229 = membersCopy;
    v230 = 1024;
    v231 = v201;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "addRemoteMembers - UUID: %@ groupUUID: %@ remoteMembers: %@ triggeredLocally: %d", buf, 0x26u);

    locallyCopy = v201;
  }

  v19 = sub_100004778(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    uUID2 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v225 = uUID2;
    v226 = 2112;
    v227 = handlesCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "addRemoteMembers - UUID: %@ otherInvitedHandles: %@", buf, 0x16u);
  }

  v191 = handlesCopy;

  v22 = sub_100004778(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    uUID3 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v225 = uUID3;
    v226 = 2112;
    v227 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "addRemoteMembers - UUID: %@ invitationPreferences: %@", buf, 0x16u);
  }

  remoteMembers = [(CSDConversation *)self remoteMembers];
  v190 = [remoteMembers mutableCopy];

  remoteMembers2 = [(CSDConversation *)self remoteMembers];
  v26 = [remoteMembers2 mutableCopy];

  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  v28 = [lightweightMembers mutableCopy];

  localMember = [(CSDConversation *)self localMember];
  isLightweightMember = [localMember isLightweightMember];

  localMember2 = [(CSDConversation *)self localMember];
  v188 = v28;
  v189 = v26;
  if (isLightweightMember)
  {
    v32 = v28;
  }

  else
  {
    v32 = v26;
  }

  [v32 addObject:localMember2];

  v194 = +[NSMutableSet set];
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  obj = membersCopy;
  v33 = [obj countByEnumeratingWithState:&v216 objects:v223 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v217;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v217 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v216 + 1) + 8 * i);
        if (([v37 isLightweightMember] & 1) == 0)
        {
          if (locallyCopy)
          {
            kickedMembers = [(CSDConversation *)self kickedMembers];
            v39 = [kickedMembers containsObject:v37];

            if (v39)
            {
              [(CSDConversation *)self _allowMember:v37];
              continue;
            }
          }

          remoteMemberHandles = [(CSDConversation *)self remoteMemberHandles];
          handle = [v37 handle];
          v42 = [remoteMemberHandles containsObject:handle];

          if (v42)
          {
            v44 = !inCopy;
          }

          else
          {
            v44 = 1;
          }

          if (v44)
          {
            if (v42)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v45 = sub_100004778(v43);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              handle2 = [v37 handle];
              *buf = 138412290;
              v225 = handle2;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Handle is part of remoteMembers list, but trying to add them as part of LMI. Allowing this handle to be added: %@", buf, 0xCu);
            }
          }

          localMember3 = [(CSDConversation *)self localMember];
          handle3 = [localMember3 handle];
          handle4 = [v37 handle];
          v51 = [handle3 isEquivalentToHandle:handle4];

          if (v51)
          {
LABEL_30:
            v52 = sub_100004778(v43);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              uUID4 = [(CSDConversation *)self UUID];
              handle5 = [v37 handle];
              *buf = 138412546;
              v225 = uUID4;
              v226 = 2112;
              v227 = handle5;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ already contains member with handle %@, filtering out.", buf, 0x16u);

              locallyCopy = v201;
            }

            continue;
          }

          v55 = [v37 copy];
          if (locallyCopy)
          {
            featureFlags = [(CSDConversation *)self featureFlags];
            if ([featureFlags nearbyFaceTimeEnabled] && (-[CSDConversation localParticipantCluster](self, "localParticipantCluster"), (v57 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v58 = v57;
              v59 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
              v60 = [preferencesCopy isEqualToSet:v59];

              if (v60)
              {
                featureFlags = [(CSDConversation *)self localParticipantCluster];
                [v55 setProposedParticipantCluster:featureFlags];
                goto LABEL_38;
              }
            }

            else
            {
LABEL_38:
            }
          }

          [v194 addObject:v55];
          if ([v37 joinedFromLetMeIn])
          {
            handle6 = [v37 handle];
            value = [handle6 value];
            destinationIdIsTemporary = [value destinationIdIsTemporary];

            if ((destinationIdIsTemporary & 1) == 0)
            {
              v65 = sub_100004778(v64);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                handle7 = [v37 handle];
                *buf = 138412290;
                v225 = handle7;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Handle %@ should be considered for addition as an invited member handle if not kicked", buf, 0xCu);
              }

              memberHandlesAwaitingInvitesToLink = [(CSDConversation *)self memberHandlesAwaitingInvitesToLink];
              handle8 = [v37 handle];
              [memberHandlesAwaitingInvitesToLink addObject:handle8];
            }
          }

          link = [(CSDConversation *)self link];
          if (link)
          {
            v70 = link;
            pendingMembers = [(CSDConversation *)self pendingMembers];
            v72 = [pendingMembers containsObject:v37];

            if (v72)
            {
              v74 = sub_100004778(v73);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v225 = v37;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "addRemoteMembers, remove pending member: %@", buf, 0xCu);
              }

              v75 = [NSSet setWithObject:v37];
              [(CSDConversation *)self removePendingMembers:v75 triggeredLocally:v201];
            }
          }

          link2 = [(CSDConversation *)self link];
          if (link2)
          {
            v77 = link2;
            pendingRemoteMembers = [(CSDConversation *)self pendingRemoteMembers];
            v79 = [pendingRemoteMembers containsObject:v37];

            if (v79)
            {
              v81 = sub_100004778(v80);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                pendingRemoteMembers2 = [(CSDConversation *)self pendingRemoteMembers];
                *buf = 138412546;
                v225 = v37;
                v226 = 2112;
                v227 = pendingRemoteMembers2;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "addRemoteMembers, remove pending remote member: %@ from: %@", buf, 0x16u);
              }

              pendingRemoteMembers3 = [(CSDConversation *)self pendingRemoteMembers];
              [pendingRemoteMembers3 removeObject:v37];
            }
          }

          locallyCopy = v201;
          continue;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v216 objects:v223 count:16];
    }

    while (v34);
  }

  v84 = +[NSMutableSet set];
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  lightweightMembers2 = [(CSDConversation *)self lightweightMembers];
  v86 = [lightweightMembers2 countByEnumeratingWithState:&v212 objects:v222 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v213;
    do
    {
      for (j = 0; j != v87; j = j + 1)
      {
        if (*v213 != v88)
        {
          objc_enumerationMutation(lightweightMembers2);
        }

        [v84 addObject:*(*(&v212 + 1) + 8 * j)];
      }

      v87 = [lightweightMembers2 countByEnumeratingWithState:&v212 objects:v222 count:16];
    }

    while (v87);
  }

  v193 = +[NSMutableSet set];
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v90 = obj;
  v91 = [v90 countByEnumeratingWithState:&v208 objects:v221 count:16];
  v196 = v90;
  if (v91)
  {
    v92 = v91;
    v93 = *v209;
    do
    {
      v94 = 0;
      obja = v92;
      do
      {
        if (*v209 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = *(*(&v208 + 1) + 8 * v94);
        if ([v95 isLightweightMember])
        {
          handle9 = [v95 handle];
          if ([v84 containsObject:handle9])
          {

LABEL_73:
            v105 = sub_100004778(v97);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              uUID5 = [(CSDConversation *)self UUID];
              handle10 = [v95 handle];
              *buf = 138412546;
              v225 = uUID5;
              v226 = 2112;
              v227 = handle10;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ already contains member with handle %@, filtering out.", buf, 0x16u);
            }
          }

          else
          {
            [(CSDConversation *)self localMember];
            v99 = v98 = v93;
            handle11 = [v99 handle];
            [v95 handle];
            selfCopy = self;
            v103 = v102 = v84;
            v104 = [handle11 isEquivalentToHandle:v103];

            v84 = v102;
            self = selfCopy;
            v90 = v196;

            v93 = v98;
            v92 = obja;

            if (v104)
            {
              goto LABEL_73;
            }

            v108 = [v95 copy];
            v105 = v108;
            if (v201)
            {
              [v108 setValidationSource:1];
              localMember4 = [(CSDConversation *)self localMember];
              handle12 = [localMember4 handle];
              [v105 setLightweightPrimary:handle12];

              [v105 setLightweightPrimaryParticipantIdentifier:[(CSDConversation *)self localParticipantIdentifier]];
              [(CSDConversation *)self setLocalLightweightSecondaryMember:v105];
            }

            [v193 addObject:v105];
          }
        }

        v94 = v94 + 1;
      }

      while (v92 != v94);
      v92 = [v90 countByEnumeratingWithState:&v208 objects:v221 count:16];
    }

    while (v92);
  }

  if ([v194 count] || objc_msgSend(v191, "count") || objc_msgSend(v193, "count"))
  {
    v179 = v84;
    activitySessions = [(CSDConversation *)self activitySessions];
    v112 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(activitySessions, "count")}];
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v113 = activitySessions;
    v114 = [v113 countByEnumeratingWithState:&v204 objects:v220 count:16];
    if (v114)
    {
      v115 = v114;
      v116 = *v205;
      do
      {
        for (k = 0; k != v115; k = k + 1)
        {
          if (*v205 != v116)
          {
            objc_enumerationMutation(v113);
          }

          v118 = *(*(&v204 + 1) + 8 * k);
          activity = [v118 activity];
          isStaticActivity = [activity isStaticActivity];

          if ((isStaticActivity & 1) == 0)
          {
            v121 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v118 fromConversation:self forStorage:0];
            [v112 addObject:v121];
          }
        }

        v115 = [v113 countByEnumeratingWithState:&v204 objects:v220 count:16];
      }

      while (v115);
    }

    stagedActivitySession = [(CSDConversation *)self stagedActivitySession];
    if (stagedActivitySession)
    {
      stagedActivitySession2 = [(CSDConversation *)self stagedActivitySession];
      v124 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:stagedActivitySession2 fromConversation:self forStorage:0];
    }

    else
    {
      v124 = 0;
    }

    [v190 unionSet:v194];
    [(CSDConversation *)self setRemoteMembers:v190];
    otherInvitedHandles = [(CSDConversation *)self otherInvitedHandles];
    v126 = [NSMutableSet setWithSet:otherInvitedHandles];

    [v126 unionSet:v191];
    v178 = v126;
    [(CSDConversation *)self setOtherInvitedHandles:v126];
    lightweightMembers3 = [(CSDConversation *)self lightweightMembers];
    v128 = [NSMutableSet setWithSet:lightweightMembers3];

    [v128 unionSet:v193];
    v177 = v128;
    [(CSDConversation *)self setLightweightMembers:v128];
    if (v201)
    {
      activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
      v130 = [activeRemoteParticipants mutableCopy];

      activeLightweightParticipants = [(CSDConversation *)self activeLightweightParticipants];
      [v130 unionSet:activeLightweightParticipants];

      idsSession = [(CSDConversation *)self idsSession];
      isJoined = [idsSession isJoined];

      if (isJoined)
      {
        localCSDConversationParticipant = [(CSDConversation *)self localCSDConversationParticipant];
        [v130 addObject:localCSDConversationParticipant];
      }
    }

    else
    {
      v130 = 0;
    }

    v135 = v194;
    [v135 unionSet:v193];
    objb = v189;
    [objb unionSet:v188];
    v136 = +[NSMutableArray array];
    v137 = v136;
    if (inCopy)
    {
      [v136 addObject:IDSRegistrationPropertySupportsModernGFT];
    }

    featureFlags2 = [(CSDConversation *)self featureFlags];
    v195 = v130;
    v176 = v135;
    if ([featureFlags2 uPlusNDowngrade])
    {

      v139 = preferencesCopy;
    }

    else
    {
      v140 = v137;
      v141 = [objb count];
      v142 = &v141[[v135 count]];
      v137 = v140;

      v143 = v142 >= 2;
      v139 = preferencesCopy;
      if (v143)
      {
        [(CSDConversation *)self setOneToOneModeEnabled:0];
      }
    }

    highlightIdentifiers = [(CSDConversation *)self highlightIdentifiers];
    anyObject = [highlightIdentifiers anyObject];

    avMode = [(CSDConversation *)self avMode];
    localMember5 = [(CSDConversation *)self localMember];
    v181 = v137;
    v182 = v124;
    if (([localMember5 isLightweightMember] & 1) == 0)
    {
      localMember6 = [(CSDConversation *)self localMember];
      association = [localMember6 association];
      if (association)
      {
        v148 = association;
        localMember7 = [(CSDConversation *)self localMember];
        association2 = [localMember7 association];
        if ([association2 isPrimary])
        {
          localMember8 = [(CSDConversation *)self localMember];
          [localMember8 association];
          v153 = v152 = localMember6;
          type = [v153 type];

          if (type != 2)
          {
            v139 = preferencesCopy;
            v137 = v181;
            v124 = v182;
            goto LABEL_119;
          }

          localMember9 = [(CSDConversation *)self localMember];
          association3 = [localMember9 association];
          handle13 = [association3 handle];

          activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
          v202[0] = _NSConcreteStackBlock;
          v202[1] = 3221225472;
          v202[2] = sub_100090BF4;
          v202[3] = &unk_10061A628;
          localMember5 = handle13;
          v203 = localMember5;
          v158 = [activeRemoteParticipants2 tu_anyObjectPassingTest:v202];

          v139 = preferencesCopy;
          v124 = v182;
          if (v158)
          {
            v160 = sub_100004778(v159);
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "Updating avMode and invitationPreferences for member addition to match the associated participant", buf, 2u);
            }

            avMode = [v158 audioVideoMode];
          }

          localMember6 = v203;
          v137 = v181;
        }

        else
        {

          v124 = v182;
        }
      }
    }

LABEL_119:
    idsSession2 = [(CSDConversation *)self idsSession];
    link3 = [(CSDConversation *)self link];
    otherInvitedHandles2 = [(CSDConversation *)self otherInvitedHandles];
    report = [(CSDConversation *)self report];
    invitationPreferences = v139;
    if (!v139)
    {
      invitationPreferences = [(CSDConversation *)self invitationPreferences];
    }

    v163 = [v137 copy];
    messagesGroupUUID = [(CSDConversation *)self messagesGroupUUID];
    messagesGroupName = [(CSDConversation *)self messagesGroupName];
    BYTE1(v175) = v201;
    LOBYTE(v175) = inCopy;
    [idsSession2 addMembers:v176 toExistingMembers:objb activeParticipants:v195 activitySessions:v112 link:link3 otherInvitedHandles:otherInvitedHandles2 report:report invitationPreferences:invitationPreferences requiredCapabilities:v163 messagesGroupUUID:messagesGroupUUID messagesGroupName:messagesGroupName addingFromLetMeIn:v175 triggeredLocally:anyObject highlightIdentifier:v124 stagedActivitySession:avMode avMode:?];

    v166 = v139;
    if (!v139)
    {
    }

    applicationLaunchPolicyManager = [(CSDConversation *)self applicationLaunchPolicyManager];
    tuConversation = [(CSDConversation *)self tuConversation];
    [applicationLaunchPolicyManager updateAllowedHandlesForConversation:tuConversation];

    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self addedMembers:v176 triggeredLocally:v201];

    featureFlags3 = [(CSDConversation *)self featureFlags];
    if ([featureFlags3 nearbyFaceTimeEnabled])
    {
      isNearbySession = [(CSDConversation *)self isNearbySession];

      v172 = v191;
      v173 = v182;
      if (isNearbySession)
      {
        [(CSDConversation *)self startTimeOutForNearbyMembers:v176];
      }
    }

    else
    {

      v172 = v191;
      v173 = v182;
    }

    [(CSDConversation *)self _endScreenCallIfNecessary];

    v84 = v179;
    goto LABEL_128;
  }

  v113 = sub_100004778(0);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    uUID6 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v225 = uUID6;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "[WARN] No new members were added to conversation UUID: %@", buf, 0xCu);
  }

  v172 = v191;
  v166 = preferencesCopy;
LABEL_128:
}

- (void)updateMemberValidationSource:(id)source source:(int64_t)a4
{
  sourceCopy = source;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v53 = sourceCopy;
    v54 = 2048;
    v55 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating member validation source for: %@ to source: %ld", buf, 0x16u);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  v10 = [lightweightMembers countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v10)
  {
LABEL_11:

    goto LABEL_31;
  }

  v11 = v10;
  v12 = *v47;
LABEL_5:
  v13 = 0;
  while (1)
  {
    if (*v47 != v12)
    {
      objc_enumerationMutation(lightweightMembers);
    }

    v14 = *(*(&v46 + 1) + 8 * v13);
    handle = [v14 handle];
    handle2 = [sourceCopy handle];
    v17 = [handle isEquivalentToHandle:handle2];

    if (v17)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [lightweightMembers countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  v20 = sub_100004778(v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v14;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found member to update validation state: %@", buf, 0xCu);
  }

  v21 = v14;
  if (!v21)
  {
LABEL_31:
    v21 = sub_100004778(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1004720B8();
    }

    goto LABEL_33;
  }

  [v21 setValidationSource:a4];
  lightweightPrimary = [v21 lightweightPrimary];
  if (!lightweightPrimary)
  {
    goto LABEL_30;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(CSDConversation *)selfCopy activitySessions];
  v22 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = v22;
  v41 = *v43;
  do
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v43 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v42 + 1) + 8 * i);
      activity = [v25 activity];
      trustedFromHandle = [activity trustedFromHandle];
      if (trustedFromHandle)
      {
        v28 = trustedFromHandle;
        activity2 = [v25 activity];
        trustedFromHandle2 = [activity2 trustedFromHandle];
        [v21 handle];
        v32 = v31 = v21;
        v33 = [trustedFromHandle2 isEquivalentToHandle:v32];

        v21 = v31;
        if (!v33)
        {
          continue;
        }

        v35 = sub_100004778(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v31;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "We found an activity originated from now validated member %@ updating activity", buf, 0xCu);
        }

        activity = [v25 activity];
        [activity setTrustedFromHandle:lightweightPrimary];
      }
    }

    v23 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  }

  while (v23);
LABEL_29:

LABEL_30:
  delegate = [(CSDConversation *)selfCopy delegate];
  [delegate conversationChanged:selfCopy];

LABEL_33:
}

- (void)updateMessagesGroupName:(id)name
{
  [(CSDConversation *)self setMessagesGroupName:name];
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)addPendingMembers:(id)members triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  membersCopy = members;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = membersCopy;
    v45 = 1024;
    LODWORD(v46) = locallyCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "add pendingMembers: %@ triggeredLocally: %d", buf, 0x12u);
  }

  pendingMembers = [(CSDConversation *)self pendingMembers];
  v35 = [pendingMembers mutableCopy];

  pendingMemberHandles = [(CSDConversation *)self pendingMemberHandles];
  v37 = [pendingMemberHandles mutableCopy];

  v36 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = membersCopy;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        handle = [v17 handle];
        if (handle && (v19 = handle, -[CSDConversation pendingMemberHandles](self, "pendingMemberHandles"), v20 = objc_claimAutoreleasedReturnValue(), [v17 handle], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "containsObject:", v21), v21, v20, v19, (v22 & 1) == 0))
        {
          v26 = [TUConversationMember alloc];
          handle2 = [v17 handle];
          nickname = [v17 nickname];
          v29 = [v26 initWithHandle:handle2 nickname:nickname];
          [v36 addObject:v29];

          handle3 = [v17 handle];
          [v37 addObject:handle3];
        }

        else
        {
          handle3 = sub_100004778(handle);
          if (os_log_type_enabled(handle3, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [(CSDConversation *)self UUID];
            handle4 = [v17 handle];
            *buf = 138412546;
            v44 = uUID;
            v45 = 2112;
            v46 = handle4;
            _os_log_impl(&_mh_execute_header, handle3, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ already contains pending member with handle %@, filtering out from addition list.", buf, 0x16u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v14);
  }

  [v35 unionSet:v36];
  v30 = [v35 copy];
  [(CSDConversation *)self setPendingMembers:v30];

  v31 = [v37 copy];
  [(CSDConversation *)self setPendingMemberHandles:v31];

  if ([v36 count])
  {
    v32 = +[TUCallCenter sharedInstance];
    queue2 = [v32 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000914E8;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue2, block);
  }

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (BOOL)shouldRespondToLetMeInRequestForMember:(id)member
{
  memberCopy = member;
  isLightweightMember = [memberCopy isLightweightMember];
  if (isLightweightMember)
  {
    v6 = sub_100004778(isLightweightMember);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      v7 = "No need to add lightweight member to the session";
      v8 = v6;
      v9 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v27, v9);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  pendingMemberHandles = [(CSDConversation *)self pendingMemberHandles];
  handle = [memberCopy handle];
  v12 = [pendingMemberHandles containsObject:handle];

  if ((v12 & 1) == 0)
  {
    v6 = sub_100004778(v13);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    pendingMemberHandles2 = [(CSDConversation *)self pendingMemberHandles];
    v27 = 138412546;
    v28 = memberCopy;
    v29 = 2112;
    v30 = pendingMemberHandles2;
    v18 = "member: %@ is not in pendingMemberHandles: %@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v18, &v27, 0x16u);

    goto LABEL_12;
  }

  handle2 = [memberCopy handle];
  v15 = [(CSDConversation *)self remoteMemberForHandle:handle2];

  if (v15)
  {
    v6 = sub_100004778(v16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = memberCopy;
      v7 = "member: %@ is in remoteMemberForHandle";
      v8 = v6;
      v9 = 12;
      goto LABEL_8;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  pendingRemoteMembers = [(CSDConversation *)self pendingRemoteMembers];
  v22 = [pendingRemoteMembers containsObject:memberCopy];

  if ((v22 & 1) == 0)
  {
    v6 = sub_100004778(v23);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    pendingMemberHandles2 = [(CSDConversation *)self pendingRemoteMembers];
    v27 = 138412546;
    v28 = memberCopy;
    v29 = 2112;
    v30 = pendingMemberHandles2;
    v18 = "member: %@ is not in pendingRemoteMembers: %@";
    goto LABEL_11;
  }

  pendingRemoteMembers2 = [(CSDConversation *)self pendingRemoteMembers];
  [pendingRemoteMembers2 removeObject:memberCopy];

  v6 = sub_100004778(v25);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pendingRemoteMembers3 = [(CSDConversation *)self pendingRemoteMembers];
    v27 = 138412546;
    v28 = memberCopy;
    v29 = 2112;
    v30 = pendingRemoteMembers3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Get matching memeber: %@ current pendingRemoteMembers: %@", &v27, 0x16u);
  }

  v19 = 1;
LABEL_13:

  return v19;
}

- (void)removePendingMembers:(id)members triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  membersCopy = members;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = membersCopy;
    v42 = 1024;
    LODWORD(v43) = locallyCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "removePendingMembers: %@ triggeredLocally: %d", buf, 0x12u);
  }

  pendingMemberHandles = [(CSDConversation *)self pendingMemberHandles];
  v35 = [pendingMemberHandles mutableCopy];

  v11 = +[NSMutableSet set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = membersCopy;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v37;
    *&v14 = 138412546;
    v34 = v14;
    do
    {
      v17 = 0;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        pendingMemberHandles2 = [(CSDConversation *)self pendingMemberHandles];
        handle = [v18 handle];
        v21 = [pendingMemberHandles2 containsObject:handle];

        if (v21)
        {
          v23 = [TUConversationMember alloc];
          handle2 = [v18 handle];
          nickname = [v18 nickname];
          v26 = [v23 initWithHandle:handle2 nickname:nickname];
          [v11 addObject:v26];

          handle3 = [v18 handle];
          [v35 removeObject:handle3];
        }

        else
        {
          handle3 = sub_100004778(v22);
          if (os_log_type_enabled(handle3, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [(CSDConversation *)self UUID];
            handle4 = [v18 handle];
            *buf = v34;
            v41 = uUID;
            v42 = 2112;
            v43 = handle4;
            _os_log_impl(&_mh_execute_header, handle3, OS_LOG_TYPE_DEFAULT, "Conversation with UUID %@ does not have pending member with handle %@, filtering out from removal list.", buf, 0x16u);
          }
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v15);
  }

  pendingMembers = [(CSDConversation *)self pendingMembers];
  v31 = [pendingMembers mutableCopy];

  [v31 minusSet:v11];
  v32 = [v31 copy];
  [(CSDConversation *)self setPendingMembers:v32];

  v33 = [v35 copy];
  [(CSDConversation *)self setPendingMemberHandles:v33];
}

- (BOOL)setConversationLink:(id)link allowUpdate:(BOOL)update
{
  updateCopy = update;
  linkCopy = link;
  link = [(CSDConversation *)self link];
  if (link)
  {
    v8 = updateCopy;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    link2 = [(CSDConversation *)self link];

    if (!link2 || !updateCopy)
    {
      invitedMemberHandles2 = [linkCopy copy];
      [(CSDConversation *)self setLink:invitedMemberHandles2];
      goto LABEL_14;
    }

    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CSDConversation *)self UUID];
      link3 = [(CSDConversation *)self link];
      linkName = [linkCopy linkName];
      expirationDate = [linkCopy expirationDate];
      invitedMemberHandles = [linkCopy invitedMemberHandles];
      v26 = 138413314;
      v27 = uUID;
      v28 = 2112;
      v29 = link3;
      v30 = 2112;
      v31 = linkName;
      v32 = 2112;
      v33 = expirationDate;
      v34 = 2112;
      v35 = invitedMemberHandles;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Link on conversation UUID %@ was already set to %@, but this setting allows for updates, setting the link name to %@, the expiration date to %@, and the invited handles to %@", &v26, 0x34u);
    }

    linkName2 = [linkCopy linkName];
    link4 = [(CSDConversation *)self link];
    [link4 setLinkName:linkName2];

    expirationDate2 = [linkCopy expirationDate];
    v21 = [expirationDate2 copy];
    link5 = [(CSDConversation *)self link];
    [link5 setExpirationDate:v21];

    invitedMemberHandles2 = [linkCopy invitedMemberHandles];
    link6 = [(CSDConversation *)self link];
    [link6 setInvitedMemberHandles:invitedMemberHandles2];
    goto LABEL_12;
  }

  invitedMemberHandles2 = sub_100004778(v9);
  if (os_log_type_enabled(invitedMemberHandles2, OS_LOG_TYPE_DEFAULT))
  {
    link6 = [(CSDConversation *)self link];
    v26 = 138412546;
    v27 = linkCopy;
    v28 = 2112;
    v29 = link6;
    _os_log_impl(&_mh_execute_header, invitedMemberHandles2, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring new link %@ as conversation link already set to %@", &v26, 0x16u);
LABEL_12:
  }

LABEL_14:

  return v8;
}

- (void)addScreenSharingRequest:(id)request
{
  requestCopy = request;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  screenSharingRequestsByUUID = [(CSDConversation *)self screenSharingRequestsByUUID];
  uUID = [requestCopy UUID];
  [screenSharingRequestsByUUID setObject:requestCopy forKeyedSubscript:uUID];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)removeScreenSharingRequest:(id)request
{
  requestCopy = request;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  screenSharingRequests = [(CSDConversation *)self screenSharingRequests];
  v6 = [screenSharingRequests containsObject:requestCopy];

  if (v6)
  {
    screenSharingRequestsByUUID = [(CSDConversation *)self screenSharingRequestsByUUID];
    uUID = [requestCopy UUID];
    [screenSharingRequestsByUUID setObject:0 forKeyedSubscript:uUID];

    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self removedScreenShareRequest:requestCopy];

    delegate2 = [(CSDConversation *)self delegate];
    [delegate2 conversationChanged:self];
  }
}

- (void)fulfillLocalScreenShareRequests
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableSet set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  screenSharingRequestsByUUID = [(CSDConversation *)self screenSharingRequestsByUUID];
  allKeys = [screenSharingRequestsByUUID allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        screenSharingRequestsByUUID2 = [(CSDConversation *)self screenSharingRequestsByUUID];
        v13 = [screenSharingRequestsByUUID2 objectForKeyedSubscript:v11];

        if ([v13 type] == 4)
        {
          [v4 addObject:v13];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        screenSharingRequestsByUUID3 = [(CSDConversation *)self screenSharingRequestsByUUID];
        uUID = [v19 UUID];
        [screenSharingRequestsByUUID3 setObject:0 forKeyedSubscript:uUID];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v16);
  }

  v23 = sub_100004778(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Fulfilled screen sharing requests %@", buf, 0xCu);
  }

  if ([v14 count])
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
  }
}

- (void)fulfillPendingScreenSharingRequestsForRemoteParticipant:(id)participant
{
  participantCopy = participant;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = +[NSMutableSet set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  screenSharingRequestsByUUID = [(CSDConversation *)self screenSharingRequestsByUUID];
  allKeys = [screenSharingRequestsByUUID allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        screenSharingRequestsByUUID2 = [(CSDConversation *)self screenSharingRequestsByUUID];
        v14 = [screenSharingRequestsByUUID2 objectForKeyedSubscript:v12];

        if ([v14 type] == 1)
        {
          handle = [v14 handle];
          handle2 = [participantCopy handle];
          v17 = [handle isEqualToHandle:handle2];

          if (v17)
          {
            [v5 addObject:v14];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allKeys countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      v22 = 0;
      do
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v30 + 1) + 8 * v22);
        screenSharingRequestsByUUID3 = [(CSDConversation *)self screenSharingRequestsByUUID];
        uUID = [v23 UUID];
        [screenSharingRequestsByUUID3 setObject:0 forKeyedSubscript:uUID];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v20);
  }

  v27 = sub_100004778(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Fulfilled remote screen sharing requests %@", buf, 0xCu);
  }

  if ([v18 count])
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
  }
}

- (void)leaveActivitySessionWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "leaveActivitySessionWithUUID: %@", &v10, 0xCu);
  }

  _expanseEnabled = [(CSDConversation *)self _expanseEnabled];
  if (_expanseEnabled)
  {
    activitySessionManager = [(CSDConversation *)self activitySessionManager];
    [activitySessionManager leaveActivitySessionWithUUID:dCopy];
  }

  else
  {
    activitySessionManager = sub_100004778(_expanseEnabled);
    if (os_log_type_enabled(activitySessionManager, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, activitySessionManager, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping request to remove activitySession because Expanse features are disabled. Please enable the expanseEnabled feature flag in TelephonyUtilities.", &v10, 2u);
    }
  }
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding activitySession with UUID: %@ to present dismissal alert", buf, 0xCu);
  }

  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000928AC;
  v10[3] = &unk_10061A650;
  v11 = dCopy;
  v9 = dCopy;
  [activitySessionManager presentSessionDismissalAlertForActivitySessionUUID:v9 allowingCancellation:1 completionHandler:v10];
}

- (void)removeActivitySessionWithUUID:(id)d usingTerminatingHandle:(id)handle
{
  dCopy = d;
  handleCopy = handle;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "removeActivitySessionWithUUID: %@", &v13, 0xCu);
  }

  _expanseEnabled = [(CSDConversation *)self _expanseEnabled];
  if (_expanseEnabled)
  {
    activitySessionManager = [(CSDConversation *)self activitySessionManager];
    [activitySessionManager removeActivitySessionWithUUID:dCopy usingHandle:handleCopy];
  }

  else
  {
    activitySessionManager = sub_100004778(_expanseEnabled);
    if (os_log_type_enabled(activitySessionManager, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, activitySessionManager, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping request to remove activitySession because Expanse features are disabled. Please enable the expanseEnabled feature flag in TelephonyUtilities.", &v13, 2u);
    }
  }
}

- (void)_launchApplicationDueToActivityCreation:(id)creation
{
  creationCopy = creation;
  activity = [creationCopy activity];
  isScreenSharingActivity = [activity isScreenSharingActivity];

  if (isScreenSharingActivity)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not launching screen sharing app", buf, 2u);
    }

    audioRoutePolicyManager = [(CSDConversation *)self audioRoutePolicyManager];
    sharePlaySupported = [audioRoutePolicyManager sharePlaySupported];

    if ((sharePlaySupported & 1) == 0)
    {
      activity2 = [creationCopy activity];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100092C0C;
      v12[3] = &unk_100619D38;
      v12[4] = self;
      [(CSDConversation *)self postUserNotificationForUnsupportedScreenSharingActivity:activity2 alternateReponseHandler:v12];
    }
  }

  else
  {
    [(CSDConversation *)self _launchApplicationForActivityIfNecessary:creationCopy];
  }
}

- (id)createActivitySession:(id)session isAutoStartedStagedActivity:(BOOL)activity
{
  sessionCopy = session;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 138412290;
    v52 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activitySession: %@", &v51, 0xCu);
  }

  v9 = TUSharePlayForceDisabled();
  if (v9)
  {
    activity = sub_100004778(v9);
    if (os_log_type_enabled(activity, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      v11 = "[WARN] Dropping new activitySession because Expanse features are disabled. Please upgrade to a later release to re-enable Expanse features.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, activity, OS_LOG_TYPE_DEFAULT, v11, &v51, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  _expanseEnabled = [(CSDConversation *)self _expanseEnabled];
  if ((_expanseEnabled & 1) == 0)
  {
    activity = sub_100004778(_expanseEnabled);
    if (os_log_type_enabled(activity, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      v11 = "[WARN] Dropping new activitySession because Expanse features are disabled. Please enable the expanseEnabled feature flag in TelephonyUtilities.";
      goto LABEL_17;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_51;
  }

  activity = [sessionCopy activity];
  serverBag = [(CSDConversation *)self serverBag];
  activityIdentifier = [activity activityIdentifier];
  v15 = [serverBag localBundleIDForActivityIdentifier:activityIdentifier];

  v17 = sub_100004778(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 138412290;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BundleID override: %@", &v51, 0xCu);
  }

  if (v15)
  {
    [activity setBundleIdentifier:v15];
  }

  if ([activity isScreenSharingActivity])
  {
    applicationContext = [activity applicationContext];
    v19 = [CSDScreenSharingActivityManager screenShareAttributesFromApplicationContext:applicationContext];
    [activity setScreenShareAttributes:v19];
  }

  trustedFromHandle = [activity trustedFromHandle];
  if (trustedFromHandle)
  {
    trustedFromHandle2 = [activity trustedFromHandle];
    v22 = [(CSDConversation *)self memberWithHandle:trustedFromHandle2];
  }

  else
  {
    v22 = 0;
  }

  association = [v22 association];
  if (v22)
  {
    if ([v22 isLightweightMember] && objc_msgSend(v22, "isValidated") && (objc_msgSend(v22, "lightweightPrimary"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
    {
      v27 = sub_100004778(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        trustedFromHandle3 = [activity trustedFromHandle];
        lightweightPrimary = [v22 lightweightPrimary];
        v51 = 138412802;
        v52 = trustedFromHandle3;
        v53 = 2112;
        v54 = v22;
        v55 = 2112;
        v56 = lightweightPrimary;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Attempting to create Activity with trustedFromHandle: %@ on trusted lightweight member: %@. Overriding to lightweightPrimary. %@", &v51, 0x20u);
      }

      lightweightPrimary2 = [v22 lightweightPrimary];
      handle3 = [lightweightPrimary2 copy];
      [activity setTrustedFromHandle:handle3];
    }

    else
    {
      if (!association || ([association isPrimary] & 1) != 0 || objc_msgSend(association, "type") != 2)
      {
        goto LABEL_34;
      }

      handle = [association handle];
      lightweightPrimary2 = [(CSDConversation *)self memberWithHandle:handle];

      v34 = sub_100004778(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        trustedFromHandle4 = [activity trustedFromHandle];
        handle2 = [lightweightPrimary2 handle];
        v51 = 138412802;
        v52 = trustedFromHandle4;
        v53 = 2112;
        v54 = lightweightPrimary2;
        v55 = 2112;
        v56 = handle2;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Attempting to create Activity with trustedFromHandle: %@ on trusted associated member: %@. Overriding to associated member. %@", &v51, 0x20u);
      }

      handle3 = [lightweightPrimary2 handle];
      v37 = [handle3 copy];
      [activity setTrustedFromHandle:v37];
    }
  }

LABEL_34:
  localMember = [(CSDConversation *)self localMember];
  isLightweightMember = [localMember isLightweightMember];
  if (isLightweightMember)
  {
    lightweightPrimary3 = [localMember lightweightPrimary];
    if (lightweightPrimary3)
    {
      originator = [activity originator];
      [sessionCopy setIsLightweightPrimaryInitiated:{objc_msgSend(originator, "isEquivalentToHandle:", lightweightPrimary3)}];
    }

    else
    {
      [sessionCopy setIsLightweightPrimaryInitiated:0];
    }
  }

  v42 = sub_100004778(isLightweightMember);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    isLightweightPrimaryInitiated = [sessionCopy isLightweightPrimaryInitiated];
    v51 = 67109120;
    LODWORD(v52) = isLightweightPrimaryInitiated;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "isLightweightPrimaryInitiated: %d", &v51, 8u);
  }

  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  v23 = [activitySessionManager createActivitySessionWithTuActivitySession:sessionCopy];

  if (v23)
  {
    if (([activity isSystemActivity]& 1) == 0)
    {
      [(CSDConversation *)self setStagedActivitySession:0];
    }

    [(CSDConversation *)self _registerPluginsIfNecessary];
    isLocallyInitiated = [sessionCopy isLocallyInitiated];
    if (isLocallyInitiated)
    {
      v46 = sub_100004778(isLocallyInitiated);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        tuConversationActivitySession = [v23 tuConversationActivitySession];
        v51 = 138412290;
        v52 = tuConversationActivitySession;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Not launching app for locally started activity %@", &v51, 0xCu);
      }
    }

    else
    {
      [(CSDConversation *)self _launchApplicationDueToActivityCreation:v23];
    }

    activitySessionManager2 = [(CSDConversation *)self activitySessionManager];
    tuConversationActivitySession2 = [v23 tuConversationActivitySession];
    [(CSDConversation *)self activitySessionManager:activitySessionManager2 activitySessionChanged:tuConversationActivitySession2];

    [(CSDConversation *)self postSharePlayActivityDidChangeNotificationIfNecessary:sessionCopy];
  }

LABEL_51:

  return v23;
}

- (void)setUsingAirplay:(BOOL)airplay forActivitySessionUUID:(id)d
{
  airplayCopy = airplay;
  dCopy = d;
  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  [activitySessionManager setUsingAirplay:airplayCopy forActivitySessionWithUUID:dCopy];
}

- (void)resetActivitySessionSceneAssociationsForBundleID:(id)d
{
  dCopy = d;
  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  [activitySessionManager resetSceneAssociationsForBundleID:dCopy];
}

- (id)createStagedActivitySessionForActivity:(id)activity
{
  activityCopy = activity;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = activityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to create staged activitySession for activity: %@", &v24, 0xCu);
  }

  activitySessions = [(CSDConversation *)self activitySessions];
  v9 = [activitySessions count];

  if (v9)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to create staged activitySession since we can't replace an activitySession with a staged activitySession.", &v24, 2u);
    }

    v12 = 0;
  }

  else
  {
    v13 = +[IDSCurrentServerTime sharedInstance];
    currentServerTimeDate = [v13 currentServerTimeDate];

    [activityCopy setTimestamp:currentServerTimeDate];
    metadata = [activityCopy metadata];
    [metadata saveImageToDisk];

    v16 = [[TUConversationActivitySession alloc] initWithActivity:activityCopy locallyInitiated:1 timestamp:currentServerTimeDate isFirstJoin:1];
    startWhenStaged = [activityCopy startWhenStaged];
    if (startWhenStaged)
    {
      v18 = sub_100004778(startWhenStaged);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = activityCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping staging activity %@", &v24, 0xCu);
      }

      v19 = [(CSDConversation *)self createActivitySession:v16 isAutoStartedStagedActivity:1];
    }

    else
    {
      v20 = [(CSDConversation *)self setStagedActivitySessionForActivitySession:v16];
      if (v20)
      {
        v21 = sub_100004778(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = v16;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully created staged activitySession: %@", &v24, 0xCu);
        }

        delegate = [(CSDConversation *)self delegate];
        [delegate conversationChanged:self];
      }
    }

    v11 = v16;

    v12 = v11;
  }

  return v12;
}

- (BOOL)setStagedActivitySessionForActivitySession:(id)session
{
  sessionCopy = session;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to set staged activitySession: %@", &v19, 0xCu);
  }

  activitySessions = [(CSDConversation *)self activitySessions];
  v9 = [activitySessions count];

  if (v9)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to create staged activitySession since we can't replace an activitySession with a staged activitySession.", &v19, 2u);
    }
  }

  else
  {
    serverBag = [(CSDConversation *)self serverBag];
    activity = [sessionCopy activity];
    activityIdentifier = [activity activityIdentifier];
    v11 = [serverBag localBundleIDForActivityIdentifier:activityIdentifier];

    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BundleID override: %@", &v19, 0xCu);
    }

    if (v11)
    {
      activity2 = [sessionCopy activity];
      [activity2 setBundleIdentifier:v11];
    }

    [(CSDConversation *)self setStagedActivitySession:sessionCopy];
  }

  return v9 == 0;
}

- (void)_launchApplicationsForActivitiesIfNecessary
{
  v3 = TUShouldForegroundLaunchForActivity();

  [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary:v3];
}

- (void)removeActivitySessionIfNecessary
{
  if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    activitySessions = [(CSDConversation *)self activitySessions];
    v4 = [activitySessions countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v18;
      *&v5 = 138412802;
      v16 = v5;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(activitySessions);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          activity = [v9 activity];
          trustedFromHandle = [activity trustedFromHandle];

          if (trustedFromHandle)
          {
            v12 = [(CSDConversation *)self containsMemberWithHandle:trustedFromHandle];
            if ((v12 & 1) == 0)
            {
              v13 = sub_100004778(v12);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                identifier = [v9 identifier];
                *buf = v16;
                v22 = trustedFromHandle;
                v23 = 2112;
                v24 = identifier;
                v25 = 2112;
                selfCopy = self;
                _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Trusted from handle %@ not found in membership list for activitySession ID: %@ on conversation %@", buf, 0x20u);
              }

              identifier2 = [v9 identifier];
              [(CSDConversation *)self removeActivitySessionWithUUID:identifier2 usingTerminatingHandle:trustedFromHandle];
            }
          }
        }

        v6 = [activitySessions countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v6);
    }
  }
}

- (void)_launchApplicationsForActivitiesIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  obj = [(CSDConversation *)self activitySessions];
  if ([obj count])
  {
    isScreening = [(CSDConversation *)self isScreening];

    if (isScreening)
    {
      return;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    activitySessions = [(CSDConversation *)self activitySessions];
    v7 = [activitySessions countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v7)
    {
      v9 = activitySessions;
      goto LABEL_19;
    }

    v8 = v7;
    selfCopy = self;
    v20 = necessaryCopy;
    v9 = 0;
    v10 = *v24;
    obja = activitySessions;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obja);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if (v9)
        {
          tuConversationActivitySession = [*(*(&v23 + 1) + 8 * i) tuConversationActivitySession];
          timestamp = [tuConversationActivitySession timestamp];
          tuConversationActivitySession2 = [v9 tuConversationActivitySession];
          timestamp2 = [tuConversationActivitySession2 timestamp];
          v17 = [timestamp compare:timestamp2];

          if (v17 != 1)
          {
            continue;
          }
        }

        v18 = v12;

        v9 = v18;
      }

      v8 = [obja countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);

    if (v9)
    {
      [(CSDConversation *)selfCopy _launchApplicationForActivityIfNecessary:v9 shouldForeground:v20];
LABEL_19:
    }
  }

  else
  {
  }
}

- (void)_launchApplicationForActivityIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  [(CSDConversation *)self _launchApplicationForActivityIfNecessary:necessaryCopy shouldForeground:TUShouldForegroundLaunchForActivity()];
}

- (void)_launchApplicationForActivityIfNecessary:(id)necessary shouldForeground:(BOOL)foreground
{
  necessaryCopy = necessary;
  state = [(CSDConversation *)self state];
  if (state == 3)
  {
    sharePlaySystemStateObserver = [(CSDConversation *)self sharePlaySystemStateObserver];
    allowSharePlay = [sharePlaySystemStateObserver allowSharePlay];

    if (allowSharePlay)
    {
      tuConversationActivitySession = [necessaryCopy tuConversationActivitySession];
      activity = [tuConversationActivitySession activity];
      applicationContext = [activity applicationContext];

      if (!applicationContext)
      {
        v15 = sub_100004778(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          uUID = [activity UUID];
          *buf = 138412290;
          v45 = uUID;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Activity with identifier %@ is missing application context.", buf, 0xCu);
        }

        goto LABEL_21;
      }

      isStaticActivity = [activity isStaticActivity];
      if (isStaticActivity)
      {
        v15 = sub_100004778(isStaticActivity);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = tuConversationActivitySession;
          v16 = "Not launching app for static activity: %@";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
        }
      }

      else
      {
        isSupported = [activity isSupported];
        if (isSupported)
        {
          state2 = [tuConversationActivitySession state];
          if ((state2 - 2) >= 3)
          {
            if (state2 != 1)
            {
              applicationLaunchPolicyManager = [(CSDConversation *)self applicationLaunchPolicyManager];
              tuConversation = [(CSDConversation *)self tuConversation];
              if ([applicationLaunchPolicyManager shouldAutoLaunchAppForActivity:activity onConversation:tuConversation])
              {
                audioRoutePolicyManager = [(CSDConversation *)self audioRoutePolicyManager];
                sharePlaySupported = [audioRoutePolicyManager sharePlaySupported];
              }

              else
              {
                sharePlaySupported = 0;
              }

              v26 = sub_100004778(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                bundleIdentifier = [activity bundleIdentifier];
                uUID2 = [(CSDConversation *)self UUID];
                v29 = uUID2;
                v30 = @"NO";
                *buf = 138412802;
                v45 = bundleIdentifier;
                v46 = 2112;
                if (sharePlaySupported)
                {
                  v30 = @"YES";
                }

                v47 = uUID2;
                v48 = 2112;
                v49 = v30;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Request to launch %@ for conversation with UUID: %@ allowing auto-launch: %@", buf, 0x20u);
              }

              if (sharePlaySupported)
              {
                v41[0] = _NSConcreteStackBlock;
                v41[1] = 3221225472;
                v41[2] = sub_10009435C;
                v41[3] = &unk_10061A6A0;
                v41[4] = self;
                v31 = necessaryCopy;
                v42 = v31;
                v43 = tuConversationActivitySession;
                v32 = objc_retainBlock(v41);
                v33 = sub_100004778(v32);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Attempting to launch app in background w/ PiP", buf, 2u);
                }

                [v31 permitJoin];
                activitySessionManager = [(CSDConversation *)self activitySessionManager];
                applicationLauncher = [activitySessionManager applicationLauncher];
                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v38[2] = sub_1000944B4;
                v38[3] = &unk_10061A6C8;
                v39 = v31;
                v40 = v32;
                v36 = v32;
                [applicationLauncher launchAppForActivitySession:v39 options:1 completion:v38];
              }

              else
              {
                [CSDAnalyticsReporter sendManualLaunchNeededEventWithActivitySession:tuConversationActivitySession];
                delegate = [(CSDConversation *)self delegate];
                [delegate conversation:self appLaunchState:1 forActivitySession:tuConversationActivitySession];
              }

              goto LABEL_22;
            }

            v15 = sub_100004778(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = tuConversationActivitySession;
              v16 = "Not launching app as the activitySession has already been joined: %@";
              goto LABEL_20;
            }
          }

          else
          {
            v15 = sub_100004778(state2);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = tuConversationActivitySession;
              v16 = "Not launching app as we are not in an eligible activitySession state: %@";
              goto LABEL_20;
            }
          }
        }

        else
        {
          v15 = sub_100004778(isSupported);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = tuConversationActivitySession;
            v16 = "Not launching app for unsupported activity: %@";
            goto LABEL_20;
          }
        }
      }

LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    tuConversationActivitySession = sub_100004778(v9);
    if (os_log_type_enabled(tuConversationActivitySession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Not launching app as SharePlay is not allowed";
      goto LABEL_11;
    }
  }

  else
  {
    tuConversationActivitySession = sub_100004778(state);
    if (os_log_type_enabled(tuConversationActivitySession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Not launching app as we are not joined into this conversation";
LABEL_11:
      _os_log_impl(&_mh_execute_header, tuConversationActivitySession, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }
  }

LABEL_23:
}

- (NSSet)activitySessions
{
  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  activitySessions = [activitySessionManager activitySessions];
  v4 = [activitySessions copy];

  return v4;
}

- (NSSet)tuActivitySessions
{
  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  tuActivitySessions = [activitySessionManager tuActivitySessions];

  return tuActivitySessions;
}

- (id)tuSystemActivitySessions
{
  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  tuSystemActivitySessions = [activitySessionManager tuSystemActivitySessions];

  return tuSystemActivitySessions;
}

- (CGSize)localPortraitAspectRatio
{
  mainDisplay = [CUTWeakLinkClass() mainDisplay];
  [mainDisplay bounds];
  if (v3 <= v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = TUBinaryGCD();
  v8 = v5 / v7;
  v9 = v6 / v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)stopContentSharingSession
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  activitySessions = [(CSDConversation *)self activitySessions];
  v4 = [activitySessions countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(activitySessions);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        activity = [v9 activity];
        if ([activity isScreenSharingActivity])
        {
          tuConversationActivitySession = [v9 tuConversationActivitySession];
          isLocallyInitiated = [tuConversationActivitySession isLocallyInitiated];

          if (!isLocallyInitiated)
          {
            continue;
          }

          v14 = sub_100004778(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found locally initiated screen sharing activity session %@, ending session", buf, 0xCu);
          }

          activity = [v9 identifier];
          [(CSDConversation *)self removeActivitySessionWithUUID:activity usingTerminatingHandle:0];
        }
      }

      v6 = [activitySessions countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }
}

- (id)setupNewAVCSession:(BOOL)session
{
  sessionCopy = session;
  avcSession = [(CSDConversation *)self avcSession];

  v7 = sub_100004778(v6);
  v8 = v7;
  if (avcSession)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100472128();
    }

    [CSDCrashReporter simulateCrashReportWithFormat:@"Trying to setup new AVCSession without tearing down previous session first. Please file a bug to [FaceTime Core - TelephonyUtilities | All]."];
    [(CSDConversation *)self leave];
    v9 = 0;
  }

  else
  {
    v10 = os_signpost_id_generate(v7);

    v12 = sub_100004778(v11);
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "avcSessionCreationBlock", "", buf, 2u);
    }

    avcSessionCreationBlock = [(CSDConversation *)self avcSessionCreationBlock];
    idsSession = [(CSDConversation *)self idsSession];
    idsDestination = [idsSession idsDestination];
    queue = [(CSDConversation *)self queue];
    isVideoEnabled = [(CSDConversation *)self isVideoEnabled];
    report = [(CSDConversation *)self report];
    v9 = (avcSessionCreationBlock)[2](avcSessionCreationBlock, idsDestination, self, queue, isVideoEnabled, sessionCopy, report);

    v21 = sub_100004778(v20);
    v22 = v21;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v10, "avcSessionCreationBlock", "", buf, 2u);
    }

    if (v9)
    {
      if ([(CSDConversation *)self avMode])
      {
        [v9 setAudioEnabled:1];
        if ([(CSDConversation *)self isRelaying])
        {
          [v9 setRelaying:{-[CSDConversation isRelaying](self, "isRelaying")}];
        }

        if ([(CSDConversation *)self isScreening])
        {
          [v9 setScreening:{-[CSDConversation isScreening](self, "isScreening")}];
        }
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
      v24 = [activeRemoteParticipants countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(activeRemoteParticipants);
            }

            [(CSDConversation *)self _addRemoteParticipantToAVCSessionIfPossible:*(*(&v29 + 1) + 8 * i)];
          }

          v25 = [activeRemoteParticipants countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v25);
      }
    }
  }

  return v9;
}

- (BOOL)_joinIsDisallowedByGreenTeaWithContext:(id)context
{
  contextCopy = context;
  featureFlags = [(CSDConversation *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![contextCopy avMode])
  {
    presentationMode = [contextCopy presentationMode];

    if (presentationMode == 2)
    {
      v17 = sub_100004778(v7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        tuConversation = [(CSDConversation *)self tuConversation];
        mergedRemoteMembers = [tuConversation mergedRemoteMembers];
        v20 = [mergedRemoteMembers count];
        v21 = @"NO";
        if (v20 > 1)
        {
          v21 = @"YES";
        }

        v24 = 138412290;
        v25 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Returning Join Disallowed for Green Tea Laguna Conversation: %@", &v24, 0xCu);
      }

      tuConversation2 = [(CSDConversation *)self tuConversation];
      mergedRemoteMembers2 = [tuConversation2 mergedRemoteMembers];
      v15 = [mergedRemoteMembers2 count] > 1;

      goto LABEL_26;
    }
  }

  else
  {
  }

  tuConversation2 = sub_100004778(v7);
  if (os_log_type_enabled(tuConversation2, OS_LOG_TYPE_DEFAULT))
  {
    isVideo = [(CSDConversation *)self isVideo];
    if ((isVideo & 1) != 0 || ([contextCopy provider], presentationMode = objc_claimAutoreleasedReturnValue(), (objc_msgSend(presentationMode, "isDefaultProvider") & 1) == 0))
    {
      v12 = isVideo ^ 1;
      isVideo = [(CSDConversation *)self remoteMembers];
      v13 = [isVideo count];
      v11 = @"NO";
      if (v13 > 1)
      {
        v11 = @"YES";
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = @"YES";
      v12 = 1;
    }

    v24 = 138412290;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, tuConversation2, OS_LOG_TYPE_DEFAULT, "Returning Join Disallowed for Green Tea Conversation: %@", &v24, 0xCu);
    if (v10)
    {
    }

    if (v12)
    {
    }
  }

  isVideo2 = [(CSDConversation *)self isVideo];
  if ((isVideo2 & 1) != 0 || ([contextCopy provider], tuConversation2 = objc_claimAutoreleasedReturnValue(), (-[NSObject isDefaultProvider](tuConversation2, "isDefaultProvider") & 1) == 0))
  {
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v15 = [remoteMembers count] > 1;

    if (isVideo2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_26:

LABEL_27:
  return v15;
}

- (void)joinUsingContext:(id)context
{
  contextCopy = context;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v120 = 2112;
    v121 = contextCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Joining CSDConversation self: %@ context: %@", buf, 0x16u);
  }

  participantCluster = [contextCopy participantCluster];
  localParticipantCluster = self->_localParticipantCluster;
  self->_localParticipantCluster = participantCluster;

  serverBag = [(CSDConversation *)self serverBag];
  -[CSDConversation setRebroadcastTimeThreshold:](self, "setRebroadcastTimeThreshold:", [serverBag rebroadcastTimeThreshold]);

  [(CSDConversation *)self setFailureContext:0];
  delegate = [(CSDConversation *)self delegate];
  messagesGroupUUID = [(CSDConversation *)self messagesGroupUUID];
  [contextCopy setMessagesGroupUUID:messagesGroupUUID];

  messagesGroupName = [(CSDConversation *)self messagesGroupName];
  [contextCopy setMessagesGroupName:messagesGroupName];

  if (!+[TUConversationManager allowsVideo])
  {
LABEL_6:
    [contextCopy setVideoEnabled:0];
    goto LABEL_8;
  }

  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [contextCopy provider];
    supportsVideo = [provider supportsVideo];

    if (supportsVideo)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_8:
  v17 = +[CSDMomentsController localCapabilities];
  [contextCopy setMomentsAvailable:{objc_msgSend(v17, "isEnabled")}];

  [contextCopy setPersonaAvailable:TUIsPersonaAvailable()];
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  [contextCopy setInitiator:{objc_msgSend(activeRemoteParticipantsByIdentifier, "count") == 0}];

  featureFlags2 = [(CSDConversation *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags2 avLessSharePlayEnabled];

  if (avLessSharePlayEnabled)
  {
    -[CSDConversation setAvMode:](self, "setAvMode:", [contextCopy avMode]);
    if ([(CSDConversation *)self avMode])
    {
      -[CSDConversation setVideo:](self, "setVideo:", [contextCopy avMode] == 2);
    }

    -[CSDConversation setPresentationMode:](self, "setPresentationMode:", [contextCopy presentationMode]);
    if (![contextCopy avMode])
    {
      isVideo = [contextCopy isVideo];
      if (isVideo)
      {
        v22 = sub_100004778(isVideo);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_100472164();
        }
      }
    }

    if ([contextCopy avMode])
    {
      presentationMode = [contextCopy presentationMode];
      if (presentationMode)
      {
        v24 = sub_100004778(presentationMode);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1004721CC();
        }
      }
    }

    if (![contextCopy avMode] && !objc_msgSend(contextCopy, "presentationMode"))
    {
      v25 = sub_100004778(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_100472234();
      }
    }
  }

  else
  {
    -[CSDConversation setVideo:](self, "setVideo:", [contextCopy isVideo]);
  }

  featureFlags3 = [(CSDConversation *)self featureFlags];
  if ([featureFlags3 usesModernScreenSharingFromMessages])
  {
    screenSharingRequest = [contextCopy screenSharingRequest];

    if (!screenSharingRequest)
    {
      goto LABEL_31;
    }

    featureFlags3 = [contextCopy screenSharingRequest];
    screenSharingRequestsByUUID = [(CSDConversation *)self screenSharingRequestsByUUID];
    screenSharingRequest2 = [contextCopy screenSharingRequest];
    uUID = [screenSharingRequest2 UUID];
    [screenSharingRequestsByUUID setObject:featureFlags3 forKeyedSubscript:uUID];
  }

LABEL_31:
  self->_spatialPersonaEnabled = [contextCopy isSpatialPersonaEnabled];
  localMember = [(CSDConversation *)self localMember];
  [contextCopy setLightweight:{objc_msgSend(localMember, "isLightweightMember")}];

  deviceSupport = [(CSDConversation *)self deviceSupport];
  if ([deviceSupport isGreenTea])
  {
    v33 = [(CSDConversation *)self _joinIsDisallowedByGreenTeaWithContext:contextCopy];

    if (v33)
    {
      v35 = sub_100004778(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1004722D8(self);
      }

      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:519];
      goto LABEL_113;
    }
  }

  else
  {
  }

  invitationPreferences = [(CSDConversation *)self invitationPreferences];
  if ([(NSSet *)invitationPreferences count])
  {
    goto LABEL_41;
  }

  invitationPreferences2 = [contextCopy invitationPreferences];
  if (![invitationPreferences2 count] || -[CSDConversation hasJoined](self, "hasJoined"))
  {

LABEL_41:
    goto LABEL_42;
  }

  isLocallyCreated = [(CSDConversation *)self isLocallyCreated];

  if (isLocallyCreated)
  {
    v68 = sub_100004778(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      invitationPreferences3 = [contextCopy invitationPreferences];
      *buf = 138412290;
      selfCopy = invitationPreferences3;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Copying invitation preferences to locally-created conversation from join context: %@", buf, 0xCu);
    }

    invitationPreferences4 = [contextCopy invitationPreferences];
    v71 = [invitationPreferences4 copy];
    [(CSDConversation *)self setInvitationPreferences:v71];

    invitationPreferences = [(CSDConversation *)self featureFlags];
    if (![(NSSet *)invitationPreferences nearbyFaceTimeEnabled])
    {
      goto LABEL_41;
    }

    invitationPreferences5 = [(CSDConversation *)self invitationPreferences];
    v73 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
    v74 = [invitationPreferences5 isEqualToSet:v73];

    if (v74)
    {
      v75 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
      [(CSDConversation *)self addRequiredCapabilities:v75 requiredLackOfCapabilities:0];

      participantCluster2 = [contextCopy participantCluster];

      if (participantCluster2)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        invitationPreferences = self->_remoteMembers;
        v77 = [(NSSet *)invitationPreferences countByEnumeratingWithState:&v112 objects:v117 count:16];
        if (v77)
        {
          v78 = v77;
          v79 = *v113;
          do
          {
            for (i = 0; i != v78; i = i + 1)
            {
              if (*v113 != v79)
              {
                objc_enumerationMutation(invitationPreferences);
              }

              v81 = *(*(&v112 + 1) + 8 * i);
              participantCluster3 = [contextCopy participantCluster];
              [v81 setProposedParticipantCluster:participantCluster3];
            }

            v78 = [(NSSet *)invitationPreferences countByEnumeratingWithState:&v112 objects:v117 count:16];
          }

          while (v78);
        }

        goto LABEL_41;
      }
    }
  }

LABEL_42:
  self->_isNearbySharePlay = [contextCopy isNearbySharePlay];
  isLightweight = [contextCopy isLightweight];
  if (isLightweight)
  {
    v39 = sub_100004778(isLightweight);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      localMember2 = [(CSDConversation *)self localMember];
      *buf = 138412290;
      selfCopy = localMember2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Bypassing AVCSession creation because localMember is lightweight %@", buf, 0xCu);
    }

    [(CSDConversation *)self setState:2];
    [(CSDConversation *)self _startIDSSessionWithContext:contextCopy];
    goto LABEL_112;
  }

  if (![(CSDConversation *)self state])
  {
    v44 = sub_100004778(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(CSDConversation *)self idsSession];
      idsDestination = [idsSession idsDestination];
      *buf = 138412290;
      selfCopy = idsDestination;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Creating CSDAVCSession with transport token %@", buf, 0xCu);
    }

    isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
    featureFlags4 = [(CSDConversation *)self featureFlags];
    if (([featureFlags4 conversationHandoffEnabled] & 1) == 0)
    {

      goto LABEL_89;
    }

    participantAssociation = [contextCopy participantAssociation];

    if (!participantAssociation)
    {
      goto LABEL_89;
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
    v51 = [activeRemoteParticipants countByEnumeratingWithState:&v108 objects:v116 count:16];
    v52 = v51 != 0;
    if (v51)
    {
      v53 = v51;
      v104 = v51 != 0;
      v105 = isOneToOneModeEnabled;
      v106 = delegate;
      selfCopy2 = self;
      v54 = 0;
      v55 = *v109;
      do
      {
        for (j = 0; j != v53; j = j + 1)
        {
          if (*v109 != v55)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v57 = *(*(&v108 + 1) + 8 * j);
          identifier = [v57 identifier];
          participantAssociation2 = [contextCopy participantAssociation];
          identifier2 = [participantAssociation2 identifier];

          if (identifier == identifier2)
          {
            avcIdentifier = [v57 avcIdentifier];
            v62 = [avcIdentifier copy];
            participantAssociation3 = [contextCopy participantAssociation];
            [participantAssociation3 setAvcIdentifier:v62];

            v54 = 1;
          }
        }

        v53 = [activeRemoteParticipants countByEnumeratingWithState:&v108 objects:v116 count:16];
      }

      while (v53);

      if ((v54 & 1) == 0)
      {
        v52 = 0;
        delegate = v106;
        self = selfCopy2;
        isOneToOneModeEnabled = v105;
        if (!v105)
        {
          goto LABEL_89;
        }

        goto LABEL_115;
      }

      activeRemoteParticipants = [contextCopy participantAssociation];
      self = selfCopy2;
      [(CSDConversation *)selfCopy2 setLocalParticipantAssociation:activeRemoteParticipants];
      delegate = v106;
      v52 = v104;
      isOneToOneModeEnabled = v105;
    }

    if (!isOneToOneModeEnabled)
    {
      goto LABEL_89;
    }

LABEL_115:
    activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
    v100 = [activeRemoteParticipants2 count];

    v102 = !v52;
    if (v100 < 2)
    {
      v102 = 1;
    }

    if (v102)
    {
      isOneToOneModeEnabled = 1;
    }

    else
    {
      v103 = sub_100004778(v101);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "This device is joining a U+1 FaceTime call to complete a handoff from a different participant, setting oneToOneModeEnabled to NO.", buf, 2u);
      }

      [contextCopy setOneToOneModeEnabled:0];
      isOneToOneModeEnabled = 0;
    }

LABEL_89:
    featureFlags5 = [(CSDConversation *)self featureFlags];
    conversationOneToOneModeEnabled = [featureFlags5 conversationOneToOneModeEnabled];

    if (conversationOneToOneModeEnabled)
    {
      [(CSDConversation *)self updateLocalAspectRatios];
    }

    featureFlags6 = [(CSDConversation *)self featureFlags];
    uplevelFTAEnabled = [featureFlags6 uplevelFTAEnabled];

    if (uplevelFTAEnabled)
    {
      -[CSDConversation setIsUpgradeToVideo:](self, "setIsUpgradeToVideo:", [contextCopy isUpgradeToVideo]);
    }

    if ([(CSDConversation *)self avMode])
    {
      -[CSDConversation setVideoEnabled:](self, "setVideoEnabled:", [contextCopy isVideoEnabled]);
    }

    v87 = [(CSDConversation *)self setupNewAVCSession:isOneToOneModeEnabled];
    [(CSDConversation *)self setAvcSession:v87];

    avcSession = [(CSDConversation *)self avcSession];
    localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
    [avcSession setLocalParticipantCluster:localParticipantCluster];

    [(CSDConversation *)self _recomputeAudioStates];
    [(CSDConversation *)self setAvcSessionInProgress:0];
    [(CSDConversation *)self setExpectedAudioEnabled:0];
    [(CSDConversation *)self setExpectedVideoEnabled:0];
    [(CSDConversation *)self setExpectedVideoPaused:0];
    [(CSDConversation *)self setExpectedScreenEnabled:0];
    avcSession2 = [(CSDConversation *)self avcSession];

    v92 = sub_100004778(v91);
    v93 = v92;
    if (!avcSession2)
    {
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_10047229C();
      }

      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:502];
      goto LABEL_112;
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      avcSession3 = [(CSDConversation *)self avcSession];
      *buf = 138412290;
      selfCopy = avcSession3;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Created CSDAVCSession %@", buf, 0xCu);
    }

    if ([contextCopy wantsStagingArea])
    {
      [(CSDConversation *)self setState:1];
      representsTransitionFromPending = [contextCopy representsTransitionFromPending];
      if (representsTransitionFromPending)
      {
        representsTransitionFromPending = -[CSDConversation setVideoEnabled:](self, "setVideoEnabled:", [contextCopy isVideoEnabled]);
      }

      participantAssociation4 = sub_100004778(representsTransitionFromPending);
      if (os_log_type_enabled(participantAssociation4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, participantAssociation4, OS_LOG_TYPE_DEFAULT, "Not joining IDS group session because wantsStagingArea is true, instead moving to preparing state", buf, 2u);
      }

      goto LABEL_111;
    }

    if ([(CSDConversation *)self avMode])
    {
      goto LABEL_107;
    }

    goto LABEL_108;
  }

  state = [(CSDConversation *)self state];
  if (state == 1)
  {
    if ([(CSDConversation *)self avMode])
    {
      featureFlags7 = [(CSDConversation *)self featureFlags];
      if ([featureFlags7 conversationHandoffEnabled])
      {
        localParticipantAssociation = [(CSDConversation *)self localParticipantAssociation];

        if (!localParticipantAssociation)
        {
LABEL_53:
          -[CSDConversation setVideoEnabled:](self, "setVideoEnabled:", [contextCopy isVideoEnabled]);
LABEL_107:
          -[CSDConversation setVideoPaused:](self, "setVideoPaused:", [contextCopy isVideoPaused]);
          goto LABEL_108;
        }

        featureFlags7 = [(CSDConversation *)self localParticipantAssociation];
        [contextCopy setParticipantAssociation:featureFlags7];
      }

      goto LABEL_53;
    }

LABEL_108:
    [(CSDConversation *)self setState:2];
    [(CSDConversation *)self _startIDSSessionWithContext:contextCopy];
    featureFlags8 = [(CSDConversation *)self featureFlags];
    avLessSharePlayEnabled2 = [featureFlags8 avLessSharePlayEnabled];

    if (avLessSharePlayEnabled2)
    {
      -[CSDConversation setAvMode:](self, "setAvMode:", [contextCopy avMode]);
    }

    participantAssociation4 = [contextCopy participantAssociation];
    [(CSDConversation *)self continueHandoffAudioRouteForIdentifier:[participantAssociation4 identifier] participantLeft:0];
LABEL_111:

LABEL_112:
    [delegate conversationChanged:self];
    goto LABEL_113;
  }

  v64 = sub_100004778(state);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    uUID2 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    selfCopy = uUID2;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[WARN] Not joining conversation because it isn't waiting or preparing: %@", buf, 0xCu);
  }

LABEL_113:
}

- (void)updateLocalParticipantInfo
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  localParticipantBlobTracker = [(CSDConversation *)self localParticipantBlobTracker];
  [localParticipantBlobTracker invalidateLocalParticipantBlobWantsDeliveryOverPush:0];
}

- (void)broadcastLocalParticipantData
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];

  if (avcSession)
  {
    localParticipantBlobTracker = [(CSDConversation *)self localParticipantBlobTracker];
    [localParticipantBlobTracker invalidateLocalParticipantBlobWantsDeliveryOverPush:1];
  }

  else
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CSDConversation *)self UUID];
      *buf = 138412290;
      v10 = uUID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Not sending local participant data, no AVCSession: %@", buf, 0xCu);
    }
  }
}

- (void)startAudio
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    v12 = 138413058;
    v13 = uUID;
    v14 = 1024;
    isAudioReady = [(CSDConversation *)self isAudioReady];
    v16 = 1024;
    isAudioPaused = [(CSDConversation *)self isAudioPaused];
    v18 = 1024;
    isAudioEnabled = [(CSDConversation *)self isAudioEnabled];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested to mark conversation as audioReady UUID: %@ audioReady: %d audioPaused: %d audioEnabled: %d", &v12, 0x1Eu);
  }

  [(CSDConversation *)self _addParticipantsWaitingToBeAddedToAVCSession];
  if ([(CSDConversation *)self avMode])
  {
    if ([(CSDConversation *)self state]== 2 || (v7 = [(CSDConversation *)self state], v7 == 3))
    {
      avcSession = [(CSDConversation *)self avcSession];
      [avcSession setAudioReady:1];

      [(CSDConversation *)self _startAVCSessionIfNecessary];
      return;
    }

    v9 = sub_100004778(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [(CSDConversation *)self UUID];
      v12 = 138412290;
      v13 = uUID2;
      v11 = "[WARN] Not starting audio for conversation because it isn't joining/joined: %@";
      goto LABEL_11;
    }
  }

  else
  {
    v9 = sub_100004778(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [(CSDConversation *)self UUID];
      v12 = 138412290;
      v13 = uUID2;
      v11 = "[WARN] Not starting audio for conversation because avmode is .none %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }
  }
}

- (BOOL)supportsLeaveContext
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v3 = [activeRemoteParticipants countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    supportsLeaveContext = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        if (supportsLeaveContext)
        {
          capabilities = [*(*(&v10 + 1) + 8 * i) capabilities];
          supportsLeaveContext = [capabilities supportsLeaveContext];
        }

        else
        {
          supportsLeaveContext = 0;
        }
      }

      v4 = [activeRemoteParticipants countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    supportsLeaveContext = 1;
  }

  return supportsLeaveContext;
}

- (void)leaveWithReason:(unint64_t)reason
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:reason];
  [(CSDConversation *)self leaveUsingContext:v6];
}

- (void)leaveUsingContext:(id)context
{
  contextCopy = context;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v66 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "leaveUsingContext: self UUID: %@", buf, 0xCu);
  }

  [(CSDConversation *)self setUplinkMuted:1];
  [(CSDConversation *)self setAudioEnabled:0];
  [(CSDConversation *)self setVideoEnabled:0];
  delegate = [(CSDConversation *)self delegate];
  tuConversation = [(CSDConversation *)self tuConversation];
  mergedActiveRemoteParticipants = [tuConversation mergedActiveRemoteParticipants];

  tuConversation2 = [(CSDConversation *)self tuConversation];
  mergedRemoteMembers = [tuConversation2 mergedRemoteMembers];

  if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
  {
    v52 = contextCopy;
    v14 = mergedActiveRemoteParticipants;
    [(CSDConversation *)self setState:4];
    [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"Calling [CSDConversation leave]"];
    [(CSDConversation *)self setUplinkMuted:1];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
    v16 = [activeRemoteParticipantsByIdentifier countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v60;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(activeRemoteParticipantsByIdentifier);
          }

          v20 = *(*(&v59 + 1) + 8 * i);
          avcSession = [(CSDConversation *)self avcSession];
          [avcSession setDownlinkMuted:1 forParticipantWithIdentifier:{objc_msgSend(v20, "unsignedLongLongValue")}];
        }

        v17 = [activeRemoteParticipantsByIdentifier countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v17);
    }

    v22 = sub_100004778([(CSDConversation *)self setSplitSessionSecondary:0]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(CSDConversation *)self idsSession];
      *buf = 138412290;
      v66 = idsSession;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Leaving CSDIDSGroupSession: %@", buf, 0xCu);
    }

    v25 = sub_100004778(v24);
    mergedActiveRemoteParticipants = v14;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      supportsLeaveContext = [(CSDConversation *)self supportsLeaveContext];
      v27 = @"NO";
      if (supportsLeaveContext)
      {
        v27 = @"YES";
      }

      *buf = 138412290;
      v66 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Conversation participants support leave context: %@", buf, 0xCu);
    }

    v28 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v28];

    idsSession2 = [(CSDConversation *)self idsSession];
    contextCopy = v52;
    if ([(CSDConversation *)self supportsLeaveContext])
    {
      v30 = v52;
    }

    else
    {
      v30 = 0;
    }

    [idsSession2 leaveGroupSessionWithContext:v30];

    [(CSDConversation *)self stopContentSharingSession];
    [(CSDConversation *)self destroyScreenCapturePickerIfNecessary];
    [(CSDConversation *)self resetConversation];
    goto LABEL_22;
  }

  if ([(CSDConversation *)self state]== 1)
  {
    [(CSDConversation *)self setState:0];
    [(CSDConversation *)self setAvcSession:0];
    [(CSDConversation *)self setAvcSessionInProgress:0];
    v31 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v31];

LABEL_22:
    [delegate conversationChanged:self];
    goto LABEL_23;
  }

  state = [(CSDConversation *)self state];
  if (!state)
  {
    link = [(CSDConversation *)self link];
    if (link)
    {

      goto LABEL_29;
    }

    if ([mergedRemoteMembers count] != 1 || objc_msgSend(mergedActiveRemoteParticipants, "count") != 1)
    {
      state = [(CSDConversation *)self isNearbySession];
      if (!state)
      {
        goto LABEL_29;
      }
    }

    v53 = contextCopy;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v36 = [(CSDConversation *)self activeRemoteParticipants:mergedRemoteMembers];
    v37 = [v36 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (!v37)
    {
      goto LABEL_49;
    }

    v38 = v37;
    v39 = *v56;
LABEL_37:
    v40 = 0;
    while (1)
    {
      if (*v56 != v39)
      {
        objc_enumerationMutation(v36);
      }

      v41 = *(*(&v55 + 1) + 8 * v40);
      activeIDSDestination = [v41 activeIDSDestination];
      if (activeIDSDestination)
      {
        idsDestination = activeIDSDestination;
      }

      else
      {
        remoteMembers = [(CSDConversation *)self remoteMembers];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100096938;
        v54[3] = &unk_10061A6F0;
        v54[4] = v41;
        v45 = [remoteMembers tu_anyObjectPassingTest:v54];

        idsDestination = [v45 idsDestination];

        if (!idsDestination)
        {
          idsDestination = sub_100004778(v46);
          if (os_log_type_enabled(idsDestination, OS_LOG_TYPE_DEFAULT))
          {
            uUID2 = [(CSDConversation *)self UUID];
            *buf = 138412290;
            v66 = uUID2;
            _os_log_impl(&_mh_execute_header, idsDestination, OS_LOG_TYPE_DEFAULT, "[WARN] No IDS destination to send decline message: %@", buf, 0xCu);
          }

          goto LABEL_44;
        }
      }

      [delegate conversation:self sendDeclineMessageToParticipantDestination:idsDestination];
LABEL_44:

      if (v38 == ++v40)
      {
        v48 = [v36 countByEnumeratingWithState:&v55 objects:v63 count:16];
        v38 = v48;
        if (!v48)
        {
LABEL_49:

          v49 = +[TUCallScreenShareAttributes defaultAttributes];
          [(CSDConversation *)self setScreenEnabled:0 attributes:v49];

          contextCopy = v53;
          mergedRemoteMembers = v50;
          mergedActiveRemoteParticipants = v51;
          goto LABEL_23;
        }

        goto LABEL_37;
      }
    }
  }

LABEL_29:
  v34 = sub_100004778(state);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    uUID3 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v66 = uUID3;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] Not leaving conversation because it isn't joining/joined: %@", buf, 0xCu);
  }

LABEL_23:
}

- (void)kickMember:(id)member
{
  memberCopy = member;
  v5 = sub_100004778(memberCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v18 = uUID;
    v19 = 2112;
    v20 = memberCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Kicking member on conversation UUID: %@ member: %@", buf, 0x16u);
  }

  activeParticipants = [(CSDConversation *)self activeParticipants];
  allObjects = [activeParticipants allObjects];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096BA8;
  v15[3] = &unk_10061A718;
  v9 = memberCopy;
  v16 = v9;
  v10 = [allObjects tu_firstObjectPassingTest:v15];

  if (v10)
  {
    pendingKickedMembersByIdentifier = [(CSDConversation *)self pendingKickedMembersByIdentifier];
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 identifier]);
    [pendingKickedMembersByIdentifier setObject:v9 forKeyedSubscript:v12];
  }

  idsSession = [(CSDConversation *)self idsSession];
  [idsSession kickMember:v9];

  v14 = [NSSet setWithObject:v9];
  [(CSDConversation *)self removeRemoteMembers:v14 triggeredLocally:1];
}

- (void)_allowMember:(id)member
{
  memberCopy = member;
  pendingAllowedMembers = [(CSDConversation *)self pendingAllowedMembers];
  [pendingAllowedMembers addObject:memberCopy];

  idsSession = [(CSDConversation *)self idsSession];
  [idsSession allowMember:memberCopy];
}

- (void)setRemoteParticipantsDownlinkMuted:(BOOL)muted
{
  mutedCopy = muted;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v6 = [activeRemoteParticipantsByIdentifier countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(activeRemoteParticipantsByIdentifier);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        avcSession = [(CSDConversation *)self avcSession];
        [avcSession setAudioAndVideoMuted:mutedCopy forParticipantWithIdentifier:{objc_msgSend(v10, "unsignedLongLongValue")}];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [activeRemoteParticipantsByIdentifier countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants
{
  mutedCopy = muted;
  participantsCopy = participants;
  avcSession = [(CSDConversation *)self avcSession];
  [avcSession beginParticipantUpdates];

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 67109634;
    v25 = mutedCopy;
    v26 = 2112;
    v27 = uUID;
    v28 = 2112;
    v29 = participantsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting downlinkAudioConfig muted:%d on conversation UUID: %@ participants:%@", buf, 0x1Cu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = participantsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        avcSession2 = [(CSDConversation *)self avcSession];
        [avcSession2 setDownlinkMuted:mutedCopy forParticipantWithIdentifier:{objc_msgSend(v16, "identifier")}];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  avcSession3 = [(CSDConversation *)self avcSession];
  [avcSession3 commitParticipantUpdates];
}

- (void)_recomputeAudioStates
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

  activeRemoteParticipants2 = sub_100004778(v6);
  v8 = os_log_type_enabled(activeRemoteParticipants2, OS_LOG_TYPE_DEFAULT);
  if ((nearbyFaceTimeEnabled & 1) == 0)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, activeRemoteParticipants2, OS_LOG_TYPE_DEFAULT, "Nearby FaceTime not enabled, skipping recomputing audio states", buf, 2u);
    }

    goto LABEL_28;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, activeRemoteParticipants2, OS_LOG_TYPE_DEFAULT, "Recomputing audio states for participants", buf, 2u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(CSDConversation *)self activeRemoteParticipants];
  v9 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    LODWORD(v11) = 0;
    v12 = *v39;
    while (1)
    {
      v13 = 0;
      v32 = v10;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
        cluster = [v14 cluster];
        if (cluster)
        {
          v16 = cluster;
          cluster2 = [v14 cluster];
          if ([cluster2 type] == 1)
          {
            [v14 cluster];
            v18 = v12;
            v11 = v19 = v11;
            localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
            v21 = [v11 isEqual:localParticipantCluster];

            LODWORD(v11) = v19;
            v12 = v18;
            v10 = v32;

            LODWORD(v11) = v11 + (v21 & 1);
            goto LABEL_14;
          }
        }

        v21 = 0;
LABEL_14:
        avcSession = [(CSDConversation *)self avcSession];
        [avcSession setPlaybackSynchronizationGroupMember:v21 & 1 forParticipantWithIdentifier:{objc_msgSend(v14, "identifier")}];

        avcSession2 = [(CSDConversation *)self avcSession];
        [avcSession2 setDownlinkMuted:v21 & 1 forParticipantWithIdentifier:{objc_msgSend(v14, "identifier")}];

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (!v10)
      {
        v11 = v11;
        goto LABEL_20;
      }
    }
  }

  v11 = 0;
LABEL_20:

  if (![(CSDConversation *)self isOneToOneModeEnabled])
  {
    activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
    v25 = [activeRemoteParticipants count];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
    v26 = [activeRemoteParticipants2 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(activeRemoteParticipants2);
          }

          v30 = *(*(&v34 + 1) + 8 * i);
          avcSession3 = [(CSDConversation *)self avcSession];
          [avcSession3 setAudioEnabled:v25 != v11 forParticipantWithIdentifier:{objc_msgSend(v30, "identifier")}];
        }

        v27 = [activeRemoteParticipants2 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v27);
    }

LABEL_28:
  }
}

- (id)reducedInfoMembers:(id)members
{
  membersCopy = members;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [membersCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = membersCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        handle = [*(*(&v16 + 1) + 8 * i) handle];
        v11 = [CXHandle handleWithTUHandle:handle];

        v12 = [TUConversationMember alloc];
        tuHandle = [v11 tuHandle];
        v14 = [v12 initWithHandle:tuHandle];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isRepresentedByRemoteMembers:(id)members andLink:(id)link
{
  linkCopy = link;
  membersCopy = members;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteMembers = [(CSDConversation *)self remoteMembers];
  v10 = [(CSDConversation *)self reducedInfoMembers:remoteMembers];

  v11 = [(CSDConversation *)self reducedInfoMembers:membersCopy];

  if ([v10 isEqualToSet:v11] && ((-[CSDConversation link](self, "link"), v12 = objc_claimAutoreleasedReturnValue(), v12, linkCopy) || !v12))
  {
    link = [(CSDConversation *)self link];

    if (!linkCopy || link)
    {
      link2 = [(CSDConversation *)self link];

      v13 = 1;
      if (linkCopy && link2)
      {
        link3 = [(CSDConversation *)self link];
        pseudonym = [link3 pseudonym];
        pseudonym2 = [linkCopy pseudonym];
        v13 = [pseudonym isEqualToString:pseudonym2];
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateRemoteMember:(id)member
{
  memberCopy = member;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  remoteMembers = [(CSDConversation *)self remoteMembers];
  v6 = [remoteMembers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(remoteMembers);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        handle = [memberCopy handle];
        handle2 = [v10 handle];
        v13 = TUHandlesAreCanonicallyEqual();

        if (v13)
        {
          remoteMembers2 = [(CSDConversation *)self remoteMembers];
          v15 = [remoteMembers2 mutableCopy];

          [v15 removeObject:v10];
          [v15 addObject:memberCopy];
          v16 = [v15 copy];
          [(CSDConversation *)self setRemoteMembers:v16];

          goto LABEL_11;
        }
      }

      v7 = [remoteMembers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)updateLightweightMember:(id)member
{
  memberCopy = member;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  v6 = [lightweightMembers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(lightweightMembers);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        handle = [memberCopy handle];
        handle2 = [v10 handle];
        v13 = TUHandlesAreCanonicallyEqual();

        if (v13)
        {
          lightweightMembers2 = [(CSDConversation *)self lightweightMembers];
          v15 = [lightweightMembers2 mutableCopy];

          [v15 removeObject:v10];
          [v15 addObject:memberCopy];
          v16 = [v15 copy];
          [(CSDConversation *)self setLightweightMembers:v16];

          goto LABEL_11;
        }
      }

      v7 = [lightweightMembers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)memberWithHandle:(id)handle
{
  handleCopy = handle;
  localMember = [(CSDConversation *)self localMember];
  handle = [localMember handle];
  v7 = TUHandlesAreCanonicallyEqual();

  if (v7)
  {
    localMember2 = [(CSDConversation *)self localMember];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v10 = [remoteMembers countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(remoteMembers);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        handle2 = [v14 handle];
        v16 = TUHandlesAreCanonicallyEqual();

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [remoteMembers countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      localMember2 = v14;

      if (localMember2)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_11:
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    lightweightMembers = [(CSDConversation *)self lightweightMembers];
    v18 = [lightweightMembers countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(lightweightMembers);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          handle3 = [v22 handle];
          v24 = TUHandlesAreCanonicallyEqual();

          if (v24)
          {
            localMember2 = v22;
            goto LABEL_23;
          }
        }

        v19 = [lightweightMembers countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    localMember2 = 0;
LABEL_23:
  }

LABEL_24:

  return localMember2;
}

- (BOOL)containsMemberWithHandle:(id)handle
{
  v3 = [(CSDConversation *)self memberWithHandle:handle];
  v4 = v3 != 0;

  return v4;
}

- (NSDictionary)capabilitySendMessageOptions
{
  idsSession = [(CSDConversation *)self idsSession];
  requiredCapabilities = [idsSession requiredCapabilities];

  idsSession2 = [(CSDConversation *)self idsSession];
  requiredLackOfCapabilities = [idsSession2 requiredLackOfCapabilities];

  if ([requiredCapabilities count] || objc_msgSend(requiredLackOfCapabilities, "count"))
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    if ([requiredCapabilities count])
    {
      [v7 setObject:requiredCapabilities forKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
    }

    if ([requiredLackOfCapabilities count])
    {
      [v7 setObject:requiredLackOfCapabilities forKeyedSubscript:IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey];
    }

    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  ofCapabilitiesCopy = ofCapabilities;
  capabilitiesCopy = capabilities;
  idsSession = [(CSDConversation *)self idsSession];
  [idsSession addRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];
}

- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  ofCapabilitiesCopy = ofCapabilities;
  capabilitiesCopy = capabilities;
  idsSession = [(CSDConversation *)self idsSession];
  [idsSession removeRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];
}

- (id)remoteParticipantForHandle:(id)handle
{
  handleCopy = handle;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v6 = [activeRemoteParticipants countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(activeRemoteParticipants);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      handle = [v10 handle];
      v12 = [handle isEquivalentToHandle:handleCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [activeRemoteParticipants countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  activeLightweightParticipants = [(CSDConversation *)self activeLightweightParticipants];
  v15 = [activeLightweightParticipants countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(activeLightweightParticipants);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        handle2 = [v19 handle];
        v21 = [handle2 isEquivalentToHandle:handleCopy];

        if (v21)
        {
          v13 = v19;
          goto LABEL_21;
        }
      }

      v16 = [activeLightweightParticipants countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_21:

LABEL_22:
  tuConversationParticipant = [v13 tuConversationParticipant];

  return tuConversationParticipant;
}

- (id)remoteParticipantForIdentifier:(unint64_t)identifier
{
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v6 = [NSNumber numberWithUnsignedLongLong:identifier];
  v7 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v6];
  tuConversationParticipant = [v7 tuConversationParticipant];
  v9 = tuConversationParticipant;
  if (tuConversationParticipant)
  {
    tuConversationParticipant2 = tuConversationParticipant;
  }

  else
  {
    activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
    v12 = [NSNumber numberWithUnsignedLongLong:identifier];
    v13 = [activeLightweightParticipantsByIdentifier objectForKeyedSubscript:v12];
    tuConversationParticipant2 = [v13 tuConversationParticipant];
  }

  return tuConversationParticipant2;
}

- (id)remoteMemberForHandle:(id)handle
{
  handleCopy = handle;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  remoteMembers = [(CSDConversation *)self remoteMembers];
  v6 = [remoteMembers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(remoteMembers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        handle = [v9 handle];
        v11 = [handle isEquivalentToHandle:handleCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [remoteMembers countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (TUConversationParticipant)localParticipant
{
  v3 = [TUConversationParticipant alloc];
  localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
  localMember = [(CSDConversation *)self localMember];
  handle = [localMember handle];
  v7 = [v3 initWithIdentifier:localParticipantIdentifier handle:handle];

  [v7 setAudioVideoMode:{-[CSDConversation avMode](self, "avMode")}];
  [v7 setPresentationMode:{-[CSDConversation presentationMode](self, "presentationMode")}];
  [v7 setLocalAccountHandle:1];
  [v7 setSpatialPersonaEnabled:{-[CSDConversation isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")}];
  [v7 setCameraMixedWithScreen:{-[CSDConversation isCameraMixedWithScreen](self, "isCameraMixedWithScreen")}];
  localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
  [v7 setCluster:localParticipantCluster];

  [v7 setIsNearbySharePlay:{-[CSDConversation isNearbySharePlay](self, "isNearbySharePlay")}];

  return v7;
}

- (id)localCSDConversationParticipant
{
  v3 = [CSDConversationParticipant alloc];
  idsSession = [(CSDConversation *)self idsSession];
  localParticipantIdentifier = [idsSession localParticipantIdentifier];
  localMember = [(CSDConversation *)self localMember];
  handle = [localMember handle];
  localParticipantData = [(CSDConversation *)self localParticipantData];
  v9 = [(CSDConversationParticipant *)v3 initWithIdentifier:localParticipantIdentifier handle:handle avcData:localParticipantData];

  localParticipantCapabilities = [(CSDConversation *)self localParticipantCapabilities];
  [(CSDConversationParticipant *)v9 setCapabilities:localParticipantCapabilities];

  [(CSDConversationParticipant *)v9 setVideoEnabled:[(CSDConversation *)self isVideoEnabled]];
  [(CSDConversationParticipant *)v9 setAudioVideoMode:[(CSDConversation *)self avMode]];
  [(CSDConversationParticipant *)v9 setPresentationMode:[(CSDConversation *)self presentationMode]];
  [(CSDConversationParticipant *)v9 setSpatialPersonaEnabled:[(CSDConversation *)self isSpatialPersonaEnabled]];
  [(CSDConversationParticipant *)v9 setCameraMixedWithScreen:[(CSDConversation *)self isCameraMixedWithScreen]];
  [(CSDConversationParticipant *)v9 setCaptionsToken:[(CSDConversation *)self avcLocalCaptionsToken]];
  localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
  [(CSDConversationParticipant *)v9 setCluster:localParticipantCluster];

  [(CSDConversationParticipant *)v9 setIsNearbySharePlay:[(CSDConversation *)self isNearbySharePlay]];

  return v9;
}

- (void)addAliasesToConversationContainer:(id)container forBundleIdentifier:(id)identifier
{
  containerCopy = container;
  identifierCopy = identifier;
  serverBag = [(CSDConversation *)self serverBag];
  v9 = [serverBag stableBundleIdentifierForLocalBundleIdentifier:identifierCopy];

  if (v9)
  {
    v10 = v9;

    identifierCopy = v10;
  }

  v11 = [identifierCopy dataUsingEncoding:4];
  [(CSDConversation *)self setIDSAliasingSalt:v11 onContainer:containerCopy];
  idsSession = [(CSDConversation *)self idsSession];
  [idsSession addAliasesToConversationContainer:containerCopy withSalt:v11];

  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    groupUUID = [(CSDConversation *)self groupUUID];
    groupUUID2 = [containerCopy groupUUID];
    v17 = 138412802;
    v18 = groupUUID;
    v19 = 2112;
    v20 = groupUUID2;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Aliased session %@ to %@ for bundle identifier %@", &v17, 0x20u);
  }
}

- (void)setIDSAliasingSalt:(id)salt onContainer:(id)container
{
  containerCopy = container;
  saltCopy = salt;
  virtualParticipantConfig = [containerCopy virtualParticipantConfig];
  [virtualParticipantConfig setIdsAliasingSalt:saltCopy];
  [containerCopy setVirtualParticipantConfig:virtualParticipantConfig];
  unreliableMessengerConfig = [containerCopy unreliableMessengerConfig];
  [unreliableMessengerConfig setIdsAliasingSalt:saltCopy];

  [containerCopy setUnreliableMessengerConfig:unreliableMessengerConfig];
}

- (unint64_t)_resolvedNearbyTimeOut
{
  if (!_TUIsInternalInstall())
  {
    return 60;
  }

  v2 = +[NSUserDefaults tu_defaults];
  v3 = [v2 objectForKey:@"DefaultNearbyMemberTimeOutOverride"];

  if (!v3)
  {
    return 60;
  }

  v4 = +[NSUserDefaults tu_defaults];
  v5 = [v4 integerForKey:@"DefaultNearbyMemberTimeOutOverride"];

  return v5;
}

- (void)startTimeOutForNearbyMembers:(id)members
{
  membersCopy = members;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = membersCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v8 = *v30;
    *&v7 = 138412546;
    v23 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        handle = [*(*(&v29 + 1) + 8 * v9) handle];
        nearbyMemberRemovalBlockByHandle = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
        v12 = [nearbyMemberRemovalBlockByHandle objectForKeyedSubscript:handle];

        if (v12)
        {
          dispatch_block_cancel(v12);
          nearbyMemberRemovalBlockByHandle2 = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
          [nearbyMemberRemovalBlockByHandle2 setObject:0 forKeyedSubscript:handle];
        }

        objc_initWeak(&location, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100098B88;
        block[3] = &unk_10061A600;
        objc_copyWeak(&v27, &location);
        v14 = handle;
        v26 = v14;
        v15 = dispatch_block_create(0, block);
        v16 = objc_retainBlock(v15);
        nearbyMemberRemovalBlockByHandle3 = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
        [nearbyMemberRemovalBlockByHandle3 setObject:v16 forKeyedSubscript:v14];

        v19 = sub_100004778(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          uUID = [(CSDConversation *)self UUID];
          *buf = v23;
          v34 = v14;
          v35 = 2112;
          v36 = uUID;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting time out to remove nearby member %@ in conversation %@", buf, 0x16u);
        }

        v21 = dispatch_time(0, 1000000000 * [(CSDConversation *)self _resolvedNearbyTimeOut]);
        queue2 = [(CSDConversation *)self queue];
        dispatch_after(v21, queue2, v15);

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v6);
  }
}

- (void)startTimeOutForNearbySession
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v12 = uUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting time out to clean up nearby conversation: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = dispatch_time(0, 1000000000 * [(CSDConversation *)self _resolvedNearbyTimeOut]);
  queue2 = [(CSDConversation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098D78;
  block[3] = &unk_10061A740;
  objc_copyWeak(&v10, buf);
  dispatch_after(v7, queue2, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)removeNearbyMemberWithHandleIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  nearbyMemberRemovalBlockByHandle = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
  [nearbyMemberRemovalBlockByHandle setObject:0 forKeyedSubscript:necessaryCopy];

  featureFlags = [(CSDConversation *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

  if (nearbyFaceTimeEnabled && [(CSDConversation *)self isNearbySession])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v10 = [remoteMembers countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v44 + 1) + 8 * v13) handle];
        v15 = [handle isEqualToHandle:necessaryCopy];

        if (v15)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [remoteMembers countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_37;
        }
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      remoteMembers = [(CSDConversation *)self activeRemoteParticipants];
      v16 = [remoteMembers countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
LABEL_14:
        v19 = 0;
        while (1)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(remoteMembers);
          }

          handle2 = [*(*(&v40 + 1) + 8 * v19) handle];
          v21 = [handle2 isEqualToHandle:necessaryCopy];

          if (v21)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [remoteMembers countByEnumeratingWithState:&v40 objects:v51 count:16];
            if (v17)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:

        v23 = sub_100004778(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = necessaryCopy;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing nearby member with handle %@", buf, 0xCu);
        }

        remoteMembers2 = [(CSDConversation *)self remoteMembers];
        v25 = [remoteMembers2 count];

        if (v25 == 1)
        {
          v27 = sub_100004778(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Last member to remove, leaving conversation", buf, 2u);
          }

          [(CSDConversation *)self leave];
          goto LABEL_38;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        remoteMembers = [(CSDConversation *)self remoteMembers];
        v28 = [remoteMembers countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v37;
LABEL_28:
          v31 = 0;
          while (1)
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(remoteMembers);
            }

            v32 = *(*(&v36 + 1) + 8 * v31);
            handle3 = [v32 handle];
            v34 = [handle3 isEqualToHandle:necessaryCopy];

            if (v34)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = [remoteMembers countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v29)
              {
                goto LABEL_28;
              }

              goto LABEL_37;
            }
          }

          v35 = v32;

          if (!v35)
          {
            goto LABEL_38;
          }

          [(CSDConversation *)self kickMember:v35];
          remoteMembers = v35;
        }
      }
    }

LABEL_37:
  }

LABEL_38:
}

- (BOOL)_endScreenCallIfNecessary
{
  isScreening = [(CSDConversation *)self isScreening];
  if (!isScreening)
  {
    return isScreening;
  }

  activeParticipantDestinationsByIdentifier = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
  v5 = [activeParticipantDestinationsByIdentifier count];

  if (v5 >= 3)
  {
    v7 = sub_100004778(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    activeParticipantDestinationsByIdentifier2 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    *buf = 134217984;
    v41 = [activeParticipantDestinationsByIdentifier2 count];
    v9 = "Ending the screening call because a new participant joins, count: %ld";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
LABEL_12:

    goto LABEL_13;
  }

  activeLightweightParticipants = [(CSDConversation *)self activeLightweightParticipants];
  v11 = [activeLightweightParticipants count];

  if (v11)
  {
    v7 = sub_100004778(v12);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    activeParticipantDestinationsByIdentifier2 = [(CSDConversation *)self activeLightweightParticipants];
    *buf = 134217984;
    v41 = [activeParticipantDestinationsByIdentifier2 count];
    v9 = "Ending the screening call because a lightweight participant joins, count: %ld";
    goto LABEL_11;
  }

  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v14 = [activeRemoteParticipants count];

  if (v14 >= 2)
  {
    v7 = sub_100004778(v15);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    activeParticipantDestinationsByIdentifier2 = [(CSDConversation *)self activeRemoteParticipants];
    *buf = 134217984;
    v41 = [activeParticipantDestinationsByIdentifier2 count];
    v9 = "Ending the screening call because active remote participants, count: %ld";
    goto LABEL_11;
  }

  remoteMembers = [(CSDConversation *)self remoteMembers];
  if ([remoteMembers count] >= 2)
  {

LABEL_22:
    v7 = sub_100004778(v19);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      activeParticipantDestinationsByIdentifier2 = [(CSDConversation *)self remoteMembers];
      v21 = [activeParticipantDestinationsByIdentifier2 count];
      lightweightMembers = [(CSDConversation *)self lightweightMembers];
      *buf = 134218240;
      v41 = v21;
      v42 = 2048;
      v43 = [lightweightMembers count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ending the screening call because a new member is added, remoteMembers: %ld, lightweightMembers: %ld", buf, 0x16u);

      goto LABEL_12;
    }

LABEL_13:

    [(CSDConversation *)self leaveWithReason:3];
LABEL_14:
    LOBYTE(isScreening) = 1;
    return isScreening;
  }

  lightweightMembers2 = [(CSDConversation *)self lightweightMembers];
  v18 = [lightweightMembers2 count];

  if (v18)
  {
    goto LABEL_22;
  }

  isVideoEnabled = [(CSDConversation *)self isVideoEnabled];
  if (isVideoEnabled)
  {
    v7 = sub_100004778(isVideoEnabled);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ending the screening call because local upgrades to video", buf, 2u);
    }

    goto LABEL_13;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  activeParticipantDestinationsByIdentifier3 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
  v24 = [activeParticipantDestinationsByIdentifier3 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    while (2)
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(activeParticipantDestinationsByIdentifier3);
        }

        v28 = *(*(&v35 + 1) + 8 * i);
        activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
        v30 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v28];

        isVideoEnabled2 = [v30 isVideoEnabled];
        if (isVideoEnabled2)
        {
          v32 = sub_100004778(isVideoEnabled2);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            state = [(CSDConversation *)self state];
            *buf = 134218242;
            v41 = state;
            v42 = 2112;
            v43 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Ending the screening call because participant upgrades to video call, state: %ld, %@", buf, 0x16u);
          }

          [(CSDConversation *)self leaveWithReason:3];
          goto LABEL_14;
        }
      }

      v25 = [activeParticipantDestinationsByIdentifier3 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(isScreening) = 0;
  return isScreening;
}

- (id)_allMembers
{
  remoteMembers = [(CSDConversation *)self remoteMembers];
  v4 = [remoteMembers mutableCopy];

  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  v6 = [lightweightMembers mutableCopy];

  localMember = [(CSDConversation *)self localMember];
  [v4 addObject:localMember];

  [v4 unionSet:v6];
  v8 = [v4 copy];

  return v8;
}

- (void)_restartIDSSessionIfNecessary
{
  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    remoteMembers = [(CSDConversation *)self remoteMembers];
    if ([remoteMembers count] == 1)
    {
      link = [(CSDConversation *)self link];

      if (!link)
      {
        v5 = sub_100004778([(CSDConversation *)self _cleanUpConversation]);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          if ([(CSDConversation *)self isOneToOneModeEnabled])
          {
            v6 = @"YES";
          }

          else
          {
            v6 = @"NO";
          }

          remoteMembers2 = [(CSDConversation *)self remoteMembers];
          *buf = 138412546;
          v13 = v6;
          v14 = 2048;
          v15 = [remoteMembers2 count];
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "restartIDSSessionIfNecessary: No need to restart IDS Session since it's U + 1, %@, %lu", buf, 0x16u);
        }

        return;
      }
    }

    else
    {
    }
  }

  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags nearbyFaceTimeEnabled])
  {
    isNearbySession = [(CSDConversation *)self isNearbySession];

    if (isNearbySession)
    {
      v10 = sub_100004778([(CSDConversation *)self _cleanUpConversation]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "restartIDSSessionIfNecessary: No need to restart IDS Session since it's a nearby session", buf, 2u);
      }

      return;
    }
  }

  else
  {
  }

  idsSession = [(CSDConversation *)self idsSession];
  [idsSession restart];
}

- (void)_stopAVCSession
{
  avcSessionInProgress = [(CSDConversation *)self avcSessionInProgress];
  if (avcSessionInProgress)
  {
    [(CSDConversation *)self setAvcSessionInProgress:0];
    failureContext = [(CSDConversation *)self failureContext];
    providerEndedReason = [failureContext providerEndedReason];

    if (providerEndedReason)
    {
      failureContext2 = [(CSDConversation *)self failureContext];
      avcSession2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"callservicesd.ConversationErrorType", [failureContext2 providerEndedReason], 0);

      avcSession = [(CSDConversation *)self avcSession];
      [avcSession stopWithError:avcSession2];
    }

    else
    {
      avcSession2 = [(CSDConversation *)self avcSession];
      [avcSession2 stopWithError:0];
    }
  }

  else
  {
    v8 = sub_100004778(avcSessionInProgress);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not to stopAVCSession because it's not in progress", buf, 2u);
    }

    [(CSDConversation *)self setNotNeededToStopAVCSession:1];
  }
}

- (void)_cleanUpConversation
{
  v3 = +[NSDictionary dictionary];
  activeParticipantDestinationsByIdentifier = self->_activeParticipantDestinationsByIdentifier;
  self->_activeParticipantDestinationsByIdentifier = v3;

  v5 = +[NSMutableDictionary dictionary];
  activeRemoteParticipantsByIdentifier = self->_activeRemoteParticipantsByIdentifier;
  self->_activeRemoteParticipantsByIdentifier = v5;

  v7 = +[NSMutableDictionary dictionary];
  activeLightweightParticipantsByIdentifier = self->_activeLightweightParticipantsByIdentifier;
  self->_activeLightweightParticipantsByIdentifier = v7;

  v9 = +[NSMutableDictionary dictionary];
  sequenceNumberToTime = self->_sequenceNumberToTime;
  self->_sequenceNumberToTime = v9;

  v11 = objc_alloc_init(NSSet);
  [(CSDConversation *)self setRemotePushTokens:v11];

  v12 = objc_alloc_init(NSMutableSet);
  [(CSDConversation *)self setPendingRemoteMembers:v12];

  v13 = objc_alloc_init(NSSet);
  [(CSDConversation *)self setRemoteMembers:v13];

  letMeInRequestUINotificationBlock = [(CSDConversation *)self letMeInRequestUINotificationBlock];

  if (letMeInRequestUINotificationBlock)
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "cleanUpConversation: cancel letMeInRequestUINotificationBlock", v18, 2u);
    }

    letMeInRequestUINotificationBlock2 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
    dispatch_block_cancel(letMeInRequestUINotificationBlock2);

    [(CSDConversation *)self setLetMeInRequestUINotificationBlock:0];
  }

  [(CSDConversation *)self setABTestConfiguration:0];
}

- (void)_emitRTCConnectionSetupEventForAddActiveParticipant:(id)participant
{
  participantCopy = participant;
  report = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 5, [report hashForParticipantIdentifier:{objc_msgSend(participantCopy, "identifier")}]);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = participantCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Metrics] Adding active participant: %@", &v8, 0xCu);
  }
}

- (void)_emitRTCConnectionSetupEvent:(int64_t)event participantIdentifier:(unint64_t)identifier
{
  v7 = [CSDRTCConnectionSetup rtcKey:1];
  v18[0] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v19[0] = v8;
  v9 = [CSDRTCConnectionSetup rtcKey:2];
  v18[1] = v9;
  v10 = +[NSDate date];
  report = [(CSDConversation *)self report];
  timebase = [report timebase];
  [v10 timeIntervalSinceDate:timebase];
  v14 = [NSNumber numberWithUnsignedInteger:(v13 * 1000.0)];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  v16 = +[CSDReportingController sharedInstance];
  tuConversation = [(CSDConversation *)self tuConversation];
  [v16 connectionSetupReportReceived:v15 eventType:event forConversation:tuConversation];
}

- (void)_startIDSSessionWithContext:(id)context
{
  contextCopy = context;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  state = [(CSDConversation *)self state];
  if (state != 2)
  {
    v13 = sub_100004778(state);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      state2 = [(CSDConversation *)self state];
      uUID = [(CSDConversation *)self UUID];
      *buf = 134218242;
      v84 = state2;
      v85 = 2112;
      v86 = uUID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Not joining IDS session as state (%tu) is not joining on conversation: %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  remoteMembers = [(CSDConversation *)self remoteMembers];
  v8 = [NSMutableSet setWithSet:remoteMembers];

  lightweightMembers = [(CSDConversation *)self lightweightMembers];
  [v8 unionSet:lightweightMembers];

  localMember = [(CSDConversation *)self localMember];
  [v8 addObject:localMember];

  v11 = +[NSMutableSet set];
  v72 = contextCopy;
  v68 = v8;
  if (-[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled") && ([contextCopy isInitiator] & 1) == 0)
  {
    idsSession = [(CSDConversation *)self idsSession];
    participantDestinationIDs = [idsSession participantDestinationIDs];
    v12 = [NSMutableSet setWithArray:participantDestinationIDs];

    localMember2 = [(CSDConversation *)self localMember];
    v19 = [IDSDestination destinationWithTUConversationMember:localMember2];
    [v12 removeObject:v19];

    localMember3 = [(CSDConversation *)self localMember];
    idsDestination = [localMember3 idsDestination];
    [v12 removeObject:idsDestination];

    v23 = sub_100004778(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v84 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending U+1 join context to subset of participants: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = v11;
  }

  isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
  if (isOneToOneModeEnabled)
  {
    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags uPlusOneSessionWithCapabilitiesEnabled])
    {
      serverBag = [(CSDConversation *)self serverBag];
      isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

      if (!isUPlusOneSessionCapabilitiesEnabled)
      {
        goto LABEL_17;
      }

      screenSharingRequests = [(CSDConversation *)self screenSharingRequests];
      v29 = [screenSharingRequests count];

      if (v29)
      {
        v30 = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
        [(CSDConversation *)self addRequiredCapabilities:v30 requiredLackOfCapabilities:0];
      }

      featureFlags = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
      [(CSDConversation *)self addRequiredCapabilities:featureFlags requiredLackOfCapabilities:0];
    }
  }

LABEL_17:
  v67 = v12;
  v31 = sub_100004778(isOneToOneModeEnabled);
  idsSession2 = [(CSDConversation *)self idsSession];
  v33 = os_signpost_id_make_with_pointer(v31, idsSession2);

  v35 = sub_100004778(v34);
  v36 = v35;
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "idsSessionJoin", "", buf, 2u);
  }

  report = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 1, [report hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  allValues = [activeRemoteParticipantsByIdentifier allValues];

  v40 = [allValues countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v78;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v78 != v42)
        {
          objc_enumerationMutation(allValues);
        }

        [(CSDConversation *)self _emitRTCConnectionSetupEventForAddActiveParticipant:*(*(&v77 + 1) + 8 * i)];
      }

      v41 = [allValues countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v41);
  }

  stagedActivitySession = [(CSDConversation *)self stagedActivitySession];
  if (stagedActivitySession && (v45 = stagedActivitySession, -[CSDConversation stagedActivitySession](self, "stagedActivitySession"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 isLocallyInitiated], v46, v45, v47))
  {
    stagedActivitySession2 = [(CSDConversation *)self stagedActivitySession];
    v69 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:stagedActivitySession2 fromConversation:self forStorage:0];
  }

  else
  {
    v69 = 0;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = [(CSDConversation *)self activitySessions];
  v49 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v74;
    while (2)
    {
      for (j = 0; j != v50; j = j + 1)
      {
        if (*v74 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v73 + 1) + 8 * j);
        activity = [v53 activity];
        uUID2 = [activity UUID];
        activity2 = [v72 activity];
        uUID3 = [activity2 UUID];
        v58 = [uUID2 isEqual:uUID3];

        if (v58)
        {
          v59 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v53 fromConversation:self];
          goto LABEL_41;
        }
      }

      v50 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }
  }

  v59 = 0;
LABEL_41:

  obja = [(CSDConversation *)self idsSession];
  localParticipantData = [(CSDConversation *)self localParticipantData];
  otherInvitedHandles = [(CSDConversation *)self otherInvitedHandles];
  link = [(CSDConversation *)self link];
  report2 = [(CSDConversation *)self report];
  personaHandshakeBlobCreationBlock = [(CSDConversation *)self personaHandshakeBlobCreationBlock];
  v65 = personaHandshakeBlobCreationBlock[2]();
  [obja joinUsingContext:v72 localParticipantAVCData:localParticipantData members:v68 otherInvitedHandles:otherInvitedHandles participantDestinationIDs:v67 link:link report:report2 stagedActivitySession:v69 personaHandshakeBlob:v65 activitySession:v59];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationDidTriggerJoin:self];

  v13 = v68;
  contextCopy = v72;

LABEL_42:
}

- (void)_addRemoteParticipantToAVCSessionIfPossible:(id)possible
{
  possibleCopy = possible;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  isAudioReady = [avcSession isAudioReady];

  isRedirectingAudio = [(CSDConversation *)self isRedirectingAudio];
  if (isRedirectingAudio)
  {
    isRedirectingAudio = [(CSDConversation *)self isOneToOneModeEnabled];
  }

  if (((isAudioReady | isRedirectingAudio) & 1) == 0)
  {
    v10 = sub_100004778(isRedirectingAudio);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      identifier = [possibleCopy identifier];
      v11 = "AVAudioClient not set up yet, delaying adding participant to AVCSession: %llu";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (![possibleCopy audioVideoMode])
  {
    v10 = sub_100004778(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      identifier = [possibleCopy identifier];
      v11 = "Participant has no AV configured, ignoring to add the participant to the session: %llu";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  avcSession2 = [(CSDConversation *)self avcSession];
  [avcSession2 addParticipant:possibleCopy withVideoEnabled:+[TUConversationManager allowsVideo](TUConversationManager audioPaused:"allowsVideo") screenEnabled:{-[CSDConversation isAudioPaused](self, "isAudioPaused"), -[CSDConversation allowsScreenSharing](self, "allowsScreenSharing")}];

LABEL_12:
}

- (void)_addParticipantsWaitingToBeAddedToAVCSession
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v5 = [activeRemoteParticipants countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 134217984;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        avcSession = [(CSDConversation *)self avcSession];
        v12 = [avcSession containsRemoteParticipantWithIdentifier:{objc_msgSend(v10, "identifier")}];

        avcSession2 = sub_100004778(v13);
        v15 = os_log_type_enabled(avcSession2, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (!v15)
          {
            goto LABEL_16;
          }

          identifier = [v10 identifier];
          *buf = v22;
          v28 = identifier;
          v17 = avcSession2;
          v18 = "Not adding participant %llu to AVCSession now that AVAudioClient is set up because they're already in the AVCSession";
          goto LABEL_15;
        }

        if (v15)
        {
          identifier2 = [v10 identifier];
          *buf = v22;
          v28 = identifier2;
          _os_log_impl(&_mh_execute_header, avcSession2, OS_LOG_TYPE_DEFAULT, "Adding participant to AVCSession now that AVAudioClient is set up: %llu", buf, 0xCu);
        }

        if ([v10 audioVideoMode])
        {
          v20 = +[TUConversationManager allowsVideo];
          avcSession2 = [(CSDConversation *)self avcSession];
          [avcSession2 addParticipant:v10 withVideoEnabled:v20 audioPaused:[(CSDConversation *)self isAudioPaused] screenEnabled:[(CSDConversation *)self allowsScreenSharing]];
          goto LABEL_16;
        }

        avcSession2 = sub_100004778(0);
        if (os_log_type_enabled(avcSession2, OS_LOG_TYPE_DEFAULT))
        {
          identifier3 = [v10 identifier];
          *buf = v22;
          v28 = identifier3;
          v17 = avcSession2;
          v18 = "Participant has no AV configured, ignoring to add the participant to the session: %llu";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
        }

LABEL_16:
      }

      v7 = [activeRemoteParticipants countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)_startAVCSessionIfNecessary
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  avcSession = [(CSDConversation *)self avcSession];
  isAudioReady = [avcSession isAudioReady];

  isRelaying = [(CSDConversation *)self isRelaying];
  if (isRelaying)
  {
    v7 = isRelaying;
    featureFlags = [(CSDConversation *)self featureFlags];
    if (([featureFlags gftOnWatch] & 1) != 0 || -[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled"))
    {
      isOneToOneModeEnabled = 1;
    }

    else if ([(CSDConversation *)self isScreening])
    {
      isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      isOneToOneModeEnabled = 0;
    }
  }

  else if ([(CSDConversation *)self isScreening])
  {
    isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
  }

  else
  {
    isOneToOneModeEnabled = 0;
  }

LABEL_9:
  avMode = [(CSDConversation *)self avMode];
  idsSession = [(CSDConversation *)self idsSession];
  localParticipantType = [idsSession localParticipantType];

  idsSession2 = [(CSDConversation *)self idsSession];
  isJoined = [idsSession2 isJoined];

  if (isJoined && ((isAudioReady | isOneToOneModeEnabled) & 1) != 0 && avMode && localParticipantType == 1)
  {
    avcSessionInProgress = [(CSDConversation *)self avcSessionInProgress];
    v17 = avcSessionInProgress;
    avcSession5 = sub_100004778(avcSessionInProgress);
    v19 = os_log_type_enabled(avcSession5, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        avcSession2 = [(CSDConversation *)self avcSession];
        v38 = 138412290;
        v39 = avcSession2;
        v21 = "Skipped starting session since session start is already in progress %@";
        v22 = avcSession5;
        v23 = 12;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v38, v23);
      }
    }

    else
    {
      if (v19)
      {
        avcSession3 = [(CSDConversation *)self avcSession];
        v38 = 138412290;
        v39 = avcSession3;
        _os_log_impl(&_mh_execute_header, avcSession5, OS_LOG_TYPE_DEFAULT, "Starting %@", &v38, 0xCu);
      }

      v31 = sub_100004778([(CSDConversation *)self setAvcSessionInProgress:1]);
      avcSession4 = [(CSDConversation *)self avcSession];
      v33 = os_signpost_id_make_with_pointer(v31, avcSession4);

      v35 = sub_100004778(v34);
      v36 = v35;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        LOWORD(v38) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "avcSessionStart", "", &v38, 2u);
      }

      report = [(CSDConversation *)self report];
      -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 3, [report hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

      avcSession5 = [(CSDConversation *)self avcSession];
      [avcSession5 start];
    }
  }

  else
  {
    avcSession5 = sub_100004778(v15);
    if (os_log_type_enabled(avcSession5, OS_LOG_TYPE_DEFAULT))
    {
      avcSession2 = [(CSDConversation *)self idsSession];
      isJoined2 = [(__CFString *)avcSession2 isJoined];
      v25 = @"NO";
      if (isJoined2)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      if (isAudioReady)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v38 = 138413314;
      v39 = v26;
      if (isOneToOneModeEnabled)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v40 = 2112;
      v41 = v27;
      if (avMode)
      {
        v29 = @"NO";
      }

      else
      {
        v29 = @"YES";
      }

      v42 = 2112;
      v43 = v28;
      v44 = 2112;
      if (localParticipantType == 1)
      {
        v25 = @"YES";
      }

      v45 = v29;
      v46 = 2112;
      v47 = v25;
      v21 = "Skipped starting session since isJoined:%@ audioReady:%@ isRedirectingAudio :%@ isAVLess:%@ isLocalParticipantNormal: %@";
      v22 = avcSession5;
      v23 = 52;
      goto LABEL_32;
    }
  }
}

- (void)_cleanUpFromAVCSessionFailure
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversation *)self resetConversation];
  [(CSDConversation *)self refreshActiveParticipantsList];
  [(CSDConversation *)self cleanUpIDSSessionState];

  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
}

- (void)setState:(int64_t)state
{
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v8 = 134218240;
    stateCopy = state;
    v10 = 2048;
    stateCopy2 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setting state to: %ld, from: %ld", &v8, 0x16u);
  }

  v7 = self->_state;
  self->_state = state;
  [(CSDConversation *)self _handleStateChanged:state oldState:v7];
}

- (void)_handleStateChanged:(int64_t)changed oldState:(int64_t)state
{
  if (changed != state)
  {
    localParticipantBlobTracker = [(CSDConversation *)self localParticipantBlobTracker];
    [localParticipantBlobTracker handleConversationStateUpdated];
  }
}

- (void)_cleanUpHandoffMetricsIfNecessary
{
  addedHandoffParticipantToTime = [(CSDConversation *)self addedHandoffParticipantToTime];
  v4 = [addedHandoffParticipantToTime count];

  removedHandoffParticipantToTime = [(CSDConversation *)self removedHandoffParticipantToTime];
  v6 = [removedHandoffParticipantToTime count];

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218240;
    v25 = v4;
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cleanUpHandoffMetrics: addedHandoffParticipantToTimeCount: %lu, removedHandoffParticipantToTimeCount: %lu", &v24, 0x16u);
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v10 = [NSNumber numberWithUnsignedLong:v4];
    [v9 setObject:v10 forKeyedSubscript:@"kCSDConversationAddedParticipantCount"];
  }

  if (v6)
  {
    v11 = [NSNumber numberWithUnsignedLong:v6];
    [v9 setObject:v11 forKeyedSubscript:@"kCSDConversationRemovedParticipantCount"];
  }

  if ([v9 count])
  {
    v12 = +[CSDReportingController sharedInstance];
    tuConversation = [(CSDConversation *)self tuConversation];
    [v12 handoffReportReceived:v9 forConversation:tuConversation];
  }

  v14 = objc_alloc_init(NSMutableArray);
  removedHandoffParticipants = self->_removedHandoffParticipants;
  self->_removedHandoffParticipants = v14;

  v16 = objc_alloc_init(NSMutableArray);
  addedHandoffParticipants = self->_addedHandoffParticipants;
  self->_addedHandoffParticipants = v16;

  v18 = +[NSMutableDictionary dictionary];
  startAddingHandoffParticipantToTime = self->_startAddingHandoffParticipantToTime;
  self->_startAddingHandoffParticipantToTime = v18;

  v20 = +[NSMutableDictionary dictionary];
  addedHandoffParticipantToTime = self->_addedHandoffParticipantToTime;
  self->_addedHandoffParticipantToTime = v20;

  v22 = +[NSMutableDictionary dictionary];
  removedHandoffParticipantToTime = self->_removedHandoffParticipantToTime;
  self->_removedHandoffParticipantToTime = v22;
}

- (void)cleanUpIDSSessionState
{
  if ([(CSDConversation *)self state]== 4)
  {
    [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
    [(CSDConversation *)self _restartIDSSessionIfNecessary];

    [(CSDConversation *)self setState:0];
  }

  else if ([(CSDConversation *)self state])
  {
    [(CSDConversation *)self setState:4];
    [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"Cleaning up from AVCSession failure."];
    idsSession = [(CSDConversation *)self idsSession];
    [idsSession leaveGroupSessionWithContext:0];
  }
}

- (void)_beginTimeoutForLeavingConversationWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  timeoutBlock = [(CSDConversation *)self timeoutBlock];

  if (timeoutBlock)
  {
    timeoutBlock2 = [(CSDConversation *)self timeoutBlock];
    dispatch_block_cancel(timeoutBlock2);
  }

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B4FC;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v16, &location);
  v8 = reasonCopy;
  v15 = v8;
  v9 = dispatch_block_create(0, block);
  [(CSDConversation *)self setTimeoutBlock:v9];

  serverBag = [(CSDConversation *)self serverBag];
  v11 = dispatch_time(0, 1000000000 * [serverBag sessionCleanupTimeout]);
  queue2 = [(CSDConversation *)self queue];
  timeoutBlock3 = [(CSDConversation *)self timeoutBlock];
  dispatch_after(v11, queue2, timeoutBlock3);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_cancelTimeoutForLeavingConversation
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  timeoutBlock = [(CSDConversation *)self timeoutBlock];

  if (timeoutBlock)
  {
    timeoutBlock2 = [(CSDConversation *)self timeoutBlock];
    dispatch_block_cancel(timeoutBlock2);

    [(CSDConversation *)self setTimeoutBlock:0];
  }
}

- (void)_endCallIfNecessary
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDConversation *)self serverBag];
  isNoConversationParticipantEndCallEnabled = [serverBag isNoConversationParticipantEndCallEnabled];

  if (isNoConversationParticipantEndCallEnabled)
  {
    if ([(CSDConversation *)self state]!= 3)
    {
      return;
    }

    activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
    if ([activeRemoteParticipants count])
    {

LABEL_9:
      noConversationParticipantTimeoutBlock = [(CSDConversation *)self noConversationParticipantTimeoutBlock];

      if (!noConversationParticipantTimeoutBlock)
      {
        return;
      }

      noConversationParticipantTimeoutBlock2 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];
      dispatch_block_cancel(noConversationParticipantTimeoutBlock2);

      v13 = sub_100004778([(CSDConversation *)self setNoConversationParticipantTimeoutBlock:0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: Cancel noConversationParticipantTimeoutBlock", buf, 2u);
      }

      goto LABEL_12;
    }

    activeParticipantDestinationsByIdentifier = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    v10 = [activeParticipantDestinationsByIdentifier count];

    if (v10 <= 1)
    {
      goto LABEL_9;
    }

    noConversationParticipantTimeoutBlock3 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];

    if (noConversationParticipantTimeoutBlock3)
    {
      v13 = sub_100004778(v15);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: noConversationParticipantTimeout is running, return", buf, 2u);
      }

LABEL_12:

      return;
    }

    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009BA98;
    block[3] = &unk_10061A740;
    objc_copyWeak(&v26, buf);
    v16 = dispatch_block_create(0, block);
    [(CSDConversation *)self setNoConversationParticipantTimeoutBlock:v16];

    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      serverBag2 = [(CSDConversation *)self serverBag];
      noConversationParticipantTimeout = [serverBag2 noConversationParticipantTimeout];
      *v28 = 67109120;
      v29 = noConversationParticipantTimeout;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: started noConversationParticipantTimeout: %d", v28, 8u);
    }

    serverBag3 = [(CSDConversation *)self serverBag];
    v22 = dispatch_time(0, 1000000000 * [serverBag3 noConversationParticipantTimeout]);
    queue2 = [(CSDConversation *)self queue];
    noConversationParticipantTimeoutBlock4 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];
    dispatch_after(v22, queue2, noConversationParticipantTimeoutBlock4);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "disable noConversationParticipantEndCall due to server over-ride", buf, 2u);
    }
  }
}

- (void)_showLetMeInUIIfNecessary
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDConversation *)self serverBag];
  isLetMeInRequestUIForUnknownParticipantEnabled = [serverBag isLetMeInRequestUIForUnknownParticipantEnabled];

  if ((isLetMeInRequestUIForUnknownParticipantEnabled & 1) == 0)
  {
    v39 = sub_100004778(v5);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "disable showLetMeInUI due to server over-ride", buf, 2u);
    }

    goto LABEL_40;
  }

  if ([(CSDConversation *)self state]== 3)
  {
    link = [(CSDConversation *)self link];

    if (link)
    {
      v47 = objc_alloc_init(NSMutableSet);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
      v50 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v50)
      {
        v49 = *v55;
        do
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v55 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v54 + 1) + 8 * i);
            activeParticipantDestinationsByIdentifier = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
            v10 = [activeParticipantDestinationsByIdentifier objectForKeyedSubscript:v8];

            localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
            if (localParticipantIdentifier != [v8 unsignedLongLongValue])
            {
              activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
              v13 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v8];
              v14 = v13 || v10 == 0;
              v15 = !v14;

              if (v15)
              {
                v53[1] = 0;
                v16 = IDSCopyTokenAndIDForTokenWithID();
                v17 = 0;
                _stripFZIDPrefix = [v16 _stripFZIDPrefix];
                v19 = [TUHandle normalizedHandleWithDestinationID:_stripFZIDPrefix];

                v20 = [[TUConversationMember alloc] initWithHandle:v19];
                localMember = [(CSDConversation *)self localMember];
                handle = [localMember handle];
                v23 = [TUHandle normalizedHandleWithDestinationID:v10];
                v24 = [handle isEquivalentToHandle:v23];

                if ((v24 & 1) == 0)
                {
                  remoteMemberHandles = [(CSDConversation *)self remoteMemberHandles];
                  v26 = [remoteMemberHandles containsObject:v19];

                  if ((v26 & 1) == 0)
                  {
                    [v47 addObject:v20];
                  }
                }
              }
            }
          }

          v50 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v50);
      }

      v27 = [v47 count];
      if (v27)
      {
        v28 = sub_100004778(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          pendingRemoteMembers = [(CSDConversation *)self pendingRemoteMembers];
          localMember2 = [(CSDConversation *)self localMember];
          handle2 = [localMember2 handle];
          *buf = 138412802;
          v59 = v47;
          v60 = 2112;
          v61 = pendingRemoteMembers;
          v62 = 2112;
          v63 = handle2;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "add pending remote members: %@ to %@, localMember: %@", buf, 0x20u);
        }

        pendingRemoteMembers2 = [(CSDConversation *)self pendingRemoteMembers];
        v33 = [v47 copy];
        [pendingRemoteMembers2 unionSet:v33];
      }

      pendingRemoteMembers3 = [(CSDConversation *)self pendingRemoteMembers];
      v35 = [pendingRemoteMembers3 count] == 0;

      letMeInRequestUINotificationBlock = [(CSDConversation *)self letMeInRequestUINotificationBlock];

      if (v35)
      {
        if (letMeInRequestUINotificationBlock)
        {
          v40 = sub_100004778(v37);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No pendingRemoteMembers, cancel letMeInRequestUINotificationBlock", buf, 2u);
          }

          letMeInRequestUINotificationBlock2 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
          dispatch_block_cancel(letMeInRequestUINotificationBlock2);

          [(CSDConversation *)self setLetMeInRequestUINotificationBlock:0];
        }
      }

      else if (letMeInRequestUINotificationBlock)
      {
        v38 = sub_100004778(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "waiting till existing letMeInRequestUINotification completes", buf, 2u);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009C214;
        block[3] = &unk_10061A740;
        objc_copyWeak(v53, buf);
        v42 = dispatch_block_create(0, block);
        [(CSDConversation *)self setLetMeInRequestUINotificationBlock:v42];

        serverBag2 = [(CSDConversation *)self serverBag];
        v44 = dispatch_time(0, 1000000000 * [serverBag2 letMeInRequestUINotificationGracePeriod]);
        queue2 = [(CSDConversation *)self queue];
        letMeInRequestUINotificationBlock3 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
        dispatch_after(v44, queue2, letMeInRequestUINotificationBlock3);

        objc_destroyWeak(v53);
        objc_destroyWeak(buf);
      }

      v39 = v47;
LABEL_40:
    }
  }
}

- (void)_requestAVCBlobsIfNecessary
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversation *)self state]== 3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    activeParticipantDestinationsByIdentifier = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    v5 = [activeParticipantDestinationsByIdentifier countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = *v25;
      v19 = v21;
      do
      {
        v7 = 0;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(activeParticipantDestinationsByIdentifier);
          }

          v8 = *(*(&v24 + 1) + 8 * v7);
          activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
          v10 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v8];
          if (v10 || (v11 = -[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier"), v11 == [v8 unsignedLongLongValue]))
          {
          }

          else
          {
            inflightAVCBlobRecoveryBlocksByIdentifier = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
            v13 = [inflightAVCBlobRecoveryBlocksByIdentifier objectForKeyedSubscript:v8];
            v14 = v13 == 0;

            if (v14)
            {
              objc_initWeak(&location, self);
              serverBag = [(CSDConversation *)self serverBag];
              v16 = dispatch_time(0, 1000000000 * [serverBag AVCBlobRecoveryGracePeriod]);
              queue2 = [(CSDConversation *)self queue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              v21[0] = sub_10009C900;
              v21[1] = &unk_10061A600;
              objc_copyWeak(&v22, &location);
              v21[2] = v8;
              dispatch_after(v16, queue2, block);

              objc_destroyWeak(&v22);
              objc_destroyWeak(&location);
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v18 = [activeParticipantDestinationsByIdentifier countByEnumeratingWithState:&v24 objects:v28 count:16];
        v5 = v18;
      }

      while (v18);
    }
  }
}

- (void)_removeMemberFromPendingMemberListForParticipant:(id)participant
{
  participantCopy = participant;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  link = [(CSDConversation *)self link];

  if (link)
  {
    handle = [participantCopy handle];
    v8 = [(CSDConversation *)self memberWithHandle:handle];

    if (v8)
    {
      pendingRemoteMembers = [(CSDConversation *)self pendingRemoteMembers];
      v10 = [pendingRemoteMembers containsObject:v8];

      if (v10)
      {
        v12 = sub_100004778(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          pendingRemoteMembers2 = [(CSDConversation *)self pendingRemoteMembers];
          v15 = 138412546;
          v16 = v8;
          v17 = 2112;
          v18 = pendingRemoteMembers2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "remove %@ from pendingRemoteMembers: %@", &v15, 0x16u);
        }

        pendingRemoteMembers3 = [(CSDConversation *)self pendingRemoteMembers];
        [pendingRemoteMembers3 removeObject:v8];
      }
    }
  }
}

- (void)_cancelInFlightAVCBlobRecoveryIfNecessary
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  inflightAVCBlobRecoveryBlocksByIdentifier = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
  allKeys = [inflightAVCBlobRecoveryBlocksByIdentifier allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138412290;
    v20 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        serverProvidedParticipantIdentifiers = [(CSDConversation *)self serverProvidedParticipantIdentifiers];
        if ([serverProvidedParticipantIdentifiers containsObject:v11])
        {
          activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
          v14 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v11];

          if (!v14)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v16 = sub_100004778(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = v11;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cancelling in flight AVC blob recovery for participant with identifier %@", buf, 0xCu);
        }

        inflightAVCBlobRecoveryBlocksByIdentifier2 = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
        v18 = [inflightAVCBlobRecoveryBlocksByIdentifier2 objectForKeyedSubscript:v11];
        dispatch_block_cancel(v18);

        inflightAVCBlobRecoveryBlocksByIdentifier3 = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
        [inflightAVCBlobRecoveryBlocksByIdentifier3 setObject:0 forKeyedSubscript:v11];

LABEL_13:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)_pruneRemoteParticipantsIfNecessary
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(CSDConversation *)self isWaitingToPruneParticipants])
  {
    [(CSDConversation *)self setWaitingToPruneParticipants:1];
    objc_initWeak(&location, self);
    serverBag = [(CSDConversation *)self serverBag];
    v5 = dispatch_time(0, 1000000000 * [serverBag activeParticipantPruningTimeout]);
    queue2 = [(CSDConversation *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009D30C;
    v7[3] = &unk_10061A740;
    objc_copyWeak(&v8, &location);
    dispatch_after(v5, queue2, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)refreshActiveParticipantsList
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  participantRefreshBlock = [(CSDConversation *)self participantRefreshBlock];

  if (participantRefreshBlock)
  {
    participantRefreshBlock2 = [(CSDConversation *)self participantRefreshBlock];
    dispatch_block_cancel(participantRefreshBlock2);
  }

  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10009D7C4;
  v14 = &unk_10061A740;
  objc_copyWeak(&v15, &location);
  v6 = dispatch_block_create(0, &v11);
  [(CSDConversation *)self setParticipantRefreshBlock:v6, v11, v12, v13, v14];

  serverBag = [(CSDConversation *)self serverBag];
  v8 = dispatch_time(0, [serverBag activeParticipantRefreshDelay]);
  queue2 = [(CSDConversation *)self queue];
  participantRefreshBlock3 = [(CSDConversation *)self participantRefreshBlock];
  dispatch_after(v8, queue2, participantRefreshBlock3);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_reportConversationFailedWithFailureReason:(int64_t)reason providerEndedReason:(unint64_t)endedReason
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = objc_alloc_init(CXCallFailureContext);
  [v9 setFailureReason:reason];
  [v9 setProviderEndedReason:endedReason];
  [(CSDConversation *)self setFailureContext:v9];
  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self failedWithContext:v9];
}

- (void)_reportConversationFailedWithProviderEndedReason:(unint64_t)reason
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_alloc_init(CXCallFailureContext);
  [v7 setProviderEndedReason:reason];
  [v7 setFailureReason:reason];
  [(CSDConversation *)self setFailureContext:v7];
  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self failedWithContext:v7];
}

- (id)_stableExpanseIdentifier
{
  v3 = objc_alloc_init(NSMutableArray);
  messagesGroupUUID = [(CSDConversation *)self messagesGroupUUID];
  uUIDString = [messagesGroupUUID UUIDString];
  if ([uUIDString length])
  {
    isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];

    if ((isOneToOneModeEnabled & 1) == 0)
    {
      messagesGroupUUID2 = [(CSDConversation *)self messagesGroupUUID];
      uUIDString2 = [messagesGroupUUID2 UUIDString];
      [v3 addObject:uUIDString2];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  messagesGroupUUID2 = [(CSDConversation *)self remoteMemberHandles];
  v9 = [messagesGroupUUID2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(messagesGroupUUID2);
        }

        normalizedValue = [*(*(&v21 + 1) + 8 * i) normalizedValue];
        [v3 addObject:normalizedValue];
      }

      v10 = [messagesGroupUUID2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

LABEL_12:

  [v3 sortUsingSelector:"caseInsensitiveCompare:"];
  v14 = [v3 componentsJoinedByString:@"-"];
  v15 = [v14 dataUsingEncoding:4];
  sHA1HexString = [v15 SHA1HexString];

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v26 = sHA1HexString;
    v27 = 2112;
    v28 = uUID;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_stableExpanseIdentifier %@ for %@ ", buf, 0x16u);
  }

  return sHA1HexString;
}

- (void)_registerPluginsIfNecessary
{
  idsSession = [(CSDConversation *)self idsSession];
  isJoined = [idsSession isJoined];

  if (isJoined)
  {
    virtualParticipantsByPluginName = [(CSDConversation *)self virtualParticipantsByPluginName];
    v5 = [virtualParticipantsByPluginName objectForKeyedSubscript:@"PubSub"];
    if (v5)
    {
    }

    else
    {
      activitySessions = [(CSDConversation *)self activitySessions];
      v7 = [activitySessions count];

      if (v7)
      {
        v11 = IDSGroupSessionPluginNameKey;
        v12 = @"PubSub";
        v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        idsSession2 = [(CSDConversation *)self idsSession];
        [idsSession2 registerPluginWithOptions:v8];
      }
    }
  }
}

- (void)switchBackToOneToOneIfPossibleUsingDelay:(BOOL)delay
{
  delayCopy = delay;
  downgradeToOneToOneAfterDelayBlock = [(CSDConversation *)self downgradeToOneToOneAfterDelayBlock];

  selfCopy2 = self;
  if (downgradeToOneToOneAfterDelayBlock)
  {
    downgradeToOneToOneAfterDelayBlock2 = [(CSDConversation *)self downgradeToOneToOneAfterDelayBlock];
    dispatch_block_cancel(downgradeToOneToOneAfterDelayBlock2);

    selfCopy2 = self;
    [(CSDConversation *)self setDowngradeToOneToOneAfterDelayBlock:0];
  }

  remoteMembers = [(CSDConversation *)selfCopy2 remoteMembers];
  v72 = [remoteMembers count];

  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v8 = [activeRemoteParticipants count];
  activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  v10 = [activeLightweightParticipantsByIdentifier count];

  activeRemoteParticipantCountMinusEligibleAVLess = [(CSDConversation *)self activeRemoteParticipantCountMinusEligibleAVLess];
  v11 = sub_100004778(activeRemoteParticipantCountMinusEligibleAVLess);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219264;
    *v88 = [(CSDConversation *)self state];
    *&v88[8] = 1024;
    isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
    v90 = 2048;
    v91 = v72;
    v92 = 2048;
    v93 = &v8[v10];
    v94 = 2048;
    v95 = activeRemoteParticipantCountMinusEligibleAVLess;
    v96 = 1024;
    v97 = delayCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking if oneToOne->1 downgrade available with state: %tu oneToOneMode: %d remoteMemberCount: %lu activeRemoteParticipantCount: %lu activeRemoteParticipantCountMinusEligibleAVLess: %lu useDelay: %d", buf, 0x36u);
  }

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    activeRemoteParticipants2 = [(CSDConversation *)self activeRemoteParticipants];
    *buf = 138412290;
    *v88 = activeRemoteParticipants2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "activeRemoteParticipantsByIdentifier: %@", buf, 0xCu);
  }

  isOneToOneModeEnabled2 = [(CSDConversation *)self isOneToOneModeEnabled];
  if (isOneToOneModeEnabled2)
  {
    v16 = sub_100004778(isOneToOneModeEnabled2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning - isOneToOneModeEnabled is already true", buf, 2u);
    }

LABEL_10:

    return;
  }

  state = [(CSDConversation *)self state];
  if (state != 3)
  {
    v16 = sub_100004778(state);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning - Conversation state is not Joined", buf, 2u);
    }

    goto LABEL_10;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  activeRemoteParticipants3 = [(CSDConversation *)self activeRemoteParticipants];
  v19 = 0;
  v20 = [activeRemoteParticipants3 countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v20)
  {
    v21 = *v82;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(activeRemoteParticipants3);
        }

        v23 = *(*(&v81 + 1) + 8 * i);
        capabilities = [v23 capabilities];
        if ([capabilities isUPlusOneAVLessAvailable])
        {
          v25 = [v23 audioVideoMode] == 0;

          if (v25)
          {
            v27 = sub_100004778(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v88 = v23;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "switchBackToOneToOneIfPossibleUsingDelay: remoteParticipant %@ is AVLess", buf, 0xCu);
            }

            ++v19;
          }
        }

        else
        {
        }
      }

      v20 = [activeRemoteParticipants3 countByEnumeratingWithState:&v81 objects:v86 count:16];
    }

    while (v20);
  }

  if (activeRemoteParticipantCountMinusEligibleAVLess == 1)
  {
    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags uPlusNDowngrade])
    {
      serverBag = [(CSDConversation *)self serverBag];
      isUPlusNDowngradeAvailable = [serverBag isUPlusNDowngradeAvailable];

      v32 = isUPlusNDowngradeAvailable ^ 1;
    }

    else
    {
      v32 = 1;
    }

    activeRemoteParticipants4 = [(CSDConversation *)self activeRemoteParticipants];
    anyObject = [activeRemoteParticipants4 anyObject];
    capabilities2 = [anyObject capabilities];
    isUPlusNDowngradeAvailable2 = [capabilities2 isUPlusNDowngradeAvailable];

    v39 = sub_100004778(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v88 = v19;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "switchBackToOneToOneIfPossibleUsingDelay: avLessParticipantCount: %lu", buf, 0xCu);
    }

    if (v72 == 1 || v19)
    {
      link = [(CSDConversation *)self link];
      if (link)
      {

        if ((v32 | isUPlusNDowngradeAvailable2 ^ 1))
        {
          return;
        }
      }
    }

    else if (v32 & 1 | ((isUPlusNDowngradeAvailable2 & 1) == 0))
    {
      return;
    }

    if (-[CSDConversation isScreenEnabled](self, "isScreenEnabled") || (-[CSDConversation activeRemoteParticipants](self, "activeRemoteParticipants"), v41 = objc_claimAutoreleasedReturnValue(), [v41 anyObject], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isScreenEnabled"), v42, v41, (v43 & 1) != 0))
    {
      v44 = 0;
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      activitySessions = [(CSDConversation *)self activitySessions];
      v46 = [activitySessions countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (v46)
      {
        v44 = v43 ^ 1;
        v47 = *v78;
        while (2)
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v78 != v47)
            {
              objc_enumerationMutation(activitySessions);
            }

            activity = [*(*(&v77 + 1) + 8 * j) activity];
            isScreenSharingActivity = [activity isScreenSharingActivity];

            if (isScreenSharingActivity)
            {
              v44 = 0;
              goto LABEL_58;
            }
          }

          v46 = [activitySessions countByEnumeratingWithState:&v77 objects:v85 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v44 = 1;
      }

LABEL_58:
    }

    featureFlags2 = [(CSDConversation *)self featureFlags];
    if ([featureFlags2 uPlusOneScreenSharing])
    {
      activeRemoteParticipants5 = [(CSDConversation *)self activeRemoteParticipants];
      anyObject2 = [activeRemoteParticipants5 anyObject];
      capabilities3 = [anyObject2 capabilities];
      isUPlusOneScreenShareAvailable = [capabilities3 isUPlusOneScreenShareAvailable];

      if (((isUPlusOneScreenShareAvailable | v44) & 1) == 0)
      {
        return;
      }
    }

    else
    {

      if (!v44)
      {
        return;
      }
    }

    featureFlags3 = [(CSDConversation *)self featureFlags];
    if ([featureFlags3 gftDowngradeToOneToOne])
    {
      serverBag2 = [(CSDConversation *)self serverBag];
      isGFTDowngradeToOneToOneAvailable = [serverBag2 isGFTDowngradeToOneToOneAvailable];
    }

    else
    {
      isGFTDowngradeToOneToOneAvailable = 0;
    }

    activeRemoteParticipants6 = [(CSDConversation *)self activeRemoteParticipants];
    anyObject3 = [activeRemoteParticipants6 anyObject];
    capabilities4 = [anyObject3 capabilities];
    isGFTDowngradeToOneToOneAvailable2 = [capabilities4 isGFTDowngradeToOneToOneAvailable];

    if (isGFTDowngradeToOneToOneAvailable & isGFTDowngradeToOneToOneAvailable2)
    {
      if (delayCopy)
      {
        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009E6A4;
        block[3] = &unk_10061A740;
        objc_copyWeak(&v76, buf);
        v64 = dispatch_block_create(0, block);
        [(CSDConversation *)self setDowngradeToOneToOneAfterDelayBlock:v64];

        [(CSDConversation *)self sessionSwitchTimeout];
        v66 = dispatch_time(0, (v65 * 1000000000.0));
        queue = [(CSDConversation *)self queue];
        downgradeToOneToOneAfterDelayBlock3 = [(CSDConversation *)self downgradeToOneToOneAfterDelayBlock];
        dispatch_after(v66, queue, downgradeToOneToOneAfterDelayBlock3);

        objc_destroyWeak(&v76);
        objc_destroyWeak(buf);
      }

      else
      {
        v70 = sub_100004778(v63);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "We only have 1 remote participant that AV compatible, requesting to move back to U+1 mode", buf, 2u);
        }

        [(CSDConversation *)self setOneToOneModeEnabled:1];
      }
    }

    else
    {
      v69 = sub_100004778(v63);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v88 = isGFTDowngradeToOneToOneAvailable;
        *&v88[4] = 1024;
        *&v88[6] = isGFTDowngradeToOneToOneAvailable2;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Screen sharing has ended but not requesting to move back to U+1 mode since localDowngradeAvailable:%d remoteDowngradeAvailable:%d", buf, 0xEu);
      }
    }
  }

  else
  {
    v33 = sub_100004778(v28);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Returning - active remote participants is greater than 1 or zero", buf, 2u);
    }
  }
}

- (void)continueHandoffAudioRouteForIdentifier:(unint64_t)identifier participantLeft:(BOOL)left
{
  leftCopy = left;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  audioRoutesByParticipantIdentifier = [(CSDConversation *)self audioRoutesByParticipantIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [audioRoutesByParticipantIdentifier objectForKeyedSubscript:v9];

  audioRoutesByParticipantIdentifier2 = sub_100004778(v11);
  v13 = os_log_type_enabled(audioRoutesByParticipantIdentifier2, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v13)
    {
      v17 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, audioRoutesByParticipantIdentifier2, OS_LOG_TYPE_DEFAULT, "Did not retrieve a route identifier for participant identifier %llu", &v17, 0xCu);
    }

    goto LABEL_8;
  }

  if (v13)
  {
    v17 = 138412546;
    identifierCopy = v10;
    v19 = 2048;
    identifierCopy2 = identifier;
    _os_log_impl(&_mh_execute_header, audioRoutesByParticipantIdentifier2, OS_LOG_TYPE_DEFAULT, "Retrieved route identifier %@ for participant identifier %llu", &v17, 0x16u);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  v15 = +[CSDHandoffAudioController continueHandoffAudioRouteNotification];
  [v14 postNotificationName:v15 object:v10];

  if (leftCopy)
  {
    audioRoutesByParticipantIdentifier2 = [(CSDConversation *)self audioRoutesByParticipantIdentifier];
    v16 = [NSNumber numberWithUnsignedLongLong:identifier];
    [audioRoutesByParticipantIdentifier2 setObject:0 forKeyedSubscript:v16];

LABEL_8:
  }
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

- (void)updateConversationParticipantToHaveMatchingSiriDisplayName:(id)name
{
  nameCopy = name;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CSDConversation *)self remoteMembers];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        handle = [v9 handle];
        handle2 = [nameCopy handle];
        if ([handle isEquivalentToHandle:handle2])
        {
          handle3 = [v9 handle];
          siriDisplayName = [handle3 siriDisplayName];
          v14 = [siriDisplayName length];

          if (v14)
          {
            handle4 = [v9 handle];
            siriDisplayName2 = [handle4 siriDisplayName];
            handle5 = [nameCopy handle];
            [handle5 setSiriDisplayName:siriDisplayName2];

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

LABEL_12:
}

- (void)_generateHandoffReportIfNecessaryForUpdatedParticipantID:(unint64_t)d isAddParticipant:(BOOL)participant
{
  participantCopy = participant;
  if (participant)
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    addedHandoffParticipants = [(CSDConversation *)self addedHandoffParticipants];
    v8 = [addedHandoffParticipants countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v51;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(addedHandoffParticipants);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          if ([v12 identifier] == d)
          {
            addedHandoffParticipantToTime = [(CSDConversation *)self addedHandoffParticipantToTime];
            goto LABEL_22;
          }
        }

        v9 = [addedHandoffParticipants countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v48 = 0uLL;
    v49 = 0uLL;
    *(&v46 + 1) = 0;
    v47 = 0uLL;
    addedHandoffParticipants = [(CSDConversation *)self removedHandoffParticipants];
    v13 = [addedHandoffParticipants countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v47;
      while (2)
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(addedHandoffParticipants);
          }

          v12 = *(*(&v46 + 1) + 8 * j);
          if ([v12 identifier] == d)
          {
            addedHandoffParticipantToTime = [(CSDConversation *)self removedHandoffParticipantToTime];
LABEL_22:
            v19 = addedHandoffParticipantToTime;
            v20 = +[NSDate now];
            handle = [v12 handle];
            [v19 setObject:v20 forKey:handle];

            v17 = v12;
            goto LABEL_23;
          }
        }

        v14 = [addedHandoffParticipants countByEnumeratingWithState:&v46 objects:v62 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
LABEL_23:

  if (v17)
  {
    handle2 = [v17 handle];
    v23 = sub_100004778(handle2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = @"NO";
      *buf = 134218498;
      dCopy = d;
      v58 = 2112;
      if (participantCopy)
      {
        v24 = @"YES";
      }

      v59 = v24;
      v60 = 2112;
      v61 = handle2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updatedParticipantID: %llu, isAddParticipant: %@, handle: %@", buf, 0x20u);
    }

    addedHandoffParticipantToTime2 = [(CSDConversation *)self addedHandoffParticipantToTime];
    allKeys = [addedHandoffParticipantToTime2 allKeys];
    if ([allKeys containsObject:handle2])
    {
      removedHandoffParticipantToTime = [(CSDConversation *)self removedHandoffParticipantToTime];
      allKeys2 = [removedHandoffParticipantToTime allKeys];
      if ([allKeys2 containsObject:handle2])
      {
        startAddingHandoffParticipantToTime = [(CSDConversation *)self startAddingHandoffParticipantToTime];
        allKeys3 = [startAddingHandoffParticipantToTime allKeys];
        v31 = [allKeys3 containsObject:handle2];

        if (!v31)
        {
LABEL_36:

          goto LABEL_37;
        }

        addedHandoffParticipants2 = [(CSDConversation *)self addedHandoffParticipants];
        [addedHandoffParticipants2 removeObject:v17];

        removedHandoffParticipants = [(CSDConversation *)self removedHandoffParticipants];
        [removedHandoffParticipants removeObject:v17];

        v54[0] = @"kCSDConversationStartAddingParticipant";
        startAddingHandoffParticipantToTime2 = [(CSDConversation *)self startAddingHandoffParticipantToTime];
        v35 = [startAddingHandoffParticipantToTime2 objectForKeyedSubscript:handle2];
        v55[0] = v35;
        v54[1] = @"kCSDConversationAddedParticipant";
        addedHandoffParticipantToTime3 = [(CSDConversation *)self addedHandoffParticipantToTime];
        v37 = [addedHandoffParticipantToTime3 objectForKeyedSubscript:handle2];
        v55[1] = v37;
        v54[2] = @"kCSDConversationRemovedParticipant";
        removedHandoffParticipantToTime2 = [(CSDConversation *)self removedHandoffParticipantToTime];
        v39 = [removedHandoffParticipantToTime2 objectForKeyedSubscript:handle2];
        v55[2] = v39;
        addedHandoffParticipantToTime2 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];

        v41 = sub_100004778(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          dCopy = addedHandoffParticipantToTime2;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "handoff report: %@", buf, 0xCu);
        }

        v42 = +[CSDReportingController sharedInstance];
        tuConversation = [(CSDConversation *)self tuConversation];
        [v42 handoffReportReceived:addedHandoffParticipantToTime2 forConversation:tuConversation];

        startAddingHandoffParticipantToTime3 = [(CSDConversation *)self startAddingHandoffParticipantToTime];
        [startAddingHandoffParticipantToTime3 removeObjectForKey:handle2];

        addedHandoffParticipantToTime4 = [(CSDConversation *)self addedHandoffParticipantToTime];
        [addedHandoffParticipantToTime4 removeObjectForKey:handle2];

        allKeys = [(CSDConversation *)self removedHandoffParticipantToTime];
        [allKeys removeObjectForKey:handle2];
      }

      else
      {
      }
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (void)updateLocalParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

  if (nearbyFaceTimeEnabled)
  {
    idsSession = [(CSDConversation *)self idsSession];
    isJoined = [idsSession isJoined];

    if (isJoined)
    {
      localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
      v13 = [localParticipantCluster isEqual:clusterCopy];

      if ((v13 & 1) == 0)
      {
        objc_storeStrong(&self->_localParticipantCluster, cluster);
        [(CSDConversation *)self _recomputeAudioStates];
        avcSession = [(CSDConversation *)self avcSession];
        [avcSession setLocalParticipantCluster:clusterCopy];

        activitySessionManager = [(CSDConversation *)self activitySessionManager];
        activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
        v17 = NSStringFromSelector("tuConversationParticipant");
        v18 = [activeRemoteParticipants valueForKey:v17];
        [activitySessionManager updateNearbyClustersWithLocalParticipantCluster:clusterCopy remoteParticipants:v18];

        v19 = +[CSDReportingController sharedInstance];
        tuConversation = [(CSDConversation *)self tuConversation];
        [v19 participantClusterChangedForConversation:tuConversation];

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained conversationChanged:self];

        [(CSDConversation *)self updateLocalParticipantInfo];
      }
    }

    else
    {
      v22 = sub_100004778(v11);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100472460();
      }
    }
  }
}

- (void)postSharePlayActivityDidChangeNotificationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  state = [(CSDConversation *)self state];
  if (state == 3)
  {
    activity = [necessaryCopy activity];
    isSystemActivity = [activity isSystemActivity];

    if ((isSystemActivity & 1) == 0)
    {
      if (![necessaryCopy isLocallyInitiated] || (objc_msgSend(necessaryCopy, "activity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isScreenSharingActivity"), v8, (v9 & 1) == 0))
      {
        if (([necessaryCopy isLocallyInitiated] & 1) == 0)
        {
          v10 = +[NSNotificationCenter defaultCenter];
          [v10 postNotificationName:@"CSDSharePlayRemoteActivityDidChangeNotification" object:self];
        }
      }
    }
  }

  else
  {
    v11 = sub_100004778(state);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not posting notification since conversation is not joined", v12, 2u);
    }
  }
}

- (void)_applyUpdateFromDataBlobForRemoteParticipant:(id)participant participantIdentifier:(unint64_t)identifier
{
  participantCopy = participant;
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v7];

  delegate = [(CSDConversation *)self delegate];
  if (v8)
  {
    cluster = [v8 cluster];
    cluster2 = [participantCopy cluster];
    v12 = TUObjectsAreEqualOrNil();

    capabilities = [v8 capabilities];
    capabilities2 = [participantCopy capabilities];
    if ([capabilities isEqualToCapabilities:capabilities2])
    {
      isSpatialPersonaEnabled = [v8 isSpatialPersonaEnabled];
      v16 = isSpatialPersonaEnabled ^ [participantCopy isSpatialPersonaEnabled] | v12 ^ 1;
    }

    else
    {
      v16 = 1;
    }

    capabilities3 = [participantCopy capabilities];
    [v8 setCapabilities:capabilities3];

    [v8 setSpatialPersonaEnabled:{objc_msgSend(participantCopy, "isSpatialPersonaEnabled")}];
    [v8 setSpatialPersonaGenerationCounter:{objc_msgSend(participantCopy, "spatialPersonaGenerationCounter")}];
    cluster3 = [participantCopy cluster];
    [v8 setCluster:cluster3];

    if ((v12 & 1) == 0)
    {
      [(CSDConversation *)self _recomputeAudioStates];
      avcSession = [(CSDConversation *)self avcSession];
      cluster4 = [participantCopy cluster];
      [avcSession setParticipantCluster:cluster4 forParticipantWithIdentifier:identifier];

      activitySessionManager = [(CSDConversation *)self activitySessionManager];
      localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
      activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
      v24 = NSStringFromSelector("tuConversationParticipant");
      v25 = [activeRemoteParticipants valueForKey:v24];
      [activitySessionManager updateNearbyClustersWithLocalParticipantCluster:localParticipantCluster remoteParticipants:v25];

      v26 = +[CSDReportingController sharedInstance];
      tuConversation = [(CSDConversation *)self tuConversation];
      [v26 participantClusterChangedForConversation:tuConversation];
    }

    if (v16)
    {
      [delegate conversation:self updatedActiveParticipant:v8];
    }
  }
}

- (BOOL)isScreenSharingInitiationAvailable
{
  sharePlaySystemStateObserver = [(CSDConversation *)self sharePlaySystemStateObserver];
  allowScreenSharingInitiation = [sharePlaySystemStateObserver allowScreenSharingInitiation];

  return allowScreenSharingInitiation;
}

- (void)resetAVCSession
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetAVCSession", v5, 2u);
  }

  v4 = [(CSDConversation *)self setupNewAVCSession:[(CSDConversation *)self isOneToOneModeEnabled]];
  [(CSDConversation *)self setAvcSession:v4];

  [(CSDConversation *)self setExpectedVideoPaused:0];
  [(CSDConversation *)self setExpectedAudioEnabled:0];
  [(CSDConversation *)self setExpectedVideoEnabled:0];
  [(CSDConversation *)self setExpectedScreenEnabled:0];
}

- (void)resetConversation
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetConversation", v6, 2u);
  }

  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  [activitySessionManager resetSessions];

  self->_spatialPersonaEnabled = 0;
  localParticipantCluster = self->_localParticipantCluster;
  self->_localParticipantCluster = 0;
}

- (BOOL)isNearbySession
{
  featureFlags = [(CSDConversation *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

  if (!nearbyFaceTimeEnabled)
  {
    return 0;
  }

  idsSession = [(CSDConversation *)self idsSession];
  requiredCapabilities = [idsSession requiredCapabilities];
  v7 = [requiredCapabilities containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

  return v7;
}

- (void)session:(id)session didJoinGroup:(BOOL)group participantIdentifiers:(id)identifiers error:(id)error
{
  groupCopy = group;
  identifiersCopy = identifiers;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  idsSession = [(CSDConversation *)self idsSession];
  v15 = os_signpost_id_make_with_pointer(v13, idsSession);

  v17 = sub_100004778(v16);
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v32[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v15, "idsSessionJoin", "", v32, 2u);
  }

  report = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 2, [report hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

  v21 = sub_100004778(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v32[0] = 67109378;
    v32[1] = groupCopy;
    v33 = 2112;
    v34 = errorCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "didJoinGroup: %d error: %@", v32, 0x12u);
  }

  delegate = [(CSDConversation *)self delegate];
  v23 = delegate;
  if (!groupCopy)
  {
    v26 = sub_100004778(delegate);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10047249C();
    }

    [(CSDConversation *)self setState:0];
    -[CSDConversation _reportConversationFailedWithProviderEndedReason:](self, "_reportConversationFailedWithProviderEndedReason:", [errorCopy code] + 2000);
    goto LABEL_22;
  }

  [(CSDConversation *)self setMemberIdentifiers:identifiersCopy];
  [(CSDConversation *)self _startAVCSessionIfNecessary];
  [(CSDConversation *)self setLocalParticipantAudioVideoMode:[(CSDConversation *)self avMode] presentationMode:[(CSDConversation *)self presentationMode]];
  [(CSDConversation *)self createScreenCapturePickerIfNecessary];
  if ([(CSDConversation *)self state]== 2)
  {
    localMember = [(CSDConversation *)self localMember];
    if ([localMember isLightweightMember])
    {

LABEL_14:
      v28 = sub_100004778(v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32[0]) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Joining conversation without AVC session for lightweight device", v32, 2u);
      }

      [(CSDConversation *)self setState:3];
      [(CSDConversation *)self setHasJoined:1];
      [(CSDConversation *)self createContentSharingSessionIfNecessary];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained conversationChanged:self];

      [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary];
      goto LABEL_17;
    }

    avMode = [(CSDConversation *)self avMode];

    if (!avMode)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  [(CSDConversation *)self _registerPluginsIfNecessary];
  [v23 conversationConnectionDidStart:self];
  featureFlags = [(CSDConversation *)self featureFlags];
  if (![featureFlags nearbyFaceTimeEnabled] || !-[CSDConversation isNearbySession](self, "isNearbySession"))
  {
    goto LABEL_21;
  }

  isLocallyCreated = [(CSDConversation *)self isLocallyCreated];

  if (isLocallyCreated)
  {
    featureFlags = [(CSDConversation *)self remoteMembers];
    [(CSDConversation *)self startTimeOutForNearbyMembers:featureFlags];
LABEL_21:
  }

LABEL_22:
  [v23 conversationChanged:self];
}

- (void)session:(id)session didLeaveGroupWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  v10 = sub_100004778(delegate);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didLeaveGroupWithError: %@", buf, 0xCu);
  }

  if (errorCopy)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uUID = [(CSDConversation *)self UUID];
      *buf = 138412802;
      v38 = sessionCopy;
      v39 = 2112;
      v40 = uUID;
      v41 = 2112;
      v42 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CSDIDSGroupSession %@ failed to leave group for conversation UUID %@: %@", buf, 0x20u);
    }
  }

  [delegate conversationDidLeave:self];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v14 = [activeRemoteParticipants countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        [v18 setStreamToken:0];
        [v18 setScreenToken:0];
        [v18 setCaptionsToken:0];
      }

      v15 = [activeRemoteParticipants countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v19 = +[NSMutableDictionary dictionary];
  virtualParticipantsByPluginName = self->_virtualParticipantsByPluginName;
  self->_virtualParticipantsByPluginName = v19;

  [(CSDConversation *)self _stopAVCSession];
  [(CSDConversation *)self setSplitSessionSecondary:0];
  v21 = objc_alloc_init(NSMutableSet);
  [(CSDConversation *)self setPendingRemoteMembers:v21];

  letMeInRequestUINotificationBlock = [(CSDConversation *)self letMeInRequestUINotificationBlock];

  if (letMeInRequestUINotificationBlock)
  {
    v24 = sub_100004778(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Cancel letMeInRequestUINotificationBlock", buf, 2u);
    }

    letMeInRequestUINotificationBlock2 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
    dispatch_block_cancel(letMeInRequestUINotificationBlock2);

    [(CSDConversation *)self setLetMeInRequestUINotificationBlock:0];
  }

  [(CSDConversation *)self resetConversation];
  v26 = +[NSMutableDictionary dictionary];
  [(CSDConversation *)self setSequenceNumberToTime:v26];

  localMember = [(CSDConversation *)self localMember];
  isLightweightMember = [localMember isLightweightMember];

  if (isLightweightMember)
  {
    [delegate conversationInvalidated:self];
  }

  avcSession = [(CSDConversation *)self avcSession];
  if (avcSession && [(CSDConversation *)self isAudioReady])
  {
    isNotNeededToStopAVCSession = [(CSDConversation *)self isNotNeededToStopAVCSession];

    if ((isNotNeededToStopAVCSession & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setNotNeededToStopAVCSession:0];
  [(CSDConversation *)self setState:0];
  [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
  if (!errorCopy)
  {
    [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:528];
  }

  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
  [(CSDConversation *)self _restartIDSSessionIfNecessary];
LABEL_28:
  [delegate conversationChanged:self];
}

- (void)session:(id)session endedWithError:(id)error reason:(unsigned int)reason
{
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  v10 = sub_100004778(delegate);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v28 = 138413058;
    v29 = errorCopy;
    v30 = 1024;
    reasonCopy = reason;
    v32 = 1024;
    v33 = isOneToOneModeEnabled;
    v34 = 2048;
    v35 = [remoteMembers count];
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "endedWithError: %@ reason: %d, isOneToOneModeEnabled: %d, remoteMembers count: %lu", &v28, 0x22u);
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setAvcSessionInProgress:0];
  v11 = +[NSMutableDictionary dictionary];
  virtualParticipantsByPluginName = self->_virtualParticipantsByPluginName;
  self->_virtualParticipantsByPluginName = v11;

  [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
  [(CSDConversation *)self setSplitSessionSecondary:0];
  [(CSDConversation *)self resetConversation];
  localMember = [(CSDConversation *)self localMember];
  isLightweightMember = [localMember isLightweightMember];

  if (isLightweightMember)
  {
    v15 = [delegate conversationInvalidated:self];
  }

  if (reason == 48)
  {
    v20 = sub_100004778(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unknown participant added while in lockdown mode, cleaning up", &v28, 2u);
    }

    [(CSDConversation *)self _cleanUpConversation];
    selfCopy2 = self;
    v18 = 14;
    v19 = 2048;
    goto LABEL_13;
  }

  if (reason == 44)
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Kicked from the conversation, cleaning up", &v28, 2u);
    }

    [(CSDConversation *)self _cleanUpConversation];
    selfCopy2 = self;
    v18 = 7;
    v19 = 2044;
LABEL_13:
    [(CSDConversation *)selfCopy2 _reportConversationFailedWithFailureReason:v18 providerEndedReason:v19];
    goto LABEL_14;
  }

  if (-[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled") && (-[CSDConversation remoteMembers](self, "remoteMembers"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 count], v21, v22 == 1))
  {
    v24 = sub_100004778(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "U + 1, no need to recreate session, cleaning up", &v28, 2u);
    }

    [(CSDConversation *)self _cleanUpConversation];
  }

  else
  {
    [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:reason + 2000];
    if (errorCopy)
    {
      idsSession = [(CSDConversation *)self idsSession];
      [idsSession restart];
    }
  }

LABEL_14:
  [(CSDConversation *)self setState:0];
  [delegate conversationChanged:self];
}

- (void)updateParticipantsWithDestinationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeParticipants = [(CSDConversation *)self activeParticipants];
  v7 = [activeParticipants countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(activeParticipants);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 identifier]);
        v13 = [identifiersCopy objectForKeyedSubscript:v12];

        if (v13)
        {
          [v11 setActiveIDSDestination:v13];
        }
      }

      v8 = [activeParticipants countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)reviveOrInvalidateCachedConversationIfNecessary
{
  selfCopy = self;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversation *)selfCopy isFromStorage])
  {
    serverProvidedParticipantIdentifiers = [(CSDConversation *)selfCopy serverProvidedParticipantIdentifiers];
    if (serverProvidedParticipantIdentifiers)
    {
      v5 = serverProvidedParticipantIdentifiers;
      serverProvidedLightweightParticipantIdentifiers = [(CSDConversation *)selfCopy serverProvidedLightweightParticipantIdentifiers];

      if (serverProvidedLightweightParticipantIdentifiers)
      {
        delegate = [(CSDConversation *)selfCopy delegate];
        v36 = +[NSMutableSet set];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = [(CSDConversation *)selfCopy serverProvidedLightweightParticipantIdentifiers];
        v38 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v38)
        {
          v37 = *v45;
          v35 = selfCopy;
          do
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v45 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v44 + 1) + 8 * i);
              activeLightweightParticipantDestinationsByIdentifier = [(CSDConversation *)selfCopy activeLightweightParticipantDestinationsByIdentifier];
              v10 = [activeLightweightParticipantDestinationsByIdentifier objectForKeyedSubscript:v8];

              if (v10)
              {
                v39 = v8;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                lightweightMembers = [(CSDConversation *)selfCopy lightweightMembers];
                v12 = [lightweightMembers countByEnumeratingWithState:&v40 objects:v52 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v41;
LABEL_12:
                  v15 = 0;
                  while (1)
                  {
                    if (*v41 != v14)
                    {
                      objc_enumerationMutation(lightweightMembers);
                    }

                    v16 = *(*(&v40 + 1) + 8 * v15);
                    handle = [v16 handle];
                    v18 = [TUHandle normalizedHandleWithDestinationID:v10];
                    v19 = [handle isEquivalentToHandle:v18];

                    if (v19)
                    {
                      break;
                    }

                    if (v13 == ++v15)
                    {
                      v13 = [lightweightMembers countByEnumeratingWithState:&v40 objects:v52 count:16];
                      if (v13)
                      {
                        goto LABEL_12;
                      }

                      goto LABEL_18;
                    }
                  }

                  v20 = v16;

                  selfCopy = v35;
                  v8 = v39;
                  if (v20)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
LABEL_18:

                  selfCopy = v35;
                  v8 = v39;
                }
              }

              [v36 addObject:v8];
              v20 = 0;
LABEL_21:
            }

            v38 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v38);
        }

        serverProvidedParticipantIdentifiers2 = [(CSDConversation *)selfCopy serverProvidedParticipantIdentifiers];
        if ([serverProvidedParticipantIdentifiers2 count])
        {
        }

        else
        {
          v23 = [v36 count];

          if (!v23)
          {
            v31 = sub_100004778(v22);
            v30 = delegate;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              uUID = [(CSDConversation *)selfCopy UUID];
              *buf = 138412290;
              v49 = uUID;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Invalidating cached conversation: %@, no remote active participants were found.", buf, 0xCu);
            }

            [delegate conversationInvalidated:selfCopy];
            goto LABEL_29;
          }
        }

        v24 = sub_100004778(v22);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          uUID2 = [(CSDConversation *)selfCopy UUID];
          activeParticipantDestinationsByIdentifier = [(CSDConversation *)selfCopy activeParticipantDestinationsByIdentifier];
          v27 = [activeParticipantDestinationsByIdentifier count];
          serverProvidedLightweightParticipantIdentifiers2 = [(CSDConversation *)selfCopy serverProvidedLightweightParticipantIdentifiers];
          v29 = [serverProvidedLightweightParticipantIdentifiers2 count];
          *buf = 138412546;
          v49 = uUID2;
          v50 = 2048;
          v51 = &v27[v29];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Activating cached conversation with UUID: %@ since %lu remote participants were still found to be active.", buf, 0x16u);
        }

        [(CSDConversation *)selfCopy setFromStorage:0];
        v30 = delegate;
        [delegate conversationChanged:selfCopy];
LABEL_29:
      }
    }
  }
}

- (void)session:(id)session receivedActiveParticipantDestinationsByIdentifier:(id)identifier
{
  sessionCopy = session;
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  allKeys = [identifierCopy allKeys];
  v8 = [NSSet setWithArray:allKeys];
  [(CSDConversation *)self setServerProvidedParticipantIdentifiers:v8];

  [(CSDConversation *)self setActiveParticipantDestinationsByIdentifier:identifierCopy];
  recentlyLeftParticipantIdentifiers = [(CSDConversation *)self recentlyLeftParticipantIdentifiers];
  [recentlyLeftParticipantIdentifiers removeAllObjects];

  if (![(CSDConversation *)self _endScreenCallIfNecessary])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = identifierCopy;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (!v11)
    {
      goto LABEL_21;
    }

    v36 = *v41;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        pendingConversationParticipantsByIdentifier = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
        v15 = [pendingConversationParticipantsByIdentifier objectForKeyedSubscript:v13];

        if (v15)
        {
          v16 = [v10 objectForKeyedSubscript:v13];
          [v15 setActiveIDSDestination:v16];

          localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
          identifier = [v15 identifier];
          if (localParticipantIdentifier == identifier)
          {
            v19 = sub_100004778(identifier);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = v15;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found cached pending-participant, do not add local participant: %@", buf, 0xCu);
            }

            pendingConversationParticipantsByIdentifier2 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            [pendingConversationParticipantsByIdentifier2 removeObjectForKey:v13];
          }

          else
          {
            featureFlags = [(CSDConversation *)self featureFlags];
            if ([featureFlags controlMessageOverQREnabled])
            {
              serverBag = [(CSDConversation *)self serverBag];
              isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

              if (isControlMessageOverQREnabled)
              {
                objc_initWeak(buf, self);
                serverBag2 = [(CSDConversation *)self serverBag];
                v26 = dispatch_time(0, 1000000 * [serverBag2 addParticipantFromQRTime]);
                queue2 = [(CSDConversation *)self queue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000A0E08;
                block[3] = &unk_10061A790;
                objc_copyWeak(&v39, buf);
                block[4] = self;
                block[5] = v13;
                v38 = v15;
                dispatch_after(v26, queue2, block);

                objc_destroyWeak(&v39);
                objc_destroyWeak(buf);
                goto LABEL_19;
              }
            }

            else
            {
            }

            v28 = sub_100004778(v24);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = v15;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Found cached pending-participant, adding as active-participant, csdParticipant: %@", buf, 0xCu);
            }

            [(CSDConversation *)self addActiveParticipant:v15];
            pendingConversationParticipantsByIdentifier3 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            [pendingConversationParticipantsByIdentifier3 removeObjectForKey:v13];
          }
        }

LABEL_19:
      }

      v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (!v11)
      {
LABEL_21:

        featureFlags2 = [(CSDConversation *)self featureFlags];
        if ([featureFlags2 controlMessageOverQREnabled])
        {
          serverBag3 = [(CSDConversation *)self serverBag];
          isControlMessageOverQREnabled2 = [serverBag3 isControlMessageOverQREnabled];

          if (isControlMessageOverQREnabled2)
          {
LABEL_26:
            [(CSDConversation *)self reviveOrInvalidateCachedConversationIfNecessary];
            [(CSDConversation *)self _requestAVCBlobsIfNecessary];
            [(CSDConversation *)self _cancelInFlightAVCBlobRecoveryIfNecessary];
            [(CSDConversation *)self _showLetMeInUIIfNecessary];
            [(CSDConversation *)self _endCallIfNecessary];
            [(CSDConversation *)self _pruneRemoteParticipantsIfNecessary];
            break;
          }
        }

        else
        {
        }

        v33 = +[NSMutableDictionary dictionary];
        [(CSDConversation *)self setPendingConversationParticipantsByIdentifier:v33];

        goto LABEL_26;
      }
    }
  }
}

- (void)session:(id)session receivedActiveLightweightParticipantDestinationsByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  allKeys = [identifierCopy allKeys];
  v8 = [NSSet setWithArray:allKeys];
  [(CSDConversation *)self setServerProvidedLightweightParticipantIdentifiers:v8];

  [(CSDConversation *)self setActiveLightweightParticipantDestinationsByIdentifier:identifierCopy];
  if (![(CSDConversation *)self _endScreenCallIfNecessary])
  {
    [(CSDConversation *)self reviveOrInvalidateCachedConversationIfNecessary];

    [(CSDConversation *)self _pruneRemoteParticipantsIfNecessary];
  }
}

- (void)sessionDidTerminate:(id)terminate
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversation *)self setState:0];
  [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
  [(CSDConversation *)self _restartIDSSessionIfNecessary];
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)session:(id)session didReceiveLocalParticipantType:(unsigned __int16)type requestIdentifier:(unint64_t)identifier error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CSDConversation *)self UUID];
      v53 = 138412546;
      *v54 = uUID;
      *&v54[8] = 2112;
      *&v54[10] = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested audio/video mode changed for conversation %@ failed with error %@", &v53, 0x16u);
    }

    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags controlMessageOverQREnabled])
    {
      serverBag = [(CSDConversation *)self serverBag];
      isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

      if (isControlMessageOverQREnabled)
      {
        sequenceNumberToTime = [(CSDConversation *)self sequenceNumberToTime];
        v18 = [NSNumber numberWithUnsignedLongLong:identifier];
        v19 = [sequenceNumberToTime objectForKey:v18];

        if (v19)
        {
          sequenceNumberToTime2 = [(CSDConversation *)self sequenceNumberToTime];
          v22 = [NSNumber numberWithUnsignedLongLong:identifier];
          [sequenceNumberToTime2 removeObjectForKey:v22];
        }

        else
        {
          sequenceNumberToTime2 = sub_100004778(v20);
          if (os_log_type_enabled(sequenceNumberToTime2, OS_LOG_TYPE_DEFAULT))
          {
            v53 = 134217984;
            *v54 = identifier;
            _os_log_impl(&_mh_execute_header, sequenceNumberToTime2, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find requestIdentifier: %llu", &v53, 0xCu);
          }
        }
      }

      goto LABEL_62;
    }

LABEL_61:

    goto LABEL_62;
  }

  state = [(CSDConversation *)self state];
  if (state == 2 || (state = [(CSDConversation *)self state], state == 3))
  {
    if (typeCopy == 1)
    {
      state = [(CSDConversation *)self avMode];
      if (state == 1 || (state = [(CSDConversation *)self avMode], state == 2))
      {
        v28 = sub_100004778(state);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v53) = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Configuring session since local participant type is Normal", &v53, 2u);
        }

        avMode = [(CSDConversation *)self avMode];
        avcSession = [(CSDConversation *)self avcSession];
        [avcSession setAudioEnabled:1];
        [avcSession setVideo:avMode == 2];
        expectedVideoEnabled = [(CSDConversation *)self expectedVideoEnabled];

        if (expectedVideoEnabled)
        {
          expectedVideoEnabled2 = [(CSDConversation *)self expectedVideoEnabled];
          [avcSession setVideoEnabled:{objc_msgSend(expectedVideoEnabled2, "BOOLValue")}];
        }

        usesAudioSession = [(CSDConversation *)self usesAudioSession];
        if (usesAudioSession && (-[CSDConversation avcSession](self, "avcSession"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 isAudioReady], v34, !v35))
        {
          v43 = sub_100004778(usesAudioSession);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            if ([(CSDConversation *)self usesAudioSession])
            {
              v44 = @"YES";
            }

            else
            {
              v44 = @"NO";
            }

            avcSession2 = [(CSDConversation *)self avcSession];
            if ([avcSession2 isAudioReady])
            {
              v46 = @"YES";
            }

            else
            {
              v46 = @"NO";
            }

            v53 = 138412546;
            *v54 = v44;
            *&v54[8] = 2112;
            *&v54[10] = v46;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Not starting audio, usesAudioSession: %@, audioReady: %@", &v53, 0x16u);
          }
        }

        else
        {
          v36 = sub_100004778(usesAudioSession);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            if ([(CSDConversation *)self usesAudioSession])
            {
              v37 = @"YES";
            }

            else
            {
              v37 = @"NO";
            }

            avcSession3 = [(CSDConversation *)self avcSession];
            if ([avcSession3 isAudioReady])
            {
              v39 = @"YES";
            }

            else
            {
              v39 = @"NO";
            }

            v53 = 138412546;
            *v54 = v37;
            *&v54[8] = 2112;
            *&v54[10] = v39;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Starting audio, usesAudioSession: %@, audioReady: %@", &v53, 0x16u);
          }

          [(CSDConversation *)self startAudio];
        }

        goto LABEL_58;
      }
    }

    else if (!typeCopy)
    {
      state = [(CSDConversation *)self avMode];
      if (!state)
      {
        v24 = sub_100004778(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if ([(CSDConversation *)self avcSessionInProgress])
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          avcSession4 = [(CSDConversation *)self avcSession];
          v53 = 138412546;
          *v54 = v25;
          *&v54[8] = 2112;
          *&v54[10] = avcSession4;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Stopping session since local participant type is Lightweight avcSessionInProgress %@ avcSession: %@", &v53, 0x16u);
        }

        if ([(CSDConversation *)self avcSessionInProgress])
        {
          [(CSDConversation *)self _stopAVCSession];
          resetAVCSession = [(CSDConversation *)self setAvcSessionInProgress:0];
        }

        else
        {
          avcSession5 = [(CSDConversation *)self avcSession];
          if (avcSession5)
          {
          }

          else
          {
            localMember = [(CSDConversation *)self localMember];
            isLightweightMember = [localMember isLightweightMember];

            if ((isLightweightMember & 1) == 0)
            {
              v52 = sub_100004778(resetAVCSession);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v53) = 0;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Downgraded from AV -> AVLess, but didn't have AVCSession yet. Creating an AVCSession.", &v53, 2u);
              }

              resetAVCSession = [(CSDConversation *)self resetAVCSession];
            }
          }
        }

LABEL_58:
        v47 = sub_100004778(resetAVCSession);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          localParticipant = [(CSDConversation *)self localParticipant];
          v53 = 67109378;
          *v54 = typeCopy;
          *&v54[4] = 2112;
          *&v54[6] = localParticipant;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "didReceiveLocalParticipantType: %hu, localParticipant: %@", &v53, 0x12u);
        }

        featureFlags = [(CSDConversation *)self delegate];
        localParticipant2 = [(CSDConversation *)self localParticipant];
        [featureFlags conversation:self didChangeLocalParticipant:localParticipant2 broadcastActivitySession:1 currentSequenceNumber:identifier fromResponse:1];

        goto LABEL_61;
      }
    }

    v40 = sub_100004778(state);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_10047257C(self);
    }
  }

  else
  {
    v41 = sub_100004778(state);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10047250C();
    }

    [CSDCrashReporter simulateCrashReportWithFormat:@"Received update callback for participant type without being joined into a conversation. Please file a bug to [FaceTime | (New Bugs)]"];
  }

LABEL_62:
}

- (void)_updateParticipantTypesForAddedParticipant:(id)participant
{
  participantCopy = participant;
  -[CSDConversation setRemoteParticipantType:participant:](self, "setRemoteParticipantType:participant:", [participantCopy audioVideoMode] != 0, participantCopy);
}

- (void)setRemoteParticipantType:(unsigned __int16)type participant:(id)participant
{
  typeCopy = type;
  participantCopy = participant;
  featureFlags = [(CSDConversation *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags avLessSharePlayEnabled];

  if (avLessSharePlayEnabled)
  {
    _allMembers = [(CSDConversation *)self _allMembers];
    v10 = sub_100004778(_allMembers);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = _allMembers;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setRemoteParticipantType for existing members: %@", &v12, 0xCu);
    }

    idsSession = [(CSDConversation *)self idsSession];
    [idsSession setParticipantType:typeCopy forParticipant:participantCopy members:_allMembers isLocalParticipant:0];

    [(CSDConversation *)self _addParticipantsWaitingToBeAddedToAVCSession];
  }
}

- (void)updateOneToOneModeForParticipantUpdateType:(unsigned __int16)type participant:(id)participant
{
  typeCopy = type;
  participantCopy = participant;
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
  v9 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v8];

  if (v9)
  {
    activeRemoteParticipantsByIdentifier2 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
    v12 = [activeRemoteParticipantsByIdentifier2 count];
    activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
    v14 = [activeLightweightParticipantsByIdentifier count];

    if (&v14[v12])
    {
      activeRemoteParticipantCountMinusEligibleAVLess = [(CSDConversation *)self activeRemoteParticipantCountMinusEligibleAVLess];
      v16 = activeRemoteParticipantCountMinusEligibleAVLess == 1;
    }

    else
    {
      activeRemoteParticipantCountMinusEligibleAVLess = [(CSDConversation *)self isOneToOneModeEnabled];
      v16 = activeRemoteParticipantCountMinusEligibleAVLess;
    }

    v18 = sub_100004778(activeRemoteParticipantCountMinusEligibleAVLess);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 67109634;
      *v34 = typeCopy;
      *&v34[4] = 2112;
      *&v34[6] = participantCopy;
      v35 = 1024;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "type: %d participant: %@, shouldSetOneToOneModeEnabled: %d", &v33, 0x18u);
    }

    activeRemoteParticipantsByIdentifier3 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
    v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    v17 = [activeRemoteParticipantsByIdentifier3 objectForKeyedSubscript:v20];

    if (typeCopy == 1)
    {
      v32 = sub_100004778(v21);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 138412290;
        *v34 = participantCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Adding participant: %@", &v33, 0xCu);
      }

      [(CSDConversation *)self _addRemoteParticipantToAVCSessionIfPossible:participantCopy];
      -[NSObject setAudioVideoMode:](v17, "setAudioVideoMode:", [participantCopy audioVideoMode]);
      if (!(v16 | ![(CSDConversation *)self isOneToOneModeEnabled]))
      {
        [(CSDConversation *)self setOneToOneModeEnabled:0];
      }
    }

    else if (!typeCopy)
    {
      avcSession = [(CSDConversation *)self avcSession];
      v23 = [avcSession pendingRemovedRemoteParticipantByIdentififer:{objc_msgSend(participantCopy, "identifier")}];

      avcSession2 = [(CSDConversation *)self avcSession];
      v25 = [avcSession2 containsRemoteParticipantWithIdentifier:{objc_msgSend(participantCopy, "identifier")}];

      v27 = sub_100004778(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 67109376;
        *v34 = v23 != 0;
        *&v34[4] = 1024;
        *&v34[6] = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "isRemovingParticipantWithIdentifier: %d containsRemoteParticipantWithIdentifier: %d", &v33, 0xEu);
      }

      v29 = sub_100004778(v28);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v23 || ((v25 ^ 1) & 1) != 0)
      {
        if (v30)
        {
          v33 = 138412290;
          *v34 = participantCopy;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ignoring to remove participant %@ since its in pending list", &v33, 0xCu);
        }
      }

      else
      {
        if (v30)
        {
          v33 = 138412290;
          *v34 = participantCopy;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Removing participant %@", &v33, 0xCu);
        }

        avcSession3 = [(CSDConversation *)self avcSession];
        [avcSession3 removeParticipant:participantCopy];

        [v17 setAudioVideoMode:0];
        if (![(CSDConversation *)self isOneToOneModeEnabled]&& v16)
        {
          [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:1];
        }
      }
    }
  }

  else
  {
    v17 = sub_100004778(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No participant found on the conversation", &v33, 2u);
    }
  }
}

- (void)session:(id)session didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags controlMessageOverQREnabled])
  {
    serverBag = [(CSDConversation *)self serverBag];
    isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

    if (isControlMessageOverQREnabled)
    {
      localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
      if (localParticipantIdentifier == d)
      {
        v14 = sub_100004778(localParticipantIdentifier);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          dCopy3 = d;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Do not add local participant: %llu", buf, 0xCu);
        }

        pendingConversationParticipantsByIdentifier = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
        featureFlags2 = [NSNumber numberWithUnsignedLongLong:d];
        [(CSDMessagingConversationParticipant *)pendingConversationParticipantsByIdentifier removeObjectForKey:featureFlags2];
        goto LABEL_16;
      }

      if (contextCopy)
      {
        pendingConversationParticipantsByIdentifier = [[CSDMessagingConversationParticipant alloc] initWithData:contextCopy];
        [(CSDMessagingConversationParticipant *)pendingConversationParticipantsByIdentifier setIdentifier:d];
        activeParticipantDestinationsByIdentifier = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
        v21 = [NSNumber numberWithUnsignedLongLong:d];
        v22 = [activeParticipantDestinationsByIdentifier objectForKeyedSubscript:v21];

        v23 = IDSCopyTokenAndIDForTokenWithID();
        v24 = 0;
        _stripFZIDPrefix = [v23 _stripFZIDPrefix];
        v26 = [TUHandle normalizedHandleWithDestinationID:_stripFZIDPrefix];

        if (v26)
        {
          v40 = v24;
          v28 = [CSDMessagingHandle handleWithTUHandle:v26];
          [(CSDMessagingConversationParticipant *)pendingConversationParticipantsByIdentifier setHandle:v28];

          csdConversationParticipant = [(CSDMessagingConversationParticipant *)pendingConversationParticipantsByIdentifier csdConversationParticipant];
          v30 = sub_100004778(csdConversationParticipant);
          v31 = v30;
          if (csdConversationParticipant)
          {
            v39 = v22;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              dCopy3 = csdConversationParticipant;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "didReceiveJoinedParticipantID: add csdParticipant: %@ to active participant", buf, 0xCu);
            }

            [(CSDConversation *)self addActiveParticipant:csdConversationParticipant];
            pendingConversationParticipantsByIdentifier2 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            v33 = [NSNumber numberWithUnsignedLongLong:d];
            v31 = [pendingConversationParticipantsByIdentifier2 objectForKeyedSubscript:v33];

            if (v31)
            {
              v35 = sub_100004778(v34);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                pendingConversationParticipantsByIdentifier3 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
                *buf = 134218242;
                dCopy3 = d;
                v43 = 2112;
                v44 = pendingConversationParticipantsByIdentifier3;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "remove participantID: %llu from pendingConversationParticipantsByIdentifier %@", buf, 0x16u);
              }

              pendingConversationParticipantsByIdentifier4 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
              v38 = [NSNumber numberWithUnsignedLongLong:d];
              [pendingConversationParticipantsByIdentifier4 removeObjectForKey:v38];
            }

            v22 = v39;
          }

          else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100472610(pendingConversationParticipantsByIdentifier, d);
          }

          v24 = v40;
        }

        else
        {
          csdConversationParticipant = sub_100004778(v27);
          if (os_log_type_enabled(csdConversationParticipant, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218754;
            dCopy3 = d;
            v43 = 2112;
            v44 = v22;
            v45 = 2112;
            v46 = v24;
            v47 = 2112;
            v48 = v23;
            _os_log_impl(&_mh_execute_header, csdConversationParticipant, OS_LOG_TYPE_DEFAULT, "Couldn't find handle for participantID: %llu, participantDestination: %@, participantToken: %@, participantURI: %@", buf, 0x2Au);
          }
        }
      }

      else
      {
        pendingConversationParticipantsByIdentifier = sub_100004778(localParticipantIdentifier);
        if (os_log_type_enabled(pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_DEFAULT, "no valid clientContext, return", buf, 2u);
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  pendingConversationParticipantsByIdentifier = sub_100004778(v12);
  if (os_log_type_enabled(pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    featureFlags2 = [(CSDConversation *)self featureFlags];
    if ([featureFlags2 controlMessageOverQREnabled])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    serverBag2 = [(CSDConversation *)self serverBag];
    if ([serverBag2 isControlMessageOverQREnabled])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *buf = 138412546;
    dCopy3 = v17;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_DEFAULT, "didReceiveJoinedParticipantID: feature flag of controlMessageOverQREnabled: %@, server bag of isControlMessageOverQREnabled: %@, return", buf, 0x16u);

LABEL_16:
  }

LABEL_17:
}

- (void)session:(id)session didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  if (([featureFlags controlMessageOverQREnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  serverBag = [(CSDConversation *)self serverBag];
  isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

  if ((isControlMessageOverQREnabled & 1) == 0)
  {
LABEL_7:
    v16 = sub_100004778(v14);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    featureFlags2 = [(CSDConversation *)self featureFlags];
    if ([featureFlags2 controlMessageOverQREnabled])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    serverBag2 = [(CSDConversation *)self serverBag];
    if ([serverBag2 isControlMessageOverQREnabled])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    *buf = 138412546;
    dCopy = v21;
    v47 = 2112;
    v48 = v23;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateParticipantID: feature flag of controlMessageOverQREnabled: %@, server bag of isControlMessageOverQREnabled: %@, return", buf, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
  if (localParticipantIdentifier == d)
  {
    v16 = sub_100004778(localParticipantIdentifier);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      dCopy = d;
      v17 = "didReceiveParticipantUpdateParticipantID: Do not process local participant: %llu";
      v18 = v16;
      v19 = 12;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (contextCopy)
  {
    v24 = [[CSDMessagingConversationMessage alloc] initWithData:contextCopy];
    v16 = v24;
    if (!v24)
    {
      featureFlags2 = sub_100004778(0);
      if (os_log_type_enabled(featureFlags2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, featureFlags2, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateParticipantID: no valid message, return", buf, 2u);
      }

      goto LABEL_15;
    }

    if (!sub_1000C0318(v24))
    {
      goto LABEL_16;
    }

    v39 = sessionCopy;
    activeParticipants = [v16 activeParticipants];
    featureFlags2 = [activeParticipants firstObject];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
    v27 = [activeRemoteParticipants countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v38 = contextCopy;
      v29 = 0;
      v30 = *v41;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v32 = *(*(&v40 + 1) + 8 * i);
          identifier = [v32 identifier];
          if (identifier == [featureFlags2 identifier])
          {
            handle = [v32 handle];

            v29 = handle;
          }
        }

        v28 = [activeRemoteParticipants countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v28);

      contextCopy = v38;
      if (v29)
      {
        v36 = sub_100004778(v35);
        sessionCopy = v39;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          dCopy = v29;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Found remoteParticipant: %@ for didReceiveParticipantUpdateParticipantID", buf, 0xCu);
        }

        delegate = [(CSDConversation *)self delegate];
        [delegate conversation:self didReceiveParticipantUpdateMessage:v16 fromNormalizedHandle:v29];

LABEL_41:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v29 = sub_100004778(v35);
    sessionCopy = v39;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100472684();
    }

    goto LABEL_41;
  }

  v16 = sub_100004778(localParticipantIdentifier);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v17 = "didReceiveParticipantUpdateParticipantID: no valid clientContext, return";
    v18 = v16;
    v19 = 2;
    goto LABEL_35;
  }

LABEL_16:
}

- (void)session:(id)session didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  if (([featureFlags controlMessageOverQREnabled] & 1) == 0)
  {

LABEL_7:
    v13 = sub_100004778(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      featureFlags2 = [(CSDConversation *)self featureFlags];
      if ([featureFlags2 controlMessageOverQREnabled])
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      serverBag = [(CSDConversation *)self serverBag];
      if ([serverBag isControlMessageOverQREnabled])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      *buf = 138412546;
      dCopy3 = v17;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "feature flag of controlMessageOverQREnabled: %@, server bag of isControlMessageOverQREnabled: %@, return", buf, 0x16u);
    }

    goto LABEL_30;
  }

  serverBag2 = [(CSDConversation *)self serverBag];
  isControlMessageOverQREnabled = [serverBag2 isControlMessageOverQREnabled];

  if ((isControlMessageOverQREnabled & 1) == 0)
  {
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v13 = [[CSDMessagingConversationParticipantDidLeaveContext alloc] initWithData:contextCopy];
    leaveReason = [v13 leaveReason];
    v31 = leaveReason;
    v15 = sub_100004778(leaveReason);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      dCopy3 = d;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ParticipantId %llu left with leave context %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = sub_100004778(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      dCopy3 = d;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ParticipantID %llu left without providing leave context", buf, 0xCu);
    }

    v31 = 0;
    v13 = 0;
  }

  [(CSDConversation *)self activeParticipants];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v35 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * i);
        if ([v25 identifier] == d)
        {
          pendingConversationParticipantsByIdentifier = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
          v29 = [NSNumber numberWithUnsignedLongLong:d];
          [pendingConversationParticipantsByIdentifier removeObjectForKey:v29];

          handle = [v25 handle];
          [(CSDConversation *)self removeParticipantWithIdentifier:d fromHandle:handle withReason:v31];

          v27 = v20;
          goto LABEL_29;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v27 = sub_100004778(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    dCopy3 = d;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Couldn't find participantID %llu from active participant list: %@", buf, 0x16u);
  }

LABEL_29:

LABEL_30:
}

- (void)session:(id)session didReceiveReport:(id)report
{
  reportCopy = report;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = +[CSDReportingController sharedInstance];
  tuConversation = [(CSDConversation *)self tuConversation];
  [v8 idsReportsReceived:reportCopy forConversation:tuConversation];
}

- (void)session:(id)session didReceiveKickedParticipantIDs:(id)ds withCode:(unsigned int)code withType:(unsigned __int16)type isTruncated:(BOOL)truncated
{
  typeCopy = type;
  dsCopy = ds;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v127 = dsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didReceiveKickedParticipantIDs: %@", buf, 0xCu);
  }

  if (code - 4 < 2)
  {
    v36 = sub_100004778(v13);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v127) = code;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] resetting state, IDSGroupSessionMemberManagementCode: %d", buf, 8u);
    }

    [(CSDConversation *)self setKickMemberRetryCount:0];
    delegate = +[NSMutableDictionary dictionary];
    [(CSDConversation *)self setPendingKickedMembersByIdentifier:delegate];
    goto LABEL_69;
  }

  if (code == 2)
  {
    kickMemberRetryCount = [(CSDConversation *)self kickMemberRetryCount];
    serverBag = [(CSDConversation *)self serverBag];
    maxKickMemberRetries = [serverBag maxKickMemberRetries];

    if (kickMemberRetryCount >= maxKickMemberRetries)
    {
      v54 = sub_100004778(v41);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        serverBag2 = [(CSDConversation *)self serverBag];
        maxActiveParticipantFetchRetries = [serverBag2 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v127 = maxActiveParticipantFetchRetries;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying to kickMembers, max retry count (%lu) reached", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (typeCopy == 2)
    {
      v85 = sub_100004778(v41);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        kickMemberRetryCount2 = [(CSDConversation *)self kickMemberRetryCount];
        pendingAllowedMembers = [(CSDConversation *)self pendingAllowedMembers];
        *buf = 134218242;
        v127 = kickMemberRetryCount2;
        v128 = 2112;
        v129 = pendingAllowedMembers;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Retrying allowed members: retries: %lu pendingAllowedMembers: %@", buf, 0x16u);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      pendingAllowedMembers2 = [(CSDConversation *)self pendingAllowedMembers];
      pendingKickedMembersByIdentifier2 = [pendingAllowedMembers2 copy];

      v89 = [pendingKickedMembersByIdentifier2 countByEnumeratingWithState:&v100 objects:v122 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v101;
        do
        {
          for (i = 0; i != v90; i = i + 1)
          {
            if (*v101 != v91)
            {
              objc_enumerationMutation(pendingKickedMembersByIdentifier2);
            }

            [(CSDConversation *)self _allowMember:*(*(&v100 + 1) + 8 * i)];
          }

          v90 = [pendingKickedMembersByIdentifier2 countByEnumeratingWithState:&v100 objects:v122 count:16];
        }

        while (v90);
      }
    }

    else
    {
      if (typeCopy != 1)
      {
LABEL_81:
        [(CSDConversation *)self setKickMemberRetryCount:[(CSDConversation *)self kickMemberRetryCount]+ 1];
        goto LABEL_70;
      }

      v42 = sub_100004778(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        kickMemberRetryCount3 = [(CSDConversation *)self kickMemberRetryCount];
        pendingKickedMembersByIdentifier = [(CSDConversation *)self pendingKickedMembersByIdentifier];
        *buf = 134218242;
        v127 = kickMemberRetryCount3;
        v128 = 2112;
        v129 = pendingKickedMembersByIdentifier;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Retrying kicked members: retries: %lu pendingKickedMembers: %@", buf, 0x16u);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      pendingKickedMembersByIdentifier2 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
      v46 = [pendingKickedMembersByIdentifier2 countByEnumeratingWithState:&v104 objects:v123 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v105;
        do
        {
          for (j = 0; j != v47; j = j + 1)
          {
            if (*v105 != v48)
            {
              objc_enumerationMutation(pendingKickedMembersByIdentifier2);
            }

            v50 = *(*(&v104 + 1) + 8 * j);
            pendingKickedMembersByIdentifier3 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
            v52 = [pendingKickedMembersByIdentifier3 objectForKeyedSubscript:v50];

            idsSession = [(CSDConversation *)self idsSession];
            [idsSession kickMember:v52];
          }

          v47 = [pendingKickedMembersByIdentifier2 countByEnumeratingWithState:&v104 objects:v123 count:16];
        }

        while (v47);
      }
    }

    goto LABEL_81;
  }

  if (!code)
  {
    v14 = [(CSDConversation *)self setKickMemberRetryCount:0];
    if (typeCopy == 2)
    {
      v57 = [NSMutableSet alloc];
      pendingAllowedMembers3 = [(CSDConversation *)self pendingAllowedMembers];
      v59 = [v57 initWithSet:pendingAllowedMembers3];

      v98 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
      v96 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      kickedParticipants = [(CSDConversation *)self kickedParticipants];
      v61 = [kickedParticipants countByEnumeratingWithState:&v112 objects:v125 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v113;
        do
        {
          for (k = 0; k != v62; k = k + 1)
          {
            if (*v113 != v63)
            {
              objc_enumerationMutation(kickedParticipants);
            }

            v65 = *(*(&v112 + 1) + 8 * k);
            v66 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v65 identifier]);
            v67 = [dsCopy containsObject:v66];

            if (v67)
            {
              v68 = [TUConversationMember alloc];
              handle = [v65 handle];
              v70 = [v68 initWithHandle:handle];

              [v96 addObject:v65];
              [v98 addObject:v70];
              [v59 removeObject:v70];
            }
          }

          v62 = [kickedParticipants countByEnumeratingWithState:&v112 objects:v125 count:16];
        }

        while (v62);
      }

      [(CSDConversation *)self setKickedMembers:v98];
      pendingAllowedMembers4 = [(CSDConversation *)self pendingAllowedMembers];
      v35 = v59;
      [pendingAllowedMembers4 minusSet:v59];

      v73 = sub_100004778(v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        kickedMembers = [(CSDConversation *)self kickedMembers];
        *buf = 138412290;
        v127 = kickedMembers;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "updating kickedMembers to %@", buf, 0xCu);
      }

      v76 = sub_100004778(v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        pendingAllowedMembers5 = [(CSDConversation *)self pendingAllowedMembers];
        *buf = 138412290;
        v127 = pendingAllowedMembers5;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "updating pendingAllowedMembers to %@", buf, 0xCu);
      }

      v78 = objc_alloc_init(NSSet);
      [(CSDConversation *)self addRemoteMembers:v59 otherInvitedHandles:v78 triggeredLocally:1];

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      pendingAllowedMembers6 = [(CSDConversation *)self pendingAllowedMembers];
      v80 = [pendingAllowedMembers6 copy];

      v81 = [v80 countByEnumeratingWithState:&v108 objects:v124 count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v109;
        do
        {
          for (m = 0; m != v82; m = m + 1)
          {
            if (*v109 != v83)
            {
              objc_enumerationMutation(v80);
            }

            [(CSDConversation *)self _allowMember:*(*(&v108 + 1) + 8 * m)];
          }

          v82 = [v80 countByEnumeratingWithState:&v108 objects:v124 count:16];
        }

        while (v82);
      }
    }

    else if (typeCopy == 1)
    {
      remoteMembers = [(CSDConversation *)self remoteMembers];
      lightweightMembers = [(CSDConversation *)self lightweightMembers];
      v17 = [remoteMembers setByAddingObjectsFromSet:lightweightMembers];
      allObjects = [v17 allObjects];

      v94 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [dsCopy count]);
      memberIdentifiers = [(CSDConversation *)self memberIdentifiers];
      v19 = [NSMutableSet setWithSet:memberIdentifiers];

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      obj = dsCopy;
      v20 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
      if (v20)
      {
        v22 = v20;
        v23 = *v119;
        *&v21 = 138412802;
        v93 = v21;
        do
        {
          for (n = 0; n != v22; n = n + 1)
          {
            if (*v119 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v118 + 1) + 8 * n);
            activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
            v27 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v25];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
              v29 = [activeLightweightParticipantsByIdentifier objectForKeyedSubscript:v25];
            }

            [v19 removeObject:v25];
            pendingKickedMembersByIdentifier4 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
            [pendingKickedMembersByIdentifier4 removeObjectForKey:v25];

            if (v29)
            {
              v116[0] = _NSConcreteStackBlock;
              v116[1] = 3221225472;
              v116[2] = sub_1000A37FC;
              v116[3] = &unk_10061A7B8;
              v32 = v29;
              v117 = v32;
              v33 = [allObjects tu_firstObjectPassingTest:v116];
              if (v33)
              {
                [v94 addObject:v33];
              }

              else
              {
                v34 = sub_100004778(0);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = v93;
                  v127 = v25;
                  v128 = 2112;
                  v129 = v32;
                  v130 = 2112;
                  v131 = allObjects;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "When kicking participantID %@ we found participant %@ with no member in %@", buf, 0x20u);
                }
              }
            }
          }

          v22 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
        }

        while (v22);
      }

      [(CSDConversation *)self setMemberIdentifiers:v19];
      [(CSDConversation *)self removeRemoteMembers:v94 triggeredLocally:0];

      v35 = allObjects;
    }

    else
    {
      v35 = sub_100004778(v14);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v127) = typeCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveKickedParticipantIDstype: %hu unexpected", buf, 8u);
      }
    }

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
LABEL_69:
  }

LABEL_70:
}

- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = [infoCopy objectForKeyedSubscript:IDSGroupSessionParticipantIdentifierKey];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  v10 = [infoCopy objectForKeyedSubscript:IDSGroupSessionPluginNameKey];

  if (![(__CFString *)v10 length])
  {

    v10 = @"PubSub";
  }

  v9 = [[TUConversationVirtualParticipant alloc] initWithIdentifier:unsignedLongLongValue pluginName:v10];
  [(CSDConversation *)self addVirtualParticipant:v9];
}

- (void)session:(id)session didUnregisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = [infoCopy objectForKeyedSubscript:IDSGroupSessionParticipantIdentifierKey];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  v13 = [infoCopy objectForKeyedSubscript:IDSGroupSessionPluginNameKey];

  if (![(__CFString *)v13 length])
  {

    v13 = @"PubSub";
  }

  virtualParticipantsByPluginName = [(CSDConversation *)self virtualParticipantsByPluginName];
  v10 = [virtualParticipantsByPluginName objectForKeyedSubscript:v13];
  identifier = [v10 identifier];

  if (identifier == unsignedLongLongValue)
  {
    v12 = [[TUConversationVirtualParticipant alloc] initWithIdentifier:unsignedLongLongValue pluginName:v13];
    [(CSDConversation *)self removeVirtualParticipant:v12];
  }
}

- (void)sessionDidReceiveKeyUpdate:(id)update
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessionManager = [(CSDConversation *)self activitySessionManager];
  [activitySessionManager refreshDataCryptors];
}

- (void)session:(id)session didReceiveDataBlob:(id)blob forParticipant:(id)participant
{
  blobCopy = blob;
  participantCopy = participant;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = participantCopy;
    v58 = 2112;
    v59 = blobCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob for participant: %@, blob %@", buf, 0x16u);
  }

  v12 = [[CSDMessagingConversationParticipant alloc] initWithData:blobCopy];
  [(CSDMessagingConversationParticipant *)v12 setIdentifier:[participantCopy participantIdentifier]];
  participantURI = [participantCopy participantURI];
  _stripFZIDPrefix = [participantURI _stripFZIDPrefix];
  v15 = [TUHandle normalizedHandleWithDestinationID:_stripFZIDPrefix];

  if (v15)
  {
    pendingKickedMembersByIdentifier = [(CSDConversation *)self pendingKickedMembersByIdentifier];
    v18 = [NSNumber numberWithUnsignedLongLong:[participantCopy participantIdentifier]];
    v19 = [pendingKickedMembersByIdentifier objectForKeyedSubscript:v18];

    if (v19)
    {
      v21 = sub_100004778(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        participantIdentifier = [participantCopy participantIdentifier];
        *buf = 134217984;
        v57 = participantIdentifier;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveDataBlob not processing because we have a pendingKickedMember with the same identifier: %llu", buf, 0xCu);
      }

      goto LABEL_34;
    }

    kickedMembers = [(CSDConversation *)self kickedMembers];
    allObjects = [kickedMembers allObjects];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000A41A0;
    v54[3] = &unk_10061A7B8;
    v27 = v15;
    v55 = v27;
    v28 = [allObjects tu_containsObjectPassingTest:v54];

    if (v28)
    {
      csdConversationParticipant = sub_100004778(v29);
      if (os_log_type_enabled(csdConversationParticipant, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v27;
        _os_log_impl(&_mh_execute_header, csdConversationParticipant, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveDataBlob not processing because we have a kickedMember with the same handle: %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v31 = [CSDMessagingHandle handleWithTUHandle:v27];
    [(CSDMessagingConversationParticipant *)v12 setHandle:v31];

    csdConversationParticipant = [(CSDMessagingConversationParticipant *)v12 csdConversationParticipant];
    if (!csdConversationParticipant)
    {
      pendingConversationParticipantsByIdentifier = sub_100004778(0);
      if (os_log_type_enabled(pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_1004726F4();
      }

      goto LABEL_32;
    }

    [(CSDConversation *)self _applyUpdateFromDataBlobForRemoteParticipant:csdConversationParticipant participantIdentifier:[participantCopy participantIdentifier]];
    [(CSDConversation *)self updateConversationParticipantToHaveMatchingSiriDisplayName:csdConversationParticipant];
    localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
    identifier = [csdConversationParticipant identifier];
    if (localParticipantIdentifier == identifier)
    {
      pendingConversationParticipantsByIdentifier = sub_100004778(identifier);
      if (os_log_type_enabled(pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = csdConversationParticipant;
        _os_log_impl(&_mh_execute_header, pendingConversationParticipantsByIdentifier, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob skipped adding local-participant's datablob to the cache, csdConversationParticipant: %@", buf, 0xCu);
      }

LABEL_32:

LABEL_33:
      v21 = v55;
      goto LABEL_34;
    }

    activeParticipantDestinationsByIdentifier = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    v36 = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
    v37 = [activeParticipantDestinationsByIdentifier objectForKeyedSubscript:v36];
    if (!v37)
    {
      activeLightweightParticipantsByIdentifier = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
      v39 = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
      v40 = [activeLightweightParticipantsByIdentifier objectForKeyedSubscript:v39];
      if (!v40)
      {

LABEL_29:
        v46 = sub_100004778(v44);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v57 = csdConversationParticipant;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob caching as pending-participant, csdConversationParticipant: %@", buf, 0xCu);
        }

        pendingConversationParticipantsByIdentifier = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
        v47 = [NSNumber numberWithUnsignedLongLong:[participantCopy participantIdentifier]];
        [pendingConversationParticipantsByIdentifier setObject:csdConversationParticipant forKeyedSubscript:v47];

        goto LABEL_32;
      }

      v48 = v40;
      v50 = v39;
      v51 = activeLightweightParticipantsByIdentifier;
      v37 = 0;
    }

    v52 = v36;
    v53 = activeParticipantDestinationsByIdentifier;
    recentlyLeftParticipantIdentifiers = [(CSDConversation *)self recentlyLeftParticipantIdentifiers];
    v42 = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
    v43 = [recentlyLeftParticipantIdentifiers containsObject:v42];

    if (v37)
    {
    }

    else
    {
    }

    if ((v43 & 1) == 0)
    {
      v45 = sub_100004778(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = csdConversationParticipant;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob adding as active-participant, csdConversationParticipant: %@", buf, 0xCu);
      }

      [(CSDConversation *)self addActiveParticipant:csdConversationParticipant];
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v21 = sub_100004778(v16);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    participantURI2 = [participantCopy participantURI];
    v24 = TULoggableStringForHandle();
    *buf = 138412290;
    v57 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveDataBlob not processing because unable to create handle from URI: %@", buf, 0xCu);
  }

LABEL_34:
}

- (void)session:(id)session didReceiveData:(id)data dataType:(unsigned __int16)type forParticipant:(id)participant
{
  typeCopy = type;
  participantCopy = participant;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = typeCopy;
    v15 = 2112;
    v16 = participantCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didReceiveData dataType: %u for participant: %@", v14, 0x12u);
  }

  if (typeCopy != 1)
  {
    v13 = sub_100004778(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100472764();
    }
  }
}

- (void)session:(id)session didReceiveServerErrorCode:(unsigned int)code
{
  v4 = *&code;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didReceiveServerErrorCode: %u", v13, 8u);
  }

  tuActivitySessions = [(CSDConversation *)self tuActivitySessions];
  anyObject = [tuActivitySessions anyObject];

  if (anyObject)
  {
    [CSDAnalyticsReporter sendSessionServerTerminatedEventWithActivitySession:anyObject code:v4];
  }

  else
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004727D8();
    }
  }
}

- (id)session:(id)session conversationParticipantWithParticipantIdentifier:(unint64_t)identifier
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v8 = [NSNumber numberWithUnsignedLongLong:identifier];
  v9 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v8];

  return v9;
}

- (id)onlyAvailableSessionConversationParticipant:(id)participant
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  activeRemoteParticipantsByIdentifier2 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  allValues = [activeRemoteParticipantsByIdentifier2 allValues];
  firstObject = [allValues firstObject];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [firstObject identifier]);
  v10 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  return v10;
}

- (void)session:(id)session didReceiveUnderlyingLinksStatus:(BOOL)status
{
  statusCopy = status;
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (statusCopy)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CSDConversation] didReceiveUnderlyingLinksStatus: %@", &v10, 0xCu);
  }

  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (int)_errorToAVCProviderEndedReason:(id)reason defaultProviderReason:(int)providerReason
{
  reasonCopy = reason;
  v6 = reasonCopy;
  if (!reasonCopy)
  {
    v14 = sub_100004778(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      providerReasonCopy2 = providerReason;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No error with a failed start from AVC using %d", &v16, 8u);
    }

    goto LABEL_12;
  }

  userInfo = [reasonCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"NSErrorUserInfoDetailedError"];

  if (v8)
  {
    userInfo2 = [v6 userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:@"NSErrorUserInfoDetailedError"];
    LODWORD(v8) = [v10 intValue];
  }

  code = [v6 code];
  providerReason = v8 + 100 * code;
  v12 = sub_100004778(code);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109632;
    providerReasonCopy2 = providerReason;
    v18 = 1024;
    code2 = [v6 code];
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AVCProviderEndReason=%d error.code=%d detailedError=%d", &v16, 0x14u);
  }

  if (!providerReason)
  {
    v14 = sub_100004778(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      providerReasonCopy2 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AVCProviderEndReason=%d, this should not happen", &v16, 8u);
    }

    providerReason = 518;
LABEL_12:
  }

  return providerReason;
}

- (void)executeSessionDidStart
{
  avcSession = [(CSDConversation *)self avcSession];
  if (!avcSession)
  {
    sub_100472814();
  }

  expectedVideoEnabled = [(CSDConversation *)self expectedVideoEnabled];

  if (expectedVideoEnabled)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      expectedVideoEnabled2 = [(CSDConversation *)self expectedVideoEnabled];
      v17 = 138412290;
      v18 = expectedVideoEnabled2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found expectedVideoEnabled: %@, updating value to match state", &v17, 0xCu);
    }

    expectedVideoEnabled3 = [(CSDConversation *)self expectedVideoEnabled];
    bOOLValue = [expectedVideoEnabled3 BOOLValue];

    [(CSDConversation *)self setExpectedVideoEnabled:0];
    [(CSDConversation *)self setVideoEnabled:bOOLValue];
  }

  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags nearbyFaceTimeEnabled] && -[CSDConversation isNearbySession](self, "isNearbySession"))
  {
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v12 = [remoteMembers count] != 1;
  }

  else
  {
    v12 = 1;
  }

  featureFlags2 = [(CSDConversation *)self featureFlags];
  if (([featureFlags2 sharePlayInCallsEnabled] & 1) == 0)
  {
    goto LABEL_16;
  }

  provider = [(CSDConversation *)self provider];
  if (([provider isTelephonyWithSharePlayProvider] & 1) == 0)
  {

LABEL_16:
    goto LABEL_17;
  }

  remoteMembers2 = [(CSDConversation *)self remoteMembers];
  v16 = [remoteMembers2 count];

  if (v16 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v12;
  }

LABEL_17:
  [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:v12];
  [(CSDConversation *)self createContentSharingSessionIfNecessary];
  [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary:0];
}

- (void)session:(id)session didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 67109378;
    v35[1] = startCopy;
    v36 = 2112;
    v37 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didStart: %d error: %@", v35, 0x12u);
  }

  v12 = sub_100004778(v11);
  avcSession = [(CSDConversation *)self avcSession];
  v14 = os_signpost_id_make_with_pointer(v12, avcSession);

  v16 = sub_100004778(v15);
  v17 = v16;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v35[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v14, "avcSessionStart", "", v35, 2u);
  }

  report = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 4, [report hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

  delegate = [(CSDConversation *)self delegate];
  v20 = delegate;
  if (startCopy)
  {
    if ([(CSDConversation *)self state]== 2 || (v21 = [(CSDConversation *)self state], v21 == 3))
    {
      [(CSDConversation *)self setState:3];
      [(CSDConversation *)self setHasJoined:1];
      [(CSDConversation *)self executeSessionDidStart];
    }

    else
    {
      v30 = sub_100004778(v21);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1004728EC();
      }

      [(CSDConversation *)self setState:4];
      [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"AVCSession started but we weren't trying to join the conversation."];
      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:[(CSDConversation *)self _errorToAVCProviderEndedReason:errorCopy defaultProviderReason:515]];
      [(CSDConversation *)self _stopAVCSession];
    }

    goto LABEL_29;
  }

  v22 = sub_100004778(delegate);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100472840();
  }

  [(CSDConversation *)self setAvcSessionInProgress:0];
  [(CSDConversation *)self setAvcSession:0];
  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags conversationOneToOneModeEnabled] && -[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled"))
  {
    state = [(CSDConversation *)self state];

    if (state == 4)
    {
      v26 = sub_100004778(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1004728B0();
      }

      [(CSDConversation *)self setState:0];
      goto LABEL_29;
    }
  }

  else
  {
  }

  featureFlags2 = [(CSDConversation *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags2 avLessSharePlayEnabled];
  if (errorCopy || !avLessSharePlayEnabled || [(CSDConversation *)self state]!= 3 || [(CSDConversation *)self avMode])
  {

    goto LABEL_24;
  }

  remoteMembers = [(CSDConversation *)self remoteMembers];
  v32 = [remoteMembers count];

  if (v32 != 1)
  {
LABEL_24:
    if ([(CSDConversation *)self state]!= 4)
    {
      [(CSDConversation *)self setState:4];
      [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"AVCSession failed to start."];
      idsSession = [(CSDConversation *)self idsSession];
      [idsSession leaveGroupSessionWithContext:0];

      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:[(CSDConversation *)self _errorToAVCProviderEndedReason:errorCopy defaultProviderReason:516]];
    }

    goto LABEL_29;
  }

  v34 = sub_100004778(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v35[0]) = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "CSDAVCSession failed to start, but there is no error, Ignoring the start failure and leaving conversation intact", v35, 2u);
  }

LABEL_29:
  [v20 conversationChanged:self];
}

- (void)session:(id)session didDetectError:(id)error
{
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100472928();
  }

  state = [(CSDConversation *)self state];
  if (state == 3)
  {
    v10 = +[NSDate date];
    lastRebroadcastTime = [(CSDConversation *)self lastRebroadcastTime];
    [v10 timeIntervalSinceDate:lastRebroadcastTime];
    v13 = v12;

    rebroadcastTimeThreshold = [(CSDConversation *)self rebroadcastTimeThreshold];
    if (v13 > rebroadcastTimeThreshold)
    {
      v15 = sub_100004778(rebroadcastTimeThreshold);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v13;
        v18 = 134217984;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rebroadcasting AVC data to other members of this group to attempt to recover from error (last rebroadcast time was %f).", &v18, 0xCu);
      }

      [(CSDConversation *)self setLastRebroadcastTime:v10];
      serverBag = [(CSDConversation *)self serverBag];
      -[CSDConversation setRebroadcastTimeThreshold:](self, "setRebroadcastTimeThreshold:", -[CSDConversation rebroadcastTimeThreshold](self, "rebroadcastTimeThreshold") * [serverBag rebroadcastTimeThreshold]);

      [(CSDConversation *)self broadcastLocalParticipantData];
    }
  }

  else
  {
    v10 = sub_100004778(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109120;
      LODWORD(v19) = [(CSDConversation *)self state];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not attempting to rebroadcast message since state was not in join (was %d)", &v18, 8u);
    }
  }
}

- (void)session:(id)session didStopWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CSDAVCSession didStopWithError: %@", &v24, 0xCu);
  }

  if (errorCopy)
  {
    code = [errorCopy code];
    v12 = sub_100004778(code);
    v13 = v12;
    if (code == 32003)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AVCSession %@ stopped for remote hangup. Ignoring this signal.", &v24, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        uUID = [(CSDConversation *)self UUID];
        v24 = 138412802;
        v25 = sessionCopy;
        v26 = 2112;
        v27 = uUID;
        v28 = 2112;
        v29 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AVCSession %@ stopped in failure for conversation UUID %@: %@", &v24, 0x20u);
      }

      [(CSDConversation *)self _cleanUpFromAVCSessionFailure];
      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:[(CSDConversation *)self _errorToAVCProviderEndedReason:errorCopy defaultProviderReason:518]];
    }
  }

  else
  {
    avMode = [(CSDConversation *)self avMode];
    if (avMode)
    {
      v15 = sub_100004778(avMode);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AVCSession %@ stopped, cleaning up IDSSession state", &v24, 0xCu);
      }

      [(CSDConversation *)self cleanUpIDSSessionState];
    }
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setAvcSessionInProgress:0];
  [(CSDConversation *)self setSetScreenSharingRetryCount:0];
  if (![(CSDConversation *)self avMode]&& [(CSDConversation *)self state]== 3)
  {
    v16 = sub_100004778(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CSDAVCSession stopped for downgrade to AVModeNone, setting up new not started AVCSession", &v24, 2u);
    }

    v17 = sub_100004778([(CSDConversation *)self resetAVCSession]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rebroadcasting AVC data to other members of this group to since we transitioned to lightweight and setup a new AVCSession.", &v24, 2u);
    }

    [(CSDConversation *)self broadcastLocalParticipantData];
  }

  if (![(CSDConversation *)self isOneToOneModeEnabled]&& ![(CSDConversation *)self isVideo])
  {
    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags avLessSharePlayEnabled])
    {
      avMode2 = [(CSDConversation *)self avMode];

      if (!avMode2)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v21 = sub_100004778(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting GFT conversation back to default state of video=1", &v24, 2u);
    }

    [(CSDConversation *)self setVideo:1];
  }

LABEL_31:
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)serverDisconnectedForSession:(id)session
{
  sessionCopy = session;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100472998(sessionCopy, self);
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setAvcSessionInProgress:0];
  if ([(CSDConversation *)self avMode]|| [(CSDConversation *)self state]!= 3)
  {
    [(CSDConversation *)self _cleanUpFromAVCSessionFailure];
    [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:13];
  }

  else
  {
    v8 = sub_100004778(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Detected AVCSession server disconnect, but we're in AVLess. Re-creating an AVCSession and re-distributing blob.", buf, 2u);
    }

    v9 = sub_100004778([(CSDConversation *)self resetAVCSession]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "serverDisconnectedForSession: broadcastLocalParticipantData", v11, 2u);
    }

    [(CSDConversation *)self broadcastLocalParticipantData];
  }

  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)session:(id)session changedLocalAudioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 67109120;
    v27 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "changedLocalAudioEnabled=%d", &v26, 8u);
  }

  if (errorCopy || !succeedCopy)
  {
    v24 = sub_100004778(v13);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 67109634;
      v27 = enabledCopy;
      v28 = 1024;
      *v29 = succeedCopy;
      *&v29[4] = 2112;
      *&v29[6] = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to set localAudioEnabled (%d): didSucceed (%d): error: %@", &v26, 0x18u);
    }

    goto LABEL_14;
  }

  expectedAudioEnabled = [(CSDConversation *)self expectedAudioEnabled];
  if (!expectedAudioEnabled || (v15 = expectedAudioEnabled, -[CSDConversation expectedAudioEnabled](self, "expectedAudioEnabled"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLValue], v16, v15, v17 == enabledCopy))
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

LABEL_14:
    [(CSDConversation *)self setExpectedAudioEnabled:0];
    goto LABEL_15;
  }

  v19 = sub_100004778(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    expectedAudioEnabled2 = [(CSDConversation *)self expectedAudioEnabled];
    v26 = 67109378;
    v27 = enabledCopy;
    v28 = 2112;
    *v29 = expectedAudioEnabled2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Audio was set to audioEnabled: %d self.expectedAudioEnabled.BOOLValue: %@. Setting audioEnabled to self.expectedAudioEnabled.BOOLValue", &v26, 0x12u);
  }

  expectedAudioEnabled3 = [(CSDConversation *)self expectedAudioEnabled];
  bOOLValue = [expectedAudioEnabled3 BOOLValue];
  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setAudioEnabled:bOOLValue];

LABEL_15:
}

- (void)session:(id)session changedLocalVideoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 67109120;
    v34 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "changedLocalVideoEnabled=%d", &v33, 8u);
  }

  if (errorCopy || !succeedCopy)
  {
    v20 = sub_100004778(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v33 = 67109634;
      v34 = enabledCopy;
      v35 = 1024;
      *v36 = succeedCopy;
      *&v36[4] = 2112;
      *&v36[6] = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to set localVideoEnabled (%d): didSucceed (%d): error: %@", &v33, 0x18u);
    }

    state = [(CSDConversation *)self state];
    if (state == 3)
    {
      expectedVideoEnabled = [(CSDConversation *)self expectedVideoEnabled];
      if (expectedVideoEnabled)
      {
        v23 = expectedVideoEnabled;
        expectedVideoEnabled2 = [(CSDConversation *)self expectedVideoEnabled];
        if ([expectedVideoEnabled2 BOOLValue])
        {
          v25 = +[TUConversationManager allowsVideo];

          if (!v25)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v26 = sub_100004778(state);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 67109378;
        v34 = enabledCopy;
        v35 = 2112;
        *v36 = errorCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping to set localVideoEnabled (%d) error: %@", &v33, 0x12u);
      }
    }
  }

  else
  {
    expectedVideoEnabled3 = [(CSDConversation *)self expectedVideoEnabled];
    if (expectedVideoEnabled3)
    {
      v15 = expectedVideoEnabled3;
      expectedVideoEnabled4 = [(CSDConversation *)self expectedVideoEnabled];
      if ([expectedVideoEnabled4 BOOLValue] == enabledCopy)
      {
      }

      else
      {
        expectedVideoEnabled5 = [(CSDConversation *)self expectedVideoEnabled];
        if (([expectedVideoEnabled5 BOOLValue] & 1) == 0)
        {

LABEL_24:
          v28 = sub_100004778(v19);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            expectedVideoEnabled6 = [(CSDConversation *)self expectedVideoEnabled];
            v33 = 67109378;
            v34 = enabledCopy;
            v35 = 2112;
            *v36 = expectedVideoEnabled6;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Video was set to videoEnabled: %d self.expectedVideoEnabled.BOOLValue: %@. Setting videoEnabled to self.expectedVideoEnabled.BOOLValue", &v33, 0x12u);
          }

LABEL_27:
          expectedVideoEnabled7 = [(CSDConversation *)self expectedVideoEnabled];
          bOOLValue = [expectedVideoEnabled7 BOOLValue];
          avcSession = [(CSDConversation *)self avcSession];
          [avcSession setVideoEnabled:bOOLValue];

          goto LABEL_28;
        }

        v18 = +[TUConversationManager allowsVideo];

        if (v18)
        {
          goto LABEL_24;
        }
      }
    }

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

    [(CSDConversation *)self setExpectedVideoEnabled:0];
  }

LABEL_28:
}

- (void)session:(id)session changedScreenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109634;
    v37 = enabledCopy;
    v38 = 1024;
    *v39 = succeedCopy;
    *&v39[4] = 2112;
    *&v39[6] = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "changedScreenEnabled=%d didSucceed=%d error %@", &v36, 0x18u);
  }

  if (!errorCopy && succeedCopy)
  {
    [(CSDConversation *)self setSetScreenSharingRetryCount:0];
    if (!enabledCopy)
    {
      goto LABEL_18;
    }

    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags requestToScreenShareEnabled])
    {
    }

    else
    {
      featureFlags2 = [(CSDConversation *)self featureFlags];
      usesModernScreenSharingFromMessages = [featureFlags2 usesModernScreenSharingFromMessages];

      if (!usesModernScreenSharingFromMessages)
      {
        goto LABEL_18;
      }
    }

    [(CSDConversation *)self fulfillLocalScreenShareRequests];
    [(CSDConversation *)self addScreenSharingType:1];
LABEL_18:
    expectedScreenEnabled = [(CSDConversation *)self expectedScreenEnabled];
    if (expectedScreenEnabled)
    {
      v22 = expectedScreenEnabled;
      expectedScreenEnabled2 = [(CSDConversation *)self expectedScreenEnabled];
      bOOLValue = [expectedScreenEnabled2 BOOLValue];

      if (bOOLValue != enabledCopy)
      {
        v26 = sub_100004778(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          expectedScreenEnabled3 = [(CSDConversation *)self expectedScreenEnabled];
          v36 = 67109378;
          v37 = enabledCopy;
          v38 = 2112;
          *v39 = expectedScreenEnabled3;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Screen was set to screenEnabled: %d self.expectedScreenEnabled.BOOLValue: %@. Setting screenEnabled to self.expectedScreenEnabled.BOOLValue", &v36, 0x12u);
        }

        goto LABEL_23;
      }
    }

    if ((enabledCopy & 1) == 0)
    {
      [(CSDConversation *)self resetContentSharingSessionContent];
      [(CSDConversation *)self switchBackToOneToOneIfPossible];
    }

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

    goto LABEL_28;
  }

  v15 = sub_100004778(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    setScreenSharingRetryCount = [(CSDConversation *)self setScreenSharingRetryCount];
    v36 = 67109890;
    v37 = enabledCopy;
    v38 = 1024;
    *v39 = succeedCopy;
    *&v39[4] = 2112;
    *&v39[6] = errorCopy;
    v40 = 2048;
    v41 = setScreenSharingRetryCount;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to set screenEnabled (%d): didSucceed (%d): error: %@ retry:%lu", &v36, 0x22u);
  }

  expectedScreenEnabled4 = [(CSDConversation *)self expectedScreenEnabled];

  if (expectedScreenEnabled4)
  {
    setScreenSharingRetryCount2 = [(CSDConversation *)self setScreenSharingRetryCount];
    if (setScreenSharingRetryCount2 <= 2)
    {
      [(CSDConversation *)self setSetScreenSharingRetryCount:[(CSDConversation *)self setScreenSharingRetryCount]+ 1];
LABEL_23:
      expectedScreenEnabled5 = [(CSDConversation *)self expectedScreenEnabled];
      bOOLValue2 = [expectedScreenEnabled5 BOOLValue];

      avcSession = [(CSDConversation *)self avcSession];
      expectedScreenEnabled6 = [(CSDConversation *)self expectedScreenEnabled];
      bOOLValue3 = [expectedScreenEnabled6 BOOLValue];
      if (bOOLValue2)
      {
        [(CSDConversation *)self screenShareAttributes];
      }

      else
      {
        +[TUCallScreenShareAttributes defaultAttributes];
      }
      v34 = ;
      [avcSession setScreenEnabled:bOOLValue3 attributes:v34];

      goto LABEL_31;
    }

    v18 = sub_100004778(setScreenSharingRetryCount2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100472A40();
    }

    [(CSDConversation *)self setSetScreenSharingRetryCount:0];
LABEL_28:
    [(CSDConversation *)self setExpectedScreenEnabled:0];
  }

LABEL_31:
}

- (void)session:(id)session changedLocalAudioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 67109120;
    v27 = pausedCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "changedLocalAudioPaused=%d", &v26, 8u);
  }

  if (errorCopy || !succeedCopy)
  {
    v24 = sub_100004778(v13);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 67109634;
      v27 = pausedCopy;
      v28 = 1024;
      *v29 = succeedCopy;
      *&v29[4] = 2112;
      *&v29[6] = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to set localAudioPaused (%d): didSucceed (%d): error: %@", &v26, 0x18u);
    }

    goto LABEL_14;
  }

  expectedAudioPaused = [(CSDConversation *)self expectedAudioPaused];
  if (!expectedAudioPaused || (v15 = expectedAudioPaused, -[CSDConversation expectedAudioPaused](self, "expectedAudioPaused"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLValue], v16, v15, v17 == pausedCopy))
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

LABEL_14:
    [(CSDConversation *)self setExpectedAudioPaused:0];
    goto LABEL_15;
  }

  v19 = sub_100004778(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    expectedAudioPaused2 = [(CSDConversation *)self expectedAudioPaused];
    v26 = 67109378;
    v27 = pausedCopy;
    v28 = 2112;
    *v29 = expectedAudioPaused2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Audio paused was set to audioPaused: %d self.expectedAudioPaused.BOOLValue: %@. Setting audioPaused to self.expectedAudioPaused.BOOLValue", &v26, 0x12u);
  }

  expectedAudioPaused3 = [(CSDConversation *)self expectedAudioPaused];
  bOOLValue = [expectedAudioPaused3 BOOLValue];
  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setAudioPaused:bOOLValue];

LABEL_15:
}

- (void)session:(id)session changedLocalVideoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 67109120;
    v27 = pausedCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "changedLocalVideoPaused=%d", &v26, 8u);
  }

  if (errorCopy || !succeedCopy)
  {
    v24 = sub_100004778(v13);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 67109634;
      v27 = pausedCopy;
      v28 = 1024;
      *v29 = succeedCopy;
      *&v29[4] = 2112;
      *&v29[6] = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to set localVideoPaused (%d): didSucceed (%d): error: %@", &v26, 0x18u);
    }

    goto LABEL_14;
  }

  expectedVideoPaused = [(CSDConversation *)self expectedVideoPaused];
  if (!expectedVideoPaused || (v15 = expectedVideoPaused, -[CSDConversation expectedVideoPaused](self, "expectedVideoPaused"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLValue], v16, v15, v17 == pausedCopy))
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];

LABEL_14:
    [(CSDConversation *)self setExpectedVideoPaused:0];
    goto LABEL_15;
  }

  v19 = sub_100004778(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    expectedVideoPaused2 = [(CSDConversation *)self expectedVideoPaused];
    v26 = 67109378;
    v27 = pausedCopy;
    v28 = 2112;
    *v29 = expectedVideoPaused2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Video paused was set to videoPaused: %d self.expectedVideoPaused.BOOLValue: %@. Setting videoPaused to self.expectedVideoPaused.BOOLValue", &v26, 0x12u);
  }

  expectedVideoPaused3 = [(CSDConversation *)self expectedVideoPaused];
  bOOLValue = [expectedVideoPaused3 BOOLValue];
  avcSession = [(CSDConversation *)self avcSession];
  [avcSession setVideoPaused:bOOLValue];

LABEL_15:
}

- (void)session:(id)session requestedOneToOneModeEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    LODWORD(v21) = 67109634;
    HIDWORD(v21) = enabledCopy;
    *v22 = 2112;
    if (succeedCopy)
    {
      v13 = @"YES";
    }

    *&v22[2] = v13;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "requestedOneToOneModeEnabled: %d, didSucceed: %@, error: %@", &v21, 0x1Cu);
  }

  if (errorCopy || !succeedCopy)
  {
    v15 = [CSDReportingController sharedInstance:v21];
    tuConversation = [(CSDConversation *)self tuConversation];
    [v15 oneToOneModeSwitchFailureForConversation:tuConversation isOneToOneMode:enabledCopy];
  }

  else if (enabledCopy)
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversationChanged:self];
  }

  else
  {
    isOneToOneHandoffOngoing = [(CSDConversation *)self isOneToOneHandoffOngoing];
    if (isOneToOneHandoffOngoing)
    {
      v18 = sub_100004778(isOneToOneHandoffOngoing);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "oneToOneModeEnabled is disabled because a 3rd participant that joined is replacing another participant for handoff", &v21, 2u);
      }
    }

    v19 = [(CSDConversation *)self delegate:v21];
    [v19 conversationChanged:self];

    if ([(CSDConversation *)self isVideoPaused]&& [(CSDConversation *)self state]== 3)
    {
      v20 = sub_100004778(3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "User requested videoPaused=true in a U+1 call, since we're moving out of U+1 state, setting videoEnabled=false for parity", &v21, 2u);
      }

      [(CSDConversation *)self setVideoEnabled:0];
    }
  }
}

- (void)session:(id)session changedBytesOfDataUsed:(int64_t)used
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    usedCopy = used;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "changedBytesOfDataUsed=%ld", &v10, 0xCu);
  }

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self changedBytesOfDataUsed:used];
}

- (void)sessionShouldReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = reconnectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sessionShouldReconnect=%@", &v16, 0xCu);
  }

  isOneToOneModeEnabled = [(CSDConversation *)self isOneToOneModeEnabled];
  if (!isOneToOneModeEnabled)
  {
    idsSession = sub_100004778(isOneToOneModeEnabled);
    if (os_log_type_enabled(idsSession, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, idsSession, OS_LOG_TYPE_DEFAULT, "Skipping reconnect since one to one mode is disabled", &v16, 2u);
    }

    goto LABEL_13;
  }

  serverProvidedParticipantIdentifiers = [(CSDConversation *)self serverProvidedParticipantIdentifiers];
  if ([serverProvidedParticipantIdentifiers count] != 1)
  {

    goto LABEL_12;
  }

  serverProvidedParticipantIdentifiers2 = [(CSDConversation *)self serverProvidedParticipantIdentifiers];
  v11 = [NSNumber numberWithUnsignedLongLong:[(CSDConversation *)self localParticipantIdentifier]];
  v12 = [serverProvidedParticipantIdentifiers2 containsObject:v11];

  if (!v12)
  {
LABEL_12:
    idsSession = [(CSDConversation *)self idsSession];
    [idsSession reconnect];
LABEL_13:

    goto LABEL_14;
  }

  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Only local participant presents and media stall for U + 1, end the call", &v16, 2u);
  }

  [(CSDConversation *)self leaveWithReason:4];
LABEL_14:
}

- (void)session:(id)session cameraMixedWithScreenDidChange:(BOOL)change
{
  changeCopy = change;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = changeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cameraMixedWithScreenDidChange=%d", v10, 8u);
  }

  [(CSDConversation *)self setCameraMixedWithScreen:changeCopy];
  delegate = [(CSDConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)session:(id)session screenShareAttributesUpdated:(id)updated
{
  updatedCopy = updated;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  isScreenEnabled = [(CSDConversation *)self isScreenEnabled];
  if (isScreenEnabled)
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self screenShareAttributesUpdated:updatedCopy];
  }

  else
  {
    v9 = sub_100004778(isScreenEnabled);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100472A7C();
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedAudioEnabled:(BOOL)enabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken
{
  enabledCopy = enabled;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v15 = [NSNumber numberWithUnsignedLongLong:identifier];
  v16 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v15];

  if (v16)
  {
    [v16 setAudioEnabled:enabledCopy];
    [v16 setStreamToken:token];
    [v16 setScreenToken:screenToken];
    [v16 setCaptionsToken:captionsToken];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self updatedActiveParticipant:v16];
  }

  else
  {
    v19 = sub_100004778(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v20, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedVideoEnabled:(BOOL)enabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken
{
  enabledCopy = enabled;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v15 = [NSNumber numberWithUnsignedLongLong:identifier];
  v16 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v15];

  if (v16)
  {
    [v16 setVideoEnabled:enabledCopy];
    [v16 setStreamToken:token];
    [v16 setScreenToken:screenToken];
    [v16 setCaptionsToken:captionsToken];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self updatedActiveParticipant:v16];

    [(CSDConversation *)self _endScreenCallIfNecessary];
  }

  else
  {
    v19 = sub_100004778(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v20, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedScreenEnabled:(BOOL)enabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken
{
  enabledCopy = enabled;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v15 = [NSNumber numberWithUnsignedLongLong:identifier];
  v16 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v15];

  delegate = [(CSDConversation *)self delegate];
  v18 = delegate;
  if (!enabledCopy || (delegate = [(CSDConversation *)self isScreening], !delegate))
  {
    if (!v16)
    {
      activitySessionManager2 = sub_100004778(delegate);
      if (os_log_type_enabled(activitySessionManager2, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 134217984;
        *&v34[4] = identifier;
        _os_log_impl(&_mh_execute_header, activitySessionManager2, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", v34, 0xCu);
      }

      goto LABEL_29;
    }

    isScreenEnabled = [v16 isScreenEnabled];
    if (isScreenEnabled != enabledCopy)
    {
      v21 = sub_100004778(isScreenEnabled);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"NO";
        *v34 = 138412802;
        if (enabledCopy)
        {
          v22 = @"YES";
        }

        *&v34[4] = v22;
        v35 = 2112;
        selfCopy = self;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Conversation screen sharing about to change to screen enabled: %@ conversation: %@ \n participant: %@", v34, 0x20u);
      }

      [v16 setScreenEnabled:enabledCopy];
      [v18 conversation:self updatedActiveParticipantWithScreenSharing:v16];
    }

    [v16 setStreamToken:{token, *v34}];
    [v16 setScreenToken:screenToken];
    [v16 setCaptionsToken:captionsToken];
    [v18 conversation:self updatedActiveParticipant:v16];
    featureFlags = [(CSDConversation *)self featureFlags];
    if ([featureFlags requestToScreenShareEnabled])
    {

      if (!enabledCopy)
      {
        goto LABEL_30;
      }
    }

    else
    {
      featureFlags2 = [(CSDConversation *)self featureFlags];
      usesModernScreenSharingFromMessages = [featureFlags2 usesModernScreenSharingFromMessages];

      if (!usesModernScreenSharingFromMessages)
      {
        if (!enabledCopy)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (!enabledCopy)
      {
        goto LABEL_30;
      }
    }

    [(CSDConversation *)self fulfillPendingScreenSharingRequestsForRemoteParticipant:v16];
LABEL_22:
    isScreenEnabled2 = [(CSDConversation *)self isScreenEnabled];
    if (isScreenEnabled2)
    {
      v28 = sub_100004778(isScreenEnabled2);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [(CSDConversation *)self UUID];
        *v34 = 138412290;
        *&v34[4] = uUID;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Stopping screen on local device since one of the remote participants sharing their screen %@", v34, 0xCu);
      }

      v30 = +[TUCallScreenShareAttributes defaultAttributes];
      [(CSDConversation *)self setScreenEnabled:0 attributes:v30];

      activitySessionManager = [(CSDConversation *)self activitySessionManager];
      [activitySessionManager removeLocalScreenSharingSessions];
    }

    v32 = sub_100004778(isScreenEnabled2);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [(CSDConversation *)self UUID];
      *v34 = 138412290;
      *&v34[4] = uUID2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Resetting non screen sharing sessions as one of the remote participants started screen sharing %@", v34, 0xCu);
    }

    activitySessionManager2 = [(CSDConversation *)self activitySessionManager];
    [activitySessionManager2 resetNonScreenSharingSessions];
LABEL_29:

    goto LABEL_30;
  }

  v19 = sub_100004778(delegate);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Conversation is currently being screened and screen sharing is enabled by remote, disallowing screen sharing", v34, 2u);
  }

  [(CSDConversation *)self updateScreenEnabledForRemoteParticipants:0];
LABEL_30:
}

- (void)addedRemoteParticipantWithIdentifier:(unint64_t)identifier updatedAudioEnabled:(BOOL)enabled updatedVideoEnabled:(BOOL)videoEnabled streamToken:(int64_t)token screenToken:(int64_t)screenToken captionsToken:(int64_t)captionsToken
{
  enabledCopy = enabled;
  v14 = [(CSDConversation *)self queue:identifier];
  dispatch_assert_queue_V2(v14);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v16 = [NSNumber numberWithUnsignedLongLong:identifier];
  v17 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v16];

  if (v17)
  {
    [v17 setAudioEnabled:enabledCopy];
    [v17 setStreamToken:token];
    [v17 setScreenToken:screenToken];
    [v17 setCaptionsToken:captionsToken];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self updatedActiveParticipant:v17];

    -[CSDConversation _generateHandoffReportIfNecessaryForUpdatedParticipantID:isAddParticipant:](self, "_generateHandoffReportIfNecessaryForUpdatedParticipantID:isAddParticipant:", [v17 identifier], 1);
    currentParticipantPresentationContexts = [(CSDConversation *)self currentParticipantPresentationContexts];
    [(CSDConversation *)self updateParticipantPresentationContexts:currentParticipantPresentationContexts];

    if ([v17 audioVideoMode])
    {
      [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:1];
    }

    else
    {
      v22 = sub_100004778(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying updating oneToOneMode since participant got added", &v23, 2u);
      }

      [(CSDConversation *)self updateOneToOneModeForParticipantUpdateType:0 participant:v17];
    }
  }

  else
  {
    v21 = sub_100004778(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v23, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier updatedAudioPaused:(BOOL)paused streamToken:(int64_t)token
{
  pausedCopy = paused;
  v8 = [(CSDConversation *)self queue:identifier];
  dispatch_assert_queue_V2(v8);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v10 = [NSNumber numberWithUnsignedLongLong:identifier];
  v11 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v10];

  if (v11)
  {
    [v11 setAudioPaused:pausedCopy];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self updatedActiveParticipant:v11];
  }

  else
  {
    v14 = sub_100004778(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v15, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier didChangeAudioPriority:(int64_t)priority videoPriority:(int64_t)videoPriority
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v11 = [NSNumber numberWithUnsignedLongLong:identifier];
  v12 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 setAudioPriority:priority];
    [v12 setVideoPriority:videoPriority];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self mediaPrioritiesChangedForParticipant:v12];
  }

  else
  {
    v15 = sub_100004778(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v16, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier cameraMixedWithScreenDidChange:(BOOL)change
{
  changeCopy = change;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 setCameraMixedWithScreen:changeCopy];
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self updatedActiveParticipant:v10];
  }

  else
  {
    v13 = sub_100004778(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v14, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)identifier didReact:(id)react
{
  reactCopy = react;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self participant:v10 didReact:reactCopy];
  }

  else
  {
    v13 = sub_100004778(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v14, 0xCu);
    }
  }
}

- (void)session:(id)session localParticipantDidReact:(id)react
{
  reactCopy = react;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = [CSDConversationParticipant alloc];
  idsSession = [(CSDConversation *)self idsSession];
  localParticipantIdentifier = [idsSession localParticipantIdentifier];
  localMember = [(CSDConversation *)self localMember];
  handle = [localMember handle];
  localParticipantData = [(CSDConversation *)self localParticipantData];
  v14 = [(CSDConversationParticipant *)v7 initWithIdentifier:localParticipantIdentifier handle:handle avcData:localParticipantData];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self participant:v14 didReact:reactCopy];
}

- (void)sessionLocalParticipantDidStopReacting:(id)reacting
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = [CSDConversationParticipant alloc];
  idsSession = [(CSDConversation *)self idsSession];
  localParticipantIdentifier = [idsSession localParticipantIdentifier];
  localMember = [(CSDConversation *)self localMember];
  handle = [localMember handle];
  localParticipantData = [(CSDConversation *)self localParticipantData];
  v12 = [(CSDConversationParticipant *)v5 initWithIdentifier:localParticipantIdentifier handle:handle avcData:localParticipantData];

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self participantDidStopReacting:v12];
}

- (void)session:(id)session screenCaptureDidStart:(BOOL)start withError:(id)error
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (error || !start)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CSDConversation *)self UUID];
      v13 = 138412290;
      v14 = uUID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Stopping screen on local device capture failed to start for conversation UUID: %@", &v13, 0xCu);
    }

    v12 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v12];
  }
}

- (void)session:(id)session screenCaptureDidStop:(BOOL)stop withError:(id)error
{
  stopCopy = stop;
  errorCopy = error;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversation *)self featureFlags];
  sckSystemPickerEnabled = [featureFlags sckSystemPickerEnabled];

  if (errorCopy && stopCopy && sckSystemPickerEnabled)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CSDConversation *)self UUID];
      v16 = 138412546;
      v17 = uUID;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Stopping screen on local device capture, capture stopped without calling stop for conversation UUID: %@ error: %@", &v16, 0x16u);
    }

    v14 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v14];

    delegate = [(CSDConversation *)self delegate];
    [delegate conversationDidStopScreenCapture:self];
  }
}

- (void)removedRemoteParticipantWithIdentifier:(unint64_t)identifier didSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (succeedCopy)
  {
    [(CSDConversation *)self switchBackToOneToOneIfPossible];
    [(CSDConversation *)self _generateHandoffReportIfNecessaryForUpdatedParticipantID:identifier isAddParticipant:0];
  }

  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [activeRemoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    if (![v10 audioVideoMode])
    {
      v12 = sub_100004778(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying updating oneToOneMode since participant got added", v14, 2u);
      }

      [(CSDConversation *)self updateOneToOneModeForParticipantUpdateType:0 participant:v10];
    }
  }

  else
  {
    v13 = sub_100004778(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No participant found on the conversation", buf, 2u);
    }
  }
}

- (void)updateScreenEnabledForRemoteParticipants:(BOOL)participants
{
  participantsCopy = participants;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (participantsCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating screenEnabled on all remote participants to: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  activeRemoteParticipantsByIdentifier = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  allValues = [activeRemoteParticipantsByIdentifier allValues];

  v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        avcSession = [(CSDConversation *)self avcSession];
        [avcSession setScreenEnabled:participantsCopy forParticipantWithIdentifier:{objc_msgSend(v15, "identifier")}];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)audioPolicyManager:(id)manager sharePlayAllowedStateChanged:(BOOL)changed
{
  queue = [(CSDConversation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8298;
  v7[3] = &unk_100619EA8;
  changedCopy = changed;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)postUserNotificationForUnsupportedScreenSharingActivity:(id)activity alternateReponseHandler:(id)handler
{
  handlerCopy = handler;
  activityCopy = activity;
  tuConversation = [(CSDConversation *)self tuConversation];
  groupUUID = [tuConversation groupUUID];
  bundleIdentifier = [activityCopy bundleIdentifier];
  v11 = [NSString stringWithFormat:@"%@.%@", groupUUID, bundleIdentifier];

  audioRoutePolicyManager = [(CSDConversation *)self audioRoutePolicyManager];
  v13 = [CPActivityAuthorizationManager notificationDisplayInformationForAudioPolicyManager:audioRoutePolicyManager activity:activityCopy conversation:tuConversation];

  v14 = [IMUserNotification userNotificationWithIdentifier:v11 timeout:3 alertLevel:0 displayFlags:v13 displayInformation:0.0];

  [v14 setUsesNotificationCenter:0];
  [v14 setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
  v15 = +[IMUserNotificationCenter sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A87D8;
  v17[3] = &unk_10061A808;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [v15 addUserNotification:v14 listener:0 completionHandler:v17];
}

- (BOOL)remoteJoinedActivity:(id)activity
{
  activityCopy = activity;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v6 = [activeRemoteParticipants countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        activeRemoteParticipants2 = [activityCopy activeRemoteParticipants];
        tuConversationParticipant = [v9 tuConversationParticipant];
        v12 = [activeRemoteParticipants2 containsObject:tuConversationParticipant];

        if (v12)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [activeRemoteParticipants countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)activitySessionManager:(id)manager tuActivitySessionsDidChange:(id)change
{
  changeCopy = change;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversation *)self checkAndSetTUActivityActive:changeCopy];
}

- (void)activitySessionManager:(id)manager activitySessionChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activity = [changedCopy activity];
  isSystemActivity = [activity isSystemActivity];

  if ((isSystemActivity & 1) == 0)
  {
    applicationLaunchPolicyManager = [(CSDConversation *)self applicationLaunchPolicyManager];
    tuConversation = [(CSDConversation *)self tuConversation];
    [applicationLaunchPolicyManager updateAllowedHandlesForConversation:tuConversation];
  }

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self activitySessionChanged:changedCopy];
}

- (BOOL)activitySessionManager:(id)manager activitySessionIsJoinable:(id)joinable
{
  v5 = [(CSDConversation *)self queue:manager];
  dispatch_assert_queue_V2(v5);

  return [(CSDConversation *)self state]== 3;
}

- (void)activitySessionManager:(id)manager receivedActivitySessionEvent:(id)event
{
  eventCopy = event;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self receivedActivitySessionEvent:eventCopy];
}

- (void)activitySessionManager:(id)manager fetchDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  handlerCopy = handler;
  topicCopy = topic;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  idsSession = [(CSDConversation *)self idsSession];
  [idsSession requestDataCryptorForTopic:topicCopy completionHandler:handlerCopy];
}

- (void)activitySessionManager:(id)manager requestEncryptionKeysForParticipants:(id)participants topicName:(id)name
{
  nameCopy = name;
  participantsCopy = participants;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  idsSession = [(CSDConversation *)self idsSession];
  [idsSession requestEncryptionKeyForParticipants:participantsCopy topic:nameCopy];
}

- (unint64_t)activitySessionManager:(id)manager localParticipantAliasForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    serverBag = [(CSDConversation *)self serverBag];
    v8 = [serverBag stableBundleIdentifierForLocalBundleIdentifier:v6];

    if (v8)
    {
      v9 = v8;

      v6 = v9;
    }

    idsSession = [(CSDConversation *)self idsSession];
    localParticipantIdentifier = [(CSDConversation *)self localParticipantIdentifier];
    v12 = [v6 dataUsingEncoding:4];
    v13 = [idsSession aliasForParticipantID:localParticipantIdentifier salt:v12];

    return v13;
  }

  else
  {

    return [(CSDConversation *)self localParticipantIdentifier];
  }
}

- (void)activitySessionManager:(id)manager participantWithIdentifier:(unint64_t)identifier bundleIdentifier:(id)bundleIdentifier includeLocalParticipant:(BOOL)participant completionHandler:(id)handler
{
  participantCopy = participant;
  managerCopy = manager;
  bundleIdentifierCopy = bundleIdentifier;
  handlerCopy = handler;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  if (participantCopy && [(CSDConversation *)self activitySessionManager:managerCopy localParticipantAliasForBundleIdentifier:bundleIdentifierCopy]== identifier)
  {
    localParticipant = [(CSDConversation *)self localParticipant];
    handlerCopy[2](handlerCopy, localParticipant);
  }

  else
  {
    v17 = [(CSDConversation *)self remoteParticipantForIdentifier:identifier];
    if (bundleIdentifierCopy)
    {
      serverBag = [(CSDConversation *)self serverBag];
      v19 = [serverBag stableBundleIdentifierForLocalBundleIdentifier:bundleIdentifierCopy];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = bundleIdentifierCopy;
      }

      v22 = v21;

      v23 = [v22 dataUsingEncoding:4];

      idsSession = [(CSDConversation *)self idsSession];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000A9080;
      v25[3] = &unk_10061A830;
      v25[4] = self;
      v27 = handlerCopy;
      v26 = v17;
      [idsSession participantIDForAlias:identifier salt:v23 completion:v25];
    }

    else
    {
      handlerCopy[2](handlerCopy, v17);
    }
  }
}

- (void)activitySessionManager:(id)manager activityChangedOnSession:(id)session
{
  sessionCopy = session;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self activityChangedOnSession:sessionCopy];
}

- (id)activitySessionManagerRequestedCallTypeStringForLogging:(id)logging
{
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [(CSDConversation *)self provider];
  isTelephonyWithSharePlayProvider = [provider isTelephonyWithSharePlayProvider];

  if (isTelephonyWithSharePlayProvider)
  {
    return @"telephony";
  }

  localParticipantCluster = [(CSDConversation *)self localParticipantCluster];
  if (localParticipantCluster)
  {
    v9 = localParticipantCluster;
    localParticipantCluster2 = [(CSDConversation *)self localParticipantCluster];
    type = [localParticipantCluster2 type];

    if (type == 1)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
      v13 = [activeRemoteParticipants countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (!v13)
      {
LABEL_13:

        return @"nearby";
      }

      v14 = v13;
      v15 = *v34;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        cluster = [*(*(&v33 + 1) + 8 * v16) cluster];
        localParticipantCluster3 = [(CSDConversation *)self localParticipantCluster];
        v19 = [cluster isEqual:localParticipantCluster3];

        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }

        if (v14 == ++v16)
        {
          v14 = [activeRemoteParticipants countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v14)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  activeRemoteParticipants = [(CSDConversation *)self activeRemoteParticipants];
  v20 = [activeRemoteParticipants countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
LABEL_16:
    v23 = 0;
    while (1)
    {
      if (*v30 != v22)
      {
        objc_enumerationMutation(activeRemoteParticipants);
      }

      v24 = *(*(&v29 + 1) + 8 * v23);
      cluster2 = [v24 cluster];
      if (cluster2)
      {
        v26 = cluster2;
        cluster3 = [v24 cluster];
        type2 = [cluster3 type];

        if (type2 == 1)
        {
          break;
        }
      }

      if (v21 == ++v23)
      {
        v21 = [activeRemoteParticipants countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v21)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

LABEL_26:

    return @"mixed";
  }

LABEL_23:

  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    return @"1-1";
  }

  else
  {
    return @"GFT";
  }
}

- (void)activitySessionManager:(id)manager sessionUnjoined:(id)unjoined startDate:(id)date endDate:(id)endDate
{
  unjoinedCopy = unjoined;
  dateCopy = date;
  endDateCopy = endDate;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = dateCopy;
    v18 = 2112;
    v19 = endDateCopy;
    v20 = 2112;
    v21 = unjoinedCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Did get session unjoined callback startDate %@ endDate %@ session %@", &v16, 0x20u);
  }

  v15 = +[CSDReportingController sharedInstance];
  [v15 didEndSession:unjoinedCopy startDate:dateCopy endDate:endDateCopy];
}

- (void)activitySessionManager:(id)manager requestForegroundPresentationForActivity:(id)activity
{
  activityCopy = activity;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  activity = [activityCopy activity];
  isSystemActivity = [activity isSystemActivity];

  if ((isSystemActivity & 1) == 0)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = activityCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CSDConversation setting appLaunchState to needsLaunch %@", &v12, 0xCu);
    }

    delegate = [(CSDConversation *)self delegate];
    [delegate conversation:self appLaunchState:1 forActivitySession:activityCopy];
  }
}

- (void)activitySessionManager:(id)manager activitySessionRemoved:(id)removed userOriginated:(BOOL)originated
{
  originatedCopy = originated;
  removedCopy = removed;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = removedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CSDConversation received activity session removed: %@", &v14, 0xCu);
  }

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self activitySessionRemoved:removedCopy userOriginated:originatedCopy];

  activity = [removedCopy activity];
  if ([activity isScreenSharingActivity])
  {
    isLocallyInitiated = [removedCopy isLocallyInitiated];

    if (isLocallyInitiated)
    {
      [(CSDConversation *)self switchBackToOneToOneIfPossible];
    }
  }

  else
  {
  }
}

- (void)activitySessionManager:(id)manager activitySessionStateChanged:(id)changed oldState:(unint64_t)state
{
  changedCopy = changed;
  managerCopy = manager;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  [(CSDConversation *)self activitySessionManager:managerCopy activitySessionChanged:changedCopy];

  [delegate conversation:self didChangeStateForActivitySession:changedCopy];
}

- (void)activitySessionManager:(id)manager activitySessionAssociatedSceneChanged:(id)changed
{
  changedCopy = changed;
  managerCopy = manager;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CSDConversation associated scene changed for %@", &v12, 0xCu);
  }

  delegate = [(CSDConversation *)self delegate];
  [(CSDConversation *)self activitySessionManager:managerCopy activitySessionChanged:changedCopy];

  [delegate conversation:self didChangeSceneAssociationForActivitySession:changedCopy];
}

- (void)activitySessionManager:(id)manager sendResourceAtURL:(id)l toParticipants:(id)participants metadata:(id)metadata activitySessionUUID:(id)d completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  dCopy = d;
  metadataCopy = metadata;
  participantsCopy = participants;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v20 = sub_100004778(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSDConversation *)self UUID];
    v22 = [lCopy URL];
    path = [v22 path];
    v25 = 138412546;
    v26 = uUID;
    v27 = 2112;
    v28 = path;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ sending resource url.path: %@", &v25, 0x16u);
  }

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self sendResourceAtURL:lCopy toParticipants:participantsCopy metadata:metadataCopy activitySessionUUID:dCopy completion:completionCopy];
}

- (void)activitySessionManager:(id)manager requestedEndpointWithIdentifier:(id)identifier activitySession:(id)session completion:(id)completion
{
  completionCopy = completion;
  sessionCopy = session;
  identifierCopy = identifier;
  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDConversation *)self delegate];
  [delegate conversation:self requestedEndpointWithIdentifier:identifierCopy activitySession:sessionCopy completion:completionCopy];
}

- (void)activitySessionManager:(id)manager shouldRegisterPlugin:(id)plugin
{
  pluginCopy = plugin;
  featureFlags = [(CSDConversation *)self featureFlags];
  sharePlayInFaceTimeCanvasEnabled = [featureFlags sharePlayInFaceTimeCanvasEnabled];

  if ((sharePlayInFaceTimeCanvasEnabled & 1) == 0)
  {
    v16 = sub_100004778(v8);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "[WARN] Not registering plugin since featureFlag is disabled.";
    v19 = v16;
    v20 = 2;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  queue = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  idsSession = [(CSDConversation *)self idsSession];
  isJoined = [idsSession isJoined];

  if ((isJoined & 1) == 0)
  {
    v16 = sub_100004778(v12);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138412546;
    v24 = pluginCopy;
    v25 = 2112;
    selfCopy = self;
    v18 = "Not registering plugin %@ since we're not joined. Conversation: %@";
    v19 = v16;
    v20 = 22;
    goto LABEL_10;
  }

  virtualParticipantsByPluginName = [(CSDConversation *)self virtualParticipantsByPluginName];
  v14 = [virtualParticipantsByPluginName objectForKeyedSubscript:pluginCopy];

  if (!v14)
  {
    v21 = IDSGroupSessionPluginNameKey;
    v22 = pluginCopy;
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    idsSession2 = [(CSDConversation *)self idsSession];
    [(CSDConversation *)idsSession2 registerPluginWithOptions:v16];
    goto LABEL_12;
  }

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    idsSession2 = [(CSDConversation *)self virtualParticipantsByPluginName];
    *buf = 138412546;
    v24 = pluginCopy;
    v25 = 2112;
    selfCopy = idsSession2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not registering plugin %@ because it already exists. All current plugins: %@", buf, 0x16u);
LABEL_12:
  }

LABEL_13:
}

- (BOOL)activitySessionManagerShouldSupportEndOnlyForMe:(id)me
{
  featureFlags = [(CSDConversation *)self featureFlags];
  if ([featureFlags nearbyFaceTimeEnabled] && -[CSDConversation isNearbySession](self, "isNearbySession"))
  {
    remoteMembers = [(CSDConversation *)self remoteMembers];
    v6 = [remoteMembers count] != 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)systemStateObserver:(id)observer screenSharingAllowedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenSharingAllowedStateChanged: %@", &v10, 0xCu);
  }

  [(CSDConversation *)self updateScreenEnabledForRemoteParticipants:changedCopy];
  featureFlags = [(CSDConversation *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    [(CSDConversation *)self broadcastLocalParticipantData];
  }
}

- (void)systemStateObserver:(id)observer screenSharingInitiationAllowedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenSharingInitiationAllowedStateChanged: %@", &v10, 0xCu);
  }

  featureFlags = [(CSDConversation *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    [(CSDConversation *)self broadcastLocalParticipantData];
  }
}

- (CSDConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSDConversationParticipant)localCSDParticipant
{
  selfCopy = self;
  v3 = sub_10034E748();

  return v3;
}

@end