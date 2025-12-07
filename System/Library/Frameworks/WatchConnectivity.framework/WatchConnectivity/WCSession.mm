@interface WCSession
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (WCSession)defaultSession;
- (BOOL)didPairingIDChange:(id)change;
- (BOOL)didWatchURLChange:(id)change;
- (BOOL)isEqual:(id)equal;
- (BOOL)logAndTestIfUnactivatedOrMissingDelegate;
- (BOOL)updateApplicationContext:(NSDictionary *)applicationContext error:(NSError *)error;
- (BOOL)verifySessionFile:(id)file;
- (NSArray)outstandingFileTransfers;
- (NSArray)outstandingUserInfoTransfers;
- (NSDictionary)applicationContext;
- (NSDictionary)receivedApplicationContext;
- (NSString)description;
- (NSURL)watchDirectoryURL;
- (WCSession)init;
- (WCSessionFileTransfer)transferFile:(NSURL *)file metadata:(NSDictionary *)metadata;
- (WCSessionUserInfoTransfer)transferCurrentComplicationUserInfo:(NSDictionary *)userInfo;
- (WCSessionUserInfoTransfer)transferUserInfo:(NSDictionary *)userInfo;
- (id)_init;
- (id)createAndStartTimerOnWorkQueueWithHandler:(id)handler;
- (id)delegate;
- (id)errorIfNotReachable;
- (id)errorIfPreconditionsNotSatisfied;
- (id)fileSizeFromURL:(id)l;
- (id)onqueue_addOutstandingUserInfoTransfer:(id)transfer;
- (unint64_t)hash;
- (unint64_t)roundValue:(unint64_t)value toSignificantFigures:(int)figures;
- (void)_onqueue_notifyOfMessageError:(id)error messageID:(id)d withErrorHandler:(id)handler;
- (void)_onqueue_sendResponseError:(id)error identifier:(id)identifier dictionaryMessage:(BOOL)message;
- (void)activateSession;
- (void)cancelFileTransfer:(id)transfer;
- (void)cancelUserInfo:(id)info;
- (void)dealloc;
- (void)didSessionStateChange:(id)change withChangeHandler:(id)handler;
- (void)handleActiveDeviceSwitchStarted;
- (void)handleApplicationContextWithPairingID:(id)d;
- (void)handleFileResultWithPairingID:(id)d;
- (void)handleIncomingFileWithPairingID:(id)d;
- (void)handleIncomingUserInfoWithPairingID:(id)d;
- (void)handleMessageSendingAllowed;
- (void)handleRequest:(id)request;
- (void)handleResponse:(id)response;
- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error;
- (void)handleSessionStateChanged:(id)changed;
- (void)handleUserInfoResultWithPairingID:(id)d;
- (void)notifyOfFileError:(id)error withFileTransfer:(id)transfer;
- (void)notifyOfUserInfoError:(id)error withUserInfoTransfer:(id)transfer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onDelegateQueueIfTriggeringKVO_updateSessionState:(id)state triggerKVO:(BOOL)o;
- (void)onqueue_addOutstandingFileTransfer:(id)transfer;
- (void)onqueue_cancelFileTransfer:(id)transfer;
- (void)onqueue_cancelMessagesIfAppropriate;
- (void)onqueue_cancelUserInfo:(id)info;
- (void)onqueue_completeSwitchTask:(id)task withSessionState:(id)state;
- (void)onqueue_createProgressForFileTransfer:(id)transfer;
- (void)onqueue_dequeueContent;
- (void)onqueue_handleDataMessageRequest:(id)request withPairingID:(id)d;
- (void)onqueue_handleDictionaryMessageRequest:(id)request withPairingID:(id)d;
- (void)onqueue_handleMessageCompletionWithError:(id)error withMessageID:(id)d;
- (void)onqueue_handleProgressFinishedForFileTransfer:(id)transfer;
- (void)onqueue_handleResponseData:(id)data record:(id)record withPairingID:(id)d;
- (void)onqueue_handleResponseDictionary:(id)dictionary record:(id)record withPairingID:(id)d;
- (void)onqueue_handleUpdateSessionState:(id)state;
- (void)onqueue_loadAppContexts;
- (void)onqueue_loadFileTransferProgress;
- (void)onqueue_loadOutstandingFileTransfers;
- (void)onqueue_loadOutstandingUserInfoTransfers;
- (void)onqueue_loadPersistedContent;
- (void)onqueue_notifyOfFileError:(id)error withFileTransfer:(id)transfer;
- (void)onqueue_notifyOfUserInfoError:(id)error withUserInfoTransfer:(id)transfer;
- (void)onqueue_removeOutstandingFileTransfer:(id)transfer;
- (void)onqueue_removeOutstandingUserInfoTransfer:(id)transfer;
- (void)onqueue_removeProgressForFileTransfer:(id)transfer;
- (void)onqueue_sendMessageData:(id)data replyHandler:(id)handler errorHandler:(id)errorHandler dictionaryMessage:(BOOL)message;
- (void)onqueue_sendResponseData:(id)data identifier:(id)identifier dictionaryMessage:(BOOL)message;
- (void)onqueue_sendResponseDictionary:(id)dictionary identifier:(id)identifier;
- (void)onqueue_setCurrentComplicationUserInfoTransfer:(id)transfer;
- (void)onqueue_startNextDeviceSwitch;
- (void)onqueue_transferUserInfo:(id)info withUserInfo:(id)userInfo;
- (void)onqueue_updateClientProgressForFileTransfer:(id)transfer;
- (void)onqueue_updateProgressForFileTransfer:(id)transfer progress:(id)progress;
- (void)reportFileTransfer:(id)transfer;
- (void)sendMessage:(NSDictionary *)message replyHandler:(void *)replyHandler errorHandler:(void *)errorHandler;
- (void)sendMessageData:(NSData *)data replyHandler:(void *)replyHandler errorHandler:(void *)errorHandler;
- (void)setDelegate:(id)delegate;
- (void)setInternalOutstandingFileTransfers:(id)transfers;
- (void)setInternalOutstandingUserInfoTransfers:(id)transfers;
- (void)storeAppContext:(id)context withAppContextData:(id)data;
- (void)storeReceivedAppContext:(id)context withAppContextData:(id)data;
- (void)updatePairingID:(id)d;
- (void)xpcConnectionInterrupted;
- (void)xpcConnectionRestoredWithState:(id)state;
@end

@implementation WCSession

+ (WCSession)defaultSession
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__WCSession_defaultSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultSession_onceToken != -1)
  {
    dispatch_once(&defaultSession_onceToken, block);
  }

  v2 = defaultSession_session;

  return v2;
}

uint64_t __27__WCSession_defaultSession__block_invoke(uint64_t a1)
{
  defaultSession_session = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (WCSession)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%s: should never be used.", "-[WCSession init]"}];

  return 0;
}

- (id)_init
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = WCSession;
  v2 = [(WCSession *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasCompletedInitialActivation = 0;
    v2->_paired = 0;
    v2->_reachable = 0;
    pairingID = v2->_pairingID;
    v2->_pairingID = 0;

    v3->_activationState = 0;
    *&v3->_watchAppInstalled = 0;
    v3->_companionAppInstalled = 0;
    *&v3->_delegateSupportsAsyncActivate = 0;
    v5 = objc_opt_new();
    queueManager = v3->_queueManager;
    v3->_queueManager = v5;

    currentComplicationUserInfoTransfer = v3->_currentComplicationUserInfoTransfer;
    v3->_currentComplicationUserInfoTransfer = 0;

    v8 = objc_opt_new();
    switchTasksQueue = v3->_switchTasksQueue;
    v3->_switchTasksQueue = v8;

    v10 = v3->_switchTasksQueue;
    v11 = objc_opt_new();
    [(NSMutableArray *)v10 addObject:v11];

    v12 = objc_opt_new();
    currentMessages = v3->_currentMessages;
    v3->_currentMessages = v12;

    v14 = objc_opt_new();
    currentMessageIdentifiersAwaitingReply = v3->_currentMessageIdentifiersAwaitingReply;
    v3->_currentMessageIdentifiersAwaitingReply = v14;

    v16 = objc_opt_new();
    workOperationQueue = v3->_workOperationQueue;
    v3->_workOperationQueue = v16;

    [(NSOperationQueue *)v3->_workOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_workOperationQueue setQualityOfService:25];
    v18 = objc_opt_new();
    delegateOperationQueue = v3->_delegateOperationQueue;
    v3->_delegateOperationQueue = v18;

    [(NSOperationQueue *)v3->_delegateOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_delegateOperationQueue setQualityOfService:17];
    v20 = objc_opt_new();
    backgroundWorkOperationQueue = v3->_backgroundWorkOperationQueue;
    v3->_backgroundWorkOperationQueue = v20;

    [(NSOperationQueue *)v3->_backgroundWorkOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_backgroundWorkOperationQueue setQualityOfService:9];
    v22 = +[WCXPCManager sharedManager];
    [v22 setDelegate:v3];

    v24 = wc_log(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = "[WCSession _init]";
      _os_log_impl(&dword_23B2FA000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s WCSession initialized", buf, 0xCu);
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[WCXPCManager sharedManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = WCSession;
  [(WCSession *)&v4 dealloc];
}

- (void)activateSession
{
  v3 = _os_activity_create(&dword_23B2FA000, "activateSession", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__WCSession_activateSession__block_invoke;
  block[3] = &unk_278B7BF78;
  block[4] = self;
  os_activity_apply(v3, block);
}

void __28__WCSession_activateSession__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[WCSession activateSession]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  v3 = [objc_opt_class() isSupported];
  if (v3)
  {
    v4 = [*(a1 + 32) delegate];

    if (v4)
    {
      v6 = [*(a1 + 32) switchTasksQueue];
      v7 = [v6 firstObject];

      v8 = [v7 clientReadyForSessionState];
      if ((v8 & 1) != 0 || (v8 = [*(a1 + 32) activationState]) != 0)
      {
        v9 = wc_log(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __28__WCSession_activateSession__block_invoke_cold_3();
        }
      }

      else
      {
        [v7 setTaskState:3];
        v10 = wc_log([v7 setClientReadyForSessionState:1]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v30 = "[WCSession activateSession]_block_invoke";
          _os_log_impl(&dword_23B2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s informing daemon ready for session state", buf, 0xCu);
        }

        v11 = +[WCXPCManager sharedManager];
        v12 = [*(a1 + 32) delegateSupportsActiveDeviceSwitch];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __28__WCSession_activateSession__block_invoke_20;
        v26[3] = &unk_278B7BF50;
        v13 = v7;
        v14 = *(a1 + 32);
        v27 = v13;
        v28 = v14;
        [v11 sessionReadyForInitialStateForClientPairingID:0 supportsActiveDeviceSwitch:v12 withErrorHandler:v26];

        if (([*(a1 + 32) delegateSupportsAsyncActivate] & 1) == 0)
        {
          v15 = [*(a1 + 32) delegateOperationQueue];
          [v15 setSuspended:1];

          v16 = dispatch_semaphore_create(0);
          v17 = objc_opt_new();
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __28__WCSession_activateSession__block_invoke_24;
          v24[3] = &unk_278B7BF78;
          v18 = v16;
          v25 = v18;
          [v17 addExecutionBlock:v24];
          v19 = [*(a1 + 32) delegateOperationQueue];
          [v19 addOperation:v17];

          v20 = dispatch_time(0, 7000000000);
          v21 = dispatch_semaphore_wait(v18, v20);
          if (v21)
          {
            v22 = wc_log(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              __28__WCSession_activateSession__block_invoke_cold_2();
            }

            v23 = [*(a1 + 32) delegateOperationQueue];
            [v23 setSuspended:0];
          }
        }

        v9 = v27;
      }
    }

    else
    {
      v7 = wc_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __28__WCSession_activateSession__block_invoke_cold_4();
      }
    }
  }

  else
  {
    v7 = wc_log(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __28__WCSession_activateSession__block_invoke_cold_1();
    }
  }
}

void __28__WCSession_activateSession__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = wc_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __28__WCSession_activateSession__block_invoke_20_cold_1();
    }

    [*(a1 + 32) setTaskState:888];
    v6 = [*(a1 + 40) delegateOperationQueue];
    [v6 setSuspended:0];
  }
}

- (void)setDelegate:(id)delegate
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained isEqual:v4];

  if ((v6 & 1) == 0)
  {
    objc_storeWeak(&self->_delegate, v4);
    delegate = [(WCSession *)self delegate];
    [(WCSession *)self setDelegateSupportsAsyncActivate:objc_opt_respondsToSelector() & 1];

    if ([(WCSession *)self delegateSupportsAsyncActivate])
    {
      delegate2 = [(WCSession *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate3 = [(WCSession *)self delegate];
        [(WCSession *)self setDelegateSupportsActiveDeviceSwitch:objc_opt_respondsToSelector() & 1];
      }

      else
      {
        [(WCSession *)self setDelegateSupportsActiveDeviceSwitch:0];
      }
    }

    else
    {
      v10 = [(WCSession *)self setDelegateSupportsActiveDeviceSwitch:0];
    }

    v11 = wc_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if ([(WCSession *)self delegateSupportsAsyncActivate])
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      v14 = 136446722;
      v15 = "[WCSession setDelegate:]";
      if ([(WCSession *)self delegateSupportsActiveDeviceSwitch])
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      v16 = 2080;
      v17 = v12;
      v18 = 2080;
      v19 = v13;
      _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s delegateSupportsAsyncActivate: %s, delegateSupportsActiveDeviceSwitch: %s", &v14, 0x20u);
    }
  }
}

- (void)onqueue_loadPersistedContent
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = wc_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[WCSession onqueue_loadPersistedContent]";
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s loading persisted content", &v4, 0xCu);
  }

  [(WCSession *)self onqueue_loadOutstandingFileTransfers];
  [(WCSession *)self onqueue_loadOutstandingUserInfoTransfers];
  [(WCSession *)self onqueue_loadAppContexts];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  delegate = [(WCSession *)self delegate];
  if (delegate)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, hasDelegate: %s, activationState: %d>", v5, self, v7, -[WCSession activationState](self, "activationState")];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = WCSession;
  return [(WCSession *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = WCSession;
  return [(WCSession *)&v3 hash];
}

- (void)onDelegateQueueIfTriggeringKVO_updateSessionState:(id)state triggerKVO:(BOOL)o
{
  oCopy = o;
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v7 = wc_log(stateCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    *&v16[4] = "[WCSession onDelegateQueueIfTriggeringKVO_updateSessionState:triggerKVO:]";
    *v16 = 136446722;
    if (oCopy)
    {
      v8 = "YES";
    }

    *&v16[12] = 2114;
    *&v16[14] = stateCopy;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&dword_23B2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@, triggerKVO: %s", v16, 0x20u);
  }

  isReachable = [stateCopy isReachable];
  if (oCopy)
  {
    [(WCSession *)self setReachable:isReachable];
  }

  else
  {
    self->_reachable = isReachable;
  }

  v10 = [WCFileStorage sharedInstance:*v16];
  watchDirectoryURL = [stateCopy watchDirectoryURL];
  [v10 createWatchDirectoryIfNeeded:watchDirectoryURL];

  watchDirectoryURL2 = [stateCopy watchDirectoryURL];
  v13 = watchDirectoryURL2;
  if (oCopy)
  {
    [(WCSession *)self setWatchDirectoryURL:watchDirectoryURL2];

    -[WCSession setPaired:](self, "setPaired:", [stateCopy isPaired]);
    -[WCSession setWatchAppInstalled:](self, "setWatchAppInstalled:", [stateCopy isAppInstalled]);
    -[WCSession setComplicationEnabled:](self, "setComplicationEnabled:", [stateCopy isComplicationEnabled]);
    -[WCSession setRemainingComplicationUserInfoTransfers:](self, "setRemainingComplicationUserInfoTransfers:", [stateCopy remainingComplicationUserInfoTransfers]);
  }

  else
  {
    watchDirectoryURL = self->_watchDirectoryURL;
    self->_watchDirectoryURL = watchDirectoryURL2;

    self->_paired = [stateCopy isPaired];
    self->_watchAppInstalled = [stateCopy isAppInstalled];
    self->_complicationEnabled = [stateCopy isComplicationEnabled];
    self->_remainingComplicationUserInfoTransfers = [stateCopy remainingComplicationUserInfoTransfers];
  }

  pairingID = [stateCopy pairingID];
  [(WCSession *)self updatePairingID:pairingID];
}

- (void)onqueue_cancelMessagesIfAppropriate
{
  v12 = *MEMORY[0x277D85DE8];
  isReachable = [(WCSession *)self isReachable];
  if (isReachable && (isReachable = [(WCSession *)self isWatchAppInstalled], isReachable))
  {
    isReachable = [(WCSession *)self isPaired];
    v4 = isReachable ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = wc_log(isReachable);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    v8 = 136446466;
    v9 = "[WCSession onqueue_cancelMessagesIfAppropriate]";
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s shouldCancel: %s", &v8, 0x16u);
  }

  if (v4)
  {
    queueManager = [(WCSession *)self queueManager];
    [queueManager cancelQueuedMessages];
  }
}

- (void)updatePairingID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (([dCopy isEqual:self->_pairingID] & 1) == 0)
  {
    v5 = [dCopy copy];
    pairingID = self->_pairingID;
    self->_pairingID = v5;

    if (self->_pairingID)
    {
      v8 = wc_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_pairingID;
        *buf = 136446466;
        v14 = "[WCSession updatePairingID:]";
        v15 = 2114;
        v16 = v9;
        _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
      }

      v10 = +[WCFileStorage sharedInstance];
      [v10 setPairingID:self->_pairingID];

      workOperationQueue = self->_workOperationQueue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __29__WCSession_updatePairingID___block_invoke;
      v12[3] = &unk_278B7BF78;
      v12[4] = self;
      [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v12];
    }
  }
}

- (BOOL)didPairingIDChange:(id)change
{
  pairingID = self->_pairingID;
  if (change | pairingID)
  {
    return [(NSString *)pairingID isEqual:v3, v4]^ 1;
  }

  else
  {
    return 0;
  }
}

