@interface CSSiriAudioPlaybackService
+ (id)sharedService;
- (CSSiriAudioPlaybackService)initWithAudioSessionController:(id)controller;
- (id)_audioSession;
- (id)_createAudioPlaybackSessionWithRequest:(id)request options:(unint64_t)options;
- (id)_hapticEngine;
- (id)_playHapticForRequest:(id)request;
- (unsigned)_audioSessionID;
- (void)_enumerateListenersUsingBlock:(id)block;
- (void)_evictAllReusableSessionsForReason:(id)reason;
- (void)_handleExecutionForSession:(id)session;
- (void)_handleFinalizationForSession:(id)session error:(id)error;
- (void)_handlePreparationForSession:(id)session;
- (void)_hapticPlaybackDidCompleteForAllActiveRequests;
- (void)_initializeAndPrewarmHapticEngineIfNeededForRequest:(id)request;
- (void)_invalidate;
- (void)_prewarmRequest:(id)request completion:(id)completion;
- (void)_setAudioSessionID:(unsigned int)d;
- (void)_startHapticOnlyRequest:(id)request options:(unint64_t)options preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)_startRequest:(id)request options:(unint64_t)options preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)_stopAllRequests:(BOOL)requests completion:(id)completion;
- (void)_stopRequest:(id)request immediately:(BOOL)immediately;
- (void)addListener:(id)listener;
- (void)audioSessionController:(id)controller didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification;
- (void)memoryPressureObserver:(id)observer didChangeFromCondition:(int64_t)condition toCondition:(int64_t)toCondition;
- (void)prewarmRequest:(id)request completion:(id)completion;
- (void)removeAllListeners;
- (void)removeListener:(id)listener;
- (void)startRequest:(id)request options:(unint64_t)options preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)stopAllRequests:(BOOL)requests completion:(id)completion;
- (void)stopAllRequestsSynchronously;
- (void)stopRequest:(id)request immediately:(BOOL)immediately;
@end

@implementation CSSiriAudioPlaybackService

- (void)memoryPressureObserver:(id)observer didChangeFromCondition:(int64_t)condition toCondition:(int64_t)toCondition
{
  if (toCondition >= 2)
  {
    v8[6] = v5;
    v8[7] = v6;
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__CSSiriAudioPlaybackService_memoryPressureObserver_didChangeFromCondition_toCondition___block_invoke;
    v8[3] = &unk_2784C6EC0;
    v8[4] = self;
    v8[5] = a2;
    dispatch_async(queue, v8);
  }
}

void __88__CSSiriAudioPlaybackService_memoryPressureObserver_didChangeFromCondition_toCondition___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromSelector(*(a1 + 40));
  [v1 _evictAllReusableSessionsForReason:v2];
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackService audioSessionController:didReceiveAudioSessionOwnerResetNotification:]";
    v12 = 2112;
    v13 = notificationCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionOwnerResetNotification___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __98__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionOwnerResetNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAudioSessionID:0];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 _evictAllReusableSessionsForReason:v3];
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackService audioSessionController:didReceiveAudioSessionOwnerLostNotification:]";
    v12 = 2112;
    v13 = notificationCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionOwnerLostNotification___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __97__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionOwnerLostNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAudioSessionID:0];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 _evictAllReusableSessionsForReason:v3];
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackService audioSessionController:didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:]";
    v12 = 2112;
    v13 = infoCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __122__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __122__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAudioSessionID:0];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 _evictAllReusableSessionsForReason:v3];
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackService audioSessionController:didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:]";
    v12 = 2112;
    v13 = infoCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __121__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __121__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAudioSessionID:0];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 _evictAllReusableSessionsForReason:v3];
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[CSSiriAudioPlaybackService audioSessionController:didReceiveAudioSessionInterruptionNotificationWithUserInfo:]";
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v10 = infoCopy;
  selfCopy = self;
  v8 = infoCopy;
  dispatch_async(queue, v9);
}

