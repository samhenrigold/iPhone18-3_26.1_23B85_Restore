@interface NNMKSyncProvider
+ (BOOL)prepareForSystemAppDeletion:(id *)deletion;
- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version;
- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version mailbox:(id)mailbox;
- (BOOL)containsSyncedMailbox:(id)mailbox;
- (BOOL)isMessageOkForSyncedMailboxes:(id)mailboxes;
- (BOOL)isPaired;
- (BOOL)organizeByThread;
- (BOOL)setupPairedDeviceRegistry;
- (BOOL)syncStateManagerShouldAddFavoriteSubsectionForMailboxId:(id)id;
- (NNMKMailboxSelection)mailboxSelection;
- (NNMKPairedDeviceInfo)pairedDeviceInfo;
- (NNMKSyncProvider)initWithDelegate:(id)delegate;
- (NNMKSyncProvider)initWithDelegate:(id)delegate syncStateManager:(id)manager directoryProvider:(id)provider;
- (NNMKSyncProviderDelegate)delegate;
- (id)_bbSubsectionIdsForMessage:(id)message;
- (id)_createDefaultSyncStateManager;
- (id)_handleFetchRequest:(id)request shouldResumeSync:(BOOL *)sync;
- (id)_initialSyncForMailbox:(id)mailbox messages:(id)messages;
- (id)_legacy_sendFirstMessages:(id)messages syncedMailbox:(id)mailbox;
- (id)_messageProtobufForMessage:(id)message;
- (id)_sendFirstMessages:(id)messages mailboxes:(id)mailboxes;
- (id)_watchAccounts;
- (id)bulletinFlagsForMessageStatus:(unint64_t)status dateReceived:(id)received messageWillBeAddedToSyncProvider:(BOOL)provider mailboxId:(id)id;
- (id)requestWatchAccounts;
- (id)syncedMailboxes;
- (id)watchAccounts;
- (void)_addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId mailbox:(id)mailbox;
- (void)_addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox;
- (void)_addMessages:(id)messages mailbox:(id)mailbox;
- (void)_addMessages:(id)messages messagesAreNew:(BOOL)new mailbox:(id)mailbox;
- (void)_checkBatchFetchedMessages;
- (void)_checkConnectivityBasedSuspensionTimer:(BOOL)timer;
- (void)_deleteMessagesWithIds:(id)ids mailbox:(id)mailbox;
- (void)_fastForwardToFullSyncVersion:(unint64_t)version;
- (void)_handleDidFailSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)_handleDidPairWithNewDevice;
- (void)_handleDidUnpair;
- (void)_handleFetchRequestFromWatch:(id)watch;
- (void)_handleHaltSyncForMailbox:(id)mailbox;
- (void)_handleMailboxesDesync;
- (void)_markConversationIdForNotify:(id)notify messages:(id)messages mailbox:(id)mailbox;
- (void)_markConversationWithId:(id)id forState:(unint64_t)state include:(BOOL)include mailbox:(id)mailbox;
- (void)_notifyDelegateThatMessagesStatusWereUpdated:(id)updated;
- (void)_replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages mailbox:(id)mailbox;
- (void)_replyWithMoreMessages:(id)messages forConversationWithId:(id)id mailbox:(id)mailbox;
- (void)_replyWithMoreMessages:(id)messages forDateReceivedBefore:(id)before mailbox:(id)mailbox messagesForSpecialMailbox:(unint64_t)specialMailbox;
- (void)_reportMessageContentDownloadFailureForMessageId:(id)id mailbox:(id)mailbox;
- (void)_requestDelegateForAccounts;
- (void)_requestDelegateForContentForMessageIds:(id)ids highPriority:(BOOL)priority;
- (void)_requestDelegateForContentForMessageWithId:(id)id highPriority:(BOOL)priority;
- (void)_requestDelegateForFetchForMailboxes:(id)mailboxes;
- (void)_requestDelegateForFirstMessagesForMailboxes:(id)mailboxes;
- (void)_requestDelegateForMessagesToSendAsFetchResponseForMessageIds:(id)ids;
- (void)_requestDelegateForMoreMessagesBeforeDateReceived:(id)received forConversationWithId:(id)id mailbox:(id)mailbox;
- (void)_requestDelegateForMoreMessagesWithMailbox:(id)mailbox beforeDate:(id)date messagesForspecialMailboxFilterType:(unint64_t)type;
- (void)_requestDelegateForResendingAccountWithId:(id)id;
- (void)_requestDelegateForResendingMessagesWithIds:(id)ids;
- (void)_requestDelegateForVIPList:(id)list;
- (void)_requestDelegateToSendComposedMessage:(id)message;
- (void)_requestDelegateToStopDownloadingAllMessageElements;
- (void)_requestDelegateToStopDownloadingMessageElementsForMessageWithId:(id)id;
- (void)_sendStandaloneAccountIdentity:(id)identity resendInterval:(unint64_t)interval;
- (void)_sendUpdatedMailboxSelection:(unint64_t)selection resendInterval:(unint64_t)interval;
- (void)_sendWatchAccountStatusRequest;
- (void)_shouldHandleForwardForNotification:(id)notification withCompletion:(id)completion;
- (void)_stopTaks;
- (void)_storeScreenRelatedValues;
- (void)_triggerFullSyncForMailbox:(id)mailbox;
- (void)_triggerFullSyncForMailboxes:(id)mailboxes;
- (void)_triggerInitialSyncToRecoverFromSyncVersionMismatch;
- (void)_triggerInitialSyncTrackingProgress:(BOOL)progress;
- (void)_updateMailboxSelection:(id)selection notifyClient:(BOOL)client;
- (void)_updateMessagesStatus:(id)status mailbox:(id)mailbox;
- (void)_verifyPairingForcingSync:(BOOL)sync;
- (void)accountsSyncServiceServer:(id)server didChangeAccountSourceType:(id)type;
- (void)accountsSyncServiceServer:(id)server didReceivedAccountAuthenticationStatus:(id)status requestTime:(double)time;
- (void)accountsSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected;
- (void)addImageAttachment:(id)attachment forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected;
- (void)addMessageContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected;
- (void)addMessages:(id)messages;
- (void)addUpdateOrDeleteAccounts:(id)accounts;
- (void)batchRequestHandlerDidTimeoutFetchRequest:(id)request;
- (void)dealloc;
- (void)deleteMessagesWithIds:(id)ids;
- (void)fetchesSyncServiceServer:(id)server didNotifyAboutWebKitStatus:(id)status;
- (void)fetchesSyncServiceServer:(id)server didNotifyInitialSyncFinished:(id)finished;
- (void)fetchesSyncServiceServer:(id)server didRequestContent:(id)content;
- (void)fetchesSyncServiceServer:(id)server didRequestFetch:(id)fetch;
- (void)fetchesSyncServiceServer:(id)server didRequestFetchInBatch:(id)batch;
- (void)fetchesSyncServiceServer:(id)server didRequestFullSync:(id)sync;
- (void)fetchesSyncServiceServer:(id)server didRequestHaltSync:(id)sync;
- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessages:(id)messages;
- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesForConversation:(id)conversation;
- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesInBatch:(id)batch;
- (void)fetchesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)markConversationIdForNotNotify:(id)notify;
- (void)markConversationIdForNotify:(id)notify messages:(id)messages includesProtectedMessages:(BOOL)protectedMessages;
- (void)messageContentSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)messagesSyncServiceServer:(id)server didDeleteMessages:(id)messages;
- (void)messagesSyncServiceServer:(id)server didMoveMessages:(id)messages;
- (void)messagesSyncServiceServer:(id)server didRecieveAttachmentsAtURL:(id)l composedMessageId:(id)id;
- (void)messagesSyncServiceServer:(id)server didRequestCompactMessages:(id)messages;
- (void)messagesSyncServiceServer:(id)server didRequestSendMessage:(id)message;
- (void)messagesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)messagesSyncServiceServer:(id)server didUpdateMailboxSelection:(id)selection;
- (void)messagesSyncServiceServer:(id)server didUpdateMessagesStatus:(id)status;
- (void)messagesSyncServiceServer:(id)server didWarnMessagesFilteredOut:(id)out;
- (void)messagesSyncServiceServerConnectivityChanged:(id)changed;
- (void)messagesSyncServiceServerSpaceBecameAvailable:(id)available;
- (void)notifyFetchCompleted;
- (void)notifyFetchCompletedForMailboxId:(id)id error:(id)error;
- (void)replyWithAccountToResend:(id)resend;
- (void)replyWithAccounts:(id)accounts;
- (void)replyWithFirstMessages:(id)messages includesProtectedMessages:(BOOL)protectedMessages mailboxes:(id)mailboxes organizedByThread:(BOOL)thread;
- (void)replyWithMessageSendingProgress:(int64_t)progress forComposedMessageId:(id)id;
- (void)replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages;
- (void)replyWithMessagesToSendAsFetchResponse:(id)response includesProtectedMessages:(BOOL)messages;
- (void)replyWithMoreMessages:(id)messages context:(id)context;
- (void)reportMessageContentDownloadFailureForMessageId:(id)id;
- (void)reportWillDownloadFirstMessages;
- (void)resendObjectsForIDSIdentifier:(id)identifier;
- (void)resendScheduler:(id)scheduler didRequestRetryFullSyncForMailboxes:(id)mailboxes;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingAccountIdentifier:(id)identifier resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingComposeMessageProgress:(int64_t)progress messageId:(id)id resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingDeletionForAccountWithId:(id)id resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingMailboxSelectionWithResendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingMessageDeletions:(id)deletions deletionsMessageIds:(id)ids resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingVIPListWithResendInterval:(unint64_t)interval;
- (void)setOrganizeByThread:(BOOL)thread;
- (void)setupPairedDeviceRegistry;
- (void)syncStandaloneAccountIdentity:(id)identity;
- (void)syncStateManager:(id)manager handleForwardForNotification:(id)notification completion:(id)completion;
- (void)syncStateManagerDidBeginSyncSession:(id)session syncSessionType:(id)type syncSessionIdentifier:(id)identifier;
- (void)syncStateManagerDidChangePairedDevice:(id)device;
- (void)syncStateManagerDidInvalidateSyncSession:(id)session syncSessionIdentifier:(id)identifier;
- (void)syncStateManagerDidUnpair:(id)unpair;
- (void)trackerDidFinishSendingInitialSyncContentToPairedDevice:(id)device;
- (void)updateConversationId:(id)id mute:(BOOL)mute;
- (void)updateConversationId:(id)id notify:(BOOL)notify messages:(id)messages;
- (void)updateMailboxSelection:(id)selection;
- (void)updateMessagesStatus:(id)status;
- (void)updateVIPSenderList:(id)list requestContext:(id)context;
@end

@implementation NNMKSyncProvider

+ (BOOL)prepareForSystemAppDeletion:(id *)deletion
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  pairingStorePath = [mEMORY[0x277D2BCF8] pairingStorePath];

  if (pairingStorePath)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pairingStorePath isDirectory:1];
    v7 = [v6 URLByAppendingPathComponent:@"NanoMail/registry.sqlite" isDirectory:0];
    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager removeItemAtURL:uRLByDeletingLastPathComponent error:deletion];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (NNMKSyncProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(NNMKDirectoryProvider);
  v6 = [(NNMKSyncProvider *)self initWithDelegate:delegateCopy syncStateManager:0 directoryProvider:v5];

  return v6;
}

- (NNMKSyncProvider)initWithDelegate:(id)delegate syncStateManager:(id)manager directoryProvider:(id)provider
{
  delegateCopy = delegate;
  managerCopy = manager;
  providerCopy = provider;
  v11 = dispatch_queue_create("com.apple.nanomail.providerQueue", 0);
  v21.receiver = self;
  v21.super_class = NNMKSyncProvider;
  v12 = [(NNMKSyncEndpoint *)&v21 initWithQueue:v11];
  v14 = v12;
  if (v12)
  {
    nnmk_setupLoggingSubsystems(v12, v13);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v14->_providerQueue, v11);
    providerQueue = v14->_providerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke;
    block[3] = &unk_279936098;
    v18 = v14;
    v19 = providerCopy;
    v20 = managerCopy;
    dispatch_sync(providerQueue, block);
  }

  return v14;
}

void __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NNMKSyncSessionController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  v5 = [*(*(a1 + 32) + 152) pairedDeviceRegistryPath];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v5 isDirectory:0];

    if (v7)
    {
      v8 = [[NNMKDeviceSyncRegistry alloc] initWithPath:v5];
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = v8;
    }
  }

  v11 = objc_alloc_init(NNMKSyncController);
  v12 = *(a1 + 32);
  v13 = *(v12 + 136);
  *(v12 + 136) = v11;

  [*(*(a1 + 32) + 136) setDelegate:?];
  v14 = *(a1 + 48);
  v15 = v14;
  if (!v14)
  {
    v15 = [*(a1 + 32) _createDefaultSyncStateManager];
  }

  objc_storeStrong((*(a1 + 32) + 64), v15);
  if (!v14)
  {
  }

  [*(*(a1 + 32) + 64) setDelegate:?];
  v16 = objc_alloc_init(NNMKSyncPersistenceHandler);
  v17 = *(a1 + 32);
  v18 = *(v17 + 80);
  *(v17 + 80) = v16;

  [*(*(a1 + 32) + 80) setDelegate:?];
  [*(*(a1 + 32) + 80) setSyncController:*(*(a1 + 32) + 136)];
  [*(*(a1 + 32) + 80) setSyncStateManager:*(*(a1 + 32) + 64)];
  [*(*(a1 + 32) + 80) setSessionController:*(*(a1 + 32) + 144)];
  v19 = objc_alloc_init(NNMKInitialSyncProgressTracker);
  v20 = *(a1 + 32);
  v21 = *(v20 + 168);
  *(v20 + 168) = v19;

  [*(*(a1 + 32) + 168) setExecutionQueue:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 168) setDelegate:?];
  [*(*(a1 + 32) + 168) setSyncStateManager:*(*(a1 + 32) + 64)];
  v22 = objc_alloc_init(NNMKResendScheduler);
  v23 = *(a1 + 32);
  v24 = *(v23 + 160);
  *(v23 + 160) = v22;

  [*(*(a1 + 32) + 160) setDelegate:?];
  [*(*(a1 + 32) + 160) setSyncController:*(*(a1 + 32) + 136)];
  v25 = objc_alloc_init(NNMKBatchRequestHandler);
  v26 = *(a1 + 32);
  v27 = *(v26 + 176);
  *(v26 + 176) = v25;

  [*(*(a1 + 32) + 176) setDelegate:?];
  [*(*(a1 + 32) + 176) setResendScheduler:*(*(a1 + 32) + 160)];
  [*(*(a1 + 32) + 176) setSyncController:*(*(a1 + 32) + 136)];
  [*(*(a1 + 32) + 176) setExecutionQueue:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 80) setBatchRequestHandler:*(*(a1 + 32) + 176)];
  v28 = [[NNMKMessagesSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v29 = *(a1 + 32);
  v30 = *(v29 + 88);
  *(v29 + 88) = v28;

  [*(*(a1 + 32) + 88) setDelegate:?];
  v31 = [[NNMKMessageContentSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v32 = *(a1 + 32);
  v33 = *(v32 + 96);
  *(v32 + 96) = v31;

  [*(*(a1 + 32) + 96) setDelegate:?];
  v34 = [[NNMKAccountsSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v35 = *(a1 + 32);
  v36 = *(v35 + 104);
  *(v35 + 104) = v34;

  [*(*(a1 + 32) + 104) setDelegate:?];
  v37 = [[NNMKFetchesSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v38 = *(a1 + 32);
  v39 = *(v38 + 112);
  *(v38 + 112) = v37;

  [*(*(a1 + 32) + 112) setDelegate:?];
  v40 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_DEFAULT, "SyncProvider Created...", buf, 2u);
  }

  [*(*(a1 + 32) + 72) resetSyncRequestedFromMailboxes];
  if ([*(*(a1 + 32) + 72) recreatedFromScratch])
  {
    v41 = [*(a1 + 32) providerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke_16;
    block[3] = &unk_279935CB0;
    v45 = *(a1 + 32);
    dispatch_async(v41, block);
  }

  [*(a1 + 32) _checkConnectivityBasedSuspensionTimer:{objc_msgSend(*(a1 + 32), "_isConnectedToWatch")}];
  v42 = [*(a1 + 32) sessionController];
  [v42 setDeviceInStandalone:{objc_msgSend(*(a1 + 32), "_isConnectedToWatch") ^ 1}];

  [*(a1 + 32) _verifyPairingForcingSync:0];
  v43 = [*(a1 + 32) resendScheduler];
  [v43 forceRetryingAllPendingIDSMessages];
}

uint64_t __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke_16(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync because database was created from scratch.", v4, 2u);
  }

  return [*(a1 + 32) _triggerInitialSync];
}

- (void)dealloc
{
  [(NNMKBatchRequestHandler *)self->_batchRequestHandler cancelFetchTimeout];
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  self->_pairedDeviceRegistry = 0;

  syncStateManager = self->_syncStateManager;
  self->_syncStateManager = 0;

  objc_storeWeak(&self->_delegate, 0);
  v5.receiver = self;
  v5.super_class = NNMKSyncProvider;
  [(NNMKSyncEndpoint *)&v5 dealloc];
}

- (void)_triggerInitialSyncToRecoverFromSyncVersionMismatch
{
  if (self->_triggeredInitialSyncToRecoverFromSyncVersionMismatch)
  {
    v3 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring #initial-sync request. Already one in progress.", v4, 2u);
    }
  }

  else
  {
    self->_triggeredInitialSyncToRecoverFromSyncVersionMismatch = 1;

    [(NNMKSyncProvider *)self _triggerInitialSync];
  }
}

- (void)_triggerInitialSyncTrackingProgress:(BOOL)progress
{
  progressCopy = progress;
  v17 = *MEMORY[0x277D85DE8];
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    v7 = v5;
    v15 = 134217984;
    fullSyncVersion = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry fullSyncVersion];
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "#initial-sync triggered. (Previous #sync-version: %lu)", &v15, 0xCu);
  }

  if (progressCopy)
  {
    initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    [initialSyncProgressTracker startTrackingInitialSync];
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForInitialSync];
  v9 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_pairedDeviceRegistry;
    v11 = v9;
    fullSyncVersion2 = [(NNMKDeviceSyncRegistry *)v10 fullSyncVersion];
    v15 = 134217984;
    fullSyncVersion = fullSyncVersion2;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Incrementing #sync-version. %lu", &v15, 0xCu);
  }

  v13 = objc_alloc_init(NNMKProtoPrepareForFullSyncRequest);
  [(NNMKProtoPrepareForFullSyncRequest *)v13 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
  [(NNMKFetchesSyncServiceServer *)self->_fetchesSyncService requestPrepareForFullSync:v13];
  [(NNMKSyncProvider *)self _requestDelegateForAccounts];
  v14 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Requesting VIP List due to #initial-sync", &v15, 2u);
  }

  [(NNMKSyncProvider *)self _requestDelegateForVIPList:0];
}

- (void)replyWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__NNMKSyncProvider_replyWithAccounts___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = accountsCopy;
  v6 = accountsCopy;
  dispatch_async(providerQueue, v7);
}

void __38__NNMKSyncProvider_replyWithAccounts___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 72))
  {
    v2 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v15 = 134217984;
      v16 = [v3 count];
      _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Received accounts from MobileMail to sync to watch. %lu accounts.", &v15, 0xCu);
    }

    *(*(a1 + 32) + 42) = 0;
    [*(*(a1 + 32) + 72) deleteAllMailboxes];
    [*(*(a1 + 32) + 72) beginUpdates];
    v5 = [*(a1 + 32) persistenceHandler];
    v6 = [v5 persistAccounts:*(a1 + 40)];

    v7 = [*(a1 + 40) nnmk_map:&__block_literal_global_9];
    v8 = [*(*(a1 + 32) + 104) sendInitialAccountsSync:v6];
    v9 = [*(a1 + 32) resendScheduler];
    [v9 registerIDSIdentifier:v8 objectIds:v7 type:@"Account" resendInterval:0];

    [*(*(a1 + 32) + 72) endUpdates];
    v10 = [*(a1 + 32) initialSyncProgressTracker];
    [v10 updateProgressWithAccountsSent];

    [*(a1 + 32) _sendUpdatedMailboxSelection:{objc_msgSend(*(*(a1 + 32) + 72), "fullSyncVersion")}];
    v11 = [*(a1 + 32) syncController];
    v12 = [v11 mailboxesToSync];

    if ([v12 count])
    {
      v13 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes due to initial account sync.", &v15, 2u);
      }

      [*(a1 + 32) _triggerFullSyncForMailboxes:v12];
    }

    else
    {
      v14 = [*(a1 + 32) initialSyncProgressTracker];
      [v14 finishedSendingInitialSyncContentToPairedDevice];
    }
  }
}

- (void)_triggerFullSyncForMailbox:(id)mailbox
{
  v7[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = mailboxCopy;
  if (mailboxCopy)
  {
    v7[0] = mailboxCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v6];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _triggerFullSyncForMailbox:];
  }
}

- (void)_triggerFullSyncForMailboxes:(id)mailboxes
{
  v37 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = mailboxesCopy;
    v6 = mailboxesCopy;
    v27 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v27)
    {
      goto LABEL_16;
    }

    v7 = *v29;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        pairedDeviceRegistry = self->_pairedDeviceRegistry;
        mailboxId = [v9 mailboxId];
        v12 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry mailboxWithId:mailboxId];

        LOBYTE(mailboxId) = [v12 syncRequested];
        v13 = qword_28144D620;
        v14 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (mailboxId)
        {
          if (!v14)
          {
            goto LABEL_14;
          }

          resendScheduler = v13;
          mailboxId2 = [v9 mailboxId];
          *buf = 138543362;
          v33 = mailboxId2;
          _os_log_impl(&dword_25B19F000, resendScheduler, OS_LOG_TYPE_DEFAULT, "It will not request #full-sync for mailbox, because it has already been requested before. %{public}@", buf, 0xCu);
        }

        else
        {
          if (v14)
          {
            v17 = self->_pairedDeviceRegistry;
            v18 = v13;
            fullSyncVersion = [(NNMKDeviceSyncRegistry *)v17 fullSyncVersion];
            [v9 mailboxId];
            v20 = v7;
            v21 = v6;
            v23 = v22 = v5;
            *buf = 134218242;
            v33 = fullSyncVersion;
            v34 = 2114;
            v35 = v23;
            _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "#full-sync triggered for mailbox. Requesting messages from MobileMail (#sync-version: %lu, mailbox:%{public}@).", buf, 0x16u);

            v5 = v22;
            v6 = v21;
            v7 = v20;
            self = selfCopy;
          }

          [v5 addObject:v9];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForFullSyncWithMailbox:v9];
          [v9 setSyncRequested:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncRequestedForMailbox:v9];
          resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
          mailboxId2 = [v9 mailboxId];
          [resendScheduler deletePendingIDSMessagesForMailboxId:mailboxId2];
        }

LABEL_14:
      }

      v27 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v27)
      {
LABEL_16:

        if ([v5 count])
        {
          resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
          [resendScheduler2 resetInitialSyncResendInterval];

          [(NNMKSyncProvider *)self _requestDelegateForFirstMessagesForMailboxes:v5];
        }

        mailboxesCopy = v25;
        goto LABEL_21;
      }
    }
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _triggerFullSyncForMailboxes:];
  }

LABEL_21:
}

- (void)replyWithFirstMessages:(id)messages includesProtectedMessages:(BOOL)protectedMessages mailboxes:(id)mailboxes organizedByThread:(BOOL)thread
{
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  providerQueue = self->_providerQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke;
  v14[3] = &unk_279936690;
  v14[4] = self;
  v15 = messagesCopy;
  threadCopy = thread;
  v16 = mailboxesCopy;
  v12 = mailboxesCopy;
  v13 = messagesCopy;
  dispatch_async(providerQueue, v14);
}