- (NSURL)watchDirectoryURL
{
  errorIfPreconditionsNotSatisfied = [(WCSession *)self errorIfPreconditionsNotSatisfied];

  if (errorIfPreconditionsNotSatisfied)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_watchDirectoryURL;
  }

  return v4;
}

- (BOOL)didWatchURLChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    watchDirectoryURL = [(WCSession *)self watchDirectoryURL];
    if (!watchDirectoryURL)
    {
      LOBYTE(v7) = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  watchDirectoryURL2 = [(WCSession *)self watchDirectoryURL];
  v7 = [changeCopy isEqual:watchDirectoryURL2] ^ 1;

  if (!changeCopy)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (NSArray)outstandingUserInfoTransfers
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = MEMORY[0x277CBEBF8];
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WCSession_outstandingUserInfoTransfers__block_invoke;
  v8[3] = &unk_278B7BFA0;
  v8[4] = self;
  v8[5] = &v9;
  [v3 addExecutionBlock:v8];
  workOperationQueue = self->_workOperationQueue;
  v15[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [(NSOperationQueue *)workOperationQueue addOperations:v5 waitUntilFinished:1];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __41__WCSession_outstandingUserInfoTransfers__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 112) allValues];

  return MEMORY[0x2821F96F8]();
}

- (void)onqueue_setCurrentComplicationUserInfoTransfer:(id)transfer
{
  transferCopy = transfer;
  [(WCSessionUserInfoTransfer *)self->_currentComplicationUserInfoTransfer setCurrentComplicationInfo:0];
  currentComplicationUserInfoTransfer = self->_currentComplicationUserInfoTransfer;
  self->_currentComplicationUserInfoTransfer = transferCopy;
}

- (void)onqueue_loadOutstandingUserInfoTransfers
{
  v3 = +[WCFileStorage sharedInstance];
  v7 = 0;
  v4 = [v3 loadOutstandingUserInfoTransfersAndComplicationUserInfo:&v7];
  v5 = v7;
  [(WCSession *)self setInternalOutstandingUserInfoTransfers:v4];

  currentComplicationUserInfoTransfer = self->_currentComplicationUserInfoTransfer;
  self->_currentComplicationUserInfoTransfer = v5;
}

- (id)onqueue_addOutstandingUserInfoTransfer:(id)transfer
{
  if (transfer)
  {
    transferCopy = transfer;
    [(WCSession *)self willChangeValueForKey:@"outstandingUserInfoTransfers"];
    internalOutstandingUserInfoTransfers = self->_internalOutstandingUserInfoTransfers;
    transferIdentifier = [transferCopy transferIdentifier];
    [(NSMutableDictionary *)internalOutstandingUserInfoTransfers setObject:transferCopy forKeyedSubscript:transferIdentifier];

    [(WCSession *)self didChangeValueForKey:@"outstandingUserInfoTransfers"];
    v7 = +[WCFileStorage sharedInstance];
    v8 = [v7 persistOutgoingUserInfoTransfer:transferCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)onqueue_removeOutstandingUserInfoTransfer:(id)transfer
{
  transferCopy = transfer;
  if (transferCopy)
  {
    pairingID = [(WCSession *)self pairingID];

    if (pairingID)
    {
      internalOutstandingFileTransfers = [(WCSession *)self internalOutstandingFileTransfers];
      transferIdentifier = [transferCopy transferIdentifier];
      v9 = [internalOutstandingFileTransfers objectForKeyedSubscript:transferIdentifier];

      if (v9)
      {
        [(WCSession *)self willChangeValueForKey:@"outstandingUserInfoTransfers"];
        internalOutstandingUserInfoTransfers = self->_internalOutstandingUserInfoTransfers;
        transferIdentifier2 = [transferCopy transferIdentifier];
        [(NSMutableDictionary *)internalOutstandingUserInfoTransfers removeObjectForKey:transferIdentifier2];

        [(WCSession *)self didChangeValueForKey:@"outstandingUserInfoTransfers"];
      }

      else
      {
        v13 = self->_internalOutstandingUserInfoTransfers;
        transferIdentifier3 = [transferCopy transferIdentifier];
        [(NSMutableDictionary *)v13 removeObjectForKey:transferIdentifier3];
      }

      v12 = +[WCFileStorage sharedInstance];
      [v12 deleteOutstandingUserInfoTransfer:transferCopy];
    }

    else
    {
      v12 = wc_log(v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WCSession onqueue_removeOutstandingUserInfoTransfer:];
      }
    }
  }
}

- (NSArray)outstandingFileTransfers
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = MEMORY[0x277CBEBF8];
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__WCSession_outstandingFileTransfers__block_invoke;
  v8[3] = &unk_278B7BFA0;
  v8[4] = self;
  v8[5] = &v9;
  [v3 addExecutionBlock:v8];
  workOperationQueue = self->_workOperationQueue;
  v15[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [(NSOperationQueue *)workOperationQueue addOperations:v5 waitUntilFinished:1];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __37__WCSession_outstandingFileTransfers__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 120) allValues];

  return MEMORY[0x2821F96F8]();
}

- (void)onqueue_loadOutstandingFileTransfers
{
  v3 = +[WCFileStorage sharedInstance];
  loadOutstandingFileTransfers = [v3 loadOutstandingFileTransfers];
  [(WCSession *)self setInternalOutstandingFileTransfers:loadOutstandingFileTransfers];

  [(WCSession *)self onqueue_loadFileTransferProgress];
}

- (void)onqueue_addOutstandingFileTransfer:(id)transfer
{
  if (transfer)
  {
    transferCopy = transfer;
    [(WCSession *)self willChangeValueForKey:@"outstandingFileTransfers"];
    internalOutstandingFileTransfers = self->_internalOutstandingFileTransfers;
    transferIdentifier = [transferCopy transferIdentifier];
    [(NSMutableDictionary *)internalOutstandingFileTransfers setObject:transferCopy forKeyedSubscript:transferIdentifier];

    [(WCSession *)self didChangeValueForKey:@"outstandingFileTransfers"];
    v7 = +[WCFileStorage sharedInstance];
    [v7 persistOutgoingFileTransfer:transferCopy];
  }
}

- (void)onqueue_removeOutstandingFileTransfer:(id)transfer
{
  transferCopy = transfer;
  if (transferCopy)
  {
    pairingID = [(WCSession *)self pairingID];

    if (pairingID)
    {
      internalOutstandingFileTransfers = [(WCSession *)self internalOutstandingFileTransfers];
      transferIdentifier = [transferCopy transferIdentifier];
      v9 = [internalOutstandingFileTransfers objectForKeyedSubscript:transferIdentifier];

      if (v9)
      {
        [(WCSession *)self willChangeValueForKey:@"outstandingFileTransfers"];
        internalOutstandingFileTransfers = self->_internalOutstandingFileTransfers;
        transferIdentifier2 = [transferCopy transferIdentifier];
        [(NSMutableDictionary *)internalOutstandingFileTransfers removeObjectForKey:transferIdentifier2];

        [(WCSession *)self didChangeValueForKey:@"outstandingFileTransfers"];
      }

      else
      {
        v13 = self->_internalOutstandingFileTransfers;
        transferIdentifier3 = [transferCopy transferIdentifier];
        [(NSMutableDictionary *)v13 removeObjectForKey:transferIdentifier3];
      }

      v12 = +[WCFileStorage sharedInstance];
      [v12 deleteOutstandingFileTransfer:transferCopy];
    }

    else
    {
      v12 = wc_log(v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WCSession onqueue_removeOutstandingUserInfoTransfer:];
      }
    }
  }
}

- (void)onqueue_loadFileTransferProgress
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = wc_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    internalOutstandingFileTransfers = [(WCSession *)self internalOutstandingFileTransfers];
    *buf = 136446466;
    v17 = "[WCSession onqueue_loadFileTransferProgress]";
    v18 = 2050;
    v19 = [internalOutstandingFileTransfers count];
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s for number of file transfers %{public}ld", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  internalOutstandingFileTransfers2 = [(WCSession *)self internalOutstandingFileTransfers];
  allValues = [internalOutstandingFileTransfers2 allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(WCSession *)self onqueue_createProgressForFileTransfer:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)onqueue_createProgressForFileTransfer:(id)transfer
{
  v23 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CCAC48];
  file = [transferCopy file];
  fileURL = [file fileURL];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke;
  v14 = &unk_278B7C040;
  v8 = transferCopy;
  v15 = v8;
  selfCopy = self;
  objc_copyWeak(&v17, &location);
  v9 = [v5 _addSubscriberForFileURL:fileURL withPublishingHandler:&v11];

  v10 = wc_log([v8 setProgressToken:{v9, v11, v12, v13, v14}]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[WCSession onqueue_createProgressForFileTransfer:]";
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_23B2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Created progress for %{public}@", buf, 0x16u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

id __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"IDSSendResourceProgressIdentifier"];

  v6 = [*(a1 + 32) transferIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = *(*(a1 + 40) + 88);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke_2;
    v19[3] = &unk_278B7BFC8;
    objc_copyWeak(&v22, (a1 + 48));
    v20 = *(a1 + 32);
    v21 = v3;
    [v8 addOperationWithBlock:v19];

    objc_destroyWeak(&v22);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke_3;
  v13[3] = &unk_278B7C018;
  v18 = v7;
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v10 = v5;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 32);
  v11 = MEMORY[0x23EE9A170](v13);

  objc_destroyWeak(&v17);

  return v11;
}

void __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained onqueue_updateProgressForFileTransfer:*(a1 + 32) progress:*(a1 + 40)];
}

void __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = wc_log(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 136446466;
      v9 = "[WCSession onqueue_createProgressForFileTransfer:]_block_invoke_3";
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s Progress unpublished for transfer %{public}@", buf, 0x16u);
    }

    v4 = *(*(a1 + 40) + 88);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke_47;
    v5[3] = &unk_278B7BFF0;
    objc_copyWeak(&v7, (a1 + 56));
    v6 = *(a1 + 48);
    [v4 addOperationWithBlock:v5];

    objc_destroyWeak(&v7);
  }
}

void __51__WCSession_onqueue_createProgressForFileTransfer___block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onqueue_removeProgressForFileTransfer:*(a1 + 32)];
}

- (void)onqueue_updateProgressForFileTransfer:(id)transfer progress:(id)progress
{
  v18 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  progressCopy = progress;
  v8 = wc_log(progressCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    transferIdentifier = [transferCopy transferIdentifier];
    v14 = 136446466;
    v15 = "[WCSession onqueue_updateProgressForFileTransfer:progress:]";
    v16 = 2114;
    v17 = transferIdentifier;
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Updating progress for %{public}@", &v14, 0x16u);
  }

  if (transferCopy)
  {
    [transferCopy setInternalProgress:progressCopy];
    [transferCopy addObserver:self forKeyPath:@"internalProgress.userInfo.NSProgressByteCompletedCountKey" options:1 context:0];
    [transferCopy addObserver:self forKeyPath:@"internalProgress.finished" options:1 context:0];
    [transferCopy addObserver:self forKeyPath:@"internalProgress.cancelled" options:1 context:0];
    v11 = wc_log([(WCSession *)self onqueue_updateClientProgressForFileTransfer:transferCopy]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      internalProgress = [transferCopy internalProgress];
      v14 = 136446466;
      v15 = "[WCSession onqueue_updateProgressForFileTransfer:progress:]";
      v16 = 2112;
      v17 = internalProgress;
      v13 = "%{public}s Added observer for progress %@";
LABEL_8:
      _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
    }
  }

  else
  {
    v11 = wc_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      internalProgress = [0 transferIdentifier];
      v14 = 136446466;
      v15 = "[WCSession onqueue_updateProgressForFileTransfer:progress:]";
      v16 = 2114;
      v17 = internalProgress;
      v13 = "%{public}s Missing item for publish callback (identifier: %{public}@)";
      goto LABEL_8;
    }
  }
}

- (void)onqueue_removeProgressForFileTransfer:(id)transfer
{
  v20 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  progress = [transferCopy progress];
  isFinished = [progress isFinished];

  if (isFinished)
  {
    progressToken = [transferCopy progressToken];

    v9 = wc_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (progressToken)
    {
      if (v10)
      {
        v16 = 136446466;
        v17 = "[WCSession onqueue_removeProgressForFileTransfer:]";
        v18 = 2114;
        v19 = transferCopy;
        _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Removing progress for transfer %{public}@", &v16, 0x16u);
      }

      internalProgress = [transferCopy internalProgress];

      if (internalProgress)
      {
        v13 = wc_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136446210;
          v17 = "[WCSession onqueue_removeProgressForFileTransfer:]";
          _os_log_impl(&dword_23B2FA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Removing progress observers", &v16, 0xCu);
        }

        [transferCopy removeObserver:self forKeyPath:@"internalProgress.userInfo.NSProgressByteCompletedCountKey"];
        [transferCopy removeObserver:self forKeyPath:@"internalProgress.finished"];
        [transferCopy removeObserver:self forKeyPath:@"internalProgress.cancelled"];
      }

      v14 = MEMORY[0x277CCAC48];
      progressToken2 = [transferCopy progressToken];
      [v14 _removeSubscriber:progressToken2];

      [transferCopy setProgressToken:0];
    }

    else
    {
      if (v10)
      {
        v16 = 136446466;
        v17 = "[WCSession onqueue_removeProgressForFileTransfer:]";
        v18 = 2114;
        v19 = transferCopy;
        _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Missing item to remove (identifier: %{public}@)", &v16, 0x16u);
      }
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  workOperationQueue = self->_workOperationQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__WCSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v13[3] = &unk_278B7C068;
  v14 = objectCopy;
  v15 = pathCopy;
  selfCopy = self;
  v11 = pathCopy;
  v12 = objectCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v13];
}

void __60__WCSession_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && (isKindOfClass = a1[4]) != 0)
  {
    v4 = isKindOfClass;
    v5 = [isKindOfClass internalProgress];
    v6 = [v5 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"IDSSendResourceProgressIdentifier"];

    v8 = [v4 transferIdentifier];
    LODWORD(v6) = [v7 isEqualToString:v8];

    if (v6)
    {
      if ([a1[5] isEqual:@"internalProgress.userInfo.NSProgressByteCompletedCountKey"])
      {
        [a1[6] onqueue_updateClientProgressForFileTransfer:v4];
      }

      else if ([a1[5] isEqual:@"internalProgress.finished"])
      {
        [a1[6] onqueue_handleProgressFinishedForFileTransfer:v4];
      }

      else
      {
        v9 = [a1[5] isEqual:@"internalProgress.cancelled"];
        if (v9)
        {
          v10 = wc_log(v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 136446466;
            v12 = "[WCSession observeValueForKeyPath:ofObject:change:context:]_block_invoke";
            v13 = 2112;
            v14 = v7;
            _os_log_impl(&dword_23B2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Progress cancelled for identifier %@", &v11, 0x16u);
          }
        }
      }
    }
  }

  else
  {
    v4 = wc_log(isKindOfClass);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__WCSession_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
    }
  }
}

- (void)onqueue_updateClientProgressForFileTransfer:(id)transfer
{
  v34 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  internalOutstandingFileTransfers = [(WCSession *)self internalOutstandingFileTransfers];
  transferIdentifier = [transferCopy transferIdentifier];
  v7 = [internalOutstandingFileTransfers objectForKeyedSubscript:transferIdentifier];

  if (v7)
  {
    internalProgress = [transferCopy internalProgress];
    userInfo = [internalProgress userInfo];
    v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA608]];

    internalProgress2 = [transferCopy internalProgress];
    byteCompletedCount = [internalProgress2 byteCompletedCount];

    v15 = wc_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      internalProgress3 = [transferCopy internalProgress];
      userInfo2 = [internalProgress3 userInfo];
      internalProgress4 = [transferCopy internalProgress];
      v26 = 138413058;
      v27 = v11;
      v28 = 2112;
      v29 = byteCompletedCount;
      v30 = 2112;
      v31 = userInfo2;
      v32 = 2112;
      v33 = internalProgress4;
      _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "Got totalBytes: %@, completedBytes: %@, userInfo: %@, progress: %@", &v26, 0x2Au);
    }

    progress = [transferCopy progress];
    [byteCompletedCount doubleValue];
    v21 = v20;
    [v11 doubleValue];
    totalUnitCount = (v21 / v22 * [progress totalUnitCount]);
    if ([progress totalUnitCount] < totalUnitCount)
    {
      totalUnitCount = [progress totalUnitCount];
    }

    v24 = wc_log([progress setCompletedUnitCount:totalUnitCount]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      transferIdentifier2 = [transferCopy transferIdentifier];
      v26 = 136446722;
      v27 = "[WCSession onqueue_updateClientProgressForFileTransfer:]";
      v28 = 2114;
      v29 = transferIdentifier2;
      v30 = 2114;
      v31 = progress;
      _os_log_impl(&dword_23B2FA000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s Updated progress for identifier: %{public}@, to %{public}@", &v26, 0x20u);
    }

    goto LABEL_11;
  }

  v11 = wc_log(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    byteCompletedCount = [transferCopy transferIdentifier];
    v26 = 136446466;
    v27 = "[WCSession onqueue_updateClientProgressForFileTransfer:]";
    v28 = 2114;
    v29 = byteCompletedCount;
    _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s Received progress for identifier: %{public}@, without outstanding tranfer", &v26, 0x16u);
LABEL_11:
  }
}

