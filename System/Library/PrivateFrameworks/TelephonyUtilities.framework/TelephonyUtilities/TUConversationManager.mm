@interface TUConversationManager
+ (BOOL)allowsPortraitBlurWhenCaptionsEnabled;
+ (BOOL)allowsScreenSharing;
+ (BOOL)allowsScreenSharingWithVideo;
+ (BOOL)allowsVideo;
+ (BOOL)isAddPersonEnabled;
+ (BOOL)supportsConversations;
+ (BOOL)supportsEffects;
+ (id)activeRemoteParticipantsForCall:(id)call remoteMembers:(id)members;
+ (id)conversationWithPseudonym:(id)pseudonym fromConversations:(id)conversations;
+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations;
+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations matchingVideo:(BOOL)video backedByGroupSession:(BOOL)session;
+ (id)conversationWithUUID:(id)d fromConversations:(id)conversations;
+ (id)conversationsWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations;
+ (id)pendingConversationWithLink:(id)link fromConversations:(id)conversations;
+ (id)remoteMembersForCall:(id)call;
+ (int64_t)conversationStateForCall:(id)call;
+ (int64_t)memorySize;
+ (unint64_t)maximumNumberOfInvitedMembers;
- (BOOL)autoSharePlayEnabled;
- (BOOL)currentProcessCanAccessCollaborations;
- (BOOL)isScreenSharingAvailable;
- (BOOL)isSharePlayAvailable;
- (BOOL)openCollaborationWithIdentifier:(id)identifier forConversation:(id)conversation;
- (NSDictionary)activityAuthorizedBundleIdentifiers;
- (NSSet)activatedConversationLinks;
- (NSSet)activeAdvertisements;
- (NSSet)activeConversations;
- (NSSet)incomingPendingConversations;
- (TUConversation)avLessConversation;
- (TUConversationManager)init;
- (TUConversationManager)initWithDataSource:(id)source;
- (TUConversationManager)initWithDataSource:(id)source notificationCenter:(id)center;
- (TUConversationMediaController)mediaController;
- (TUConversationMessagesGroupProviding)messagesGroupProvider;
- (TUConversationReactionsController)reactionsController;
- (id)activeConversationWithGroupUUID:(id)d;
- (id)activeConversationWithLinkForCall:(id)call;
- (id)activeConversationWithRemoteMembers:(id)members andLink:(id)link;
- (id)activeConversationWithRemoteMembers:(id)members andLink:(id)link matchingVideo:(BOOL)video backedByGroupSession:(BOOL)session;
- (id)activeConversationWithUUID:(id)d;
- (id)callPendingUpgradeInConversationsWithGroupUUID:(id)d;
- (id)ckBundleIDForCollaborationIdentifier:(id)identifier;
- (id)collaborationForConversation:(id)conversation;
- (id)createConversationForCallNotBackedByGroupSession:(id)session;
- (id)handoffEligibleConversationForEligibility:(id)eligibility;
- (id)joinRequestForApplicableConversationWithHandoffEligibility:(id)eligibility;
- (id)pendingConversationWithLink:(id)link;
- (int64_t)collaborationStateForConversation:(id)conversation;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)activateLink:(id)link completionHandler:(id)handler;
- (void)activeParticipant:(id)participant addedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier isFirstAdd:(BOOL)add;
- (void)activeParticipant:(id)participant removedHighlightFromConversation:(id)conversation highlightIdentifier:(id)identifier;
- (void)activityAuthorizationsChangedForDataSource:(id)source oldActivityAuthorizedBundleIdentifiers:(id)identifiers;
- (void)addCollaboration:(id)collaboration forConversation:(id)conversation;
- (void)addCollaborationDictionary:(id)dictionary forConversation:(id)conversation fromMe:(BOOL)me;
- (void)addCollaborationIdentifier:(id)identifier forConversation:(id)conversation;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d;
- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversation:(id)conversation;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles toConversation:(id)conversation;
- (void)addRemoteMembers:(id)members toConversation:(id)conversation;
- (void)addScreenSharingType:(unint64_t)type forConversation:(id)conversation;
- (void)addedCollaborationDictionary:(id)dictionary forConversation:(id)conversation;
- (void)approveExternalParticipants:(id)participants;
- (void)approvePendingMember:(id)member forConversation:(id)conversation;
- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversation:(id)conversation;
- (void)callPropertiesChanged:(id)changed;
- (void)cancelOrDenyScreenShareRequest:(id)request forConversation:(id)conversation;
- (void)checkLinkValidity:(id)validity completionHandler:(id)handler;
- (void)collaborationChanged:(id)changed forConversation:(id)conversation collaborationState:(int64_t)state;
- (void)conversation:(id)conversation addedMembersLocally:(id)locally;
- (void)conversation:(id)conversation buzzedMember:(id)member;
- (void)conversation:(id)conversation collaborationStateChanged:(int64_t)changed highlightIdentifier:(id)identifier;
- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session;
- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session;
- (void)conversation:(id)conversation participant:(id)participant addedCollaborationNotice:(id)notice;
- (void)conversation:(id)conversation participant:(id)participant addedNotice:(id)notice;
- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)conversation:(id)conversation screenSharingChangedForParticipant:(id)participant;
- (void)conversationManagerDataSource:(id)source conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session;
- (void)conversationManagerDataSource:(id)source didChangeActivatedConversationLinks:(id)links;
- (void)conversationManagerDataSource:(id)source messagesGroupDetailsForMessagesGroupId:(id)id completionHandler:(id)handler;
- (void)conversationUpdateMessagesGroupPhoto:(id)photo;
- (void)conversationUpdatedMessagesGroupPhoto:(id)photo;
- (void)conversationsChangedForDataSource:(id)source conversationsByGroupUUID:(id)d oldConversationsByGroupUUID:(id)iD;
- (void)conversationsChangedForDataSource:(id)source oldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD creationQueue:(id)queue;
- (void)conversationsChangedForDataSource:(id)source updatedIncomingPendingConversationsByGroupUUID:(id)d;
- (void)conversationsChangedFromOldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD;
- (void)createActivitySession:(id)session onConversation:(id)conversation;
- (void)createActivitySession:(id)session onConversation:(id)conversation options:(unint64_t)options;
- (void)dealloc;
- (void)denyExternalParticipants:(id)participants;
- (void)didChangeConversationAdvertisement:(id)advertisement;
- (void)endActivitySession:(id)session onConversation:(id)conversation;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler;
- (void)generateLinkForConversation:(id)conversation completionHandler:(id)handler;
- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler;
- (void)getInactiveLinkWithCompletionHandler:(id)handler;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler;
- (void)getMessagesGroupDetailsForConversationUUID:(id)d completionHandler:(id)handler;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler;
- (void)invalidateLink:(id)link completionHandler:(id)handler;
- (void)joinConversationWithRequest:(id)request;
- (void)kickMember:(id)member conversation:(id)conversation;
- (void)launchApplicationForActivitySession:(id)session authorizedExternally:(BOOL)externally completionHandler:(id)handler;
- (void)launchApplicationForActivitySession:(id)session completionHandler:(id)handler;
- (void)launchApplicationForActivitySessionUUID:(id)d completionHandler:(id)handler;
- (void)launchApplicationForActivitySessionUUID:(id)d forceBackground:(BOOL)background completionHandler:(id)handler;
- (void)leaveActivitySession:(id)session onConversation:(id)conversation;
- (void)leaveConversationWithUUID:(id)d;
- (void)linkSyncStateIncludeLinks:(BOOL)links WithCompletion:(id)completion;
- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context;
- (void)presentDismissalAlertForActivitySession:(id)session onConversation:(id)conversation;
- (void)pruneConversationsPendingUpgradeInConversationsWithGroupUUID:(id)d;
- (void)receivedTrackedPendingMember:(id)member forConversationLink:(id)link;
- (void)refreshActiveConversations;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)d;
- (void)registerWithCompletionHandler:(id)handler;
- (void)rejectPendingMember:(id)member forConversation:(id)conversation;
- (void)remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing;
- (void)remoteScreenShareEndedWithReason:(id)reason;
- (void)removeCollaborationIdentifier:(id)identifier forConversation:(id)conversation;
- (void)removeConversationNoticeWithUUID:(id)d;
- (void)removeDelegate:(id)delegate;
- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler;
- (void)requestParticipantToShareScreen:(id)screen forConversation:(id)conversation;
- (void)requestScreenShareFromMember:(id)member conversation:(id)conversation;
- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial;
- (void)screenSharingAvailableChanged:(BOOL)changed;
- (void)serverDisconnectedForDataSource:(id)source oldConversationsByGroupUUID:(id)d;
- (void)setActivityAuthorization:(BOOL)authorization forBundleIdentifier:(id)identifier;
- (void)setAutoSharePlayEnabled:(BOOL)enabled;
- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants inConversation:(id)conversation completionHandler:(id)handler;
- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsInConversation:(id)conversation;
- (void)setGridDisplayMode:(unint64_t)mode conversation:(id)conversation;
- (void)setIgnoreLMIRequests:(BOOL)requests forConversation:(id)conversation;
- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d;
- (void)setLocalParticipantCluster:(id)cluster forConversation:(id)conversation;
- (void)setMessagesGroupProvider:(id)provider;
- (void)setNearbyContactDiscoveryEnabled:(BOOL)enabled;
- (void)setNonSessionBackedConversationCreationQueue:(id)queue;
- (void)setScreenEnabled:(BOOL)enabled withScreenShareAttributes:(id)attributes forConversationWithUUID:(id)d;
- (void)setSharePlayHandedOff:(BOOL)off onConversationWithUUID:(id)d;
- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversation:(id)conversation;
- (void)sharePlayAvailableChanged:(BOOL)changed;
- (void)startTrackingCollaboration:(id)collaboration forConversation:(id)conversation completionHandler:(id)handler;
- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call;
- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call conversationsByGroupUUID:(id)d creationQueue:(id)queue;
- (void)updateExternalParticipants:(id)participants;
- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)mode forConversationUUID:(id)d;
- (void)updateMessagesGroupName:(id)name onConversation:(id)conversation;
- (void)updateRemoteControlStatus:(int64_t)status onConversation:(id)conversation;
- (void)updateURLWithDugongTokenIfNeeded:(id)needed collaboration:(id)collaboration handle:(id)handle completion:(id)completion;
@end

@implementation TUConversationManager

- (TUConversationManager)init
{
  v3 = objc_alloc_init(TUConversationManagerXPCClient);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [(TUConversationManager *)self initWithDataSource:v3 notificationCenter:defaultCenter];

  return v5;
}

- (BOOL)currentProcessCanAccessCollaborations
{
  if (currentProcessCanAccessCollaborations_onceToken != -1)
  {
    [TUConversationManager currentProcessCanAccessCollaborations];
  }

  return currentProcessCanAccessCollaborations_isCurrentProcessEntitled;
}

uint64_t __62__TUConversationManager_currentProcessCanAccessCollaborations__block_invoke()
{
  result = TUCurrentProcessHasEntitlementCapability(@"access-collaboration");
  currentProcessCanAccessCollaborations_isCurrentProcessEntitled = result;
  return result;
}

- (NSSet)activeConversations
{
  v3 = MEMORY[0x1E695DFD8];
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  allValues = [conversationsByGroupUUID allValues];
  v7 = [v3 setWithArray:allValues];
  conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
  v9 = [v7 setByAddingObjectsFromSet:conversationsNotBackedByGroupSessions];

  return v9;
}

- (void)refreshActiveConversations
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to refreshActiveConversations", v5, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource refreshActiveConversations];
}

- (TUConversationReactionsController)reactionsController
{
  reactionsController = self->_reactionsController;
  if (!reactionsController)
  {
    v4 = [TUConversationReactionsController alloc];
    dataSource = [(TUConversationManager *)self dataSource];
    v6 = [(TUConversationReactionsController *)v4 initWithConversationDataSource:dataSource];
    v7 = self->_reactionsController;
    self->_reactionsController = v6;

    reactionsController = self->_reactionsController;
  }

  return reactionsController;
}

- (BOOL)isSharePlayAvailable
{
  dataSource = [(TUConversationManager *)self dataSource];
  isSharePlayAvailable = [dataSource isSharePlayAvailable];

  return isSharePlayAvailable;
}

- (TUConversation)avLessConversation
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  allValues = [conversationsByGroupUUID allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![v8 avMode] && (objc_msgSend(v8, "state") == 3 || objc_msgSend(v8, "state") == 2))
        {
          v5 = v8;
          goto LABEL_13;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

- (TUConversationManager)initWithDataSource:(id)source
{
  v4 = MEMORY[0x1E696AD88];
  sourceCopy = source;
  defaultCenter = [v4 defaultCenter];
  v7 = [(TUConversationManager *)self initWithDataSource:sourceCopy notificationCenter:defaultCenter];

  return v7;
}

- (TUConversationManager)initWithDataSource:(id)source notificationCenter:(id)center
{
  v43[8] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  centerCopy = center;
  v41.receiver = self;
  v41.super_class = TUConversationManager;
  v9 = [(TUConversationManager *)&v41 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.telephonyutilities.conversationmanager", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_dataSource, source);
    [(TUConversationManagerDataSource *)v9->_dataSource setDelegate:v9];
    objc_storeStrong(&v9->_notificationCenter, center);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v9->_delegateToQueue;
    v9->_delegateToQueue = weakToStrongObjectsMapTable;

    v14 = [MEMORY[0x1E695DFA8] set];
    conversationsNotBackedByGroupSessions = v9->_conversationsNotBackedByGroupSessions;
    v9->_conversationsNotBackedByGroupSessions = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    callsNotBackedByGroupSessionsPendingUpgrade = v9->_callsNotBackedByGroupSessionsPendingUpgrade;
    v9->_callsNotBackedByGroupSessionsPendingUpgrade = v16;

    currentProcessCanAccessCollaborations = [(TUConversationManager *)v9 currentProcessCanAccessCollaborations];
    v19 = currentProcessCanAccessCollaborations;
    collaborationManager2 = TUDefaultLog(currentProcessCanAccessCollaborations);
    v21 = os_log_type_enabled(collaborationManager2, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, collaborationManager2, OS_LOG_TYPE_DEFAULT, "Creating collaboration manager for current process", buf, 2u);
      }

      v22 = [TUCollaborationManager alloc];
      v23 = objc_alloc_init(TUCollaborationHighlightProvider);
      v24 = [(TUCollaborationManager *)v22 initWithCollaborationProvider:v23];
      collaborationManager = v9->_collaborationManager;
      v9->_collaborationManager = v24;

      collaborationManager = [(TUConversationManager *)v9 collaborationManager];
      [collaborationManager setDelegate:v9];

      collaborationManager2 = [(TUConversationManager *)v9 collaborationManager];
      queue = [(TUConversationManager *)v9 queue];
      [(TUConversationManager *)v9 addDelegate:collaborationManager2 queue:queue];
    }

    else if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, collaborationManager2, OS_LOG_TYPE_DEFAULT, "Current process is not entitled to access collaborations on the call- not initializing the collaboration manager", buf, 2u);
    }

    v43[0] = @"TUCallCenterCallStatusChangedNotification";
    v43[1] = @"TUCallCenterVideoCallStatusChangedNotification";
    v43[2] = @"TUCallVideoStreamTokenChangedNotification";
    v43[3] = @"TUCallProviderContextChangedNotification";
    v43[4] = @"TUCallConversationChangedNotification";
    v43[5] = @"TUCallCenterCallStartedConnectingNotification";
    v43[6] = @"TUCallCenterCallConnectedNotification";
    v43[7] = @"TUCallDowngradedToAudioNotification";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = v39 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v36 + 1) + 8 * i);
          notificationCenter = [(TUConversationManager *)v9 notificationCenter];
          [notificationCenter addObserver:v9 selector:sel_callPropertiesChanged_ name:v33 object:0];
        }

        v30 = [v28 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v30);
    }
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TUConversationManagerDataSource *)self->_dataSource invalidate];
  v4.receiver = self;
  v4.super_class = TUConversationManager;
  [(TUConversationManager *)&v4 dealloc];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TUConversationManager_addDelegate_queue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