void __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 72);
  v3 = qword_28144D620;
  v4 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = v3;
      v13 = 134217984;
      v14 = [v5 count];
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Received first messages from MobileMail (Message count: %lu).", &v13, 0xCu);
    }

    [*(*(a1 + 32) + 72) setOrganizeByThread:*(a1 + 56)];
    if ([*(a1 + 32) _pairedDeviceSupportsMultipleMailboxes])
    {
      v7 = [*(a1 + 32) _sendFirstMessages:*(a1 + 40) mailboxes:*(a1 + 48)];
LABEL_12:
      v12 = [*(a1 + 32) initialSyncProgressTracker];
      [v12 updateProgressWithMessageHeadersSent:v7];

      return;
    }

    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Paired device does not support multiple mailboxes. Sending first messages to default mailbox.", &v13, 2u);
    }

    v9 = [*(*(a1 + 32) + 72) mailboxWithId:@"-1"];
    if (v9)
    {
      v10 = v9;
      v11 = [*(a1 + 32) _legacy_sendFirstMessages:*(a1 + 40) syncedMailbox:v9];

      v7 = 0;
      goto LABEL_12;
    }

    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke_cold_1();
    }
  }

  else if (v4)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "No paired device. It won't sync messages for #full-sync.", &v13, 2u);
  }
}

- (id)_sendFirstMessages:(id)messages mailboxes:(id)mailboxes
{
  v74 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  syncController = [(NNMKSyncProvider *)self syncController];
  v56 = [syncController groupMessagesByMailboxId:messagesCopy];

  v54 = objc_alloc_init(NNMKProtoInitialMessagesSyncBatch);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v10 = mailboxesCopy;
  v11 = [v10 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v63;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v63 != v13)
        {
          objc_enumerationMutation(v10);
        }

        mailboxId = [*(*(&v62 + 1) + 8 * i) mailboxId];
        [v9 addObject:mailboxId];
      }

      v12 = [v10 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v12);
  }

  v16 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    nnmk_description = [v9 nnmk_description];
    *buf = 138543362;
    v67 = nnmk_description;
    _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Preparing to send #full-sync for mailboxes. %{public}@", buf, 0xCu);
  }

  v51 = messagesCopy;
  v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count", v9)}];
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v10;
  v57 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
  if (v57)
  {
    v55 = *v59;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v59 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * j);
        pairedDeviceRegistry = self->_pairedDeviceRegistry;
        mailboxId2 = [v20 mailboxId];
        v23 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry mailboxWithId:mailboxId2];

        if (v23)
        {
          syncActive = [v20 syncActive];
          if (syncActive != [v23 syncActive] || (v25 = objc_msgSend(v20, "syncEnabled"), v25 != objc_msgSend(v23, "syncEnabled")))
          {
            [v20 setSyncActive:{objc_msgSend(v23, "syncActive")}];
            [v20 setSyncEnabled:{objc_msgSend(v23, "syncEnabled")}];
          }
        }

        syncController2 = [(NNMKSyncProvider *)self syncController];
        mailboxId3 = [v20 mailboxId];
        v28 = [v56 objectForKeyedSubscript:mailboxId3];
        v29 = [syncController2 filterMessages:v28 byAlreadySynced:0 byMailbox:v20];

        v30 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          mailboxId4 = [v20 mailboxId];
          v33 = self->_pairedDeviceRegistry;
          mailboxId5 = [v20 mailboxId];
          v35 = [(NNMKDeviceSyncRegistry *)v33 syncVersionForMailboxId:mailboxId5];
          v36 = [v29 count];
          *buf = 138543874;
          v67 = mailboxId4;
          v68 = 2048;
          v69 = v35;
          v70 = 2048;
          v71 = v36;
          _os_log_impl(&dword_25B19F000, v31, OS_LOG_TYPE_DEFAULT, "Preparing messages to send for mailbox. (Mailbox: %{public}@, #mailbox-sync-version: %lu, Message count: %lu)", buf, 0x20u);
        }

        v37 = [(NNMKSyncProvider *)self _initialSyncForMailbox:v20 messages:v29];
        if (v37)
        {
          [(NNMKProtoInitialMessagesSyncBatch *)v54 addInitialMessagesSync:v37];
          [v53 addObjectsFromArray:v29];
        }

        else
        {
          v38 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            mailboxId6 = [v20 mailboxId];
            *buf = 138543362;
            v67 = mailboxId6;
            _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_DEFAULT, "It won't send mailbox on #full-sync. %{public}@", buf, 0xCu);
          }
        }
      }

      v57 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
    }

    while (v57);
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
  [(NNMKProtoInitialMessagesSyncBatch *)v54 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
  v41 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendBatchedInitialMessagesSync:v54];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  v43 = [v50 copy];
  resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler registerIDSIdentifier:v41 objectIds:v43 type:@"InitialSync" resendInterval:{objc_msgSend(resendScheduler2, "initialSyncResendInterval")}];

  v45 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    v47 = [v53 count];
    nnmk_description2 = [v50 nnmk_description];
    *buf = 134218498;
    v67 = v47;
    v68 = 2114;
    v69 = v41;
    v70 = 2114;
    v71 = nnmk_description2;
    _os_log_impl(&dword_25B19F000, v46, OS_LOG_TYPE_DEFAULT, "#full-sync messages sent (%lu messages - IDS identifier: %{public}@ - Mailbox ids: %{public}@).", buf, 0x20u);
  }

  return v53;
}

- (id)_initialSyncForMailbox:(id)mailbox messages:(id)messages
{
  v56 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  messagesCopy = messages;
  if (([mailboxCopy syncActive] & 1) != 0 || (objc_msgSend(mailboxCopy, "syncEnabled") & 1) == 0)
  {
    v32 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      mailboxId = [mailboxCopy mailboxId];
      *buf = 138543874;
      v46 = mailboxId;
      v47 = 2048;
      syncActive = [mailboxCopy syncActive];
      v49 = 2048;
      syncEnabled = [mailboxCopy syncEnabled];
      _os_log_impl(&dword_25B19F000, v33, OS_LOG_TYPE_DEFAULT, "Ignoring MobileMail reply for first messages. Mailbox: %{public}@, active: %lu, enabled: %lu.", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(NNMKProtoInitialMessagesSync);
    [(NNMKProtoInitialMessagesSync *)v8 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    v9 = MEMORY[0x277CCAAB0];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
    [(NNMKProtoInitialMessagesSync *)v8 setDateSynced:v11];

    v12 = [NNMKProtoMailbox protoMailboxFromMailbox:mailboxCopy];
    [(NNMKProtoInitialMessagesSync *)v8 setMailbox:v12];

    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    v37 = mailboxCopy;
    mailboxId2 = [mailboxCopy mailboxId];
    [(NNMKProtoInitialMessagesSync *)v8 setMailboxSyncVersion:[(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncVersionForMailboxId:mailboxId2]];

    [(NNMKProtoInitialMessagesSync *)v8 setOrganizedByThread:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry organizeByThread]];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = messagesCopy;
    obj = messagesCopy;
    v15 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      selfCopy = self;
      do
      {
        v18 = 0;
        v39 = v16;
        do
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v41 + 1) + 8 * v18);
          v20 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            messageId = [v19 messageId];
            accountId = [v19 accountId];
            [v19 dateReceived];
            v25 = v24 = v8;
            v26 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v19 status]);
            [v19 messageIdHeader];
            v28 = v27 = v17;
            *buf = 138544386;
            v46 = messageId;
            v47 = 2114;
            syncActive = accountId;
            v49 = 2114;
            syncEnabled = v25;
            v51 = 2112;
            v52 = v26;
            v53 = 2114;
            v54 = v28;
            _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #full-sync)", buf, 0x34u);

            v17 = v27;
            v8 = v24;
            self = selfCopy;

            v16 = v39;
          }

          v29 = [(NNMKSyncProvider *)self _messageProtobufForMessage:v19, v36];
          [(NNMKProtoInitialMessagesSync *)v8 addInitialMessage:v29];

          v30 = [[NNMKSyncedMessage alloc] initWithMessage:v19];
          batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
          [batchRequestHandler handleMessageAdded:v19];

          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v30];
          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
      }

      while (v16);
    }

    mailboxCopy = v37;
    [v37 setSyncActive:1];
    [v37 setSyncRequested:0];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncActiveForMailbox:v37];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncRequestedForMailbox:v37];
    messagesCopy = v36;
  }

  return v8;
}

- (id)_legacy_sendFirstMessages:(id)messages syncedMailbox:(id)mailbox
{
  v55 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Reply from delegate for didRequestFirstMessages but mailbox is already active.", buf, 2u);
    }

    obj = MEMORY[0x277CBEBF8];
  }

  else
  {
    [mailboxCopy setSyncEnabled:1];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncEnabledForMailbox:mailboxCopy];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    syncController = [(NNMKSyncProvider *)self syncController];
    v41 = messagesCopy;
    v11 = [syncController filterMessages:messagesCopy byAlreadySynced:0 byMailbox:mailboxCopy];

    v12 = objc_alloc_init(NNMKProtoInitialMessagesSync);
    [(NNMKProtoInitialMessagesSync *)v12 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    v13 = MEMORY[0x277CCAAB0];
    date = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
    [(NNMKProtoInitialMessagesSync *)v12 setDateSynced:v15];

    v16 = [NNMKProtoMailbox protoMailboxFromMailbox:mailboxCopy];
    [(NNMKProtoInitialMessagesSync *)v12 setMailbox:v16];

    v17 = [NNMKMailbox syncedTypeFromMailbox:mailboxCopy];
    if (mailboxCopy)
    {
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxType:v17];
      accountId = [mailboxCopy accountId];
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxAccountId:accountId];

      v19 = [mailboxCopy url];
      absoluteString = [v19 absoluteString];
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxURL:absoluteString];

      customName = [mailboxCopy customName];
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxCustomName:customName];
    }

    else
    {
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxType:0];
    }

    if ([v11 count])
    {
      lastObject = [v11 lastObject];
      v23 = MEMORY[0x277CCAAB0];
      dateReceived = [lastObject dateReceived];
      v24 = [v23 archivedDataWithRootObject:dateReceived requiringSecureCoding:1 error:0];
      [(NNMKProtoInitialMessagesSync *)v12 setDateForRequestingMoreMessages:v24];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v11;
    v25 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          v30 = [(NNMKSyncProvider *)self _messageProtobufForMessage:v29];
          [(NNMKProtoInitialMessagesSync *)v12 addInitialMessage:v30];

          dateReceived = [[NNMKSyncedMessage alloc] initWithMessage:v29 useDefaultMailbox:1];
          batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
          [batchRequestHandler handleMessageAdded:v29];

          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:dateReceived];
        }

        v26 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v26);
    }

    v32 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendInitialMessagesSync:v12];
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    if (mailboxCopy)
    {
      dateReceived = [mailboxCopy mailboxId];
      v53 = dateReceived;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    }

    else
    {
      v34 = MEMORY[0x277CBEBF8];
    }

    resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler registerIDSIdentifier:v32 objectIds:v34 type:@"InitialSync" resendInterval:{objc_msgSend(resendScheduler2, "initialSyncResendInterval")}];

    if (mailboxCopy)
    {
    }

    [mailboxCopy setSyncActive:1];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncActiveForMailbox:mailboxCopy];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    v36 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [obj count];
      mailboxId = [mailboxCopy mailboxId];
      *buf = 134218498;
      v48 = v38;
      v49 = 2114;
      v50 = mailboxId;
      v51 = 2114;
      v52 = v32;
      _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "#full-sync messages sent (%lu messages - Mailbox id: %{public}@ IDS identifier: %{public}@).", buf, 0x20u);
    }

    messagesCopy = v41;
  }

  return obj;
}

- (void)replyWithMoreMessages:(id)messages context:(id)context
{
  messagesCopy = messages;
  contextCopy = context;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke;
  block[3] = &unk_279936098;
  block[4] = self;
  v12 = messagesCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = messagesCopy;
  dispatch_async(providerQueue, block);
}

void __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) mailboxes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke_2;
  v7[3] = &unk_2799366B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v2 groupMessagesByMailbox:v3 mailboxes:v4 block:v7];
}

void __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 conversationId];
  v9 = [v8 length];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v9)
  {
    v12 = [v10 conversationId];
    [v11 _replyWithMoreMessages:v7 forConversationWithId:? mailbox:?];
  }

  else
  {
    v12 = [v10 beforeDate];
    [v11 _replyWithMoreMessages:v7 forDateReceivedBefore:v12 mailbox:v6 messagesForSpecialMailbox:{objc_msgSend(*(a1 + 32), "messagesForSpecialMailbox")}];
  }
}

- (void)_replyWithMoreMessages:(id)messages forDateReceivedBefore:(id)before mailbox:(id)mailbox messagesForSpecialMailbox:(unint64_t)specialMailbox
{
  v43 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  beforeCopy = before;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    if (specialMailbox)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = messagesCopy;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          v17 = 0;
          do
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v30 + 1) + 8 * v17++) setIsSpecialMailboxSpecific:{specialMailbox, v30}];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
        }

        while (v15);
      }
    }

    syncController = [(NNMKSyncProvider *)self syncController];
    v19 = [syncController filterMessages:messagesCopy byAlreadySynced:1 byMailbox:mailboxCopy];

    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v19 count];
      mailboxId = [mailboxCopy mailboxId];
      *buf = 134218754;
      v35 = v22;
      v36 = 2048;
      specialMailboxCopy = specialMailbox;
      v38 = 2114;
      v39 = beforeCopy;
      v40 = 2114;
      v41 = mailboxId;
      _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES request. (Message Count: %lu, Special Mailbox Request: %lu, Date Request: %{public}@, Mailbox id: %{public}@)", buf, 0x2Au);
    }

    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v25 = [persistenceHandler addMoreMessages:v19 mailbox:mailboxCopy];

    v26 = [NNMKMessage messageIdsFromMessages:v19];
    v27 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendMoreMessages:v25];
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler registerIDSIdentifier:v27 objectIds:v26 type:@"Message" resendInterval:0];

    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:v26 highPriority:0];
  }

  else
  {
    v29 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES request but we were actually expecting another response.", buf, 2u);
    }
  }
}

- (void)_replyWithMoreMessages:(id)messages forConversationWithId:(id)id mailbox:(id)mailbox
{
  v34 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  idCopy = id;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = messagesCopy;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v27 + 1) + 8 * v15++) setIsThreadSpecific:{1, v27}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v13);
    }

    syncController = [(NNMKSyncProvider *)self syncController];
    v17 = [syncController filterMessages:v11 byAlreadySynced:1 byMailbox:mailboxCopy];

    v18 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v17 count];
      *buf = 134217984;
      v32 = v20;
      _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES conversation request. (Message count: %lu)", buf, 0xCu);
    }

    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v22 = [persistenceHandler addMoreConversationSpecificMessages:v17 conversationId:idCopy mailbox:mailboxCopy];

    v23 = [NNMKMessage messageIdsFromMessages:v17];
    v24 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendMoreMessagesForConversation:v22];
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler registerIDSIdentifier:v24 objectIds:v23 type:@"Message" resendInterval:0];

    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:v23 highPriority:0];
  }

  else
  {
    v26 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v26, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES conversation request but we were actually expecting another response.", buf, 2u);
    }
  }
}

- (void)replyWithMessagesToSendAsFetchResponse:(id)response includesProtectedMessages:(BOOL)messages
{
  responseCopy = response;
  providerQueue = self->_providerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__NNMKSyncProvider_replyWithMessagesToSendAsFetchResponse_includesProtectedMessages___block_invoke;
  v8[3] = &unk_279935CD8;
  v9 = responseCopy;
  selfCopy = self;
  v7 = responseCopy;
  dispatch_async(providerQueue, v8);
}

uint64_t __85__NNMKSyncProvider_replyWithMessagesToSendAsFetchResponse_includesProtectedMessages___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 134217984;
    v19 = [v3 count];
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "MobileMail replied with full headers messages for %lu message IDs for #BATCHED_RESPONSE. Checking if we can now send batch back to Watch...", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [*(a1 + 40) batchRequestHandler];
        [v11 handleMessageAdded:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return [*(a1 + 40) _checkBatchFetchedMessages];
}

- (void)replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages
{
  resendCopy = resend;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NNMKSyncProvider_replyWithMessagesToResend_includesProtectedMessages___block_invoke;
  block[3] = &unk_279936708;
  block[4] = self;
  v10 = resendCopy;
  messagesCopy = messages;
  v8 = resendCopy;
  dispatch_async(providerQueue, block);
}

void __72__NNMKSyncProvider_replyWithMessagesToResend_includesProtectedMessages___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__NNMKSyncProvider_replyWithMessagesToResend_includesProtectedMessages___block_invoke_2;
  v4[3] = &unk_2799366E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 groupMessagesByMailbox:v3 mailboxes:0 block:v4];
}

- (void)_replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages mailbox:(id)mailbox
{
  v27 = *MEMORY[0x277D85DE8];
  resendCopy = resend;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v10 = [persistenceHandler addMessagesToResend:resendCopy mailbox:mailboxCopy];

    messageIdsWithDefaultPriority = [v10 messageIdsWithDefaultPriority];
    v12 = [messageIdsWithDefaultPriority count];

    if (v12)
    {
      messagesSyncService = self->_messagesSyncService;
      protoMessagesWithDefaultPriority = [v10 protoMessagesWithDefaultPriority];
      v15 = [(NNMKMessagesSyncServiceServer *)messagesSyncService addMessages:protoMessagesWithDefaultPriority notificationPriority:0];

      resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
      messageIdsWithDefaultPriority2 = [v10 messageIdsWithDefaultPriority];
      [resendScheduler registerIDSIdentifier:v15 objectIds:messageIdsWithDefaultPriority2 type:@"Message" resendInterval:{objc_msgSend(v10, "resendInterval")}];

      v18 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        messageIdsWithDefaultPriority3 = [v10 messageIdsWithDefaultPriority];
        v21 = 134218498;
        v22 = [messageIdsWithDefaultPriority3 count];
        v23 = 2114;
        v24 = v15;
        v25 = 2048;
        resendInterval = [v10 resendInterval];
        _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "Messages RESENT (Count: %lu - IDS Identifier: %{public}@ - Resend Interval: %lu).", &v21, 0x20u);
      }
    }
  }
}

- (void)replyWithAccountToResend:(id)resend
{
  resendCopy = resend;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NNMKSyncProvider_replyWithAccountToResend___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = resendCopy;
  v6 = resendCopy;
  dispatch_async(providerQueue, v7);
}

void __45__NNMKSyncProvider_replyWithAccountToResend___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [v3 accountId];
      v5 = [v1 syncedAccountForAccountWithId:v4];

      if (v5 && ([v5 resendRequested] & 1) != 0)
      {
        v6 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          v8 = v6;
          v9 = [v7 accountId];
          *buf = 138543362;
          v49 = v9;
          _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Account RESENT (Id: %{public}@).", buf, 0xCu);
        }

        [*(*(a1 + 32) + 72) beginUpdates];
        v10 = objc_alloc_init(NNMKProtoAccountAdditionOrUpdate);
        v11 = [*(a1 + 40) accountId];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setAccountId:v11];

        v12 = [*(a1 + 40) displayName];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setDisplayName:v12];

        -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v10, "setShouldArchive:", [*(a1 + 40) shouldArchive]);
        -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v10, "setFullSyncVersion:", [*(*(a1 + 32) + 72) fullSyncVersion]);
        v13 = [*(a1 + 40) username];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setUsername:v13];

        v14 = [*(a1 + 40) localId];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setLocalId:v14];

        v15 = [*(a1 + 40) parentAccountIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setParentId:v15];

        v16 = [*(a1 + 40) typeIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setTypeIdentifier:v16];

        v17 = [*(a1 + 40) emailAddressToken];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setEmailAddressToken:v17];

        v18 = [*(a1 + 40) pccEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setPccEmailAddress:v18];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = [*(a1 + 40) emailAddresses];
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v43;
          do
          {
            v23 = 0;
            do
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [(NNMKProtoAccountAdditionOrUpdate *)v10 addEmail:*(*(&v42 + 1) + 8 * v23++)];
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v21);
        }

        v24 = [*(a1 + 40) defaultEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setDefaultEmail:v24];

        v25 = [*(a1 + 32) persistenceHandler];
        v26 = [v25 updateMailboxListForAccount:*(a1 + 40) mailboxListChanged:0];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setMailboxes:v26];

        v27 = [v5 resendInterval];
        v28 = [*(a1 + 40) displayName];
        [v5 setDisplayName:v28];

        [v5 setShouldArchive:{objc_msgSend(*(a1 + 40), "shouldArchive")}];
        v29 = [*(a1 + 40) emailAddresses];
        [v5 setEmailAddresses:v29];

        v30 = [*(a1 + 40) defaultEmailAddress];
        [v5 setDefaultEmailAddress:v30];

        v31 = [*(a1 + 40) typeIdentifier];
        [v5 setTypeIdentifier:v31];

        v32 = [*(a1 + 40) emailAddressToken];
        [v5 setEmailAddressToken:v32];

        v33 = [*(a1 + 40) pccEmailAddress];
        [v5 setPccEmailAddress:v33];

        [v5 setResendRequested:0];
        [v5 setResendInterval:0];
        [*(*(a1 + 32) + 72) addOrUpdateSyncedAccount:v5];
        v34 = [*(*(a1 + 32) + 104) addOrUpdateAccount:v10];
        v35 = [*(a1 + 32) resendScheduler];
        v36 = [*(a1 + 40) accountId];
        v46 = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        [v35 registerIDSIdentifier:v34 objectIds:v37 type:@"Account" resendInterval:v27];

        [*(*(a1 + 32) + 72) endUpdates];
      }

      else
      {
        v38 = qword_28144D620;
        if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
LABEL_18:

          return;
        }

        v39 = *(a1 + 40);
        v10 = v38;
        v40 = [v39 accountId];
        *buf = 138543362;
        v49 = v40;
        _os_log_impl(&dword_25B19F000, &v10->super.super, OS_LOG_TYPE_DEFAULT, "Unexpected reply from delegate for 'account to resend' (Id: %{public}@).", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v41 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v41, OS_LOG_TYPE_DEFAULT, "Account does not exist anymore. It will not resend", buf, 2u);
    }
  }
}

- (void)replyWithMessageSendingProgress:(int64_t)progress forComposedMessageId:(id)id
{
  idCopy = id;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NNMKSyncProvider_replyWithMessageSendingProgress_forComposedMessageId___block_invoke;
  block[3] = &unk_279936218;
  v10 = idCopy;
  progressCopy = progress;
  block[4] = self;
  v8 = idCopy;
  dispatch_async(providerQueue, block);
}

void __73__NNMKSyncProvider_replyWithMessageSendingProgress_forComposedMessageId___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 72) hasMailboxSyncedActive])
  {
    v2 = *(a1 + 48);
    if (v2 == 0x7FFFFFFF || v2 == -1)
    {
      [*(*(a1 + 32) + 72) removeProgressForComposedMessageWithId:*(a1 + 40)];
    }

    else
    {
      [*(*(a1 + 32) + 72) setProgress:? forComposedMessageWithId:?];
    }

    v4 = objc_alloc_init(NNMKProtoComposedMessageSendingProgressReport);
    [(NNMKProtoComposedMessageSendingProgressReport *)v4 setComposedMessageId:*(a1 + 40)];
    [(NNMKProtoComposedMessageSendingProgressReport *)v4 setProgress:*(a1 + 48)];
    v5 = [*(*(a1 + 32) + 112) reportComposedMessageSendingProgress:v4];
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138543874;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Sending progress for composed message (Id: %{public}@ - Progress: %li - IDS Identifier: %{public}@)...", buf, 0x20u);
    }

    v9 = [*(a1 + 32) resendScheduler];
    v12 = *(a1 + 40);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [v9 registerIDSIdentifier:v5 objectIds:v10 type:@"SendingProgress" resendInterval:0];

    if (*(a1 + 48) == -1)
    {
      v11 = +[NNMKAnalytics sharedInstance];
      [v11 reportMessageDeliveryFailedInMode:0];
    }
  }
}

- (void)addMessages:(id)messages
{
  messagesCopy = messages;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NNMKSyncProvider_addMessages___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_async(providerQueue, v7);
}

void __32__NNMKSyncProvider_addMessages___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__NNMKSyncProvider_addMessages___block_invoke_2;
  v4[3] = &unk_279936730;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 groupMessagesByMailbox:v3 mailboxes:0 block:v4];
}

- (void)_addMessages:(id)messages mailbox:(id)mailbox
{
  v16 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  syncActive = [mailboxCopy syncActive];
  v9 = qword_28144D620;
  if (syncActive)
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      mailboxId = [mailboxCopy mailboxId];
      v12 = 138543618;
      v13 = mailboxId;
      v14 = 2048;
      v15 = [messagesCopy count];
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Adding new messages for mailbox. %{public}@ - count: %lu", &v12, 0x16u);
    }

    [(NNMKSyncProvider *)self _addMessages:messagesCopy messagesAreNew:1 mailbox:mailboxCopy];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [(NNMKSyncProvider *)v9 _addMessages:mailboxCopy mailbox:messagesCopy];
  }
}

