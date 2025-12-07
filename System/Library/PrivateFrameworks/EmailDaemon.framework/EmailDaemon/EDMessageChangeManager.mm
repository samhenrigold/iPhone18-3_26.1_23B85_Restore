@interface EDMessageChangeManager
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_hookResponderRespondsToRequiredMethods:(id)methods;
- (BOOL)_needToStoreServerMessagesForMailboxURL:(id)l;
- (BOOL)_persistFlagChangeResults:(id)results forFlagChangeAction:(id)action;
- (BOOL)_persistResults:(id)results forFlagChangeAction:(id)action;
- (BOOL)_persistResults:(id)results forLabelChangeAction:(id)action;
- (BOOL)_persistResults:(id)results forTransferAction:(id)action;
- (BOOL)mailboxURL:(id)l isInSameAccountAsMailboxURL:(id)rL;
- (BOOL)mailboxURLIsInRemoteAccount:(id)account;
- (BOOL)persistResults:(id)results forAction:(id)action;
- (EDMessageAuthenticator)messageAuthenticator;
- (EDMessageCategorizer)messageCategorizer;
- (EDMessageChangeHookResponder)hookResponder;
- (EDMessageChangeManager)initWithDatabase:(id)database localActionPersistence:(id)persistence messagePersistence:(id)messagePersistence serverMessagePersistenceFactory:(id)factory readLaterPersistence:(id)laterPersistence categoryPersistence:(id)categoryPersistence bimiManager:(id)manager hookResponder:(id)self0 hookRegistry:(id)self1;
- (id)_applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages changeIsRemote:(BOOL)remote;
- (id)_findDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages;
- (id)_handleDuplicateServerMessage:(id)message serverMessagePersistence:(id)persistence;
- (id)_truncateReadLaterDate:(id)date;
- (id)accountForMailboxURL:(id)l;
- (id)addLabels:(id)labels removeLabels:(id)removeLabels forMessages:(id)messages;
- (id)addNewMessages:(id)messages mailboxURL:(id)l userInitiated:(BOOL)initiated;
- (id)applyFlagChange:(id)change toMessages:(id)messages;
- (id)applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages;
- (id)copyMessages:(id)messages destinationMailboxURL:(id)l userInitiated:(BOOL)initiated;
- (id)moveMessages:(id)messages destinationMailboxURL:(id)l userInitiated:(BOOL)initiated;
- (id)reflectNewMessages:(id)messages mailboxURL:(id)l;
- (id)transferMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated;
- (unint64_t)signpostID;
- (unsigned)_bucketSignatureMessageCount:(unint64_t)count;
- (void)_addLogMassDeletion:(unint64_t)deletion;
- (void)_clearFollowUpsFromThreadsForMessages:(id)messages;
- (void)_deleteDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages;
- (void)_generateFakeSummariesIfNeededForMessages:(id)messages flagChange:(id)change;
- (void)_handleFailedCopyItems:(id)items transferAction:(id)action generationWindow:(id)window;
- (void)_handleFailedDownload:(id)download generationWindow:(id)window;
- (void)_reflectFlagChanges:(id)changes messages:(id)messages remoteIDs:(id)ds mailboxURL:(id)l;
- (void)_registerStateCaptureHandler;
- (void)_resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)_resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)_storeServerMessages:(id)messages mailboxURL:(id)l generationWindow:(id)window;
- (void)applyFlagChange:(id)change toAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages;
- (void)applyFollowUp:(id)up toMessages:(id)messages withNegativeFeedbackForSuggestions:(BOOL)suggestions;
- (void)applyVIPStatus:(BOOL)status forMessages:(id)messages;
- (void)dealloc;
- (void)deleteAllMessageFromMailboxes:(id)mailboxes exceptMessages:(id)messages;
- (void)deleteLocalMessageActionsWithIDs:(id)ds;
- (void)deleteMessages:(id)messages;
- (void)didReflectNewMessages:(id)messages;
- (void)reflectAddedLabels:(id)labels removedLabels:(id)removedLabels forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)reflectAllMessagesDeletedInMailboxURL:(id)l;
- (void)reflectDeletedAllClearedMessagesInMailboxURL:(id)l;
- (void)reflectDeletedMessages:(id)messages;
- (void)reflectDeletedMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)reflectFlagChanges:(id)changes forMessages:(id)messages;
- (void)reflectFlagChanges:(id)changes forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)reflectSortedFlagChanges:(id)changes mailboxURL:(id)l;
- (void)remindMeCloudStorageChangedWithAddedOrChangedItems:(id)items deletedItems:(id)deletedItems;
- (void)test_tearDown;
- (void)transferAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated;
- (void)transferMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated oldMessagesByNewMessage:(id)message;
@end

@implementation EDMessageChangeManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EDMessageChangeManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_59 != -1)
  {
    dispatch_once(&log_onceToken_59, block);
  }

  v2 = log_log_59;

  return v2;
}

void __29__EDMessageChangeManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_59;
  log_log_59 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDMessageChangeManager_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_3 != -1)
  {
    dispatch_once(&signpostLog_onceToken_3, block);
  }

  v2 = signpostLog_log_3;

  return v2;
}

void __37__EDMessageChangeManager_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_3;
  signpostLog_log_3 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDMessageChangeManager)initWithDatabase:(id)database localActionPersistence:(id)persistence messagePersistence:(id)messagePersistence serverMessagePersistenceFactory:(id)factory readLaterPersistence:(id)laterPersistence categoryPersistence:(id)categoryPersistence bimiManager:(id)manager hookResponder:(id)self0 hookRegistry:(id)self1
{
  databaseCopy = database;
  persistenceCopy = persistence;
  messagePersistenceCopy = messagePersistence;
  factoryCopy = factory;
  laterPersistenceCopy = laterPersistence;
  managerCopy = manager;
  responderCopy = responder;
  registryCopy = registry;
  v35.receiver = self;
  v35.super_class = EDMessageChangeManager;
  v19 = [(EDMessageChangeManager *)&v35 init];
  p_isa = &v19->super.isa;
  v21 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_database, database);
    objc_storeStrong(p_isa + 9, persistence);
    objc_storeStrong(p_isa + 7, messagePersistence);
    objc_storeStrong(p_isa + 3, factory);
    objc_storeStrong(p_isa + 2, laterPersistence);
    objc_storeStrong(p_isa + 4, manager);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_UTILITY, 0);
    v24 = dispatch_queue_create("com.apple.email.EDMessageChangeManager", v23);
    markAllWorkQueue = v21->_markAllWorkQueue;
    v21->_markAllWorkQueue = v24;

    if (![(EDMessageChangeManager *)v21 _hookResponderRespondsToRequiredMethods:responderCopy])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v21 file:@"EDMessageChangeManager.m" lineNumber:130 description:@"HookResponder does not respond to all of the methods required by the EDMessageChangeManager."];
    }

    objc_storeWeak(p_isa + 8, responderCopy);
    [registryCopy registerCloudStorageChangeHookResponder:v21];
  }

  return v21;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:143 description:{@"%s can only be called from unit tests", "-[EDMessageChangeManager test_tearDown]"}];
  }

  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  dispatch_sync(markAllWorkQueue, &__block_literal_global_52);
}

- (id)moveMessages:(id)messages destinationMailboxURL:(id)l userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v19 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [messagesCopy count];
    v12 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    v15 = 134218242;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Moving %lu new messages to %{public}@", &v15, 0x16u);
  }

  v13 = [(EDMessageChangeManager *)self transferMessages:messagesCopy transferType:1 destinationMailboxURL:lCopy userInitiated:initiatedCopy];

  return v13;
}

- (id)copyMessages:(id)messages destinationMailboxURL:(id)l userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v19 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [messagesCopy count];
    v12 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    v15 = 134218242;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Copying %lu new messages to %{public}@", &v15, 0x16u);
  }

  v13 = [(EDMessageChangeManager *)self transferMessages:messagesCopy transferType:0 destinationMailboxURL:lCopy userInitiated:initiatedCopy];

  return v13;
}

- (id)transferMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  messagesCopy = messages;
  lCopy = l;
  v12 = objc_opt_new();
  [(EDMessageChangeManager *)self transferMessages:messagesCopy transferType:type destinationMailboxURL:lCopy userInitiated:initiatedCopy oldMessagesByNewMessage:v12];
  allKeys = [v12 allKeys];

  return allKeys;
}

- (void)transferMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated oldMessagesByNewMessage:(id)message
{
  initiatedCopy = initiated;
  v63 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  messageCopy = message;
  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
    v17 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 67240450;
    *&buf[4] = v16;
    LOWORD(v61) = 2114;
    *(&v61 + 2) = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerTransferMessages", "Begin transferring NumberOfMessages=%{public,signpost.telemetry:number1}u messages to destinationMailbox=%{public}@ enableTelemetry=YES ", buf, 0x12u);
  }

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceWillTransferMessages:messagesCopy transferType:type destinationMailboxURL:lCopy userInitiated:initiatedCopy];

  if (!messageCopy)
  {
    messageCopy = objc_opt_new();
  }

  v39 = [messagesCopy ef_groupBy:&__block_literal_global_40];
  setDeleted = [MEMORY[0x1E699B300] setDeleted];
  v38 = objc_opt_new();
  v21 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  *buf = 0;
  *&v61 = buf;
  *(&v61 + 1) = 0x2020000000;
  v62 = 0;
  v22 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:lCopy, v21, setDeleted];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2;
  v43[3] = &unk_1E8253B88;
  v43[4] = self;
  v23 = lCopy;
  v44 = v23;
  typeCopy = type;
  v51 = v13;
  v24 = v21;
  v45 = v24;
  v25 = messageCopy;
  v46 = v25;
  v52 = v22;
  v53 = initiatedCopy;
  v26 = setDeleted;
  v47 = v26;
  v27 = v38;
  v48 = v27;
  v49 = buf;
  [v39 enumerateKeysAndObjectsUsingBlock:v43];
  v28 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v25 count];
    v30 = [v27 count];
    *v54 = 134218496;
    typeCopy2 = type;
    v56 = 2048;
    v57 = v29;
    v58 = 2048;
    v59 = v30;
    _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Transfer messages with type %ld, oldMessagesByNewMessage:%lld deletedMessages:%lld", v54, 0x20u);
  }

  if ([v25 count])
  {
    [(EDMessageChangeManager *)self willStartPersistenceDidAddMessages:v25];
    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    allKeys = [v25 allKeys];
    [hookResponder3 persistenceDidAddMessages:allKeys generationWindow:v24];

    [(EDMessageChangeManager *)self didFinishPersistenceDidAddMessages:v25];
  }

  if ([v27 count])
  {
    hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder4 persistenceDidChangeFlags:v26 messages:v27 generationWindow:v24];
  }

  hookResponder5 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder5 persistenceDidDeleteMessages:v27 generationWindow:v24];

  hookResponder6 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder6 persistenceDidFinishUpdates];

  v36 = +[EDMessageChangeManager signpostLog];
  v37 = v36;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *v54 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v37, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerTransferMessages", "", v54, 2u);
  }

  if (-[EDMessageChangeManager mailboxIsAllMail:](self, "mailboxIsAllMail:", v23) && [messagesCopy count] >= 0xC8)
  {
    -[EDMessageChangeManager _addLogMassDeletion:](self, "_addLogMassDeletion:", -[EDMessageChangeManager _bucketSignatureMessageCount:](self, "_bucketSignatureMessageCount:", [messagesCopy count]));
  }

  _Block_object_dispose(buf, 8);
}

id __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];

  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  return v3;
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v5)
  {

    v5 = 0;
  }

  v8 = [*(a1 + 32) messagesToJournalForMessages:v6 inMailbox:v5];

  v9 = [*(a1 + 32) mailboxURL:v5 isInSameAccountAsMailboxURL:*(a1 + 40)];
  v10 = v9;
  v11 = *(a1 + 88);
  if (v11 == 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
LABEL_9:
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) mailboxIsAllMail:v5])
  {
    v11 = [*(a1 + 32) mailboxPartOfAllMail:*(a1 + 40)] ^ 1;
    goto LABEL_9;
  }

  v11 = 1;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + 88) == 1)
  {
    v11 = 0;
  }

LABEL_12:
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__22;
  v40[4] = __Block_byref_object_dispose__22;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__22;
  v38[4] = __Block_byref_object_dispose__22;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_45;
  v21[3] = &unk_1E8253B60;
  v31 = *(a1 + 96);
  v13 = v5;
  v22 = v13;
  v20 = *(a1 + 32);
  v14 = *(a1 + 48);
  v32 = v11;
  v27 = v40;
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v20;
  *(&v18 + 1) = v14;
  v23 = v18;
  v24 = v17;
  v33 = *(a1 + 104);
  v34 = v10;
  v28 = v38;
  v35 = *(a1 + 105);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v19 = *(a1 + 80);
  v29 = v36;
  v30 = v19;
  [v8 ef_enumerateObjectsInBatchesOfSize:25 block:v21];

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_45(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDMessageChangeManager signpostLog];
  v5 = v4;
  v6 = *(a1 + 120);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v3, "count")}];
    v8 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:*(a1 + 32)];
    *buf = 67109378;
    v41 = v7;
    v42 = 2114;
    v43 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_EVENT, v6, "EDMessageChangeManagerTransferMessages", "Begin Processing batch of %u messages for sourceMailboxURL %{public}@", buf, 0x12u);
  }

  v9 = [*(a1 + 40) database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager transferMessages:transferType:destinationMailboxURL:userInitiated:oldMessagesByNewMessage:]_block_invoke"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_47;
  v27[3] = &unk_1E8253B38;
  v36 = *(a1 + 120);
  v26 = *(a1 + 32);
  v11 = v26.i64[0];
  v28 = vextq_s8(v26, v26, 8uLL);
  v12 = *(a1 + 48);
  v37 = *(a1 + 128);
  v13 = *(a1 + 88);
  v29 = v12;
  v33 = v13;
  v14 = v3;
  v30 = v14;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v38 = *(a1 + 136);
  v39 = *(a1 + 137);
  v34 = *(a1 + 96);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v31 = v20;
  v32 = v19;
  v35 = *(a1 + 104);
  [v9 __performWriteWithCaller:v10 usingBlock:v27];

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    [*(a1 + 40) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 40), "mailboxDatabaseIDForURL:")}];
  }

  v21 = +[EDMessageChangeManager signpostLog];
  v22 = v21;
  v23 = *(a1 + 120);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v24 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v14, "count")}];
    v25 = *(a1 + 32);
    *buf = 67109378;
    v41 = v24;
    v42 = 2112;
    v43 = v25;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v22, OS_SIGNPOST_EVENT, v23, "EDMessageChangeManagerTransferMessages", "End Processing batch of %u messages for sourceMailboxURL %@", buf, 0x12u);
  }
}