void __112__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277CB8080]];
  v3 = [v2 unsignedIntegerValue];

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(*(a1 + 40) + 24);

      [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_26_25179];
    }
  }

  else
  {
    v5 = [*(a1 + 32) objectForKey:*MEMORY[0x277CB8070]];
    v6 = [v5 unsignedIntegerValue];

    v7 = *(*(a1 + 40) + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __112__CSSiriAudioPlaybackService_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke_3;
    v8[3] = &__block_descriptor_33_e69_v32__0__AFAudioPlaybackRequest_8___CSSiriAudioPlaybackSession__16_B24l;
    v9 = v6 & 1;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (id)_createAudioPlaybackSessionWithRequest:(id)request options:(unint64_t)options
{
  requestCopy = request;
  if ((options & 4) != 0 || (v7 = [[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased alloc] initWithQueue:self->_queue request:requestCopy options:options]) == 0)
  {
    v7 = [[CSSiriAudioPlaybackSessionImplAVPlayerBased alloc] initWithQueue:self->_queue request:requestCopy options:options];
  }

  return v7;
}

- (id)_audioSession
{
  if (!self->_audioSession)
  {
    _audioSessionID = [(CSSiriAudioPlaybackService *)self _audioSessionID];
    if (_audioSessionID)
    {
      v4 = [MEMORY[0x277CB83F8] retrieveSessionWithID:_audioSessionID];
      audioSession = self->_audioSession;
      self->_audioSession = v4;
    }
  }

  v6 = self->_audioSession;

  return v6;
}

- (void)_setAudioSessionID:(unsigned int)d
{
  if (self->_audioSessionID != d)
  {
    self->_audioSessionID = d;
    audioSession = self->_audioSession;
    self->_audioSession = 0;
  }
}

- (unsigned)_audioSessionID
{
  result = self->_audioSessionID;
  if (!result)
  {
    result = [(CSAudioSessionController *)self->_audioSessionController getAudioSessionID];
    self->_audioSessionID = result;
  }

  return result;
}

- (void)_evictAllReusableSessionsForReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = [(NSMutableDictionary *)self->_reusableSessionsByRequest count];
  v6 = *MEMORY[0x277CEF0A0];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v9 = 136315650;
      v10 = "[CSSiriAudioPlaybackService _evictAllReusableSessionsForReason:]";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      v14 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Evict %tu sessions from reusable session pool because %@.", &v9, 0x20u);
    }

    [(NSMutableDictionary *)self->_reusableSessionsByRequest removeAllObjects];
    reusableSessionsByRequest = self->_reusableSessionsByRequest;
    self->_reusableSessionsByRequest = 0;
  }

  else if (v7)
  {
    v9 = 136315138;
    v10 = "[CSSiriAudioPlaybackService _evictAllReusableSessionsForReason:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Reusable session pool is already empty.", &v9, 0xCu);
  }
}

- (void)_enumerateListenersUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    setRepresentation = [(NSHashTable *)self->_listeners setRepresentation];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__CSSiriAudioPlaybackService__enumerateListenersUsingBlock___block_invoke;
    v6[3] = &unk_2784C6900;
    v7 = blockCopy;
    [setRepresentation enumerateObjectsUsingBlock:v6];
  }
}

- (void)_invalidate
{
  mEMORY[0x277CEF2F8] = [MEMORY[0x277CEF2F8] sharedObserver];
  [mEMORY[0x277CEF2F8] removeListener:self];

  [(CSAudioSessionController *)self->_audioSessionController unregisterObserver:self];

  [(CSSiriAudioPlaybackService *)self _stopAllRequests:1 completion:0];
}

- (void)_stopAllRequests:(BOOL)requests completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_group_create();
  activeSessionsByRequest = self->_activeSessionsByRequest;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__CSSiriAudioPlaybackService__stopAllRequests_completion___block_invoke;
  v14[3] = &unk_2784C68B8;
  v15 = v7;
  requestsCopy = requests;
  v9 = v7;
  [(NSMutableDictionary *)activeSessionsByRequest enumerateKeysAndObjectsUsingBlock:v14];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSSiriAudioPlaybackService__stopAllRequests_completion___block_invoke_3;
  block[3] = &unk_2784C6C90;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_group_notify(v9, queue, block);
}