- (void)updateMessagesStatus:(id)status
{
  statusCopy = status;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NNMKSyncProvider_updateMessagesStatus___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(providerQueue, v7);
}

void __41__NNMKSyncProvider_updateMessagesStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__NNMKSyncProvider_updateMessagesStatus___block_invoke_2;
  v4[3] = &unk_279936730;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 groupMessagesByMailbox:v3 mailboxes:0 block:v4];
}

- (void)_updateMessagesStatus:(id)status mailbox:(id)mailbox
{
  statusCopy = status;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v9 = [persistenceHandler updateMessagesStatus:statusCopy mailbox:mailboxCopy];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__NNMKSyncProvider__updateMessagesStatus_mailbox___block_invoke;
    v24[3] = &unk_279936758;
    v24[4] = self;
    v10 = MEMORY[0x25F864490](v24);
    messagesSyncService = self->_messagesSyncService;
    protoMessageUpdatesWithNotificationPriority = [v9 protoMessageUpdatesWithNotificationPriority];
    messageIdsWithNotificationPriority = [v9 messageIdsWithNotificationPriority];
    (v10)[2](v10, messagesSyncService, protoMessageUpdatesWithNotificationPriority, messageIdsWithNotificationPriority, 1);

    v14 = self->_messagesSyncService;
    protoMessageUpdatesWithDefaultPriority = [v9 protoMessageUpdatesWithDefaultPriority];
    messageIdsWithDefaultPriority = [v9 messageIdsWithDefaultPriority];
    (v10)[2](v10, v14, protoMessageUpdatesWithDefaultPriority, messageIdsWithDefaultPriority, 0);

    messageIdsToDelete = [v9 messageIdsToDelete];
    v18 = [messageIdsToDelete count];

    if (v18)
    {
      messageIdsToDelete2 = [v9 messageIdsToDelete];
      [(NNMKSyncProvider *)self deleteMessagesWithIds:messageIdsToDelete2];
    }

    messagesToAdd = [v9 messagesToAdd];
    v21 = [messagesToAdd count];

    if (v21)
    {
      messagesToAdd2 = [v9 messagesToAdd];
      [(NNMKSyncProvider *)self _addMessages:messagesToAdd2 messagesAreNew:0 mailbox:mailboxCopy];
    }
  }

  else
  {
    v23 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncProvider *)v23 _updateMessagesStatus:mailboxCopy mailbox:statusCopy];
    }
  }
}

void __50__NNMKSyncProvider__updateMessagesStatus_mailbox___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  if ([v9 messageStatusUpdatesCount])
  {
    v11 = [v13 updateMessagesStatus:v9 notificationPriority:a5];
    v12 = [*(a1 + 32) resendScheduler];
    [v12 registerIDSIdentifier:v11 objectIds:v10 type:@"Message" resendInterval:0];
  }
}

- (void)deleteMessagesWithIds:(id)ids
{
  idsCopy = ids;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke;
  v7[3] = &unk_279935CD8;
  v8 = idsCopy;
  selfCopy = self;
  v6 = idsCopy;
  dispatch_async(providerQueue, v7);
}

void __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 40) + 72) syncedMessageForMessageWithId:*(*(&v11 + 1) + 8 * v7)];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 40) syncController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke_2;
  v10[3] = &unk_279936730;
  v10[4] = *(a1 + 40);
  [v9 groupMessagesByMailbox:v2 mailboxes:0 block:v10];
}

void __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [NNMKMessage messageIdsFromMessages:a2];
  [v4 _deleteMessagesWithIds:v6 mailbox:v5];
}

- (void)_deleteMessagesWithIds:(id)ids mailbox:(id)mailbox
{
  idsCopy = ids;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v9 = [persistenceHandler deleteMessagesWithIds:idsCopy mailbox:mailboxCopy];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__NNMKSyncProvider__deleteMessagesWithIds_mailbox___block_invoke;
    v17[3] = &unk_279936780;
    v17[4] = self;
    v10 = MEMORY[0x25F864490](v17);
    messagesSyncService = self->_messagesSyncService;
    unprotectedNotificationProtobuf = [v9 unprotectedNotificationProtobuf];
    unprotectedNotificationMessageIds = [v9 unprotectedNotificationMessageIds];
    (v10)[2](v10, messagesSyncService, unprotectedNotificationProtobuf, unprotectedNotificationMessageIds, 1);

    v14 = self->_messagesSyncService;
    unprotectedDefaultProtobuf = [v9 unprotectedDefaultProtobuf];
    unprotectedDefaultMessageIds = [v9 unprotectedDefaultMessageIds];
    (v10)[2](v10, v14, unprotectedDefaultProtobuf, unprotectedDefaultMessageIds, 0);
  }
}

void __51__NNMKSyncProvider__deleteMessagesWithIds_mailbox___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v10 messageDeletionsCount])
  {
    v12 = [v9 deleteMessages:v10 notificationPriority:a5];
    v13 = [*(a1 + 32) resendScheduler];
    [v13 registerIDSIdentifier:v12 objectIds:v11 type:@"Message" resendInterval:0];

    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v9;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Deletion operation sent to watch. (IDS Identifier: %{public}@, Channel: %{public}@)", buf, 0x16u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) _requestDelegateToStopDownloadingMessageElementsForMessageWithId:{*(*(&v20 + 1) + 8 * v19++), v20}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)updateConversationId:(id)id notify:(BOOL)notify messages:(id)messages
{
  if (notify)
  {
    [(NNMKSyncProvider *)self markConversationIdForNotify:id messages:messages includesProtectedMessages:0];
  }

  else
  {
    [(NNMKSyncProvider *)self markConversationIdForNotNotify:id, notify, messages];
  }
}

- (void)updateConversationId:(id)id mute:(BOOL)mute
{
  idCopy = id;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NNMKSyncProvider_updateConversationId_mute___block_invoke;
  block[3] = &unk_279936708;
  block[4] = self;
  v10 = idCopy;
  muteCopy = mute;
  v8 = idCopy;
  dispatch_async(providerQueue, block);
}

void __46__NNMKSyncProvider_updateConversationId_mute___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) syncedMessagesForConversationWithId:*(a1 + 40)];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) syncController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_2;
    v6[3] = &unk_2799367A8;
    v4 = *(a1 + 40);
    v9 = *(a1 + 48);
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    [v3 groupMessagesByMailbox:v2 mailboxes:0 block:v6];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_cold_1();
  }
}

void __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 syncActive])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Conversation muted status updated (Id: %{public}@, Muted: %lu).", &v8, 0x16u);
    }

    [*(a1 + 40) _markConversationWithId:*(a1 + 32) forState:2048 include:*(a1 + 48) mailbox:v4];
  }
}

- (void)markConversationIdForNotify:(id)notify messages:(id)messages includesProtectedMessages:(BOOL)protectedMessages
{
  notifyCopy = notify;
  messagesCopy = messages;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke;
  block[3] = &unk_279936098;
  v13 = messagesCopy;
  selfCopy = self;
  v15 = notifyCopy;
  v10 = notifyCopy;
  v11 = messagesCopy;
  dispatch_async(providerQueue, block);
}

void __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncController];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_39;
    v10[3] = &unk_2799366B8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v6;
    [v4 groupMessagesByMailbox:v5 mailboxes:0 block:v10];
  }

  else
  {
    v7 = [v2[9] syncedMessagesForConversationWithId:*(a1 + 48)];
    if ([v7 count])
    {
      v8 = [*(a1 + 40) syncController];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_2;
      v12[3] = &unk_2799366B8;
      v9 = *(a1 + 48);
      v12[4] = *(a1 + 40);
      v13 = v9;
      [v8 groupMessagesByMailbox:v7 mailboxes:0 block:v12];
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_cold_1();
    }
  }
}

- (void)_markConversationIdForNotify:(id)notify messages:(id)messages mailbox:(id)mailbox
{
  v14 = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  messagesCopy = messages;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = notifyCopy;
      _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Conversation marked for notify (Id: %{public}@).", &v12, 0xCu);
    }

    [(NNMKSyncProvider *)self _markConversationWithId:notifyCopy forState:128 include:1 mailbox:mailboxCopy];
    if (messagesCopy)
    {
      [(NNMKSyncProvider *)self _addMessages:messagesCopy mailbox:mailboxCopy];
    }
  }
}

- (void)markConversationIdForNotNotify:(id)notify
{
  notifyCopy = notify;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = notifyCopy;
  v6 = notifyCopy;
  dispatch_async(providerQueue, v7);
}

void __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) syncedMessagesForConversationWithId:*(a1 + 40)];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) syncController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke_2;
    v6[3] = &unk_2799366B8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    [v3 groupMessagesByMailbox:v2 mailboxes:0 block:v6];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_cold_1();
  }
}

void __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 syncActive])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Conversation marked for stop notifying (Id: %{public}@).", &v7, 0xCu);
    }

    [*(a1 + 40) _markConversationWithId:*(a1 + 32) forState:128 include:0 mailbox:v4];
  }
}

- (void)addMessageContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected
{
  contentCopy = content;
  messageCopy = message;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke;
  block[3] = &unk_279936098;
  block[4] = self;
  v13 = messageCopy;
  v14 = contentCopy;
  v10 = contentCopy;
  v11 = messageCopy;
  dispatch_async(providerQueue, block);
}

void __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v3 = a1 + 40;
  v4 = [*(a1 + 40) mailboxId];
  v5 = [v2 mailboxWithId:v4];

  if (v5)
  {
    [*(a1 + 32) _addMessageContent:*(a1 + 48) forMessage:*(a1 + 40) mailbox:v5];
  }

  else
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke_cold_1(v3, v6);
    }
  }
}

- (void)_addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox
{
  v71[2] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  messageCopy = message;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      mailboxId = [messageCopy mailboxId];
      *buf = 138543362;
      v58 = mailboxId;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_INFO, "Received message content from MobileMail - Id %{public}@", buf, 0xCu);
    }

    messageId = [contentCopy messageId];

    if (messageId)
    {
      v15 = +[NNMKAnalytics sharedInstance];
      [v15 reportOriginalMessageContentSizeInBytes:objc_msgSend(contentCopy source:{"originalContentSize"), 0}];

      persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
      v17 = [persistenceHandler addMessageContent:contentCopy forMessage:messageCopy mailbox:mailboxCopy];

      protoMessageContentSync = [v17 protoMessageContentSync];

      if (!protoMessageContentSync)
      {
        v48 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v48;
          messageId2 = [contentCopy messageId];
          v51 = [v17 messageDoesNotExist] ^ 1;
          alreadySyncedWithCurrentPriority = [v17 alreadySyncedWithCurrentPriority];
          *buf = 138543874;
          v58 = messageId2;
          v59 = 1024;
          v60 = v51;
          v61 = 1024;
          v62 = alreadySyncedWithCurrentPriority;
          _os_log_impl(&dword_25B19F000, v49, OS_LOG_TYPE_DEFAULT, "Message Content ADDED but not synced (Message Id: %{public}@ Message Had Been Synced: %d, Already Synced With Current Priority: %d).", buf, 0x18u);
        }

        goto LABEL_21;
      }

      contentSyncService = self->_contentSyncService;
      protoMessageContentSync2 = [v17 protoMessageContentSync];
      v56 = -[NNMKMessageContentSyncServiceServer syncMessageContent:notificationPriority:userRequested:](contentSyncService, "syncMessageContent:notificationPriority:userRequested:", protoMessageContentSync2, [v17 isNotificationPriority], objc_msgSend(v17, "isUserRequest"));

      sessionController = [(NNMKSyncProvider *)self sessionController];
      notificationPayloadAcks = [sessionController notificationPayloadAcks];
      messageId3 = [contentCopy messageId];
      v24 = [notificationPayloadAcks objectForKeyedSubscript:messageId3];
      if (v24)
      {
        v25 = v24;
        isNotificationPriority = [v17 isNotificationPriority];

        if (!isNotificationPriority)
        {
LABEL_12:
          resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
          messageId4 = [contentCopy messageId];
          v71[0] = messageId4;
          v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "isUserRequest")}];
          stringValue = [v36 stringValue];
          v71[1] = stringValue;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
          [resendScheduler registerIDSIdentifier:v56 objectIds:v38 type:@"MessageContent" resendInterval:{objc_msgSend(v17, "resendInterval")}];

          v39 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            log = v39;
            messageId5 = [contentCopy messageId];
            isNotificationPriority2 = [v17 isNotificationPriority];
            isUserRequest = [v17 isUserRequest];
            textData = [contentCopy textData];
            v42 = [textData length];
            compressedTextDataLength = [v17 compressedTextDataLength];
            protoMessageContentSync3 = [v17 protoMessageContentSync];
            fullSyncVersion = [protoMessageContentSync3 fullSyncVersion];
            *buf = 138544898;
            v58 = messageId5;
            v59 = 1024;
            v60 = isNotificationPriority2;
            v61 = 1024;
            v62 = isUserRequest;
            v63 = 2048;
            v64 = v42;
            v65 = 2048;
            v66 = compressedTextDataLength;
            v67 = 2114;
            v68 = v56;
            v69 = 1024;
            v70 = fullSyncVersion;
            _os_log_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEFAULT, "Message Content ADDED (Id: %{public}@ - Notification Priority: %d - User Requested: %d - Data Length: %lu - Compressed Data Length: %lu - IDS Identifier: %{public}@ (#sync-version: %u)).", buf, 0x3Cu);
          }

          if ([v17 isContentCompletelySynced])
          {
            initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
            messageId6 = [messageCopy messageId];
            [initialSyncProgressTracker updateProgressWithContentCompletelySyncedForMessageId:messageId6];
          }

LABEL_21:
          goto LABEL_22;
        }

        v27 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          messageId7 = [contentCopy messageId];
          *buf = 138543362;
          v58 = messageId7;
          _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Notifying BulletinDistributor Ping Subscriber that we synced content for notification. (Message Id: %{public}@)", buf, 0xCu);
        }

        sessionController2 = [(NNMKSyncProvider *)self sessionController];
        notificationPayloadAcks2 = [sessionController2 notificationPayloadAcks];
        messageId8 = [contentCopy messageId];
        v33 = [notificationPayloadAcks2 objectForKeyedSubscript:messageId8];
        v33[2](v33, 1);

        sessionController = [(NNMKSyncProvider *)self sessionController];
        notificationPayloadAcks = [sessionController notificationPayloadAcks];
        messageId3 = [contentCopy messageId];
        [notificationPayloadAcks setObject:0 forKeyedSubscript:messageId3];
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider _addMessageContent:forMessage:mailbox:];
    }
  }

LABEL_22:
}

- (void)reportMessageContentDownloadFailureForMessageId:(id)id
{
  idCopy = id;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__NNMKSyncProvider_reportMessageContentDownloadFailureForMessageId___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(providerQueue, v7);
}

void __68__NNMKSyncProvider_reportMessageContentDownloadFailureForMessageId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4 = [v2 mailboxForMessageWithId:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) _reportMessageContentDownloadFailureForMessageId:*(a1 + 40) mailbox:v4];
    v3 = v4;
  }
}

- (void)_reportMessageContentDownloadFailureForMessageId:(id)id mailbox:(id)mailbox
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = idCopy;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Reported failure downloading content for message (Id: %{public}@).", &v18, 0xCu);
    }

    v9 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:idCopy];
    if (v9)
    {
      v10 = objc_alloc_init(NNMKProtoErrorDownloadingContentForMessageWarning);
      syncController = [(NNMKSyncProvider *)self syncController];
      v12 = [syncController watchMessageIdFromMessageId:idCopy];
      [(NNMKProtoErrorDownloadingContentForMessageWarning *)v10 setMessageId:v12];

      mailboxId = [mailboxCopy mailboxId];
      [(NNMKProtoErrorDownloadingContentForMessageWarning *)v10 setMailboxId:mailboxId];

      fetchesSyncService = self->_fetchesSyncService;
      usedNotificationPriorityForMessageSync = [v9 usedNotificationPriorityForMessageSync];
      if ([v9 contentSyncedBecauseUserRequested])
      {
        contentRequestedByUser = 1;
      }

      else
      {
        contentRequestedByUser = [v9 contentRequestedByUser];
      }

      [(NNMKFetchesSyncServiceServer *)fetchesSyncService warnErrorDownloadingContentForMessage:v10 notificationPriority:usedNotificationPriorityForMessageSync userRequested:contentRequestedByUser];
      [v9 setContentRequestedByUser:0];
      initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker updateProgressWithMessageContentDownloadFailed:idCopy];

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v9];
    }
  }
}

- (void)addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected
{
  dataCopy = data;
  idCopy = id;
  contentIdCopy = contentId;
  providerQueue = self->_providerQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__NNMKSyncProvider_addAttachmentData_forMessageId_contentId_loadedProtected___block_invoke;
  v16[3] = &unk_2799367D0;
  v16[4] = self;
  v17 = idCopy;
  v18 = dataCopy;
  v19 = contentIdCopy;
  v13 = contentIdCopy;
  v14 = dataCopy;
  v15 = idCopy;
  dispatch_async(providerQueue, v16);
}

void __77__NNMKSyncProvider_addAttachmentData_forMessageId_contentId_loadedProtected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4 = [v2 mailboxForMessageWithId:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) _addAttachmentData:*(a1 + 48) forMessageId:*(a1 + 40) contentId:*(a1 + 56) mailbox:v4];
    v3 = v4;
  }
}

- (void)addImageAttachment:(id)attachment forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected
{
  attachmentCopy = attachment;
  idCopy = id;
  contentIdCopy = contentId;
  providerQueue = self->_providerQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__NNMKSyncProvider_addImageAttachment_forMessageId_contentId_loadedProtected___block_invoke;
  v16[3] = &unk_2799367D0;
  v16[4] = self;
  v17 = idCopy;
  v18 = attachmentCopy;
  v19 = contentIdCopy;
  v13 = contentIdCopy;
  v14 = attachmentCopy;
  v15 = idCopy;
  dispatch_async(providerQueue, v16);
}

void __78__NNMKSyncProvider_addImageAttachment_forMessageId_contentId_loadedProtected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4 = [v2 mailboxForMessageWithId:*(a1 + 40)];

  if (v4)
  {
    v3 = UIImageJPEGRepresentation(*(a1 + 48), 0.9);
    [*(a1 + 32) _addAttachmentData:v3 forMessageId:*(a1 + 40) contentId:*(a1 + 56) mailbox:v4];
  }
}

- (void)_addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId mailbox:(id)mailbox
{
  v48 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  idCopy = id;
  contentIdCopy = contentId;
  if ([mailbox syncActive])
  {
    if (dataCopy)
    {
      v13 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:idCopy];
      contentSyncedUsingNotificationPriority = [v13 contentSyncedUsingNotificationPriority];
      contentSyncedBecauseUserRequested = [v13 contentSyncedBecauseUserRequested];
      attachmentsContentIdsNotYetSynced = [v13 attachmentsContentIdsNotYetSynced];
      v17 = [attachmentsContentIdsNotYetSynced containsObject:contentIdCopy];

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
      if (v13)
      {
        v20 = v17 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v21 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v42 = idCopy;
          v43 = 2114;
          v44 = contentIdCopy;
          v45 = 1024;
          *v46 = v13 != 0;
          *&v46[4] = 1024;
          *&v46[6] = v17;
          _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "Attachment ADDED but not synced (Message Id: %{public}@, Content Id: %{public}@, Message Had Been Synced: %d, Attachment Not Yet Synced: %d).", buf, 0x22u);
        }
      }

      else
      {
        if (contentSyncedUsingNotificationPriority)
        {
          v18 = [dataCopy length];
          v19 = 1048576.0;
          v40 = v18 <= 1048576.0;
        }

        else
        {
          v40 = 0;
        }

        v23 = [dataCopy length];
        if (v23 > 2097152.0)
        {
          [MEMORY[0x277CBEA90] data];
        }

        v24 = dataCopy;
        v25 = objc_alloc_init(NNMKProtoAttachmentSync);
        [(NNMKProtoAttachmentSync *)v25 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
        v26 = MEMORY[0x277CCAAB0];
        date = [MEMORY[0x277CBEAA8] date];
        v28 = [v26 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
        [(NNMKProtoAttachmentSync *)v25 setDateSynced:v28];

        syncController = [(NNMKSyncProvider *)self syncController];
        v30 = [syncController watchMessageIdFromMessageId:idCopy];
        [(NNMKProtoAttachmentSync *)v25 setMessageId:v30];

        mailboxId = [v13 mailboxId];
        [(NNMKProtoAttachmentSync *)v25 setMailboxId:mailboxId];

        syncController2 = [(NNMKSyncProvider *)self syncController];
        v33 = [syncController2 watchAttachmentContentIdFromContentId:contentIdCopy];
        [(NNMKProtoAttachmentSync *)v25 setContentId:v33];

        [(NNMKProtoAttachmentSync *)v25 setAttachmentData:v24];
        v34 = [(NNMKMessageContentSyncServiceServer *)self->_contentSyncService syncAttachment:v25 notificationPriority:v40 userRequested:contentSyncedBecauseUserRequested];
        attachmentsContentIdsNotYetSynced2 = [v13 attachmentsContentIdsNotYetSynced];
        [attachmentsContentIdsNotYetSynced2 removeObject:contentIdCopy];

        v36 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          *buf = 138544130;
          v42 = idCopy;
          v43 = 2114;
          v44 = contentIdCopy;
          v45 = 2048;
          *v46 = [v24 length];
          *&v46[8] = 2114;
          v47 = v34;
          _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "Attachment ADDED (Message Id: %{public}@, Content Id: %{public}@, Bytes: %lu, - IDS Identifier: %{public}@).", buf, 0x2Au);
        }
      }

      if ([v13 isContentCompletelySynced])
      {
        initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
        messageId = [v13 messageId];
        [initialSyncProgressTracker updateProgressWithContentCompletelySyncedForMessageId:messageId];
      }

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v13];
      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    }

    else
    {
      v22 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v42 = idCopy;
        v43 = 2114;
        v44 = contentIdCopy;
        _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "Received data to send = nil. MobileMail probably failed downloading it. Ignoring so we can re-try later upon user request (Message Id: %{public}@ - Content Id: %{public}@).", buf, 0x16u);
      }
    }
  }
}

- (void)reportWillDownloadFirstMessages
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NNMKSyncProvider_reportWillDownloadFirstMessages__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

void __51__NNMKSyncProvider_reportWillDownloadFirstMessages__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    v2 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "MobileMail will download headers for the messages that are part of the #initial-sync. We're ignoring the download for the sake of reporting to PairedSync. Notifying client that we're done sending everything...", v4, 2u);
    }

    v3 = [*(a1 + 32) initialSyncProgressTracker];
    [v3 finishedSendingInitialSyncContentToPairedDevice];
  }
}

- (void)addUpdateOrDeleteAccounts:(id)accounts
{
  accountsCopy = accounts;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__NNMKSyncProvider_addUpdateOrDeleteAccounts___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = accountsCopy;
  v6 = accountsCopy;
  dispatch_async(providerQueue, v7);
}