void __43__TUConversationManager_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TUConversationManager_removeDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __40__TUConversationManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (NSSet)activeAdvertisements
{
  v2 = MEMORY[0x1E695DFD8];
  dataSource = [(TUConversationManager *)self dataSource];
  advertisementsOnSystem = [dataSource advertisementsOnSystem];
  allValues = [advertisementsOnSystem allValues];
  v6 = [v2 setWithArray:allValues];

  return v6;
}

- (NSSet)incomingPendingConversations
{
  v2 = MEMORY[0x1E695DFD8];
  dataSource = [(TUConversationManager *)self dataSource];
  incomingPendingConversationsByGroupUUID = [dataSource incomingPendingConversationsByGroupUUID];
  allValues = [incomingPendingConversationsByGroupUUID allValues];
  v6 = [v2 setWithArray:allValues];

  return v6;
}

- (NSSet)activatedConversationLinks
{
  dataSource = [(TUConversationManager *)self dataSource];
  activatedConversationLinks = [dataSource activatedConversationLinks];

  return activatedConversationLinks;
}

- (NSDictionary)activityAuthorizedBundleIdentifiers
{
  dataSource = [(TUConversationManager *)self dataSource];
  activityAuthorizedBundleIdentifiers = [dataSource activityAuthorizedBundleIdentifiers];

  return activityAuthorizedBundleIdentifiers;
}

- (BOOL)autoSharePlayEnabled
{
  dataSource = [(TUConversationManager *)self dataSource];
  autoSharePlayEnabled = [dataSource autoSharePlayEnabled];

  return autoSharePlayEnabled;
}

- (BOOL)isScreenSharingAvailable
{
  dataSource = [(TUConversationManager *)self dataSource];
  isScreenSharingAvailable = [dataSource isScreenSharingAvailable];

  return isScreenSharingAvailable;
}

- (id)activeConversationWithUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeConversations = [(TUConversationManager *)self activeConversations];
  v6 = [activeConversations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(activeConversations);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [activeConversations countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)activeConversationWithGroupUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  v7 = [conversationsByGroupUUID objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
    v9 = [conversationsNotBackedByGroupSessions countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v7 = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(conversationsNotBackedByGroupSessions);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          groupUUID = [v13 groupUUID];
          v15 = [groupUUID isEqual:dCopy];

          if (v15)
          {
            v16 = v13;

            v7 = v16;
          }
        }

        v10 = [conversationsNotBackedByGroupSessions countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)activeConversationWithRemoteMembers:(id)members andLink:(id)link
{
  linkCopy = link;
  membersCopy = members;
  v8 = objc_opt_class();
  activeConversations = [(TUConversationManager *)self activeConversations];
  v10 = [v8 conversationWithRemoteMembers:membersCopy andLink:linkCopy fromConversations:activeConversations];

  return v10;
}

- (id)activeConversationWithRemoteMembers:(id)members andLink:(id)link matchingVideo:(BOOL)video backedByGroupSession:(BOOL)session
{
  sessionCopy = session;
  videoCopy = video;
  linkCopy = link;
  membersCopy = members;
  v12 = objc_opt_class();
  activeConversations = [(TUConversationManager *)self activeConversations];
  v14 = [v12 conversationWithRemoteMembers:membersCopy andLink:linkCopy fromConversations:activeConversations matchingVideo:videoCopy backedByGroupSession:sessionCopy];

  return v14;
}

- (id)activeConversationWithLinkForCall:(id)call
{
  callCopy = call;
  dataSource = [(TUConversationManager *)self dataSource];
  pseudonymsByCallUUID = [dataSource pseudonymsByCallUUID];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];

  v8 = [pseudonymsByCallUUID objectForKeyedSubscript:uniqueProxyIdentifierUUID];

  if (v8)
  {
    v9 = objc_opt_class();
    activeConversations = [(TUConversationManager *)self activeConversations];
    v11 = [v9 conversationWithPseudonym:v8 fromConversations:activeConversations];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)pendingConversationWithLink:(id)link
{
  linkCopy = link;
  v5 = objc_opt_class();
  activeConversations = [(TUConversationManager *)self activeConversations];
  v7 = [v5 pendingConversationWithLink:linkCopy fromConversations:activeConversations];

  return v7;
}

+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations
{
  v5 = [self conversationsWithRemoteMembers:members andLink:link fromConversations:conversations];
  anyObject = [v5 anyObject];

  return anyObject;
}

+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations matchingVideo:(BOOL)video backedByGroupSession:(BOOL)session
{
  sessionCopy = session;
  videoCopy = video;
  v27 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  linkCopy = link;
  conversationsCopy = conversations;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [objc_opt_class() conversationsWithRemoteMembers:membersCopy andLink:linkCopy fromConversations:{conversationsCopy, 0}];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([v19 isVideo] == videoCopy && objc_msgSend(v19, "isBackedByGroupSession") == sessionCopy)
        {
          v20 = v19;
          goto LABEL_12;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_12:

  return v20;
}

+ (id)conversationsWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations
{
  v23 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  linkCopy = link;
  conversationsCopy = conversations;
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(conversationsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = conversationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([v16 isRepresentedByRemoteMembers:membersCopy andLink:{linkCopy, v18}])
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)conversationWithPseudonym:(id)pseudonym fromConversations:(id)conversations
{
  v22 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  conversationsCopy = conversations;
  v7 = [conversationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        link = [v10 link];
        if (link)
        {
          v12 = link;
          link2 = [v10 link];
          pseudonym = [link2 pseudonym];
          v15 = [pseudonym isEqualToString:pseudonymCopy];

          if (v15)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [conversationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

+ (id)pendingConversationWithLink:(id)link fromConversations:(id)conversations
{
  v21 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  conversationsCopy = conversations;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [conversationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(conversationsCopy);
      }

      v12 = *(*(&v16 + 1) + 8 * i);
      link = [v12 link];
      if ([link isEquivalentToConversationLink:linkCopy])
      {
        letMeInRequestState = [v12 letMeInRequestState];

        if (!letMeInRequestState)
        {
          continue;
        }

        link = v9;
        v9 = v12;
      }
    }

    v8 = [conversationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);
LABEL_14:

  return v9;
}

+ (id)remoteMembersForCall:(id)call
{
  v20 = *MEMORY[0x1E69E9840];
  remoteParticipantHandles = [call remoteParticipantHandles];
  v4 = [remoteParticipantHandles copy];

  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [TUConversationMember alloc];
        v13 = [(TUConversationMember *)v12 initWithHandle:v11 nickname:0, v15];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)registerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource registerWithCompletionHandler:handlerCopy];
}

- (TUConversationMediaController)mediaController
{
  mediaController = self->_mediaController;
  if (!mediaController)
  {
    v4 = [TUConversationMediaController alloc];
    dataSource = [(TUConversationManager *)self dataSource];
    v6 = [(TUConversationMediaController *)v4 initWithConversationDataSource:dataSource];
    v7 = self->_mediaController;
    self->_mediaController = v6;

    mediaController = self->_mediaController;
  }

  return mediaController;
}

- (void)addRemoteMembers:(id)members toConversation:(id)conversation
{
  v6 = MEMORY[0x1E695DFD8];
  conversationCopy = conversation;
  membersCopy = members;
  v9 = [v6 set];
  [(TUConversationManager *)self addRemoteMembers:membersCopy otherInvitedHandles:v9 toConversation:conversationCopy];
}

- (void)updateMessagesGroupName:(id)name onConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = nameCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to set new messages group name: %@ on conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateMessagesGroupName:nameCopy onConversation:conversationCopy];
}

- (void)setGridDisplayMode:(unint64_t)mode conversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    modeCopy = mode;
    v11 = 2112;
    v12 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set grid display mode to: %lu on conversation: %@", &v9, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setGridDisplayMode:mode conversation:conversationCopy];
}

- (void)conversationUpdateMessagesGroupPhoto:(id)photo
{
  v9 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  v5 = TUDefaultLog(photoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = photoCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to update messages group photo on conversation: %@", &v7, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource conversationUpdateMessagesGroupPhoto:photoCopy];
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles toConversation:(id)conversation
{
  v7 = MEMORY[0x1E695DFD8];
  conversationCopy = conversation;
  membersCopy = members;
  v10 = [v7 set];
  [(TUConversationManager *)self addRemoteMembers:membersCopy otherInvitedHandles:v10 invitationPreferences:0 toConversation:conversationCopy];
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversation:(id)conversation
{
  v22 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  handlesCopy = handles;
  conversationCopy = conversation;
  preferencesCopy = preferences;
  v14 = TUDefaultLog(preferencesCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = membersCopy;
    v18 = 2112;
    v19 = handlesCopy;
    v20 = 2112;
    v21 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Asked to add remote members: %@ otherInvitedHandles: %@ to conversation: %@", &v16, 0x20u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addRemoteMembers:membersCopy otherInvitedHandles:handlesCopy invitationPreferences:preferencesCopy toConversation:conversationCopy];
}

- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v8 = TUDefaultLog(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = dCopy;
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to prepare conversation with UUID: %@ with hand off context: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource prepareConversationWithUUID:dCopy withHandoffContext:contextCopy];
}

- (void)setSharePlayHandedOff:(BOOL)off onConversationWithUUID:(id)d
{
  offCopy = off;
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = TUDefaultLog(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = offCopy;
    v10 = 2112;
    v11 = dCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set handed off: %d on conversation with UUID: %@", v9, 0x12u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setSharePlayHandedOff:offCopy onConversationWithUUID:dCopy];
}

- (void)createActivitySession:(id)session onConversation:(id)conversation
{
  conversationCopy = conversation;
  sessionCopy = session;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource createActivitySession:sessionCopy onConversation:conversationCopy options:0];
}

- (void)createActivitySession:(id)session onConversation:(id)conversation options:(unint64_t)options
{
  v16 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v10 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = sessionCopy;
    v14 = 2112;
    v15 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to add activity: %@ to conversation: %@", &v12, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource createActivitySession:sessionCopy onConversation:conversationCopy options:options];
}

- (void)leaveActivitySession:(id)session onConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = sessionCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to leave activitySession: %@ to conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource leaveActivitySession:sessionCopy onConversation:conversationCopy];
}

- (void)endActivitySession:(id)session onConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = sessionCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to end activitySession: %@ to conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource endActivitySession:sessionCopy onConversation:conversationCopy];
}

- (void)presentDismissalAlertForActivitySession:(id)session onConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = sessionCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to present dismissal alert for activitySession: %@ on conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource presentDismissalAlertForActivitySession:sessionCopy onConversation:conversationCopy];
}

- (void)setActivityAuthorization:(BOOL)authorization forBundleIdentifier:(id)identifier
{
  authorizationCopy = authorization;
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = TUDefaultLog(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = authorizationCopy;
    v10 = 2112;
    v11 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set activity authorization to: %d for bundle identifier %@", v9, 0x12u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setActivityAuthorization:authorizationCopy forBundleIdentifier:identifierCopy];
}

- (void)setAutoSharePlayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Client request to set auto expanse enabled to %@", &v8, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setAutoSharePlayEnabled:enabledCopy];
}

- (void)setNearbyContactDiscoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = *MEMORY[0x1E69E9840];
  v4 = TUDefaultLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Client request to set nearby contact discovery enabled to %@", &v6, 0xCu);
  }
}

- (void)joinConversationWithRequest:(id)request
{
  v9 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "joinConversationWithRequest %@", &v7, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource joinConversationWithRequest:requestCopy];
}

- (void)leaveConversationWithUUID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = TUDefaultLog(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = dCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "leaveConversationWithUUID %@", &v7, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource leaveConversationWithUUID:dCopy];
}

- (void)launchApplicationForActivitySession:(id)session completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = sessionCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to launch application for activitySession %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  uUID = [sessionCopy UUID];
  [dataSource launchApplicationForActivitySessionUUID:uUID authorizedExternally:0 forceBackground:0 completionHandler:handlerCopy];
}

- (void)launchApplicationForActivitySession:(id)session authorizedExternally:(BOOL)externally completionHandler:(id)handler
{
  externallyCopy = externally;
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  handlerCopy = handler;
  v10 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (externallyCopy)
    {
      v11 = @"YES";
    }

    v14 = 138412546;
    v15 = sessionCopy;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to launch application for activitySession %@ and authorized externally %@", &v14, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  uUID = [sessionCopy UUID];
  [dataSource launchApplicationForActivitySessionUUID:uUID authorizedExternally:externallyCopy forceBackground:0 completionHandler:handlerCopy];
}

- (void)launchApplicationForActivitySessionUUID:(id)d completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to launch application for activitySession UUID %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource launchApplicationForActivitySessionUUID:dCopy authorizedExternally:0 forceBackground:0 completionHandler:handlerCopy];
}

- (void)launchApplicationForActivitySessionUUID:(id)d forceBackground:(BOOL)background completionHandler:(id)handler
{
  backgroundCopy = background;
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (backgroundCopy)
    {
      v11 = @"YES";
    }

    v13 = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to launch application for activitySession UUID %@ and override to background %@", &v13, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource launchApplicationForActivitySessionUUID:dCopy authorizedExternally:0 forceBackground:backgroundCopy completionHandler:handlerCopy];
}

- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversation:(id)conversation
{
  airplayCopy = airplay;
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v10 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (airplayCopy)
    {
      v11 = @"YES";
    }

    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = sessionCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Notified of airplay state: %@ for activity session %@", &v14, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  uUID = [conversationCopy UUID];

  [dataSource setUsingAirplay:airplayCopy onActivitySession:sessionCopy onConversationWithUUID:uUID];
}

- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversation:(id)conversation
{
  v20 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  contextCopy = context;
  dCopy = d;
  v14 = TUDefaultLog(dCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = memberCopy;
    v18 = 2112;
    v19 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Asked to buzz member: %@ conversation: %@", &v16, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource buzzMember:memberCopy destinationID:dCopy invitationContext:contextCopy conversation:conversationCopy];
}

- (void)requestScreenShareFromMember:(id)member conversation:(id)conversation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUConversationManager.m" lineNumber:509 description:@"requestScreenShareFromMembers is deprecated and should not be used"];
}

- (void)kickMember:(id)member conversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = memberCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to kick member: %@ conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource kickMember:memberCopy conversation:conversationCopy];
}

- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsInConversation:(id)conversation
{
  mutedCopy = muted;
  v12 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = mutedCopy;
    v10 = 2112;
    v11 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set downlink muted to: (%d) for remote participants in conversation: %@", v9, 0x12u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setDownlinkMuted:mutedCopy forRemoteParticipantsInConversation:conversationCopy];
}

- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants inConversation:(id)conversation completionHandler:(id)handler
{
  mutedCopy = muted;
  v18 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  handlerCopy = handler;
  participantsCopy = participants;
  v13 = TUDefaultLog(participantsCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = mutedCopy;
    v16 = 2112;
    v17 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Asked to set downlink muted to: (%d) for remote participants in conversation: %@", v15, 0x12u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setDownlinkMuted:mutedCopy forParticipants:participantsCopy inConversation:conversationCopy completionHandler:handlerCopy];
}

- (void)addScreenSharingType:(unint64_t)type forConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    typeCopy = type;
    v11 = 2112;
    v12 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set screen sharing type to: (%ld) for conversation: %@", &v9, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addScreenSharingType:type forConversation:conversationCopy];
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to get the latest remote screen share attributes", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getLatestRemoteScreenShareAttributesWithCompletionHandler:handlerCopy];
}

- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  handlerCopy = handler;
  v7 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to retrieve all active links", v9, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getActiveLinksWithCreatedOnly:onlyCopy completionHandler:handlerCopy];
}

- (void)addCollaborationDictionary:(id)dictionary forConversation:(id)conversation fromMe:(BOOL)me
{
  meCopy = me;
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  conversationCopy = conversation;
  v10 = conversationCopy;
  if (dictionaryCopy)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"ci"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"ru"];
    v13 = TUDefaultLog(v12);
    dataSource = v13;
    if (v11)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        uUID = [(__CFString *)v10 UUID];
        v20 = 138413058;
        v21 = dictionaryCopy;
        v22 = 2112;
        v23 = uUID;
        v24 = 2112;
        v25 = @"ci";
        v26 = 2112;
        v27 = @"ru";
        _os_log_error_impl(&dword_1956FD000, dataSource, OS_LOG_TYPE_ERROR, "Cannot add collaboration dictionary %@ to conversation with UUID %@ because it is missing required keys %@ and/or %@", &v20, 0x2Au);
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        v20 = 138412802;
        v21 = dictionaryCopy;
        v22 = 2112;
        if (meCopy)
        {
          v18 = @"YES";
        }

        v23 = v18;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_1956FD000, dataSource, OS_LOG_TYPE_DEFAULT, "Asked to add collaboration dictionary %@ (from me %@) to conversation: %@", &v20, 0x20u);
      }

      dataSource = [(TUConversationManager *)self dataSource];
      uUID2 = [(__CFString *)v10 UUID];
      [dataSource addCollaborationDictionary:dictionaryCopy forConversationWithUUID:uUID2 fromMe:meCopy];
    }
  }

  else
  {
    v11 = TUDefaultLog(conversationCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUConversationManager addCollaborationDictionary:v10 forConversation:? fromMe:?];
    }
  }
}

- (id)ckBundleIDForCollaborationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  collaborationProvider = [collaborationManager collaborationProvider];
  v7 = [collaborationProvider ckBundleIDForCollaborationIdentifier:identifierCopy];

  return v7;
}

- (void)addCollaborationIdentifier:(id)identifier forConversation:(id)conversation
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  v9 = v8;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = conversationCopy;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set collaboration identifier: %@ for conversation: %@", &v16, 0x16u);
    }

    collaborationManager = [(TUConversationManager *)self collaborationManager];
    collaborationProvider = [collaborationManager collaborationProvider];
    v9 = [collaborationProvider collaborationHighlightForIdentifier:identifierCopy];

    v13 = TUDefaultLog(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v14)
      {
        v16 = 138412546;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = conversationCopy;
        _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Found collaboration -Adding collaboration identifier: %@ for conversation: %@", &v16, 0x16u);
      }

      [(TUConversationManager *)self addCollaboration:v9 forConversation:conversationCopy];
    }

    else
    {
      if (v14)
      {
        v16 = 138412546;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = conversationCopy;
        _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Not adding collaboration identifier: %@ to conversation: %@, could not find corresponding collaboration. Adding to pending collaborations", &v16, 0x16u);
      }

      collaborationManager2 = [(TUConversationManager *)self collaborationManager];
      [collaborationManager2 queueCollaborationIdentifierForCollaboration:identifierCopy toConversation:conversationCopy];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [TUConversationManager addCollaborationIdentifier:conversationCopy forConversation:?];
  }
}

- (void)addCollaboration:(id)collaboration forConversation:(id)conversation
{
  v27 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  conversationCopy = conversation;
  collaborationIdentifier = [collaborationCopy collaborationIdentifier];

  v10 = TUDefaultLog(v9);
  ckAppBundleIDs = v10;
  if (collaborationIdentifier)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      collaborationIdentifier2 = [collaborationCopy collaborationIdentifier];
      v23 = 138412546;
      v24 = collaborationIdentifier2;
      v25 = 2112;
      v26 = conversationCopy;
      _os_log_impl(&dword_1956FD000, ckAppBundleIDs, OS_LOG_TYPE_DEFAULT, "Asked to add collaboration: %@ for conversation: %@", &v23, 0x16u);
    }

    attributions = [collaborationCopy attributions];
    v14 = [attributions count];

    if (v14)
    {
      attributions2 = [collaborationCopy attributions];
      firstObject = [attributions2 firstObject];
      collaborationMetadata = [firstObject collaborationMetadata];
      ckAppBundleIDs = [collaborationMetadata ckAppBundleIDs];
    }

    else
    {
      ckAppBundleIDs = 0;
    }

    dataSource = [(TUConversationManager *)self dataSource];
    collaborationIdentifier3 = [collaborationCopy collaborationIdentifier];
    v20 = [collaborationCopy URL];
    v21 = [v20 description];
    uUID = [conversationCopy UUID];
    [dataSource addCollaborationIdentifier:collaborationIdentifier3 collaborationURL:v21 cloudKitAppBundleIDs:ckAppBundleIDs forConversationUUID:uUID];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [TUConversationManager addCollaboration:collaborationCopy forConversation:conversationCopy];
  }
}

- (void)startTrackingCollaboration:(id)collaboration forConversation:(id)conversation completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  conversationCopy = conversation;
  handlerCopy = handler;
  v11 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    collaborationIdentifier = [collaborationCopy collaborationIdentifier];
    v24 = 138412546;
    v25 = collaborationIdentifier;
    v26 = 2112;
    v27 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to set collaboration identifier: %@ for conversation: %@", &v24, 0x16u);
  }

  attributions = [collaborationCopy attributions];
  v14 = [attributions count];

  if (v14)
  {
    attributions2 = [collaborationCopy attributions];
    firstObject = [attributions2 firstObject];
    collaborationMetadata = [firstObject collaborationMetadata];
    ckAppBundleIDs = [collaborationMetadata ckAppBundleIDs];
  }

  else
  {
    ckAppBundleIDs = 0;
  }

  dataSource = [(TUConversationManager *)self dataSource];
  collaborationIdentifier2 = [collaborationCopy collaborationIdentifier];
  v21 = [collaborationCopy URL];
  v22 = [v21 description];
  uUID = [conversationCopy UUID];
  [dataSource startTrackingCollaborationWithIdentifier:collaborationIdentifier2 collaborationURL:v22 cloudKitAppBundleIDs:ckAppBundleIDs forConversationUUID:uUID completionHandler:handlerCopy];
}

- (void)removeCollaborationIdentifier:(id)identifier forConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  dataSource = v8;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = identifierCopy;
      v13 = 2112;
      v14 = conversationCopy;
      _os_log_impl(&dword_1956FD000, dataSource, OS_LOG_TYPE_DEFAULT, "Asked to remove collaboration identifier: %@ for conversation: %@", &v11, 0x16u);
    }

    dataSource = [(TUConversationManager *)self dataSource];
    uUID = [conversationCopy UUID];
    [dataSource removeCollaborationIdentifier:identifierCopy forConversationUUID:uUID];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [TUConversationManager removeCollaborationIdentifier:conversationCopy forConversation:?];
  }
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  initiatorCopy = initiator;
  dCopy = d;
  handlerCopy = handler;
  v11 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = initiatorCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Checking disclosure of collaboration initiator %@ for conversation UUID %@", &v13, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getNeedsDisclosureOfCollaborationInitiator:initiatorCopy forConversationUUID:dCopy completionHandler:handlerCopy];
}

- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  initiatorCopy = initiator;
  dCopy = d;
  v8 = TUDefaultLog(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = initiatorCopy;
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Adding disclosed collaboration initiator %@ to conversation UUID %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addDisclosedCollaborationInitiator:initiatorCopy toConversationUUID:dCopy];
}

- (void)updateURLWithDugongTokenIfNeeded:(id)needed collaboration:(id)collaboration handle:(id)handle completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  collaborationCopy = collaboration;
  handleCopy = handle;
  completionCopy = completion;
  attributions = [collaborationCopy attributions];
  firstObject = [attributions firstObject];
  uniqueIdentifier = [firstObject uniqueIdentifier];

  v18 = TUDefaultLog(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (uniqueIdentifier)
  {
    if (v19)
    {
      *buf = 138412546;
      *&buf[4] = neededCopy;
      *&buf[12] = 2112;
      *&buf[14] = handleCopy;
      _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Asked to update collaboration URL %@ with Dugong token for handle %@, if needed", buf, 0x16u);
    }

    queue = [(TUConversationManager *)self queue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke;
    v28[3] = &unk_1E7426B50;
    v29 = uniqueIdentifier;
    v32 = completionCopy;
    v30 = neededCopy;
    v31 = handleCopy;
    v21 = v29;
    v22 = queue;
    v23 = v28;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v24 = getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_ptr;
    v36 = getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_ptr;
    if (!getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_block_invoke;
      v38 = &unk_1E7424CD8;
      v39 = &v33;
      __getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_block_invoke(buf);
      v24 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v24)
    {
      [TUConversationManager updateURLWithDugongTokenIfNeeded:collaboration:handle:completion:];
    }

    v24(v21, 33, v22, v23);
  }

  else
  {
    if (v19)
    {
      attributions2 = [collaborationCopy attributions];
      firstObject2 = [attributions2 firstObject];
      uniqueIdentifier2 = [firstObject2 uniqueIdentifier];
      *buf = 138412290;
      *&buf[4] = uniqueIdentifier2;
      _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Returning collaboration URL without Dugong token because no messageGUID was found in collaboration's attribution: %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, neededCopy);
  }
}

void __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412546;
    v41 = v3;
    v42 = 2112;
    v43 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Retrieved messages for queried GUID %@ to populate Dugong tokens: %@", buf, 0x16u);
  }

  v6 = [v3 firstObject];
  v7 = [v6 richLinkMetadata];

  if (v7)
  {
    v9 = [v7 specialization];
    v10 = [v9 specialization];

    if (v10)
    {
      v12 = objc_opt_respondsToSelector();
      if (v12)
      {
        v12 = [v10 encodedTokens];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 objectForKey:a1[6]];
          if (v14)
          {
            v15 = [MEMORY[0x1E696AF20] componentsWithURL:a1[5] resolvingAgainstBaseURL:0];
            v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
            v17 = [v15 scheme];
            [v16 setScheme:v17];

            v18 = [v15 host];
            [v16 setHost:v18];

            v19 = [v15 path];
            [v16 setPath:v19];

            v38 = v15;
            v20 = [v15 fragment];
            [v16 setFragment:v20];

            v21 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
            v22 = [v21 mutableCopy];

            [v22 removeCharactersInString:@"+=/"];
            v23 = [@"token" stringByAddingPercentEncodingWithAllowedCharacters:v22];
            v39 = v14;
            v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
            v35 = [v36 base64EncodedStringWithOptions:0];
            v34 = [v35 stringByAddingPercentEncodingWithAllowedCharacters:v22];
            v37 = v23;
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v23, v34];
            [v16 setQuery:v24];
            v25 = [v16 URL];
            v26 = TUDefaultLog(v25);
            v27 = v26;
            if (v25)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v41 = v25;
                _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "Sucessfully amended collaboration URL with Dugong token %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke_cold_1();
            }

            (*(a1[7] + 16))();
            v14 = v39;
          }

          else
          {
            v32 = TUDefaultLog(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = a1[6];
              *buf = 138412290;
              v41 = v33;
              _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, "Returning collaboration URL without Dugong token because could not lookup token for handle %@", buf, 0xCu);
            }

            (*(a1[7] + 16))();
          }

          goto LABEL_21;
        }
      }

      v30 = TUDefaultLog(v12);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v10;
        v31 = "[WARN] Returning collaboration URL without Dugong token because encodedTokens was nil for specialization %@";
LABEL_19:
        _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
      }
    }

    else
    {
      v30 = TUDefaultLog(v11);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v7;
        v31 = "[WARN] Returning collaboration URL without Dugong token because specialization was nil for the richLinkMetadata %@";
        goto LABEL_19;
      }
    }

    (*(a1[7] + 16))();
LABEL_21:

    goto LABEL_22;
  }

  v28 = TUDefaultLog(v8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v3 firstObject];
    *buf = 138412290;
    v41 = v29;
    _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Returning collaboration URL without Dugong token because richLinkMetadata was nil from the message %@", buf, 0xCu);
  }

  (*(a1[7] + 16))();
LABEL_22:
}

- (BOOL)openCollaborationWithIdentifier:(id)identifier forConversation:(id)conversation
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to open collaboration identifier: %@", buf, 0xCu);
  }

  collaborationManager = [(TUConversationManager *)self collaborationManager];
  collaborationProvider = [collaborationManager collaborationProvider];
  v11 = [collaborationProvider collaborationHighlightForIdentifier:identifierCopy];

  if (v11)
  {
    objc_initWeak(buf, self);
    v13 = [v11 URL];
    localMember = [conversationCopy localMember];
    handle = [localMember handle];
    normalizedValue = [handle normalizedValue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke;
    v19[3] = &unk_1E7426BA0;
    objc_copyWeak(&v23, buf);
    v20 = identifierCopy;
    v21 = conversationCopy;
    v22 = v11;
    [(TUConversationManager *)self updateURLWithDugongTokenIfNeeded:v13 collaboration:v22 handle:normalizedValue completion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = TUDefaultLog(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TUConversationManager openCollaborationWithIdentifier:forConversation:];
    }
  }

  return v11 != 0;
}

void __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2;
  v4[3] = &unk_1E7426B78;
  objc_copyWeak(&v8, a1 + 7);
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  TUOpenURLWithCompletion(v3, v4);

  objc_destroyWeak(&v8);
}

void __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      v7 = TUDefaultLog(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2_cold_1(a1);
      }
    }

    else
    {
      v7 = [WeakRetained dataSource];
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) UUID];
      [v7 markCollaborationWithIdentifierOpened:v8 forConversationUUID:v9];
    }
  }
}

- (void)generateLinkForConversation:(id)conversation completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to generate link for conversation: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource generateLinkForConversation:conversationCopy completionHandler:handlerCopy];
}

- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  handlerCopy = handler;
  v10 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = handlesCopy;
    v17 = 2048;
    scopeCopy = scope;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to generate link in advance of conversation with invited member handles: %@, linkLifetimeScope: %ld", buf, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke;
  v13[3] = &unk_1E7426BC8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [dataSource generateLinkWithInvitedMemberHandles:handlesCopy linkLifetimeScope:scope completionHandler:v13];
}

void __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = TUDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
LABEL_9:
    v9();
    goto LABEL_10;
  }

  v10 = TUDefaultLog(0);
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Link generation succeeded with link %@", &v14, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke_cold_2(v11);
  }

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.telephonyutilities.callservicesd" code:1 userInfo:0];
  (*(v12 + 16))(v12, 0, v13);

LABEL_10:
}

- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  linkCopy = link;
  handlerCopy = handler;
  v11 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = handlesCopy;
    v15 = 2112;
    v16 = linkCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to add invited member handles %@ to link %@", &v13, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addInvitedMemberHandles:handlesCopy toConversationLink:linkCopy completionHandler:handlerCopy];
}

- (void)invalidateLink:(id)link completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = linkCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Invalidate link: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource invalidateLink:linkCopy deleteReason:2 completionHandler:handlerCopy];
}

- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  dateCopy = date;
  handlerCopy = handler;
  v13 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = linkCopy;
    v17 = 2112;
    v18 = dateCopy;
    v19 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Asked to renew link %@ to new expiration date %@ with reason %lu", &v15, 0x20u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource renewLink:linkCopy expirationDate:dateCopy reason:reason completionHandler:handlerCopy];
}