void __58__CSSiriAudioPlaybackService__stopAllRequests_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  dispatch_group_enter(v4);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CSSiriAudioPlaybackService__stopAllRequests_completion___block_invoke_2;
  v7[3] = &unk_2784C6FD0;
  v8 = *(a1 + 32);
  [v5 stop:v6 completion:v7];
}

uint64_t __58__CSSiriAudioPlaybackService__stopAllRequests_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_stopRequest:(id)request immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v5 = [(NSMutableDictionary *)self->_activeSessionsByRequest objectForKey:request];
  [v5 stop:immediatelyCopy completion:0];
}

- (void)_handleFinalizationForSession:(id)session error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = MEMORY[0x277CEF0A0];
  v9 = *MEMORY[0x277CEF0A0];
  if (errorCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "[CSSiriAudioPlaybackService _handleFinalizationForSession:error:]";
      v22 = 2112;
      v23 = sessionCopy;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s session = %@, error = %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[CSSiriAudioPlaybackService _handleFinalizationForSession:error:]";
    v22 = 2112;
    v23 = sessionCopy;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s session = %@", buf, 0x16u);
  }

  request = [sessionCopy request];
  [(NSMutableDictionary *)self->_activeSessionsByRequest removeObjectForKey:request];
  if (!errorCopy && ([sessionCopy options] & 2) != 0)
  {
    v11 = *v8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[CSSiriAudioPlaybackService _handleFinalizationForSession:error:]";
      v22 = 2112;
      v23 = sessionCopy;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s Add successfully finalized session %@ to reusable session pool.", buf, 0x16u);
    }

    reusableSessionsByRequest = self->_reusableSessionsByRequest;
    if (!reusableSessionsByRequest)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = self->_reusableSessionsByRequest;
      self->_reusableSessionsByRequest = v13;

      reusableSessionsByRequest = self->_reusableSessionsByRequest;
    }

    [(NSMutableDictionary *)reusableSessionsByRequest setObject:sessionCopy forKey:request];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__CSSiriAudioPlaybackService__handleFinalizationForSession_error___block_invoke;
  v17[3] = &unk_2784C6890;
  v17[4] = self;
  v18 = request;
  v19 = errorCopy;
  v15 = errorCopy;
  v16 = request;
  [(CSSiriAudioPlaybackService *)self _enumerateListenersUsingBlock:v17];
}

- (void)_handleExecutionForSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackService _handleExecutionForSession:]";
    v12 = 2112;
    v13 = sessionCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s session = %@", buf, 0x16u);
  }

  request = [sessionCopy request];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CSSiriAudioPlaybackService__handleExecutionForSession___block_invoke;
  v8[3] = &unk_2784C67C8;
  v8[4] = self;
  v9 = request;
  v7 = request;
  [(CSSiriAudioPlaybackService *)self _enumerateListenersUsingBlock:v8];
}

- (void)_handlePreparationForSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackService _handlePreparationForSession:]";
    v12 = 2112;
    v13 = sessionCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s session = %@", buf, 0x16u);
  }

  request = [sessionCopy request];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__CSSiriAudioPlaybackService__handlePreparationForSession___block_invoke;
  v8[3] = &unk_2784C67C8;
  v8[4] = self;
  v9 = request;
  v7 = request;
  [(CSSiriAudioPlaybackService *)self _enumerateListenersUsingBlock:v8];
}