void __46__NNMKSyncProvider_addUpdateOrDeleteAccounts___block_invoke(uint64_t a1)
{
  v1 = a1;
  v169 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    return;
  }

  [v2 beginUpdates];
  v3 = [*(*(v1 + 32) + 72) allSyncedAccountsKeyedByAccountId];
  v135 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = *(v1 + 40);
  v137 = v1;
  v131 = [obj countByEnumeratingWithState:&v151 objects:v168 count:16];
  v125 = v3;
  if (!v131)
  {
    v126 = 0;
    v127 = 0;
    goto LABEL_52;
  }

  v126 = 0;
  v129 = *v152;
  v127 = 0;
  v4 = 0x277CCA000uLL;
  do
  {
    v5 = 0;
    do
    {
      if (*v152 != v129)
      {
        objc_enumerationMutation(obj);
      }

      v133 = v5;
      v6 = *(*(&v151 + 1) + 8 * v5);
      v7 = [v6 accountId];
      [v135 addObject:v7];

      v8 = [v6 accountId];
      v9 = [v3 objectForKeyedSubscript:v8];

      v150 = 0;
      v10 = [*(v1 + 32) persistenceHandler];
      v136 = [v10 updateMailboxListForAccount:v6 mailboxListChanged:&v150];

      if (!v9)
      {
        v9 = [[NNMKSyncedAccount alloc] initWithAccount:v6];
        v38 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v38;
          v40 = [v6 accountId];
          v41 = [v6 displayName];
          v42 = [v6 shouldArchive];
          v43 = [v6 emailAddresses];
          v44 = [v43 nnmk_description];
          *buf = 138544130;
          v161 = v40;
          v162 = 2114;
          v163 = v41;
          v164 = 1024;
          *v165 = v42;
          *&v165[4] = 2114;
          *&v165[6] = v44;
          _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_DEFAULT, "Account ADDED (Id: %{public}@ - Display Name: %{public}@ - Should Archive: %d - Email addresses: %{public}@).", buf, 0x26u);

          v1 = v137;
        }

        v127 = 1;
        goto LABEL_31;
      }

      v11 = [(NNMKSyncedAccount *)v9 shouldArchive];
      if (v11 == [v6 shouldArchive])
      {
        v12 = *(v4 + 3240);
        v13 = [(NNMKSyncedAccount *)v9 displayName];
        v14 = [v6 displayName];
        if ([v12 isString:v13 equalToNullableString:v14])
        {
          v15 = *(v4 + 3240);
          v16 = [(NNMKSyncedAccount *)v9 username];
          v17 = [v6 username];
          if ([v15 isString:v16 equalToNullableString:v17])
          {
            v121 = v17;
            v122 = v16;
            v18 = MEMORY[0x277CBEB98];
            v19 = [(NNMKSyncedAccount *)v9 emailAddresses];
            v20 = [v18 setWithArray:v19];
            v21 = MEMORY[0x277CBEB98];
            v22 = v20;
            v23 = [v6 emailAddresses];
            v24 = [v21 setWithArray:v23];
            if ([v22 isEqualToSet:v24])
            {
              v120 = v24;
              v25 = *(v4 + 3240);
              v26 = [(NNMKSyncedAccount *)v9 defaultEmailAddress];
              v27 = [v6 defaultEmailAddress];
              v28 = v25;
              v29 = v27;
              if ([v28 isString:v26 equalToNullableString:v27])
              {
                v117 = v29;
                v118 = v26;
                v119 = v22;
                v30 = *(v4 + 3240);
                v31 = [(NNMKSyncedAccount *)v9 typeIdentifier];
                [v6 typeIdentifier];
                v32 = v116 = v31;
                if ([v30 isString:v31 equalToNullableString:?])
                {
                  v33 = *(v4 + 3240);
                  v34 = [(NNMKSyncedAccount *)v9 emailAddressToken];
                  v114 = [v6 emailAddressToken];
                  v115 = v34;
                  v35 = [v33 isString:v34 equalToNullableString:?];
                  v3 = v125;
                  if (v35)
                  {
                    v112 = *(v4 + 3240);
                    v113 = [(NNMKSyncedAccount *)v9 pccEmailAddress];
                    v36 = [v6 pccEmailAddress];
                    v37 = [v112 isString:v113 equalToNullableString:v36] ^ 1;
                  }

                  else
                  {
                    v37 = 1;
                  }
                }

                else
                {
                  v37 = 1;
                  v3 = v125;
                }

                if (v37)
                {
                  v45 = 1;
                  v1 = v137;
                }

                else
                {
                  v1 = v137;
                  if ((v150 & 1) == 0)
                  {
                    v80 = v136;
                    goto LABEL_39;
                  }

                  v45 = 0;
                }

                goto LABEL_24;
              }

              v24 = v120;
            }

            v3 = v125;
            v17 = v121;
            v16 = v122;
          }

          v1 = v137;
        }
      }

      v45 = 1;
LABEL_24:
      v46 = [v6 displayName];
      [(NNMKSyncedAccount *)v9 setDisplayName:v46];

      v47 = [v6 username];
      [(NNMKSyncedAccount *)v9 setUsername:v47];

      -[NNMKSyncedAccount setShouldArchive:](v9, "setShouldArchive:", [v6 shouldArchive]);
      v48 = [v6 emailAddresses];
      [(NNMKSyncedAccount *)v9 setEmailAddresses:v48];

      v49 = [v6 defaultEmailAddress];
      [(NNMKSyncedAccount *)v9 setDefaultEmailAddress:v49];

      v50 = [v6 typeIdentifier];
      [(NNMKSyncedAccount *)v9 setTypeIdentifier:v50];

      v51 = [v6 emailAddressToken];
      [(NNMKSyncedAccount *)v9 setEmailAddressToken:v51];

      v52 = [v6 pccEmailAddress];
      [(NNMKSyncedAccount *)v9 setPccEmailAddress:v52];

      if (v45)
      {
        v53 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
          v55 = [v6 accountId];
          v56 = [v6 displayName];
          v57 = [v6 username];
          v58 = [v6 shouldArchive];
          v59 = [v6 emailAddresses];
          v60 = [v59 nnmk_description];
          *buf = 138544386;
          v161 = v55;
          v162 = 2114;
          v163 = v56;
          v164 = 2114;
          *v165 = v57;
          *&v165[8] = 1024;
          *&v165[10] = v58;
          v1 = v137;
          v166 = 2114;
          v167 = v60;
          _os_log_impl(&dword_25B19F000, v54, OS_LOG_TYPE_DEFAULT, "Account UPDATED (Id: %{public}@ - Display Name: %{public}@ - Username: %{public}@ - Should Archive: %d - Email addresses: %{public}@).", buf, 0x30u);
        }
      }

      if (v150 == 1)
      {
        v61 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
          v63 = [v6 accountId];
          v64 = [v136 count];
          *buf = 138543618;
          v161 = v63;
          v162 = 2048;
          v163 = v64;
          _os_log_impl(&dword_25B19F000, v62, OS_LOG_TYPE_DEFAULT, "Account mailboxes UPDATED (Id: %{public}@ - New Mailboxes Count: %lu).", buf, 0x16u);
        }
      }

      v126 = 1;
LABEL_31:
      v65 = objc_alloc_init(NNMKProtoAccountAdditionOrUpdate);
      v66 = [v6 accountId];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setAccountId:v66];

      v67 = [v6 displayName];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setDisplayName:v67];

      -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v65, "setShouldArchive:", [v6 shouldArchive]);
      -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v65, "setFullSyncVersion:", [*(*(v1 + 32) + 72) fullSyncVersion]);
      v68 = [v6 parentAccountIdentifier];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setParentId:v68];

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v69 = [v6 emailAddresses];
      v70 = [v69 countByEnumeratingWithState:&v146 objects:v159 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v147;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v147 != v72)
            {
              objc_enumerationMutation(v69);
            }

            [(NNMKProtoAccountAdditionOrUpdate *)v65 addEmail:*(*(&v146 + 1) + 8 * i)];
          }

          v71 = [v69 countByEnumeratingWithState:&v146 objects:v159 count:16];
        }

        while (v71);
      }

      v74 = [v6 defaultEmailAddress];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setDefaultEmail:v74];

      v75 = [v6 username];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setUsername:v75];

      v76 = [v6 localId];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setLocalId:v76];

      v77 = [v6 typeIdentifier];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setTypeIdentifier:v77];

      v78 = [v6 emailAddressToken];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setEmailAddressToken:v78];

      v79 = [v6 pccEmailAddress];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setPccEmailAddress:v79];

      v80 = v136;
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setMailboxes:v136];
      [*(*(v1 + 32) + 72) addOrUpdateSyncedAccount:v9];
      v81 = [*(*(v1 + 32) + 104) addOrUpdateAccount:v65];
      v82 = [*(v1 + 32) resendScheduler];
      v83 = [v6 accountId];
      v158 = v83;
      v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1];
      [v82 registerIDSIdentifier:v81 objectIds:v84 type:@"Account" resendInterval:0];

LABEL_39:
      v5 = v133 + 1;
      v4 = 0x277CCA000;
    }

    while (v133 + 1 != v131);
    v85 = [obj countByEnumeratingWithState:&v151 objects:v168 count:16];
    v131 = v85;
  }

  while (v85);
LABEL_52:

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v130 = [v3 allKeys];
  v86 = [v130 countByEnumeratingWithState:&v142 objects:v157 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v143;
    obja = *v143;
    do
    {
      v89 = 0;
      v128 = v87;
      do
      {
        if (*v143 != v88)
        {
          objc_enumerationMutation(v130);
        }

        v90 = *(*(&v142 + 1) + 8 * v89);
        if (([v135 containsObject:v90] & 1) == 0)
        {
          v134 = v89;
          v91 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v161 = v90;
            _os_log_impl(&dword_25B19F000, v91, OS_LOG_TYPE_DEFAULT, "Account DELETED (Id: %{public}@).", buf, 0xCu);
          }

          v92 = [*(v1 + 32) sessionController];
          [v92 deleteStandaloneStateForAccountId:v90];

          v93 = objc_alloc_init(NNMKProtoAccountDeletion);
          [(NNMKProtoAccountDeletion *)v93 setAccountId:v90];
          v132 = v93;
          -[NNMKProtoAccountDeletion setFullSyncVersion:](v93, "setFullSyncVersion:", [*(*(v1 + 32) + 72) fullSyncVersion]);
          [*(*(v1 + 32) + 72) removeSyncedAccountForAccountWithId:v90];
          v94 = [*(*(v1 + 32) + 72) mailboxesForAccountId:v90];
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v95 = [v94 countByEnumeratingWithState:&v138 objects:v156 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v139;
            do
            {
              for (j = 0; j != v96; ++j)
              {
                if (*v139 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v138 + 1) + 8 * j);
                v100 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  v101 = v100;
                  v102 = [v99 mailboxId];
                  *buf = 138543618;
                  v161 = v102;
                  v162 = 2114;
                  v163 = v90;
                  _os_log_impl(&dword_25B19F000, v101, OS_LOG_TYPE_DEFAULT, "Mailbox DELETED (Id: %{public}@, Account Id: %{public}@).", buf, 0x16u);

                  v1 = v137;
                }

                v103 = *(*(v1 + 32) + 72);
                v104 = [v99 mailboxId];
                [v103 deleteMailboxWithId:v104 startTransaction:0];
              }

              v96 = [v94 countByEnumeratingWithState:&v138 objects:v156 count:16];
            }

            while (v96);
          }

          v105 = [*(*(v1 + 32) + 104) deleteAccount:v132];
          v106 = [*(v1 + 32) resendScheduler];
          v155 = v90;
          v127 = 1;
          v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
          [v106 registerIDSIdentifier:v105 objectIds:v107 type:@"Account" resendInterval:0];

          v88 = obja;
          v3 = v125;
          v87 = v128;
          v89 = v134;
        }

        ++v89;
      }

      while (v89 != v87);
      v87 = [v130 countByEnumeratingWithState:&v142 objects:v157 count:16];
    }

    while (v87);
  }

  [*(*(v1 + 32) + 72) endUpdates];
  if ((v127 | v126))
  {
    v108 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v108, OS_LOG_TYPE_DEFAULT, "Requesting watch accounts authentication status from watch due to account update", buf, 2u);
    }

    [*(v1 + 32) _sendWatchAccountStatusRequest];
  }

  if (v127)
  {
    v109 = [*(v1 + 32) syncController];
    v110 = [v109 mailboxWithId:@"-1"];

    if (v110)
    {
      v111 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v111, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync due to account add or deleted.", buf, 2u);
      }

      [*(v1 + 32) _triggerInitialSync];
    }
  }
}

- (void)updateMailboxSelection:(id)selection
{
  selectionCopy = selection;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NNMKSyncProvider_updateMailboxSelection___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = selectionCopy;
  v6 = selectionCopy;
  dispatch_async(providerQueue, v7);
}

void __43__NNMKSyncProvider_updateMailboxSelection___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) _isPaired])
  {
    return;
  }

  if (([*(a1 + 32) _pairedDeviceSupportsMultipleMailboxes] & 1) == 0 || !objc_msgSend(*(*(a1 + 32) + 72), "fullSyncVersion"))
  {
    v4 = [*(*(a1 + 32) + 72) mailboxWithId:@"-1"];
    v5 = [v4 url];

    v6 = [*(a1 + 40) mailboxesWithAllMessagesSyncEnabled];
    v7 = [v6 count];

    if (v5)
    {
      v8 = v7 == 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = [*(a1 + 40) mailboxesWithAllMessagesSyncEnabled];
      v11 = [v10 firstObject];

      v12 = [v11 url];
      v13 = [v4 url];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
LABEL_18:

        return;
      }
    }

    else if ((v5 != 0) == (v7 == 1))
    {
      v9 = [v4 filterType];
      if (v9 == [*(a1 + 40) aggregatedMailboxesFilterTypes])
      {
        goto LABEL_18;
      }
    }

    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25B19F000, v15, OS_LOG_TYPE_DEFAULT, "Synced mailbox changed. Triggering #initial-sync", v16, 2u);
    }

    [*(a1 + 32) _triggerInitialSync];
    goto LABEL_18;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [v2 _updateMailboxSelection:v3 notifyClient:1];
}

- (void)updateVIPSenderList:(id)list requestContext:(id)context
{
  listCopy = list;
  contextCopy = context;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NNMKSyncProvider_updateVIPSenderList_requestContext___block_invoke;
  block[3] = &unk_279936098;
  v12 = listCopy;
  selfCopy = self;
  v14 = contextCopy;
  v9 = contextCopy;
  v10 = listCopy;
  dispatch_async(providerQueue, block);
}

void __55__NNMKSyncProvider_updateVIPSenderList_requestContext___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Received VIP List. Count: %lu", &v9, 0xCu);
  }

  v5 = [*(a1 + 40) accountsSyncService];
  v6 = [NNMKProtoVIPSenderList protoVIPList:*(a1 + 32)];
  v7 = [v5 syncVIPList:v6];

  v8 = [*(a1 + 40) resendScheduler];
  [v8 registerIDSIdentifier:v7 objectIds:0 type:@"VIPList" resendInterval:{objc_msgSend(*(a1 + 48), "resendInterval")}];
}

- (void)_updateMailboxSelection:(id)selection notifyClient:(BOOL)client
{
  clientCopy = client;
  v70 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v67 = clientCopy;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Mailbox selection changed. (Notify client: %lu)", buf, 0xCu);
  }

  v7 = [NNMKMailboxSelection alloc];
  syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
  v9 = [(NNMKMailboxSelection *)v7 initWithMailboxes:syncEnabledMailboxes];

  if ([(NNMKMailboxSelection *)v9 isEqual:selectionCopy])
  {
    v10 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Requested to udpate mailbox selection, but it has not changed. Ignoring.", buf, 2u);
    }
  }

  else
  {
    if (clientCopy)
    {
      v11 = +[NNMKAnalytics sharedInstance];
      [v11 reportMailboxSelectionChanged:selectionCopy source:0];
    }

    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v67 = selectionCopy;
      v68 = 2114;
      v69 = v9;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "New Selection: [%{public}@], Previous Selection: [%{public}@]", buf, 0x16u);
    }

    syncController = [(NNMKSyncProvider *)self syncController];
    v14 = [syncController removeInvalidMailboxesFromMailboxSelection:selectionCopy];

    v52 = v14;
    v15 = [NNMKMailboxSelection mailboxChangesApplyingSelection:v14 previousSelection:v9];
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      mailboxesToUpdate = [v15 mailboxesToUpdate];
      nnmk_description = [mailboxesToUpdate nnmk_description];
      *buf = 138543362;
      v67 = nnmk_description;
      _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Mailboxes to update. %{public}@", buf, 0xCu);
    }

    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      mailboxesToReSync = [v15 mailboxesToReSync];
      nnmk_description2 = [mailboxesToReSync nnmk_description];
      *buf = 138543362;
      v67 = nnmk_description2;
      _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "Mailboxes to re-sync. %{public}@", buf, 0xCu);
    }

    v53 = v9;
    v24 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      mailboxesToDisableSync = [v15 mailboxesToDisableSync];
      nnmk_description3 = [mailboxesToDisableSync nnmk_description];
      *buf = 138543362;
      v67 = nnmk_description3;
      _os_log_impl(&dword_25B19F000, v25, OS_LOG_TYPE_DEFAULT, "Mailboxes to disable sync. %{public}@", buf, 0xCu);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v54 = v15;
    mailboxesToUpdate2 = [v15 mailboxesToUpdate];
    v29 = [mailboxesToUpdate2 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v61;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v61 != v31)
          {
            objc_enumerationMutation(mailboxesToUpdate2);
          }

          v33 = *(*(&v60 + 1) + 8 * i);
          pairedDeviceRegistry = self->_pairedDeviceRegistry;
          mailboxId = [v33 mailboxId];
          v36 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry mailboxWithId:mailboxId];

          [v33 setSyncActive:{objc_msgSend(v36, "syncActive")}];
          if ([v33 syncRequested])
          {
            [v33 setSyncEnabled:1];
            if (!clientCopy)
            {
              [v33 setSyncRequested:0];
            }
          }

          v37 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v67 = v33;
            _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "Updating mailbox. %{public}@", buf, 0xCu);
          }

          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateMailbox:v33];
        }

        v30 = [mailboxesToUpdate2 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v30);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    mailboxesToDisableSync2 = [v54 mailboxesToDisableSync];
    v39 = [mailboxesToDisableSync2 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v57;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v57 != v41)
          {
            objc_enumerationMutation(mailboxesToDisableSync2);
          }

          v43 = *(*(&v56 + 1) + 8 * j);
          v44 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v67 = v43;
            _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Disabling sync for mailbox. %{public}@", buf, 0xCu);
          }

          [v43 setSyncEnabled:0];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncEnabledForMailbox:v43];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForFullSyncWithMailbox:v43];
        }

        v40 = [mailboxesToDisableSync2 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v40);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    if (clientCopy)
    {
      [(NNMKSyncProvider *)self _sendUpdatedMailboxSelection:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    }

    mailboxesToReSync2 = [v54 mailboxesToReSync];
    v46 = [mailboxesToReSync2 count];

    v9 = v53;
    if (v46)
    {
      v47 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        mailboxesToReSync3 = [v54 mailboxesToReSync];
        nnmk_description4 = [mailboxesToReSync3 nnmk_description];
        *buf = 138543362;
        v67 = nnmk_description4;
        _os_log_impl(&dword_25B19F000, v48, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes due to mailbox-selection changed. %{public}@", buf, 0xCu);
      }

      mailboxesToReSync4 = [v54 mailboxesToReSync];
      [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:mailboxesToReSync4];
    }

    selectionCopy = v52;
  }
}

- (void)_sendUpdatedMailboxSelection:(unint64_t)selection resendInterval:(unint64_t)interval
{
  v7 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Sending updated mailbox selection.", v14, 2u);
  }

  v8 = [NNMKMailboxSelection alloc];
  syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
  v10 = [(NNMKMailboxSelection *)v8 initWithMailboxes:syncEnabledMailboxes];

  v11 = [NNMKProtoMailboxSelection protoMailboxSelectionFromMailboxSelection:v10 fullSyncVersion:selection];
  v12 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService updateMailboxSelection:v11];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler registerIDSIdentifier:v12 objectIds:0 type:@"MailboxSelection" resendInterval:interval];
}

- (void)notifyFetchCompleted
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NNMKSyncProvider_notifyFetchCompleted__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

uint64_t __40__NNMKSyncProvider_notifyFetchCompleted__block_invoke(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#FETCH Manual Completed.", v6, 2u);
  }

  v3 = *(*(a1 + 32) + 112);
  v4 = objc_alloc_init(NNMKProtoFetchRequestCompletedNotification);
  [v3 notifyFetchRequestCompleted:v4];

  return [*(a1 + 32) _checkBatchFetchedMessages];
}

- (void)notifyFetchCompletedForMailboxId:(id)id error:(id)error
{
  idCopy = id;
  errorCopy = error;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NNMKSyncProvider_notifyFetchCompletedForMailboxId_error___block_invoke;
  block[3] = &unk_279936098;
  v12 = idCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = idCopy;
  dispatch_async(providerQueue, block);
}

void __59__NNMKSyncProvider_notifyFetchCompletedForMailboxId_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40) != 0;
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#FETCH Manual Completed (mailboxId: %{public}@, error: %d)", &v6, 0x12u);
  }

  v5 = objc_alloc_init(NNMKProtoFetchRequestCompletedNotification);
  [(NNMKProtoFetchRequestCompletedNotification *)v5 setMailboxId:*(a1 + 32)];
  [(NNMKProtoFetchRequestCompletedNotification *)v5 setFailed:*(a1 + 40) != 0];
  [*(*(a1 + 48) + 112) notifyFetchRequestCompleted:v5];
  [*(a1 + 48) _checkBatchFetchedMessages];
}

- (id)bulletinFlagsForMessageStatus:(unint64_t)status dateReceived:(id)received messageWillBeAddedToSyncProvider:(BOOL)provider mailboxId:(id)id
{
  receivedCopy = received;
  idCopy = id;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  providerQueue = self->_providerQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__NNMKSyncProvider_bulletinFlagsForMessageStatus_dateReceived_messageWillBeAddedToSyncProvider_mailboxId___block_invoke;
  v17[3] = &unk_2799367F8;
  v17[4] = self;
  v18 = idCopy;
  providerCopy = provider;
  v20 = &v23;
  statusCopy = status;
  v19 = receivedCopy;
  v13 = receivedCopy;
  v14 = idCopy;
  dispatch_sync(providerQueue, v17);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __106__NNMKSyncProvider_bulletinFlagsForMessageStatus_dateReceived_messageWillBeAddedToSyncProvider_mailboxId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v7 = [v2 mailboxWithId:*(a1 + 40)];

  if (*(a1 + 72) == 1 && [v7 syncActive] && objc_msgSend(v7, "filterType") && (objc_msgSend(*(a1 + 32), "syncController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isValidMessageStatus:forMailbox:", *(a1 + 64), v7), v3, v4))
  {
    if ([v7 filterType] == 64)
    {
      v5 = [*(a1 + 48) nnmk_isToday];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [*(*(*(a1 + 56) + 8) + 40) setObject:v6 forKeyedSubscript:@"MessageWillBeSynced"];
}

- (BOOL)isPaired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__NNMKSyncProvider_isPaired__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__28__NNMKSyncProvider_isPaired__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPaired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NNMKMailboxSelection)mailboxSelection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NNMKSyncProvider_mailboxSelection__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__NNMKSyncProvider_mailboxSelection__block_invoke(uint64_t a1)
{
  v2 = [NNMKMailboxSelection alloc];
  v6 = [*(*(a1 + 32) + 72) syncEnabledMailboxes];
  v3 = [(NNMKMailboxSelection *)v2 initWithMailboxes:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)syncedMailboxes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NNMKSyncProvider_syncedMailboxes__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__NNMKSyncProvider_syncedMailboxes__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) syncEnabledMailboxes];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)containsSyncedMailbox:(id)mailbox
{
  v23 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  [(NNMKSyncProvider *)self syncedMailboxes];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        mailboxId = [v10 mailboxId];
        mailboxId2 = [v10 mailboxId];
        v13 = [mailboxId isEqual:mailboxId2];

        if (v13)
        {
          LOBYTE(v14) = 1;
          firstObject = v5;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([(NNMKSyncProvider *)self _pairedDeviceSupportsMultipleMailboxes])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    firstObject = [v5 firstObject];
    v17 = [firstObject url];

    if (v17)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v14 = [mailboxCopy type] == 1;
    }

LABEL_12:
  }

  return v14;
}

- (void)syncStandaloneAccountIdentity:(id)identity
{
  identityCopy = identity;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NNMKSyncProvider_syncStandaloneAccountIdentity___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(providerQueue, v7);
}

- (id)watchAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__NNMKSyncProvider_watchAccounts__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__NNMKSyncProvider_watchAccounts__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _watchAccounts];

  return MEMORY[0x2821F96F8]();
}

- (id)requestWatchAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NNMKSyncProvider_requestWatchAccounts__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NNMKSyncProvider_requestWatchAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _watchAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NNMKSyncProvider_requestWatchAccounts__block_invoke_2;
  block[3] = &unk_279935CB0;
  block[4] = v5;
  dispatch_async(v6, block);
}

uint64_t __40__NNMKSyncProvider_requestWatchAccounts__block_invoke_2(uint64_t a1)
{
  v2 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Requesting watch accounts authentication status from watch", v4, 2u);
  }

  return [*(a1 + 32) _sendWatchAccountStatusRequest];
}

- (id)_watchAccounts
{
  allSyncedAccountsKeyedByAccountId = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry allSyncedAccountsKeyedByAccountId];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(allSyncedAccountsKeyedByAccountId, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NNMKSyncProvider__watchAccounts__block_invoke;
  v9[3] = &unk_279936820;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [allSyncedAccountsKeyedByAccountId enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __34__NNMKSyncProvider__watchAccounts__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 account];
  v4 = [*(a1 + 32) sessionController];
  v5 = [v6 accountId];
  [v6 setStandaloneState:{objc_msgSend(v4, "standaloneStateForAccountId:", v5)}];

  [*(a1 + 40) addObject:v6];
}