- (void)checkLinkValidity:(id)validity completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  validityCopy = validity;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = validityCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to check validity for link: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource checkLinkValidity:validityCopy completionHandler:handlerCopy];
}

- (void)getInactiveLinkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to get an inactive link for vending as suggestion", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getInactiveLinkWithCompletionHandler:handlerCopy];
}

- (void)activateLink:(id)link completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = linkCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to activate previously-vended link: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource activateLink:linkCopy completionHandler:handlerCopy];
}

- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  handlerCopy = handler;
  nameCopy = name;
  v11 = TUDefaultLog(nameCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = linkCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to set a link name for link: %@", &v13, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setLinkName:nameCopy forConversationLink:linkCopy completionHandler:handlerCopy];
}

- (void)updateExternalParticipants:(id)participants
{
  participantsCopy = participants;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateExternalParticipants:participantsCopy];
}

- (void)approveExternalParticipants:(id)participants
{
  v22 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [TUExternalParticipant alloc];
        identifier = [v10 identifier];
        displayName = [v10 displayName];
        info = [v10 info];
        v15 = [(TUExternalParticipant *)v11 initWithIdentifier:identifier displayName:displayName info:info status:1];
        [v4 addObject:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(TUConversationManager *)self updateExternalParticipants:v4];
}

- (void)denyExternalParticipants:(id)participants
{
  v22 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [TUExternalParticipant alloc];
        identifier = [v10 identifier];
        displayName = [v10 displayName];
        info = [v10 info];
        v15 = [(TUExternalParticipant *)v11 initWithIdentifier:identifier displayName:displayName info:info status:2];
        [v4 addObject:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(TUConversationManager *)self updateExternalParticipants:v4];
}

- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial
{
  initialCopy = initial;
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to manually schedule a sync for activated conversation links", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource scheduleConversationLinkCheckInInitial:initialCopy];
}

- (void)linkSyncStateIncludeLinks:(BOOL)links WithCompletion:(id)completion
{
  linksCopy = links;
  completionCopy = completion;
  v7 = TUDefaultLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to get the link sync state", v9, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource linkSyncStateIncludeLinks:linksCopy WithCompletion:completionCopy];
}

- (void)approvePendingMember:(id)member forConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = memberCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to approve a pending member waiting to be let in: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource approvePendingMember:memberCopy forConversation:conversationCopy];
}

- (void)rejectPendingMember:(id)member forConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = memberCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to reject a pending member waiting to be let in: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource rejectPendingMember:memberCopy forConversation:conversationCopy];
}

- (void)setIgnoreLMIRequests:(BOOL)requests forConversation:(id)conversation
{
  requestsCopy = requests;
  v14 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"allow";
    if (requestsCopy)
    {
      v8 = @"ignore";
    }

    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to %@ all let me in requests for link: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setIgnoreLetMeInRequests:requestsCopy forConversation:conversationCopy];
}

- (void)requestParticipantToShareScreen:(id)screen forConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = screenCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to generate screen share request with requested participant: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource requestParticipantToShareScreen:screenCopy forConversation:conversationCopy];
}

- (void)cancelOrDenyScreenShareRequest:(id)request forConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = requestCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to cancel screen share request: %@ for conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource cancelOrDenyScreenShareRequest:requestCopy forConversation:conversationCopy];
}

- (void)setScreenEnabled:(BOOL)enabled withScreenShareAttributes:(id)attributes forConversationWithUUID:(id)d
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  dCopy = d;
  v10 = TUDefaultLog(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v13 = 138412802;
    if (enabledCopy)
    {
      v11 = @"YES";
    }

    v14 = v11;
    v15 = 2112;
    v16 = attributesCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to set screenEnabled %@ screenShareAttributes: %@ conversationWithUUID: %@", &v13, 0x20u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setScreenEnabled:enabledCopy withScreenShareAttributes:attributesCopy forConversationWithUUID:dCopy];
}

+ (BOOL)supportsConversations
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  if ([cUTWeakLinkClass() multiwaySupported])
  {
    v3 = [cUTWeakLinkClass() isGreenTea] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)isAddPersonEnabled
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  v3 = [cUTWeakLinkClass() objectForKey:@"gft-legacy-upgrade-enabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (unint64_t)maximumNumberOfInvitedMembers
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  v3 = [cUTWeakLinkClass() objectForKey:@"qr-max-participants"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 32;
  }

  return unsignedIntegerValue;
}

+ (BOOL)allowsVideo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TUConversationManager_allowsVideo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allowsVideo_onceToken != -1)
  {
    dispatch_once(&allowsVideo_onceToken, block);
  }

  return allowsVideo_allowsVideo;
}

uint64_t __36__TUConversationManager_allowsVideo__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memorySize];
  allowsVideo_allowsVideo = result > 1610612736;
  return result;
}

+ (BOOL)allowsScreenSharing
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = screenCaptureCapabilities();
  v3 = v2;
  v4 = TUDefaultLog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "allowsScreenSharing: %@", &v7, 0xCu);
  }

  return v3 != 0;
}

+ (BOOL)allowsScreenSharingWithVideo
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = screenCaptureCapabilities();
  v3 = v2;
  v4 = TUDefaultLog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3 == 2)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "allowsScreenSharingWithVideo: %@", &v7, 0xCu);
  }

  return v3 == 2;
}

+ (BOOL)allowsPortraitBlurWhenCaptionsEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MGGetSInt32Answer();
  v3 = MGGetSInt64Answer();
  v4 = (v2 - 1) > 1 || ((v3 - 0x8000) > 0x30 || ((1 << v3) & 0x100810023000BLL) == 0) && ((v3 - 35152) > 0x10 || ((1 << (v3 - 80)) & 0x10021) == 0) && (v3 - 28672) >= 2;
  v5 = TUDefaultLog(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "allowsPortraitBlurWhenCaptionsEnabled: %{public}@", &v8, 0xCu);
  }

  return v4;
}

+ (BOOL)supportsEffects
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  supportsFunCam = [cUTWeakLinkClass() supportsFunCam];

  return supportsFunCam;
}

+ (int64_t)memorySize
{
  if (memorySize_onceToken != -1)
  {
    +[TUConversationManager memorySize];
  }

  return memorySize_mem;
}

uint64_t __35__TUConversationManager_memorySize__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0x1800000006;
  v1 = 8;
  return sysctl(v2, 2u, &memorySize_mem, &v1, 0, 0);
}

- (void)getMessagesGroupDetailsForConversationUUID:(id)d completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Fetching Messages group info for conversation: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getMessagesGroupDetailsForConversationUUID:dCopy completionHandler:handlerCopy];
}

- (void)setMessagesGroupProvider:(id)provider
{
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_messagesGroupProvider);

  objc_storeWeak(&self->_messagesGroupProvider, providerCopy);
  if ((providerCopy != 0) == (WeakRetained == 0))
  {
    dataSource = [(TUConversationManager *)self dataSource];
    [dataSource setSupportsMessagesGroupProviding:providerCopy != 0];
  }
}

- (void)setLocalParticipantCluster:(id)cluster forConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  conversationCopy = conversation;
  v8 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = clusterCopy;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to set local participant cluster to %@ for conversation %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setLocalParticipantCluster:clusterCopy forConversation:conversationCopy];
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d
{
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setLocalParticipantAudioVideoMode:mode forConversationUUID:dCopy];
}

- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)mode forConversationUUID:(id)d
{
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateLocalParticipantToAVLessWithPresentationMode:mode forConversationUUID:dCopy];
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)d
{
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource registerMessagesGroupUUIDForConversationUUID:dCopy];
}

- (void)updateRemoteControlStatus:(int64_t)status onConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    statusCopy = status;
    v11 = 2112;
    v12 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to update remote control status: %lu for conversation: %@", &v9, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateRemoteControlStatus:status onConversation:conversationCopy];
}

- (void)conversationsChangedForDataSource:(id)source conversationsByGroupUUID:(id)d oldConversationsByGroupUUID:(id)iD
{
  sourceCopy = source;
  dCopy = d;
  iDCopy = iD;
  queue = [(TUConversationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__TUConversationManager_conversationsChangedForDataSource_conversationsByGroupUUID_oldConversationsByGroupUUID___block_invoke;
  v15[3] = &unk_1E7425188;
  v16 = dCopy;
  selfCopy = self;
  v18 = sourceCopy;
  v19 = iDCopy;
  v12 = iDCopy;
  v13 = sourceCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __112__TUConversationManager_conversationsChangedForDataSource_conversationsByGroupUUID_oldConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) copy];
  v2 = [*(a1 + 40) nonSessionBackedConversationCreationQueue];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 conversationsChangedForDataSource:*(a1 + 48) oldConversationsByGroupUUID:*(a1 + 56) newConversationsByGroupUUID:v4 creationQueue:v2];
  }

  else
  {
    [v3 conversationsChangedFromOldConversationsByGroupUUID:*(a1 + 56) newConversationsByGroupUUID:v4];
  }
}

- (void)conversationsChangedForDataSource:(id)source oldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD creationQueue:(id)queue
{
  dCopy = d;
  iDCopy = iD;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke;
  block[3] = &unk_1E7424FD8;
  v14 = dCopy;
  v15 = iDCopy;
  selfCopy = self;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

void __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke(id *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = [a1[4] mutableCopy];
  v2 = [a1[5] mutableCopy];
  v3 = [a1[6] callPendingUpgradeInConversationsWithGroupUUID:a1[5]];
  v33 = v3;
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [v3 uniqueProxyIdentifierUUID];
    v6 = [a1[6] conversationsNotBackedByGroupSessions];
    v7 = [v4 conversationWithUUID:v5 fromConversations:v6];

    v8 = objc_opt_class();
    v9 = [objc_opt_class() remoteMembersForCall:v3];
    v10 = [v7 link];
    v11 = MEMORY[0x1E695DFD8];
    v12 = [v2 allValues];
    v13 = [v11 setWithArray:v12];
    v14 = [v8 conversationWithRemoteMembers:v9 andLink:v10 fromConversations:v13 matchingVideo:objc_msgSend(v3 backedByGroupSession:{"isVideo"), 1}];

    v16 = TUDefaultLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v47 = v14;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "Notified of new session-backed conversation %@ to replace non-session-backed conversation %@", buf, 0x16u);
    }

    LODWORD(v3) = v14 != 0;
    if (v7 && v14)
    {
      v17 = [a1[6] queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_160;
      block[3] = &unk_1E7424FD8;
      block[4] = a1[6];
      v7 = v7;
      v43 = v7;
      v35 = v14;
      v44 = v35;
      dispatch_async(v17, block);

      LODWORD(v3) = 1;
    }

    else
    {
      v35 = v14;
    }
  }

  else
  {
    v7 = 0;
    v35 = 0;
  }

  v36 = v2;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v34 = a1;
  v18 = [a1[6] conversationsNotBackedByGroupSessions];
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        v24 = [v23 UUID];
        v25 = v7;
        v26 = [v7 UUID];
        v27 = [v24 isEqual:v26] & v3;

        if (v27 == 1)
        {
          v28 = [v23 copy];
          v29 = [v35 UUID];
          [v28 setUUID:v29];

          v30 = [v35 groupUUID];
          [v28 setGroupUUID:v30];

          v31 = [v28 groupUUID];
          [v37 setObject:v28 forKeyedSubscript:v31];
        }

        else
        {
          v32 = [v23 groupUUID];
          [v37 setObject:v23 forKeyedSubscript:v32];

          v28 = [v23 groupUUID];
          [v36 setObject:v23 forKeyedSubscript:v28];
        }

        v7 = v25;
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v20);
  }

  [v34[6] pruneConversationsPendingUpgradeInConversationsWithGroupUUID:v34[5]];
  [v34[6] conversationsChangedFromOldConversationsByGroupUUID:v37 newConversationsByGroupUUID:v36];
}

void __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_160(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 migratingFromConversation:v5 toConversation:v6];
  }

  return result;
}