- (void)onqueue_handleProgressFinishedForFileTransfer:(id)transfer
{
  v13 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  transferIdentifier = [transferCopy transferIdentifier];
  v5 = wc_log(transferIdentifier);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[WCSession onqueue_handleProgressFinishedForFileTransfer:]";
    v11 = 2114;
    v12 = transferIdentifier;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s Progress finished for identifier %{public}@", &v9, 0x16u);
  }

  progress = [transferCopy progress];

  if (progress)
  {
    if (([progress isFinished] & 1) == 0)
    {
      isCancelled = [progress isCancelled];
      if ((isCancelled & 1) == 0)
      {
        v8 = wc_log(isCancelled);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136446466;
          v10 = "[WCSession onqueue_handleProgressFinishedForFileTransfer:]";
          v11 = 2114;
          v12 = transferIdentifier;
          _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Forcing progress to finished for %{public}@", &v9, 0x16u);
        }

        [progress setCompletedUnitCount:{objc_msgSend(progress, "totalUnitCount")}];
      }
    }
  }
}

- (void)sendMessage:(NSDictionary *)message replyHandler:(void *)replyHandler errorHandler:(void *)errorHandler
{
  v8 = message;
  v9 = replyHandler;
  v10 = errorHandler;
  if (!v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession sendMessage:replyHandler:errorHandler:]", "message"];
    v12 = wc_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v11 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v11}];
  }

  v13 = _os_activity_create(&dword_23B2FA000, "sendMessage:replyHandler:errorHandler:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WCSession_sendMessage_replyHandler_errorHandler___block_invoke;
  block[3] = &unk_278B7C0B8;
  v19 = v9;
  v20 = v10;
  block[4] = self;
  v18 = v8;
  v14 = v8;
  v15 = v10;
  v16 = v9;
  os_activity_apply(v13, block);
}

void __51__WCSession_sendMessage_replyHandler_errorHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "YES";
    v4 = *(a1 + 56);
    v5 = *(a1 + 48) == 0;
    v17 = "[WCSession sendMessage:replyHandler:errorHandler:]_block_invoke";
    if (v5)
    {
      v6 = "NO";
    }

    else
    {
      v6 = "YES";
    }

    *buf = 136446722;
    v18 = 2080;
    if (!v4)
    {
      v3 = "NO";
    }

    v19 = v6;
    v20 = 2080;
    v21 = v3;
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s hasReplyHandler: %s, hasErrorHandler: %s", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__WCSession_sendMessage_replyHandler_errorHandler___block_invoke_66;
  v13[3] = &unk_278B7C090;
  v12 = *(a1 + 32);
  v7 = *(v12 + 88);
  v8 = *(&v12 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  [v7 addOperationWithBlock:v13];
}

void __51__WCSession_sendMessage_replyHandler_errorHandler___block_invoke_66(uint64_t a1)
{
  v2 = [*(a1 + 32) errorIfPreconditionsNotSatisfied];
  if (v2 || ([*(a1 + 32) errorIfNotReachable], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    [*(a1 + 32) _onqueue_notifyOfMessageError:v2 messageID:0 withErrorHandler:*(a1 + 56)];
  }

  else
  {
    v4 = *(a1 + 40);
    v8 = 0;
    v5 = WCSerializePayloadDictionary(v4, &v8);
    v3 = v8;
    v6 = *(a1 + 32);
    if (v5)
    {
      [*(a1 + 32) onqueue_sendMessageData:v5 replyHandler:*(a1 + 48) errorHandler:*(a1 + 56) dictionaryMessage:1];
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7010];
      [v6 _onqueue_notifyOfMessageError:v7 messageID:0 withErrorHandler:*(a1 + 56)];
    }
  }
}

- (void)sendMessageData:(NSData *)data replyHandler:(void *)replyHandler errorHandler:(void *)errorHandler
{
  v8 = data;
  v9 = replyHandler;
  v10 = errorHandler;
  if (!v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession sendMessageData:replyHandler:errorHandler:]", "data"];
    v12 = wc_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v11 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v11}];
  }

  v13 = _os_activity_create(&dword_23B2FA000, "sendMessageData:replyHandler:errorHandler:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WCSession_sendMessageData_replyHandler_errorHandler___block_invoke;
  block[3] = &unk_278B7C0B8;
  v19 = v9;
  v20 = v10;
  block[4] = self;
  v18 = v8;
  v14 = v8;
  v15 = v10;
  v16 = v9;
  os_activity_apply(v13, block);
}

void __55__WCSession_sendMessageData_replyHandler_errorHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "YES";
    v4 = *(a1 + 56);
    v5 = *(a1 + 48) == 0;
    v17 = "[WCSession sendMessageData:replyHandler:errorHandler:]_block_invoke";
    if (v5)
    {
      v6 = "NO";
    }

    else
    {
      v6 = "YES";
    }

    *buf = 136446722;
    v18 = 2080;
    if (!v4)
    {
      v3 = "NO";
    }

    v19 = v6;
    v20 = 2080;
    v21 = v3;
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s hasReplyHandler: %s, hasErrorHandler: %s", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__WCSession_sendMessageData_replyHandler_errorHandler___block_invoke_69;
  v13[3] = &unk_278B7C090;
  v12 = *(a1 + 32);
  v7 = *(v12 + 88);
  v8 = *(&v12 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  [v7 addOperationWithBlock:v13];
}

void __55__WCSession_sendMessageData_replyHandler_errorHandler___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) errorIfPreconditionsNotSatisfied];
  if (v2 || ([*(a1 + 32) errorIfNotReachable], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v2;
    [*(a1 + 32) _onqueue_notifyOfMessageError:v2 messageID:0 withErrorHandler:*(a1 + 56)];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v3 onqueue_sendMessageData:v4 replyHandler:v5 errorHandler:v6 dictionaryMessage:0];
  }
}

- (void)onqueue_sendMessageData:(id)data replyHandler:(id)handler errorHandler:(id)errorHandler dictionaryMessage:(BOOL)message
{
  messageCopy = message;
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if (WCIsDataAcceptableSizeForType(0, dataCopy))
  {
    v13 = objc_opt_new();
    uUIDString = [v13 UUIDString];

    if (handlerCopy | errorHandlerCopy)
    {
      v15 = off_278B7BCB8;
      if (!messageCopy)
      {
        v15 = off_278B7BCB0;
      }

      v16 = [objc_alloc(*v15) initWithIdentifier:uUIDString responseHandler:handlerCopy errorHandler:errorHandlerCopy];
      [(NSMutableDictionary *)self->_currentMessages setObject:v16 forKeyedSubscript:uUIDString];
      if (handlerCopy)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __81__WCSession_onqueue_sendMessageData_replyHandler_errorHandler_dictionaryMessage___block_invoke;
        v31[3] = &unk_278B7C068;
        v17 = v16;
        v32 = v17;
        selfCopy = self;
        v34 = uUIDString;
        v18 = [(WCSession *)self createAndStartTimerOnWorkQueueWithHandler:v31];
        [v17 setTimeoutTimer:v18];
      }
    }

    v19 = [WCMessageRequest alloc];
    pairingID = [(WCSession *)self pairingID];
    v21 = [(WCMessageRequest *)v19 initWithPairingID:pairingID identifier:uUIDString data:dataCopy dictionaryMessage:messageCopy expectsResponse:handlerCopy != 0];

    v23 = wc_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [dataCopy length];
      *buf = 136446722;
      v36 = "[WCSession onqueue_sendMessageData:replyHandler:errorHandler:dictionaryMessage:]";
      v37 = 2048;
      v38 = v24;
      v39 = 2114;
      v40 = uUIDString;
      _os_log_impl(&dword_23B2FA000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s size: %ld, messageID: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    queueManager = [(WCSession *)self queueManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__WCSession_onqueue_sendMessageData_replyHandler_errorHandler_dictionaryMessage___block_invoke_74;
    v28[3] = &unk_278B7C0E0;
    v28[4] = self;
    objc_copyWeak(&v30, buf);
    v26 = uUIDString;
    v29 = v26;
    [queueManager sendMessage:v21 completionHandler:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7009];
    [(WCSession *)self _onqueue_notifyOfMessageError:v27 messageID:0 withErrorHandler:errorHandlerCopy];
  }
}

void __81__WCSession_onqueue_sendMessageData_replyHandler_errorHandler_dictionaryMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timeoutTimer];
  dispatch_source_cancel(v2);

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7012];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) errorHandler];
  [v3 _onqueue_notifyOfMessageError:v4 messageID:v5 withErrorHandler:v6];

  v7 = [*(a1 + 32) identifier];

  if (v7)
  {
    v9 = [*(a1 + 40) currentMessages];
    v8 = [*(a1 + 32) identifier];
    [v9 removeObjectForKey:v8];
  }
}

void __81__WCSession_onqueue_sendMessageData_replyHandler_errorHandler_dictionaryMessage___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__WCSession_onqueue_sendMessageData_replyHandler_errorHandler_dictionaryMessage___block_invoke_2;
  v6[3] = &unk_278B7BFC8;
  objc_copyWeak(&v9, (a1 + 48));
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 40);
  [v4 addOperationWithBlock:v6];

  objc_destroyWeak(&v9);
}

void __81__WCSession_onqueue_sendMessageData_replyHandler_errorHandler_dictionaryMessage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained onqueue_handleMessageCompletionWithError:*(a1 + 32) withMessageID:*(a1 + 40)];
}

- (BOOL)updateApplicationContext:(NSDictionary *)applicationContext error:(NSError *)error
{
  v6 = applicationContext;
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession updateApplicationContext:error:]", "applicationContext"];
    v8 = wc_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v7 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v7}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = _os_activity_create(&dword_23B2FA000, "updateApplicationContext:error:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WCSession_updateApplicationContext_error___block_invoke;
  block[3] = &unk_278B7C128;
  block[4] = self;
  v14 = v6;
  v15 = &v17;
  v16 = error;
  v10 = v6;
  os_activity_apply(v9, block);
  v11 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __44__WCSession_updateApplicationContext_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[WCSession updateApplicationContext:error:]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.facebook.Messenger"];

  v6 = [*(a1 + 32) errorIfPreconditionsNotSatisfied];
  v7 = v6;
  if (!v6 && (v5 & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) applicationContext];
    LOBYTE(v8) = [v8 isEqual:v9];

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = wc_log(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, "no change", buf, 2u);
    }

    goto LABEL_17;
  }

  if (v6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = *(a1 + 40);
  v24 = v7;
  v11 = WCSerializePayloadDictionary(v10, &v24);
  v12 = v24;

  if (!v11)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = 7010;
LABEL_16:
    v7 = [v18 wcErrorWithCode:v19];

LABEL_17:
    v12 = v7;
    goto LABEL_18;
  }

  v13 = WCIsDataAcceptableSizeForType(1, v11);
  if (!v13)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = 7009;
    goto LABEL_16;
  }

  v14 = wc_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 length];
    *buf = 136446466;
    v26 = "[WCSession updateApplicationContext:error:]_block_invoke";
    v27 = 2048;
    v28 = v15;
    _os_log_impl(&dword_23B2FA000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s size: %ld", buf, 0x16u);
  }

  v16 = +[WCXPCManager sharedManager];
  v17 = [*(a1 + 32) pairingID];
  [v16 updateApplicationContext:v11 clientPairingID:v17 errorHandler:&__block_literal_global];

  [*(a1 + 32) storeAppContext:*(a1 + 40) withAppContextData:v11];
LABEL_18:

  if (v12)
  {
    v21 = wc_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __44__WCSession_updateApplicationContext_error___block_invoke_cold_1();
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v22;
  if (*(a1 + 56))
  {
    v23 = v12;
    **(a1 + 56) = v12;
  }
}

void __44__WCSession_updateApplicationContext_error___block_invoke_80(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = wc_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__WCSession_updateApplicationContext_error___block_invoke_80_cold_1();
    }
  }
}

- (WCSessionFileTransfer)transferFile:(NSURL *)file metadata:(NSDictionary *)metadata
{
  v6 = file;
  v7 = metadata;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession transferFile:metadata:]", "file"];
    v9 = wc_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v8 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v8}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v10 = _os_activity_create(&dword_23B2FA000, "transferFile:metadata:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WCSession_transferFile_metadata___block_invoke;
  block[3] = &unk_278B7C1A0;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v18 = &v19;
  v11 = v7;
  v12 = v6;
  os_activity_apply(v10, block);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __35__WCSession_transferFile_metadata___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[WCSession transferFile:metadata:]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  v3 = [*(a1 + 32) errorIfPreconditionsNotSatisfied];
  v4 = [[WCSessionFile alloc] initWithFileURL:*(a1 + 40)];
  v5 = [[WCSessionFileTransfer alloc] initWithFile:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v3 || *(a1 + 48) && ([*(*(*(a1 + 56) + 8) + 40) file], v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 48), v28 = 0, objc_msgSend(v10, "updateUserInfo:error:", v11, &v28), v3 = v28, v10, v3))
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 56) + 8) + 40);
  }

  else
  {
    if (WCIsFileDirectory(*(a1 + 40)))
    {
      v12 = *(a1 + 32);
      v13 = MEMORY[0x277CCA9B8];
      v14 = 7008;
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = getpid();
      v17 = WCCheckFileAndCreateExtensionForProcess(v15, v16);
      if (v17)
      {
        v18 = v17;
        [*(*(*(a1 + 56) + 8) + 40) setTransferring:1];
        v20 = *(a1 + 32);
        v19 = *(a1 + 40);
        v21 = *(v20 + 88);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __35__WCSession_transferFile_metadata___block_invoke_83;
        v24[3] = &unk_278B7C1A0;
        v24[4] = v20;
        v22 = v19;
        v23 = *(a1 + 56);
        v26 = v18;
        v27 = v23;
        v25 = v22;
        v3 = v18;
        [v21 addOperationWithBlock:v24];

        goto LABEL_6;
      }

      v12 = *(a1 + 32);
      v13 = MEMORY[0x277CCA9B8];
      v14 = 7013;
    }

    v3 = [v13 wcErrorWithCode:v14];
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v8 = v12;
  }

  [v8 notifyOfFileError:v3 withFileTransfer:v9];
LABEL_6:
}

void __35__WCSession_transferFile_metadata___block_invoke_83(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fileSizeFromURL:*(a1 + 40)];
  v3 = wc_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 136446722;
    v21 = "[WCSession transferFile:metadata:]_block_invoke";
    v22 = 2114;
    v23 = v4;
    v24 = 2048;
    v25 = [v2 integerValue];
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s fileTransfer: %{public}@ fileSize: %ld", buf, 0x20u);
  }

  v5 = [*(*(*(a1 + 56) + 8) + 40) file];
  [v5 setFileSize:v2];

  v6 = objc_opt_new();
  [*(*(*(a1 + 56) + 8) + 40) setTransferDate:v6];

  v7 = [*(*(*(a1 + 56) + 8) + 40) file];
  v8 = [v7 fileURL];

  v9 = MEMORY[0x277CCA9F8];
  v10 = [v8 path];
  v11 = [v9 fileHandleForReadingAtPath:v10];

  v12 = [*(*(*(a1 + 56) + 8) + 40) file];
  [v12 setFileDescriptor:v11];

  [*(a1 + 32) onqueue_addOutstandingFileTransfer:*(*(*(a1 + 56) + 8) + 40)];
  objc_initWeak(buf, *(a1 + 32));
  v13 = +[WCXPCManager sharedManager];
  v14 = *(a1 + 48);
  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = [*(a1 + 32) pairingID];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__WCSession_transferFile_metadata___block_invoke_86;
  v18[3] = &unk_278B7C178;
  v17 = *(a1 + 56);
  v18[4] = *(a1 + 32);
  v18[5] = v17;
  objc_copyWeak(&v19, buf);
  [v13 transferFile:v15 sandboxToken:v14 clientPairingID:v16 errorHandler:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __35__WCSession_transferFile_metadata___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__WCSession_transferFile_metadata___block_invoke_2;
  v8[3] = &unk_278B7C150;
  v6 = *(a1 + 40);
  v8[4] = v4;
  v10 = v6;
  v7 = v3;
  v9 = v7;
  objc_copyWeak(&v11, (a1 + 48));
  [v5 addOperationWithBlock:v8];
  objc_destroyWeak(&v11);
}

void __35__WCSession_transferFile_metadata___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOutstandingFileTransfers];
  v3 = [*(*(*(a1 + 48) + 8) + 40) transferIdentifier];
  v7 = [v2 objectForKeyedSubscript:v3];

  if (v7)
  {
    v4 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = WeakRetained;
    if (v4)
    {
      [WeakRetained onqueue_notifyOfFileError:*(a1 + 40) withFileTransfer:v7];
    }

    else
    {
      [WeakRetained onqueue_createProgressForFileTransfer:v7];
    }
  }
}

- (void)cancelFileTransfer:(id)transfer
{
  v14 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v5 = wc_log(transferCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[WCSession cancelFileTransfer:]";
    v12 = 2114;
    v13 = transferCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  errorIfPreconditionsNotSatisfied = [(WCSession *)self errorIfPreconditionsNotSatisfied];

  if (!errorIfPreconditionsNotSatisfied)
  {
    workOperationQueue = self->_workOperationQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__WCSession_cancelFileTransfer___block_invoke;
    v8[3] = &unk_278B7C1C8;
    v8[4] = self;
    v9 = transferCopy;
    [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v8];
  }
}

void __32__WCSession_cancelFileTransfer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOutstandingFileTransfers];
  v3 = [v2 allValues];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 onqueue_cancelFileTransfer:v6];
  }
}

- (void)onqueue_cancelFileTransfer:(id)transfer
{
  v13 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  [transferCopy setTransferring:0];
  v5 = wc_log([(WCSession *)self onqueue_removeOutstandingFileTransfer:transferCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    transferIdentifier = [transferCopy transferIdentifier];
    v9 = 136446466;
    v10 = "[WCSession onqueue_cancelFileTransfer:]";
    v11 = 2114;
    v12 = transferIdentifier;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s transferIdentifier: %{public}@", &v9, 0x16u);
  }

  v7 = +[WCXPCManager sharedManager];
  transferIdentifier2 = [transferCopy transferIdentifier];
  [v7 cancelSendWithIdentifier:transferIdentifier2];
}

- (WCSessionUserInfoTransfer)transferUserInfo:(NSDictionary *)userInfo
{
  v4 = userInfo;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession transferUserInfo:]", "userInfo"];
    v6 = wc_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v5 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v5}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = _os_activity_create(&dword_23B2FA000, "transferUserInfo:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WCSession_transferUserInfo___block_invoke;
  block[3] = &unk_278B7C218;
  v12 = v4;
  v13 = &v14;
  block[4] = self;
  v8 = v4;
  os_activity_apply(v7, block);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __30__WCSession_transferUserInfo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[WCSession transferUserInfo:]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  v3 = objc_opt_new();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__WCSession_transferUserInfo___block_invoke_89;
  v10[3] = &unk_278B7C1F0;
  v10[4] = v6;
  v9 = *(a1 + 40);
  v8 = v9;
  v11 = v9;
  [v7 addOperationWithBlock:v10];
}