- (void)_sendStandaloneAccountIdentity:(id)identity resendInterval:(unint64_t)interval
{
  v24 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  v8 = [persistenceHandler addStandaloneAccountIdentity:identityCopy];

  if (v8)
  {
    v9 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      accountId = [identityCopy accountId];
      *buf = 138543362;
      v23 = accountId;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Sending standalone account identity: %{public}@", buf, 0xCu);
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(NNMKSyncSessionController *)self->_sessionController setAccountAuthRequestLastRequestTime:?];

    sessionController = [(NNMKSyncProvider *)self sessionController];
    syncingAccountIdentityByUsername = [sessionController syncingAccountIdentityByUsername];
    username = [identityCopy username];
    [syncingAccountIdentityByUsername setObject:identityCopy forKeyedSubscript:username];

    accountsSyncService = [(NNMKSyncProvider *)self accountsSyncService];
    v17 = [accountsSyncService sendStandaloneAccountIdentity:v8];

    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    username2 = [identityCopy username];
    v21 = username2;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [resendScheduler registerIDSIdentifier:v17 objectIds:v20 type:@"AccountIdentity" resendInterval:interval];
  }
}

- (void)_sendWatchAccountStatusRequest
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(NNMKSyncSessionController *)self->_sessionController setAccountAuthRequestLastRequestTime:?];

  accountsSyncService = [(NNMKSyncProvider *)self accountsSyncService];
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  [(NNMKSyncSessionController *)self->_sessionController accountAuthRequestLastRequestTime];
  v5 = [persistenceHandler addAccountAuthenticationStatusRequest:?];
  v6 = [accountsSyncService requestWatchAccountsStatus:v5];
}

- (BOOL)organizeByThread
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NNMKSyncProvider_organizeByThread__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__36__NNMKSyncProvider_organizeByThread__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) organizeByThread];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setOrganizeByThread:(BOOL)thread
{
  providerQueue = self->_providerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__NNMKSyncProvider_setOrganizeByThread___block_invoke;
  v4[3] = &unk_279936848;
  v4[4] = self;
  threadCopy = thread;
  dispatch_sync(providerQueue, v4);
}

void __40__NNMKSyncProvider_setOrganizeByThread___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v3 = [v2 organizeByThread];
    v4 = *(a1 + 40);
    if (v4 != v3)
    {
      [*(*(a1 + 32) + 72) setOrganizeByThread:v4 & 1];
      v5 = [*(*(a1 + 32) + 72) allSyncedAccountsKeyedByAccountId];
      v6 = [v5 count];

      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 56);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_2;
        v9[3] = &unk_279936848;
        v10 = *(a1 + 40);
        v9[4] = v7;
        dispatch_async(v8, v9);
      }

      else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync because organized by thread flag changed. %lu", &v5, 0xCu);
  }

  return [*(a1 + 32) _triggerInitialSync];
}

- (NNMKPairedDeviceInfo)pairedDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NNMKSyncProvider_pairedDeviceInfo__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__36__NNMKSyncProvider_pairedDeviceInfo__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) deviceScreenWidth];
  v3 = v2;
  [*(*(a1 + 32) + 72) deviceScreenScale];
  v5 = [NNMKPairedDeviceInfo pairedDeviceInfoWithScreenWidth:v3 screenScale:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 72) deviceScreenWidth];
  if (v8 == 0.0 || (result = [*(*(a1 + 32) + 72) deviceScreenScale], v10 != 0.0))
  {
    [*(a1 + 32) _storeScreenRelatedValues];
    [*(*(a1 + 32) + 72) deviceScreenWidth];
    v12 = v11;
    [*(*(a1 + 32) + 72) deviceScreenScale];
    *(*(*(a1 + 40) + 8) + 40) = [NNMKPairedDeviceInfo pairedDeviceInfoWithScreenWidth:v12 screenScale:v13];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)resendObjectsForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler resendObjectsForIDSIdentifier:identifierCopy];
}

- (void)messagesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  isTrackingInitialSync = [initialSyncProgressTracker isTrackingInitialSync];

  if (isTrackingInitialSync)
  {
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    v9 = [resendScheduler messageTypeForIDSIdentifier:identifierCopy];

    if ([v9 isEqualToString:@"InitialSync"])
    {
      initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker2 updateProgressWithMessageHeadersArrivedInPairedDevice];

      v11 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = identifierCopy;
        _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#full-sync sent successfully by IDS (IDS Identifier: %{public}@).", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKSyncProvider messagesSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:];
    }
  }

  resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler2 handleIDSMessageSentSuccessfullyWithId:identifierCopy];
}

- (void)messagesSyncServiceServerSpaceBecameAvailable:(id)available
{
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "IDS Reported Space Became Available.", v6, 2u);
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry prepareIDSIdentifiersForResendForErrorCode:27];
  datesForIDSIdentifiersScheduledToBeResent = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry datesForIDSIdentifiersScheduledToBeResent];
  [(NNMKSyncEndpoint *)self enqueueIDSIdentifiersForResend:datesForIDSIdentifiersScheduledToBeResent];
}

- (void)messagesSyncServiceServerConnectivityChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  _isConnectedToWatch = [(NNMKSyncProvider *)self _isConnectedToWatch];
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
  {
    messagesSyncService = self->_messagesSyncService;
    v7 = v5;
    v10[0] = 67109376;
    v10[1] = _isConnectedToWatch;
    v11 = 2048;
    connectivityState = [(NNMKSyncServiceEndpoint *)messagesSyncService connectivityState];
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_INFO, "Connectivity changed (Connected: %d - Connectivity type: %lu)", v10, 0x12u);
  }

  sessionController = [(NNMKSyncProvider *)self sessionController];
  [sessionController setDeviceInStandalone:{-[NNMKSyncProvider _isUsingCompaionSync](self, "_isUsingCompaionSync") ^ 1}];

  [(NNMKSyncProvider *)self _checkConnectivityBasedSuspensionTimer:_isConnectedToWatch];
  if (_isConnectedToWatch)
  {
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler forceRetryingAllPendingIDSMessages];
  }

  else
  {
    [(NNMKSyncEndpoint *)self clearResendQueue];
  }
}

- (void)messagesSyncServiceServer:(id)server didUpdateMessagesStatus:(id)status
{
  v62 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  syncController = [(NNMKSyncProvider *)self syncController];
  messageStatusUpdates = [statusCopy messageStatusUpdates];
  firstObject = [messageStatusUpdates firstObject];
  messageId = [firstObject messageId];
  v11 = [syncController messageIdFromWatchMessageId:messageId];
  v12 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncedMessageForMessageWithId:v11];

  syncController2 = [(NNMKSyncProvider *)self syncController];
  mailboxId = [v12 mailboxId];
  v15 = [syncController2 mailboxWithId:mailboxId];

  if (v15 && -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [statusCopy fullSyncVersion], v15))
  {
    v42 = v15;
    v43 = v12;
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(statusCopy, "messageStatusUpdatesCount")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = statusCopy;
    obj = [statusCopy messageStatusUpdates];
    v16 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v18 = *v48;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        syncController3 = [(NNMKSyncProvider *)self syncController];
        messageId2 = [v20 messageId];
        v23 = [syncController3 messageIdFromWatchMessageId:messageId2];

        v24 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v23];
        if (!v24)
        {
          v34 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
            v36 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v20 updatedStatus]);
            *buf = 138543618;
            v52 = v23;
            v53 = 2112;
            v54 = v36;
            _os_log_impl(&dword_25B19F000, v35, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but we don't have it in our records. Updating anyway... (Id: %{public}@ - Status: %@ - Source: Watch).", buf, 0x16u);
          }

          goto LABEL_17;
        }

        statusVersion = [v20 statusVersion];
        statusVersion2 = [v24 statusVersion];
        v27 = qword_28144D620;
        v28 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (statusVersion2 <= statusVersion)
        {
          if (v28)
          {
            v37 = v27;
            v38 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v20 updatedStatus]);
            *buf = 138543618;
            v52 = v23;
            v53 = 2112;
            v54 = v38;
            _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED (Id: %{public}@ - Status: %@ - Source: Watch).", buf, 0x16u);
          }

          [v24 setStatus:{objc_msgSend(v20, "updatedStatus")}];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v24];
LABEL_17:
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v20, "updatedStatus")}];
          [v46 setObject:v29 forKeyedSubscript:v23];
          goto LABEL_18;
        }

        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = v27;
        v30 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v20 updatedStatus]);
        v31 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v24 status]);
        statusVersion3 = [v20 statusVersion];
        statusVersion4 = [v24 statusVersion];
        *buf = 138544386;
        v52 = v23;
        v53 = 2112;
        v54 = v30;
        v55 = 2112;
        v56 = v31;
        v57 = 2048;
        v58 = statusVersion3;
        v59 = 2048;
        v60 = statusVersion4;
        _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but version is outdated (Id: %{public}@ - Status: %@ - Local Status: %@ - Client Version: %lu - Local Version: %lu - Source: Watch).", buf, 0x34u);

LABEL_18:
LABEL_19:
      }

      v17 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (!v17)
      {
LABEL_21:

        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
        if ([v46 count])
        {
          [(NNMKSyncProvider *)self _notifyDelegateThatMessagesStatusWereUpdated:v46];
        }

        v12 = v43;
        statusCopy = v44;
        v15 = v42;
        goto LABEL_26;
      }
    }
  }

  v39 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    messageId3 = [v12 messageId];
    *buf = 138543362;
    v52 = messageId3;
    _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_DEFAULT, "Message Status DROPPED (Id: %{public}@ - Source: Watch).", buf, 0xCu);
  }

LABEL_26:
}

- (void)messagesSyncServiceServer:(id)server didDeleteMessages:(id)messages
{
  v54 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  messageDeletions = [messagesCopy messageDeletions];
  firstObject = [messageDeletions firstObject];
  messageId = [firstObject messageId];

  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  syncController = [(NNMKSyncProvider *)self syncController];
  v11 = [syncController messageIdFromWatchMessageId:messageId];
  v12 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncedMessageForMessageWithId:v11];

  syncController2 = [(NNMKSyncProvider *)self syncController];
  mailboxId = [v12 mailboxId];
  v15 = [syncController2 mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v15))
  {
    v39 = v15;
    v40 = v12;
    v41 = messageId;
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(messagesCopy, "messageDeletionsCount")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v42 = messagesCopy;
    obj = [messagesCopy messageDeletions];
    v17 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v44 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          syncController3 = [(NNMKSyncProvider *)self syncController];
          messageId2 = [v20 messageId];
          v23 = [syncController3 messageIdFromWatchMessageId:messageId2];

          v24 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v23];
          v25 = qword_28144D620;
          v26 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
          if (v24)
          {
            if (v26)
            {
              v27 = v25;
              deletionState = [v20 deletionState];
              *buf = 138543618;
              v51 = v23;
              v52 = 2048;
              *v53 = deletionState;
              _os_log_impl(&dword_25B19F000, v27, OS_LOG_TYPE_DEFAULT, "Message DELETED from Client (Id: %{public}@ - Deletion State: %lu).", buf, 0x16u);
            }

            [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry removeSyncedMessageForMessageWithId:v23];
            sessionController = [(NNMKSyncProvider *)self sessionController];
            messageIdsToIgnoreStatusUpdates = [sessionController messageIdsToIgnoreStatusUpdates];
            [messageIdsToIgnoreStatusUpdates addObject:v23];
          }

          else if (v26)
          {
            v31 = v25;
            deletionState2 = [v20 deletionState];
            *buf = 138543618;
            v51 = v23;
            v52 = 2048;
            *v53 = deletionState2;
            _os_log_impl(&dword_25B19F000, v31, OS_LOG_TYPE_DEFAULT, "Message DELETED from Client but we don't have it in our records. Deleting anyway... (Id: %{public}@ - Deletion State: %lu).", buf, 0x16u);
          }

          sessionController2 = [(NNMKSyncProvider *)self sessionController];
          notificationPayloadAcks = [sessionController2 notificationPayloadAcks];
          [notificationPayloadAcks removeObjectForKey:v23];

          [(NNMKSyncProvider *)self _requestDelegateToStopDownloadingMessageElementsForMessageWithId:v23];
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v20, "deletionState")}];
          [v16 setObject:v35 forKeyedSubscript:v23];
        }

        v18 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v18);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    if ([v16 count])
    {
      [(NNMKSyncProvider *)self _notifyDelegateThatMessagesStatusWereUpdated:v16];
    }

    messageId = v41;
    messagesCopy = v42;
    v15 = v39;
    v12 = v40;
  }

  else
  {
    v36 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      mailboxId2 = [v12 mailboxId];
      *buf = 138543874;
      v51 = mailboxId2;
      v52 = 1024;
      *v53 = v15 != 0;
      *&v53[4] = 2114;
      *&v53[6] = messageId;
      _os_log_error_impl(&dword_25B19F000, v37, OS_LOG_TYPE_ERROR, "Ignoring deletion. Mailbox: %{public}@ (exists: %d), messageId: %{public}@", buf, 0x1Cu);
    }
  }
}

- (void)messagesSyncServiceServer:(id)server didRequestSendMessage:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy hasComposedMessageId] & 1) != 0 || objc_msgSend(messageCopy, "tosCount") || objc_msgSend(messageCopy, "ccsCount") || (objc_msgSend(messageCopy, "hasSubject"))
  {
    v6 = objc_alloc_init(NNMKComposedMessage);
    if ([messageCopy hasComposedMessageId])
    {
      composedMessageId = [messageCopy composedMessageId];
      [(NNMKComposedMessage *)v6 setComposedMessageId:composedMessageId];
    }

    else
    {
      composedMessageId = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [composedMessageId UUIDString];
      [(NNMKComposedMessage *)v6 setComposedMessageId:uUIDString];
    }

    -[NNMKComposedMessage setSendingType:](v6, "setSendingType:", [messageCopy sendingType]);
    v9 = [messageCopy tos];
    [(NNMKComposedMessage *)v6 setTo:v9];

    v10 = [messageCopy ccs];
    [(NNMKComposedMessage *)v6 setCc:v10];

    subject = [messageCopy subject];
    [(NNMKComposedMessage *)v6 setSubject:subject];

    from = [messageCopy from];
    [(NNMKComposedMessage *)v6 setFrom:from];

    body = [messageCopy body];
    [(NNMKComposedMessage *)v6 setBody:body];

    if ([messageCopy hasReferenceMessageId])
    {
      syncController = [(NNMKSyncProvider *)self syncController];
      referenceMessageId = [messageCopy referenceMessageId];
      v16 = [syncController messageIdFromWatchMessageId:referenceMessageId];
      [(NNMKComposedMessage *)v6 setReferenceMessageId:v16];
    }

    else
    {
      [(NNMKComposedMessage *)v6 setReferenceMessageId:&stru_286C69F68];
    }

    if ([messageCopy hasIncludeAttachments])
    {
      includeAttachments = [messageCopy includeAttachments];
    }

    else
    {
      includeAttachments = 0;
    }

    [(NNMKComposedMessage *)v6 setIncludeAttachments:includeAttachments];
    accountId = [messageCopy accountId];
    [(NNMKComposedMessage *)v6 setAccountId:accountId];

    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    composedMessageId2 = [(NNMKComposedMessage *)v6 composedMessageId];
    [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry setProgress:0 forComposedMessageWithId:composedMessageId2];

    if ([messageCopy includeAttachments])
    {
      v21 = self->_pairedDeviceRegistry;
      composedMessageId3 = [(NNMKComposedMessage *)v6 composedMessageId];
      v23 = [(NNMKDeviceSyncRegistry *)v21 attachmentsForComposedMessageId:composedMessageId3];

      if (!v23)
      {
        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry storePendingComposedMessage:v6];
        v29 = qword_28144D620;
        if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v25 = v29;
        composedMessageId4 = [messageCopy composedMessageId];
        v30 = 138543362;
        v31 = composedMessageId4;
        _os_log_impl(&dword_25B19F000, v25, OS_LOG_TYPE_DEFAULT, "Waiting to send Composed Message until attachment recieved (Composed Message Id: %{public}@).", &v30, 0xCu);
        goto LABEL_19;
      }

      [(NNMKComposedMessage *)v6 setAttachments:v23];
    }

    [(NNMKSyncProvider *)self _requestDelegateToSendComposedMessage:v6];
    v24 = qword_28144D620;
    if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      goto LABEL_21;
    }

    v25 = v24;
    composedMessageId4 = [(NNMKComposedMessage *)v6 composedMessageId];
    sendingType = [(NNMKComposedMessage *)v6 sendingType];
    referenceMessageId2 = [(NNMKComposedMessage *)v6 referenceMessageId];
    v30 = 138543874;
    v31 = composedMessageId4;
    v32 = 2048;
    v33 = sendingType;
    v34 = 2114;
    v35 = referenceMessageId2;
    _os_log_impl(&dword_25B19F000, v25, OS_LOG_TYPE_DEFAULT, "Composed Message SENT from Client (Composed Message Id: %{public}@, Send Type: %lu - Message Id: %{public}@).", &v30, 0x20u);

LABEL_19:
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider messagesSyncServiceServer:didRequestSendMessage:];
  }

LABEL_21:
}

- (void)messagesSyncServiceServer:(id)server didUpdateMailboxSelection:(id)selection
{
  selectionCopy = selection;
  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [selectionCopy fullSyncVersion]))
  {
    mailboxSelection = [selectionCopy mailboxSelection];
    v7 = [NNMKMailboxSelection alloc];
    syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
    v9 = [(NNMKMailboxSelection *)v7 initWithMailboxes:syncEnabledMailboxes];

    if ([(NNMKMailboxSelection *)v9 isEqual:mailboxSelection])
    {
      v10 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Requested to update mailbox selection but no changes was found. Ignoring.", v14, 2u);
      }
    }

    else
    {
      [(NNMKSyncProvider *)self _updateMailboxSelection:mailboxSelection notifyClient:0];
      delegate = [(NNMKSyncProvider *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [(NNMKSyncProvider *)self delegate];
        [delegate2 syncProvider:self didUpdateMailboxSelection:mailboxSelection];
      }
    }
  }
}

- (void)messagesSyncServiceServer:(id)server didMoveMessages:(id)messages
{
  v42 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [messagesCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  v31 = -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v8);
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = messagesCopy;
  obj = [messagesCopy messageIds];
  v9 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        syncController2 = [(NNMKSyncProvider *)self syncController];
        v15 = [syncController2 messageIdFromWatchMessageId:v13];

        v16 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v15];
        v17 = qword_28144D620;
        v18 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          if (v31)
          {
            if (v18)
            {
              v19 = v17;
              mailboxId2 = [v32 mailboxId];
              *buf = 138543618;
              v38 = v13;
              v39 = 2114;
              v40 = mailboxId2;
              _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "Message MOVED from Client (Id: %{public}@ - mailboxId: %{public}@).", buf, 0x16u);
            }

            mailboxId3 = [v32 mailboxId];
            [v16 setMailboxId:mailboxId3];

            [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v16];
          }

          else
          {
            if (v18)
            {
              v24 = v17;
              mailboxId4 = [v32 mailboxId];
              *buf = 138543618;
              v38 = v13;
              v39 = 2114;
              v40 = mailboxId4;
              _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "Message MOVED from Client but new mailbox isn't active so deleting message (Id: %{public}@ - mailboxId: %{public}@).", buf, 0x16u);
            }

            [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry removeSyncedMessageForMessageWithId:v15];
          }
        }

        else if (v18)
        {
          v22 = v17;
          mailboxId5 = [v32 mailboxId];
          *buf = 138543618;
          v38 = v13;
          v39 = 2114;
          v40 = mailboxId5;
          _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "Message MOVED but we don't have it in our records. Updating anyway... (Id: %{public}@ - mailboxId: %{public}@ - Source: Watch).", buf, 0x16u);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v10);
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
  delegate = [(NNMKSyncProvider *)self delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    delegate2 = [(NNMKSyncProvider *)self delegate];
    messageIds = [v32 messageIds];
    [delegate2 syncProvider:self didMoveMessageIds:messageIds toMailbox:v8];
  }
}

- (void)messagesSyncServiceServer:(id)server didRecieveAttachmentsAtURL:(id)l composedMessageId:(id)id
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  idCopy = id;
  v9 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry pendingComposedMessageWithId:idCopy];
  if (v9)
  {
    v10 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry attachmentsFromURL:lCopy];
    [v9 setAttachments:v10];
    [(NNMKSyncProvider *)self _requestDelegateToSendComposedMessage:v9];
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      composedMessageId = [v9 composedMessageId];
      sendingType = [v9 sendingType];
      referenceMessageId = [v9 referenceMessageId];
      v17 = 138543874;
      v18 = composedMessageId;
      v19 = 2048;
      v20 = sendingType;
      v21 = 2114;
      v22 = referenceMessageId;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Recieved attachments and SENT Composed Message from Client (Composed Message Id: %{public}@, Send Type: %lu - Message Id: %{public}@).", &v17, 0x20u);
    }
  }

  else
  {
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = idCopy;
      _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "Recieved attachments, but waiting for composedMesageId: %{public}@", &v17, 0xCu);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry saveAttachmentsForComposedMessageId:idCopy temporaryURL:lCopy];
  }
}

- (void)messagesSyncServiceServer:(id)server didWarnMessagesFilteredOut:(id)out
{
  v28 = *MEMORY[0x277D85DE8];
  outCopy = out;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [outCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (v8 && -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [outCopy fullSyncVersion], v8))
  {
    v20 = v8;
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 134217984;
      removedMessageIdsCount = [outCopy removedMessageIdsCount];
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Messages filtered out. (Count: %lu).", buf, 0xCu);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    removedMessageIds = [outCopy removedMessageIds];
    v12 = [removedMessageIds countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(removedMessageIds);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          pairedDeviceRegistry = self->_pairedDeviceRegistry;
          syncController2 = [(NNMKSyncProvider *)self syncController];
          v19 = [syncController2 messageIdFromWatchMessageId:v16];
          [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry removeSyncedMessageForMessageWithId:v19];

          ++v15;
        }

        while (v13 != v15);
        v13 = [removedMessageIds countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    v8 = v20;
  }
}

- (void)messagesSyncServiceServer:(id)server didRequestCompactMessages:(id)messages
{
  messagesCopy = messages;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [messagesCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (v8 && -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v8))
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    beforeDateReceived = [messagesCopy beforeDateReceived];
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:beforeDateReceived error:0];

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry removeSyncedMessagesBeforeDateReceived:v12 mailbox:v8];
  }

  else
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider messagesSyncServiceServer:v13 didRequestCompactMessages:messagesCopy];
    }
  }
}

- (void)messageContentSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  isTrackingInitialSync = [initialSyncProgressTracker isTrackingInitialSync];

  if (isTrackingInitialSync)
  {
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    v9 = [resendScheduler objectIdsForPendingIDSIdentifier:identifierCopy];

    if ([v9 count])
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker2 updateProgressWithMessageContentArrivedInPairedDevice:v10];
    }
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider messageContentSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:];
  }

  resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler2 handleIDSMessageSentSuccessfullyWithId:identifierCopy];
}

- (void)accountsSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  [initialSyncProgressTracker updateProgressWithAccountsArrivedInPairedDevice];

  v7 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Accounts sent successfully by IDS (IDS Identifier: %{public}@).", &v9, 0xCu);
  }

  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler handleIDSMessageSentSuccessfullyWithId:identifierCopy];
}

- (void)accountsSyncServiceServer:(id)server didChangeAccountSourceType:(id)type
{
  v42 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [typeCopy fullSyncVersion]))
  {
    v6 = objc_alloc_init(NNMKAccount);
    accountId = [typeCopy accountId];
    [(NNMKAccount *)v6 setAccountId:accountId];

    -[NNMKAccount setSourceType:](v6, "setSourceType:", [typeCopy sourceType]);
    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    accountId2 = [(NNMKAccount *)v6 accountId];
    v10 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry accountSourceTypeForAccountId:accountId2];

    v11 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      accountId3 = [(NNMKAccount *)v6 accountId];
      *buf = 138543874;
      v37 = accountId3;
      v38 = 2048;
      sourceType = [(NNMKAccount *)v6 sourceType];
      v40 = 2048;
      v41 = v10;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Received account source type change from watch. Id: %{public}@, Source Type: %lu, Previous: %lu", buf, 0x20u);
    }

    v14 = self->_pairedDeviceRegistry;
    sourceType2 = [(NNMKAccount *)v6 sourceType];
    accountId4 = [(NNMKAccount *)v6 accountId];
    [(NNMKDeviceSyncRegistry *)v14 updateSourceType:sourceType2 forAccountId:accountId4];

    if (![(NNMKAccount *)v6 sourceType])
    {
      v17 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        accountId5 = [(NNMKAccount *)v6 accountId];
        *buf = 138543362;
        v37 = accountId5;
        _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Account source type changed back to source type companion. Triggering #full-sync for all synced enabled mailboxes from account id %{public}@", buf, 0xCu);
      }

      v20 = self->_pairedDeviceRegistry;
      accountId6 = [(NNMKAccount *)v6 accountId];
      v22 = [(NNMKDeviceSyncRegistry *)v20 mailboxesForAccountId:accountId6];

      if ([v22 count])
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v32;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v32 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v31 + 1) + 8 * i);
              if ([v29 syncEnabled])
              {
                [v23 addObject:v29];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v26);
        }

        [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v23];
        [(NNMKSyncProvider *)self _requestDelegateForFetchForMailboxes:v24];
      }
    }
  }

  else
  {
    v30 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider accountsSyncServiceServer:v30 didChangeAccountSourceType:?];
    }
  }
}

