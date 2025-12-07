@interface SRUIFUIBridgeClient
- (SRUIFUIBridgeClient)initWithStateHandler:(id)handler;
- (SRUIFUIBridgeClient)initWithStateHandler:(id)handler delegateQueue:(id)queue;
- (SRUIFUIBridgeClientDelegate)delegate;
- (void)_setIsAttending:(BOOL)attending;
- (void)endForReason:(int64_t)reason;
- (void)idleAndQuietDidChange:(BOOL)change;
- (void)newRequestWillStart;
- (void)notifySessionThatTypingStarted;
- (void)promptedUserForInput;
- (void)stopAttending;
- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)start;
- (void)uiBridgeServiceDidReceiveTasks:(id)tasks;
- (void)uiBridgeServiceDidStartAttending;
- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)reason;
- (void)uiBridgeServiceReceivedNLRoutingDecision:(id)decision;
- (void)uiBridgeServiceReceivedRequestProgress:(id)progress;
- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt;
- (void)uiBridgeServiceReceivedSiriResponse:(id)response;
- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)result;
- (void)uiBridgeServiceWillStartAttending;
@end

@implementation SRUIFUIBridgeClient

- (void)newRequestWillStart
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[SRUIFUIBridgeClient newRequestWillStart]";
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation", &v3, 0xCu);
  }
}

- (SRUIFUIBridgeClient)initWithStateHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = SRUIFUIBridgeClient;
  v6 = [(SRUIFUIBridgeClient *)&v15 init];
  objc_storeStrong(&v6->_stateHandler, handler);
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SRUIFUIBridgeClient initWithStateHandler:]";
    _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - creating UIBridge client", buf, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x277D61A20]) initWithDelegate:v6];
  client = v6->_client;
  v6->_client = v8;

  [(SUIBUIBridgeClient *)v6->_client preheat];
  v10 = dispatch_queue_create("com.apple.siri.attendingQueue", 0);
  queue = v6->_queue;
  v6->_queue = v10;

  v12 = objc_alloc_init(_TtC16SiriUIFoundation24SRUIFLatencyStateManager);
  latencyStateManager = v6->_latencyStateManager;
  v6->_latencyStateManager = v12;

  return v6;
}

- (SRUIFUIBridgeClient)initWithStateHandler:(id)handler delegateQueue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SRUIFUIBridgeClient;
  queueCopy = queue;
  v9 = [(SRUIFUIBridgeClient *)&v19 init];
  objc_storeStrong(&v9->_stateHandler, handler);
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SRUIFUIBridgeClient initWithStateHandler:delegateQueue:]";
    _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - creating UIBridge client with delegate queue", buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277D61A20]);
  v12 = [v11 initWithDelegate:v9 delegateQueue:{queueCopy, v19.receiver, v19.super_class}];

  client = v9->_client;
  v9->_client = v12;

  [(SUIBUIBridgeClient *)v9->_client preheat];
  v14 = dispatch_queue_create("com.apple.siri.attendingQueue", 0);
  queue = v9->_queue;
  v9->_queue = v14;

  v16 = objc_alloc_init(_TtC16SiriUIFoundation24SRUIFLatencyStateManager);
  latencyStateManager = v9->_latencyStateManager;
  v9->_latencyStateManager = v16;

  return v9;
}

- (void)idleAndQuietDidChange:(BOOL)change
{
  if (change && [(SRUIFUIBridgeClient *)self isAttending])
  {
    _stateHandler = [(SRUIFUIBridgeClient *)self _stateHandler];
    [_stateHandler performTransitionForEvent:9];
  }
}

- (void)endForReason:(int64_t)reason
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithInteger:reason];
    v9 = 136315394;
    v10 = "[SRUIFUIBridgeClient endForReason:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - end for reason %@", &v9, 0x16u);
  }

  [(SUIBUIBridgeClient *)self->_client stopAttendingForReason:1];
  [(SUIBUIBridgeClient *)self->_client siriDismissed];
  [(SRUIFUIBridgeClient *)self _setIsAttending:0];
}