- (void)conversationsChangedFromOldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = dCopy;
  v13 = iDCopy;
  selfCopy = self;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v186 = *MEMORY[0x1E69E9840];
  v138 = [MEMORY[0x1E695DFA8] set];
  v117 = [MEMORY[0x1E695DFA8] set];
  v113 = [MEMORY[0x1E695DFA8] set];
  v135 = [MEMORY[0x1E695DFA8] set];
  v110 = [MEMORY[0x1E695DFA8] set];
  v134 = [MEMORY[0x1E695DFA8] set];
  v133 = [MEMORY[0x1E695DFA8] set];
  v132 = [MEMORY[0x1E695DFA8] set];
  v136 = [MEMORY[0x1E695DFA8] set];
  v131 = [MEMORY[0x1E695DFA8] set];
  v137 = [MEMORY[0x1E695DFA8] set];
  v130 = [MEMORY[0x1E695DFA8] set];
  v129 = [MEMORY[0x1E695DFA8] set];
  v128 = [MEMORY[0x1E695DFA8] set];
  v127 = [MEMORY[0x1E695DFA8] set];
  v126 = [MEMORY[0x1E695DFA8] set];
  v125 = [MEMORY[0x1E695DFA8] set];
  v2 = MEMORY[0x1E695DFA8];
  v3 = [*(a1 + 32) allValues];
  v115 = [v2 setWithArray:v3];

  v107 = [MEMORY[0x1E695DFA8] set];
  v124 = [MEMORY[0x1E695DFA8] set];
  v123 = [MEMORY[0x1E695DFA8] set];
  v122 = [MEMORY[0x1E695DFA8] set];
  v121 = [MEMORY[0x1E695DFA8] set];
  v109 = [MEMORY[0x1E695DFA8] set];
  v120 = [MEMORY[0x1E695DFA8] set];
  v116 = [MEMORY[0x1E695DFA8] set];
  v119 = [MEMORY[0x1E695DFA8] set];
  v118 = [MEMORY[0x1E695DFA8] set];
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v140 = a1;
  obj = [*(a1 + 40) allValues];
  v112 = [obj countByEnumeratingWithState:&v179 objects:v185 count:16];
  if (!v112)
  {
    v114 = 0;
    v139 = 0;
    goto LABEL_93;
  }

  v114 = 0;
  v139 = 0;
  v111 = *v180;
  do
  {
    for (i = 0; i != v112; ++i)
    {
      if (*v180 != v111)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v179 + 1) + 8 * i);
      v6 = *(v140 + 32);
      v7 = [v5 groupUUID];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (!v8)
      {
        [v130 addObject:v5];
        [v129 addObject:v5];
        [v135 addObject:v5];
        [v110 addObject:v5];
        [v134 addObject:v5];
        [v133 addObject:v5];
        [v132 addObject:v5];
        [v131 addObject:v5];
        [v137 addObject:v5];
        [v128 addObject:v5];
        [v127 addObject:v5];
        [v126 addObject:v5];
        [v125 addObject:v5];
        [v138 addObject:v5];
        [v109 addObject:v5];
        if ([v5 state] != 4)
        {
          [v107 addObject:v5];
        }

        [v124 addObject:v5];
        [v122 addObject:v5];
        [v123 addObject:v5];
        [v136 addObject:v5];
        goto LABEL_69;
      }

      v9 = [v8 state];
      if (v9 != [v5 state])
      {
        [v130 addObject:v5];
      }

      v10 = [v8 letMeInRequestState];
      if (v10 != [v5 letMeInRequestState])
      {
        [v129 addObject:v5];
      }

      v11 = [v8 isVideoEnabled];
      if (v11 != [v5 isVideoEnabled])
      {
        [v135 addObject:v5];
      }

      v12 = [v8 isScreenEnabled];
      if (v12 != [v5 isScreenEnabled])
      {
        [v110 addObject:v5];
      }

      v13 = [v8 remoteMembers];
      v14 = [v5 remoteMembers];
      v15 = [v13 isEqualToSet:v14];

      if ((v15 & 1) == 0)
      {
        [v134 addObject:v5];
      }

      v16 = [v8 pendingMembers];
      v17 = [v5 pendingMembers];
      v18 = [v16 isEqualToSet:v17];

      if ((v18 & 1) == 0)
      {
        [v133 addObject:v5];
      }

      v19 = [v8 kickedMembers];
      v20 = [v5 kickedMembers];
      v21 = [v19 isEqualToSet:v20];

      if ((v21 & 1) == 0)
      {
        [v132 addObject:v5];
      }

      v22 = [v8 otherInvitedHandles];
      v23 = [v5 otherInvitedHandles];
      v24 = [v22 isEqualToSet:v23];

      if ((v24 & 1) == 0)
      {
        [v131 addObject:v5];
      }

      v25 = [v8 activeRemoteParticipants];
      v26 = [v5 activeRemoteParticipants];
      if (([v25 isEqualToSet:v26] & 1) == 0)
      {

LABEL_30:
        [v137 addObject:v5];
        goto LABEL_31;
      }

      v27 = [v8 activeLightweightParticipants];
      v28 = [v5 activeLightweightParticipants];
      v29 = [v27 isEqualToSet:v28];

      if ((v29 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_31:
      v30 = [v8 isOneToOneModeEnabled];
      if (v30 != [v5 isOneToOneModeEnabled])
      {
        [v128 addObject:v5];
      }

      v31 = [v8 avMode];
      if (v31 != [v5 avMode])
      {
        [v127 addObject:v5];
      }

      v32 = [v8 presentationContext];
      v33 = [v5 presentationContext];
      v34 = [v32 isEqual:v33];

      if ((v34 & 1) == 0)
      {
        [v126 addObject:v5];
      }

      v35 = [v8 resolvedAudioVideoMode];
      if (v35 != [v5 resolvedAudioVideoMode])
      {
        [v125 addObject:v5];
      }

      v36 = [v8 activitySessions];
      v37 = [v5 activitySessions];
      if (([v36 isEqualToSet:v37] & 1) == 0)
      {

LABEL_43:
        [v138 addObject:v5];
        goto LABEL_44;
      }

      v38 = [v8 stagedActivitySession];
      v39 = [v5 stagedActivitySession];
      v40 = TUObjectsAreEqualOrNil(v38, v39);

      if ((v40 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_44:
      v41 = [v8 isNearbySharePlay];
      if (v41 != [v5 isNearbySharePlay])
      {
        [v109 addObject:v5];
      }

      v42 = [v8 link];
      v43 = [v5 link];
      if (([v42 isEquivalentToConversationLink:v43] & 1) == 0)
      {

LABEL_50:
        [v117 addObject:v5];
        goto LABEL_51;
      }

      v44 = [v8 link];
      v45 = [v44 linkName];
      v46 = [v5 link];
      v47 = [v46 linkName];
      v48 = TUStringsAreEqualOrNil(v45, v47);

      if ((v48 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v49 = [v8 link];
      if (v49)
      {
        v50 = v49;
        v51 = [v5 link];
        if (v51)
        {
          v52 = v51;
          v53 = [v8 link];
          v54 = [v53 invitedMemberHandles];
          v55 = [v5 link];
          v56 = [v55 invitedMemberHandles];
          v57 = [v54 isEqualToSet:v56];

          if ((v57 & 1) == 0)
          {
            [v113 addObject:v5];
          }
        }

        else
        {
        }
      }

      v58 = [v8 UUID];
      v59 = [v5 UUID];
      v60 = [v58 isEqual:v59];

      if (v60)
      {
        [v115 removeObject:v8];
      }

      v61 = [v8 messagesGroupName];
      v62 = [v5 messagesGroupName];
      v63 = [v61 isEqualToString:v62];

      if ((v63 & 1) == 0)
      {
        [v124 addObject:v5];
      }

      v64 = [v8 messagesGroupUUID];
      v65 = [v5 messagesGroupUUID];
      v66 = TUObjectsAreEqualOrNil(v64, v65);

      if ((v66 & 1) == 0)
      {
        [v122 addObject:v5];
      }

      v67 = [v8 ignoreLMIRequests];
      if (v67 != [v5 ignoreLMIRequests])
      {
        [v123 addObject:v5];
      }

      v68 = [v8 rejectedMembers];
      v69 = [v5 rejectedMembers];

      if (v68 != v69)
      {
        [v136 addObject:v5];
      }

      v70 = [v5 handoffEligibility];
      if (v70)
      {
      }

      else
      {
        v71 = [v8 handoffEligibility];

        if (!v71)
        {
          goto LABEL_77;
        }
      }

LABEL_69:
      v72 = [v5 handoffEligibility];

      if (!v72 || v139)
      {
        if (!v8)
        {
LABEL_87:
          [v121 addObject:v5];
          [v120 addObject:v5];
          v88 = v119;
LABEL_88:
          [v88 addObject:v5];
          goto LABEL_89;
        }

        v73 = [v8 handoffEligibility];
        if (v73)
        {
          v74 = v73;
          v75 = [v5 handoffEligibility];

          if (!v75)
          {
            v76 = v5;

            v114 = v76;
          }
        }
      }

      else
      {
        v139 = v5;
        if (!v8)
        {
          goto LABEL_87;
        }
      }

LABEL_77:
      v77 = [v8 systemActivitySessions];
      v78 = [v5 systemActivitySessions];
      v79 = [v77 isEqualToSet:v78];

      if ((v79 & 1) == 0)
      {
        [v121 addObject:v5];
      }

      v80 = [v8 isCameraMixedWithScreen];
      if (v80 != [v5 isCameraMixedWithScreen])
      {
        [v120 addObject:v5];
      }

      v81 = [v8 isScreening];
      if (v81 != [v5 isScreening])
      {
        [v116 addObject:v5];
      }

      v82 = [v8 screenSharingRequests];
      v83 = [v5 screenSharingRequests];
      v84 = [v82 isEqualToSet:v83];

      if ((v84 & 1) == 0)
      {
        [v119 addObject:v5];
      }

      v85 = [v8 localParticipantCluster];
      v86 = [v5 localParticipantCluster];
      v87 = [v85 isEqual:v86];

      v88 = v118;
      if ((v87 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_89:
    }

    v112 = [obj countByEnumeratingWithState:&v179 objects:v185 count:16];
  }

  while (v112);
LABEL_93:

  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v89 = v107;
  v90 = [v89 countByEnumeratingWithState:&v175 objects:v184 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v176;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v176 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v175 + 1) + 8 * j);
        v95 = [v94 highlightIdentifiers];
        v96 = [v95 count];

        if (v96)
        {
          v97 = [*(v140 + 48) collaborationManager];
          [v97 associateCollaborationWithNewConversation:v94];
        }
      }

      v91 = [v89 countByEnumeratingWithState:&v175 objects:v184 count:16];
    }

    while (v91);
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v98 = [*(v140 + 48) delegateToQueue];
  v99 = [v98 countByEnumeratingWithState:&v171 objects:v183 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v172;
    do
    {
      for (k = 0; k != v100; ++k)
      {
        if (*v172 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v103 = *(*(&v171 + 1) + 8 * k);
        v104 = [*(v140 + 48) delegateToQueue];
        v105 = [v104 objectForKey:v103];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke_2;
        block[3] = &unk_1E7426BF0;
        v106 = *(v140 + 48);
        block[4] = v103;
        block[5] = v106;
        v142 = v124;
        v143 = *(v140 + 32);
        v144 = v122;
        v145 = v130;
        v146 = v129;
        v147 = v135;
        v148 = v134;
        v149 = v133;
        v150 = v132;
        v151 = v131;
        v152 = v137;
        v153 = v128;
        v154 = v127;
        v155 = v126;
        v156 = v125;
        v157 = v138;
        v158 = v117;
        v159 = v113;
        v160 = v115;
        v161 = v89;
        v162 = v123;
        v163 = v136;
        v164 = v139;
        v165 = v114;
        v166 = v121;
        v167 = v120;
        v168 = v116;
        v169 = v119;
        v170 = v118;
        dispatch_async(v105, block);
      }

      v100 = [v98 countByEnumeratingWithState:&v171 objects:v183 count:16];
    }

    while (v100);
  }
}

void __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke_2(uint64_t a1)
{
  v363 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) conversationsChangedForConversationManager:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v335 = 0u;
    v334 = 0u;
    v333 = 0u;
    v332 = 0u;
    v2 = *(a1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v332 objects:v362 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v333;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v333 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v332 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) conversationUpdatedMessagesGroupName:v7];
          }

          if (objc_opt_respondsToSelector())
          {
            v8 = *(a1 + 56);
            v9 = [v7 groupUUID];
            v10 = [v8 objectForKeyedSubscript:v9];

            [*(a1 + 32) conversationManager:*(a1 + 40) conversationUpdatedMessagesGroupName:v7 fromOldConversation:v10];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v332 objects:v362 count:16];
      }

      while (v4);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v331 = 0u;
    v330 = 0u;
    v329 = 0u;
    v328 = 0u;
    v11 = *(a1 + 64);
    v12 = [v11 countByEnumeratingWithState:&v328 objects:v361 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v329;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v329 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) conversationUpdatedMessagesGroupUUID:*(*(&v328 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v328 objects:v361 count:16];
      }

      while (v13);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v327 = 0u;
    v326 = 0u;
    v325 = 0u;
    v324 = 0u;
    v16 = *(a1 + 72);
    v17 = [v16 countByEnumeratingWithState:&v324 objects:v360 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v325;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v325 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v324 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) stateChangedForConversation:v21];
          }

          if (objc_opt_respondsToSelector())
          {
            v22 = *(a1 + 56);
            v23 = [v21 groupUUID];
            v24 = [v22 objectForKeyedSubscript:v23];

            [*(a1 + 32) conversationManager:*(a1 + 40) stateChangedForConversation:v21 fromOldConversation:v24];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v324 objects:v360 count:16];
      }

      while (v18);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v323 = 0u;
    v322 = 0u;
    v321 = 0u;
    v320 = 0u;
    v25 = *(a1 + 72);
    v26 = [v25 countByEnumeratingWithState:&v320 objects:v359 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v321;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v321 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v320 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) nearbySharePlayToggledForConversation:v30];
          }

          if (objc_opt_respondsToSelector())
          {
            v31 = *(a1 + 56);
            v32 = [v30 groupUUID];
            v33 = [v31 objectForKeyedSubscript:v32];

            [*(a1 + 32) conversationManager:*(a1 + 40) nearbySharePlayToggledForConversation:v30 fromOldConversation:v33];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v320 objects:v359 count:16];
      }

      while (v27);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v319 = 0u;
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v34 = *(a1 + 80);
    v35 = [v34 countByEnumeratingWithState:&v316 objects:v358 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v317;
      do
      {
        for (n = 0; n != v36; ++n)
        {
          if (*v317 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v316 + 1) + 8 * n);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) letMeInRequestStateChangedForConversation:v39];
          }

          if (objc_opt_respondsToSelector())
          {
            v40 = *(a1 + 56);
            v41 = [v39 groupUUID];
            v42 = [v40 objectForKeyedSubscript:v41];

            [*(a1 + 32) conversationManager:*(a1 + 40) letMeInRequestStateChangedForConversation:v39 fromOldConversation:v42];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v316 objects:v358 count:16];
      }

      while (v36);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v315 = 0u;
    v314 = 0u;
    v313 = 0u;
    v312 = 0u;
    v43 = *(a1 + 88);
    v44 = [v43 countByEnumeratingWithState:&v312 objects:v357 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v313;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v313 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v312 + 1) + 8 * ii);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) localVideoToggledForConversation:v48];
          }

          if (objc_opt_respondsToSelector())
          {
            v49 = *(a1 + 56);
            v50 = [v48 groupUUID];
            v51 = [v49 objectForKeyedSubscript:v50];

            [*(a1 + 32) conversationManager:*(a1 + 40) localVideoToggledForConversation:v48 fromOldConversation:v51];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v312 objects:v357 count:16];
      }

      while (v45);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v311 = 0u;
    v310 = 0u;
    v309 = 0u;
    v308 = 0u;
    v52 = *(a1 + 96);
    v53 = [v52 countByEnumeratingWithState:&v308 objects:v356 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v309;
      do
      {
        for (jj = 0; jj != v54; ++jj)
        {
          if (*v309 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v308 + 1) + 8 * jj);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) remoteMembersChangedForConversation:v57];
          }

          if (objc_opt_respondsToSelector())
          {
            v58 = *(a1 + 56);
            v59 = [v57 groupUUID];
            v60 = [v58 objectForKeyedSubscript:v59];

            [*(a1 + 32) conversationManager:*(a1 + 40) remoteMembersChangedForConversation:v57 fromOldConversation:v60];
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v308 objects:v356 count:16];
      }

      while (v54);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v307 = 0u;
    v306 = 0u;
    v305 = 0u;
    v304 = 0u;
    v61 = *(a1 + 104);
    v62 = [v61 countByEnumeratingWithState:&v304 objects:v355 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v305;
      do
      {
        for (kk = 0; kk != v63; ++kk)
        {
          if (*v305 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v304 + 1) + 8 * kk);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) pendingMembersChangedForConversation:v66];
          }

          if (objc_opt_respondsToSelector())
          {
            v67 = *(a1 + 56);
            v68 = [v66 groupUUID];
            v69 = [v67 objectForKeyedSubscript:v68];

            [*(a1 + 32) conversationManager:*(a1 + 40) pendingMembersChangedForConversation:v66 fromOldConversation:v69];
          }
        }

        v63 = [v61 countByEnumeratingWithState:&v304 objects:v355 count:16];
      }

      while (v63);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v303 = 0u;
    v302 = 0u;
    v301 = 0u;
    v300 = 0u;
    v70 = *(a1 + 112);
    v71 = [v70 countByEnumeratingWithState:&v300 objects:v354 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v301;
      do
      {
        for (mm = 0; mm != v72; ++mm)
        {
          if (*v301 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v300 + 1) + 8 * mm);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) kickedMembersChangedForConversation:v75];
          }

          if (objc_opt_respondsToSelector())
          {
            v76 = *(a1 + 56);
            v77 = [v75 groupUUID];
            v78 = [v76 objectForKeyedSubscript:v77];

            [*(a1 + 32) conversationManager:*(a1 + 40) kickedMembersChangedForConversation:v75 fromOldConversation:v78];
          }
        }

        v72 = [v70 countByEnumeratingWithState:&v300 objects:v354 count:16];
      }

      while (v72);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v299 = 0u;
    v298 = 0u;
    v297 = 0u;
    v296 = 0u;
    v79 = *(a1 + 120);
    v80 = [v79 countByEnumeratingWithState:&v296 objects:v353 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v297;
      do
      {
        for (nn = 0; nn != v81; ++nn)
        {
          if (*v297 != v82)
          {
            objc_enumerationMutation(v79);
          }

          v84 = *(*(&v296 + 1) + 8 * nn);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) otherInvitedHandlesChangedForConversation:v84];
          }

          if (objc_opt_respondsToSelector())
          {
            v85 = *(a1 + 56);
            v86 = [v84 groupUUID];
            v87 = [v85 objectForKeyedSubscript:v86];

            [*(a1 + 32) conversationManager:*(a1 + 40) otherInvitedHandlesChangedForConversation:v84 fromOldConversation:v87];
          }
        }

        v81 = [v79 countByEnumeratingWithState:&v296 objects:v353 count:16];
      }

      while (v81);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v295 = 0u;
    v294 = 0u;
    v293 = 0u;
    v292 = 0u;
    v88 = *(a1 + 128);
    v89 = [v88 countByEnumeratingWithState:&v292 objects:v352 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v293;
      do
      {
        for (i1 = 0; i1 != v90; ++i1)
        {
          if (*v293 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v292 + 1) + 8 * i1);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) activeRemoteParticipantsChangedForConversation:v93];
          }

          if (objc_opt_respondsToSelector())
          {
            v94 = *(a1 + 56);
            v95 = [v93 groupUUID];
            v96 = [v94 objectForKeyedSubscript:v95];

            [*(a1 + 32) conversationManager:*(a1 + 40) activeRemoteParticipantsChangedForConversation:v93 fromOldConversation:v96];
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v292 objects:v352 count:16];
      }

      while (v90);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v290 = 0u;
    v291 = 0u;
    v288 = 0u;
    v289 = 0u;
    v97 = *(a1 + 136);
    v98 = [v97 countByEnumeratingWithState:&v288 objects:v351 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v289;
      do
      {
        for (i2 = 0; i2 != v99; ++i2)
        {
          if (*v289 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v102 = *(*(&v288 + 1) + 8 * i2);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) oneToOneModeChangedForConversation:v102];
          }

          if (objc_opt_respondsToSelector())
          {
            v103 = *(a1 + 56);
            v104 = [v102 groupUUID];
            v105 = [v103 objectForKeyedSubscript:v104];

            [*(a1 + 32) conversationManager:*(a1 + 40) oneToOneModeChangedForConversation:v102 fromOldConversation:v105];
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v288 objects:v351 count:16];
      }

      while (v99);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v286 = 0u;
    v287 = 0u;
    v284 = 0u;
    v285 = 0u;
    v106 = *(a1 + 144);
    v107 = [v106 countByEnumeratingWithState:&v284 objects:v350 count:16];
    if (v107)
    {
      v108 = v107;
      v109 = *v285;
      do
      {
        for (i3 = 0; i3 != v108; ++i3)
        {
          if (*v285 != v109)
          {
            objc_enumerationMutation(v106);
          }

          v111 = *(*(&v284 + 1) + 8 * i3);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) avModeChangedForConversation:v111];
          }

          if (objc_opt_respondsToSelector())
          {
            v112 = *(a1 + 56);
            v113 = [v111 groupUUID];
            v114 = [v112 objectForKeyedSubscript:v113];

            [*(a1 + 32) conversationManager:*(a1 + 40) avModeChangedForConversation:v111 fromOldConversation:v114];
          }
        }

        v108 = [v106 countByEnumeratingWithState:&v284 objects:v350 count:16];
      }

      while (v108);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v282 = 0u;
    v283 = 0u;
    v280 = 0u;
    v281 = 0u;
    v115 = *(a1 + 152);
    v116 = [v115 countByEnumeratingWithState:&v280 objects:v349 count:16];
    if (v116)
    {
      v117 = v116;
      v118 = *v281;
      do
      {
        for (i4 = 0; i4 != v117; ++i4)
        {
          if (*v281 != v118)
          {
            objc_enumerationMutation(v115);
          }

          v120 = *(*(&v280 + 1) + 8 * i4);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) presentationContextChangedForConversation:v120];
          }

          if (objc_opt_respondsToSelector())
          {
            v121 = *(a1 + 56);
            v122 = [v120 groupUUID];
            v123 = [v121 objectForKeyedSubscript:v122];

            [*(a1 + 32) conversationManager:*(a1 + 40) presentationContextChangedForConversation:v120 fromOldConversation:v123];
          }
        }

        v117 = [v115 countByEnumeratingWithState:&v280 objects:v349 count:16];
      }

      while (v117);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    v124 = *(a1 + 160);
    v125 = [v124 countByEnumeratingWithState:&v276 objects:v348 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v277;
      do
      {
        for (i5 = 0; i5 != v126; ++i5)
        {
          if (*v277 != v127)
          {
            objc_enumerationMutation(v124);
          }

          v129 = *(*(&v276 + 1) + 8 * i5);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) resolvedAudioVideoModeChangedForConversation:v129];
          }

          if (objc_opt_respondsToSelector())
          {
            v130 = *(a1 + 56);
            v131 = [v129 groupUUID];
            v132 = [v130 objectForKeyedSubscript:v131];

            [*(a1 + 32) conversationManager:*(a1 + 40) resolvedAudioVideoModeChangedForConversation:v129 fromOldConversation:v132];
          }
        }

        v126 = [v124 countByEnumeratingWithState:&v276 objects:v348 count:16];
      }

      while (v126);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v133 = *(a1 + 168);
    v134 = [v133 countByEnumeratingWithState:&v272 objects:v347 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v273;
      do
      {
        for (i6 = 0; i6 != v135; ++i6)
        {
          if (*v273 != v136)
          {
            objc_enumerationMutation(v133);
          }

          v138 = *(*(&v272 + 1) + 8 * i6);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) activitySessionsChangedForConversation:v138];
          }

          if (objc_opt_respondsToSelector())
          {
            v139 = *(a1 + 56);
            v140 = [v138 groupUUID];
            v141 = [v139 objectForKeyedSubscript:v140];

            [*(a1 + 32) conversationManager:*(a1 + 40) activitySessionsChangedForConversation:v138 fromOldConversation:v141];
          }
        }

        v135 = [v133 countByEnumeratingWithState:&v272 objects:v347 count:16];
      }

      while (v135);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v142 = *(a1 + 176);
    v143 = [v142 countByEnumeratingWithState:&v268 objects:v346 count:16];
    if (v143)
    {
      v144 = v143;
      v145 = *v269;
      do
      {
        for (i7 = 0; i7 != v144; ++i7)
        {
          if (*v269 != v145)
          {
            objc_enumerationMutation(v142);
          }

          v147 = *(*(&v268 + 1) + 8 * i7);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) linkChangedForConversation:v147];
          }

          if (objc_opt_respondsToSelector())
          {
            v148 = *(a1 + 56);
            v149 = [v147 groupUUID];
            v150 = [v148 objectForKeyedSubscript:v149];

            [*(a1 + 32) conversationManager:*(a1 + 40) linkChangedForConversation:v147 fromOldConversation:v150];
          }
        }

        v144 = [v142 countByEnumeratingWithState:&v268 objects:v346 count:16];
      }

      while (v144);
    }
  }

  v151 = objc_opt_respondsToSelector();
  v152 = objc_opt_respondsToSelector();
  v153 = v152;
  if (v151 & 1) != 0 || (v152)
  {
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v154 = *(a1 + 184);
    v155 = [v154 countByEnumeratingWithState:&v264 objects:v345 count:16];
    if (v155)
    {
      v156 = v155;
      v157 = *v265;
      do
      {
        for (i8 = 0; i8 != v156; ++i8)
        {
          if (*v265 != v157)
          {
            objc_enumerationMutation(v154);
          }

          v159 = *(*(&v264 + 1) + 8 * i8);
          if (v151)
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) linkInvitedMemberHandlesChangedForConversation:*(*(&v264 + 1) + 8 * i8)];
          }

          if (v153)
          {
            v160 = *(a1 + 56);
            v161 = [v159 groupUUID];
            v162 = [v160 objectForKeyedSubscript:v161];

            [*(a1 + 32) conversationManager:*(a1 + 40) linkInvitedMemberHandlesChangedForConversation:v159 fromOldConversation:v162];
          }
        }

        v156 = [v154 countByEnumeratingWithState:&v264 objects:v345 count:16];
      }

      while (v156);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v163 = *(a1 + 192);
    v164 = [v163 countByEnumeratingWithState:&v260 objects:v344 count:16];
    if (v164)
    {
      v165 = v164;
      v166 = *v261;
      do
      {
        for (i9 = 0; i9 != v165; ++i9)
        {
          if (*v261 != v166)
          {
            objc_enumerationMutation(v163);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) removedActiveConversation:*(*(&v260 + 1) + 8 * i9)];
        }

        v165 = [v163 countByEnumeratingWithState:&v260 objects:v344 count:16];
      }

      while (v165);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v168 = *(a1 + 200);
    v169 = [v168 countByEnumeratingWithState:&v256 objects:v343 count:16];
    if (v169)
    {
      v170 = v169;
      v171 = *v257;
      do
      {
        for (i10 = 0; i10 != v170; ++i10)
        {
          if (*v257 != v171)
          {
            objc_enumerationMutation(v168);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) addedActiveConversation:*(*(&v256 + 1) + 8 * i10)];
        }

        v170 = [v168 countByEnumeratingWithState:&v256 objects:v343 count:16];
      }

      while (v170);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v173 = *(a1 + 208);
    v174 = [v173 countByEnumeratingWithState:&v252 objects:v342 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v253;
      do
      {
        for (i11 = 0; i11 != v175; ++i11)
        {
          if (*v253 != v176)
          {
            objc_enumerationMutation(v173);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) ignoreLMIRequestsChangedForConversation:*(*(&v252 + 1) + 8 * i11)];
        }

        v175 = [v173 countByEnumeratingWithState:&v252 objects:v342 count:16];
      }

      while (v175);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v178 = *(a1 + 216);
    v179 = [v178 countByEnumeratingWithState:&v248 objects:v341 count:16];
    if (v179)
    {
      v180 = v179;
      v181 = *v249;
      do
      {
        for (i12 = 0; i12 != v180; ++i12)
        {
          if (*v249 != v181)
          {
            objc_enumerationMutation(v178);
          }

          v183 = *(*(&v248 + 1) + 8 * i12);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) rejectedMembersChangedForConversation:v183];
          }

          if (objc_opt_respondsToSelector())
          {
            v184 = *(a1 + 56);
            v185 = [v183 groupUUID];
            v186 = [v184 objectForKeyedSubscript:v185];

            [*(a1 + 32) conversationManager:*(a1 + 40) rejectedMembersChangedForConversation:v183 fromOldConversation:v186];
          }
        }

        v180 = [v178 countByEnumeratingWithState:&v248 objects:v341 count:16];
      }

      while (v180);
    }
  }

  if (*(a1 + 224) && *(a1 + 232) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) conversationManager:*(a1 + 40) handoffEligibilityChangedToConversation:*(a1 + 224) fromPreviousConversation:*(a1 + 232)];
  }

  else if (objc_opt_respondsToSelector())
  {
    if (*(a1 + 224))
    {
      [*(a1 + 32) conversationManager:*(a1 + 40) handoffEligibilityChangedForConversation:?];
    }

    if (*(a1 + 232))
    {
      [*(a1 + 32) conversationManager:*(a1 + 40) handoffEligibilityChangedForConversation:?];
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v187 = *(a1 + 240);
    v188 = [v187 countByEnumeratingWithState:&v244 objects:v340 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v245;
      do
      {
        for (i13 = 0; i13 != v189; ++i13)
        {
          if (*v245 != v190)
          {
            objc_enumerationMutation(v187);
          }

          v192 = *(*(&v244 + 1) + 8 * i13);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) systemActivitySessionsChangedForConversation:v192];
          }

          if (objc_opt_respondsToSelector())
          {
            v193 = *(a1 + 56);
            v194 = [v192 groupUUID];
            v195 = [v193 objectForKeyedSubscript:v194];

            [*(a1 + 32) conversationManager:*(a1 + 40) systemActivitySessionsChangedForConversation:v192 fromOldConversation:v195];
          }
        }

        v189 = [v187 countByEnumeratingWithState:&v244 objects:v340 count:16];
      }

      while (v189);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v242 = 0u;
    v243 = 0u;
    v240 = 0u;
    v241 = 0u;
    v196 = *(a1 + 248);
    v197 = [v196 countByEnumeratingWithState:&v240 objects:v339 count:16];
    if (v197)
    {
      v198 = v197;
      v199 = *v241;
      do
      {
        for (i14 = 0; i14 != v198; ++i14)
        {
          if (*v241 != v199)
          {
            objc_enumerationMutation(v196);
          }

          v201 = *(*(&v240 + 1) + 8 * i14);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) cameraMixedWithScreenDidChangeForConversation:v201];
          }

          if (objc_opt_respondsToSelector())
          {
            v202 = *(a1 + 56);
            v203 = [v201 groupUUID];
            v204 = [v202 objectForKeyedSubscript:v203];

            [*(a1 + 32) conversationManager:*(a1 + 40) cameraMixedWithScreenDidChangeForConversation:v201 fromOldConversation:v204];
          }
        }

        v198 = [v196 countByEnumeratingWithState:&v240 objects:v339 count:16];
      }

      while (v198);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v205 = *(a1 + 256);
    v206 = [v205 countByEnumeratingWithState:&v236 objects:v338 count:16];
    if (v206)
    {
      v207 = v206;
      v208 = *v237;
      do
      {
        for (i15 = 0; i15 != v207; ++i15)
        {
          if (*v237 != v208)
          {
            objc_enumerationMutation(v205);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) screeningChangedForConversation:*(*(&v236 + 1) + 8 * i15)];
        }

        v207 = [v205 countByEnumeratingWithState:&v236 objects:v338 count:16];
      }

      while (v207);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v210 = *(a1 + 264);
    v211 = [v210 countByEnumeratingWithState:&v232 objects:v337 count:16];
    if (v211)
    {
      v212 = v211;
      v213 = *v233;
      do
      {
        for (i16 = 0; i16 != v212; ++i16)
        {
          if (*v233 != v213)
          {
            objc_enumerationMutation(v210);
          }

          v215 = *(*(&v232 + 1) + 8 * i16);
          v216 = *(a1 + 56);
          v217 = [v215 groupUUID];
          v218 = [v216 objectForKeyedSubscript:v217];

          [*(a1 + 32) conversationManager:*(a1 + 40) screenSharingRequestsChangedForConversation:v215 fromOldConversation:v218];
        }

        v212 = [v210 countByEnumeratingWithState:&v232 objects:v337 count:16];
      }

      while (v212);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    v219 = *(a1 + 272);
    v220 = [v219 countByEnumeratingWithState:&v228 objects:v336 count:16];
    if (v220)
    {
      v221 = v220;
      v222 = *v229;
      do
      {
        for (i17 = 0; i17 != v221; ++i17)
        {
          if (*v229 != v222)
          {
            objc_enumerationMutation(v219);
          }

          v224 = *(*(&v228 + 1) + 8 * i17);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) localParticipantClusterDidChangeForConversation:{v224, v228}];
          }

          if (objc_opt_respondsToSelector())
          {
            v225 = *(a1 + 56);
            v226 = [v224 groupUUID];
            v227 = [v225 objectForKeyedSubscript:v226];

            [*(a1 + 32) conversationManager:*(a1 + 40) localParticipantClusterDidChangeForConversation:v224 fromOldConversation:v227];
          }
        }

        v221 = [v219 countByEnumeratingWithState:&v228 objects:v336 count:16];
      }

      while (v221);
    }
  }
}