- (void)_startRequest:(id)request options:(unint64_t)options preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  executionHandlerCopy = executionHandler;
  finalizationHandlerCopy = finalizationHandler;
  if (options)
  {
    v16 = [(NSMutableDictionary *)self->_reusableSessionsByRequest objectForKey:requestCopy];
    if (v16)
    {
      [(NSMutableDictionary *)self->_reusableSessionsByRequest removeObjectForKey:requestCopy];
      v17 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v40 = "[CSSiriAudioPlaybackService _startRequest:options:preparationHandler:executionHandler:finalizationHandler:]";
        v41 = 2112;
        v42 = v16;
        _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_INFO, "%s Reuse existing session %@ from reusable session pool.", buf, 0x16u);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  hapticLibraryKey = [requestCopy hapticLibraryKey];

  if (hapticLibraryKey)
  {
    [(CSSiriAudioPlaybackService *)self _initializeAndPrewarmHapticEngineIfNeededForRequest:requestCopy];
    itemURL = [requestCopy itemURL];
    if (itemURL)
    {
    }

    else
    {
      itemData = [requestCopy itemData];
      v21 = itemData == 0;

      if (v21)
      {
        [(CSSiriAudioPlaybackService *)self _startHapticOnlyRequest:requestCopy options:options preparationHandler:handlerCopy executionHandler:executionHandlerCopy finalizationHandler:finalizationHandlerCopy];
        goto LABEL_14;
      }
    }
  }

  if (!v16)
  {
    v16 = [(CSSiriAudioPlaybackService *)self _createAudioPlaybackSessionWithRequest:requestCopy options:options];
    v22 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v40 = "[CSSiriAudioPlaybackService _startRequest:options:preparationHandler:executionHandler:finalizationHandler:]";
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_INFO, "%s Create new session %@.", buf, 0x16u);
    }
  }

  [(NSMutableDictionary *)self->_activeSessionsByRequest setObject:v16 forKey:requestCopy];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v16);
  _audioSession = [(CSSiriAudioPlaybackService *)self _audioSession];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke;
  v34[3] = &unk_2784C6818;
  v35 = handlerCopy;
  objc_copyWeak(&v36, buf);
  objc_copyWeak(&v37, &location);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_3;
  v28[3] = &unk_2784C6840;
  v31 = executionHandlerCopy;
  objc_copyWeak(&v32, buf);
  objc_copyWeak(&v33, &location);
  v29 = requestCopy;
  selfCopy = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_2_15;
  v24[3] = &unk_2784C6868;
  v25 = finalizationHandlerCopy;
  objc_copyWeak(&v26, buf);
  objc_copyWeak(&v27, &location);
  [v16 startWithOptions:0 audioSession:_audioSession preparationHandler:v34 executionHandler:v28 finalizationHandler:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
LABEL_14:
}

void __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_2;
    v7[3] = &unk_2784C6FA8;
    v8 = WeakRetained;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = [*(a1 + 32) hapticLibraryKey];

  if (v5)
  {
    v6 = [*(a1 + 40) _playHapticForRequest:*(a1 + 32)];
    if (v6)
    {
      v7 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v13 = "[CSSiriAudioPlaybackService _startRequest:options:preparationHandler:executionHandler:finalizationHandler:]_block_invoke_3";
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s Failed to play haptic for playback request: %@", buf, 0x16u);
      }
    }
  }

  if (WeakRetained && v4)
  {
    v8 = WeakRetained[1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_14;
    v9[3] = &unk_2784C6FA8;
    v10 = WeakRetained;
    v11 = v4;
    dispatch_async(v8, v9);
  }
}

void __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_2_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = v6;
  if (WeakRetained && v6)
  {
    v8 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__CSSiriAudioPlaybackService__startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_3_16;
    block[3] = &unk_2784C6EE8;
    v10 = WeakRetained;
    v11 = v7;
    v12 = v3;
    dispatch_async(v8, block);
  }
}

- (void)_prewarmRequest:(id)request completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reusableSessionsByRequest = self->_reusableSessionsByRequest;
  completionCopy = completion;
  v9 = [(NSMutableDictionary *)reusableSessionsByRequest objectForKey:requestCopy];
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[CSSiriAudioPlaybackService _prewarmRequest:completion:]";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s Reuse existing session %@ from reusable session pool.", &v18, 0x16u);
    }
  }

  else
  {
    v10 = [(CSSiriAudioPlaybackService *)self _createAudioPlaybackSessionWithRequest:requestCopy options:3];
    v12 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[CSSiriAudioPlaybackService _prewarmRequest:completion:]";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s Create new session %@.", &v18, 0x16u);
    }

    v13 = self->_reusableSessionsByRequest;
    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = self->_reusableSessionsByRequest;
      self->_reusableSessionsByRequest = v14;

      v13 = self->_reusableSessionsByRequest;
    }

    [(NSMutableDictionary *)v13 setObject:v10 forKey:requestCopy];
  }

  hapticLibraryKey = [requestCopy hapticLibraryKey];

  if (hapticLibraryKey)
  {
    [(CSSiriAudioPlaybackService *)self _initializeAndPrewarmHapticEngineIfNeededForRequest:requestCopy];
  }

  _audioSession = [(CSSiriAudioPlaybackService *)self _audioSession];
  [v10 prepareWithOptions:0 audioSession:_audioSession completion:completionCopy];
}