uint64_t __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_47(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v3 = +[EDMessageChangeManager signpostLog];
  v4 = v3;
  v5 = *(a1 + 128);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v4, OS_SIGNPOST_EVENT, v5, "EDMessageChangeManagerTransferMessages", "Begin database write connection", buf, 2u);
  }

  v6 = [*(a1 + 32) mailboxURLIsInRemoteAccount:*(a1 + 40)];
  [*(a1 + 48) insertGeneration:{objc_msgSend(v53, "transactionGeneration")}];
  v7 = *(a1 + 136);
  if (v7 == 3)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_new();
    v10 = *(*(a1 + 96) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = [*(a1 + 32) persistNewMessages:*(a1 + 56) mailboxURL:*(a1 + 64) oldMessagesByNewMessage:*(*(*(a1 + 96) + 8) + 40) fromSyncing:0];
    [*(a1 + 72) addEntriesFromDictionary:*(*(*(a1 + 96) + 8) + 40)];
    v7 = *(a1 + 136);
  }

  if ((*(a1 + 144) | v6))
  {
    v51 = v8;
    v12 = 0;
    if (v7 != 3 && ((v6 ^ 1) & 1) == 0)
    {
      v12 = *(a1 + 145) ^ 1;
    }

    if (v6)
    {
      v14 = v7 == 1 || v7 == 3;
    }

    else
    {
      v14 = 0;
    }

    v48 = objc_opt_new();
    v49 = objc_opt_new();
    v15 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_48;
    aBlock[3] = &unk_1E8253AC8;
    v72 = v12 & 1;
    aBlock[4] = *(a1 + 32);
    v16 = v48;
    v69 = v16;
    v73 = *(a1 + 144);
    v70 = v49;
    v50 = v14;
    v74 = v14;
    v17 = v15;
    v18 = v70;
    v52 = v17;
    v71 = v17;
    v8 = v51;
    v19 = _Block_copy(aBlock);
    v20 = *(*(*(a1 + 96) + 8) + 40);
    if (v20)
    {
      [v20 enumerateKeysAndObjectsUsingBlock:v19];
    }

    else
    {
      v47 = v18;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v21 = *(a1 + 56);
      v22 = [v21 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v22)
      {
        v23 = *v65;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v65 != v23)
            {
              objc_enumerationMutation(v21);
            }

            (*(v19 + 2))(v19, 0, *(*(&v64 + 1) + 8 * i), 0);
          }

          v22 = [v21 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v22);
      }

      v8 = v51;
      v18 = v47;
    }

    v25 = [v16 count];
    v26 = (a1 + 40);
    if (!v25)
    {
      if ([v18 count])
      {
        if (*(a1 + 145))
        {
          v26 = (a1 + 40);
        }

        else
        {
          v26 = (a1 + 64);
        }
      }

      else
      {
        v26 = (a1 + 40);
        if (!v50)
        {
LABEL_36:
          if (*(*(*(a1 + 104) + 8) + 40))
          {
            v27 = objc_alloc(MEMORY[0x1E699B350]);
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_3;
            v54[3] = &unk_1E8253AF0;
            v55 = v16;
            v56 = v18;
            v57 = v52;
            v58 = *(a1 + 40);
            v62 = *(a1 + 144);
            v28 = *(a1 + 64);
            v29 = *(a1 + 104);
            v59 = v28;
            v60 = v29;
            v63 = *(a1 + 146);
            v61 = *(a1 + 136);
            v30 = [v27 initWithBuilder:v54];
            v31 = [*(a1 + 32) localActionPersistence];
            v8 = [v31 persistTransferAction:v30];
          }

          v7 = *(a1 + 136);
          goto LABEL_39;
        }
      }
    }

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), *v26);
    goto LABEL_36;
  }

LABEL_39:
  if (v7 == 3 || ((v32 = v7 == 1, v7 != 1) ? (v33 = 1) : (v33 = v6), (v33 & 1) == 0))
  {
    v39 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v39, OS_LOG_TYPE_DEFAULT, "Deleting the source library messages if necessary", buf, 2u);
    }

    v34 = [*(a1 + 56) ef_filter:&__block_literal_global_418];
    v40 = [*(a1 + 32) hookResponder];
    [v40 persistenceWillChangeFlags:*(a1 + 80) messages:v34];

    v41 = [*(a1 + 32) applyFlagChange:*(a1 + 80) toMessagesInDatabase:*(a1 + 56)];
    v42 = [*(a1 + 32) hookResponder];
    [v42 persistenceIsChangingFlags:*(a1 + 80) messages:v34 generationWindow:*(a1 + 48)];

    [*(a1 + 32) deletePersistedMessages:v34];
    [*(a1 + 88) addObjectsFromArray:v34];
    goto LABEL_50;
  }

  if (v32)
  {
    v34 = [*(a1 + 56) ef_filter:&__block_literal_global_418];
    v35 = [*(a1 + 32) hookResponder];
    [v35 persistenceWillChangeFlags:*(a1 + 80) messages:v34];

    v36 = [*(a1 + 32) applyFlagChange:*(a1 + 80) toMessagesInDatabase:*(a1 + 56)];
    v37 = [*(a1 + 32) hookResponder];
    [v37 persistenceIsChangingFlags:*(a1 + 80) messages:v34 generationWindow:*(a1 + 48)];

    v38 = [v34 ef_filter:&__block_literal_global_58];
    [*(a1 + 32) deletePersistedMessages:v38];
    [*(a1 + 88) addObjectsFromArray:v34];

LABEL_50:
  }

  if (v8 && (*(*(*(a1 + 112) + 8) + 24) != 1 || (*(*(*(a1 + 120) + 8) + 24) & 1) == 0) && [*(a1 + 56) ef_any:&__block_literal_global_62_0])
  {
    if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0 && *(a1 + 40))
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:?];
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }

    if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0 && *(a1 + 64))
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:?];
      *(*(*(a1 + 120) + 8) + 24) = 1;
    }
  }

  v43 = +[EDMessageChangeManager signpostLog];
  v44 = v43;
  v45 = *(a1 + 128);
  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v44, OS_SIGNPOST_EVENT, v45, "EDMessageChangeManagerTransferMessages", "End database write connection", buf, 2u);
  }

  return v8;
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E699B358]);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_50;
  v15 = &unk_1E8253AA0;
  v8 = v6;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  v10 = [v7 initWithBuilder:&v12];
  if (*(a1 + 64) == 1 && ([*(a1 + 32) haveCompleteMIMEForMessage:{v9, v12, v13, v14, v15, v16}] & 1) == 0)
  {
    v11 = 40;
    goto LABEL_8;
  }

  if (*(a1 + 65))
  {
    v11 = 48;
LABEL_8:
    [*(a1 + v11) addObject:{v10, v12, v13, v14, v15}];
    goto LABEL_9;
  }

  if (*(a1 + 66) == 1)
  {
    v11 = 56;
    goto LABEL_8;
  }

LABEL_9:
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_50(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSourceMessage:*(a1 + 32)];
  [v3 setDestinationMessage:*(a1 + 40)];
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setItemsToDownload:*(a1 + 32)];
  [v4 setItemsToCopy:*(a1 + 40)];
  [v4 setItemsToDelete:*(a1 + 48)];
  [v4 setSourceMailboxURL:*(a1 + 56)];
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  [v4 setDestinationMailboxURL:v3];
  [v4 setMailboxURL:*(*(*(a1 + 72) + 8) + 40)];
  [v4 setUserInitiated:*(a1 + 89)];
  [v4 setTransferType:*(a1 + 80)];
}

BOOL __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_55(uint64_t a1, void *a2)
{
  v2 = [a2 remoteID];
  v3 = [v2 length] != 0;

  return v3;
}

uint64_t __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_59(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3 ^ 1u;
}

- (unsigned)_bucketSignatureMessageCount:(unint64_t)count
{
  if (count <= 0x64)
  {
    v3 = 100;
  }

  else
  {
    v3 = 200;
  }

  if (count <= 0x12B)
  {
    v4 = v3;
  }

  else
  {
    v4 = 300;
  }

  if (count <= 0x1F3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 500;
  }

  if (count <= 0x3E7)
  {
    return v5;
  }

  else
  {
    return 1000;
  }
}

- (void)_addLogMassDeletion:(unint64_t)deletion
{
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v7 = *MEMORY[0x1E699ABA0];
  v8 = [em_userDefaults objectForKey:*MEMORY[0x1E699ABA0]];
  v19 = [v5 initWithArray:v8];

  if ([v19 count])
  {
    lastObject = [v19 lastObject];
    v10 = [lastObject objectForKey:*MEMORY[0x1E699ABA8]];
    if (!v10)
    {
      v11 = [lastObject objectForKey:*MEMORY[0x1E699ABB8]];

      if (v11)
      {
        goto LABEL_5;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Large Google Message Deletion: The user has selected to transfer %u messages", -[EDMessageChangeManager _bucketSignatureMessageCount:](self, "_bucketSignatureMessageCount:", deletion)];
      mEMORY[0x1E699B780] = [MEMORY[0x1E699B780] sharedReporter];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [mEMORY[0x1E699B780] reportIssueType:v18 description:v10];
    }

LABEL_5:
  }

  if ([v19 count] >= 0x1F)
  {
    [v19 removeObjectsInRange:{0, 2}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E695DF00] now];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E699ABB0]];

  [v19 addObject:v12];
  em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
  v15 = [v19 copy];
  [em_userDefaults2 setValue:v15 forKey:v7];

  [(EDMessageChangeManager *)self _registerStateCaptureHandler];
}

- (void)_registerStateCaptureHandler
{
  v3 = EFLogRegisterStateCaptureBlock();
  [(EDMessageChangeManager *)self setStateCancelable:?];
}

id __54__EDMessageChangeManager__registerStateCaptureHandler__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] em_userDefaults];
  v1 = [v0 objectForKey:*MEMORY[0x1E699ABA0]];

  return v1;
}

- (void)deleteAllMessageFromMailboxes:(id)mailboxes exceptMessages:(id)messages
{
  v12 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  messagesCopy = messages;
  v8 = [mailboxesCopy ef_map:&__block_literal_global_77_1];
  v9 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Deleting all message from %{public}@", &v10, 0xCu);
  }

  [(EDMessageChangeManager *)self transferAllMessagesFromMailboxes:mailboxesCopy exceptMessages:messagesCopy transferType:3 destinationMailboxURL:0 userInitiated:0];
}

id __71__EDMessageChangeManager_deleteAllMessageFromMailboxes_exceptMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:a2];

  return v2;
}

- (void)transferAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated
{
  v44 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  messagesCopy = messages;
  lCopy = l;
  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
    v17 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 67240450;
    v41 = v16;
    v42 = 2114;
    v43 = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerTransferAllMessages", "Begin transfer all NumberOfMessages=%{public,signpost.telemetry:number1}u messages to destinationMailbox=%{public}@ enableTelemetry=YES ", buf, 0x12u);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke;
  v36[3] = &unk_1E8253C18;
  v36[4] = self;
  typeCopy = type;
  v18 = lCopy;
  v37 = v18;
  initiatedCopy = initiated;
  v19 = [(EDMessageChangeManager *)self iterateMessagesInMailboxURLs:mailboxesCopy excludingMessages:messagesCopy batchSize:256 returnMessagesForFlagChange:0 handler:v36];
  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_3;
  block[3] = &unk_1E8251600;
  v21 = mailboxesCopy;
  typeCopy2 = type;
  v30 = v21;
  selfCopy = self;
  v22 = v18;
  v32 = v22;
  v23 = v19;
  v33 = v23;
  initiatedCopy2 = initiated;
  dispatch_sync(markAllWorkQueue, block);

  v24 = +[EDMessageChangeManager signpostLog];
  v25 = v24;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v25, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerTransferAllMessages", "", buf, 2u);
  }
}

void __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_2;
  block[3] = &unk_1E8253BF0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v10 = *(a1 + 48);
  v9 = v5;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, block);
}

void __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = *v23;
    v5 = *MEMORY[0x1E699A698];
    v15 = v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = *(a1 + 64);
        if (v8 == 1)
        {
          if ([*(a1 + 40) mailboxIsAllMail:{*(*(&v22 + 1) + 8 * i), v15}])
          {
            v8 = [*(a1 + 40) mailboxPartOfAllMail:*(a1 + 48)] ^ 1;
          }

          else
          {
            v8 = 1;
          }
        }

        [*(a1 + 40) resetStatusCountsForMailboxWithURL:{v7, v15}];
        if (*(a1 + 48))
        {
          [*(a1 + 40) resetStatusCountsForMailboxWithURL:?];
        }

        v9 = [*(a1 + 56) objectForKeyedSubscript:v7];
        v10 = [v7 ef_hasScheme:v5];
        if (v9)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11 == 1 && ([v9 isEqualToString:@"1"] & 1) == 0)
        {
          v12 = objc_alloc(MEMORY[0x1E699B370]);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v17[0] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_4;
          v17[1] = &unk_1E8253C40;
          v17[2] = v7;
          v18 = *(a1 + 48);
          v20 = v8;
          v21 = *(a1 + 72);
          v19 = v9;
          v13 = [v12 initWithBuilder:v16];
          v14 = [*(a1 + 40) localActionPersistence];
          [v14 persistTransferUndownloadedAction:v13];

          [*(a1 + 40) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 40), "mailboxDatabaseIDForURL:", v7)}];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }
}