- (void)accountsSyncServiceServer:(id)server didReceivedAccountAuthenticationStatus:(id)status requestTime:(double)time
{
  v85 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  statusCopy = status;
  v10 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Received watch accounts authentication status from watch.", buf, 2u);
  }

  if (time <= 0.0 || ([(NNMKSyncSessionController *)self->_sessionController accountAuthRequestLastRequestTime], v11 <= time))
  {
    v60 = serverCopy;
    allSyncedAccountsKeyedByAccountId = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry allSyncedAccountsKeyedByAccountId];
    v17 = [allSyncedAccountsKeyedByAccountId mutableCopy];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke;
    v73[3] = &unk_279936898;
    v21 = v17;
    v74 = v21;
    selfCopy = self;
    v22 = array;
    v76 = v22;
    v23 = array2;
    v77 = v23;
    v58 = v18;
    v78 = v58;
    [statusCopy enumerateKeysAndObjectsUsingBlock:v73];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_71;
    v69[3] = &unk_2799368C0;
    v69[4] = self;
    v72 = 0;
    v24 = v22;
    v70 = v24;
    v25 = v23;
    v71 = v25;
    v59 = v21;
    [v21 enumerateKeysAndObjectsUsingBlock:v69];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v23) = objc_opt_respondsToSelector();

    if (v23)
    {
      v27 = objc_loadWeakRetained(&self->_delegate);
      _watchAccounts = [(NNMKSyncProvider *)self _watchAccounts];
      [v27 syncProvider:self didUpdateWatchAccounts:_watchAccounts];
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v29 = v24;
    v30 = [v29 countByEnumeratingWithState:&v65 objects:v80 count:16];
    v31 = v29;
    if (v30)
    {
      v32 = v30;
      v33 = *v66;
LABEL_11:
      v34 = 0;
      while (1)
      {
        if (*v66 != v33)
        {
          objc_enumerationMutation(v29);
        }

        if ([*(*(&v65 + 1) + 8 * v34) maySupportStandaloneMode])
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v29 countByEnumeratingWithState:&v65 objects:v80 count:16];
          if (v32)
          {
            goto LABEL_11;
          }

          v31 = v29;
          goto LABEL_22;
        }
      }

      v35 = objc_loadWeakRetained(&self->_delegate);
      v36 = objc_opt_respondsToSelector();

      if ((v36 & 1) == 0)
      {
        goto LABEL_23;
      }

      v37 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        firstObject = [v29 firstObject];
        accountId = [firstObject accountId];
        firstObject2 = [v29 firstObject];
        standaloneState = [firstObject2 standaloneState];
        *buf = 138543618;
        timeCopy = *&accountId;
        v83 = 2048;
        v84 = standaloneState;
        _os_log_impl(&dword_25B19F000, v38, OS_LOG_TYPE_DEFAULT, "Requesting re-authentication for account: %{public}@ - State: %lu", buf, 0x16u);
      }

      v31 = objc_loadWeakRetained(&self->_delegate);
      firstObject3 = [v29 firstObject];
      [v31 syncProvider:self didRequestReauthenticationForAccount:firstObject3];
    }

LABEL_22:

LABEL_23:
    v57 = v29;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v44 = v25;
    v45 = [v44 countByEnumeratingWithState:&v61 objects:v79 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v62;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v61 + 1) + 8 * i);
          v50 = objc_loadWeakRetained(&self->_delegate);
          v51 = objc_opt_respondsToSelector();

          if (v51)
          {
            v52 = qword_28144D630;
            if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              accountId2 = [v49 accountId];
              standaloneState2 = [v49 standaloneState];
              *buf = 138543618;
              timeCopy = *&accountId2;
              v83 = 2048;
              v84 = standaloneState2;
              _os_log_impl(&dword_25B19F000, v53, OS_LOG_TYPE_DEFAULT, "Notifying authentication failed for account: %{public}@ - State: %lu", buf, 0x16u);
            }

            v56 = objc_loadWeakRetained(&self->_delegate);
            [v56 syncProvider:self didFailAuthenticatingAccount:v49];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v61 objects:v79 count:16];
      }

      while (v46);
    }

    serverCopy = v60;
  }

  else
  {
    v12 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      sessionController = self->_sessionController;
      v14 = v12;
      [(NNMKSyncSessionController *)sessionController accountAuthRequestLastRequestTime];
      *buf = 134218240;
      timeCopy = time;
      v83 = 2048;
      v84 = v15;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Received outdated accounts status, Ignoring. requestTime: %f, lastRequestTime: %f", buf, 0x16u);
    }
  }
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke(id *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  if (v7)
  {
    [a1[4] removeObjectForKey:v5];
    v8 = [v7 username];

    if (v8)
    {
      v9 = [a1[5] sessionController];
      v10 = [v9 syncingAccountIdentityByUsername];
      v11 = [v7 username];
      [v10 removeObjectForKey:v11];
    }

    v12 = [a1[5] sessionController];
    v13 = [v7 accountId];
    v14 = [v12 standaloneStateForAccountId:v13];

    v15 = [v6 standaloneState];
    if (v14 != v15)
    {
      v16 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v34 = v5;
        v35 = 2048;
        v36 = v15;
        _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "Updating standalone state for account. Account: %{public}@ - State: %lu", buf, 0x16u);
      }

      v17 = [a1[5] sessionController];
      [v17 updateStandaloneState:v15 forAccountId:v5];

      if (v14 == 2 && v15 != 2)
      {
        v18 = 6;
LABEL_15:
        v19 = a1[v18];
        v20 = [v7 account];
        [v19 addObject:v20];

        goto LABEL_16;
      }

      if (v14 == 1 && v15 != 2)
      {
        v18 = 7;
        goto LABEL_15;
      }
    }

LABEL_16:
    v21 = [v7 emailAddressToken];
    if (v21)
    {
      v22 = v21;
      v23 = [v7 emailAddressToken];
      v24 = [v6 emailAddressToken];
      v25 = [v23 isEqualToString:v24];

      if (v25)
      {
LABEL_19:
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        [a1[8] setObject:v29 forKeyedSubscript:v5];

        goto LABEL_20;
      }
    }

    else
    {
      v30 = [v6 emailAddressToken];

      if (!v30)
      {
        goto LABEL_19;
      }
    }

    v26 = [v6 emailAddressToken];
    [v7 setEmailAddressToken:v26];

    v27 = [v6 pccEmailAddress];
    [v7 setPccEmailAddress:v27];

    [*(a1[5] + 9) addOrUpdateSyncedAccount:v7];
    v28 = [v7 account];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68;
    v31[3] = &unk_279936870;
    v32 = v7;
    [NNMKStandaloneAccountHelper saveLocalAccountProperties:v28 withCompletion:v31];

    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_cold_1();
  }

LABEL_20:
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = qword_28144D630;
  if (a2)
  {
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 emailAddressToken];
      v10[0] = 67109120;
      v10[1] = v9 != 0;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "#cloud-notifications Updated local account properties (hasToken: %d)", v10, 8u);
    }
  }

  else if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68_cold_1(a1, v6);
  }
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sessionController];
  v8 = [v7 standaloneStateForAccountId:v5];

  if (v8 != *(a1 + 56))
  {
    v9 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v20 = 138543618;
      v21 = v5;
      v22 = 2048;
      v23 = v10;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Updating standalone state for account. Account: %{public}@ - State: %lu", &v20, 0x16u);
    }

    v11 = [*(a1 + 32) sessionController];
    [v11 updateStandaloneState:*(a1 + 56) forAccountId:v5];

    v12 = [v6 username];

    if (v12)
    {
      v13 = [*(a1 + 32) sessionController];
      v14 = [v13 syncingAccountIdentityByUsername];
      v15 = [v6 username];
      [v14 removeObjectForKey:v15];
    }

    v16 = [v6 account];
    v17 = [*(a1 + 32) sessionController];
    v18 = [v16 accountId];
    [v16 setStandaloneState:{objc_msgSend(v17, "standaloneStateForAccountId:", v18)}];

    if (v8 == 2)
    {
      v19 = 40;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      v19 = 48;
    }

    [*(a1 + v19) addObject:v16];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)fetchesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler handleIDSMessageSentSuccessfullyWithId:identifierCopy];
}

- (void)fetchesSyncServiceServer:(id)server didRequestFetchInBatch:(id)batch
{
  v43 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v6 = -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [batchCopy fullSyncVersion]);
  v7 = qword_28144D620;
  v8 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      fetchRequests = [batchCopy fetchRequests];
      *buf = 134217984;
      v39 = [fetchRequests count];
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "#FETCH requested (Requests: %lu)", buf, 0xCu);
    }

    v11 = MEMORY[0x277CBEB18];
    fetchRequests2 = [batchCopy fetchRequests];
    v13 = [v11 arrayWithCapacity:{objc_msgSend(fetchRequests2, "count")}];

    v14 = MEMORY[0x277CBEB18];
    fetchRequests3 = [batchCopy fetchRequests];
    v32 = [v14 arrayWithCapacity:{objc_msgSend(fetchRequests3, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = batchCopy;
    fetchRequests4 = [batchCopy fetchRequests];
    v17 = [fetchRequests4 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(fetchRequests4);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          v22 = [(NNMKSyncProvider *)self _handleFetchRequest:v21 shouldResumeSync:&v33];
          if (v22)
          {
            v23 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              if ([v21 wantsBatchedResponse])
              {
                v25 = @"#BATCHED_RESPONSE";
              }

              else
              {
                v25 = &stru_286C69F68;
              }

              mailboxId = [v22 mailboxId];
              *buf = 138543618;
              v39 = v25;
              v40 = 2114;
              v41 = mailboxId;
              _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "Handling #FETCH %{public}@. (Mailbox id: %{public}@)", buf, 0x16u);
            }

            [v13 addObject:v22];
            if (v33 == 1)
            {
              [v32 addObject:v22];
            }
          }
        }

        v18 = [fetchRequests4 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v18);
    }

    batchCopy = v31;
    if ([v31 wantsBatchedResponse])
    {
      batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
      [batchRequestHandler startFetchTimeout];
    }

    if ([v13 count])
    {
      [(NNMKSyncProvider *)self _requestDelegateForFetchForMailboxes:v13];
    }

    if ([v32 count])
    {
      v28 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes to resume sync due to fetch request.", buf, 2u);
      }

      [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v32];
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:0];
  }

  else
  {
    if (v8)
    {
      v29 = v7;
      fetchRequests5 = [batchCopy fetchRequests];
      *buf = 134217984;
      v39 = [fetchRequests5 count];
      _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "#FETCH requested but #sync-version verification failed. (Requests: %lu)", buf, 0xCu);
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:1];
  }
}

- (id)_handleFetchRequest:(id)request shouldResumeSync:(BOOL *)sync
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [requestCopy mailboxId];
  v9 = [syncController mailboxWithId:mailboxId];

  if (v9)
  {
    if (![v9 syncActive] || !objc_msgSend(v9, "syncEnabled") || -[NNMKDeviceSyncRegistry isMessagesSyncSuspendedByConnectivity](self->_pairedDeviceRegistry, "isMessagesSyncSuspendedByConnectivity"))
    {
      if ([v9 syncRequested])
      {
        v10 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          mailboxId2 = [requestCopy mailboxId];
          syncRequestedDate = [v9 syncRequestedDate];
          v25 = 138543618;
          v26 = mailboxId2;
          v27 = 2114;
          v28 = syncRequestedDate;
          _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Not enabling mailbox because syncRequested for mailbox: %{public}@, request date: %{public}@", &v25, 0x16u);
        }
      }

      else if (sync)
      {
        syncEnabled = [v9 syncEnabled];
        v16 = qword_28144D620;
        v17 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (syncEnabled)
        {
          if (v17)
          {
            v18 = v16;
            mailboxId3 = [requestCopy mailboxId];
            v25 = 138543362;
            v26 = mailboxId3;
            _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Ending suspensions, as we've received a fetch request for mailbox: %{public}@", &v25, 0xCu);
          }
        }

        else
        {
          if (v17)
          {
            v20 = v16;
            mailboxId4 = [requestCopy mailboxId];
            v25 = 138543362;
            v26 = mailboxId4;
            _os_log_impl(&dword_25B19F000, v20, OS_LOG_TYPE_DEFAULT, "Enabling mailbox due to a fetch request from the mailbox: %{public}@", &v25, 0xCu);
          }

          [v9 setSyncEnabled:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncEnabledForMailbox:v9];
        }

        *sync = 1;
      }

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setIsMessagesSyncSuspendedByConnectivity:0];
      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDisconnectedSince:0];
    }

    batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
    [batchRequestHandler handleBatchRequest:requestCopy];

    v23 = v9;
  }

  else
  {
    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider _handleFetchRequest:v14 shouldResumeSync:?];
    }

    [(NNMKSyncProvider *)self _handleMailboxesDesync];
  }

  return v9;
}

- (void)_handleMailboxesDesync
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__NNMKSyncProvider__handleMailboxesDesync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NNMKSyncProvider__handleMailboxesDesync__block_invoke_2;
  block[3] = &unk_279935CB0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __42__NNMKSyncProvider__handleMailboxesDesync__block_invoke_2(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync because of mailbox desync detected", v5, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 32) + 144) setLastSyncDueToMailboxesMismatchRequestTime:v3];

  return [*(a1 + 32) _triggerInitialSync];
}

- (void)fetchesSyncServiceServer:(id)server didRequestFetch:(id)fetch
{
  v23 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  fullSyncVersion = [fetchCopy fullSyncVersion];
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [fetchCopy mailboxId];
  v9 = [syncController mailboxWithId:mailboxId];
  LOBYTE(fullSyncVersion) = [(NNMKSyncProvider *)self _verifyDatabaseOkForFullSyncVersion:fullSyncVersion mailbox:v9];

  if (fullSyncVersion)
  {
    v18 = 0;
    v10 = [(NNMKSyncProvider *)self _handleFetchRequest:fetchCopy shouldResumeSync:&v18];
    if ([fetchCopy wantsBatchedResponse])
    {
      batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
      [batchRequestHandler startFetchTimeout];
    }

    if (v10)
    {
      v20 = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [(NNMKSyncProvider *)self _requestDelegateForFetchForMailboxes:v12];

      if (v18 == 1)
      {
        v13 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes to resume sync due to fetch request.", buf, 2u);
        }

        v19 = v10;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
        [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v14];
      }
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:0];
  }

  else
  {
    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      mailboxId2 = [fetchCopy mailboxId];
      *buf = 138543362;
      v22 = mailboxId2;
      _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "Fetch Requested but #sync-version verification failed. (Mailbox: %{public}@)", buf, 0xCu);
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:1];
  }
}

- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesInBatch:(id)batch
{
  v16 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [batchCopy fullSyncVersion]))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    moreMessagesRequests = [batchCopy moreMessagesRequests];
    v7 = [moreMessagesRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(moreMessagesRequests);
          }

          [(NNMKSyncProvider *)self _handleFetchRequestFromWatch:*(*(&v11 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [moreMessagesRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider fetchesSyncServiceServer:didRequestMoreMessagesInBatch:];
  }
}

- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessages:(id)messages
{
  messagesCopy = messages;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [messagesCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v8))
  {
    [(NNMKSyncProvider *)self _handleFetchRequestFromWatch:messagesCopy];
  }

  else
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider fetchesSyncServiceServer:v9 didRequestMoreMessages:messagesCopy];
    }
  }
}

- (void)_handleFetchRequestFromWatch:(id)watch
{
  v30 = *MEMORY[0x277D85DE8];
  watchCopy = watch;
  filterType = [watchCopy filterType];
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [watchCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (v8)
  {
    v9 = filterType;
    filterType2 = [v8 filterType];
    if (filterType)
    {
      v11 = filterType2 == filterType;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (!v11)
    {
      [v8 setFilterType:filterType];
    }

    v13 = MEMORY[0x277CCAAC8];
    v14 = objc_opt_class();
    beforeDateReceived = [watchCopy beforeDateReceived];
    v16 = [v13 unarchivedObjectOfClass:v14 fromData:beforeDateReceived error:0];

    v17 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      mailboxId2 = [v8 mailboxId];
      v24 = 138543874;
      v25 = v16;
      v26 = 2048;
      v27 = v9;
      v28 = 2114;
      v29 = mailboxId2;
      _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "#LOAD_MORE_MESSAGES Requested (Date Request: %{public}@, Filter type: %lu, Mailbox: %{public}@)", &v24, 0x20u);
    }

    if (v12)
    {
      filterType3 = [v8 filterType];
    }

    else
    {
      filterType3 = 0;
    }

    [(NNMKSyncProvider *)self _requestDelegateForMoreMessagesWithMailbox:v8 beforeDate:v16 messagesForspecialMailboxFilterType:filterType3];
  }

  else
  {
    v21 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      mailboxId3 = [watchCopy mailboxId];
      v24 = 138543362;
      v25 = mailboxId3;
      _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "No mailbox found. #LOAD_MORE_MESSAGES request will be ignored. Id: %{public}@", &v24, 0xCu);
    }
  }
}

- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesForConversation:(id)conversation
{
  v18 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [conversationCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [conversationCopy fullSyncVersion], v8) && -[NNMKDeviceSyncRegistry organizeByThread](self->_pairedDeviceRegistry, "organizeByThread"))
  {
    conversationId = [conversationCopy conversationId];
    v10 = MEMORY[0x277CCAAC8];
    v11 = objc_opt_class();
    beforeDateReceived = [conversationCopy beforeDateReceived];
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:beforeDateReceived error:0];

    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = conversationId;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "#LOAD_MORE_MESSAGES Requested (Conversation Id: %{public}@)", &v16, 0xCu);
    }

    [(NNMKSyncProvider *)self _requestDelegateForMoreMessagesBeforeDateReceived:v13 forConversationWithId:conversationId mailbox:v8];
  }

  else
  {
    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider fetchesSyncServiceServer:v15 didRequestMoreMessagesForConversation:?];
    }
  }
}

- (void)fetchesSyncServiceServer:(id)server didRequestContent:(id)content
{
  v25 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  syncController = [(NNMKSyncProvider *)self syncController];
  messageId = [contentCopy messageId];
  v8 = [syncController messageIdFromWatchMessageId:messageId];

  v9 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v8];
  mailboxId = [v9 mailboxId];

  syncController2 = [(NNMKSyncProvider *)self syncController];
  v12 = [syncController2 mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [contentCopy fullSyncVersion], v12))
  {
    v13 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v8];
    if (v13)
    {
      if (([contentCopy highPriority] & 1) != 0 || (objc_msgSend(v13, "contentSynced") & 1) == 0)
      {
        v17 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = 138543618;
          v20 = v8;
          v21 = 1024;
          highPriority = [contentCopy highPriority];
          _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Message Content Requested (Id: %{public}@, High Priority: %d).", &v19, 0x12u);
        }

        if ([contentCopy highPriority] && (objc_msgSend(v13, "contentRequestedByUser") & 1) == 0)
        {
          [v13 setContentRequestedByUser:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v13];
        }

        -[NNMKSyncProvider _requestDelegateForContentForMessageWithId:highPriority:](self, "_requestDelegateForContentForMessageWithId:highPriority:", v8, [contentCopy highPriority]);
      }

      else
      {
        v14 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v19 = 138543618;
          v20 = v8;
          v21 = 1024;
          highPriority = [contentCopy highPriority];
          _os_log_impl(&dword_25B19F000, v15, OS_LOG_TYPE_DEFAULT, "Message Content Requested but not processed, as it has been requested multiple times (Id: %{public}@, High Priority: %d).", &v19, 0x12u);
        }
      }
    }
  }

  else
  {
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543874;
      v20 = mailboxId;
      v21 = 1024;
      highPriority = v12 != 0;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_25B19F000, v16, OS_LOG_TYPE_ERROR, "Ignoring did request content. Mailbox %{public}@ (exists: %d), messageId: %{public}@", &v19, 0x1Cu);
    }
  }
}

- (void)fetchesSyncServiceServer:(id)server didRequestFullSync:(id)sync
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  syncCopy = sync;
  v8 = syncCopy;
  if (self->_pairedDeviceRegistry)
  {
    -[NNMKSyncProvider _fastForwardToFullSyncVersion:](self, "_fastForwardToFullSyncVersion:", [syncCopy fullSyncVersion]);
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v13 = 134217984;
      fullSyncVersion = [v8 fullSyncVersion];
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "#full-sync requested (Version in Client: %lu). Triggering #initial-sync...", &v13, 0xCu);
    }

    [(NNMKSyncProvider *)self _triggerInitialSync];
  }

  else
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = 134217984;
      fullSyncVersion = [v8 fullSyncVersion];
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "#full-sync requested, but we haven't detected any pairing yet. Ignoring the #full-sync request and waiting... (Version in Client: %lu)", &v13, 0xCu);
    }
  }
}

- (void)fetchesSyncServiceServer:(id)server didRequestHaltSync:(id)sync
{
  v31 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  syncCopy = sync;
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  v9 = qword_28144D620;
  v10 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (pairedDeviceRegistry)
  {
    if (v10)
    {
      v11 = v9;
      *buf = 134217984;
      fullSyncVersion = [syncCopy fullSyncVersion];
      _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "halt-sync requested (Version in Client: %lu). Triggering...", buf, 0xCu);
    }

    mailboxId = [syncCopy mailboxId];

    if (mailboxId)
    {
      syncController = [(NNMKSyncProvider *)self syncController];
      mailboxId2 = [syncCopy mailboxId];
      activeMailboxes = [syncController mailboxWithId:mailboxId2];

      if (activeMailboxes)
      {
        [(NNMKSyncProvider *)self _handleHaltSyncForMailbox:activeMailboxes];
      }

      else
      {
        v21 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          mailboxId3 = [syncCopy mailboxId];
          *buf = 138543362;
          fullSyncVersion = mailboxId3;
          _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "halt-sync requested for unknown mailbox %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      activeMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry activeMailboxes];
      v17 = [activeMailboxes countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(activeMailboxes);
            }

            [(NNMKSyncProvider *)self _handleHaltSyncForMailbox:*(*(&v24 + 1) + 8 * i)];
          }

          v18 = [activeMailboxes countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }
    }
  }

  else if (v10)
  {
    v16 = v9;
    *buf = 134217984;
    fullSyncVersion = [syncCopy fullSyncVersion];
    _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "halt-sync requested, but we haven't detected any pairing yet. Ignoring the halt sync request and waiting... (Version in Client: %lu)", buf, 0xCu);
  }
}

- (void)_handleHaltSyncForMailbox:(id)mailbox
{
  v13 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  if ([mailboxCopy syncEnabled] && (objc_msgSend(mailboxCopy, "syncActive") & 1) == 0)
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      mailboxId = [mailboxCopy mailboxId];
      v11 = 138543362;
      v12 = mailboxId;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring halt-sync request. Mailbox is not active. (Mailbox Id: %{public}@)", &v11, 0xCu);
    }
  }

  else
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      mailboxId2 = [mailboxCopy mailboxId];
      v11 = 138543362;
      v12 = mailboxId2;
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "halt-sync started for mailbox. (Mailbox id: %{public}@)", &v11, 0xCu);
    }

    [mailboxCopy setSyncActive:0];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncActiveForMailbox:mailboxCopy];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForFullSyncWithMailbox:mailboxCopy];
  }
}