- (void)stopAttending
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFUIBridgeClient stopAttending]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - stop attending", &v4, 0xCu);
  }

  [(SUIBUIBridgeClient *)self->_client stopAttendingForReason:1];
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:10];
  [(SRUIFUIBridgeClient *)self _setIsAttending:0];
}

- (void)_setIsAttending:(BOOL)attending
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SRUIFUIBridgeClient__setIsAttending___block_invoke;
  block[3] = &unk_279C627E0;
  objc_copyWeak(&v7, &location);
  attendingCopy = attending;
  dispatch_sync(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__SRUIFUIBridgeClient__setIsAttending___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 32) != *(a1 + 40))
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 32);
      v6 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[SRUIFUIBridgeClient _setIsAttending:]_block_invoke";
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s %d => %d", &v10, 0x18u);
    }

    *(v3 + 32) = *(a1 + 40);
    v7 = objc_loadWeakRetained(v3 + 5);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(v3 + 5);
      [v9 attendingStatusChanged:*(v3 + 32)];
    }
  }
}

- (void)promptedUserForInput
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFUIBridgeClient promptedUserForInput]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation", &v4, 0xCu);
  }

  [(SUIBUIBridgeClient *)self->_client siriPrompted];
}

- (void)notifySessionThatTypingStarted
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient notifySessionThatTypingStarted]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #sae prewarming for type to Siri request", &v5, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277D61A18]) initWithBuilder:&__block_literal_global_8];
  [(SUIBUIBridgeClient *)self->_client notifyTypingStartedWith:v4];
}

void __53__SRUIFUIBridgeClient_notifySessionThatTypingStarted__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v3 setTypingSessionId:v4];
}

- (void)uiBridgeServiceWillStartAttending
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFUIBridgeClient uiBridgeServiceWillStartAttending]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - will start attending", &v4, 0xCu);
  }

  [(SRUIFUIBridgeClient *)self _setIsAttending:1];
}

- (void)uiBridgeServiceDidStartAttending
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFUIBridgeClient uiBridgeServiceDidStartAttending]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - did start attending", &v4, 0xCu);
  }

  [(SRUIFUIBridgeClient *)self _setIsAttending:1];
}

- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)reason
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:]";
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - did stop attending", &v5, 0xCu);
  }

  [(SRUIFUIBridgeClient *)self _setIsAttending:0];
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:10];
}

- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)start
{
  startCopy = start;
  v17 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _stateHandler = [(SRUIFUIBridgeClient *)self _stateHandler];
    v8 = SRUIFSiriSessionStateGetDescription([_stateHandler state]);
    v11 = 136315650;
    v12 = "[SRUIFUIBridgeClient uiBridgeServiceDetectedSpeechStart:]";
    v13 = 1024;
    v14 = startCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - speech start detected, shouldDuckTTS: %d, currentState: %@", &v11, 0x1Cu);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:11];
  if (startCopy)
  {
    self->_didDuckTTS = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LODWORD(v10) = 1036831949;
    [WeakRetained duckTTSToVolume:&__block_literal_global_12 rampTime:v10 completion:0.5];
  }
}

void __58__SRUIFUIBridgeClient_uiBridgeServiceDetectedSpeechStart___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (v2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __58__SRUIFUIBridgeClient_uiBridgeServiceDetectedSpeechStart___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SRUIFUIBridgeClient uiBridgeServiceDetectedSpeechStart:]_block_invoke";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - successfully ducked TTS", &v11, 0xCu);
  }
}

- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)result
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]";
    v14 = 2048;
    resultCopy = result;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - mitigationResult: %ld", &v12, 0x16u);
  }

  if (result == 1)
  {
    v7 = 13;
  }

  else
  {
    if (result != 3)
    {
      goto LABEL_8;
    }

    v7 = 12;
  }

  _stateHandler = [(SRUIFUIBridgeClient *)self _stateHandler];
  [_stateHandler performTransitionForEvent:v7];

LABEL_8:
  if (self->_didDuckTTS)
  {
    self->_didDuckTTS = 0;
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]";
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - unducking TTS", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LODWORD(v11) = 1.0;
    [WeakRetained duckTTSToVolume:&__block_literal_global_14 rampTime:v11 completion:0.5];
  }
}