void __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxURL:*(a1 + 32)];
  [v3 setSourceMailboxURL:*(a1 + 32)];
  [v3 setDestinationMailboxURL:*(a1 + 40)];
  [v3 setTransferType:*(a1 + 56)];
  [v3 setUserInitiated:*(a1 + 64)];
  [v3 setOldestPersistedRemoteID:*(a1 + 48)];
}

- (id)addNewMessages:(id)messages mailboxURL:(id)l userInitiated:(BOOL)initiated
{
  v39 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  v25 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v9 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [messagesCopy count];
    v11 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 134218242;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Adding %lu new messages to %{public}@", buf, 0x16u);
  }

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  LOBYTE(hookResponder) = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:lCopy];
  v13 = objc_opt_new();
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke;
  v27[3] = &unk_1E8253CE0;
  v27[4] = self;
  v15 = lCopy;
  v28 = v15;
  v16 = v13;
  v29 = v16;
  v17 = v25;
  v30 = v17;
  v18 = v14;
  v31 = v18;
  v19 = messagesCopy;
  v32 = v19;
  v33 = hookResponder;
  initiatedCopy = initiated;
  [v19 ef_enumerateObjectsInBatchesOfSize:25 block:v27];
  if ([v18 count])
  {
    [(EDMessageChangeManager *)self willStartPersistenceDidAddMessages:v16];
    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceDidAddMessages:v18 generationWindow:v17];

    [(EDMessageChangeManager *)self didFinishPersistenceDidAddMessages:v16];
  }

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];

  v22 = v32;
  v23 = v18;

  return v18;
}

void __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager addNewMessages:mailboxURL:userInitiated:]_block_invoke"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_2;
  v16 = &unk_1E8253CB8;
  v17 = *(a1 + 32);
  v6 = v3;
  v18 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v19 = v12;
  v20 = v11;
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  [v4 __performWriteWithCaller:v5 usingBlock:&v13];

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 32), "mailboxDatabaseIDForURL:", *(a1 + 40), v13, v14, v15, v16, v17, v18, v19, v20)}];
  }
}

uint64_t __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v18 = objc_opt_new();
  v3 = [*(a1 + 32) persistNewMessages:*(a1 + 40) mailboxURL:*(a1 + 48) oldMessagesByNewMessage:v18 fromSyncing:0];
  [*(a1 + 56) addEntriesFromDictionary:v18];
  v20 = [v18 allKeys];
  [*(a1 + 64) insertGeneration:{objc_msgSend(v19, "transactionGeneration")}];
  [*(a1 + 72) addObjectsFromArray:v20];
  if (v3)
  {
    if ([*(a1 + 80) ef_any:&__block_literal_global_85_0])
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:*(a1 + 48)];
    }

    if (*(a1 + 88) == 1)
    {
      v4 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = v20;
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        v7 = *v27;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v27 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v26 + 1) + 8 * i);
            v10 = objc_alloc(MEMORY[0x1E699B358]);
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_4;
            v25[3] = &unk_1E8253C68;
            v25[4] = v9;
            v11 = [v10 initWithBuilder:v25];
            [v4 addObject:v11];
          }

          v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v6);
      }

      v12 = objc_alloc(MEMORY[0x1E699B350]);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_5;
      v21[3] = &unk_1E8253C90;
      v13 = v4;
      v22 = v13;
      v23 = *(a1 + 48);
      v24 = *(a1 + 89);
      v14 = [v12 initWithBuilder:v21];
      v15 = [*(a1 + 32) localActionPersistence];
      v16 = [v15 persistTransferAction:v14];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3 ^ 1u;
}

void __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setItemsToCopy:*(a1 + 32)];
  [v3 setDestinationMailboxURL:*(a1 + 40)];
  [v3 setMailboxURL:*(a1 + 40)];
  [v3 setUserInitiated:*(a1 + 48)];
  [v3 setTransferType:2];
}

- (void)deleteMessages:(id)messages
{
  v9 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [messagesCopy count];
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Deleting %lu messages", &v7, 0xCu);
  }

  v6 = [(EDMessageChangeManager *)self transferMessages:messagesCopy transferType:3 destinationMailboxURL:0 userInitiated:0];
}

- (void)applyFlagChange:(id)change toAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages
{
  v37 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  mailboxesCopy = mailboxes;
  messagesCopy = messages;
  v26 = [mailboxesCopy ef_map:&__block_literal_global_87_0];
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [changeCopy ef_publicDescription];
    *buf = 138543618;
    *v36 = ef_publicDescription;
    *&v36[8] = 2114;
    *&v36[10] = v26;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Setting flags %{public}@ on all message for mailboxes %{public}@", buf, 0x16u);
  }

  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
    v17 = [changeCopy hash];
    *buf = 67240448;
    *v36 = v16;
    *&v36[4] = 2050;
    *&v36[6] = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerChangeFlagAllMessages", "Begin flag change NumberOfMessages=%{public,signpost.telemetry:number1}u messages to FlagChange=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x12u);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_88;
  v33[3] = &unk_1E8253D08;
  v33[4] = self;
  v18 = changeCopy;
  v34 = v18;
  v19 = [(EDMessageChangeManager *)self iterateMessagesInMailboxURLs:mailboxesCopy excludingMessages:messagesCopy batchSize:256 returnMessagesForFlagChange:v18 handler:v33];
  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_3;
  block[3] = &unk_1E8250AB8;
  v21 = mailboxesCopy;
  v29 = v21;
  v22 = v18;
  v30 = v22;
  selfCopy = self;
  v23 = v19;
  v32 = v23;
  dispatch_sync(markAllWorkQueue, block);

  v24 = +[EDMessageChangeManager signpostLog];
  v25 = v24;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v25, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerChangeFlagAllMessages", "", buf, 2u);
  }
}

id __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:a2];

  return v2;
}

void __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_2;
  block[3] = &unk_1E8250720;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_3(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = *v20;
    v5 = *MEMORY[0x1E699A698];
    v14 = v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if (([a1[5] readChanged] & 1) != 0 || objc_msgSend(a1[5], "deletedChanged"))
        {
          [a1[6] resetStatusCountsForMailboxWithURL:v7];
        }

        v8 = [a1[7] objectForKeyedSubscript:v7];
        v9 = [v7 ef_hasScheme:v5];
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1 && ([v8 isEqualToString:@"1"] & 1) == 0)
        {
          v11 = objc_alloc(MEMORY[0x1E699B280]);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v16[0] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_4;
          v16[1] = &unk_1E8253D30;
          v16[2] = v7;
          v17 = a1[5];
          v18 = v8;
          v12 = [v11 initWithBuilder:v15];
          v13 = [a1[6] localActionPersistence];
          [v13 persistFlagChangeUndownloadedAction:v12];

          [a1[6] checkForNewActionsInMailboxID:{objc_msgSend(a1[6], "mailboxDatabaseIDForURL:", v7)}];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }
}

void __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxURL:a1[4]];
  [v3 setFlagChange:a1[5]];
  [v3 setOldestPersistedRemoteID:a1[6]];
}

- (id)applyFlagChange:(id)change toMessages:(id)messages
{
  v56 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  messagesCopy = messages;
  v7 = [messagesCopy count];
  readChanged = [changeCopy readChanged];
  v9 = &stru_1F45B4608;
  if (readChanged)
  {
    v9 = @"[ReadFlags] ";
  }

  v37 = v9;
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [changeCopy ef_publicDescription];
    *buf = 138543874;
    *&buf[4] = v37;
    *&buf[12] = 2114;
    *&buf[14] = ef_publicDescription;
    *&buf[22] = 2048;
    v53 = v7;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Setting flags %{public}@ on %lu messages", buf, 0x20u);
  }

  v36 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:v7];
    v17 = [changeCopy hash];
    *buf = 67240448;
    *&buf[4] = v16;
    *&buf[8] = 2050;
    *&buf[10] = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerChangeFlagMessages", "Begin flag change NumberOfMessages=%{public,signpost.telemetry:number1}u messages to FlagChange=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x12u);
  }

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  v19 = [messagesCopy ef_filter:&__block_literal_global_93];
  v20 = [v19 ef_groupBy:&__block_literal_global_96];

  allValues = [v20 allValues];
  ef_flatten = [allValues ef_flatten];
  v23 = [ef_flatten count];

  if (v23 != v7)
  {
    v24 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageChangeManager *)v23 applyFlagChange:v7 toMessages:v24];
    }
  }

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  v26 = [messagesCopy ef_filter:&__block_literal_global_418];
  [hookResponder2 persistenceWillChangeFlags:changeCopy messages:v26];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__22;
  v54 = __Block_byref_object_dispose__22;
  array = [MEMORY[0x1E695DF70] array];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__22;
  v50 = __Block_byref_object_dispose__22;
  array2 = [MEMORY[0x1E695DF70] array];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_97;
  v40[3] = &unk_1E8253DC8;
  v40[4] = self;
  v27 = changeCopy;
  v41 = v27;
  v28 = v37;
  v42 = v28;
  v29 = v36;
  v43 = v29;
  v44 = buf;
  v45 = &v46;
  [v20 enumerateKeysAndObjectsUsingBlock:v40];
  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidChangeFlags:v27 messages:v47[5] generationWindow:v29];

  hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder4 persistenceDidFinishUpdates];

  [(EDMessageChangeManager *)self _generateFakeSummariesIfNeededForMessages:v47[5] flagChange:v27];
  v32 = +[EDMessageChangeManager signpostLog];
  v33 = v32;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *v39 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v33, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerChangeFlagMessages", "", v39, 2u);
  }

  v34 = *(*&buf[8] + 40);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(buf, 8);

  return v34;
}

BOOL __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];
  v4 = v3 != 0;

  return v4;
}

id __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];

  return v3;
}

void __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_97(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) mailboxURLIsInRemoteAccount:v5];
  v8 = [*(a1 + 32) database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager applyFlagChange:toMessages:]_block_invoke"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98;
  v13[3] = &unk_1E8253DA0;
  v10 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v10;
  v11 = v6;
  v15 = v11;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v19 = *(a1 + 64);
  v12 = v5;
  v18 = v12;
  v20 = v7;
  [v8 __performWriteWithCaller:v9 usingBlock:v13];

  if (v7)
  {
    [*(a1 + 32) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 32), "mailboxDatabaseIDForURL:", v12)}];
  }
}

uint64_t __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) applyFlagChange:*(a1 + 40) toMessagesInDatabase:*(a1 + 48)];
  v5 = [v4 count];
  if (v5 != [*(a1 + 48) count])
  {
    v6 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = [*(a1 + 48) count];
      *buf = 138543874;
      v27 = v7;
      v28 = 2048;
      v29 = v5;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Applied flag change to %lu of %lu messages", buf, 0x20u);
    }
  }

  v9 = [v4 ef_filter:&__block_literal_global_418];
  if (v5 != [v9 count])
  {
    v10 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98_cold_1(buf, [v9 count], v5, v10);
    }
  }

  [*(a1 + 64) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v4];
  [*(*(*(a1 + 88) + 8) + 40) addObjectsFromArray:v9];
  if ([v4 count])
  {
    v11 = [*(a1 + 32) hookResponder];
    [v11 persistenceIsChangingFlags:*(a1 + 40) messages:v9 generationWindow:*(a1 + 64)];

    if (([*(a1 + 40) readChanged] & 1) != 0 || objc_msgSend(*(a1 + 40), "deletedChanged"))
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:*(a1 + 72)];
    }
  }

  if (*(a1 + 96) == 1 && [v4 count])
  {
    v12 = objc_alloc(MEMORY[0x1E699B270]);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_100;
    v21 = &unk_1E8253D78;
    v13 = *(a1 + 72);
    v14 = *(a1 + 32);
    v22 = v13;
    v23 = v14;
    v24 = *(a1 + 48);
    v25 = *(a1 + 40);
    v15 = [v12 initWithBuilder:&v18];
    v16 = [*(a1 + 32) localActionPersistence];
    [v16 persistFlagChangeAction:v15];
  }

  return 1;
}

void __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_100(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setMailboxURL:*(a1 + 32)];
  v3 = [*(a1 + 40) messagesToJournalForMessages:*(a1 + 48) inMailbox:*(a1 + 32)];
  [v4 setMessages:v3];

  [v4 setFlagChange:*(a1 + 56)];
}

- (void)applyFollowUp:(id)up toMessages:(id)messages withNegativeFeedbackForSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v29 = *MEMORY[0x1E69E9840];
  upCopy = up;
  messagesCopy = messages;
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = upCopy;
    *&buf[12] = 2048;
    *&buf[14] = [messagesCopy count];
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Setting follow up dates and json data %{public}@ on %lu messages", buf, 0x16u);
  }

  v11 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  if (suggestionsCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__22;
    v27 = __Block_byref_object_dispose__22;
    serviceForMail = [MEMORY[0x1E69992A0] serviceForMail];
    [*(*&buf[8] + 40) setSyncTimeout:0.1];
    messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
    v14 = [messagePersistence retrieveFollowUpJsonStringForModelEvaluationForSuggestionsForMessages:messagesCopy];

    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__22;
    v21[4] = __Block_byref_object_dispose__22;
    v22 = 0;
    v15 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      *v23 = 134217984;
      v24 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Sending negative feedback for follow up to Suggestions for %lu messages", v23, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke;
    v20[3] = &unk_1E8253DF0;
    v20[4] = buf;
    v20[5] = v21;
    [v14 enumerateObjectsUsingBlock:v20];
    _Block_object_dispose(v21, 8);

    _Block_object_dispose(buf, 8);
  }

  messagePersistence2 = [(EDMessageChangeManager *)self messagePersistence];
  [messagePersistence2 persistFollowUp:upCopy forMessages:messagesCopy];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidUpdateFollowUpForMessages:messagesCopy generationWindow:v11];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];
}