- (void)_startHapticOnlyRequest:(id)request options:(unint64_t)options preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  executionHandlerCopy = executionHandler;
  finalizationHandlerCopy = finalizationHandler;
  v15 = MEMORY[0x277CEF0A0];
  v16 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSSiriAudioPlaybackService _startHapticOnlyRequest:options:preparationHandler:executionHandler:finalizationHandler:]";
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s No audio file set, but haptic playback request present", &buf, 0xCu);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __118__CSSiriAudioPlaybackService__startHapticOnlyRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke;
  v24[3] = &unk_2784C67C8;
  v24[4] = self;
  v17 = requestCopy;
  v25 = v17;
  [(CSSiriAudioPlaybackService *)self _enumerateListenersUsingBlock:v24];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  if (executionHandlerCopy)
  {
    executionHandlerCopy[2](executionHandlerCopy);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__25207;
  v33 = __Block_byref_object_dispose__25208;
  v34 = [(CSSiriAudioPlaybackService *)self _playHapticForRequest:v17];
  v18 = *(*(&buf + 1) + 40);
  if (v18)
  {
    v19 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
    {
      *v26 = 136315394;
      v27 = "[CSSiriAudioPlaybackService _startHapticOnlyRequest:options:preparationHandler:executionHandler:finalizationHandler:]";
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s Failed to play haptic for playback request: %@", v26, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __118__CSSiriAudioPlaybackService__startHapticOnlyRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke_13;
  v21[3] = &unk_2784C67F0;
  v21[4] = self;
  v20 = v17;
  v22 = v20;
  p_buf = &buf;
  [(CSSiriAudioPlaybackService *)self _enumerateListenersUsingBlock:v21];
  if (finalizationHandlerCopy)
  {
    finalizationHandlerCopy[2](finalizationHandlerCopy, *(*(&buf + 1) + 40));
  }

  _Block_object_dispose(&buf, 8);
}

- (void)_initializeAndPrewarmHapticEngineIfNeededForRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  _hapticEngine = [(CSSiriAudioPlaybackService *)self _hapticEngine];
  v6 = MEMORY[0x277CEF0A0];
  v7 = *MEMORY[0x277CEF0A0];
  v8 = os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO);
  if (_hapticEngine)
  {
    if (v8)
    {
      *buf = 136315394;
      v21 = "[CSSiriAudioPlaybackService _initializeAndPrewarmHapticEngineIfNeededForRequest:]";
      v22 = 2112;
      v23 = requestCopy;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s haptic engine already created, adding %@ to pendingHapticRequests", buf, 0x16u);
    }

    goto LABEL_4;
  }

  if (v8)
  {
    *buf = 136315138;
    v21 = "[CSSiriAudioPlaybackService _initializeAndPrewarmHapticEngineIfNeededForRequest:]";
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s creating haptic engine for audio playback request", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277CBF6B0]);
  _audioSession = [(CSSiriAudioPlaybackService *)self _audioSession];
  v19 = 0;
  _hapticEngine = [v9 initWithAudioSession:_audioSession error:&v19];
  v11 = v19;

  if (v11)
  {
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[CSSiriAudioPlaybackService _initializeAndPrewarmHapticEngineIfNeededForRequest:]";
      v22 = 2112;
      v23 = v11;
      v13 = "%s error creating haptic engine %@";
      v14 = v12;
      v15 = 22;
LABEL_15:
      _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  [_hapticEngine setPlaysHapticsOnly:1];
  v18 = 0;
  [_hapticEngine startAndReturnError:&v18];
  v16 = v18;
  if (v16)
  {
    v11 = v16;
    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSSiriAudioPlaybackService _initializeAndPrewarmHapticEngineIfNeededForRequest:]";
      v13 = "%s Failed to start haptic engine";
      v14 = v17;
      v15 = 12;
      goto LABEL_15;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_4:
  [(NSMutableDictionary *)self->_pendingHapticRequests setObject:_hapticEngine forKey:requestCopy];
LABEL_13:
}

- (void)_hapticPlaybackDidCompleteForAllActiveRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSSiriAudioPlaybackService__hapticPlaybackDidCompleteForAllActiveRequests__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __76__CSSiriAudioPlaybackService__hapticPlaybackDidCompleteForAllActiveRequests__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 72) allKeys];
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

        [*(*(a1 + 32) + 72) removeObjectForKey:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_playHapticForRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    _hapticEngine = [(CSSiriAudioPlaybackService *)self _hapticEngine];
    if (_hapticEngine)
    {
      goto LABEL_3;
    }

    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[CSSiriAudioPlaybackService _playHapticForRequest:]";
      v23 = 2112;
      v24 = requestCopy;
      _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s Failed to start playing haptic for request: %@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CEF2A0] errorWithCode:1401];
    if (!v13)
    {
LABEL_3:
      hapticLibraryKey = [requestCopy hapticLibraryKey];
      v20 = 0;
      v7 = [MEMORY[0x277CBF6D0] patternForKey:hapticLibraryKey error:&v20];
      v8 = v20;

      if (!v8)
      {
        v19 = 0;
        v9 = [_hapticEngine createPlayerWithPattern:v7 error:&v19];
        v10 = v19;
        if (v10)
        {
          v8 = v10;
        }

        else
        {
          v15 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v22 = "[CSSiriAudioPlaybackService _playHapticForRequest:]";
            _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Starting haptic playback", buf, 0xCu);
          }

          v18 = 0;
          [v9 startAtTime:&v18 error:0.0];
          v16 = v18;
          v8 = v16;
          if (_hapticEngine && !v16)
          {
            [(NSMutableDictionary *)self->_activeHapticRequests setObject:_hapticEngine forKey:requestCopy];
            [(NSMutableDictionary *)self->_pendingHapticRequests removeObjectForKey:requestCopy];
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __52__CSSiriAudioPlaybackService__playHapticForRequest___block_invoke;
            v17[3] = &unk_2784C67A0;
            v17[4] = self;
            [_hapticEngine notifyWhenPlayersFinished:v17];
            goto LABEL_15;
          }
        }

LABEL_14:
        [(NSMutableDictionary *)self->_pendingHapticRequests removeObjectForKey:requestCopy];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v8 = v13;
      v7 = 0;
    }

    v9 = 0;
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v22 = "[CSSiriAudioPlaybackService _playHapticForRequest:]";
    _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s audio playback request can not be nil", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CEF2A0] errorWithCode:1401];