- (void)serverDisconnectedForDataSource:(id)source oldConversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(TUConversationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Removing conversationsNotBackedByGroupSessions since dataSource got disconnected", buf, 2u);
  }

  v3 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
  [v3 removeAllObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 32) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke_267;
        block[3] = &unk_1E7424FD8;
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        block[4] = v8;
        block[5] = v11;
        v15 = v12;
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }
}

void __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke_267(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) serverDisconnectedForConversationManager:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [*(a1 + 48) allValues];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) removedActiveConversation:*(*(&v7 + 1) + 8 * v6++)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)conversation:(id)conversation participant:(id)participant addedNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  queue = [(TUConversationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__TUConversationManager_conversation_participant_addedNotice___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = conversationCopy;
  v17 = participantCopy;
  v18 = noticeCopy;
  v12 = noticeCopy;
  v13 = participantCopy;
  v14 = conversationCopy;
  dispatch_async(queue, v15);
}

void __62__TUConversationManager_conversation_participant_addedNotice___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__TUConversationManager_conversation_participant_addedNotice___block_invoke_2;
        block[3] = &unk_1E7426C18;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

uint64_t __62__TUConversationManager_conversation_participant_addedNotice___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];

    return [v3 conversationManager:v4 conversation:v5 participant:v6 addedNotice:v7];
  }

  return result;
}