void __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Suggestions does not respond to selector @selector(reportMailIntelligenceFollowUpUserEngagement:forStringFromFollowUpWarning:error:)", v10, 2u);
    }

    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  v4 = a1 + 40;
  v6 = *(*(*(v4 - 8) + 8) + 40);
  v7 = *(v5 + 8);
  obj = *(v7 + 40);
  v8 = [v6 reportMailIntelligenceFollowUpUserEngagement:0 forStringFromFollowUpWarning:v3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (*(*(*v4 + 8) + 40))
  {
    v9 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke_cold_1(v4, v9);
    }

LABEL_7:
  }
}

- (id)applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages
{
  v5 = [(EDMessageChangeManager *)self _applyReadLaterDate:date displayDate:displayDate toMessages:messages changeIsRemote:0];

  return v5;
}

- (id)_applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages changeIsRemote:(BOOL)remote
{
  remoteCopy = remote;
  v57 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  displayDateCopy = displayDate;
  messagesCopy = messages;
  v10 = [(EDMessageChangeManager *)self _truncateReadLaterDate:dateCopy];

  v34 = v10;
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:v10];
    v29 = v11;
  }

  else
  {
    v29 = 0;
  }

  v12 = EDRemindMeLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = displayDateCopy;
    *&buf[22] = 2048;
    v54 = [messagesCopy count];
    LOWORD(v55) = 1024;
    *(&v55 + 2) = remoteCopy;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Setting read later date=%{public}@, displayDate=%{public}@ on %lu messages, changeIsRemote:%{BOOL}d", buf, 0x26u);
  }

  v28 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  v31 = hookResponder;
  [hookResponder persistenceWillBeginUpdates];
  if ([messagesCopy count])
  {
    [hookResponder persistenceWillChangeReadLaterDate:v34 messages:messagesCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke;
  aBlock[3] = &unk_1E8251360;
  v14 = displayDateCopy;
  v52 = v14;
  v33 = _Block_copy(aBlock);
  v15 = [messagesCopy ef_filter:v33];
  if ([v15 count])
  {
    [hookResponder persistenceWillUpdateDisplayDateForMessages:v15];
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__22;
  v55 = __Block_byref_object_dispose__22;
  v56 = 0;
  database = [(EDMessageChangeManager *)self database];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _applyReadLaterDate:displayDate:toMessages:changeIsRemote:]"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke_2;
  v36[3] = &unk_1E8253E18;
  v45 = &v47;
  v18 = v28;
  v37 = v18;
  v19 = messagesCopy;
  v38 = v19;
  v20 = v29;
  v39 = v20;
  v21 = v33;
  v44 = v21;
  v22 = v34;
  v40 = v22;
  selfCopy = self;
  v23 = v14;
  v42 = v23;
  v24 = v31;
  v43 = v24;
  v46 = buf;
  [database __performWriteWithCaller:v17 usingBlock:v36];

  if ([v19 count])
  {
    [v24 persistenceDidChangeReadLaterDate:v22 messages:*(*&buf[8] + 40) changeIsRemote:remoteCopy generationWindow:v18];
  }

  if ([v15 count])
  {
    [v24 persistenceDidUpdateDisplayDateForMessages:v15 changeIsRemote:remoteCopy generation:v48[3]];
  }

  [v24 persistenceDidFinishUpdates];
  v25 = *(*&buf[8] + 40);
  if (!v25)
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  v26 = v25;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v47, 8);

  return v26;
}

uint64_t __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 displayDate];
    v6 = [v5 isEqualToDate:*(a1 + 32)];
  }

  else
  {
    v5 = [v3 dateReceived];
    v7 = [v4 displayDate];
    v6 = [v5 isEqualToDate:v7];
  }

  return v6 ^ 1u;
}

uint64_t __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 96) + 8) + 24) = [v3 transactionGeneration];
  [*(a1 + 32) insertGeneration:*(*(*(a1 + 96) + 8) + 24)];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        [v8 setReadLater:{*(a1 + 48), v17}];
        v9 = [v8 displayDate];
        v10 = (*(*(a1 + 88) + 16))();
        v11 = *(a1 + 64);
        if (*(a1 + 56))
        {
          v12 = [v11 readLaterPersistence];
          [v12 persistReadLaterForMessage:v8 date:*(a1 + 56) displayDate:*(a1 + 72)];
        }

        else
        {
          v12 = [v11 readLaterPersistence];
          [v12 removeReadLaterForMessage:v8];
        }

        if (v10)
        {
          [*(a1 + 80) persistenceIsUpdatingDisplayDateForMessage:v8 fromDate:v9 generation:*(*(*(a1 + 96) + 8) + 24)];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 40) copy];
  v14 = *(*(a1 + 104) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  return 1;
}

- (id)_truncateReadLaterDate:(id)date
{
  dateCopy = date;
  ef_dateWithTruncatedSeconds = [dateCopy ef_dateWithTruncatedSeconds];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [ef_dateWithTruncatedSeconds ef_isLaterThanOrEqualDate:v5];

  v7 = ef_dateWithTruncatedSeconds;
  if ((v6 & 1) == 0)
  {
    v8 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(EDMessageChangeManager *)ef_dateWithTruncatedSeconds _truncateReadLaterDate:dateCopy, v8];
    }

    v7 = dateCopy;
  }

  v9 = v7;

  return v7;
}

- (void)applyVIPStatus:(BOOL)status forMessages:(id)messages
{
  statusCopy = status;
  messagesCopy = messages;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  [(EDMessageChangeManager *)self applyVIPStatus:statusCopy toMessagesInDatabase:messagesCopy];
  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidChangeVIPStatus:statusCopy messages:messagesCopy];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];
}

- (id)addLabels:(id)labels removeLabels:(id)removeLabels forMessages:(id)messages
{
  labelsCopy = labels;
  removeLabelsCopy = removeLabels;
  messagesCopy = messages;
  v26 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  v13 = [messagesCopy ef_filter:&__block_literal_global_418];
  [hookResponder2 persistenceWillAddLabels:labelsCopy removeLabels:removeLabelsCopy messages:v13];

  v14 = [messagesCopy ef_groupBy:&__block_literal_global_108_0];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_2;
  v27[3] = &unk_1E8253E90;
  v27[4] = self;
  v16 = labelsCopy;
  v28 = v16;
  v17 = removeLabelsCopy;
  v29 = v17;
  v18 = v26;
  v30 = v18;
  v19 = v15;
  v31 = v19;
  [v14 enumerateKeysAndObjectsUsingBlock:v27];
  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  v21 = [v19 ef_filter:&__block_literal_global_418];
  [hookResponder3 persistenceDidAddLabels:v16 removeLabels:v17 messages:v21 generationWindow:v18];

  hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder4 persistenceDidFinishUpdates];

  v23 = v31;
  v24 = v19;

  return v19;
}

id __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];

  return v3;
}

void __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) mailboxURLIsInRemoteAccount:v5];
  v8 = [*(a1 + 32) database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager addLabels:removeLabels:forMessages:]_block_invoke_2"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_3;
  v16 = &unk_1E8253E68;
  v10 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v10;
  v19 = *(a1 + 48);
  v11 = v6;
  v20 = v11;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v24 = v7;
  v12 = v5;
  v23 = v12;
  [v8 __performWriteWithCaller:v9 usingBlock:&v13];

  if (v7)
  {
    [*(a1 + 32) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 32), "mailboxDatabaseIDForURL:", v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22)}];
  }
}

uint64_t __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) addLabels:*(a1 + 40) removeLabels:*(a1 + 48) toMessagesInDatabase:*(a1 + 56)];
  [*(a1 + 64) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 72) addObjectsFromArray:v4];
  if (*(a1 + 88) == 1 && [*(a1 + 72) count])
  {
    v5 = objc_alloc(MEMORY[0x1E699B2C0]);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_4;
    v16 = &unk_1E8253E40;
    v17 = *(a1 + 80);
    v18 = v4;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v6 = [v5 initWithBuilder:&v13];
    v7 = [*(a1 + 32) localActionPersistence];
    [v7 persistLabelChangeAction:v6];
  }

  v8 = [*(a1 + 32) hookResponder];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [v4 ef_filter:&__block_literal_global_418];
  [v8 persistenceIsAddingLabels:v9 removingLabels:v10 messages:v11];

  return 1;
}

void __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxURL:a1[4]];
  [v3 setMessages:a1[5]];
  [v3 setLabelsToAdd:a1[6]];
  [v3 setLabelsToRemove:a1[7]];
}

- (id)reflectNewMessages:(id)messages mailboxURL:(id)l
{
  v65 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  v7 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [messagesCopy count];
    v9 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 134218242;
    v59 = v8;
    v60 = 2114;
    v61 = v9;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Adding %lu new messages from server sync to %{public}@", buf, 0x16u);
  }

  if ([messagesCopy count])
  {
    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceWillAddNewMessages:messagesCopy];
  }

  v38 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v42 = objc_opt_new();
  if ([(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:lCopy])
  {
    v11 = objc_opt_new();
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke;
    v51[3] = &unk_1E8253FA8;
    v51[4] = self;
    v52 = v38;
    v53 = lCopy;
    v54 = v42;
    v12 = v11;
    v55 = v12;
    [messagesCopy ef_enumerateObjectsInBatchesOfSize:256 block:v51];
    v13 = v55;
    allKeys = v12;
  }

  else
  {
    [(EDMessageChangeManager *)self persistNewMessages:messagesCopy mailboxURL:lCopy oldMessagesByNewMessage:v42 fromSyncing:1];
    allKeys = [v42 allKeys];
  }

  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_117;
  block[3] = &unk_1E8250128;
  block[4] = self;
  v16 = allKeys;
  v50 = v16;
  dispatch_async(markAllWorkQueue, block);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v45 objects:v64 count:16];
  if (v17)
  {
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        readLaterPersistence = [(EDMessageChangeManager *)self readLaterPersistence];
        v44 = 0;
        v23 = [readLaterPersistence cloudStorageReadLaterDateForMessage:v20 displayDate:&v44];
        v24 = v44;

        if (v23 | v24)
        {
          v26 = EDRemindMeLog(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            messageIDHeaderHash = [v20 messageIDHeaderHash];
            int64Value = [messageIDHeaderHash int64Value];
            *buf = 134218498;
            v59 = int64Value;
            v60 = 2114;
            v61 = v23;
            v62 = 2114;
            v63 = v24;
            _os_log_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEFAULT, "Applying to downloaded message: %lld readLaterDate:%{public}@ displayDate:%{public}@", buf, 0x20u);
          }

          if (v23)
          {
            v57 = v20;
            messagePersistence = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
            v30 = [(EDMessageChangeManager *)self _applyReadLaterDate:v23 displayDate:v24 toMessages:messagePersistence changeIsRemote:1];
          }

          else
          {
            if (!v24)
            {
              goto LABEL_21;
            }

            messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
            v56 = v20;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
            [messagePersistence updateDisplayDateForPersistedMessages:v31 displayDate:v24 changeIsRemote:1];
          }
        }

LABEL_21:

        objc_autoreleasePoolPop(v21);
      }

      v17 = [obj countByEnumeratingWithState:&v45 objects:v64 count:16];
    }

    while (v17);
  }

  if ([v42 count] && objc_msgSend(obj, "count"))
  {
    [(EDMessageChangeManager *)self willStartPersistenceDidAddMessages:v42];
    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder3 persistenceDidAddMessages:obj generationWindow:v39];

    [(EDMessageChangeManager *)self didFinishPersistenceDidAddMessages:v42];
    [(EDMessageChangeManager *)self didReflectNewMessages:obj];
    hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder4 persistenceDidAddNewMessages:v42];
  }

  hookResponder5 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder5 persistenceDidFinishUpdates];

  [(EDMessageChangeManager *)self _generateFakeSummariesIfNeededForMessages:obj flagChange:0];
  v35 = v50;
  v36 = obj;

  return obj;
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectNewMessages:mailboxURL:]_block_invoke"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_2;
  v9[3] = &unk_1E8253F80;
  v6 = a1[5];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  v8 = v3;
  v12 = v8;
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  [v4 __performWriteWithCaller:v5 usingBlock:v9];
}