- (WCSessionUserInfoTransfer)transferCurrentComplicationUserInfo:(NSDictionary *)userInfo
{
  v4 = userInfo;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession transferCurrentComplicationUserInfo:]", "userInfo"];
    v6 = wc_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v5 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v5}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = _os_activity_create(&dword_23B2FA000, "sendMessage:replyHandler:errorHandler:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WCSession_transferCurrentComplicationUserInfo___block_invoke;
  block[3] = &unk_278B7C218;
  v12 = v4;
  v13 = &v14;
  block[4] = self;
  v8 = v4;
  os_activity_apply(v7, block);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __49__WCSession_transferCurrentComplicationUserInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[WCSession transferCurrentComplicationUserInfo:]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  v3 = [WCSessionUserInfoTransfer alloc];
  v4 = objc_opt_new();
  v5 = [v4 UUIDString];
  v6 = [(WCSessionUserInfoTransfer *)v3 initWithComplicationTransferIdentifier:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__WCSession_transferCurrentComplicationUserInfo___block_invoke_90;
  v13[3] = &unk_278B7C1F0;
  v13[4] = v9;
  v12 = *(a1 + 40);
  v11 = v12;
  v14 = v12;
  [v10 addOperationWithBlock:v13];
}

uint64_t __49__WCSession_transferCurrentComplicationUserInfo___block_invoke_90(uint64_t a1)
{
  [*(a1 + 32) onqueue_setCurrentComplicationUserInfoTransfer:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = *(a1 + 32);

  return [v4 onqueue_transferUserInfo:v3 withUserInfo:v2];
}

- (void)cancelUserInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = wc_log(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[WCSession cancelUserInfo:]";
    v12 = 2114;
    v13 = infoCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  errorIfPreconditionsNotSatisfied = [(WCSession *)self errorIfPreconditionsNotSatisfied];

  if (!errorIfPreconditionsNotSatisfied)
  {
    workOperationQueue = self->_workOperationQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__WCSession_cancelUserInfo___block_invoke;
    v8[3] = &unk_278B7C1C8;
    v8[4] = self;
    v9 = infoCopy;
    [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v8];
  }
}

void __28__WCSession_cancelUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOutstandingUserInfoTransfers];
  v3 = [v2 allValues];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 onqueue_cancelUserInfo:v6];
  }
}

- (void)onqueue_cancelUserInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  [(WCSession *)self onqueue_removeOutstandingUserInfoTransfer:infoCopy];
  isCurrentComplicationInfo = [infoCopy isCurrentComplicationInfo];
  if (isCurrentComplicationInfo)
  {
    v6 = wc_log(isCurrentComplicationInfo);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      complicationTransferIdentifier = [infoCopy complicationTransferIdentifier];
      v14 = 136446466;
      v15 = "[WCSession onqueue_cancelUserInfo:]";
      v16 = 2114;
      v17 = complicationTransferIdentifier;
      _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s complicationTransferIdentifier: %{public}@", &v14, 0x16u);
    }

    v8 = +[WCXPCManager sharedManager];
    complicationTransferIdentifier2 = [infoCopy complicationTransferIdentifier];
    [v8 cancelSendWithIdentifier:complicationTransferIdentifier2];
  }

  v10 = wc_log(isCurrentComplicationInfo);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    transferIdentifier = [infoCopy transferIdentifier];
    v14 = 136446466;
    v15 = "[WCSession onqueue_cancelUserInfo:]";
    v16 = 2114;
    v17 = transferIdentifier;
    _os_log_impl(&dword_23B2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s transferIdentifier: %{public}@", &v14, 0x16u);
  }

  v12 = +[WCXPCManager sharedManager];
  transferIdentifier2 = [infoCopy transferIdentifier];
  [v12 cancelSendWithIdentifier:transferIdentifier2];
}

- (void)onqueue_transferUserInfo:(id)info withUserInfo:(id)userInfo
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  userInfoCopy = userInfo;
  v8 = wc_log(userInfoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "[WCSession onqueue_transferUserInfo:withUserInfo:]";
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  errorIfPreconditionsNotSatisfied = [(WCSession *)self errorIfPreconditionsNotSatisfied];
  if (errorIfPreconditionsNotSatisfied || (v20 = 0, v10 = [infoCopy updateUserInfo:userInfoCopy error:&v20], errorIfPreconditionsNotSatisfied = v20, !v10))
  {
    [(WCSession *)self onqueue_notifyOfUserInfoError:errorIfPreconditionsNotSatisfied withUserInfoTransfer:infoCopy];
  }

  else
  {
    v11 = [(WCSession *)self onqueue_addOutstandingUserInfoTransfer:infoCopy];
    if (v11)
    {
      v12 = [(WCSession *)self fileSizeFromURL:v11];
      v13 = wc_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        path = [v11 path];
        integerValue = [v12 integerValue];
        *buf = 136446978;
        v22 = "[WCSession onqueue_transferUserInfo:withUserInfo:]";
        v23 = 2114;
        v24 = infoCopy;
        v25 = 2114;
        v26 = path;
        v27 = 2048;
        v28 = integerValue;
        _os_log_impl(&dword_23B2FA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s transferUserInfo: %{public}@, withURL: %{public}@ fileSize: %ld", buf, 0x2Au);
      }

      v16 = +[WCXPCManager sharedManager];
      pairingID = [(WCSession *)self pairingID];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__WCSession_onqueue_transferUserInfo_withUserInfo___block_invoke;
      v18[3] = &unk_278B7BF50;
      v18[4] = self;
      v19 = infoCopy;
      [v16 transferUserInfo:v19 withURL:v11 clientPairingID:pairingID errorHandler:v18];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7001];
      [(WCSession *)self onqueue_notifyOfUserInfoError:v12 withUserInfoTransfer:infoCopy];
    }
  }
}

void __51__WCSession_onqueue_transferUserInfo_withUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 88);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__WCSession_onqueue_transferUserInfo_withUserInfo___block_invoke_2;
    v7[3] = &unk_278B7C068;
    v7[4] = v5;
    v8 = v4;
    v9 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __51__WCSession_onqueue_transferUserInfo_withUserInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOutstandingUserInfoTransfers];
  v3 = [*(a1 + 40) transferIdentifier];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) onqueue_notifyOfUserInfoError:*(a1 + 48) withUserInfoTransfer:v5];
    v4 = v5;
  }
}

- (void)onqueue_sendResponseDictionary:(id)dictionary identifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v8 = wc_log(dictionaryCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[WCSession onqueue_sendResponseDictionary:identifier:]";
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  v11 = 0;
  v9 = WCSerializePayloadDictionary(dictionaryCopy, &v11);

  if (v9)
  {
    [(WCSession *)self onqueue_sendResponseData:v9 identifier:identifierCopy dictionaryMessage:1];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7010];
    [(WCSession *)self _onqueue_sendResponseError:v10 identifier:identifierCopy dictionaryMessage:1];
  }
}

- (void)onqueue_sendResponseData:(id)data identifier:(id)identifier dictionaryMessage:(BOOL)message
{
  messageCopy = message;
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  if (WCIsDataAcceptableSizeForType(0, dataCopy))
  {
    v10 = [WCMessageResponse alloc];
    pairingID = [(WCSession *)self pairingID];
    v12 = [(WCMessage *)v10 initWithPairingID:pairingID identifier:identifierCopy data:dataCopy dictionaryMessage:messageCopy];

    v14 = wc_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [dataCopy length];
      v16 = "NO";
      v23 = "[WCSession onqueue_sendResponseData:identifier:dictionaryMessage:]";
      v24 = 2048;
      *buf = 136446978;
      v25 = v15;
      if (messageCopy)
      {
        v16 = "YES";
      }

      v26 = 2114;
      v27 = identifierCopy;
      v28 = 2080;
      v29 = v16;
      _os_log_impl(&dword_23B2FA000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s responseDataSize: %ld, identifier: %{public}@, isDictionaryMessage: %s", buf, 0x2Au);
    }

    queueManager = [(WCSession *)self queueManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__WCSession_onqueue_sendResponseData_identifier_dictionaryMessage___block_invoke;
    v20[3] = &unk_278B7C240;
    v21 = v12;
    v18 = v12;
    [queueManager sendMessage:v18 completionHandler:v20];
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7009];
    [(WCSession *)self _onqueue_sendResponseError:v19 identifier:identifierCopy dictionaryMessage:messageCopy];
  }
}

void __67__WCSession_onqueue_sendResponseData_identifier_dictionaryMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = wc_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__WCSession_onqueue_sendResponseData_identifier_dictionaryMessage___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136446466;
    v8 = "[WCSession onqueue_sendResponseData:identifier:dictionaryMessage:]_block_invoke";
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s succeeded for response %{public}@", &v7, 0x16u);
  }
}

- (void)_onqueue_sendResponseError:(id)error identifier:(id)identifier dictionaryMessage:(BOOL)message
{
  messageCopy = message;
  errorCopy = error;
  identifierCopy = identifier;
  v10 = wc_log(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [WCSession _onqueue_sendResponseError:identifierCopy identifier:errorCopy dictionaryMessage:?];
  }

  v11 = [WCMessageResponse alloc];
  pairingID = [(WCSession *)self pairingID];
  v13 = [(WCMessage *)v11 initWithPairingID:pairingID identifier:identifierCopy data:0 dictionaryMessage:messageCopy];

  [(WCMessageResponse *)v13 setError:errorCopy];
  queueManager = [(WCSession *)self queueManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__WCSession__onqueue_sendResponseError_identifier_dictionaryMessage___block_invoke;
  v16[3] = &unk_278B7C240;
  v17 = identifierCopy;
  v15 = identifierCopy;
  [queueManager sendMessage:v13 completionHandler:v16];
}

void __69__WCSession__onqueue_sendResponseError_identifier_dictionaryMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = wc_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__WCSession__onqueue_sendResponseError_identifier_dictionaryMessage___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136446466;
    v8 = "[WCSession _onqueue_sendResponseError:identifier:dictionaryMessage:]_block_invoke";
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ suceeded", &v7, 0x16u);
  }
}

- (void)storeAppContext:(id)context withAppContextData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dataCopy = data;
  v8 = wc_log(dataCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[WCSession storeAppContext:withAppContextData:]";
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  workOperationQueue = self->_workOperationQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__WCSession_storeAppContext_withAppContextData___block_invoke;
  v12[3] = &unk_278B7C068;
  v12[4] = self;
  v13 = contextCopy;
  v14 = dataCopy;
  v10 = dataCopy;
  v11 = contextCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v12];
}

void __48__WCSession_storeAppContext_withAppContextData___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 56) isEqual:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 32) setApplicationContext:*(a1 + 40)];
    v2 = +[WCFileStorage sharedInstance];
    [v2 persistAppContextData:*(a1 + 48) received:0];
  }
}

- (void)storeReceivedAppContext:(id)context withAppContextData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dataCopy = data;
  v8 = wc_log(dataCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[WCSession storeReceivedAppContext:withAppContextData:]";
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  workOperationQueue = self->_workOperationQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__WCSession_storeReceivedAppContext_withAppContextData___block_invoke;
  v12[3] = &unk_278B7C068;
  v12[4] = self;
  v13 = contextCopy;
  v14 = dataCopy;
  v10 = dataCopy;
  v11 = contextCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v12];
}

void __56__WCSession_storeReceivedAppContext_withAppContextData___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 64) isEqual:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 32) setReceivedApplicationContext:*(a1 + 40)];
    v2 = +[WCFileStorage sharedInstance];
    [v2 persistAppContextData:*(a1 + 48) received:1];
  }
}

- (NSDictionary)applicationContext
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = MEMORY[0x277CBEC10];
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__WCSession_applicationContext__block_invoke;
  v8[3] = &unk_278B7BFA0;
  v8[4] = self;
  v8[5] = &v9;
  [v3 addExecutionBlock:v8];
  workOperationQueue = self->_workOperationQueue;
  v15[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [(NSOperationQueue *)workOperationQueue addOperations:v5 waitUntilFinished:1];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (NSDictionary)receivedApplicationContext
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__WCSession_receivedApplicationContext__block_invoke;
  v8[3] = &unk_278B7BFA0;
  v8[4] = self;
  v8[5] = &v9;
  [v3 addExecutionBlock:v8];
  workOperationQueue = self->_workOperationQueue;
  v15[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [(NSOperationQueue *)workOperationQueue addOperations:v5 waitUntilFinished:1];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)onqueue_loadAppContexts
{
  v3 = +[WCFileStorage sharedInstance];
  v4 = [v3 loadAppContextReceived:0];
  [(WCSession *)self setApplicationContext:v4];

  v6 = +[WCFileStorage sharedInstance];
  v5 = [v6 loadAppContextReceived:1];
  [(WCSession *)self setReceivedApplicationContext:v5];
}

- (void)xpcConnectionInterrupted
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = wc_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[WCSession xpcConnectionInterrupted]";
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s ", &v5, 0xCu);
  }

  queueManager = [(WCSession *)self queueManager];
  [queueManager allowMessageSending];

  [(WCSession *)self setConnectionWasInterrupted:1];
}

- (void)handleActiveDeviceSwitchStarted
{
  workOperationQueue = self->_workOperationQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__WCSession_handleActiveDeviceSwitchStarted__block_invoke;
  v3[3] = &unk_278B7BF78;
  v3[4] = self;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v3];
}

void __44__WCSession_handleActiveDeviceSwitchStarted__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = wc_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WCSession handleActiveDeviceSwitchStarted]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s new switch task: %{public}@", &v5, 0x16u);
  }

  v4 = [*(a1 + 32) switchTasksQueue];
  [v4 addObject:v2];

  [*(a1 + 32) onqueue_startNextDeviceSwitch];
}

- (void)handleSessionStateChanged:(id)changed
{
  changedCopy = changed;
  workOperationQueue = self->_workOperationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WCSession_handleSessionStateChanged___block_invoke;
  v7[3] = &unk_278B7C1C8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v7];
}

void __39__WCSession_handleSessionStateChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = wc_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 136446466;
    v10 = "[WCSession handleSessionStateChanged:]_block_invoke";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v9, 0x16u);
  }

  v4 = [*(a1 + 40) switchTasksQueue];
  v5 = [v4 firstObject];

  if ([v5 taskState] == 999)
  {
    v6 = wc_log(999);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[WCSession handleSessionStateChanged:]_block_invoke";
      _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s dropping session state as client does not support Quick Watch Switch", &v9, 0xCu);
    }
  }

  else
  {
    v7 = [v5 taskState];
    v8 = *(a1 + 40);
    if (v7 == 4)
    {
      [v8 onqueue_handleUpdateSessionState:*(a1 + 32)];
      if ([*(a1 + 40) connectionWasInterrupted])
      {
        [*(a1 + 40) setConnectionWasInterrupted:0];
        [*(a1 + 40) xpcConnectionRestoredWithState:*(a1 + 32)];
      }
    }

    else
    {
      [v8 onqueue_completeSwitchTask:v5 withSessionState:*(a1 + 32)];
    }
  }
}

- (void)xpcConnectionRestoredWithState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = wc_log(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[WCSession xpcConnectionRestoredWithState:]";
    v16 = 2114;
    v17 = stateCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  objc_initWeak(buf, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__WCSession_xpcConnectionRestoredWithState___block_invoke;
  v10[3] = &unk_278B7BFC8;
  objc_copyWeak(&v13, buf);
  v7 = stateCopy;
  v11 = v7;
  selfCopy = self;
  [v6 addExecutionBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__WCSession_xpcConnectionRestoredWithState___block_invoke_92;
  v9[3] = &unk_278B7BF78;
  v9[4] = self;
  [v6 setCompletionBlock:v9];
  delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
  [delegateOperationQueue addOperation:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __44__WCSession_xpcConnectionRestoredWithState___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [a1[4] pairingID];
    v6 = a1[5];
    v5 = a1 + 5;
    v7 = [v6 pairingID];
    v8 = [v4 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v10 = wc_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __44__WCSession_xpcConnectionRestoredWithState___block_invoke_cold_1();
      }
    }

    v11 = [*v5 pairingID];
    [*v5 setHasContentPending:v11 != 0];

    v13 = wc_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*v5 hasContentPending];
      v15 = "NO";
      if (v14)
      {
        v15 = "YES";
      }

      v16 = 136446466;
      v17 = "[WCSession xpcConnectionRestoredWithState:]_block_invoke";
      v18 = 2080;
      v19 = v15;
      _os_log_impl(&dword_23B2FA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s hasContentPending: %s", &v16, 0x16u);
    }
  }
}

uint64_t __44__WCSession_xpcConnectionRestoredWithState___block_invoke_92(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__WCSession_xpcConnectionRestoredWithState___block_invoke_2;
  v4[3] = &unk_278B7BF78;
  v4[4] = v1;
  return [v2 addOperationWithBlock:v4];
}

void __44__WCSession_xpcConnectionRestoredWithState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingID];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 onqueue_dequeueContent];
  }
}

- (void)handleMessageSendingAllowed
{
  queueManager = [(WCSession *)self queueManager];
  [queueManager allowMessageSending];
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  workOperationQueue = self->_workOperationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__WCSession_handleRequest___block_invoke;
  v7[3] = &unk_278B7C1C8;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v7];
}