LABEL_16:

  return v8;
}

uint64_t __52__CSSiriAudioPlaybackService__playHapticForRequest___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (v3 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "[CSSiriAudioPlaybackService _playHapticForRequest:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Haptic playback stopped with error: %@", buf, 0x16u);
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = "[CSSiriAudioPlaybackService _playHapticForRequest:]_block_invoke";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Haptic playback stopped", buf, 0xCu);
  }

  v6 = dispatch_time(0, 1000000000);
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CSSiriAudioPlaybackService__playHapticForRequest___block_invoke_9;
  block[3] = &unk_2784C6FD0;
  block[4] = v7;
  dispatch_after(v6, v8, block);

  return 1;
}

- (id)_hapticEngine
{
  p_pendingHapticRequests = &self->_pendingHapticRequests;
  if ([(NSMutableDictionary *)self->_pendingHapticRequests count])
  {
    goto LABEL_4;
  }

  activeHapticRequests = self->_activeHapticRequests;
  p_activeHapticRequests = &self->_activeHapticRequests;
  if ([(NSMutableDictionary *)activeHapticRequests count])
  {
    p_pendingHapticRequests = p_activeHapticRequests;
LABEL_4:
    v6 = *p_pendingHapticRequests;
    allKeys = [*p_pendingHapticRequests allKeys];
    firstObject = [allKeys firstObject];
    v9 = [v6 objectForKey:firstObject];

    goto LABEL_5;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (void)stopAllRequestsSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSSiriAudioPlaybackService_stopAllRequestsSynchronously__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)stopAllRequests:(BOOL)requests completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CSSiriAudioPlaybackService_stopAllRequests_completion___block_invoke;
  block[3] = &unk_2784C6778;
  requestsCopy = requests;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)stopRequest:(id)request immediately:(BOOL)immediately
{
  requestCopy = request;
  v7 = requestCopy;
  if (requestCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CSSiriAudioPlaybackService_stopRequest_immediately___block_invoke;
    block[3] = &unk_2784C6750;
    block[4] = self;
    v10 = requestCopy;
    immediatelyCopy = immediately;
    dispatch_async(queue, block);
  }
}