- (void)activeParticipant:(id)participant addedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier isFirstAdd:(BOOL)add
{
  addCopy = add;
  highlightIdentifierCopy = highlightIdentifier;
  identifierCopy = identifier;
  conversationCopy = conversation;
  participantCopy = participant;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  [collaborationManager participant:participantCopy addedHighlightToConversation:conversationCopy highlightIdentifier:identifierCopy oldHighlightIdentifier:highlightIdentifierCopy isFirstAdd:addCopy];
}

- (void)activeParticipant:(id)participant removedHighlightFromConversation:(id)conversation highlightIdentifier:(id)identifier
{
  identifierCopy = identifier;
  conversationCopy = conversation;
  participantCopy = participant;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  [collaborationManager participant:participantCopy removedHighlightFromConversation:conversationCopy highlightIdentifier:identifierCopy];
}

- (void)conversation:(id)conversation participant:(id)participant addedCollaborationNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  queue = [(TUConversationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = conversationCopy;
  v17 = participantCopy;
  v18 = noticeCopy;
  v12 = noticeCopy;
  v13 = participantCopy;
  v14 = conversationCopy;
  dispatch_async(queue, v15);
}

void __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke_2;
        block[3] = &unk_1E7426C18;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

uint64_t __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];

    return [v3 conversationManager:v4 conversation:v5 participant:v6 addedCollaborationNotice:v7];
  }

  return result;
}

- (void)conversation:(id)conversation collaborationStateChanged:(int64_t)changed highlightIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = TUDefaultLog(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "TUConversationManager received collaborationStateChanged : %lu", &v10, 0xCu);
  }

  collaborationManager = [(TUConversationManager *)self collaborationManager];
  [collaborationManager setCollaborationState:changed forCollaborationIdentifier:identifierCopy];
}

- (void)addedCollaborationDictionary:(id)dictionary forConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = TUDefaultLog(dictionaryCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dictionaryCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Received collaboration dictionary: %@", &v10, 0xCu);
  }

  collaborationManager = [(TUConversationManager *)self collaborationManager];
  collaborationProvider = [collaborationManager collaborationProvider];
  v9 = [collaborationProvider addTemporaryCollaboration:dictionaryCopy];
}

- (void)conversation:(id)conversation addedMembersLocally:(id)locally
{
  conversationCopy = conversation;
  locallyCopy = locally;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TUConversationManager_conversation_addedMembersLocally___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = locallyCopy;
  v9 = locallyCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __58__TUConversationManager_conversation_addedMembersLocally___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__TUConversationManager_conversation_addedMembersLocally___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __58__TUConversationManager_conversation_addedMembersLocally___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 conversation:v5 addedMembersLocally:v6];
  }

  return result;
}

- (void)conversation:(id)conversation buzzedMember:(id)member
{
  conversationCopy = conversation;
  memberCopy = member;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUConversationManager_conversation_buzzedMember___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = memberCopy;
  v9 = memberCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __51__TUConversationManager_conversation_buzzedMember___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__TUConversationManager_conversation_buzzedMember___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __51__TUConversationManager_conversation_buzzedMember___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 conversation:v5 buzzedMember:v6];
  }

  return result;
}

- (void)conversationsChangedForDataSource:(id)source updatedIncomingPendingConversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(TUConversationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

void __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke_2(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) allValues];
    [v2 conversationManager:v3 updatedIncomingPendingConversations:v4];
  }
}

- (void)conversationUpdatedMessagesGroupPhoto:(id)photo
{
  photoCopy = photo;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = photoCopy;
  v6 = photoCopy;
  dispatch_async(queue, v7);
}

void __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

void __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke_2(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = [v4 messagesGroupPhotoData];
    [v2 conversationManager:v3 conversation:v4 updatedMessagesGroupPhoto:v5];
  }
}

- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 conversation:v5 didChangeStateForActivitySession:v6];
  }

  return result;
}

- (void)didChangeConversationAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = advertisementCopy;
  selfCopy = self;
  v6 = advertisementCopy;
  dispatch_async(queue, v7);
}

void __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager didChangeConversationAdvertisement %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 40) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 40) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke_284;
        block[3] = &unk_1E7424FD8;
        block[4] = v8;
        v13 = *(a1 + 32);
        v11 = v13.i64[0];
        v15 = vextq_s8(v13, v13, 8uLL);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

uint64_t __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke_284(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 didChangeConversationAdvertisement:v5];
  }

  return result;
}

- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 conversation:v5 didChangeSceneAssociationForActivitySession:v6];
  }

  return result;
}

- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = eventCopy;
  v9 = eventCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 conversation:v5 receivedActivitySessionEvent:v6];
  }

  return result;
}

- (void)conversationManagerDataSource:(id)source didChangeActivatedConversationLinks:(id)links
{
  linksCopy = links;
  queue = [(TUConversationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = linksCopy;
  v7 = linksCopy;
  dispatch_async(queue, v8);
}

void __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegateToQueue];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v2 objectForKey:v7];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v7;
        block[5] = v9;
        v12 = v10;
        dispatch_async(v8, block);
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 didChangeActivatedLinks:v5];
  }

  return result;
}

- (void)conversationManagerDataSource:(id)source messagesGroupDetailsForMessagesGroupId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v13 = idCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = idCopy;
  dispatch_async(queue, block);
}

void __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) messagesGroupProvider];
  v3 = v2;
  if (v2)
  {
    [v2 getMessagesGroupDetailsForGroupId:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v4 = TUDefaultLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"No messages group details provider available";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v11 errorWithDomain:@"TUConversationManagerMessagesErrorDomain" code:1 userInfo:v12];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource fetchUpcomingNoticeWithCompletionHandler:handlerCopy];
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v8 = TUDefaultLog(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = lCopy;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "activateConversationNoticeWithActionURL: %@ bundleID %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource activateConversationNoticeWithActionURL:lCopy bundleIdentifier:identifierCopy];
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = TUDefaultLog(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = dCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "UUID: %@", &v7, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource removeConversationNoticeWithUUID:dCopy];
}

- (void)conversationManagerDataSource:(id)source conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(TUConversationManager *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke;
  v14[3] = &unk_1E7424D50;
  v15 = sessionCopy;
  v16 = conversationCopy;
  selfCopy = self;
  stateCopy = state;
  v12 = conversationCopy;
  v13 = sessionCopy;
  dispatch_async(queue, v14);
}

void __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v26 = v3;
    v27 = 2112;
    v28 = v4;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager app launch state %@ session %@ conversation %@", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [*(a1 + 48) delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [*(a1 + 48) delegateToQueue];
        v12 = [v11 objectForKey:v10];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke_297;
        block[3] = &unk_1E7426C40;
        block[4] = v10;
        v15 = *(a1 + 40);
        v13 = v15.i64[0];
        v17 = vextq_s8(v15, v15, 8uLL);
        v19 = *(a1 + 56);
        v18 = *(a1 + 32);
        dispatch_async(v12, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

uint64_t __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke_297(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = a1[7];
    v5 = a1[8];
    v7 = a1[6];

    return [v3 conversationManager:v4 conversation:v7 launchStateChanged:v5 forActivitySession:v6];
  }

  return result;
}

- (void)receivedTrackedPendingMember:(id)member forConversationLink:(id)link
{
  memberCopy = member;
  linkCopy = link;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = memberCopy;
  v13 = linkCopy;
  selfCopy = self;
  v9 = linkCopy;
  v10 = memberCopy;
  dispatch_async(queue, block);
}

void __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager receivedTrackedPendingMember %@ forConversationLink %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [a1[6] delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [a1[6] delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke_300;
        block[3] = &unk_1E7425188;
        v12 = a1[6];
        block[4] = v9;
        block[5] = v12;
        v15 = a1[4];
        v16 = a1[5];
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

uint64_t __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke_300(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 trackedPendingMember:v5 forConversationLink:v6];
  }

  return result;
}

- (void)conversation:(id)conversation screenSharingChangedForParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = participantCopy;
  v9 = participantCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 conversationManager:v4 conversation:v5 screenSharingChangedForParticipant:v6];
  }

  return result;
}

- (void)remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing
{
  changedCopy = changed;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke;
  block[3] = &unk_1E7425B78;
  sharingCopy = sharing;
  v10 = changedCopy;
  selfCopy = self;
  v8 = changedCopy;
  dispatch_async(queue, block);
}

void __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager remoteScreenShareAttributesChanged %@, isLocallySharing: %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 40) delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [*(a1 + 40) delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke_305;
        block[3] = &unk_1E7425C80;
        block[4] = v9;
        v14 = *(a1 + 32);
        v12 = v14.i64[0];
        v16 = vextq_s8(v14, v14, 8uLL);
        v17 = *(a1 + 48);
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

uint64_t __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke_305(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 conversationManager:v4 remoteScreenShareAttributesChanged:v5 isLocallySharing:v6];
  }

  return result;
}

- (void)remoteScreenShareEndedWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
}

void __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager remoteScreenShareEndedWithReason: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 40) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 40) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke_308;
        block[3] = &unk_1E7424FD8;
        block[4] = v8;
        v13 = *(a1 + 32);
        v11 = v13.i64[0];
        v15 = vextq_s8(v13, v13, 8uLL);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

uint64_t __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke_308(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 remoteScreenShareEndedWithReason:v5];
  }

  return result;
}

- (void)sharePlayAvailableChanged:(BOOL)changed
{
  queue = [(TUConversationManager *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TUConversationManager_sharePlayAvailableChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  changedCopy = changed;
  v6[4] = self;
  dispatch_async(queue, v6);
}

void __51__TUConversationManager_sharePlayAvailableChanged___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 67109120;
    v21 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager sharePlayAvailable: %d", buf, 8u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [*(a1 + 32) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__TUConversationManager_sharePlayAvailableChanged___block_invoke_311;
        block[3] = &unk_1E7425B78;
        v11 = *(a1 + 32);
        block[4] = v8;
        block[5] = v11;
        v14 = *(a1 + 40);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

uint64_t __51__TUConversationManager_sharePlayAvailableChanged___block_invoke_311(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 conversationManager:v4 sharePlayAvailableChanged:v5];
  }

  return result;
}

- (void)screenSharingAvailableChanged:(BOOL)changed
{
  queue = [(TUConversationManager *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__TUConversationManager_screenSharingAvailableChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  changedCopy = changed;
  v6[4] = self;
  dispatch_async(queue, v6);
}

void __55__TUConversationManager_screenSharingAvailableChanged___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 67109120;
    v21 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager screenSharingAvailable: %d", buf, 8u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [*(a1 + 32) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__TUConversationManager_screenSharingAvailableChanged___block_invoke_314;
        block[3] = &unk_1E7425B78;
        v11 = *(a1 + 32);
        block[4] = v8;
        block[5] = v11;
        v14 = *(a1 + 40);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

uint64_t __55__TUConversationManager_screenSharingAvailableChanged___block_invoke_314(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 conversationManager:v4 screenSharingAvailableChanged:v5];
  }

  return result;
}

- (void)activityAuthorizationsChangedForDataSource:(id)source oldActivityAuthorizedBundleIdentifiers:(id)identifiers
{
  sourceCopy = source;
  identifiersCopy = identifiers;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = sourceCopy;
  v13 = identifiersCopy;
  selfCopy = self;
  v9 = identifiersCopy;
  v10 = sourceCopy;
  dispatch_async(queue, block);
}

void __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] activityAuthorizedBundleIdentifiers];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1[5]];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [a1[5] objectForKeyedSubscript:v9];
        if ([v11 isEqual:v10])
        {
          [v3 removeObjectForKey:v9];
        }

        else
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [a1[6] delegateToQueue];
  v12 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v17 = [a1[6] delegateToQueue];
        v18 = [v17 objectForKey:v16];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        block[4] = v16;
        v19 = v3;
        v20 = a1[6];
        v23 = v19;
        v24 = v20;
        dispatch_async(v18, block);
      }

      v13 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }
}

void __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(a1 + 32) conversationManager:*(a1 + 48) changedActivityAuthorizationForBundleIdentifier:{*(*(&v7 + 1) + 8 * v6++), v7}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)collaborationChanged:(id)changed forConversation:(id)conversation collaborationState:(int64_t)state
{
  v24 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  conversationCopy = conversation;
  v10 = TUDefaultLog(conversationCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    collaborationIdentifier = [changedCopy collaborationIdentifier];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    *buf = 138412546;
    v21 = collaborationIdentifier;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate of collaboration changed %@ with document state %@", buf, 0x16u);
  }

  queue = [(TUConversationManager *)self queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke;
  v16[3] = &unk_1E7424D50;
  v16[4] = self;
  v17 = changedCopy;
  v18 = conversationCopy;
  stateCopy = state;
  v14 = conversationCopy;
  v15 = changedCopy;
  dispatch_async(queue, v16);
}

void __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke_2;
        block[3] = &unk_1E7426C40;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v15 = v10;
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v16 = v11;
        v17 = v12;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }
}

uint64_t __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v6 = a1[7];
      v7 = a1[8];

      return [v3 conversationManager:v4 collaborationChanged:v5 forConversation:v6 collaborationState:v7];
    }
  }

  return result;
}

- (id)collaborationForConversation:(id)conversation
{
  conversationCopy = conversation;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  v6 = [collaborationManager collaborationForConversation:conversationCopy];

  return v6;
}

- (int64_t)collaborationStateForConversation:(id)conversation
{
  conversationCopy = conversation;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  v6 = [collaborationManager collaborationStateForConversation:conversationCopy];

  return v6;
}

- (void)setNonSessionBackedConversationCreationQueue:(id)queue
{
  queueCopy = queue;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__TUConversationManager_setNonSessionBackedConversationCreationQueue___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)callPropertiesChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    if (object2)
    {
      v7 = object2;
      [(TUConversationManager *)self updateConversationsNotBackedByGroupSessionWithCall:object2];
    }
  }
}

- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call
{
  callCopy = call;
  if ([(TUConversationManager *)self nonSessionBackedConversationCreationMode])
  {
    queue = [(TUConversationManager *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall___block_invoke;
    v6[3] = &unk_1E7424898;
    v6[4] = self;
    v7 = callCopy;
    dispatch_async(queue, v6);
  }
}

void __76__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nonSessionBackedConversationCreationQueue];
  if (v2)
  {
    v6 = v2;
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 conversationsByGroupUUID];
    v5 = [v4 copy];

    [*(a1 + 32) updateConversationsNotBackedByGroupSessionWithCall:*(a1 + 40) conversationsByGroupUUID:v5 creationQueue:v6];
    v2 = v6;
  }
}

- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call conversationsByGroupUUID:(id)d creationQueue:(id)queue
{
  callCopy = call;
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v13 = callCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = callCopy;
  dispatch_async(queue, block);
}