- (void)fetchesSyncServiceServer:(id)server didNotifyInitialSyncFinished:(id)finished
{
  v18 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  if ([initialSyncProgressTracker isTrackingInitialSync])
  {
    fullSyncVersion = [finishedCopy fullSyncVersion];
    fullSyncVersion2 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];

    if (fullSyncVersion2 == fullSyncVersion)
    {
      initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker2 syncCompleted];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    initialSyncProgressTracker3 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    isTrackingInitialSync = [initialSyncProgressTracker3 isTrackingInitialSync];
    fullSyncVersion3 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];
    v15[0] = 67109376;
    v15[1] = isTrackingInitialSync;
    v16 = 2048;
    v17 = fullSyncVersion3;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#initial-sync finished notification received. However, we're no longer waiting for it. Ignoring... (Tracking: %d - Current #sync-version: %lu)", v15, 0x12u);
  }

LABEL_7:
}

- (void)fetchesSyncServiceServer:(id)server didNotifyAboutWebKitStatus:(id)status
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(status, "supportsWebKit", server)}];
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setSupportsWebKit:v5];
}

- (void)syncStateManagerDidUnpair:(id)unpair
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NNMKSyncProvider_syncStateManagerDidUnpair___block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

uint64_t __46__NNMKSyncProvider_syncStateManagerDidUnpair___block_invoke(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Unpairing detected. Triggering verification to insure we don't stop sync'ing if we still have another device we're talking to...", v4, 2u);
  }

  return [*(a1 + 32) _verifyPairingForcingSync:0];
}

- (void)syncStateManagerDidChangePairedDevice:(id)device
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NNMKSyncProvider_syncStateManagerDidChangePairedDevice___block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

uint64_t __58__NNMKSyncProvider_syncStateManagerDidChangePairedDevice___block_invoke(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Paired device changed. Handling as unpaired...", v4, 2u);
  }

  [*(a1 + 32) _handleDidUnpair];
  return [*(a1 + 32) _verifyPairingForcingSync:0];
}

- (void)syncStateManagerDidBeginSyncSession:(id)session syncSessionType:(id)type syncSessionIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NNMKSyncProvider_syncStateManagerDidBeginSyncSession_syncSessionType_syncSessionIdentifier___block_invoke;
  block[3] = &unk_279936098;
  block[4] = self;
  v13 = typeCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = typeCopy;
  dispatch_async(providerQueue, block);
}

void __94__NNMKSyncProvider_syncStateManagerDidBeginSyncSession_syncSessionType_syncSessionIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 152) pairedDeviceRegistryPath];
  v3 = qword_28144D620;
  v4 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE New session began, but we're already paired. (Type: %{public}@, Session ID: %{public}@). Responding with success...", &v11, 0x16u);
    }

    v7 = [*(a1 + 32) initialSyncProgressTracker];
    [v7 startTrackingInitialSync];

    v8 = [*(a1 + 32) initialSyncProgressTracker];
    [v8 syncCompleted];
  }

  else
  {
    if (v4)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE New session began, requesting #initial-sync (Type: %{public}@, Session ID: %{public}@). Triggering #initial-sync...", &v11, 0x16u);
    }

    [*(a1 + 32) _handleDidPairWithNewDevice];
  }
}

- (void)syncStateManagerDidInvalidateSyncSession:(id)session syncSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerQueue = self->_providerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__NNMKSyncProvider_syncStateManagerDidInvalidateSyncSession_syncSessionIdentifier___block_invoke;
  v8[3] = &unk_279935CD8;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  dispatch_async(providerQueue, v8);
}

uint64_t __83__NNMKSyncProvider_syncStateManagerDidInvalidateSyncSession_syncSessionIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Session invalidate. Invalidating #full-sync (Session ID: %{public}@). We'll verify if everything seems alright...", &v5, 0xCu);
  }

  return [*(a1 + 40) _verifyPairingForcingSync:0];
}

- (BOOL)syncStateManagerShouldAddFavoriteSubsectionForMailboxId:(id)id
{
  v3 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry mailboxWithId:id];
  v4 = [v3 type] != 1;

  return v4;
}

- (void)_handleDidPairWithNewDevice
{
  v3 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE New Pairing Detected. Will trigger #initial-sync.", buf, 2u);
  }

  if ([(NNMKSyncProvider *)self setupPairedDeviceRegistry])
  {
    [(NNMKSyncProvider *)self _triggerInitialSyncTrackingProgress:1];
    [(NNMKSyncProvider *)self _storeScreenRelatedValues];
  }

  else
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE No device registry path found. Unpairing...", v5, 2u);
    }

    [(NNMKSyncProvider *)self _handleDidUnpair];
  }
}

- (BOOL)setupPairedDeviceRegistry
{
  pairingStorePath = [(NNMKSyncStateManager *)self->_syncStateManager pairingStorePath];
  v4 = pairingStorePath;
  if (pairingStorePath)
  {
    v5 = [pairingStorePath stringByAppendingPathComponent:@"NanoMail/registry.sqlite"];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [[NNMKDeviceSyncRegistry alloc] initWithPath:v5];
      pairedDeviceRegistry = self->_pairedDeviceRegistry;
      self->_pairedDeviceRegistry = v7;

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setOrganizeByThread:1];
      [(NNMKDirectoryProvider *)self->_directoryProvider setPairedDeviceRegistryPath:v5];
    }
  }

  else
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider setupPairedDeviceRegistry];
    }

    initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    [initialSyncProgressTracker startTrackingInitialSync];

    initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    [initialSyncProgressTracker2 syncFailedWithError:@"PairedDeviceRegistry returned no devices."];

    v6 = 0;
  }

  return v6;
}

- (void)_handleDidUnpair
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  self->_pairedDeviceRegistry = 0;

  [(NNMKDirectoryProvider *)self->_directoryProvider setPairedDeviceRegistryPath:0];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  sessionController = [(NNMKSyncProvider *)self sessionController];
  [sessionController setMessageIdsToIgnoreStatusUpdates:v4];

  sessionController2 = [(NNMKSyncProvider *)self sessionController];
  notificationPayloadAcks = [sessionController2 notificationPayloadAcks];
  [notificationPayloadAcks removeAllObjects];

  [(NNMKSyncProvider *)self _requestDelegateToStopDownloadingAllMessageElements];
  [(NNMKBatchRequestHandler *)self->_batchRequestHandler cancelFetchTimeout];
  batchRequestHandler = self->_batchRequestHandler;

  [(NNMKBatchRequestHandler *)batchRequestHandler reset];
}

- (void)_verifyPairingForcingSync:(BOOL)sync
{
  syncCopy = sync;
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider _verifyPairingForcingSync:];
  }

  pairedDeviceRegistryPath = [(NNMKDirectoryProvider *)self->_directoryProvider pairedDeviceRegistryPath];
  pairingStorePath = [(NNMKSyncStateManager *)self->_syncStateManager pairingStorePath];
  _isPaired = [(NNMKSyncProvider *)self _isPaired];
  if (pairingStorePath)
  {
    v8 = pairedDeviceRegistryPath == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [pairedDeviceRegistryPath hasPrefix:pairingStorePath] ^ 1;
  }

  isInitialSyncRestricted = [(NNMKSyncStateManager *)self->_syncStateManager isInitialSyncRestricted];
  if ((((pairingStorePath != 0) ^ _isPaired) & 1) == 0 && !v9)
  {
    if (_isPaired && syncCopy)
    {
      if ([(NNMKSyncProvider *)self _pairedDeviceSupportsMultipleMailboxes])
      {
        v11 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE We are paired, but force re-sync was requested. Triggering #initial-sync", &v23, 2u);
        }

        [(NNMKSyncProvider *)self _triggerInitialSyncToRecoverFromSyncVersionMismatch];
      }

      else
      {
        syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
        v21 = [syncEnabledMailboxes count];

        if (!v21)
        {
          v22 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE We should be paired, but we don't have any synced mailbox. Forcing #initial-sync", &v23, 2u);
          }

          [(NNMKSyncProvider *)self _triggerInitialSync];
        }
      }
    }

    else
    {
      v14 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        syncStateManager = self->_syncStateManager;
        v16 = v14;
        pairingStorePath2 = [(NNMKSyncStateManager *)syncStateManager pairingStorePath];
        LODWORD(v23) = 67240962;
        HIDWORD(v23) = _isPaired;
        v24 = 1026;
        v25 = pairingStorePath != 0;
        v26 = 1024;
        v27 = syncCopy;
        v28 = 2114;
        v29 = pairingStorePath2;
        _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE State has not changed. Initial sync will not be triggered (paired: %{public}d, should: %{public}d, force: %{piblic}d). SyncStateManager.pairingStorePath %{public}@", &v23, 0x1Eu);
      }
    }

    goto LABEL_38;
  }

  if (pairingStorePath)
  {
    if (_isPaired)
    {
      v12 = qword_28144D620;
      if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
LABEL_37:
        [(NNMKSyncProvider *)self _handleDidPairWithNewDevice];
        goto LABEL_38;
      }

      LOWORD(v23) = 0;
      v13 = "#PAIRING_STATE Pairing verification determined we're paired with a new device. Will start syncing with new device...";
LABEL_20:
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, v13, &v23, 2u);
      goto LABEL_37;
    }

    if (!isInitialSyncRestricted)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [NNMKSyncProvider _verifyPairingForcingSync:];
      }

      goto LABEL_37;
    }

    if (syncCopy && ![(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry isMessagesSyncSuspendedByConnectivity])
    {
      v12 = qword_28144D620;
      if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      LOWORD(v23) = 0;
      v13 = "#PAIRING_STATE Pairing verification determined we're paired and we should force syncing, even though PairedSync hasn't told Mail to start yet. Will force syncing...";
      goto LABEL_20;
    }

    v19 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Pairing verification determined we're paired. However, we're waiting for PairedSync to tell us to start syncing. Waiting...", &v23, 2u);
    }
  }

  else
  {
    v18 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Pairing verification determined we're no longer paired. Will unpair...", &v23, 2u);
    }

    [(NNMKSyncProvider *)self _handleDidUnpair];
  }

LABEL_38:
}

- (void)_storeScreenRelatedValues
{
  pairedDeviceScreenSize = [(NNMKSyncStateManager *)self->_syncStateManager pairedDeviceScreenSize];
  v9 = pairedDeviceScreenSize;
  if (pairedDeviceScreenSize)
  {
    [pairedDeviceScreenSize CGSizeValue];
  }

  else
  {
    v4 = 200.0;
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDeviceScreenWidth:v4];
  pairedDeviceScreenScale = [(NNMKSyncStateManager *)self->_syncStateManager pairedDeviceScreenScale];
  v6 = pairedDeviceScreenScale;
  if (pairedDeviceScreenScale)
  {
    [pairedDeviceScreenScale floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 2.0;
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDeviceScreenScale:v8];
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setProtectedContentChannelSupported:[(NNMKSyncStateManager *)self->_syncStateManager pairedDeviceSupportsMailContentProtectedChannel]];
}

- (void)resendScheduler:(id)scheduler didRequestRetryFullSyncForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes due to retry.", v7, 2u);
  }

  [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:mailboxesCopy];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingMailboxSelectionWithResendInterval:(unint64_t)interval
{
  fullSyncVersion = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];

  [(NNMKSyncProvider *)self _sendUpdatedMailboxSelection:fullSyncVersion resendInterval:interval];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingMessageDeletions:(id)deletions deletionsMessageIds:(id)ids resendInterval:(unint64_t)interval
{
  v43 = *MEMORY[0x277D85DE8];
  deletionsCopy = deletions;
  idsCopy = ids;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = deletionsCopy;
  obj = [deletionsCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v35;
    *&v11 = 138543362;
    v30 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry mailboxWithId:v15, v30];
        if (v16)
        {
          v17 = [v33 objectForKeyedSubscript:v15];
          [v17 setFullSyncVersion:{-[NNMKDeviceSyncRegistry fullSyncVersion](self->_pairedDeviceRegistry, "fullSyncVersion")}];
          v18 = MEMORY[0x277CCAAB0];
          date = [MEMORY[0x277CBEAA8] date];
          v20 = [v18 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
          [v17 setDateSynced:v20];

          mailboxId = [v16 mailboxId];
          [v17 setMailboxId:mailboxId];

          pairedDeviceRegistry = self->_pairedDeviceRegistry;
          mailboxId2 = [v16 mailboxId];
          [v17 setMailboxSyncVersion:{-[NNMKDeviceSyncRegistry syncVersionForMailboxId:](pairedDeviceRegistry, "syncVersionForMailboxId:", mailboxId2)}];

          v24 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService deleteMessages:v17 notificationPriority:0];
          resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
          [resendScheduler registerIDSIdentifier:v24 objectIds:idsCopy type:@"Message" resendInterval:interval];

          v26 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            nnmk_description = [idsCopy nnmk_description];
            *buf = 138543618;
            v39 = v24;
            v40 = 2114;
            v41 = nnmk_description;
            _os_log_impl(&dword_25B19F000, v27, OS_LOG_TYPE_DEFAULT, "Retrying sending message deletions. (IDS Identifier: %{public}@, deletions: %{public}@)", buf, 0x16u);
          }
        }

        else
        {
          v29 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v30;
            v39 = v15;
            _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "Mailbox does not exist anymore. Ignoring resend deletion. %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v12);
  }
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingAccountIdentifier:(id)identifier resendInterval:(unint64_t)interval
{
  identifierCopy = identifier;
  sessionController = [(NNMKSyncProvider *)self sessionController];
  syncingAccountIdentityByUsername = [sessionController syncingAccountIdentityByUsername];
  v10 = [syncingAccountIdentityByUsername objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    [(NNMKSyncProvider *)self _sendStandaloneAccountIdentity:v10 resendInterval:interval];
  }

  else
  {
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider resendScheduler:didRequestRetrySendingAccountIdentifier:resendInterval:];
    }

    pairedDeviceRegistry = [(NNMKSyncProvider *)self pairedDeviceRegistry];
    v12 = [pairedDeviceRegistry accountIdForUsername:identifierCopy];

    sessionController2 = [(NNMKSyncProvider *)self sessionController];
    [sessionController2 updateStandaloneState:0 forAccountId:v12];
  }
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingVIPListWithResendInterval:(unint64_t)interval
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(NNMKRequestContext);
  [(NNMKRequestContext *)v6 setResendInterval:interval];
  v7 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting VIP List to retry. Resend Interval: %lu", &v8, 0xCu);
  }

  [(NNMKSyncProvider *)self _requestDelegateForVIPList:v6];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingDeletionForAccountWithId:(id)id resendInterval:(unint64_t)interval
{
  v15[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v8 = objc_alloc_init(NNMKProtoAccountDeletion);
  [(NNMKProtoAccountDeletion *)v8 setAccountId:idCopy];
  v9 = [(NNMKAccountsSyncServiceServer *)self->_accountsSyncService deleteAccount:v8];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  v15[0] = idCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [resendScheduler registerIDSIdentifier:v9 objectIds:v11 type:@"Account" resendInterval:interval];

  v12 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Retrying sending deletion for account. (IDS Identifier: %{public}@)", &v13, 0xCu);
  }
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingComposeMessageProgress:(int64_t)progress messageId:(id)id resendInterval:(unint64_t)interval
{
  v20[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = objc_alloc_init(NNMKProtoComposedMessageSendingProgressReport);
  [(NNMKProtoComposedMessageSendingProgressReport *)v10 setComposedMessageId:idCopy];
  [(NNMKProtoComposedMessageSendingProgressReport *)v10 setProgress:progress];
  v11 = [(NNMKFetchesSyncServiceServer *)self->_fetchesSyncService reportComposedMessageSendingProgress:v10];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  v20[0] = idCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [resendScheduler registerIDSIdentifier:v11 objectIds:v13 type:@"SendingProgress" resendInterval:interval];

  if (progress == -1)
  {
    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = idCopy;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Failing composed message, as we restarted before even adding the message to the Outbox queue. (Composed Message Id: %{public}@ - IDS Identifier: %{public}@).", &v16, 0x16u);
    }
  }

  v15 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_25B19F000, v15, OS_LOG_TYPE_DEFAULT, "Retrying sending compose message progress. (IDS Identifier: %{public}@)", &v16, 0xCu);
  }
}

- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version mailbox:(id)mailbox
{
  v15 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v7 = mailboxCopy;
  if (mailboxCopy && ([mailboxCopy syncActive] & 1) != 0)
  {
    v8 = [(NNMKSyncProvider *)self _verifyDatabaseOkForFullSyncVersion:version];
  }

  else
  {
    [(NNMKSyncProvider *)self _fastForwardToFullSyncVersion:version];
    v9 = qword_28144D620;
    v8 = 0;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      mailboxId = [v7 mailboxId];
      v13 = 138543362;
      v14 = mailboxId;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Message received but sync isn't active. (Mailbox id: %{public}@) Discarding...", &v13, 0xCu);

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version
{
  v22 = *MEMORY[0x277D85DE8];
  fullSyncVersion = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];
  v6 = fullSyncVersion;
  if (fullSyncVersion <= version)
  {
    if (fullSyncVersion >= version)
    {
      goto LABEL_14;
    }

    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
      v16 = 134218496;
      versionCopy = version;
      v18 = 2048;
      versionCopy3 = v6;
      v20 = 2048;
      _isPaired = [(NNMKSyncProvider *)self _isPaired];
      _os_log_error_impl(&dword_25B19F000, v14, OS_LOG_TYPE_ERROR, "Client has a #sync-version higher than what the server has (Version in Client: %lu - Local: %lu - Paired: %lu). Triggering #initial-sync...", &v16, 0x20u);
    }

    [(NNMKSyncProvider *)self _fastForwardToFullSyncVersion:version];
    [(NNMKSyncProvider *)self _triggerInitialSyncToRecoverFromSyncVersionMismatch];
    v13 = +[NNMKAnalytics sharedInstance];
    [v13 reportFullSyncRequestedFromDevice:1 corruptionDetected:0 migrationRelated:0 idsFailureRelated:0 fullSyncVersionMatchRelated:1];

    _isPaired2 = [(NNMKSyncProvider *)self _isPaired];
    if (_isPaired2)
    {
LABEL_14:
      LOBYTE(_isPaired2) = 1;
    }
  }

  else
  {
    if (version - fullSyncVersion >= 0)
    {
      v7 = version - fullSyncVersion;
    }

    else
    {
      v7 = fullSyncVersion - version;
    }

    fullSyncRecoveredInThisSession = self->_fullSyncRecoveredInThisSession;
    v9 = qword_28144D620;
    _isPaired2 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
    if (!fullSyncRecoveredInThisSession && v7 >= 3)
    {
      if (_isPaired2)
      {
        v16 = 134218240;
        versionCopy = v6;
        v18 = 2048;
        versionCopy3 = version;
        _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Received message that has a #sync-version so distant from the local one that we're triggering a #initial-sync. (Local: %lu - Client: %lu).", &v16, 0x16u);
      }

      self->_fullSyncRecoveredInThisSession = 1;
      [(NNMKSyncProvider *)self _triggerInitialSyncToRecoverFromSyncVersionMismatch];
      v11 = +[NNMKAnalytics sharedInstance];
      [v11 reportFullSyncRequestedFromDevice:1 corruptionDetected:0 migrationRelated:0 idsFailureRelated:0 fullSyncVersionMatchRelated:1];

      goto LABEL_17;
    }

    if (_isPaired2)
    {
      v16 = 134218240;
      versionCopy = v6;
      v18 = 2048;
      versionCopy3 = version;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Message discarded because #sync-version is different (Local: %lu - Client: %lu).", &v16, 0x16u);
LABEL_17:
      LOBYTE(_isPaired2) = 0;
    }
  }

  return _isPaired2;
}

- (void)_addMessages:(id)messages messagesAreNew:(BOOL)new mailbox:(id)mailbox
{
  newCopy = new;
  v64 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  v55 = messagesCopy;
  v11 = [persistenceHandler addMessages:messagesCopy containsNewMessages:newCopy mailbox:mailboxCopy];

  protoMessagesWithNotificationPriority = [v11 protoMessagesWithNotificationPriority];
  messageAdditionsCount = [protoMessagesWithNotificationPriority messageAdditionsCount];

  if (messageAdditionsCount)
  {
    messagesSyncService = self->_messagesSyncService;
    protoMessagesWithNotificationPriority2 = [v11 protoMessagesWithNotificationPriority];
    v16 = [(NNMKMessagesSyncServiceServer *)messagesSyncService addMessages:protoMessagesWithNotificationPriority2 notificationPriority:1];

    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    messageIdsWithNotificationPriority = [v11 messageIdsWithNotificationPriority];
    [resendScheduler registerIDSIdentifier:v16 objectIds:messageIdsWithNotificationPriority type:@"Message" resendInterval:0];

    messageIdsWithNotificationPriority2 = [v11 messageIdsWithNotificationPriority];
    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:messageIdsWithNotificationPriority2 highPriority:1];

    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      log = v20;
      protoMessagesWithNotificationPriority3 = [v11 protoMessagesWithNotificationPriority];
      v22 = newCopy;
      newCopy = [protoMessagesWithNotificationPriority3 messageAdditionsCount];
      mailboxId = [mailboxCopy mailboxId];
      pairedDeviceRegistry = self->_pairedDeviceRegistry;
      mailboxId2 = [mailboxCopy mailboxId];
      *buf = 134218754;
      v57 = newCopy;
      LODWORD(newCopy) = v22;
      v58 = 2114;
      v59 = v16;
      v60 = 2114;
      v61 = mailboxId;
      v62 = 2048;
      v63 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncVersionForMailboxId:mailboxId2];
      _os_log_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEFAULT, "Messages sent with URGENT priority. (Count: %lu - IDS Identifier: %{public}@ - Mailbox: %{public}@ - #mailbox-sync-version: %lu).", buf, 0x2Au);
    }
  }

  protoMessagesWithDefaultPriority = [v11 protoMessagesWithDefaultPriority];
  messageAdditionsCount2 = [protoMessagesWithDefaultPriority messageAdditionsCount];

  if (messageAdditionsCount2)
  {
    v28 = self->_messagesSyncService;
    protoMessagesWithDefaultPriority2 = [v11 protoMessagesWithDefaultPriority];
    v30 = [(NNMKMessagesSyncServiceServer *)v28 addMessages:protoMessagesWithDefaultPriority2 notificationPriority:0];

    resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
    messageIdsWithDefaultPriority = [v11 messageIdsWithDefaultPriority];
    [resendScheduler2 registerIDSIdentifier:v30 objectIds:messageIdsWithDefaultPriority type:@"Message" resendInterval:0];

    messageIdsWithDefaultPriority2 = [v11 messageIdsWithDefaultPriority];
    v34 = messageIdsWithDefaultPriority2;
    if (newCopy)
    {
      v35 = [messageIdsWithDefaultPriority2 count];

      if (v35)
      {
        v36 = 1;
        do
        {
          messageIdsWithDefaultPriority3 = [v11 messageIdsWithDefaultPriority];
          v38 = [messageIdsWithDefaultPriority3 objectAtIndexedSubscript:v36 - 1];

          [(NNMKSyncProvider *)self _requestDelegateForContentForMessageWithId:v38 highPriority:0];
          messageIdsWithDefaultPriority4 = [v11 messageIdsWithDefaultPriority];
          v40 = [messageIdsWithDefaultPriority4 count];

          if (v36 >= v40)
          {
            break;
          }
        }

        while (v36++ < 0xA);
      }
    }

    else
    {
      [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:messageIdsWithDefaultPriority2 highPriority:0];
    }

    v42 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      loga = v42;
      protoMessagesWithDefaultPriority3 = [v11 protoMessagesWithDefaultPriority];
      messageAdditionsCount3 = [protoMessagesWithDefaultPriority3 messageAdditionsCount];
      mailboxId3 = [mailboxCopy mailboxId];
      currentDeviceRegistry = [(NNMKSyncProvider *)self currentDeviceRegistry];
      [mailboxCopy mailboxId];
      v48 = v47 = mailboxCopy;
      v49 = [currentDeviceRegistry syncVersionForMailboxId:v48];
      *buf = 134218754;
      v57 = messageAdditionsCount3;
      v58 = 2114;
      v59 = v30;
      v60 = 2114;
      v61 = mailboxId3;
      v62 = 2048;
      v63 = v49;
      _os_log_impl(&dword_25B19F000, loga, OS_LOG_TYPE_DEFAULT, "Messages sent with DEFAULT priority. (Count: %lu - IDS Identifier: %{public}@ - Mailbox: %{public}@ - #mailbox-sync-version: %lu).", buf, 0x2Au);

      mailboxCopy = v47;
    }
  }

  if ([v11 receivedOldMessages])
  {
    v50 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v50, OS_LOG_TYPE_DEFAULT, "Old messages are available for fetching. Sending notification to client...", buf, 2u);
    }

    v51 = objc_alloc_init(NNMKProtoOldMessagesAvailableNotification);
    [(NNMKProtoOldMessagesAvailableNotification *)v51 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    mailboxId4 = [mailboxCopy mailboxId];
    [(NNMKProtoOldMessagesAvailableNotification *)v51 setMailboxId:mailboxId4];

    [(NNMKFetchesSyncServiceServer *)self->_fetchesSyncService notifyOldMessagesAvailable:v51];
  }
}