void __27__WCSession_handleRequest___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) pairingID];
  v4 = [*(v2 + 8) pairingID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v7 = [*(a1 + 32) isDictionaryMessage];
    v10 = a1 + 32;
    v9 = *(a1 + 32);
    v8 = *(v10 + 8);
    v12 = [v9 pairingID];
    if (v7)
    {
      [v8 onqueue_handleDictionaryMessageRequest:v9 withPairingID:v12];
    }

    else
    {
      [v8 onqueue_handleDataMessageRequest:v9 withPairingID:v12];
    }
  }

  else
  {
    v11 = wc_log(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __27__WCSession_handleRequest___block_invoke_cold_1();
    }
  }
}

- (void)onqueue_handleDictionaryMessageRequest:(id)request withPairingID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  v8 = wc_log(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[WCSession onqueue_handleDictionaryMessageRequest:withPairingID:]";
    v27 = 2114;
    v28 = requestCopy;
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession onqueue_handleDictionaryMessageRequest:withPairingID:]", "pairingID"];
    v10 = wc_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [WCSession onqueue_handleDictionaryMessageRequest:v9 withPairingID:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v9}];
  }

  identifier = [requestCopy identifier];
  data = [requestCopy data];
  v24 = 0;
  v13 = WCDeserializePayloadData(data, &v24);
  v14 = v24;

  if (v14)
  {
    identifier2 = [requestCopy identifier];
    [(WCSession *)self _onqueue_sendResponseError:v14 identifier:identifier2 dictionaryMessage:1];
  }

  else
  {
    identifier2 = objc_opt_new();
    objc_initWeak(buf, identifier2);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke;
    v17[3] = &unk_278B7C2B8;
    objc_copyWeak(&v23, buf);
    v18 = dCopy;
    selfCopy = self;
    v20 = requestCopy;
    v21 = identifier;
    v22 = v13;
    [identifier2 addExecutionBlock:v17];
    delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
    [delegateOperationQueue addOperation:identifier2];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (a1 + 40);
    v6 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v6];

    if ((v4 & 1) == 0)
    {
      v8 = wc_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_cold_1(a1 + 32, a1 + 40);
      }
    }

    if ([*(a1 + 48) expectsResponse] && (objc_msgSend(*v5, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [*(a1 + 40) currentMessageIdentifiersAwaitingReply];
      [v11 addObject:*(a1 + 56)];

      v12 = [*(a1 + 40) delegate];
      v13 = *(a1 + 40);
      v14 = *(a1 + 64);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_96;
      v25[3] = &unk_278B7C290;
      objc_copyWeak(&v29, (a1 + 72));
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v26 = v15;
      v27 = v16;
      v28 = *(a1 + 56);
      [v12 session:v13 didReceiveMessage:v14 replyHandler:v25];

      objc_destroyWeak(&v29);
    }

    else
    {
      v17 = [*(a1 + 48) expectsResponse];
      if ((v17 & 1) != 0 || ([*v5 delegate], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_opt_respondsToSelector(), v18, (v19 & 1) == 0))
      {
        v21 = wc_log(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_cold_2((a1 + 40));
        }

        v22 = *(a1 + 40);
        v23 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7014];
        v24 = [*(a1 + 48) identifier];
        [v22 _onqueue_sendResponseError:v23 identifier:v24 dictionaryMessage:1];
      }

      else
      {
        v20 = [*(a1 + 40) delegate];
        [v20 session:*(a1 + 40) didReceiveMessage:*(a1 + 64)];
      }
    }
  }
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession onqueue_handleDictionaryMessageRequest:withPairingID:]_block_invoke", "replyMessage"];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v4 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v4}];
  }

  v6 = MEMORY[0x277CCA8C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_98;
  v13[3] = &unk_278B7C268;
  objc_copyWeak(&v18, (a1 + 56));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v3;
  v17 = v10;
  v11 = [v6 blockOperationWithBlock:v13];
  v12 = [*(a1 + 40) delegateOperationQueue];
  [v12 addOperation:v11];

  objc_destroyWeak(&v18);
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_98_cold_1(a1 + 32, a1 + 40);
      }
    }

    v8 = [*(a1 + 40) currentMessageIdentifiersAwaitingReply];
    v9 = [v8 containsObject:*(a1 + 48)];

    if (v9)
    {
      v11 = [*(a1 + 40) currentMessageIdentifiersAwaitingReply];
      [v11 removeObject:*(a1 + 48)];

      v12 = *(a1 + 40);
      v13 = *(v12 + 88);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_99;
      v15[3] = &unk_278B7C068;
      v15[4] = v12;
      v16 = *(a1 + 56);
      v17 = *(a1 + 48);
      [v13 addOperationWithBlock:v15];
    }

    else
    {
      v14 = wc_log(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_98_cold_2();
      }
    }
  }
}

- (void)onqueue_handleDataMessageRequest:(id)request withPairingID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  v8 = wc_log(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[WCSession onqueue_handleDataMessageRequest:withPairingID:]";
    v25 = 2114;
    v26 = requestCopy;
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession onqueue_handleDataMessageRequest:withPairingID:]", "pairingID"];
    v10 = wc_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [WCSession onqueue_handleDataMessageRequest:v9 withPairingID:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v9}];
  }

  identifier = [requestCopy identifier];
  v12 = objc_opt_new();
  objc_initWeak(buf, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke;
  v17[3] = &unk_278B7C268;
  objc_copyWeak(&v22, buf);
  v13 = dCopy;
  v18 = v13;
  selfCopy = self;
  v14 = requestCopy;
  v20 = v14;
  v15 = identifier;
  v21 = v15;
  [v12 addExecutionBlock:v17];
  delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
  [delegateOperationQueue addOperation:v12];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = a1[4];
    v5 = a1 + 5;
    v6 = [a1[5] pairingID];
    LOBYTE(v4) = [v4 isEqual:v6];

    if ((v4 & 1) == 0)
    {
      v8 = wc_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_cold_1((a1 + 4), (a1 + 5));
      }
    }

    if ([a1[6] expectsResponse] && (objc_msgSend(*v5, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [a1[5] currentMessageIdentifiersAwaitingReply];
      [v11 addObject:a1[7]];

      v12 = [a1[5] delegate];
      v13 = a1[5];
      v14 = [a1[6] data];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_105;
      v30[3] = &unk_278B7C2E0;
      objc_copyWeak(&v33, a1 + 8);
      *&v15 = a1[4];
      *(&v15 + 1) = a1[5];
      v29 = v15;
      v16 = a1[7];
      v17 = a1[6];
      *&v18 = v16;
      *(&v18 + 1) = v17;
      v31 = v29;
      v32 = v18;
      [v12 session:v13 didReceiveMessageData:v14 replyHandler:v30];

      objc_destroyWeak(&v33);
    }

    else
    {
      v19 = [a1[6] expectsResponse];
      if ((v19 & 1) != 0 || ([*v5 delegate], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v21 & 1) == 0))
      {
        v25 = wc_log(v19);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_cold_2(a1 + 5);
        }

        v26 = a1[5];
        v27 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7014];
        v28 = [a1[6] identifier];
        [v26 _onqueue_sendResponseError:v27 identifier:v28 dictionaryMessage:0];
      }

      else
      {
        v22 = [a1[5] delegate];
        v23 = a1[5];
        v24 = [a1[6] data];
        [v22 session:v23 didReceiveMessageData:v24];
      }
    }
  }
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession onqueue_handleDataMessageRequest:withPairingID:]_block_invoke", "replyMessageData"];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v4 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v4}];
  }

  v6 = MEMORY[0x277CCA8C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_107;
  v13[3] = &unk_278B7C2B8;
  objc_copyWeak(&v19, (a1 + 64));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v3;
  v17 = v10;
  v18 = *(a1 + 56);
  v11 = [v6 blockOperationWithBlock:v13];
  v12 = [*(a1 + 40) delegateOperationQueue];
  [v12 addOperation:v11];

  objc_destroyWeak(&v19);
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_107(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_107_cold_1(a1 + 32, a1 + 40);
      }
    }

    v8 = [*(a1 + 40) currentMessageIdentifiersAwaitingReply];
    v9 = [v8 containsObject:*(a1 + 48)];

    if (v9)
    {
      v11 = [*(a1 + 40) currentMessageIdentifiersAwaitingReply];
      [v11 removeObject:*(a1 + 48)];

      v12 = *(a1 + 40);
      v13 = *(v12 + 88);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_108;
      v15[3] = &unk_278B7C068;
      v15[4] = v12;
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      [v13 addOperationWithBlock:v15];
    }

    else
    {
      v14 = wc_log(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_107_cold_2();
      }
    }
  }
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) identifier];
  [v1 onqueue_sendResponseData:v2 identifier:v3 dictionaryMessage:0];
}

- (void)handleResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = wc_log(responseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[WCSession handleResponse:]";
    v13 = 2114;
    v14 = responseCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  workOperationQueue = self->_workOperationQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__WCSession_handleResponse___block_invoke;
  v8[3] = &unk_278B7C1C8;
  v9 = responseCopy;
  selfCopy = self;
  v7 = responseCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v8];
}

void __28__WCSession_handleResponse___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) pairingID];
  v4 = [*(v2 + 8) pairingID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v7 = [*(a1 + 32) isDictionaryMessage];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v8[12];
    v11 = [v9 identifier];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [*(a1 + 32) pairingID];
    if (v7)
    {
      [v8 onqueue_handleResponseDictionary:v9 record:v12 withPairingID:v13];
    }

    else
    {
      [v8 onqueue_handleResponseData:v9 record:v12 withPairingID:v13];
    }

    v15 = *(a1 + 32);
    v16 = *(*(a1 + 40) + 96);
    v17 = [v15 identifier];
    [v16 removeObjectForKey:v17];
  }

  else
  {
    v14 = wc_log(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __28__WCSession_handleResponse___block_invoke_cold_1();
    }
  }
}

- (void)onqueue_handleResponseDictionary:(id)dictionary record:(id)record withPairingID:(id)d
{
  dictionaryCopy = dictionary;
  recordCopy = record;
  dCopy = d;
  responseHandler = [recordCopy responseHandler];
  if (responseHandler)
  {
    v12 = responseHandler;
    data = [dictionaryCopy data];

    if (data)
    {
      timeoutTimer = [recordCopy timeoutTimer];
      dispatch_source_cancel(timeoutTimer);

      data2 = [dictionaryCopy data];
      v33 = 0;
      v16 = WCDeserializePayloadData(data2, &v33);
      v17 = v33;

      if (v16)
      {
        v18 = objc_opt_new();
        objc_initWeak(&location, v18);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __67__WCSession_onqueue_handleResponseDictionary_record_withPairingID___block_invoke;
        v26[3] = &unk_278B7C268;
        objc_copyWeak(&v31, &location);
        v27 = dCopy;
        selfCopy = self;
        v29 = recordCopy;
        v30 = v16;
        [v18 addExecutionBlock:v26];
        delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
        [delegateOperationQueue addOperation:v18];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7010];
        identifier = [recordCopy identifier];
        errorHandler = [recordCopy errorHandler];
        [(WCSession *)self _onqueue_notifyOfMessageError:v18 messageID:identifier withErrorHandler:errorHandler];
      }
    }
  }

  error = [dictionaryCopy error];

  if (error)
  {
    error2 = [dictionaryCopy error];
    identifier2 = [dictionaryCopy identifier];
    errorHandler2 = [recordCopy errorHandler];
    [(WCSession *)self _onqueue_notifyOfMessageError:error2 messageID:identifier2 withErrorHandler:errorHandler2];
  }
}

void __67__WCSession_onqueue_handleResponseDictionary_record_withPairingID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __67__WCSession_onqueue_handleResponseDictionary_record_withPairingID___block_invoke_cold_1(a1 + 32, a1 + 40);
      }
    }

    v8 = [*(a1 + 48) responseHandler];
    v8[2](v8, *(a1 + 56));
  }
}

- (void)onqueue_handleResponseData:(id)data record:(id)record withPairingID:(id)d
{
  dataCopy = data;
  recordCopy = record;
  dCopy = d;
  responseHandler = [recordCopy responseHandler];
  if (responseHandler)
  {
    v12 = responseHandler;
    data = [dataCopy data];

    if (data)
    {
      timeoutTimer = [recordCopy timeoutTimer];
      dispatch_source_cancel(timeoutTimer);

      v15 = objc_opt_new();
      objc_initWeak(&location, v15);
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __61__WCSession_onqueue_handleResponseData_record_withPairingID___block_invoke;
      v24 = &unk_278B7C268;
      objc_copyWeak(&v29, &location);
      v25 = dCopy;
      selfCopy = self;
      v27 = recordCopy;
      v28 = dataCopy;
      [v15 addExecutionBlock:&v21];
      v16 = [(WCSession *)self delegateOperationQueue:v21];
      [v16 addOperation:v15];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  error = [dataCopy error];

  if (error)
  {
    error2 = [dataCopy error];
    identifier = [dataCopy identifier];
    errorHandler = [recordCopy errorHandler];
    [(WCSession *)self _onqueue_notifyOfMessageError:error2 messageID:identifier withErrorHandler:errorHandler];
  }
}

void __61__WCSession_onqueue_handleResponseData_record_withPairingID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __61__WCSession_onqueue_handleResponseData_record_withPairingID___block_invoke_cold_1(a1 + 32, a1 + 40);
      }
    }

    v8 = [*(a1 + 48) responseHandler];
    v9 = [*(a1 + 56) data];
    (v8)[2](v8, v9);
  }
}

- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  queueManager = [(WCSession *)self queueManager];
  [queueManager handleSentMessageWithIdentifier:identifierCopy error:errorCopy];
}

- (void)handleApplicationContextWithPairingID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = wc_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[WCSession handleApplicationContextWithPairingID:]";
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession handleApplicationContextWithPairingID:]", "pairingID"];
    v7 = wc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v6 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v6}];
  }

  workOperationQueue = self->_workOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__WCSession_handleApplicationContextWithPairingID___block_invoke;
  v10[3] = &unk_278B7C1C8;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v10];
}

void __51__WCSession_handleApplicationContextWithPairingID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16 = [*(a1 + 40) pairingID];
  if ([v2 isEqual:?])
  {
    v3 = *(a1 + 32);
    v4 = +[WCFileStorage sharedInstance];
    v5 = [v4 pairingID];
    LODWORD(v3) = [v3 isEqual:v5];

    if (v3)
    {
      v6 = +[WCFileStorage sharedInstance];
      v7 = [v6 loadAppContextDataFromInbox];

      if (v7)
      {
        v24 = 0;
        v9 = WCDeserializePayloadData(v7, &v24);
        v10 = v24;
        v11 = v10;
        if (v9)
        {
          v12 = objc_opt_new();
          objc_initWeak(&location, v12);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __51__WCSession_handleApplicationContextWithPairingID___block_invoke_2;
          v17[3] = &unk_278B7C268;
          objc_copyWeak(&v22, &location);
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          v18 = v13;
          v19 = v14;
          v20 = v9;
          v21 = v7;
          [v12 addExecutionBlock:v17];
          v15 = [*(a1 + 40) delegateOperationQueue];
          [v15 addOperation:v12];

          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
        }

        else
        {
          v12 = wc_log(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __51__WCSession_handleApplicationContextWithPairingID___block_invoke_cold_1();
          }
        }
      }

      else
      {
        v11 = wc_log(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __51__WCSession_handleApplicationContextWithPairingID___block_invoke_cold_2();
        }
      }
    }
  }

  else
  {
  }
}

void __51__WCSession_handleApplicationContextWithPairingID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __51__WCSession_handleApplicationContextWithPairingID___block_invoke_2_cold_1(a1 + 32, a1 + 40);
      }
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) copy];
    [v8 storeReceivedAppContext:v9 withAppContextData:*(a1 + 56)];

    v10 = [*(a1 + 40) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v13 = [*(a1 + 40) delegate];
      [v13 session:*(a1 + 40) didReceiveApplicationContext:*(a1 + 48)];

      v14 = +[WCFileStorage sharedInstance];
      [v14 deleteAppContextDataFromInbox];
    }

    else
    {
      v14 = wc_log(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __51__WCSession_handleApplicationContextWithPairingID___block_invoke_2_cold_2();
      }
    }
  }
}