uint64_t __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v40 = objc_opt_new();
  [*(a1 + 32) insertGeneration:{objc_msgSend(v39, "transactionGeneration")}];
  v3 = [*(a1 + 40) persistNewMessages:*(a1 + 48) mailboxURL:*(a1 + 56) oldMessagesByNewMessage:v40 fromSyncing:1];
  [*(a1 + 64) addEntriesFromDictionary:v40];
  v43 = a1;
  if (v3)
  {
    v4 = [*(a1 + 40) bimiManager];
    v5 = *(a1 + 48);
    v63 = 0;
    v6 = [v4 processBIMIHeadersForMessages:v5 evidenceAndMessagesNeedingVerification:&v63];
    v7 = v63;

    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    v9 = [v6 allValues];
    v10 = [v9 ef_flatten];
    v11 = [v8 initWithArray:v10];

    v12 = [v7 allValues];
    v13 = [v12 ef_flatten];
    [v11 addObjectsFromArray:v13];

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_3;
    v60[3] = &unk_1E8253EB8;
    v15 = v11;
    v61 = v15;
    v16 = v14;
    v62 = v16;
    [v40 enumerateKeysAndObjectsUsingBlock:v60];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_4;
    aBlock[3] = &unk_1E8253EE0;
    v17 = v16;
    v59 = v17;
    v18 = _Block_copy(aBlock);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_5;
    v56[3] = &unk_1E8253F08;
    v19 = v18;
    v56[4] = *(v43 + 40);
    v57 = v19;
    [v6 enumerateKeysAndObjectsUsingBlock:v56];
    if ([v7 count])
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_6;
      v54[3] = &unk_1E8253F08;
      v20 = v19;
      v54[4] = *(v43 + 40);
      v55 = v20;
      [v7 enumerateKeysAndObjectsUsingBlock:v54];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_7;
      v53[3] = &unk_1E8253F30;
      v53[4] = *(v43 + 40);
      [v39 performBlockAfterTransaction:v53];
    }

    a1 = v43;
  }

  v21 = [*(a1 + 40) serverMessagePersistenceFactory];
  v45 = [v21 serverMessagePersistenceForMailboxURL:*(a1 + 56)];

  v41 = objc_opt_new();
  v42 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = [v40 allKeys];
  obj = v22;
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (v23)
  {
    v25 = *v50;
    *&v24 = 138543618;
    v38 = v24;
LABEL_7:
    v26 = 0;
    while (1)
    {
      if (*v50 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v49 + 1) + 8 * v26);
      v28 = objc_alloc(MEMORY[0x1E699B320]);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_8;
      v47[3] = &unk_1E8253F58;
      v47[4] = v27;
      v29 = v45;
      v48 = v29;
      v30 = [v28 initWithIMAPServerMessageBuilder:v47];
      v46 = 0;
      [v29 addServerMessage:v30 invalidMessage:&v46 + 1 duplicateRemoteID:&v46];
      v31 = HIBYTE(v46);
      if (HIBYTE(v46) == 1)
      {
        v32 = +[EDMessageChangeManager log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:*(v43 + 56)];
          buf = v38;
          v65 = v27;
          v66 = 2114;
          v67 = v33;
          _os_log_error_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_ERROR, "Invalid added message %{public}@ in mailbox %{public}@.", &buf, 0x16u);
        }
      }

      else
      {
        if (v46 != 1)
        {
          [v42 addObject:v27];
          goto LABEL_17;
        }

        v34 = *(v43 + 40);
        v35 = [v27 persistentID];
        v32 = [v34 messageForDatabaseID:{objc_msgSend(v35, "longLongValue")}];

        [v41 addObject:v32];
      }

LABEL_17:
      if (v31)
      {

        v36 = 0;
        goto LABEL_26;
      }

      if (v23 == ++v26)
      {
        v22 = obj;
        v23 = [obj countByEnumeratingWithState:&v49 objects:v68 count:16];
        if (v23)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if ([v41 count])
  {
    [*(v43 + 40) deletePersistedMessages:v41];
  }

  if ([v42 count])
  {
    [*(v43 + 72) addObjectsFromArray:v42];
  }

  v36 = 1;
LABEL_26:

  return v36;
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
    [*(a1 + 32) removeObject:v7];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

id __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 ef_compactMap:*(a1 + 40)];
  v6 = [*(a1 + 32) messagePersistence];
  [v6 setBrandIndicatorForMessages:v5 fromPersistedBIMIInfo:v7];
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 ef_compactMap:*(a1 + 40)];
  v6 = [*(a1 + 32) messagePersistence];
  [v6 addMessagesToVerify:v5 forBrandIndicatorEvidenceDatabaseID:{objc_msgSend(v7, "evidenceDatabaseID")}];
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) bimiManager];
  [v1 downloadAndVerifyIndicatorsIfNeeded];
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) remoteID];
  [v7 setImapUID:uidFromString(v3)];

  v4 = [*(a1 + 32) persistentID];
  [v7 setMessagePersistentID:v4];

  v5 = [*(a1 + 32) flags];
  [v7 setServerFlags:v5];

  if ([*(a1 + 40) supportsLabels])
  {
    v6 = [*(a1 + 32) labels];
    [v7 setLabels:v6];
  }
}

- (void)_generateFakeSummariesIfNeededForMessages:(id)messages flagChange:(id)change
{
  messagesCopy = messages;
  changeCopy = change;
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:50] && (!changeCopy || objc_msgSend(changeCopy, "flaggedChanged")))
  {
    v8 = dispatch_time(0, 3000000000);
    markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__EDMessageChangeManager__generateFakeSummariesIfNeededForMessages_flagChange___block_invoke;
    v10[3] = &unk_1E8250128;
    v11 = messagesCopy;
    selfCopy = self;
    dispatch_after(v8, markAllWorkQueue, v10);
  }
}

void __79__EDMessageChangeManager__generateFakeSummariesIfNeededForMessages_flagChange___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v1)
  {
    v2 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v26 + 1) + 8 * v3);
        v5 = objc_alloc(MEMORY[0x1E696AAB0]);
        v6 = MEMORY[0x1E696AEC0];
        v7 = [v4 subject];
        v8 = [v7 subjectString];
        v9 = [v6 stringWithFormat:@"Top line summary for %@", v8];
        v10 = [v5 initWithString:v9];

        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v4 subject];
        v14 = [v13 subjectString];
        v15 = [v12 stringWithFormat:@"Synopsis for %@", v14];
        v16 = [v11 initWithString:v15];

        v17 = [v4 subject];
        v18 = [v17 subjectString];
        if ([v18 hasPrefix:@"Urgent"])
        {
          v19 = 1;
        }

        else
        {
          v20 = [v4 flags];
          v19 = [v20 flagged];
        }

        v21 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:{objc_msgSend(v4, "globalMessageID")}];
        v22 = [objc_alloc(MEMORY[0x1E699ACB8]) initWithTopLine:v10 synopsis:v16 urgent:v19 messageItemID:v21];
        v23 = [*(a1 + 40) messagePersistence];
        [v23 setGeneratedSummary:v22 forPersistedMessage:v4 forceUpdateUrgent:1];

        ++v3;
      }

      while (v1 != v3);
      v1 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v1);
  }
}

- (void)didReflectNewMessages:(id)messages
{
  v27[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = [messagesCopy ef_filter:&__block_literal_global_133];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    mailbox = [v6 mailbox];

    v7 = objc_alloc(MEMORY[0x1E699AD20]);
    v8 = [mailbox URL];
    v9 = [v7 initWithURL:v8];

    v10 = MEMORY[0x1E699AD28];
    v27[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v12 = [v10 mailboxScopeForMailboxObjectIDs:v11 forExclusion:0];

    messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
    v14 = [messagePersistence messagesForPersistedMessages:v5 mailboxScope:v12];

    v15 = [v14 ef_compactMap:&__block_literal_global_138];
    keyPathForRecentEmails = [MEMORY[0x1E6997A68] keyPathForRecentEmails];
    v17 = [v15 copy];
    userContext = [MEMORY[0x1E6997A60] userContext];
    [userContext setObject:v17 forKeyedSubscript:keyPathForRecentEmails];

    v19 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v14 count];
      ef_publicDescription = [v9 ef_publicDescription];
      *buf = 134218242;
      v24 = v20;
      v25 = 2114;
      v26 = ef_publicDescription;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Notifying CoreDuet about %lu new messages in %{public}@", buf, 0x16u);
    }
  }
}

BOOL __48__EDMessageChangeManager_didReflectNewMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 type] == 7;

  return v3;
}

id __48__EDMessageChangeManager_didReflectNewMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v2 objectID];
  v5 = [v4 serializedRepresentation];
  v6 = [MEMORY[0x1E6997A68] identifierKey];
  [v3 setObject:v5 forKeyedSubscript:v6];

  v7 = [MEMORY[0x1E6997A68] incomingKey];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];

  v8 = [v2 subject];
  v9 = [v8 subjectWithoutPrefix];
  v10 = [MEMORY[0x1E6997A68] subjectKey];
  [v3 setObject:v9 forKeyedSubscript:v10];

  v11 = [v2 senderAddress];
  v12 = [v11 emailAddressValue];
  v13 = [v12 simpleAddress];
  v14 = [MEMORY[0x1E6997A68] senderKey];
  [v3 setObject:v13 forKeyedSubscript:v14];

  v15 = [v2 toList];
  v16 = [v15 ef_compactMap:&__block_literal_global_145_0];
  v30[0] = v16;
  v17 = [v2 ccList];
  v18 = [v17 ef_compactMap:&__block_literal_global_145_0];
  v30[1] = v18;
  v19 = [v2 bccList];
  v20 = [v19 ef_compactMap:&__block_literal_global_145_0];
  v30[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v22 = [v21 ef_uniquifyWithComparator:&__block_literal_global_148_0];

  v23 = [MEMORY[0x1E6997A68] recipientsKey];
  [v3 setObject:v22 forKeyedSubscript:v23];

  v24 = [v2 mailboxes];
  v25 = [v24 firstObject];
  v26 = [v25 accountIdentifier];
  v27 = [v26 representedObjectID];
  v28 = [MEMORY[0x1E6997A68] accountIdentifierKey];
  [v3 setObject:v27 forKeyedSubscript:v28];

  return v3;
}

id __48__EDMessageChangeManager_didReflectNewMessages___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 simpleAddress];

  return v3;
}

- (void)reflectDeletedMessages:(id)messages
{
  messagesCopy = messages;
  firstObject = [messagesCopy firstObject];
  mailbox = [firstObject mailbox];
  v8 = [mailbox URL];
  v9 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:v8];

  if (v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:1058 description:@"Calling reflectFlagChanges:forMessages: on IMAP"];
  }

  v10 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  database = [(EDMessageChangeManager *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectDeletedMessages:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__EDMessageChangeManager_reflectDeletedMessages___block_invoke;
  v19[3] = &unk_1E8250440;
  v14 = v10;
  v20 = v14;
  selfCopy = self;
  v15 = messagesCopy;
  v22 = v15;
  [database __performWriteWithCaller:v13 usingBlock:v19];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidDeleteMessages:v15 generationWindow:v14];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];
}

uint64_t __49__EDMessageChangeManager_reflectDeletedMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) deletePersistedMessages:*(a1 + 48)];

  return 1;
}

- (void)reflectDeletedMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  dsCopy = ds;
  lCopy = l;
  v8 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  v10 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:lCopy];
  v11 = v10;
  if (v10)
  {
    serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
    v13 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];
  }

  else
  {
    v13 = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v18[3] = &unk_1E8254038;
  v18[4] = self;
  v14 = lCopy;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  v22 = v11;
  v16 = v13;
  v21 = v16;
  [dsCopy ef_enumerateObjectsInBatchesOfSize:25 block:v18];
  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidFinishUpdates];
}

void __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22;
  v20 = __Block_byref_object_dispose__22;
  v21 = 0;
  v4 = [*(a1 + 32) database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectDeletedMessagesWithRemoteIDs:mailboxURL:]_block_invoke"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke_2;
  v9[3] = &unk_1E8254010;
  v6 = *(a1 + 32);
  v14 = &v16;
  v9[4] = v6;
  v7 = v3;
  v10 = v7;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = *(a1 + 64);
  v13 = *(a1 + 56);
  [v4 __performWriteWithCaller:v5 usingBlock:v9];

  v8 = [*(a1 + 32) hookResponder];
  [v8 persistenceDidDeleteMessages:v17[5] generationWindow:*(a1 + 48)];

  _Block_object_dispose(&v16, 8);
}

uint64_t __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) messagesForRemoteIDs:*(a1 + 40) mailboxURL:*(a1 + 48)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 56) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 32) deletePersistedMessages:*(*(*(a1 + 72) + 8) + 40)];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 64) deleteServerMessagesWithRemoteIDs:*(a1 + 40)];
  }

  return 1;
}

- (void)reflectAllMessagesDeletedInMailboxURL:(id)l
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (![(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:?])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:1105 description:@"Reflect all deleted server messages for a data source without server messages"];
  }

  v29 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v30 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  while (1)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{1, 0xFFFFFFFFLL}];
    v8 = [v30 serverMessagesForIMAPUIDs:v7 limit:25 returnLastEntries:0];

    if (![v8 count])
    {
      break;
    }

    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v12)
    {
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          remoteID = [v15 remoteID];
          [v9 addObject:remoteID];

          messagePersistentID = [v15 messagePersistentID];

          if (messagePersistentID)
          {
            messagePersistentID2 = [v15 messagePersistentID];
            v19 = -[EDMessageChangeManager messageForDatabaseID:](self, "messageForDatabaseID:", [messagePersistentID2 longLongValue]);
            [v10 addObject:v19];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    database = [(EDMessageChangeManager *)self database];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectAllMessagesDeletedInMailboxURL:]"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __64__EDMessageChangeManager_reflectAllMessagesDeletedInMailboxURL___block_invoke;
    v31[3] = &unk_1E8254060;
    v22 = v29;
    v32 = v22;
    v33 = v30;
    v23 = v9;
    v34 = v23;
    selfCopy = self;
    v24 = v10;
    v36 = v24;
    [database __performWriteWithCaller:v21 usingBlock:v31];

    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceDidDeleteMessages:v24 generationWindow:v22];
  }

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];
}

uint64_t __64__EDMessageChangeManager_reflectAllMessagesDeletedInMailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) deleteServerMessagesWithRemoteIDs:*(a1 + 48)];
  [*(a1 + 56) deletePersistedMessages:*(a1 + 64)];

  return 1;
}

- (void)reflectDeletedAllClearedMessagesInMailboxURL:(id)l
{
  lCopy = l;
  if ([(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:?])
  {
    v21 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceWillBeginUpdates];

    serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
    v6 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

    v7 = MEMORY[0x1E695DF70];
    deleteAllClearedUIDMessages = [v6 deleteAllClearedUIDMessages];
    v9 = [v7 arrayWithArray:deleteAllClearedUIDMessages];

    while ([v9 count])
    {
      v10 = [v9 count];
      if (v10 >= 0xC8)
      {
        v11 = 200;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 subarrayWithRange:{0, v11}];
      [v9 removeObjectsInRange:{0, v11}];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke;
      v26[3] = &unk_1E8254088;
      v26[4] = self;
      v13 = [v12 ef_compactMap:v26];
      database = [(EDMessageChangeManager *)self database];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectDeletedAllClearedMessagesInMailboxURL:]"];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke_2;
      v22[3] = &unk_1E8250440;
      v16 = v21;
      v23 = v16;
      selfCopy = self;
      v17 = v13;
      v25 = v17;
      [database __performWriteWithCaller:v15 usingBlock:v22];

      hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
      [hookResponder2 persistenceDidDeleteMessages:v17 generationWindow:v16];
    }

    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder3 persistenceDidFinishUpdates];
  }
}