- (void)prewarmRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = completionCopy;
  if (requestCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CSSiriAudioPlaybackService_prewarmRequest_completion___block_invoke;
    block[3] = &unk_2784C6C68;
    block[4] = self;
    v12 = requestCopy;
    v13 = v8;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x277CEF2A0] errorWithCode:1407];
    (v8)[2](v8, v10);
  }
}

- (void)removeAllListeners
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CSSiriAudioPlaybackService_removeAllListeners__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__CSSiriAudioPlaybackService_removeListener___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__CSSiriAudioPlaybackService_addListener___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)startRequest:(id)request options:(unint64_t)options preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  requestCopy = request;
  handlerCopy = handler;
  executionHandlerCopy = executionHandler;
  finalizationHandlerCopy = finalizationHandler;
  v16 = finalizationHandlerCopy;
  if (requestCopy)
  {
    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __107__CSSiriAudioPlaybackService_startRequest_options_preparationHandler_executionHandler_finalizationHandler___block_invoke;
    v19[3] = &unk_2784C6728;
    v19[4] = self;
    v20 = requestCopy;
    optionsCopy = options;
    v21 = handlerCopy;
    v22 = executionHandlerCopy;
    v23 = v16;
    dispatch_async(queue, v19);
  }

  else if (finalizationHandlerCopy)
  {
    v18 = [MEMORY[0x277CEF2A0] errorWithCode:1407];
    (v16)[2](v16, v18);
  }
}

- (CSSiriAudioPlaybackService)initWithAudioSessionController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = CSSiriAudioPlaybackService;
  v6 = [(CSSiriAudioPlaybackService *)&v16 init];
  if (v6)
  {
    v7 = CSSiriAudioServiceGetWorkloop();
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    if (v7)
    {
      v9 = dispatch_queue_create_with_target_V2("com.apple.assistant.audio-playback-service", v8, v7);
    }

    else
    {
      v9 = dispatch_queue_create("com.apple.assistant.audio-playback-service", v8);
    }

    v10 = v9;

    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_audioSessionController, controller);
    v12 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__CSSiriAudioPlaybackService_initWithAudioSessionController___block_invoke;
    block[3] = &unk_2784C6FD0;
    v15 = v6;
    dispatch_async(v12, block);
  }

  return v6;
}

uint64_t __61__CSSiriAudioPlaybackService_initWithAudioSessionController___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v8;

  v11 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  *(v12 + 16) = v11;

  v14 = [MEMORY[0x277CEF2F8] sharedObserver];
  [v14 addListener:*(a1 + 32)];

  v15 = *(*(a1 + 32) + 56);

  return [v15 registerObserver:?];
}

+ (id)sharedService
{
  if (sharedService_onceToken_25230 != -1)
  {
    dispatch_once(&sharedService_onceToken_25230, &__block_literal_global_25231);
  }

  v3 = sharedService_sharedService_25232;

  return v3;
}

void __43__CSSiriAudioPlaybackService_sharedService__block_invoke()
{
  v2 = +[CSAudioSessionController sharedInstance];
  v0 = [[CSSiriAudioPlaybackService alloc] initWithAudioSessionController:v2];
  v1 = sharedService_sharedService_25232;
  sharedService_sharedService_25232 = v0;
}

@end