void __69__SRUIFUIBridgeClient_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (v2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __69__SRUIFUIBridgeClient_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]_block_invoke";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - successfully unducked TTS", &v11, 0xCu);
  }
}

- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedShowAssetsDownloadPrompt]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - Received Show Assets Download notification prompt.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained showAssetsDownloadNotificationPrompt];
}

- (void)uiBridgeServiceDidReceiveTasks:(id)tasks
{
  v26 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  v5 = [tasksCopy count];
  v6 = MEMORY[0x277CEF098];
  if (v5 >= 2)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFUIBridgeClient *)v7 uiBridgeServiceDidReceiveTasks:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  lastObject = [tasksCopy lastObject];
  taskId = [lastObject taskId];

  v17 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SRUIFUIBridgeClient uiBridgeServiceDidReceiveTasks:]";
    v24 = 2112;
    v25 = taskId;
    _os_log_impl(&dword_26951F000, v17, OS_LOG_TYPE_DEFAULT, "%s Siri UI received task with identifier: %@", &v22, 0x16u);
  }

  latencyStateManager = self->_latencyStateManager;
  uUIDString = [taskId UUIDString];
  [(SRUIFLatencyStateManager *)latencyStateManager processTaskReceivedWithIdentifier:uUIDString];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(uUIDString) = objc_opt_respondsToSelector();

  if (uUIDString)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 orchestrationBeganTaskWithIdentifier:taskId];
  }
}

- (void)uiBridgeServiceReceivedSiriResponse:(id)response
{
  responseCopy = response;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SRUIFUIBridgeClient *)responseCopy uiBridgeServiceReceivedSiriResponse:v5];
  }

  inAppResponse = [responseCopy inAppResponse];

  if (inAppResponse)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained orchestrationDidPresentResponseFullyInApp];
  }
}

- (void)uiBridgeServiceReceivedRequestProgress:(id)progress
{
  progressCopy = progress;
  if ([progressCopy progressType] == 2)
  {
    intelligenceFlowProgressUpdate = [progressCopy intelligenceFlowProgressUpdate];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SRUIFUIBridgeClient *)v6 uiBridgeServiceReceivedRequestProgress:intelligenceFlowProgressUpdate];
    }

    [(SRUIFLatencyStateManager *)self->_latencyStateManager processLatencyProgressUpdate:intelligenceFlowProgressUpdate];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      getLatestLatencyInformation = [(SRUIFLatencyStateManager *)self->_latencyStateManager getLatestLatencyInformation];
      [v9 receivedLatencyInformation:getLatestLatencyInformation];
    }
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SRUIFUIBridgeClient *)v11 uiBridgeServiceReceivedRequestProgress:progressCopy];
    }
  }
}

- (void)uiBridgeServiceReceivedNLRoutingDecision:(id)decision
{
  decisionCopy = decision;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SRUIFUIBridgeClient *)decisionCopy uiBridgeServiceReceivedNLRoutingDecision:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 receivedNLRoutingDecision:decisionCopy];
  }
}

- (SRUIFUIBridgeClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__SRUIFUIBridgeClient_uiBridgeServiceDetectedSpeechStart___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFUIBridgeClient uiBridgeServiceDetectedSpeechStart:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #IntuitiveConversation - failed to duck TTS", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __69__SRUIFUIBridgeClient_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #IntuitiveConversation - failed to unduck TTS", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)uiBridgeServiceDidReceiveTasks:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFUIBridgeClient uiBridgeServiceDidReceiveTasks:]";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s Siri UI received more than one task. Taking the last one", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)uiBridgeServiceReceivedSiriResponse:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 inAppResponse];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)uiBridgeServiceReceivedRequestProgress:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 progressType];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)uiBridgeServiceReceivedRequestProgress:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  [a2 progress];
  v9 = [a2 progressDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)uiBridgeServiceReceivedNLRoutingDecision:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedNLRoutingDecision:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_26951F000, a2, OS_LOG_TYPE_DEBUG, "%s Received uiBridgeServiceReceivedNLRoutingDecision with description: %@", &v2, 0x16u);
}

@end