id __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 longLongValue];
  if (v4)
  {
    v5 = [*(a1 + 32) messageForDatabaseID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) deletePersistedMessages:*(a1 + 48)];

  return 1;
}

- (void)reflectFlagChanges:(id)changes forMessages:(id)messages
{
  changesCopy = changes;
  messagesCopy = messages;
  firstObject = [messagesCopy firstObject];
  mailbox = [firstObject mailbox];
  v10 = [mailbox URL];
  v11 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:v10];

  if (v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:1175 description:@"Calling reflectFlagChanges:forMessages: on IMAP"];
  }

  [(EDMessageChangeManager *)self _reflectFlagChanges:changesCopy messages:messagesCopy remoteIDs:0 mailboxURL:0];
}

- (void)reflectFlagChanges:(id)changes forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  changesCopy = changes;
  dsCopy = ds;
  lCopy = l;
  v10 = [(EDMessageChangeManager *)self messagesForRemoteIDs:dsCopy mailboxURL:lCopy];
  [(EDMessageChangeManager *)self _reflectFlagChanges:changesCopy messages:v10 remoteIDs:dsCopy mailboxURL:lCopy];
}

- (void)_reflectFlagChanges:(id)changes messages:(id)messages remoteIDs:(id)ds mailboxURL:(id)l
{
  changesCopy = changes;
  messagesCopy = messages;
  dsCopy = ds;
  lCopy = l;
  v14 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  if ([messagesCopy count])
  {
    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceWillChangeFlags:changesCopy messages:messagesCopy];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__22;
  v38 = __Block_byref_object_dispose__22;
  v39 = 0;
  database = [(EDMessageChangeManager *)self database];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _reflectFlagChanges:messages:remoteIDs:mailboxURL:]"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__EDMessageChangeManager__reflectFlagChanges_messages_remoteIDs_mailboxURL___block_invoke;
  v26[3] = &unk_1E82540B0;
  v19 = v14;
  v27 = v19;
  selfCopy = self;
  v20 = lCopy;
  v29 = v20;
  v21 = dsCopy;
  v30 = v21;
  v22 = changesCopy;
  v31 = v22;
  v23 = messagesCopy;
  v32 = v23;
  v33 = &v34;
  [database __performWriteWithCaller:v18 usingBlock:v26];

  if ([v23 count])
  {
    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder3 persistenceDidChangeFlags:v22 messages:v35[5] generationWindow:v19];
  }

  hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder4 persistenceDidFinishUpdates];

  _Block_object_dispose(&v34, 8);
}

uint64_t __76__EDMessageChangeManager__reflectFlagChanges_messages_remoteIDs_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if ([*(a1 + 40) _needToStoreServerMessagesForMailboxURL:*(a1 + 48)] && objc_msgSend(*(a1 + 56), "count"))
  {
    v4 = [*(a1 + 40) serverMessagePersistenceFactory];
    v5 = [v4 serverMessagePersistenceForMailboxURL:*(a1 + 48)];

    [v5 applyFlagChange:*(a1 + 64) toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  if ([*(a1 + 72) count])
  {
    v6 = [*(a1 + 40) applyFlagChange:*(a1 + 64) toMessagesInDatabase:*(a1 + 72)];
    v7 = *(*(a1 + 80) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if ([*(*(*(a1 + 80) + 8) + 40) count])
    {
      v9 = [*(a1 + 40) hookResponder];
      [v9 persistenceIsChangingFlags:*(a1 + 64) messages:*(*(*(a1 + 80) + 8) + 40) generationWindow:*(a1 + 32)];
    }
  }

  return 1;
}

- (void)reflectSortedFlagChanges:(id)changes mailboxURL:(id)l
{
  v47 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  lCopy = l;
  v5 = [changesCopy count];
  if (lCopy && v5)
  {
    v28 = changesCopy;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v28;
    v7 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v7)
    {
      v8 = *v42;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v42 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v41 + 1) + 8 * i);
          first = [v10 first];
          unsignedIntegerValue = [first unsignedIntegerValue];

          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __groupFlagChangesByChange_block_invoke;
          v40[3] = &unk_1E82542D0;
          v40[4] = v10;
          v13 = [v6 indexOfObjectPassingTest:v40];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = MEMORY[0x1E699B848];
            v15 = [MEMORY[0x1E696AD50] indexSetWithIndex:unsignedIntegerValue];
            second = [v10 second];
            v17 = [v14 pairWithFirst:v15 second:second];
            [v6 addObject:v17];
          }

          else
          {
            v15 = [v6 objectAtIndexedSubscript:v13];
            second = [v15 first];
            [second addIndex:unsignedIntegerValue];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v7);
    }

    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obja = v6;
    v18 = [obja countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v18)
    {
      v19 = *v37;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(*(&v36 + 1) + 8 * j);
          v22 = MEMORY[0x1E695DF70];
          first2 = [v21 first];
          v24 = [v22 arrayWithCapacity:{objc_msgSend(first2, "count")}];

          first3 = [v21 first];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __62__EDMessageChangeManager_reflectSortedFlagChanges_mailboxURL___block_invoke;
          v34[3] = &unk_1E82540D8;
          v26 = v24;
          v35 = v26;
          [first3 enumerateIndexesUsingBlock:v34];

          second2 = [v21 second];
          [(EDMessageChangeManager *)self reflectFlagChanges:second2 forMessagesWithRemoteIDs:v26 mailboxURL:lCopy];
        }

        v18 = [obja countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v18);
    }
  }
}

void __62__EDMessageChangeManager_reflectSortedFlagChanges_mailboxURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
  [v2 addObject:?];
}

- (void)reflectAddedLabels:(id)labels removedLabels:(id)removedLabels forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  labelsCopy = labels;
  removedLabelsCopy = removedLabels;
  dsCopy = ds;
  lCopy = l;
  v30 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v14 = [(EDMessageChangeManager *)self hookResponder:lCopy];
  [v14 persistenceWillBeginUpdates];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__22;
  v54 = __Block_byref_object_dispose__22;
  v55 = 0;
  database = [(EDMessageChangeManager *)self database];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectAddedLabels:removedLabels:forMessagesWithRemoteIDs:mailboxURL:]"];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v46[3] = &unk_1E8254100;
  v49 = &v50;
  v46[4] = self;
  v17 = dsCopy;
  v47 = v17;
  v18 = lCopy;
  v48 = v18;
  [database __performReadWithCaller:v16 usingBlock:v46];

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillAddLabels:labelsCopy removeLabels:removedLabelsCopy messages:v51[5]];

  v20 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:v18];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__22;
  v44 = __Block_byref_object_dispose__22;
  v45 = 0;
  database2 = [(EDMessageChangeManager *)self database];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectAddedLabels:removedLabels:forMessagesWithRemoteIDs:mailboxURL:]"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke_2;
  v31[3] = &unk_1E8254128;
  v23 = v30;
  v39 = v20;
  v32 = v23;
  selfCopy = self;
  v24 = v18;
  v34 = v24;
  v25 = labelsCopy;
  v35 = v25;
  v26 = removedLabelsCopy;
  v36 = v26;
  v27 = v17;
  v37 = v27;
  v38 = &v40;
  [database2 __performWriteWithCaller:v22 usingBlock:v31];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidAddLabels:v25 removeLabels:v26 messages:v41[5] generationWindow:v23];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v50, 8);
}

uint64_t __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesForRemoteIDs:*(a1 + 40) mailboxURL:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

uint64_t __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if (*(a1 + 88) == 1)
  {
    v4 = [*(a1 + 40) serverMessagePersistenceFactory];
    v5 = [v4 serverMessagePersistenceForMailboxURL:*(a1 + 48)];

    [v5 addLabels:*(a1 + 56) removeLabels:*(a1 + 64) toMessagesWithRemoteIDs:*(a1 + 72)];
  }

  v6 = [*(a1 + 40) messagesForRemoteIDs:*(a1 + 72) mailboxURL:*(a1 + 48)];
  v7 = *(*(a1 + 80) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 40) addLabels:*(a1 + 56) removeLabels:*(a1 + 64) toMessagesInDatabase:*(*(*(a1 + 80) + 8) + 40)];
  return 1;
}

- (BOOL)persistResults:(id)results forAction:(id)action
{
  resultsCopy = results;
  actionCopy = action;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EDMessageChangeManager *)self _persistResults:resultsCopy forFlagChangeAction:actionCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_10;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_7;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_10:
          localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
          persistentID = [actionCopy persistentID];
          [localActionPersistence removeMessageAction:{objc_msgSend(persistentID, "databaseID")}];

          v9 = 0;
        }

        else
        {
          localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
          v9 = [localActionPersistence updateTransferUndownloadedMessageAction:actionCopy withResults:resultsCopy];
        }

        goto LABEL_8;
      }

      [(EDMessageChangeManager *)self _persistResults:resultsCopy forLabelChangeAction:actionCopy];
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [(EDMessageChangeManager *)self _persistResults:resultsCopy forTransferAction:actionCopy];
LABEL_8:
  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidFinishUpdates];

  return v9;
}

- (void)deleteLocalMessageActionsWithIDs:(id)ds
{
  dsCopy = ds;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
  [localActionPersistence removeMessageActions:dsCopy];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidFinishUpdates];
}

- (BOOL)_persistResults:(id)results forLabelChangeAction:(id)action
{
  v32 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  actionCopy = action;
  remoteIDs = [actionCopy remoteIDs];
  allObjects = [remoteIDs allObjects];
  v10 = [allObjects mutableCopy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  messages = [actionCopy messages];
  v12 = [messages countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(messages);
        }

        remoteID = [*(*(&v27 + 1) + 8 * v14) remoteID];
        if ([remoteID length])
        {
          [v10 addObject:remoteID];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [messages countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  database = [(EDMessageChangeManager *)self database];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistResults:forLabelChangeAction:]"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__EDMessageChangeManager__persistResults_forLabelChangeAction___block_invoke;
  v22[3] = &unk_1E8254150;
  v18 = resultsCopy;
  v23 = v18;
  selfCopy = self;
  v19 = actionCopy;
  v25 = v19;
  v20 = v10;
  v26 = v20;
  [database __performWriteWithCaller:v17 usingBlock:v22];

  return 0;
}

uint64_t __63__EDMessageChangeManager__persistResults_forLabelChangeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
  }

  else
  {
    v6 = [*(a1 + 40) serverMessagePersistenceFactory];
    v7 = [*(a1 + 48) mailboxURL];
    v5 = [v6 serverMessagePersistenceForMailboxURL:v7];

    v8 = [*(a1 + 48) labelsToAdd];
    v9 = [*(a1 + 48) labelsToRemove];
    [v5 addLabels:v8 removeLabels:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  v11 = [*(a1 + 48) persistentID];
  [v10 removeMessageAction:{objc_msgSend(v11, "databaseID")}];

  return 1;
}

- (void)_resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy = self;
  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v7 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  v20 = v7;
  [v7 serverMessagesForRemoteIDs:dsCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        messagePersistentID = [v11 messagePersistentID];
        v13 = -[EDMessageChangeManager messageForDatabaseID:](selfCopy, "messageForDatabaseID:", [messagePersistentID longLongValue]);

        if (v13)
        {
          labels = [v13 labels];
          labels2 = [v11 labels];
          v16 = [MEMORY[0x1E695DFA8] setWithSet:labels2];
          [v16 minusSet:labels];
          v17 = [MEMORY[0x1E695DFA8] setWithSet:labels];
          [v17 minusSet:labels2];
          v31[0] = MEMORY[0x1E695E118];
          v31[1] = MEMORY[0x1E695E110];
          v32[0] = v16;
          v32[1] = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
          v19 = [v24 objectForKeyedSubscript:v18];
          if (!v19)
          {
            v19 = objc_opt_new();
            [v24 setObject:v19 forKeyedSubscript:v18];
          }

          [v19 addObject:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __93__EDMessageChangeManager__resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v26[3] = &unk_1E8254178;
  v26[4] = selfCopy;
  [v24 enumerateKeysAndObjectsUsingBlock:v26];
}

void __93__EDMessageChangeManager__resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs_mailboxURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v10 objectForKeyedSubscript:MEMORY[0x1E695E118]];
  v8 = [v10 objectForKeyedSubscript:MEMORY[0x1E695E110]];
  v9 = [v6 addLabels:v7 removeLabels:v8 toMessagesInDatabase:v5];
}

- (BOOL)_persistResults:(id)results forFlagChangeAction:(id)action
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  actionCopy = action;
  v24 = resultsCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(EDMessageChangeManager *)self _persistFlagChangeResults:resultsCopy forFlagChangeAction:actionCopy];
  }

  else
  {
    remoteIDs = [actionCopy remoteIDs];
    allObjects = [remoteIDs allObjects];
    v11 = [allObjects mutableCopy];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    messages = [actionCopy messages];
    v13 = [messages countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(messages);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          remoteID = [v16 remoteID];
          v18 = [remoteID length];

          if (v18)
          {
            remoteID2 = [v16 remoteID];
            [v11 addObject:remoteID2];
          }
        }

        v13 = [messages countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    database = [(EDMessageChangeManager *)self database];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistResults:forFlagChangeAction:]"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__EDMessageChangeManager__persistResults_forFlagChangeAction___block_invoke;
    v25[3] = &unk_1E8254150;
    v26 = v24;
    selfCopy = self;
    v28 = actionCopy;
    v22 = v11;
    v29 = v22;
    [database __performWriteWithCaller:v21 usingBlock:v25];

    v8 = 0;
  }

  return v8;
}

uint64_t __62__EDMessageChangeManager__persistResults_forFlagChangeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) serverMessagePersistenceFactory];
    v8 = [*(a1 + 48) mailboxURL];
    v6 = [v7 serverMessagePersistenceForMailboxURL:v8];

    v9 = [*(a1 + 48) flagChange];
    [v6 applyFlagChange:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  v11 = [*(a1 + 48) persistentID];
  [v10 removeMessageAction:{objc_msgSend(v11, "databaseID")}];

  return 1;
}