- (void)handleIncomingFileWithPairingID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = wc_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[WCSession handleIncomingFileWithPairingID:]";
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession handleIncomingFileWithPairingID:]", "pairingID"];
    v7 = wc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v6 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v6}];
  }

  workOperationQueue = self->_workOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__WCSession_handleIncomingFileWithPairingID___block_invoke;
  v10[3] = &unk_278B7C1C8;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v10];
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [*(a1 + 40) pairingID];
  if ([v2 isEqual:?])
  {
    v3 = *(a1 + 32);
    v4 = +[WCFileStorage sharedInstance];
    v5 = [v4 pairingID];
    LODWORD(v3) = [v3 isEqual:v5];

    if (v3)
    {
      v6 = objc_opt_new();
      objc_initWeak(&location, v6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__WCSession_handleIncomingFileWithPairingID___block_invoke_2;
      v11[3] = &unk_278B7BFC8;
      objc_copyWeak(&v14, &location);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = v7;
      v13 = v8;
      [v6 addExecutionBlock:v11];
      v9 = [*(a1 + 40) delegateOperationQueue];
      [v9 addOperation:v6];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = a1[4];
    v5 = [a1[5] pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __45__WCSession_handleIncomingFileWithPairingID___block_invoke_2_cold_1((a1 + 4), (a1 + 5));
      }
    }

    v8 = +[WCFileStorage sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115;
    v11[3] = &unk_278B7C308;
    objc_copyWeak(&v14, a1 + 6);
    v9 = a1[4];
    v10 = a1[5];
    v12 = v9;
    v13 = v10;
    [v8 enumerateIncomingFilesWithBlock:v11];

    objc_destroyWeak(&v14);
  }
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v11 = (v9 + 8);
    v12 = [*(v9 + 8) pairingID];
    v13 = [v10 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      v15 = wc_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115_cold_1(v9, v9 + 8);
      }
    }

    if (v5)
    {
      v16 = wc_log(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136446466;
        v25 = "[WCSession handleIncomingFileWithPairingID:]_block_invoke";
        v26 = 2114;
        v27 = v5;
        _os_log_impl(&dword_23B2FA000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v24, 0x16u);
      }

      v17 = [*v11 verifySessionFile:v5];
      if (v17)
      {
        v18 = [*v11 delegate];
        v19 = objc_opt_respondsToSelector();

        if (v19)
        {
          v21 = [*v11 delegate];
          [v21 session:*v11 didReceiveFile:v5];
        }

        else
        {
          v21 = wc_log(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115_cold_3();
          }
        }
      }

      else
      {
        v21 = wc_log(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115_cold_2(v5);
        }
      }

      v22 = +[WCFileStorage sharedInstance];
      [v22 cleanupSessionFileFromInbox:v5];
    }

    else
    {
      if (!v6)
      {
LABEL_21:
        v23 = +[WCXPCManager sharedManager];
        [v23 acknowledgeFileIndexWithIdentifier:v6 clientPairingID:*v9];

        goto LABEL_22;
      }

      v22 = wc_log(v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136446466;
        v25 = "[WCSession handleIncomingFileWithPairingID:]_block_invoke";
        v26 = 2114;
        v27 = v6;
        _os_log_impl(&dword_23B2FA000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s Error: failed to load session file with identifier %{public}@", &v24, 0x16u);
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)handleFileResultWithPairingID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = wc_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[WCSession handleFileResultWithPairingID:]";
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession handleFileResultWithPairingID:]", "pairingID"];
    v7 = wc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v6 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v6}];
  }

  workOperationQueue = self->_workOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__WCSession_handleFileResultWithPairingID___block_invoke;
  v10[3] = &unk_278B7C1C8;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v10];
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [*(a1 + 40) pairingID];
  if ([v2 isEqual:?])
  {
    v3 = *(a1 + 32);
    v4 = +[WCFileStorage sharedInstance];
    v5 = [v4 pairingID];
    LODWORD(v3) = [v3 isEqual:v5];

    if (v3)
    {
      v6 = objc_opt_new();
      objc_initWeak(&location, v6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __43__WCSession_handleFileResultWithPairingID___block_invoke_2;
      v11[3] = &unk_278B7BFC8;
      objc_copyWeak(&v14, &location);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = v7;
      v13 = v8;
      [v6 addExecutionBlock:v11];
      v9 = [*(a1 + 40) delegateOperationQueue];
      [v9 addOperation:v6];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = a1[4];
    v5 = [a1[5] pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __43__WCSession_handleFileResultWithPairingID___block_invoke_2_cold_1((a1 + 4), (a1 + 5));
      }
    }

    v8 = +[WCFileStorage sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__WCSession_handleFileResultWithPairingID___block_invoke_119;
    v11[3] = &unk_278B7C330;
    objc_copyWeak(&v14, a1 + 6);
    v9 = a1[4];
    v10 = a1[5];
    v12 = v9;
    v13 = v10;
    [v8 enumerateFileTransferResultsWithBlock:v11];

    objc_destroyWeak(&v14);
  }
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    v9 = (a1 + 32);
    v10 = *(a1 + 32);
    v11 = (a1 + 40);
    v12 = [*(a1 + 40) pairingID];
    LOBYTE(v10) = [v10 isEqual:v12];

    if ((v10 & 1) == 0)
    {
      v14 = wc_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __43__WCSession_handleFileResultWithPairingID___block_invoke_119_cold_1(a1 + 32, a1 + 40);
      }
    }

    v15 = wc_log(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v16)
      {
        v17 = [v5 transferError];
        v18 = NSPrintF("%{error}", v17);
        *buf = 136446722;
        *&buf[4] = "[WCSession handleFileResultWithPairingID:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v77 = v18;
        _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ with %{public}@", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v77 = __Block_byref_object_copy_;
      v78 = __Block_byref_object_dispose_;
      v79 = 0;
      v19 = objc_opt_new();
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __43__WCSession_handleFileResultWithPairingID___block_invoke_120;
      v61[3] = &unk_278B7C218;
      v20 = *v11;
      v63 = buf;
      v61[4] = v20;
      v62 = v6;
      [v19 addExecutionBlock:v61];
      v21 = *(*v11 + 11);
      v75 = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
      [v21 addOperations:v22 waitUntilFinished:1];

      if (*(*&buf[8] + 40))
      {
        v24 = [v5 transferError];

        if (v24)
        {
          v25 = [v5 transferError];
          [*(*&buf[8] + 40) setTransferError:v25];
        }

        v26 = v5;
        v5 = *(*&buf[8] + 40);
      }

      else
      {
        v26 = wc_log(v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __43__WCSession_handleFileResultWithPairingID___block_invoke_119_cold_2();
        }
      }

      v27 = [v5 progress];
      v28 = v27;
      if (v27)
      {
        if (([v27 isFinished] & 1) == 0)
        {
          v29 = [v28 isCancelled];
          if ((v29 & 1) == 0)
          {
            v30 = wc_log(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v5 transferIdentifier];
              *v71 = 136446466;
              v72 = "[WCSession handleFileResultWithPairingID:]_block_invoke";
              v73 = 2114;
              v74 = v31;
              _os_log_impl(&dword_23B2FA000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s Updating progress to finished for %{public}@", v71, 0x16u);
            }

            [v28 setCompletedUnitCount:{objc_msgSend(v28, "totalUnitCount")}];
          }
        }
      }

      v32 = objc_loadWeakRetained((a1 + 48));
      v33 = [v32 isCancelled];

      if (v33)
      {

        _Block_object_dispose(buf, 8);
        goto LABEL_36;
      }

      v34 = *v9;
      v35 = [*v11 pairingID];
      LOBYTE(v34) = [v34 isEqual:v35];

      if ((v34 & 1) == 0)
      {
        v37 = wc_log(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *v9;
          v39 = [*v11 pairingID];
          __43__WCSession_handleFileResultWithPairingID___block_invoke_119_cold_3(v38, v39, v71);
        }
      }

      v40 = [*v11 delegate];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        [v5 setTransferring:0];
        v43 = [*v11 delegate];
        v44 = *v11;
        v45 = [v5 transferError];
        [v43 session:v44 didFinishFileTransfer:v5 error:v45];
      }

      else
      {
        v43 = wc_log(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [*v11 delegate];
          v47 = [objc_opt_class() description];
          v48 = NSStringFromSelector(sel_session_didFinishFileTransfer_error_);
          *v65 = 136446722;
          v66 = "[WCSession handleFileResultWithPairingID:]_block_invoke";
          v67 = 2114;
          v68 = v47;
          v69 = 2114;
          v70 = v48;
          _os_log_impl(&dword_23B2FA000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s delegate %{public}@ does not implement %{public}@", v65, 0x20u);
        }
      }

      v49 = objc_opt_new();
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __43__WCSession_handleFileResultWithPairingID___block_invoke_123;
      v58[3] = &unk_278B7C1C8;
      v50 = v5;
      v51 = *v11;
      v59 = v50;
      v60 = v51;
      [v49 addExecutionBlock:v58];
      v52 = *(*v11 + 11);
      v64 = v49;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      [v52 addOperations:v53 waitUntilFinished:1];

      v54 = objc_opt_new();
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __43__WCSession_handleFileResultWithPairingID___block_invoke_2_124;
      v56[3] = &unk_278B7C1C8;
      v56[4] = *v11;
      v5 = v50;
      v57 = v5;
      [v54 addExecutionBlock:v56];
      [*(*v11 + 11) addOperation:v54];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "[WCSession handleFileResultWithPairingID:]_block_invoke_3";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s ERROR: failed to load session file transfer with identifier %{public}@", buf, 0x16u);
      }

      v5 = 0;
    }

    v55 = +[WCXPCManager sharedManager];
    [v55 acknowledgeFileResultIndexWithIdentifier:v6 clientPairingID:*v9];
  }

LABEL_36:
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke_120(uint64_t a1)
{
  v5 = [*(a1 + 32) internalOutstandingFileTransfers];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __43__WCSession_handleFileResultWithPairingID___block_invoke_123(uint64_t a1)
{
  v2 = [*(a1 + 32) progressToken];

  if (v2)
  {
    [*(a1 + 40) onqueue_removeProgressForFileTransfer:*(a1 + 32)];
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 onqueue_removeOutstandingFileTransfer:v4];
}

- (void)handleIncomingUserInfoWithPairingID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = wc_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[WCSession handleIncomingUserInfoWithPairingID:]";
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession handleIncomingUserInfoWithPairingID:]", "pairingID"];
    v7 = wc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v6 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v6}];
  }

  workOperationQueue = self->_workOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke;
  v10[3] = &unk_278B7C1C8;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v10];
}

void __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [*(a1 + 40) pairingID];
  if ([v2 isEqual:?])
  {
    v3 = *(a1 + 32);
    v4 = +[WCFileStorage sharedInstance];
    v5 = [v4 pairingID];
    LODWORD(v3) = [v3 isEqual:v5];

    if (v3)
    {
      v6 = objc_opt_new();
      objc_initWeak(&location, v6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_2;
      v11[3] = &unk_278B7BFC8;
      objc_copyWeak(&v14, &location);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = v7;
      v13 = v8;
      [v6 addExecutionBlock:v11];
      v9 = [*(a1 + 40) delegateOperationQueue];
      [v9 addOperation:v6];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = a1[4];
    v5 = [a1[5] pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_2_cold_1((a1 + 4), (a1 + 5));
      }
    }

    v8 = +[WCFileStorage sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_127;
    v11[3] = &unk_278B7C358;
    objc_copyWeak(&v14, a1 + 6);
    v9 = a1[4];
    v10 = a1[5];
    v12 = v9;
    v13 = v10;
    [v8 enumerateIncomingUserInfosWithBlock:v11];

    objc_destroyWeak(&v14);
  }
}

void __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v11 = (v9 + 8);
    v12 = [*(v9 + 8) pairingID];
    v13 = [v10 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      v15 = wc_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_127_cold_1(v9, v9 + 8);
      }
    }

    v16 = wc_log(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v17)
      {
        v18 = [v5 transferIdentifier];
        v26 = 136446722;
        v27 = "[WCSession handleIncomingUserInfoWithPairingID:]_block_invoke";
        v28 = 2114;
        v29 = v5;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_23B2FA000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@, identifier %{public}@", &v26, 0x20u);
      }

      if ([v5 verifyUserInfo])
      {
        v19 = [*v11 delegate];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v22 = [*v11 delegate];
          v23 = *v11;
          v24 = [v5 userInfo];
          [v22 session:v23 didReceiveUserInfo:v24];
        }

        else
        {
          v22 = wc_log(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_127_cold_2();
          }
        }
      }

      v16 = +[WCFileStorage sharedInstance];
      [v16 deleteUserInfoTransferFromInbox:v5];
    }

    else if (v17)
    {
      v26 = 136446466;
      v27 = "[WCSession handleIncomingUserInfoWithPairingID:]_block_invoke";
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_23B2FA000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s ERROR: failed to load user info transfer with identifier %{public}@", &v26, 0x16u);
    }

    v25 = +[WCXPCManager sharedManager];
    [v25 acknowledgeUserInfoIndexWithIdentifier:v6 clientPairingID:*v9];
  }
}

- (void)handleUserInfoResultWithPairingID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = wc_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[WCSession handleUserInfoResultWithPairingID:]";
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s cannot be nil.", "-[WCSession handleUserInfoResultWithPairingID:]", "pairingID"];
    v7 = wc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [WCSession sendMessage:v6 replyHandler:? errorHandler:?];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@", v6}];
  }

  workOperationQueue = self->_workOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WCSession_handleUserInfoResultWithPairingID___block_invoke;
  v10[3] = &unk_278B7C1C8;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v10];
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [*(a1 + 40) pairingID];
  if ([v2 isEqual:?])
  {
    v3 = *(a1 + 32);
    v4 = +[WCFileStorage sharedInstance];
    v5 = [v4 pairingID];
    LODWORD(v3) = [v3 isEqual:v5];

    if (v3)
    {
      v6 = objc_opt_new();
      objc_initWeak(&location, v6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_2;
      v11[3] = &unk_278B7BFC8;
      objc_copyWeak(&v14, &location);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = v7;
      v13 = v8;
      [v6 addExecutionBlock:v11];
      v9 = [*(a1 + 40) delegateOperationQueue];
      [v9 addOperation:v6];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = a1[4];
    v5 = [a1[5] pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_2_cold_1((a1 + 4), (a1 + 5));
      }
    }

    v8 = +[WCFileStorage sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131;
    v11[3] = &unk_278B7C358;
    objc_copyWeak(&v14, a1 + 6);
    v9 = a1[4];
    v10 = a1[5];
    v12 = v9;
    v13 = v10;
    [v8 enumerateUserInfoResultsWithBlock:v11];

    objc_destroyWeak(&v14);
  }
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    v9 = (a1 + 32);
    v10 = *(a1 + 32);
    v11 = (a1 + 40);
    v12 = [*(a1 + 40) pairingID];
    LOBYTE(v10) = [v10 isEqual:v12];

    if ((v10 & 1) == 0)
    {
      v14 = wc_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131_cold_1(a1 + 32, a1 + 40);
      }
    }

    v15 = wc_log(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "[WCSession handleUserInfoResultWithPairingID:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v65 = __Block_byref_object_copy_;
      v66 = __Block_byref_object_dispose_;
      v67 = 0;
      v17 = objc_opt_new();
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_132;
      v52[3] = &unk_278B7C218;
      v18 = *v11;
      v54 = buf;
      v52[4] = v18;
      v53 = v6;
      [v17 addExecutionBlock:v52];
      v19 = *(*v11 + 11);
      v63 = v17;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
      [v19 addOperations:v20 waitUntilFinished:1];

      if (*(*&buf[8] + 40))
      {
        v22 = [v5 transferError];

        if (v22)
        {
          v23 = [v5 transferError];
          [*(*&buf[8] + 40) setTransferError:v23];
        }

        v24 = v5;
        v5 = *(*&buf[8] + 40);
      }

      else
      {
        v24 = wc_log(v21);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131_cold_2();
        }
      }

      v25 = objc_loadWeakRetained((a1 + 48));
      v26 = [v25 isCancelled];

      if (v26)
      {

        _Block_object_dispose(buf, 8);
        goto LABEL_30;
      }

      v27 = *v9;
      v28 = [*v11 pairingID];
      LOBYTE(v27) = [v27 isEqual:v28];

      if ((v27 & 1) == 0)
      {
        v30 = wc_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = *v9;
          v32 = [*v11 pairingID];
          __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131_cold_3(v31, v32, v62);
        }
      }

      v33 = [*v11 delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        [v5 setTransferring:0];
        v36 = [*v11 delegate];
        v37 = *v11;
        v38 = [v5 transferError];
        [v36 session:v37 didFinishUserInfoTransfer:v5 error:v38];
      }

      else
      {
        v36 = wc_log(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [*v11 delegate];
          v40 = [objc_opt_class() description];
          v41 = NSStringFromSelector(sel_session_didFinishUserInfoTransfer_error_);
          *v56 = 136446722;
          v57 = "[WCSession handleUserInfoResultWithPairingID:]_block_invoke";
          v58 = 2114;
          v59 = v40;
          v60 = 2114;
          v61 = v41;
          _os_log_impl(&dword_23B2FA000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s delegate %{public}@ does not implement %{public}@", v56, 0x20u);
        }
      }

      v42 = objc_opt_new();
      v46 = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      v48 = __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_135;
      v49 = &unk_278B7C1C8;
      v50 = *v11;
      v5 = v5;
      v51 = v5;
      [v42 addExecutionBlock:&v46];
      v43 = *(*v11 + 11);
      v55 = v42;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:{1, v46, v47, v48, v49, v50}];
      [v43 addOperations:v44 waitUntilFinished:1];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "[WCSession handleUserInfoResultWithPairingID:]_block_invoke_2";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s ERROR: failed to load user info result with identifier %{public}@", buf, 0x16u);
      }

      v5 = 0;
    }

    v45 = +[WCXPCManager sharedManager];
    [v45 acknowledgeUserInfoResultIndexWithIdentifier:v6 clientPairingID:*v9];
  }

LABEL_30:
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_132(uint64_t a1)
{
  v5 = [*(a1 + 32) internalOutstandingUserInfoTransfers];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)onqueue_completeSwitchTask:(id)task withSessionState:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  stateCopy = state;
  v8 = wc_log(stateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[WCSession onqueue_completeSwitchTask:withSessionState:]";
    v32 = 2114;
    v33 = taskCopy;
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  if ([taskCopy clientReadyForSessionState])
  {
    if ([stateCopy isStandaloneApp])
    {
      [taskCopy setTaskState:888];
      v9 = wc_log([(WCSession *)self setActivationState:1]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WCSession onqueue_completeSwitchTask:withSessionState:];
      }

      v10 = objc_opt_new();
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke;
      v29[3] = &unk_278B7BF78;
      v29[4] = self;
      [v10 addExecutionBlock:v29];
      delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
      [delegateOperationQueue addOperation:v10];

      v12 = +[WCXPCManager sharedManager];
      [v12 invalidateConnection];
    }

    else
    {
      [taskCopy setTaskState:4];
      [(WCSession *)self onDelegateQueueIfTriggeringKVO_updateSessionState:stateCopy triggerKVO:0];
      [(WCSession *)self setActivationState:2];
      delegateOperationQueue2 = [(WCSession *)self delegateOperationQueue];
      [delegateOperationQueue2 setSuspended:0];

      [(WCSession *)self onqueue_cancelTransfersIfAppropriate];
      v10 = objc_opt_new();
      objc_initWeak(buf, v10);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_2;
      v27[3] = &unk_278B7C380;
      v27[4] = self;
      objc_copyWeak(&v28, buf);
      [v10 addExecutionBlock:v27];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_136;
      v26[3] = &unk_278B7BF78;
      v26[4] = self;
      [v10 setCompletionBlock:v26];
      delegateOperationQueue3 = [(WCSession *)self delegateOperationQueue];
      [delegateOperationQueue3 addOperation:v10];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }

    if (![(WCSession *)self hasCompletedInitialActivation])
    {
      [(WCSession *)self setHasCompletedInitialActivation:1];
      pairingID = [stateCopy pairingID];
      if (pairingID)
      {

LABEL_13:
        v18 = objc_opt_new();
        objc_initWeak(buf, v18);
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_4;
        v23 = &unk_278B7BFF0;
        objc_copyWeak(&v25, buf);
        v24 = stateCopy;
        [v18 addExecutionBlock:&v20];
        v19 = [(WCSession *)self backgroundWorkOperationQueue:v20];
        [v19 addOperation:v18];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);

        goto LABEL_14;
      }

      pairedDevicesPairingIDs = [stateCopy pairedDevicesPairingIDs];
      v17 = pairedDevicesPairingIDs == 0;

      if (!v17)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
}