- (void)_markConversationWithId:(id)id forState:(unint64_t)state include:(BOOL)include mailbox:(id)mailbox
{
  includeCopy = include;
  mailboxCopy = mailbox;
  idCopy = id;
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  v13 = [persistenceHandler updateMessagesFromConversation:idCopy withState:state include:includeCopy mailbox:mailboxCopy];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__NNMKSyncProvider__markConversationWithId_forState_include_mailbox___block_invoke;
  v24[3] = &unk_279936758;
  v24[4] = self;
  v14 = MEMORY[0x25F864490](v24);
  messagesSyncService = self->_messagesSyncService;
  protoMessageUpdatesWithNotificationPriority = [v13 protoMessageUpdatesWithNotificationPriority];
  messageIdsWithNotificationPriority = [v13 messageIdsWithNotificationPriority];
  (v14)[2](v14, messagesSyncService, protoMessageUpdatesWithNotificationPriority, messageIdsWithNotificationPriority, 1);

  v18 = self->_messagesSyncService;
  protoMessageUpdatesWithDefaultPriority = [v13 protoMessageUpdatesWithDefaultPriority];
  messageIdsWithDefaultPriority = [v13 messageIdsWithDefaultPriority];
  (v14)[2](v14, v18, protoMessageUpdatesWithDefaultPriority, messageIdsWithDefaultPriority, 0);

  messageIdsToDelete = [v13 messageIdsToDelete];
  v22 = [messageIdsToDelete count];

  if (v22)
  {
    messageIdsToDelete2 = [v13 messageIdsToDelete];
    [(NNMKSyncProvider *)self deleteMessagesWithIds:messageIdsToDelete2];
  }
}

void __69__NNMKSyncProvider__markConversationWithId_forState_include_mailbox___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  if ([v9 messageStatusUpdatesCount])
  {
    v11 = [v13 updateMessagesStatus:v9 notificationPriority:a5];
    v12 = [*(a1 + 32) resendScheduler];
    [v12 registerIDSIdentifier:v11 objectIds:v10 type:@"Message" resendInterval:0];
  }
}

- (id)_bbSubsectionIdsForMessage:(id)message
{
  messageCopy = message;
  v4 = MEMORY[0x277CBEB58];
  accountId = [messageCopy accountId];
  v6 = [v4 setWithObject:accountId];

  if ([messageCopy checkState:64])
  {
    [v6 addObject:@"com.apple.mobilemail.bulletin-subsection.VIP"];
  }

  if ([messageCopy checkState:128])
  {
    [v6 addObject:@"com.apple.mobilemail.bulletin-subsection.ThreadNotify"];
  }

  return v6;
}

- (void)syncStateManager:(id)manager handleForwardForNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NNMKSyncProvider_syncStateManager_handleForwardForNotification_completion___block_invoke;
  block[3] = &unk_2799368E8;
  block[4] = self;
  v13 = notificationCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = notificationCopy;
  dispatch_async(providerQueue, block);
}

- (void)_shouldHandleForwardForNotification:(id)notification withCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  completionCopy = completion;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"com.apple.mail.nanoMessageId"];

  if (v11)
  {
    if (completionCopy)
    {
      pairedDeviceRegistry = [(NNMKSyncProvider *)self pairedDeviceRegistry];
      v13 = [pairedDeviceRegistry syncedMessageForMessageWithId:v11];

      if (v13)
      {
        pairedDeviceRegistry2 = [(NNMKSyncProvider *)self pairedDeviceRegistry];
        mailboxId = [v13 mailboxId];
        request2 = [pairedDeviceRegistry2 mailboxWithId:mailboxId];

        accountId = [request2 accountId];
      }

      else
      {
        request2 = [notificationCopy request];
        content2 = [request2 content];
        userInfo2 = [content2 userInfo];
        accountId = [userInfo2 objectForKeyedSubscript:@"com.apple.mail.accountReference"];
      }

      pairedDeviceRegistry3 = [(NNMKSyncProvider *)self pairedDeviceRegistry];
      v22 = [pairedDeviceRegistry3 syncedAccountForAccountWithId:accountId];

      if ([v22 sourceType])
      {
        v23 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          accountId2 = [v22 accountId];
          v38 = 138543618;
          v39 = v11;
          v40 = 2114;
          v41 = accountId2;
          _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Suppressing notification for message because account is in standalone mode. Message Id: %{public}@ - Account Id: %{public}@", &v38, 0x16u);
        }

        completionCopy[2](completionCopy, 0);
      }

      else
      {
        pairedDeviceRegistry = self->_pairedDeviceRegistry;
        if (pairedDeviceRegistry && ([(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncedMessageForMessageWithId:v11], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v28 = v27;
          if ([v27 contentSyncedUsingNotificationPriority])
          {
            v29 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 138543362;
              v39 = v11;
              _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message, but we already sync'ed the content through the high priority channel for this message. Notifying back... (Message Id: %{public}@)", &v38, 0xCu);
            }

            completionCopy[2](completionCopy, 1);
          }

          else
          {
            usedNotificationPriorityForMessageSync = [v28 usedNotificationPriorityForMessageSync];
            v34 = qword_28144D620;
            if (usedNotificationPriorityForMessageSync)
            {
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v38 = 138543362;
                v39 = v11;
                _os_log_impl(&dword_25B19F000, v34, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message. We already have the message. Waiting for the content... (Message Id: %{public}@)", &v38, 0xCu);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
              {
                [NNMKSyncProvider _shouldHandleForwardForNotification:withCompletion:];
              }

              [v28 setUsedNotificationPriorityForMessageSync:1];
              if ([v28 contentSynced])
              {
                [v28 setContentSyncedBecauseUserRequested:0];
                [v28 setContentSynced:0];
                [(NNMKSyncProvider *)self _requestDelegateForContentForMessageWithId:v11 highPriority:1];
              }

              [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v28];
            }

            v35 = MEMORY[0x25F864490](completionCopy);
            sessionController = [(NNMKSyncProvider *)self sessionController];
            notificationPayloadAcks = [sessionController notificationPayloadAcks];
            [notificationPayloadAcks setObject:v35 forKeyedSubscript:v11];
          }
        }

        else
        {
          v30 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 138543362;
            v39 = v11;
            _os_log_impl(&dword_25B19F000, v30, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message. Waiting... (Message Id: %{public}@)", &v38, 0xCu);
          }

          v28 = MEMORY[0x25F864490](completionCopy);
          sessionController2 = [(NNMKSyncProvider *)self sessionController];
          notificationPayloadAcks2 = [sessionController2 notificationPayloadAcks];
          [notificationPayloadAcks2 setObject:v28 forKeyedSubscript:v11];
        }
      }
    }

    else
    {
      v18 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
      {
        v38 = 138543362;
        v39 = v11;
        _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_INFO, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message, but the ack handler was NULL. Ignoring... (Message Id: %{public}@)", &v38, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider _shouldHandleForwardForNotification:withCompletion:];
    }

    completionCopy[2](completionCopy, 1);
  }
}

- (void)_fastForwardToFullSyncVersion:(unint64_t)version
{
  v16 = *MEMORY[0x277D85DE8];
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  if (pairedDeviceRegistry)
  {
    if ([(NNMKDeviceSyncRegistry *)pairedDeviceRegistry fullSyncVersion]< version)
    {
      *&v6 = 134218240;
      v11 = v6;
      do
      {
        v7 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_pairedDeviceRegistry;
          v9 = v7;
          fullSyncVersion = [(NNMKDeviceSyncRegistry *)v8 fullSyncVersion];
          *buf = v11;
          v13 = version + 1;
          v14 = 2048;
          v15 = fullSyncVersion;
          _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Fast forwarding #sync-version (To: %lu - Current: %lu).", buf, 0x16u);
        }

        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setFullSyncVersion:version, v11];
        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForInitialSync];
      }

      while ([(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]< version);
    }
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _fastForwardToFullSyncVersion:];
  }
}

- (void)_stopTaks
{
  [(NNMKSyncServiceEndpoint *)self->_messagesSyncService resetRepeatPreventionHistory];
  [(NNMKSyncServiceEndpoint *)self->_contentSyncService resetRepeatPreventionHistory];
  [(NNMKSyncServiceEndpoint *)self->_fetchesSyncService resetRepeatPreventionHistory];
  [(NNMKSyncServiceEndpoint *)self->_accountsSyncService resetRepeatPreventionHistory];
  sessionController = [(NNMKSyncProvider *)self sessionController];
  notificationPayloadAcks = [sessionController notificationPayloadAcks];
  [notificationPayloadAcks removeAllObjects];

  [(NNMKSyncProvider *)self _requestDelegateToStopDownloadingAllMessageElements];
}

- (BOOL)isMessageOkForSyncedMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  providerQueue = self->_providerQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NNMKSyncProvider_isMessageOkForSyncedMailboxes___block_invoke;
  block[3] = &unk_279936290;
  v9 = mailboxesCopy;
  v10 = &v11;
  block[4] = self;
  v6 = mailboxesCopy;
  dispatch_sync(providerQueue, block);
  LOBYTE(providerQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return providerQueue;
}

void __50__NNMKSyncProvider_isMessageOkForSyncedMailboxes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  *(*(*(a1 + 48) + 8) + 24) = [v2 doesMessageBelongToSyncedMailboxes:*(a1 + 40)];
}

- (id)_messageProtobufForMessage:(id)message
{
  messageCopy = message;
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  v6 = [persistenceHandler protoMessageFromMessage:messageCopy];

  return v6;
}

- (void)_checkConnectivityBasedSuspensionTimer:(BOOL)timer
{
  timerCopy = timer;
  disconnectedSince = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry disconnectedSince];

  if (((disconnectedSince != 0) ^ timerCopy))
  {
    if (timerCopy)
    {
      return;
    }

    goto LABEL_14;
  }

  v6 = qword_28144D620;
  if (!timerCopy)
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Is now disconnected. Initiating timer to suspend sync.", buf, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDisconnectedSince:date];

LABEL_14:
    disconnectedSince2 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry disconnectedSince];

    if (disconnectedSince2)
    {
      v10 = MEMORY[0x277CBEAA8];
      v11 = *&kIntervalBeforeSuspendingDueToLackOfConnectivity;
      disconnectedSince3 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry disconnectedSince];
      v13 = [v10 dateWithTimeInterval:disconnectedSince3 sinceDate:v11];

      [v13 timeIntervalSinceNow];
      v15 = dispatch_time(0, (v14 * 1000000000.0));
      providerQueue = self->_providerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__NNMKSyncProvider__checkConnectivityBasedSuspensionTimer___block_invoke;
      block[3] = &unk_279935CB0;
      block[4] = self;
      dispatch_after(v15, providerQueue, block);
    }

    return;
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider _checkConnectivityBasedSuspensionTimer:];
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDisconnectedSince:0];
  if ([(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry isMessagesSyncSuspendedByConnectivity])
  {
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setIsMessagesSyncSuspendedByConnectivity:0];
    v7 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Sync was suspending due to lack of connectivity. We're connected now, so resuming...", buf, 2u);
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:1];
  }
}

void __59__NNMKSyncProvider__checkConnectivityBasedSuspensionTimer___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) disconnectedSince];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 72) isMessagesSyncSuspendedByConnectivity];

    if ((v4 & 1) == 0)
    {
      v5 = MEMORY[0x277CBEAA8];
      v6 = *&kIntervalBeforeSuspendingDueToLackOfConnectivity;
      v7 = [*(*(a1 + 32) + 72) disconnectedSince];
      v8 = [v5 dateWithTimeInterval:v7 sinceDate:v6];

      v9 = [MEMORY[0x277CBEAA8] date];
      v10 = [v9 compare:v8];

      if (v10 != -1)
      {
        v11 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Suspending sync due to lack of connectivity...", buf, 2u);
        }

        [*(*(a1 + 32) + 72) setIsMessagesSyncSuspendedByConnectivity:1];
        v12 = +[NNMKAnalytics sharedInstance];
        [v12 reportHaltSyncRequestedFromSource:0];

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v13 = [*(*(a1 + 32) + 72) activeMailboxes];
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v19;
          do
          {
            v17 = 0;
            do
            {
              if (*v19 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(a1 + 32) _handleHaltSyncForMailbox:*(*(&v18 + 1) + 8 * v17++)];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
          }

          while (v15);
        }

        [*(a1 + 32) _stopTaks];
      }
    }
  }
}

- (void)batchRequestHandlerDidTimeoutFetchRequest:(id)request
{
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "#FETCH #BATCHED_RESPONSE timed out. It will check if headers are available to respond back.", v5, 2u);
  }

  [(NNMKSyncProvider *)self _checkBatchFetchedMessages];
}

- (void)_checkBatchFetchedMessages
{
  v60 = *MEMORY[0x277D85DE8];
  batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
  checkBatchFetchedMessages = [batchRequestHandler checkBatchFetchedMessages];

  fetchResults = [checkBatchFetchedMessages fetchResults];
  v6 = [fetchResults count];

  if (v6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v47 = checkBatchFetchedMessages;
    fetchResults2 = [checkBatchFetchedMessages fetchResults];
    v8 = [fetchResults2 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(fetchResults2);
          }

          v12 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(*(&v52 + 1) + 8 * i);
            v14 = v12;
            mailboxId = [v13 mailboxId];
            *buf = 138543362;
            v58 = mailboxId;
            _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Responding for #FETCH #BATCHED_RESPONSE request. (Mailbox id: %{public}@)", buf, 0xCu);
          }
        }

        v9 = [fetchResults2 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v9);
    }

    checkBatchFetchedMessages = v47;
    fetchResults3 = [v47 fetchResults];
    v17 = [fetchResults3 count];

    if (v17 == 1)
    {
      messagesSyncService = self->_messagesSyncService;
      fetchResults4 = [v47 fetchResults];
      firstObject = [(NNMKProtoCoalescedBatchedFetchResult *)fetchResults4 firstObject];
      v21 = [(NNMKMessagesSyncServiceServer *)messagesSyncService sendBatchedFetchResult:firstObject];
    }

    else
    {
      fetchResults4 = objc_alloc_init(NNMKProtoCoalescedBatchedFetchResult);
      fetchResults5 = [v47 fetchResults];
      v23 = [fetchResults5 mutableCopy];
      [(NNMKProtoCoalescedBatchedFetchResult *)fetchResults4 setFetchResults:v23];

      v24 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendCoalescedBatchedFetchResult:fetchResults4];
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    messageIdsForRequestingContentDownload = [v47 messageIdsForRequestingContentDownload];
    v26 = [messageIdsForRequestingContentDownload countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(messageIdsForRequestingContentDownload);
          }

          v30 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:*(*(&v48 + 1) + 8 * j)];
          [v30 setContentRequestedByUser:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v30];
        }

        v27 = [messageIdsForRequestingContentDownload countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v27);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    v31 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      messageIdsForRequestingContentDownload2 = [v47 messageIdsForRequestingContentDownload];
      v34 = [messageIdsForRequestingContentDownload2 count];
      *buf = 134217984;
      v58 = v34;
      _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Requesting message body for %lu most recent headers for #BATCHED_RESPONSE.", buf, 0xCu);
    }

    messageIdsForRequestingContentDownload3 = [v47 messageIdsForRequestingContentDownload];
    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:messageIdsForRequestingContentDownload3 highPriority:1];
  }

  missingMessageHeaderIds = [checkBatchFetchedMessages missingMessageHeaderIds];
  v37 = [missingMessageHeaderIds count];

  if (v37)
  {
    v38 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      missingMessageHeaderIds2 = [checkBatchFetchedMessages missingMessageHeaderIds];
      v41 = [missingMessageHeaderIds2 count];
      *buf = 134217984;
      v58 = v41;
      _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_DEFAULT, "Requesting message headers from MobileMail to respond for #BATCHED_RESPONSE. %li", buf, 0xCu);
    }

    missingMessageHeaderIds3 = [checkBatchFetchedMessages missingMessageHeaderIds];
    [(NNMKSyncProvider *)self _requestDelegateForMessagesToSendAsFetchResponseForMessageIds:missingMessageHeaderIds3];
  }

  mailboxesToTriggerFullSync = [checkBatchFetchedMessages mailboxesToTriggerFullSync];
  v44 = [mailboxesToTriggerFullSync count];

  if (v44)
  {
    v45 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v45, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync because we exceeded attempts for requesting missing headers for #BATCHED_RESPONSE.", buf, 2u);
    }

    mailboxesToTriggerFullSync2 = [checkBatchFetchedMessages mailboxesToTriggerFullSync];
    [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:mailboxesToTriggerFullSync2];
  }
}

- (void)_handleDidFailSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  [initialSyncProgressTracker syncFailedWithError:@"IDS failed sending messages."];

  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler handleIDSMessageFailedWithId:identifierCopy errorCode:code];
}

- (void)_notifyDelegateThatMessagesStatusWereUpdated:(id)updated
{
  updatedCopy = updated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didUpdateMessagesStatus:updatedCopy];
}

- (void)_requestDelegateForAccounts
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProviderDidRequestAccounts:self];
}

- (void)_requestDelegateForVIPList:(id)list
{
  listCopy = list;
  delegate = [(NNMKSyncProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NNMKSyncProvider *)self delegate];
    [delegate2 syncProvider:self didRequestVIPSenderListWithRequestContext:listCopy];
  }
}

- (void)_requestDelegateForMoreMessagesWithMailbox:(id)mailbox beforeDate:(id)date messagesForspecialMailboxFilterType:(unint64_t)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  mailboxCopy = mailbox;
  v10 = objc_alloc_init(NNMKRequestContext);
  [(NNMKRequestContext *)v10 setBeforeDate:dateCopy];

  [(NNMKRequestContext *)v10 setCount:20];
  v13[0] = mailboxCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  [(NNMKRequestContext *)v10 setMailboxes:v11];
  [(NNMKRequestContext *)v10 setMessagesForSpecialMailbox:type];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestMessagesWithContext:v10];
}

- (void)_requestDelegateForMoreMessagesBeforeDateReceived:(id)received forConversationWithId:(id)id mailbox:(id)mailbox
{
  v14[1] = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  idCopy = id;
  mailboxCopy = mailbox;
  if (mailboxCopy)
  {
    v11 = objc_alloc_init(NNMKRequestContext);
    [(NNMKRequestContext *)v11 setBeforeDate:receivedCopy];
    [(NNMKRequestContext *)v11 setCount:20];
    v14[0] = mailboxCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(NNMKRequestContext *)v11 setMailboxes:v12];

    [(NNMKRequestContext *)v11 setConversationId:idCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncProvider:self didRequestMessagesWithContext:v11];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _requestDelegateForMoreMessagesBeforeDateReceived:forConversationWithId:mailbox:];
  }
}

- (void)_requestDelegateForFirstMessagesForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider _requestDelegateForFirstMessagesForMailboxes:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestFirstMessages:20 mailboxes:mailboxesCopy];
}

- (void)_requestDelegateForContentForMessageIds:(id)ids highPriority:(BOOL)priority
{
  priorityCopy = priority;
  v22 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [idsCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 138543362;
    v14 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(idsCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          v20 = v12;
          _os_log_debug_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEBUG, "Requesting content for message: %{public}@.", buf, 0xCu);
        }

        [(NNMKSyncProvider *)self _requestDelegateForContentForMessageWithId:v12 highPriority:priorityCopy, v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [idsCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_requestDelegateForContentForMessageWithId:(id)id highPriority:(BOOL)priority
{
  priorityCopy = priority;
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestContentForMessageWithId:idCopy highPriority:priorityCopy];
}

- (void)_requestDelegateToStopDownloadingMessageElementsForMessageWithId:(id)id
{
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestStopDownloadingMessageElementsForMessageWithId:idCopy];
}

- (void)_requestDelegateToStopDownloadingAllMessageElements
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProviderDidRequestStopDownloadingAllMessageElements:self];
}

- (void)_requestDelegateForFetchForMailboxes:(id)mailboxes
{
  v19 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  delegate = [(NNMKSyncProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NNMKSyncProvider *)self delegate];
    [delegate2 syncProvider:self didRequestFetchForMailboxes:mailboxesCopy];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    delegate2 = mailboxesCopy;
    v8 = [delegate2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(delegate2);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained syncProviderDidRequestFetch:self forConversationId:0 mailbox:{v12, v14}];

          ++v11;
        }

        while (v9 != v11);
        v9 = [delegate2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)_requestDelegateToSendComposedMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestSendComposedMessage:messageCopy];
}

- (void)_requestDelegateForResendingMessagesWithIds:(id)ids
{
  idsCopy = ids;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestResendMessagesWithIds:idsCopy];
}

- (void)_requestDelegateForResendingAccountWithId:(id)id
{
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestResendAccountWithId:idCopy];
}

- (void)trackerDidFinishSendingInitialSyncContentToPairedDevice:(id)device
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(NNMKProtoInitialContentSyncCompletedNotification);
  [(NNMKProtoInitialContentSyncCompletedNotification *)v4 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
  v5 = [(NNMKMessageContentSyncServiceServer *)self->_contentSyncService notifyInitialContentSyncCompleted:v4];
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Notifying client that all content has been sync'ed (IDS Identifier: %{public}@)...", &v7, 0xCu);
  }
}

- (void)_requestDelegateForMessagesToSendAsFetchResponseForMessageIds:(id)ids
{
  idsCopy = ids;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestMessagesToSendAsFetchResponseForMessageIds:idsCopy];
}

- (id)_createDefaultSyncStateManager
{
  v2 = objc_alloc_init(NNMKSyncStateManager);

  return v2;
}

- (NNMKSyncProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_triggerFullSyncForMailbox:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_triggerFullSyncForMailboxes:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addMessages:(uint64_t)a3 mailbox:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 mailboxId];
  v7 = [NNMKMessage messageIdsFromMessages:a3];
  v8 = [v7 nnmk_description];
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_25B19F000, v5, OS_LOG_TYPE_ERROR, "Dropping messages to add because mailbox is not active. (Mailbox: %{public}@ - Messages: %{public}@)", &v9, 0x16u);
}

- (void)_updateMessagesStatus:(uint64_t)a3 mailbox:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 mailboxId];
  v7 = [a2 syncRequested];
  v8 = [a2 syncRequestedDate];
  v9 = [NNMKMessage messageIdsFromMessages:a3];
  v10 = [v9 nnmk_description];
  v11 = 138544130;
  v12 = v6;
  v13 = 2048;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  v17 = 2114;
  v18 = v10;
  _os_log_error_impl(&dword_25B19F000, v5, OS_LOG_TYPE_ERROR, "Dropping messages to update because mailbox is not active. (Mailbox: %{public}@ - Sync Requested: %lu - Request Date - %{public}@ - Messages: %{public}@)", &v11, 0x2Au);
}

void __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

- (void)_addMessageContent:forMessage:mailbox:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)messagesSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)messagesSyncServiceServer:didRequestSendMessage:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)messagesSyncServiceServer:(void *)a1 didRequestCompactMessages:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0(&dword_25B19F000, v5, v6, "Ignoring compact request. Mailbox: %{public}@ (exists: %d)", v7, v8, v9, v10);
}

- (void)messageContentSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)accountsSyncServiceServer:(void *)a1 didChangeAccountSourceType:.cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_5() fullSyncVersion];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_5() emailAddressToken];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
}

- (void)_handleFetchRequest:(void *)a1 shouldResumeSync:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)fetchesSyncServiceServer:didRequestMoreMessagesInBatch:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchesSyncServiceServer:(void *)a1 didRequestMoreMessages:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0(&dword_25B19F000, v5, v6, "Ignoring #LOAD_MORE_MESSAGES request. Mailbox: %{public}@ (exists: %d)", v7, v8, v9, v10);
}

- (void)fetchesSyncServiceServer:(void *)a1 didRequestMoreMessagesForConversation:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)setupPairedDeviceRegistry
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyPairingForcingSync:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resendScheduler:didRequestRetrySendingAccountIdentifier:resendInterval:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_shouldHandleForwardForNotification:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_shouldHandleForwardForNotification:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fastForwardToFullSyncVersion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_checkConnectivityBasedSuspensionTimer:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_requestDelegateForMoreMessagesBeforeDateReceived:forConversationWithId:mailbox:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_requestDelegateForFirstMessagesForMailboxes:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end