- (BOOL)_persistFlagChangeResults:(id)results forFlagChangeAction:(id)action
{
  v95 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  actionCopy = action;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  remoteIDs = [actionCopy remoteIDs];
  v7 = [remoteIDs countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v7)
  {
    v8 = *v85;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(remoteIDs);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        v11 = uidFromString(v10);
        if (v11 - 1 > 0xFFFFFFFD)
        {
          v12 = +[EDMessageChangeManager log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v90 = v10;
            _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "Invalid UID (%{public}@) in flag change action.", buf, 0xCu);
          }
        }

        else
        {
          [indexSet addIndex:v11];
        }
      }

      v7 = [remoteIDs countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v7);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  messages = [actionCopy messages];
  v14 = [messages countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v14)
  {
    v15 = *v81;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v81 != v15)
        {
          objc_enumerationMutation(messages);
        }

        v17 = *(*(&v80 + 1) + 8 * j);
        remoteID = [v17 remoteID];
        v19 = uidFromString(remoteID);

        if (v19 - 1 > 0xFFFFFFFD)
        {
          v20 = +[EDMessageChangeManager log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            remoteID2 = [v17 remoteID];
            [(EDMessageChangeManager *)remoteID2 _persistFlagChangeResults:v91 forFlagChangeAction:&v92, v20];
          }
        }

        else
        {
          [indexSet addIndex:v19];
        }
      }

      v14 = [messages countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v14);
  }

  v22 = [indexSet count];
  remoteIDs2 = [actionCopy remoteIDs];
  v24 = v22 == [remoteIDs2 count];

  if (!v24)
  {
    v25 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v56 = [indexSet count];
      remoteIDs3 = [actionCopy remoteIDs];
      v58 = [remoteIDs3 count];
      remoteIDs4 = [actionCopy remoteIDs];
      v60 = [remoteIDs4 count];
      *buf = 67109376;
      *v90 = v56 - v58;
      *&v90[4] = 1024;
      *&v90[6] = v60;
      _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "%d of %d UIDs in flag change action were invalid.", buf, 0xEu);
    }
  }

  completedUIDs = [resultsCopy completedUIDs];
  v27 = [completedUIDs isEqualToIndexSet:indexSet];

  if (v27)
  {
    v28 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [indexSet count];
      *buf = 67109120;
      *v90 = v29;
      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_INFO, "All %d UIDs in flag change action were completed.", buf, 8u);
    }

    remoteIDs5 = [actionCopy remoteIDs];
    allObjects = [remoteIDs5 allObjects];
    v32 = [allObjects mutableCopy];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    messages2 = [actionCopy messages];
    v34 = [messages2 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v34)
    {
      v35 = *v77;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v77 != v35)
          {
            objc_enumerationMutation(messages2);
          }

          v37 = *(*(&v76 + 1) + 8 * k);
          remoteID3 = [v37 remoteID];
          v39 = [remoteID3 length];

          if (v39)
          {
            remoteID4 = [v37 remoteID];
            [v32 addObject:remoteID4];
          }
        }

        v34 = [messages2 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v34);
    }

    database = [(EDMessageChangeManager *)self database];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistFlagChangeResults:forFlagChangeAction:]"];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke;
    v71[3] = &unk_1E8254150;
    v72 = resultsCopy;
    selfCopy = self;
    v74 = actionCopy;
    v75 = v32;
    [database __performWriteWithCaller:v42 usingBlock:v71];
  }

  else
  {
    v43 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      completedUIDs2 = [resultsCopy completedUIDs];
      v45 = [completedUIDs2 count];
      v46 = [indexSet count];
      *buf = 67109376;
      *v90 = v45;
      *&v90[4] = 1024;
      *&v90[6] = v46;
      _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_INFO, "%d of %d UIDs in flag change action were completed.", buf, 0xEu);
    }

    v47 = MEMORY[0x1E695DF70];
    completedUIDs3 = [resultsCopy completedUIDs];
    v32 = [v47 arrayWithCapacity:{objc_msgSend(completedUIDs3, "count")}];

    completedUIDs4 = [resultsCopy completedUIDs];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_167;
    v70[3] = &unk_1E82540D8;
    v70[4] = v32;
    [completedUIDs4 enumerateIndexesUsingBlock:v70];

    v50 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:indexSet];
    completedUIDs5 = [resultsCopy completedUIDs];
    [v50 removeIndexes:completedUIDs5];

    database2 = [(EDMessageChangeManager *)self database];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistFlagChangeResults:forFlagChangeAction:]"];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_2;
    v64[3] = &unk_1E8254060;
    v65 = resultsCopy;
    selfCopy2 = self;
    v67 = actionCopy;
    v68 = v32;
    v54 = v50;
    v69 = v54;
    [database2 __performWriteWithCaller:v53 usingBlock:v64];
  }

  return 0;
}

uint64_t __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) serverMessagePersistenceFactory];
    v8 = [*(a1 + 48) mailboxURL];
    v6 = [v7 serverMessagePersistenceForMailboxURL:v8];

    v9 = [*(a1 + 48) flagChange];
    [v6 applyFlagChange:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  v11 = [*(a1 + 48) persistentID];
  [v10 removeMessageAction:{objc_msgSend(v11, "databaseID")}];

  return 1;
}

void __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", a2];
  [v2 addObject:?];
}

uint64_t __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) serverMessagePersistenceFactory];
    v8 = [*(a1 + 48) mailboxURL];
    v6 = [v7 serverMessagePersistenceForMailboxURL:v8];

    v9 = [*(a1 + 48) flagChange];
    [v6 applyFlagChange:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  [v10 updateFlagChangeAction:*(a1 + 48) withRemainingUIDs:*(a1 + 64)];

  return 1;
}

- (void)_clearFollowUpsFromThreadsForMessages:(id)messages
{
  v54 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    context = objc_autoreleasePoolPush();
    v3 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v53 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Starting to clear follow-ups from threads of %lu incoming messages.", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = messagesCopy;
    v5 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v5)
    {
      v6 = *v47;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v47 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v46 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "conversationID")}];
          v10 = [v4 objectForKeyedSubscript:v9];

          if (!v10 || ([v8 dateReceived], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "ef_isEarlierThanDate:", v11), v11, v12))
          {
            dateReceived = [v8 dateReceived];
            v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "conversationID")}];
            [v4 setObject:dateReceived forKeyedSubscript:v14];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v5);
    }

    allKeys = [v4 allKeys];
    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16 = [obj ef_map:&__block_literal_global_175];
    v39 = [v15 initWithArray:v16];

    messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
    v35 = [messagePersistence persistedMessageIDsForMessagesWithFollowUpsForConversationIDs:allKeys];

    messagePersistence2 = [(EDMessageChangeManager *)self messagePersistence];
    v33 = [messagePersistence2 persistedMessagesForDatabaseIDs:v35 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obja = v33;
    v19 = [obja countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v19)
    {
      v20 = *v43;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(obja);
          }

          v22 = *(*(&v42 + 1) + 8 * j);
          dateReceived2 = [v22 dateReceived];
          v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "conversationID")}];
          v25 = [v4 objectForKeyedSubscript:v24];
          v26 = [dateReceived2 ef_isEarlierThanDate:v25];

          if (v26)
          {
            v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "globalMessageID")}];
            v28 = [v39 containsObject:v27];

            if ((v28 & 1) == 0)
            {
              [v38 addObject:v22];
            }
          }
        }

        v19 = [obja countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v19);
    }

    messagePersistence3 = [(EDMessageChangeManager *)self messagePersistence];
    [messagePersistence3 persistFollowUp:0 forMessages:v38];

    v30 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v38 count];
      *buf = 134217984;
      v53 = v31;
      _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "Finished clearing %lu follow-ups.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
  }
}

id __64__EDMessageChangeManager__clearFollowUpsFromThreadsForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

- (void)_resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v7 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  v19 = v7;
  [v7 serverMessagesForRemoteIDs:dsCopy];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v8 = v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        messagePersistentID = [v12 messagePersistentID];
        v14 = -[EDMessageChangeManager messageForDatabaseID:](self, "messageForDatabaseID:", [messagePersistentID longLongValue]);

        if (v14)
        {
          flags = [v14 flags];
          serverFlags = [v12 serverFlags];
          if (([flags isEqual:serverFlags] & 1) == 0)
          {
            v17 = [MEMORY[0x1E699B300] changeFrom:flags to:serverFlags];
            v18 = [v22 objectForKeyedSubscript:v17];
            if (!v18)
            {
              v18 = objc_opt_new();
              [v22 setObject:v18 forKeyedSubscript:v17];
            }

            [v18 addObject:v14];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__EDMessageChangeManager__resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v23[3] = &unk_1E82541A0;
  v23[4] = self;
  [v22 enumerateKeysAndObjectsUsingBlock:v23];
}

- (BOOL)_persistResults:(id)results forTransferAction:(id)action
{
  resultsCopy = results;
  actionCopy = action;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  database = [(EDMessageChangeManager *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistResults:forTransferAction:]"];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke;
  v20 = &unk_1E82530D0;
  v11 = v8;
  v21 = v11;
  v12 = resultsCopy;
  v22 = v12;
  selfCopy = self;
  v13 = actionCopy;
  v24 = v13;
  v25 = &v31;
  v26 = &v27;
  [database __performWriteWithCaller:v10 usingBlock:&v17];

  error = [v12 error];

  if (error)
  {
    [(EDMessageChangeManager *)self displayErrorForTransferAction:v13 withResults:v12];
  }

  if (*(v28 + 24) == 1)
  {
    *(v32 + 24) = 0;
    [(EDMessageChangeManager *)self actionHasChangedAccount:v13];
  }

  v15 = *(v32 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

uint64_t __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [*(a1 + 40) failedItems];
  v5 = [v4 count];

  if (v5)
  {
    if ([*(a1 + 40) phaseForResults] == 3 || objc_msgSend(*(a1 + 40), "phaseForResults") == 4)
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 40) failedItems];
      [v6 _handleFailedCopyItems:v7 transferAction:*(a1 + 56) generationWindow:*(a1 + 32)];
LABEL_5:

      goto LABEL_6;
    }

    if ([*(a1 + 40) phaseForResults] == 1)
    {
      v30 = *(a1 + 48);
      v7 = [*(a1 + 40) failedItems];
      [v30 _handleFailedDownload:v7 generationWindow:*(a1 + 32)];
      goto LABEL_5;
    }
  }

LABEL_6:
  v8 = [*(a1 + 40) completedItems];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [*(a1 + 40) phaseForResults];
    v11 = *(a1 + 40);
    if (v10 == 1)
    {
      v12 = [v11 downloadedDataByCopyItems];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke_2;
      v68[3] = &unk_1E82541C8;
      v68[4] = *(a1 + 48);
      [v12 enumerateKeysAndObjectsUsingBlock:v68];
    }

    else if ([v11 phaseForResults] == 3)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v13 = [*(a1 + 56) mailboxURL];
        v14 = [*(a1 + 56) destinationMailboxURL];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v16 = [*(a1 + 40) completedItems];
          v17 = [v16 countByEnumeratingWithState:&v64 objects:v71 count:16];
          if (v17)
          {
            v18 = *v65;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v65 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(a1 + 48);
                v21 = [*(*(&v64 + 1) + 8 * i) destinationMessage];
                [v20 messageWasAppended:v21];
              }

              v17 = [v16 countByEnumeratingWithState:&v64 objects:v71 count:16];
            }

            while (v17);
          }
        }
      }

      v22 = *(a1 + 48);
      v23 = [*(a1 + 56) destinationMailboxURL];
      LODWORD(v22) = [v22 _needToStoreServerMessagesForMailboxURL:v23];

      if (v22)
      {
        v24 = *(a1 + 48);
        v25 = [*(a1 + 40) createdServerMessages];
        v26 = [*(a1 + 56) destinationMailboxURL];
        [v24 _storeServerMessages:v25 mailboxURL:v26 generationWindow:*(a1 + 32)];

        v27 = *(a1 + 48);
        v28 = [*(a1 + 40) completedItems];
        v29 = [*(a1 + 40) createdServerMessages];
        [v27 _deleteDestinationMessagesFromCompletedItems:v28 notInServerMessages:v29];
      }

      else
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v43 = [*(a1 + 40) createdServerMessages];
        v44 = [v43 countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v44)
        {
          v45 = *v61;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v61 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v47 = *(*(&v60 + 1) + 8 * j);
              v48 = *(a1 + 48);
              v49 = [v47 remoteID];
              v50 = [v47 messagePersistentID];
              [v48 setRemoteID:v49 onMessageWithDatabaseID:{objc_msgSend(v50, "longLongValue")}];
            }

            v44 = [v43 countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v44);
        }
      }
    }

    else if ([*(a1 + 40) phaseForResults] == 4)
    {
      v31 = *(a1 + 48);
      v32 = [*(a1 + 56) sourceMailboxURL];
      LODWORD(v31) = [v31 _needToStoreServerMessagesForMailboxURL:v32];

      if (v31)
      {
        v33 = objc_opt_new();
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v34 = [*(a1 + 40) completedItems];
        v35 = [v34 countByEnumeratingWithState:&v56 objects:v69 count:16];
        if (v35)
        {
          v36 = *v57;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v57 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = [*(*(&v56 + 1) + 8 * k) sourceRemoteID];
              if (v38)
              {
                [v33 addObject:v38];
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v56 objects:v69 count:16];
          }

          while (v35);
        }

        v39 = [*(a1 + 48) serverMessagePersistenceFactory];
        v40 = [*(a1 + 56) mailboxURL];
        v41 = [v39 serverMessagePersistenceForMailboxURL:v40];

        v42 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_182];
        [v41 applyFlagChange:v42 toMessagesWithRemoteIDs:v33];
      }
    }
  }

  v51 = [*(a1 + 56) mailboxURL];
  v52 = [*(a1 + 48) localActionPersistence];
  *(*(*(a1 + 64) + 8) + 24) = [v52 updateTransferAction:*(a1 + 56) withResults:*(a1 + 40)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v53 = *(a1 + 48);
    v54 = [*(a1 + 56) mailboxURL];
    *(*(*(a1 + 72) + 8) + 24) = [v53 mailboxURL:v54 isInSameAccountAsMailboxURL:v51] ^ 1;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  return 1;
}