void __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) createConversationForCallNotBackedByGroupSession:*(a1 + 40)];
  v57 = a1;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count") + 1}];
    if ([v4 state])
    {
      [v5 addObject:v4];
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v54 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v67;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v67 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v66 + 1) + 8 * i);
          v12 = [v11 groupUUID];
          v13 = [v4 groupUUID];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v8);
    }

    [*(v57 + 32) setConversationsNotBackedByGroupSessions:v5];
    v15 = [*(v57 + 48) mutableCopy];
    v16 = [*(v57 + 48) mutableCopy];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v63;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v62 + 1) + 8 * j);
          v23 = [v22 groupUUID];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v19);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v24 = [*(v57 + 32) conversationsNotBackedByGroupSessions];
    v25 = [v24 countByEnumeratingWithState:&v58 objects:v77 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v59;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v59 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v58 + 1) + 8 * k);
          v30 = [v29 groupUUID];
          [v16 setObject:v29 forKeyedSubscript:v30];
        }

        v26 = [v24 countByEnumeratingWithState:&v58 objects:v77 count:16];
      }

      while (v26);
    }

    [*(v57 + 32) conversationsChangedFromOldConversationsByGroupUUID:v15 newConversationsByGroupUUID:v16];
    goto LABEL_28;
  }

  v31 = objc_opt_class();
  v32 = [*(a1 + 40) uniqueProxyIdentifierUUID];
  v5 = [v31 conversationWithUUID:v32 fromConversations:v3];

  v33 = [*(a1 + 40) isConversation];
  if (v33 && v5)
  {
    v34 = TUDefaultLog(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 40);
      *buf = 138412290;
      v82 = v35;
      _os_log_impl(&dword_1956FD000, v34, OS_LOG_TYPE_DEFAULT, "Adding call %@ to calls pending upgrade to session-backed architecture", buf, 0xCu);
    }

    v36 = [*(a1 + 32) callsNotBackedByGroupSessionsPendingUpgrade];
    [v36 addObject:*(a1 + 40)];

    v37 = *(a1 + 32);
    v15 = [v37 dataSource];
    v16 = [*(a1 + 32) dataSource];
    v38 = [v16 conversationsByGroupUUID];
    [v37 conversationsChangedForDataSource:v15 conversationsByGroupUUID:v38 oldConversationsByGroupUUID:*(a1 + 48)];

    goto LABEL_34;
  }

  if (([*(a1 + 40) isVideo] & 1) == 0 && objc_msgSend(*(a1 + 32), "nonSessionBackedConversationCreationMode") == 1)
  {
    v39 = objc_opt_class();
    v40 = [*(a1 + 40) uniqueProxyIdentifierUUID];
    v41 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
    v15 = [v39 conversationWithUUID:v40 fromConversations:v41];

    if (!v15)
    {
      goto LABEL_35;
    }

    v43 = TUDefaultLog(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v15 UUID];
      *buf = 138412290;
      v82 = v44;
      _os_log_impl(&dword_1956FD000, v43, OS_LOG_TYPE_DEFAULT, "Call downgraded to isVideo=NO, but sessionCreationMode=.faceTimeVideo, and we already made a fake TUConversation, removing it now: %@", buf, 0xCu);
    }

    v45 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
    [v45 removeObject:v15];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v16 = [*(a1 + 32) delegateToQueue];
    v46 = [v16 countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (!v46)
    {
LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    v47 = v46;
    v56 = *v74;
    v54 = v3;
    v55 = v71;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v74 != v56)
        {
          objc_enumerationMutation(v16);
        }

        v49 = *(*(&v73 + 1) + 8 * m);
        v50 = [*(a1 + 32) delegateToQueue];
        v51 = [v50 objectForKey:v49];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        v71[0] = __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke_323;
        v71[1] = &unk_1E7424FD8;
        v52 = *(a1 + 32);
        v71[2] = v49;
        v71[3] = v52;
        v53 = v15;
        v72 = v53;
        dispatch_async(v51, block);
      }

      v47 = [v16 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v47);
    v15 = v53;
LABEL_28:
    v3 = v54;
    goto LABEL_34;
  }

LABEL_36:
}

uint64_t __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke_323(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 removedActiveConversation:v5];
  }

  return result;
}

- (void)pruneConversationsPendingUpgradeInConversationsWithGroupUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nonSessionBackedConversationCreationQueue = [(TUConversationManager *)self nonSessionBackedConversationCreationQueue];
  dispatch_assert_queue_V2(nonSessionBackedConversationCreationQueue);

  v6 = [(TUConversationManager *)self callPendingUpgradeInConversationsWithGroupUUID:dCopy];

  v7 = objc_opt_class();
  uniqueProxyIdentifierUUID = [v6 uniqueProxyIdentifierUUID];
  conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
  v10 = [v7 conversationWithUUID:uniqueProxyIdentifierUUID fromConversations:conversationsNotBackedByGroupSessions];

  if (v10)
  {
    v12 = TUDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Stopping tracking conversation not backed by session %@ since it is now backed by session", &v15, 0xCu);
    }

    conversationsNotBackedByGroupSessions2 = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
    [conversationsNotBackedByGroupSessions2 removeObject:v10];

    callsNotBackedByGroupSessionsPendingUpgrade = [(TUConversationManager *)self callsNotBackedByGroupSessionsPendingUpgrade];
    [callsNotBackedByGroupSessionsPendingUpgrade removeObject:v6];
  }
}

- (id)callPendingUpgradeInConversationsWithGroupUUID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nonSessionBackedConversationCreationQueue = [(TUConversationManager *)self nonSessionBackedConversationCreationQueue];
  dispatch_assert_queue_V2(nonSessionBackedConversationCreationQueue);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(TUConversationManager *)self callsNotBackedByGroupSessionsPendingUpgrade];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v22 = 0;
    v19 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        allValues = [dCopy allValues];
        v8 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(allValues);
              }

              v12 = *(*(&v23 + 1) + 8 * j);
              v13 = [objc_opt_class() remoteMembersForCall:v6];
              if ([v12 isRepresentedByRemoteMembers:v13 andLink:0])
              {
                isVideo = [v12 isVideo];
                isVideo2 = [v6 isVideo];

                if (isVideo == isVideo2)
                {
                  v16 = v6;

                  v22 = v16;
                  goto LABEL_17;
                }
              }

              else
              {
              }
            }

            v9 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }

LABEL_17:
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)createConversationForCallNotBackedByGroupSession:(id)session
{
  v40 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  nonSessionBackedConversationCreationQueue = [(TUConversationManager *)self nonSessionBackedConversationCreationQueue];
  dispatch_assert_queue_V2(nonSessionBackedConversationCreationQueue);

  if (!sessionCopy || ([sessionCopy isConversation] & 1) != 0 || (objc_msgSend(sessionCopy, "isVideo") & 1) == 0 && -[TUConversationManager nonSessionBackedConversationCreationMode](self, "nonSessionBackedConversationCreationMode") == 1)
  {
    goto LABEL_3;
  }

  provider = [sessionCopy provider];
  if (([provider isFaceTimeProvider] & 1) == 0)
  {
    provider2 = [sessionCopy provider];
    if ([provider2 isSuperboxProvider])
    {

      goto LABEL_9;
    }

    nonSessionBackedConversationCreationMode = [(TUConversationManager *)self nonSessionBackedConversationCreationMode];

    if (nonSessionBackedConversationCreationMode == 3)
    {
      goto LABEL_10;
    }

LABEL_3:
    v6 = 0;
    goto LABEL_24;
  }

LABEL_9:

LABEL_10:
  v9 = objc_opt_class();
  uniqueProxyIdentifierUUID = [sessionCopy uniqueProxyIdentifierUUID];
  conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
  v12 = [v9 conversationWithUUID:uniqueProxyIdentifierUUID fromConversations:conversationsNotBackedByGroupSessions];
  groupUUID = [v12 groupUUID];

  provider3 = [sessionCopy provider];
  if ([provider3 isFaceTimeProvider])
  {
    +[TUConversationProvider faceTimeProvider];
  }

  else
  {
    +[TUConversationProvider unknownProvider];
  }
  v15 = ;

  v16 = [TUMutableConversation alloc];
  uniqueProxyIdentifierUUID2 = [sessionCopy uniqueProxyIdentifierUUID];
  if (groupUUID)
  {
    v18 = [(TUConversation *)v16 initWithUUID:uniqueProxyIdentifierUUID2 groupUUID:groupUUID provider:v15];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v18 = [(TUConversation *)v16 initWithUUID:uniqueProxyIdentifierUUID2 groupUUID:uUID provider:v15];
  }

  -[TUConversation setVideo:](v18, "setVideo:", [sessionCopy isVideo]);
  -[TUConversation setState:](v18, "setState:", [objc_opt_class() conversationStateForCall:sessionCopy]);
  v20 = [objc_opt_class() remoteMembersForCall:sessionCopy];
  [(TUConversation *)v18 setRemoteMembers:v20];

  v21 = objc_opt_class();
  remoteMembers = [(TUConversation *)v18 remoteMembers];
  v23 = [v21 activeRemoteParticipantsForCall:sessionCopy remoteMembers:remoteMembers];
  [(TUConversation *)v18 setActiveRemoteParticipants:v23];

  -[TUConversation setAudioEnabled:](v18, "setAudioEnabled:", [sessionCopy isUplinkMuted]);
  -[TUConversation setVideoEnabled:](v18, "setVideoEnabled:", [sessionCopy isSendingVideo]);
  v24 = [MEMORY[0x1E695DFD8] set];
  [(TUConversation *)v18 setActivitySessions:v24];

  [(TUConversation *)v18 setOneToOneModeEnabled:1];
  [(TUConversation *)v18 setBackedByGroupSession:0];
  -[TUConversation setAvcSessionToken:](v18, "setAvcSessionToken:", [sessionCopy videoStreamToken]);
  if ([sessionCopy isVideo])
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  [(TUConversation *)v18 setAvMode:v25];
  localSenderIdentity = [sessionCopy localSenderIdentity];
  handle = [localSenderIdentity handle];

  if (handle)
  {
    v29 = [TUConversationMember alloc];
    localSenderIdentity2 = [sessionCopy localSenderIdentity];
    handle2 = [localSenderIdentity2 handle];
    v32 = [(TUConversationMember *)v29 initWithHandle:handle2];
    [(TUConversation *)v18 setLocalMember:v32];
  }

  v33 = TUDefaultLog(v28);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412546;
    v37 = v18;
    v38 = 2112;
    v39 = sessionCopy;
    _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Created conversation: %@ for call: %@", &v36, 0x16u);
  }

  v6 = [(TUMutableConversation *)v18 copy];
LABEL_24:

  return v6;
}

+ (int64_t)conversationStateForCall:(id)call
{
  callCopy = call;
  status = [callCopy status];
  if (status <= 2)
  {
    if (status == 1)
    {
      v5 = [callCopy isConnected] == 0;
      v6 = 2;
LABEL_11:
      if (v5)
      {
        v9 = v6;
      }

      else
      {
        v9 = v6 + 1;
      }

      goto LABEL_14;
    }

    v7 = status == 2;
    v8 = 3;
  }

  else
  {
    if ((status - 3) < 2)
    {
      v5 = [callCopy isConnecting] == 0;
      v6 = 1;
      goto LABEL_11;
    }

    v7 = status == 5;
    v8 = 4;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

+ (id)activeRemoteParticipantsForCall:(id)call remoteMembers:(id)members
{
  v31 = *MEMORY[0x1E69E9840];
  callCopy = call;
  membersCopy = members;
  v25 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(membersCopy, "count")}];
  status = [callCopy status];
  if (status <= 4 && ((1 << status) & 0x16) != 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = membersCopy;
    obj = membersCopy;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [TUConversationParticipant alloc];
          handle = [v12 handle];
          v15 = [(TUConversationParticipant *)v13 initWithIdentifier:0 handle:handle];

          -[TUConversationParticipant setStreamToken:](v15, "setStreamToken:", [callCopy videoStreamToken]);
          [(TUConversationParticipant *)v15 setAudioEnabled:1];
          -[TUConversationParticipant setVideoEnabled:](v15, "setVideoEnabled:", [callCopy isVideo]);
          if ([callCopy isVideo])
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          [(TUConversationParticipant *)v15 setAudioVideoMode:v16];
          providerContext = [callCopy providerContext];
          v18 = [providerContext objectForKeyedSubscript:@"TUCallFaceTimeRemoteIDSDestinationKey"];
          [(TUConversationParticipant *)v15 setActiveIDSDestination:v18];

          v19 = objc_alloc_init(TUConversationParticipantCapabilities);
          providerContext2 = [callCopy providerContext];
          v21 = [providerContext2 objectForKeyedSubscript:@"TUCallFaceTimeRemoteMomentsAvailableKey"];
          -[TUConversationParticipantCapabilities setMomentsAvailable:](v19, "setMomentsAvailable:", [v21 BOOLValue]);

          [(TUConversationParticipant *)v15 setCapabilities:v19];
          [v25 addObject:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    membersCopy = v23;
  }

  return v25;
}

+ (id)conversationWithUUID:(id)d fromConversations:(id)conversations
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  conversationsCopy = conversations;
  v7 = [conversationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uUID = [v10 UUID];
        v12 = [uUID isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [conversationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)handoffEligibleConversationForEligibility:(id)eligibility
{
  v25 = *MEMORY[0x1E69E9840];
  eligibilityCopy = eligibility;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  allValues = [conversationsByGroupUUID allValues];

  v9 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(allValues);
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      if ([v14 state])
      {
        goto LABEL_18;
      }

      if (eligibilityCopy && ([eligibilityCopy conversationGroupUUID], conversationsByGroupUUID = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "groupUUID"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(conversationsByGroupUUID, "isEqual:", v3)))
      {
      }

      else
      {
        handoffEligibility = [v14 handoffEligibility];

        if (eligibilityCopy)
        {
        }

        if (!handoffEligibility)
        {
          goto LABEL_14;
        }
      }

      v16 = v14;

      v11 = v16;
LABEL_14:
      if (v10 == ++v13)
      {
        v10 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
        v17 = v11;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }
  }

  v11 = 0;
LABEL_18:
  v17 = 0;
LABEL_19:

  v18 = v17;
  return v17;
}

- (id)joinRequestForApplicableConversationWithHandoffEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v5 = [(TUConversationManager *)self handoffEligibleConversationForEligibility:eligibilityCopy];
  v6 = v5;
  if (v5)
  {
    if (eligibilityCopy)
    {
      handoffEligibility = eligibilityCopy;
    }

    else
    {
      handoffEligibility = [v5 handoffEligibility];
    }

    v9 = handoffEligibility;
    v8 = [[TUJoinConversationRequest alloc] initWithConversation:v6 originatingUIType:43];
    -[TUJoinConversationRequest setAvMode:](v8, "setAvMode:", [v6 avMode]);
    presentationContext = [v6 presentationContext];
    -[TUJoinConversationRequest setPresentationMode:](v8, "setPresentationMode:", [presentationContext mode]);

    if ([v6 avMode] == 2)
    {
      isSendingVideo = [v9 isSendingVideo];
    }

    else
    {
      isSendingVideo = 0;
    }

    [(TUJoinConversationRequest *)v8 setVideoEnabled:isSendingVideo];
    -[TUJoinConversationRequest setUplinkMuted:](v8, "setUplinkMuted:", [v9 isUplinkMuted]);
    v12 = [v6 avMode] != 1 && objc_msgSend(v6, "resolvedAudioVideoMode") == 2;
    [(TUJoinConversationRequest *)v8 setWantsStagingArea:v12];
    association = [v9 association];
    v14 = [association copy];
    [(TUJoinConversationRequest *)v8 setParticipantAssociation:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TUConversationMessagesGroupProviding)messagesGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesGroupProvider);

  return WeakRetained;
}

- (void)addCollaborationDictionary:(void *)a1 forConversation:fromMe:.cold.1(void *a1)
{
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addCollaborationIdentifier:(void *)a1 forConversation:.cold.1(void *a1)
{
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addCollaboration:(uint64_t)a1 forConversation:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 UUID];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)removeCollaborationIdentifier:(void *)a1 forConversation:.cold.1(void *a1)
{
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateURLWithDugongTokenIfNeeded:collaboration:handle:completion:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL LocalIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOS(NSString *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)"}];
  [v0 handleFailureInFunction:v1 file:@"TUConversationManager.m" lineNumber:54 description:{@"%s", dlerror()}];

  __break(1u);
}

void __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) URL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "No messages group provider is available to fetch details for messages group %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end