void __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7019];
  v2 = [*(a1 + 32) delegate];
  [v2 session:*(a1 + 32) activationDidCompleteWithState:objc_msgSend(*(a1 + 32) error:{"activationState"), v3}];
}

void __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pairingID];
  [*(a1 + 32) setHasContentPending:v2 != 0];

  v4 = wc_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) hasContentPending];
    v6 = "NO";
    if (v5)
    {
      v6 = "YES";
    }

    v10 = 136446466;
    v11 = "[WCSession onqueue_completeSwitchTask:withSessionState:]_block_invoke_2";
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_23B2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s hasContentPending: %s", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    if ([*(a1 + 32) delegateSupportsAsyncActivate])
    {
      v9 = [*(a1 + 32) delegate];
      [v9 session:*(a1 + 32) activationDidCompleteWithState:objc_msgSend(*(a1 + 32) error:{"activationState"), 0}];
    }
  }
}

uint64_t __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_136(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_2_137;
  v4[3] = &unk_278B7BF78;
  v4[4] = v1;
  return [v2 addOperationWithBlock:v4];
}

uint64_t __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_2_137(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingID];

  if (v2)
  {
    [*(a1 + 32) onqueue_dequeueContent];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_3;
  v6[3] = &unk_278B7BF78;
  v6[4] = v3;
  return [v4 addOperationWithBlock:v6];
}

void __57__WCSession_onqueue_completeSwitchTask_withSessionState___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v12 = 136446466;
      v13 = "[WCSession onqueue_completeSwitchTask:withSessionState:]_block_invoke_4";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s cleaning up directories for state: %{public}@", &v12, 0x16u);
    }

    v7 = +[WCFileStorage sharedInstance];
    v8 = [*(a1 + 32) appInstallationID];
    [v7 cleanUpWatchContentDirectoryWithCurrentAppInstallationID:v8];

    v9 = [*(a1 + 32) pairedDevicesPairingIDs];

    if (v9)
    {
      v10 = +[WCFileStorage sharedInstance];
      v11 = [*(a1 + 32) pairedDevicesPairingIDs];
      [v10 cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:v11];
    }
  }
}

- (void)onqueue_handleUpdateSessionState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_new();
  objc_initWeak(&location, v5);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __46__WCSession_onqueue_handleUpdateSessionState___block_invoke;
  v11 = &unk_278B7BFC8;
  objc_copyWeak(&v14, &location);
  v6 = stateCopy;
  v12 = v6;
  selfCopy = self;
  [v5 addExecutionBlock:&v8];
  v7 = [(WCSession *)self delegateOperationQueue:v8];
  [v7 addOperation:v5];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__WCSession_onqueue_handleUpdateSessionState___block_invoke(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = a1 + 4;
    v5 = [a1[4] pairingID];
    v7 = a1[5];
    v6 = a1 + 5;
    v8 = [v7 pairingID];
    v9 = [v5 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v11 = wc_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __46__WCSession_onqueue_handleUpdateSessionState___block_invoke_cold_1();
      }
    }

    v12 = *v6;
    v13 = *v4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__WCSession_onqueue_handleUpdateSessionState___block_invoke_138;
    v14[3] = &unk_278B7C3A8;
    v14[4] = v12;
    v15 = v13;
    [v12 didSessionStateChange:v15 withChangeHandler:v14];
  }
}

void __46__WCSession_onqueue_handleUpdateSessionState___block_invoke_138(uint64_t a1, int a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) onDelegateQueueIfTriggeringKVO_updateSessionState:*(a1 + 40) triggerKVO:1];
  v6 = *(a1 + 32);
  if (!a2)
  {
    if ((v6[8] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (v6[8])
  {
LABEL_5:
    v6[8] = 0;
    v7 = wc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v30 = "[WCSession onqueue_handleUpdateSessionState:]_block_invoke";
      _os_log_impl(&dword_23B2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s resetting forced reachable", buf, 0xCu);
    }

    v6 = *(a1 + 32);
  }

  v8 = [v6 delegate];
  v9 = objc_opt_respondsToSelector();

  v11 = wc_log(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      *buf = 136446210;
      v30 = "[WCSession onqueue_handleUpdateSessionState:]_block_invoke";
      _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s notifying client session reachability changed", buf, 0xCu);
    }

    v11 = [*(a1 + 32) delegate];
    [v11 sessionReachabilityDidChange:*(a1 + 32)];
  }

  else if (v12)
  {
    v13 = [*(a1 + 32) delegate];
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(sel_sessionReachabilityDidChange_);
    *buf = 136446722;
    v30 = "[WCSession onqueue_handleUpdateSessionState:]_block_invoke";
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v15;
    _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s delegate %{public}@ does not implement %{public}@", buf, 0x20u);
  }

LABEL_15:
  v16 = objc_opt_new();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__WCSession_onqueue_handleUpdateSessionState___block_invoke_141;
  v27[3] = &unk_278B7BF78;
  v27[4] = *(a1 + 32);
  [v16 addExecutionBlock:v27];
  v17 = *(*(a1 + 32) + 88);
  v28 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  [v17 addOperations:v18 waitUntilFinished:1];

  if (a3)
  {
    v19 = [*(a1 + 32) delegate];
    v20 = objc_opt_respondsToSelector();

    v22 = wc_log(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "[WCSession onqueue_handleUpdateSessionState:]_block_invoke_2";
        _os_log_impl(&dword_23B2FA000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s notifying client session state changed", buf, 0xCu);
      }

      v22 = [*(a1 + 32) delegate];
      [v22 sessionWatchStateDidChange:*(a1 + 32)];
    }

    else if (v23)
    {
      v24 = [*(a1 + 32) delegate];
      v25 = [objc_opt_class() description];
      v26 = NSStringFromSelector(sel_sessionWatchStateDidChange_);
      *buf = 136446722;
      v30 = "[WCSession onqueue_handleUpdateSessionState:]_block_invoke";
      v31 = 2114;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      _os_log_impl(&dword_23B2FA000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s delegate %{public}@ does not implement %{public}@", buf, 0x20u);
    }
  }
}

uint64_t __46__WCSession_onqueue_handleUpdateSessionState___block_invoke_141(uint64_t a1)
{
  [*(a1 + 32) onqueue_cancelMessagesIfAppropriate];
  v2 = *(a1 + 32);

  return [v2 onqueue_cancelTransfersIfAppropriate];
}

- (void)didSessionStateChange:(id)change withChangeHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  handlerCopy = handler;
  isReachable = [changeCopy isReachable];
  v9 = isReachable ^ [(WCSession *)self isReachable];
  pairingID = [changeCopy pairingID];
  v11 = [(WCSession *)self didPairingIDChange:pairingID];

  LODWORD(pairingID) = [changeCopy isPaired];
  if (pairingID == -[WCSession isPaired](self, "isPaired") && (v12 = [changeCopy isAppInstalled], v12 == -[WCSession isWatchAppInstalled](self, "isWatchAppInstalled")) && (v13 = objc_msgSend(changeCopy, "isComplicationEnabled"), v13 == -[WCSession isComplicationEnabled](self, "isComplicationEnabled")))
  {
    watchDirectoryURL = [changeCopy watchDirectoryURL];
    v14 = [(WCSession *)self didWatchURLChange:watchDirectoryURL];
  }

  else
  {
    v14 = 1;
  }

  remainingComplicationUserInfoTransfers = [(WCSession *)self remainingComplicationUserInfoTransfers];
  remainingComplicationUserInfoTransfers2 = [changeCopy remainingComplicationUserInfoTransfers];
  if (v9 | v14 || v11 || remainingComplicationUserInfoTransfers != remainingComplicationUserInfoTransfers2)
  {
    handlerCopy[2](handlerCopy, v9, v14, v11, 0);
  }

  else
  {
    v17 = wc_log(remainingComplicationUserInfoTransfers2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446210;
      v20 = "[WCSession didSessionStateChange:withChangeHandler:]";
      _os_log_impl(&dword_23B2FA000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s no change", &v19, 0xCu);
    }
  }
}

- (void)onqueue_startNextDeviceSwitch
{
  v35 = *MEMORY[0x277D85DE8];
  switchTasksQueue = [(WCSession *)self switchTasksQueue];
  firstObject = [switchTasksQueue firstObject];

  taskState = [firstObject taskState];
  if (taskState != 4)
  {
    firstObject2 = wc_log(taskState);
    if (!os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136446466;
    v32 = "[WCSession onqueue_startNextDeviceSwitch]";
    v33 = 2114;
    v34 = firstObject;
    v19 = "%{public}s current task %{public}@ isn't completed";
LABEL_11:
    _os_log_impl(&dword_23B2FA000, firstObject2, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
    goto LABEL_15;
  }

  switchTasksQueue2 = [(WCSession *)self switchTasksQueue];
  v7 = [switchTasksQueue2 count];

  if (v7 < 2)
  {
    firstObject2 = wc_log(v8);
    if (!os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136446466;
    v32 = "[WCSession onqueue_startNextDeviceSwitch]";
    v33 = 2114;
    v34 = firstObject;
    v19 = "%{public}s no tasks queued after %{public}@";
    goto LABEL_11;
  }

  backgroundWorkOperationQueue = [(WCSession *)self backgroundWorkOperationQueue];
  [backgroundWorkOperationQueue cancelAllOperations];

  switchTasksQueue3 = [(WCSession *)self switchTasksQueue];
  [switchTasksQueue3 removeObject:firstObject];

  switchTasksQueue4 = [(WCSession *)self switchTasksQueue];
  firstObject2 = [switchTasksQueue4 firstObject];

  [firstObject2 setTaskState:1];
  v13 = wc_log([(WCSession *)self setActivationState:1]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v32 = "[WCSession onqueue_startNextDeviceSwitch]";
    v33 = 2114;
    v34 = firstObject2;
    _os_log_impl(&dword_23B2FA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s starting new switch task: %{public}@", buf, 0x16u);
  }

  delegateSupportsActiveDeviceSwitch = [(WCSession *)self delegateSupportsActiveDeviceSwitch];
  if (delegateSupportsActiveDeviceSwitch)
  {
    v15 = objc_opt_new();
    objc_initWeak(buf, v15);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __42__WCSession_onqueue_startNextDeviceSwitch__block_invoke;
    v29[3] = &unk_278B7BFF0;
    objc_copyWeak(&v30, buf);
    v29[4] = self;
    [v15 addExecutionBlock:v29];
    [v15 setQueuePriority:8];
    delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
    [delegateOperationQueue addOperation:v15];

    v17 = objc_opt_new();
    objc_initWeak(&location, v17);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __42__WCSession_onqueue_startNextDeviceSwitch__block_invoke_145;
    v24 = &unk_278B7BFC8;
    objc_copyWeak(&v27, &location);
    selfCopy = self;
    firstObject2 = firstObject2;
    v26 = firstObject2;
    [v17 addExecutionBlock:&v21];
    v18 = [(WCSession *)self delegateOperationQueue:v21];
    [v18 addOperation:v17];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v20 = wc_log(delegateSupportsActiveDeviceSwitch);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v32 = "[WCSession onqueue_startNextDeviceSwitch]";
      _os_log_impl(&dword_23B2FA000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s client delegate does not support Quick Watch Switch. Halting session until process exits.", buf, 0xCu);
    }

    [firstObject2 setTaskState:999];
  }

LABEL_15:
}

void __42__WCSession_onqueue_startNextDeviceSwitch__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WCSession onqueue_startNextDeviceSwitch]_block_invoke";
      _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s notifying client session did become inactive", &v7, 0xCu);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 sessionDidBecomeInactive:*(a1 + 32)];
  }
}

void __42__WCSession_onqueue_startNextDeviceSwitch__block_invoke_145(id *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [a1[4] delegateOperationQueue];
    [v4 cancelAllOperations];

    v5 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__WCSession_onqueue_startNextDeviceSwitch__block_invoke_2;
    v14[3] = &unk_278B7BF78;
    v14[4] = a1[4];
    [v5 addExecutionBlock:v14];
    v6 = *(a1[4] + 11);
    v17[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v6 addOperations:v7 waitUntilFinished:1];

    v9 = wc_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[WCSession onqueue_startNextDeviceSwitch]_block_invoke";
      _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s notifying client session did deactivate", buf, 0xCu);
    }

    v10 = [a1[4] delegate];
    [v10 sessionDidDeactivate:a1[4]];

    v11 = *(a1[4] + 11);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__WCSession_onqueue_startNextDeviceSwitch__block_invoke_146;
    v12[3] = &unk_278B7BF78;
    v13 = a1[5];
    [v11 addOperationWithBlock:v12];
  }
}

- (void)onqueue_dequeueContent
{
  pairingID = [(WCSession *)self pairingID];
  [(WCSession *)self handleApplicationContextWithPairingID:pairingID];

  pairingID2 = [(WCSession *)self pairingID];
  [(WCSession *)self handleFileResultWithPairingID:pairingID2];

  pairingID3 = [(WCSession *)self pairingID];
  [(WCSession *)self handleIncomingFileWithPairingID:pairingID3];

  pairingID4 = [(WCSession *)self pairingID];
  [(WCSession *)self handleUserInfoResultWithPairingID:pairingID4];

  pairingID5 = [(WCSession *)self pairingID];
  [(WCSession *)self handleIncomingUserInfoWithPairingID:pairingID5];

  workOperationQueue = self->_workOperationQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__WCSession_onqueue_dequeueContent__block_invoke;
  v9[3] = &unk_278B7BF78;
  v9[4] = self;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v9];
}

void __35__WCSession_onqueue_dequeueContent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateOperationQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__WCSession_onqueue_dequeueContent__block_invoke_2;
  v3[3] = &unk_278B7BF78;
  v3[4] = *(a1 + 32);
  [v2 addOperationWithBlock:v3];
}

void __35__WCSession_onqueue_dequeueContent__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = wc_log([*(a1 + 32) setHasContentPending:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) hasContentPending];
    v4 = "NO";
    if (v3)
    {
      v4 = "YES";
    }

    v5 = 136446466;
    v6 = "[WCSession onqueue_dequeueContent]_block_invoke_2";
    v7 = 2080;
    v8 = v4;
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s hasContentPending: %s", &v5, 0x16u);
  }
}

- (void)onqueue_handleMessageCompletionWithError:(id)error withMessageID:(id)d
{
  errorCopy = error;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_currentMessages objectForKeyedSubscript:dCopy];
  timeoutTimer = [v8 timeoutTimer];
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    if (errorCopy)
    {
    }

    else
    {
      expectsResponse = [v8 expectsResponse];

      if (expectsResponse)
      {
        goto LABEL_10;
      }
    }

    timeoutTimer2 = [v8 timeoutTimer];
    dispatch_source_cancel(timeoutTimer2);
  }

  if (errorCopy)
  {
    v13 = wc_log(timeoutTimer);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WCSession onqueue_handleMessageCompletionWithError:dCopy withMessageID:errorCopy];
    }

    errorHandler = [v8 errorHandler];
    [(WCSession *)self _onqueue_notifyOfMessageError:errorCopy messageID:dCopy withErrorHandler:errorHandler];

    goto LABEL_11;
  }

LABEL_10:
  if (([v8 expectsResponse] & 1) == 0)
  {
LABEL_11:
    [(NSMutableDictionary *)self->_currentMessages removeObjectForKey:dCopy];
  }
}

- (void)_onqueue_notifyOfMessageError:(id)error messageID:(id)d withErrorHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dCopy = d;
  handlerCopy = handler;
  v11 = wc_log(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (handlerCopy)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    v17 = NSPrintF("%{error}", errorCopy);
    *location = 136446978;
    *&location[4] = "[WCSession _onqueue_notifyOfMessageError:messageID:withErrorHandler:]";
    v25 = 2114;
    v26 = dCopy;
    v27 = 2080;
    v28 = v16;
    v29 = 2114;
    v30 = v17;
    _os_log_error_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ errorHandler: %s with %{public}@", location, 0x2Au);
  }

  if (handlerCopy)
  {
    pairingID = [(WCSession *)self pairingID];
    v13 = objc_opt_new();
    objc_initWeak(location, v13);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__WCSession__onqueue_notifyOfMessageError_messageID_withErrorHandler___block_invoke;
    v18[3] = &unk_278B7C3D0;
    objc_copyWeak(&v23, location);
    v14 = pairingID;
    v19 = v14;
    selfCopy = self;
    v22 = handlerCopy;
    v21 = errorCopy;
    [v13 addExecutionBlock:v18];
    delegateOperationQueue = [(WCSession *)self delegateOperationQueue];
    [delegateOperationQueue addOperation:v13];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }
}