void __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 destinationMessage];
  [*(a1 + 32) setData:v6 onMessage:v5];
}

- (void)_handleFailedDownload:(id)download generationWindow:(id)window
{
  v20 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  windowCopy = window;
  if ([downloadCopy count])
  {
    v8 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = downloadCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          destinationMessage = [*(*(&v15 + 1) + 8 * v12) destinationMessage];
          if (destinationMessage)
          {
            [v8 addObject:destinationMessage];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [(EDMessageChangeManager *)self deletePersistedMessages:v8];
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceDidDeleteMessages:v8 generationWindow:windowCopy];
  }
}

- (void)_handleFailedCopyItems:(id)items transferAction:(id)action generationWindow:(id)window
{
  v40 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  actionCopy = action;
  windowCopy = window;
  v28 = itemsCopy;
  if ([itemsCopy count])
  {
    sourceMailboxURL = [actionCopy sourceMailboxURL];
    v25 = sourceMailboxURL;
    if (sourceMailboxURL)
    {
      v9 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:sourceMailboxURL, sourceMailboxURL];
    }

    else
    {
      v9 = 1;
    }

    v31 = objc_opt_new();
    v10 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = itemsCopy;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          if (v9)
          {
            sourceRemoteID = [*(*(&v35 + 1) + 8 * i) sourceRemoteID];
            if (sourceRemoteID)
            {
            }

            else
            {
              sourceMessage = [v15 sourceMessage];
              remoteID = [sourceMessage remoteID];
              v19 = [remoteID length] == 0;

              if (v19)
              {
                continue;
              }
            }
          }

          destinationMessage = [v15 destinationMessage];
          if (destinationMessage)
          {
            [v31 addObject:destinationMessage];
            [v10 setObject:v15 forKeyedSubscript:destinationMessage];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v12);
    }

    if ([actionCopy transferType] == 1 && objc_msgSend(v31, "count"))
    {
      v21 = objc_opt_new();
      sourceMailboxURL2 = [actionCopy sourceMailboxURL];
      v23 = [(EDMessageChangeManager *)self persistNewMessages:v31 mailboxURL:sourceMailboxURL2 oldMessagesByNewMessage:v21 fromSyncing:0];

      if ((v23 & v9) == 1)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __81__EDMessageChangeManager__handleFailedCopyItems_transferAction_generationWindow___block_invoke;
        v32[3] = &unk_1E8253EB8;
        v33 = v10;
        selfCopy = self;
        [v21 enumerateKeysAndObjectsUsingBlock:v32];
      }
    }

    [(EDMessageChangeManager *)self deletePersistedMessages:v31, v25];
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceDidDeleteMessages:v31 generationWindow:windowCopy];
  }
}

void __81__EDMessageChangeManager__handleFailedCopyItems_transferAction_generationWindow___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = [v5 sourceRemoteID];

  v7 = [v15 persistentID];
  v8 = [v7 longLongValue];

  [*(a1 + 40) setRemoteID:v6 onMessageWithDatabaseID:v8];
  v9 = [v15 mailbox];
  v10 = [v9 URL];

  if ([*(a1 + 40) _needToStoreServerMessagesForMailboxURL:v10])
  {
    v11 = [*(a1 + 40) serverMessagePersistenceFactory];
    v12 = [v15 mailbox];
    v13 = [v12 URL];
    v14 = [v11 serverMessagePersistenceForMailboxURL:v13];

    [v14 attachMessage:v8 toServerMessageWithRemoteID:v6];
  }
}

- (void)_storeServerMessages:(id)messages mailboxURL:(id)l generationWindow:(id)window
{
  v44 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  windowCopy = window;
  v28 = lCopy;
  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v32 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = messagesCopy;
  v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v11)
  {
    v31 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v38 = 0;
        [v32 addServerMessage:v13 invalidMessage:&v38 + 1 duplicateRemoteID:&v38];
        if (v38 == 1)
        {
          v14 = [(EDMessageChangeManager *)self _handleDuplicateServerMessage:v13 serverMessagePersistence:v32];
          if (v14)
          {
            [v29 addObject:v14];
          }
        }

        else if (HIBYTE(v38) == 1)
        {
          v15 = objc_alloc(MEMORY[0x1E699B320]);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke;
          v37[3] = &unk_1E8254210;
          v37[4] = v13;
          v16 = [v15 initWithServerMessageBuilder:v37];
          [v32 addServerMessage:v16 invalidMessage:0 duplicateRemoteID:0];
          v17 = objc_alloc(MEMORY[0x1E699B358]);
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_2;
          v36[3] = &unk_1E8253C68;
          v36[4] = v13;
          v18 = [v17 initWithBuilder:v36];
          v19 = objc_alloc(MEMORY[0x1E699B350]);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_3;
          v33[3] = &unk_1E8254238;
          v20 = v18;
          v34 = v20;
          v21 = v28;
          v35 = v21;
          v22 = [v19 initWithBuilder:v33];
          localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
          [localActionPersistence persistTransferAction:v22];

          [(EDMessageChangeManager *)self checkForNewActionsInMailboxID:[(EDMessageChangeManager *)self mailboxDatabaseIDForURL:v21]];
        }

        remoteID = [v13 remoteID];
        messagePersistentID = [v13 messagePersistentID];
        -[EDMessageChangeManager setRemoteID:onMessageWithDatabaseID:](self, "setRemoteID:onMessageWithDatabaseID:", remoteID, [messagePersistentID longLongValue]);
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v11);
  }

  if ([v29 count])
  {
    [(EDMessageChangeManager *)self deletePersistedMessages:v29];
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceDidDeleteMessages:v29 generationWindow:windowCopy];
  }
}

void __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) remoteID];
  [v5 setRemoteID:v3];

  v4 = [*(a1 + 32) serverFlags];
  [v5 setServerFlags:v4];
}

void __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) remoteID];
  [v4 setSourceRemoteID:v3];
}

void __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_3(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 setItemsToDelete:v4];

  [v3 setSourceMailboxURL:*(a1 + 40)];
  [v3 setMailboxURL:*(a1 + 40)];
  [v3 setUserInitiated:0];
  [v3 setTransferType:3];
}

- (void)_deleteDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages
{
  v6 = [(EDMessageChangeManager *)self _findDestinationMessagesFromCompletedItems:items notInServerMessages:messages];
  v5 = [v6 ef_filter:&__block_literal_global_418];
  [(EDMessageChangeManager *)self deletePersistedMessages:v5];
}

- (id)_findDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  messagesCopy = messages;
  if (messagesCopy)
  {
    v6 = [itemsCopy ef_compactMap:&__block_literal_global_186];
    v7 = [v6 mutableCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = messagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          messagePersistentID = [*(*(&v19 + 1) + 8 * i) messagePersistentID];
          v13 = messagePersistentID;
          if (messagePersistentID)
          {
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __89__EDMessageChangeManager__findDestinationMessagesFromCompletedItems_notInServerMessages___block_invoke_2;
            v17[3] = &unk_1E8254280;
            v18 = messagePersistentID;
            v14 = [v7 indexOfObjectPassingTest:v17];
            if (v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v7 removeObjectAtIndex:v14];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

id __89__EDMessageChangeManager__findDestinationMessagesFromCompletedItems_notInServerMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 destinationMessage];

  return v2;
}

uint64_t __89__EDMessageChangeManager__findDestinationMessagesFromCompletedItems_notInServerMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 persistentID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_handleDuplicateServerMessage:(id)message serverMessagePersistence:(id)persistence
{
  v19[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  persistenceCopy = persistence;
  remoteID = [messageCopy remoteID];
  v19[0] = remoteID;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v10 = [persistenceCopy serverMessagesForRemoteIDs:v9];
  firstObject = [v10 firstObject];

  messagePersistentID = [firstObject messagePersistentID];

  if (messagePersistentID)
  {
    messagePersistentID2 = [firstObject messagePersistentID];
    v14 = -[EDMessageChangeManager messageForDatabaseID:](self, "messageForDatabaseID:", [messagePersistentID2 longLongValue]);
  }

  else
  {
    v14 = 0;
  }

  messagePersistentID3 = [messageCopy messagePersistentID];
  longLongValue = [messagePersistentID3 longLongValue];
  remoteID2 = [firstObject remoteID];
  [persistenceCopy attachMessage:longLongValue toServerMessageWithRemoteID:remoteID2];

  return v14;
}

- (BOOL)mailboxURLIsInRemoteAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy)
  {
    if ([accountCopy ef_hasScheme:*MEMORY[0x1E699A698]] & 1) != 0 || (objc_msgSend(v4, "ef_hasScheme:", *MEMORY[0x1E699A690]))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 ef_hasScheme:*MEMORY[0x1E699A688]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_needToStoreServerMessagesForMailboxURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    v5 = [lCopy ef_hasScheme:*MEMORY[0x1E699A698]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)mailboxURL:(id)l isInSameAccountAsMailboxURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = rLCopy;
  v8 = 0;
  if (lCopy && rLCopy)
  {
    host = [lCopy host];
    host2 = [v7 host];
    v8 = [host isEqualToString:host2];
  }

  return v8;
}

- (id)accountForMailboxURL:(id)l
{
  lCopy = l;
  [(EDMessageChangeManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMessageChangeManager accountForMailboxURL:]", "EDMessageChangeManager.m", 1819, "0");
}

- (BOOL)_hookResponderRespondsToRequiredMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)remindMeCloudStorageChangedWithAddedOrChangedItems:(id)items deletedItems:(id)deletedItems
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v7 = EDRemindMeLog(deletedItemsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = itemsCopy;
    v24 = 2114;
    v25 = deletedItemsCopy;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Processing remote changes for changed items: %{public}@ deleted items: %{public}@", buf, 0x16u);
  }

  v8 = [itemsCopy mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = deletedItemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        null = [MEMORY[0x1E695DFB0] null];
        [v8 setObject:null forKeyedSubscript:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__EDMessageChangeManager_remindMeCloudStorageChangedWithAddedOrChangedItems_deletedItems___block_invoke;
  v16[3] = &unk_1E82542A8;
  v16[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];
}

void __90__EDMessageChangeManager_remindMeCloudStorageChangedWithAddedOrChangedItems_deletedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = v5;
  v7 = [*(a1 + 32) messagePersistence];
  v8 = [v7 globalIDForMessageIDHash:v5];

  v9 = objc_alloc(MEMORY[0x1E699ADA8]);
  v10 = [MEMORY[0x1E699AD28] allMailboxesScope];
  v11 = [v9 initWithGlobalMessageID:v8 mailboxScope:v10];

  v12 = [*(a1 + 32) messagePersistence];
  v37[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v14 = [v12 persistedMessagesForObjectIDs:v13 requireProtectedData:0];

  if ([v14 count])
  {
    v15 = [v14 firstObject];
    v16 = [v15 readLater];
    v17 = [v16 date];

    v18 = [v14 firstObject];
    v19 = [v18 displayDate];

    v20 = *MEMORY[0x1E699B750];
    if ((*(*MEMORY[0x1E699B750] + 16))(*MEMORY[0x1E699B750], v6))
    {
      v21 = 0;
    }

    else
    {
      v21 = [v6 readLaterDate];
    }

    if ((*(v20 + 16))(v20, v6))
    {
      v22 = 0;
    }

    else
    {
      v22 = [v6 displayDate];
    }

    v23 = EFObjectsAreEqual();
    if ((v23 & 1) == 0)
    {
      v24 = EDRemindMeLog(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219010;
        v28 = v8;
        v29 = 2114;
        v30 = v21;
        v31 = 2114;
        v32 = v17;
        v33 = 2114;
        v34 = v22;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Applying new read later date due to remote change for messages with global message id: %lld, new read later date: %{public}@, old read later date: %{public}@, new display date: %{public}@, old display date: %{public}@", buf, 0x34u);
      }

      if ([v22 isEqualToDate:v19])
      {

        v22 = 0;
      }

      v25 = [*(a1 + 32) _applyReadLaterDate:v21 displayDate:v22 toMessages:v14 changeIsRemote:1];
    }
  }

  else
  {
    v17 = EDRemindMeLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "No persisted messages found for remote changes.", buf, 2u);
    }
  }
}

- (void)dealloc
{
  [(EFCancelable *)self->_stateCancelable cancel];
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = 0;

  v4.receiver = self;
  v4.super_class = EDMessageChangeManager;
  [(EDMessageChangeManager *)&v4 dealloc];
}

- (EDMessageChangeHookResponder)hookResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hookResponder);

  return WeakRetained;
}

- (EDMessageAuthenticator)messageAuthenticator
{
  WeakRetained = objc_loadWeakRetained(&self->_messageAuthenticator);

  return WeakRetained;
}

- (EDMessageCategorizer)messageCategorizer
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCategorizer);

  return WeakRetained;
}

- (void)applyFlagChange:(os_log_t)log toMessages:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Warning, only changing flags on %lu of %lu messages as some messages were missing mailbox URLs", &v3, 0x16u);
}

void __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98_cold_1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Warning, only converted %lu of %lu to persisted messages", buf, 0x16u);
}

void __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "ERROR calling the follow up feedback SPI from Suggestions: %@", &v3, 0xCu);
}

- (void)_truncateReadLaterDate:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "Skip truncation. truncatedDate:%{public}@ readLaterDate:%{public}@", &v3, 0x16u);
}

- (void)_persistFlagChangeResults:(void *)a3 forFlagChangeAction:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Message’s UID (%{public}@) is invalid in flag change action.", buf, 0xCu);
}

@end