void __70__WCSession__onqueue_notifyOfMessageError_messageID_withErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      v7 = wc_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __70__WCSession__onqueue_notifyOfMessageError_messageID_withErrorHandler___block_invoke_cold_1(a1 + 32, a1 + 40);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)notifyOfFileError:(id)error withFileTransfer:(id)transfer
{
  errorCopy = error;
  transferCopy = transfer;
  v8 = wc_log(transferCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [WCSession notifyOfFileError:transferCopy withFileTransfer:errorCopy];
  }

  workOperationQueue = self->_workOperationQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__WCSession_notifyOfFileError_withFileTransfer___block_invoke;
  v12[3] = &unk_278B7C068;
  v12[4] = self;
  v13 = errorCopy;
  v14 = transferCopy;
  v10 = transferCopy;
  v11 = errorCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v12];
}

- (void)onqueue_notifyOfFileError:(id)error withFileTransfer:(id)transfer
{
  errorCopy = error;
  transferCopy = transfer;
  pairingID = [(WCSession *)self pairingID];
  v9 = objc_opt_new();
  objc_initWeak(&location, v9);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __56__WCSession_onqueue_notifyOfFileError_withFileTransfer___block_invoke;
  v17 = &unk_278B7C268;
  objc_copyWeak(&v22, &location);
  v10 = pairingID;
  v18 = v10;
  selfCopy = self;
  v11 = transferCopy;
  v20 = v11;
  v12 = errorCopy;
  v21 = v12;
  [v9 addExecutionBlock:&v14];
  v13 = [(WCSession *)self delegateOperationQueue:v14];
  [v13 addOperation:v9];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __56__WCSession_onqueue_notifyOfFileError_withFileTransfer___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (a1 + 40);
    v6 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v6];

    if ((v4 & 1) == 0)
    {
      v8 = wc_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __56__WCSession_onqueue_notifyOfFileError_withFileTransfer___block_invoke_cold_1(a1 + 32, a1 + 40);
      }
    }

    v9 = [*v5 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v12 = [*(a1 + 40) delegate];
      [v12 session:*(a1 + 40) didFinishFileTransfer:*(a1 + 48) error:*(a1 + 56)];
    }

    else
    {
      v12 = wc_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*v5 delegate];
        v14 = [objc_opt_class() description];
        v15 = NSStringFromSelector(sel_session_didFinishFileTransfer_error_);
        *buf = 136446722;
        v22 = "[WCSession onqueue_notifyOfFileError:withFileTransfer:]_block_invoke";
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_23B2FA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s delegate %{public}@ does not implement %{public}@", buf, 0x20u);
      }
    }

    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = *(v17 + 88);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__WCSession_onqueue_notifyOfFileError_withFileTransfer___block_invoke_147;
    v19[3] = &unk_278B7C1C8;
    v19[4] = v17;
    v20 = v16;
    [v18 addOperationWithBlock:v19];
  }
}

- (void)notifyOfUserInfoError:(id)error withUserInfoTransfer:(id)transfer
{
  errorCopy = error;
  transferCopy = transfer;
  v8 = wc_log(transferCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [WCSession notifyOfUserInfoError:withUserInfoTransfer:];
  }

  workOperationQueue = self->_workOperationQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__WCSession_notifyOfUserInfoError_withUserInfoTransfer___block_invoke;
  v12[3] = &unk_278B7C068;
  v12[4] = self;
  v13 = errorCopy;
  v14 = transferCopy;
  v10 = transferCopy;
  v11 = errorCopy;
  [(NSOperationQueue *)workOperationQueue addOperationWithBlock:v12];
}

- (void)onqueue_notifyOfUserInfoError:(id)error withUserInfoTransfer:(id)transfer
{
  errorCopy = error;
  transferCopy = transfer;
  pairingID = [(WCSession *)self pairingID];
  v9 = objc_opt_new();
  objc_initWeak(&location, v9);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __64__WCSession_onqueue_notifyOfUserInfoError_withUserInfoTransfer___block_invoke;
  v17 = &unk_278B7C268;
  objc_copyWeak(&v22, &location);
  v10 = pairingID;
  v18 = v10;
  selfCopy = self;
  v11 = transferCopy;
  v20 = v11;
  v12 = errorCopy;
  v21 = v12;
  [v9 addExecutionBlock:&v14];
  v13 = [(WCSession *)self delegateOperationQueue:v14];
  [v13 addOperation:v9];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __64__WCSession_onqueue_notifyOfUserInfoError_withUserInfoTransfer___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (a1 + 40);
    v6 = [*(a1 + 40) pairingID];
    LOBYTE(v4) = [v4 isEqual:v6];

    if ((v4 & 1) == 0)
    {
      v8 = wc_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __64__WCSession_onqueue_notifyOfUserInfoError_withUserInfoTransfer___block_invoke_cold_1(a1 + 32, a1 + 40);
      }
    }

    v9 = [*v5 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v12 = [*(a1 + 40) delegate];
      [v12 session:*(a1 + 40) didFinishUserInfoTransfer:*(a1 + 48) error:*(a1 + 56)];
    }

    else
    {
      v12 = wc_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*v5 delegate];
        v14 = [objc_opt_class() description];
        v15 = NSStringFromSelector(sel_session_didFinishUserInfoTransfer_error_);
        *buf = 136446722;
        v24 = "[WCSession onqueue_notifyOfUserInfoError:withUserInfoTransfer:]_block_invoke";
        v25 = 2114;
        v26 = v14;
        v27 = 2114;
        v28 = v15;
        _os_log_impl(&dword_23B2FA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s delegate %{public}@ does not implement %{public}@", buf, 0x20u);
      }
    }

    v16 = objc_opt_new();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__WCSession_onqueue_notifyOfUserInfoError_withUserInfoTransfer___block_invoke_148;
    v20[3] = &unk_278B7C1C8;
    v17 = *(a1 + 48);
    v20[4] = *(a1 + 40);
    v21 = v17;
    [v16 addExecutionBlock:v20];
    v18 = *(*(a1 + 40) + 88);
    v22 = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v18 addOperations:v19 waitUntilFinished:1];
  }
}

- (id)createAndStartTimerOnWorkQueueWithHandler:(id)handler
{
  workOperationQueue = self->_workOperationQueue;
  handlerCopy = handler;
  underlyingQueue = [(NSOperationQueue *)workOperationQueue underlyingQueue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, underlyingQueue);

  v7 = dispatch_time(0, 300000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(v6, handlerCopy);

  dispatch_resume(v6);

  return v6;
}

- (BOOL)logAndTestIfUnactivatedOrMissingDelegate
{
  if ([(WCSession *)self activationState])
  {
    delegate = [(WCSession *)self delegate];

    if (delegate)
    {
      return 1;
    }

    v6 = wc_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WCSession logAndTestIfUnactivatedOrMissingDelegate];
    }
  }

  else
  {
    v6 = wc_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WCSession logAndTestIfUnactivatedOrMissingDelegate];
    }
  }

  return 0;
}

- (id)errorIfNotReachable
{
  if ([(WCSession *)self isReachable])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7007];
    v3 = wc_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [WCSession errorIfNotReachable];
    }
  }

  return v2;
}

- (id)errorIfPreconditionsNotSatisfied
{
  if ([(WCSession *)self activationState]== WCSessionActivationStateNotActivated)
  {
    v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7004];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WCSession logAndTestIfUnactivatedOrMissingDelegate];
    }

    goto LABEL_16;
  }

  delegate = [(WCSession *)self delegate];

  if (!delegate)
  {
    v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7003];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WCSession logAndTestIfUnactivatedOrMissingDelegate];
    }

    goto LABEL_16;
  }

  if (![(WCSession *)self isPaired])
  {
    v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7005];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WCSession errorIfPreconditionsNotSatisfied];
    }

    goto LABEL_16;
  }

  if (![(WCSession *)self isWatchAppInstalled])
  {
    v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7006];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WCSession errorIfPreconditionsNotSatisfied];
    }

    goto LABEL_16;
  }

  if ([(WCSession *)self activationState]== WCSessionActivationStateInactive)
  {
    v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7016];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WCSession errorIfPreconditionsNotSatisfied];
    }

LABEL_16:

    goto LABEL_17;
  }

  pairingID = [(WCSession *)self pairingID];

  if (!pairingID)
  {
    v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7001];
    v5 = wc_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WCSession errorIfPreconditionsNotSatisfied];
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_17:

  return v4;
}

- (BOOL)verifySessionFile:(id)file
{
  fileCopy = file;
  fileURL = [fileCopy fileURL];
  v5 = [fileURL checkResourceIsReachableAndReturnError:0];

  LOBYTE(fileURL) = [fileCopy verifyMetadata];
  return v5 & fileURL;
}

- (id)fileSizeFromURL:(id)l
{
  v5 = 0;
  [l getResourceValue:&v5 forKey:*MEMORY[0x277CBE838] error:0];
  v3 = v5;

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqual:@"outstandingFileTransfers"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"outstandingFileTransfers"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___WCSession;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (void)setInternalOutstandingFileTransfers:(id)transfers
{
  transfersCopy = transfers;
  internalOutstandingFileTransfers = [(WCSession *)self internalOutstandingFileTransfers];
  v6 = [internalOutstandingFileTransfers isEqual:transfersCopy];

  if ((v6 & 1) == 0)
  {
    [(WCSession *)self willChangeValueForKey:@"outstandingFileTransfers"];
    objc_storeStrong(&self->_internalOutstandingFileTransfers, transfers);
    [(WCSession *)self didChangeValueForKey:@"outstandingFileTransfers"];
  }
}

- (void)setInternalOutstandingUserInfoTransfers:(id)transfers
{
  transfersCopy = transfers;
  internalOutstandingUserInfoTransfers = [(WCSession *)self internalOutstandingUserInfoTransfers];
  v6 = [internalOutstandingUserInfoTransfers isEqual:transfersCopy];

  if ((v6 & 1) == 0)
  {
    [(WCSession *)self willChangeValueForKey:@"outstandingUserInfoTransfers"];
    objc_storeStrong(&self->_internalOutstandingUserInfoTransfers, transfers);
    [(WCSession *)self didChangeValueForKey:@"outstandingUserInfoTransfers"];
  }
}

- (void)reportFileTransfer:(id)transfer
{
  v51 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  transferDate = [transferCopy transferDate];
  if (transferDate)
  {
    v6 = transferDate;
    date = [MEMORY[0x277CBEAA8] date];
    transferDate2 = [transferCopy transferDate];
    [date timeIntervalSinceDate:transferDate2];
    v10 = v9;

    if (v10 >= 31)
    {
      v11 = 30 * (v10 / 0x1EuLL);
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = -1;
  }

  file = [transferCopy file];
  fileSize = [file fileSize];
  if (fileSize)
  {
    file2 = [transferCopy file];
    fileSize2 = [file2 fileSize];
    v16 = -[WCSession roundValue:toSignificantFigures:](self, "roundValue:toSignificantFigures:", [fileSize2 integerValue], 2);
  }

  else
  {
    v16 = -1;
  }

  file3 = [transferCopy file];
  userInfoData = [file3 userInfoData];
  if ([userInfoData length])
  {
    file4 = [transferCopy file];
    userInfoData2 = [file4 userInfoData];
    v21 = -[WCSession roundValue:toSignificantFigures:](self, "roundValue:toSignificantFigures:", [userInfoData2 length], 2);
  }

  else
  {
    v21 = -1;
  }

  v22 = objc_opt_new();
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [v22 setObject:v23 forKeyedSubscript:@"durationSec"];

  transferError = [transferCopy transferError];
  if ([transferError code])
  {
    v25 = MEMORY[0x277CCABB0];
    transferError2 = [transferCopy transferError];
    v27 = [v25 numberWithInteger:{objc_msgSend(transferError2, "code")}];
    [v22 setObject:v27 forKeyedSubscript:@"errorCode"];
  }

  else
  {
    [v22 setObject:&unk_284DFDA70 forKeyedSubscript:@"errorCode"];
  }

  transferError3 = [transferCopy transferError];
  domain = [transferError3 domain];
  v30 = domain;
  if (domain)
  {
    v31 = domain;
  }

  else
  {
    v31 = &stru_284DF9400;
  }

  [v22 setObject:v31 forKeyedSubscript:@"errorDomain"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  [v22 setObject:v32 forKeyedSubscript:@"fileSizeBytes"];

  file5 = [transferCopy file];
  userInfoData3 = [file5 userInfoData];
  v35 = MEMORY[0x277CBEC38];
  v36 = MEMORY[0x277CBEC28];
  if (userInfoData3)
  {
    v37 = MEMORY[0x277CBEC38];
  }

  else
  {
    v37 = MEMORY[0x277CBEC28];
  }

  [v22 setObject:v37 forKeyedSubscript:@"hasMetadata"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
  [v22 setObject:v38 forKeyedSubscript:@"metadataSizeBytes"];

  transferError4 = [transferCopy transferError];
  if (transferError4)
  {
    v40 = v36;
  }

  else
  {
    v40 = v35;
  }

  [v22 setObject:v40 forKeyedSubscript:@"success"];

  v41 = arc4random();
  v42 = v41 / 4294967300.0;
  if (v42 < 0.1)
  {
    v41 = CUMetricsLog();
  }

  v43 = wc_log(v41);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = "no";
    v45 = 136446722;
    v46 = "[WCSession reportFileTransfer:]";
    if (v42 < 0.1)
    {
      v44 = "yes";
    }

    v47 = 2112;
    v48 = v22;
    v49 = 2080;
    v50 = v44;
    _os_log_impl(&dword_23B2FA000, v43, OS_LOG_TYPE_INFO, "%{public}s %@ submited %s", &v45, 0x20u);
  }
}

- (unint64_t)roundValue:(unint64_t)value toSignificantFigures:(int)figures
{
  if (!value)
  {
    return 0;
  }

  valueCopy = value;
  v6 = log10(value);
  v7 = __exp10((figures - vcvtpd_s64_f64(v6)));
  result = (round(v7 * valueCopy) / v7);
  if (result % 0xA == 9)
  {
    ++result;
  }

  else if (result % 0xA == 1)
  {
    --result;
  }

  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __28__WCSession_activateSession__block_invoke_20_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)sendMessage:(void *)a1 replyHandler:errorHandler:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5(&dword_23B2FA000, v1, v2, "EXCEPTION: %s", v3, v4, v5, v6);
}

void __44__WCSession_updateApplicationContext_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __44__WCSession_updateApplicationContext_error___block_invoke_80_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __67__WCSession_onqueue_sendResponseData_identifier_dictionaryMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_onqueue_sendResponseError:(uint64_t)a1 identifier:(uint64_t)a2 dictionaryMessage:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = NSPrintF("%{error}", a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __69__WCSession__onqueue_sendResponseError_identifier_dictionaryMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __44__WCSession_xpcConnectionRestoredWithState___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  v2 = [OUTLINED_FUNCTION_16(v1) pairingID];
  v3 = [*v0 pairingID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __27__WCSession_handleRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_fault_impl(&dword_23B2FA000, v1, OS_LOG_TYPE_FAULT, "dropping incoming request %{public}@ as it was not intended for the currently active session.", &v2, 0xCu);
}

- (void)onqueue_handleDictionaryMessageRequest:(void *)a1 withPairingID:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5(&dword_23B2FA000, v1, v2, "EXCEPTION: %s", v3, v4, v5, v6);
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 delegate];
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_98_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __66__WCSession_onqueue_handleDictionaryMessageRequest_withPairingID___block_invoke_98_cold_2()
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)onqueue_handleDataMessageRequest:(void *)a1 withPairingID:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5(&dword_23B2FA000, v1, v2, "EXCEPTION: %s", v3, v4, v5, v6);
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 delegate];
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_107_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __60__WCSession_onqueue_handleDataMessageRequest_withPairingID___block_invoke_107_cold_2()
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __28__WCSession_handleResponse___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_fault_impl(&dword_23B2FA000, v1, OS_LOG_TYPE_FAULT, "dropping incoming response %{public}@ as it was not intended for the currently active session.", &v2, 0xCu);
}

void __67__WCSession_onqueue_handleResponseDictionary_record_withPairingID___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __61__WCSession_onqueue_handleResponseData_record_withPairingID___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __51__WCSession_handleApplicationContextWithPairingID___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __51__WCSession_handleApplicationContextWithPairingID___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_17();
  v2 = [OUTLINED_FUNCTION_16(v1) delegate];
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115_cold_2(void *a1)
{
  v1 = [a1 fileURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __45__WCSession_handleIncomingFileWithPairingID___block_invoke_115_cold_3()
{
  OUTLINED_FUNCTION_17();
  v2 = [OUTLINED_FUNCTION_16(v1) delegate];
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke_119_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __43__WCSession_handleFileResultWithPairingID___block_invoke_119_cold_3(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136446722;
  OUTLINED_FUNCTION_12(a1, a2, a3);
  _os_log_error_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_ERROR, "%{public}s dropping as pairingIDs no longer match. pairingID %{public}@, client pairingID: %{public}@", v4, 0x20u);
}

void __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_127_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __49__WCSession_handleIncomingUserInfoWithPairingID___block_invoke_127_cold_2()
{
  OUTLINED_FUNCTION_17();
  v2 = [OUTLINED_FUNCTION_16(v1) delegate];
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __47__WCSession_handleUserInfoResultWithPairingID___block_invoke_131_cold_3(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136446722;
  OUTLINED_FUNCTION_12(a1, a2, a3);
  _os_log_error_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_ERROR, "%{public}s dropping as pairingIDs no longer match. pairingID %{public}@, client pairingID: %{public}@", v4, 0x20u);
}

void __46__WCSession_onqueue_handleUpdateSessionState___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  v2 = [OUTLINED_FUNCTION_16(v1) pairingID];
  v3 = [*v0 pairingID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)onqueue_handleMessageCompletionWithError:(uint64_t)a1 withMessageID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = NSPrintF("%{error}", a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __70__WCSession__onqueue_notifyOfMessageError_messageID_withErrorHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)notifyOfFileError:(uint64_t)a1 withFileTransfer:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = NSPrintF("%{error}", a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __56__WCSession_onqueue_notifyOfFileError_withFileTransfer___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)notifyOfUserInfoError:withUserInfoTransfer:.cold.1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __64__WCSession_onqueue_notifyOfUserInfoError_withUserInfoTransfer___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end