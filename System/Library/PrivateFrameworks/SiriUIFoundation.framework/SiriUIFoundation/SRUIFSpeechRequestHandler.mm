@interface SRUIFSpeechRequestHandler
- (SRUIFSpeechRequestHandler)initWithDelegate:(id)delegate;
- (SRUIFSpeechRequestHandlerDelegate)delegate;
- (id)prepareForNewSpeechRequest;
- (void)_continuePendingSpeechRequest;
- (void)_performOnCurrentSpeechDipatchGroup:(id)group;
- (void)cancelSpeechRequest;
- (void)discardCurrentSpeechGroup;
- (void)nonSpeechRequestWillBegin;
- (void)speechRecordingDidFail;
- (void)speechRecordingWillBegin;
- (void)startSpeechRequestWithSpeechFileAtURL:(id)l completion:(id)completion;
- (void)startSpeechRequestWithSpeechRequestOptions:(id)options instrumentationTurn:(id)turn isInitialBringUp:(BOOL)up completion:(id)completion;
- (void)stopSpeechRequest;
- (void)stopSpeechRequestWithOptions:(id)options;
- (void)updateSpeechRequestOptions:(id)options;
@end

@implementation SRUIFSpeechRequestHandler

- (void)discardCurrentSpeechGroup
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SRUIFSpeechRequestHandler discardCurrentSpeechGroup]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = self->_currentSpeechRequestGroup;
  if (v4)
  {
    speechRequestGroupGraveyard = self->_speechRequestGroupGraveyard;
    if (!speechRequestGroupGraveyard)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_speechRequestGroupGraveyard;
      self->_speechRequestGroupGraveyard = v6;

      speechRequestGroupGraveyard = self->_speechRequestGroupGraveyard;
    }

    if (([(NSMutableSet *)speechRequestGroupGraveyard containsObject:v4]& 1) == 0)
    {
      [(NSMutableSet *)self->_speechRequestGroupGraveyard addObject:v4];
      objc_initWeak(buf, self);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __54__SRUIFSpeechRequestHandler_discardCurrentSpeechGroup__block_invoke;
      v11 = &unk_279C61898;
      objc_copyWeak(&v13, buf);
      v12 = v4;
      dispatch_group_notify(v12, MEMORY[0x277D85CD0], &v8);

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    [(SRUIFSpeechRequestHandler *)self _continuePendingSpeechRequest:v8];
    [(SRUIFSpeechRequestHandler *)self _setCurrentSpeechRequestGroup:0];
  }
}

- (id)prepareForNewSpeechRequest
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SRUIFSpeechRequestHandler prepareForNewSpeechRequest]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v4 = dispatch_group_create();
  currentSpeechRequestGroup = self->_currentSpeechRequestGroup;
  self->_currentSpeechRequestGroup = v4;

  v6 = self->_currentSpeechRequestGroup;

  return v6;
}

- (void)nonSpeechRequestWillBegin
{
  v8 = *MEMORY[0x277D85DE8];
  delegate = [(SRUIFSpeechRequestHandler *)self delegate];
  v4 = [delegate connectionForSpeechRequestHandler:self];

  if ([v4 isRecording])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SRUIFSpeechRequestHandler nonSpeechRequestWillBegin]";
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s Request will begin while recording is ongoing. Cancelling speech request", &v6, 0xCu);
    }

    [(SRUIFSpeechRequestHandler *)self cancelSpeechRequest];
  }
}

- (SRUIFSpeechRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_continuePendingSpeechRequest
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    continuePendingRequest = self->_continuePendingRequest;
    v5 = v3;
    v6 = _Block_copy(continuePendingRequest);
    v9 = 136315394;
    v10 = "[SRUIFSpeechRequestHandler _continuePendingSpeechRequest]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v7 = self->_continuePendingRequest;
  if (v7)
  {
    v7[2]();
    v8 = self->_continuePendingRequest;
    self->_continuePendingRequest = 0;

    self->_sendContextBeforeContinuingSpeechRequest = 0;
  }
}

void __54__SRUIFSpeechRequestHandler_discardCurrentSpeechGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (SRUIFSpeechRequestHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SRUIFSpeechRequestHandler;
  v5 = [(SRUIFSpeechRequestHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)startSpeechRequestWithSpeechRequestOptions:(id)options instrumentationTurn:(id)turn isInitialBringUp:(BOOL)up completion:(id)completion
{
  upCopy = up;
  v36 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  turnCopy = turn;
  completionCopy = completion;
  _currentSpeechRequestGroup = [(SRUIFSpeechRequestHandler *)self _currentSpeechRequestGroup];
  if (_currentSpeechRequestGroup)
  {
    delegate = [(SRUIFSpeechRequestHandler *)self delegate];
    v15 = [delegate connectionForSpeechRequestHandler:self];

    v16 = MEMORY[0x277CEF098];
    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      turnIdentifier = [turnCopy turnIdentifier];
      v32 = 136315394;
      v33 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
      v34 = 2112;
      v35 = turnIdentifier;
      _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Setting turn identifier for speech request %@", &v32, 0x16u);
    }

    turnIdentifier2 = [turnCopy turnIdentifier];
    [optionsCopy setTurnIdentifier:turnIdentifier2];

    v21 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      userProfileHeadphoneConnected = [optionsCopy userProfileHeadphoneConnected];
      v32 = 136315394;
      v33 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
      v34 = 1024;
      LODWORD(v35) = userProfileHeadphoneConnected;
      _os_log_impl(&dword_26951F000, v22, OS_LOG_TYPE_DEFAULT, "%s #shih startSpeech headphone connected %d", &v32, 0x12u);
    }

    if (([v15 isRecording] & 1) == 0)
    {
      v24 = [v15 startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:optionsCopy];
      continuePendingRequest = self->_continuePendingRequest;
      if (continuePendingRequest)
      {
        continuePendingRequest[2]();
      }

      self->_sendContextBeforeContinuingSpeechRequest = 0;
      if (v15)
      {
        v27 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 136315394;
          v33 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
          v34 = 1024;
          LODWORD(v35) = upCopy;
          _os_log_impl(&dword_26951F000, v27, OS_LOG_TYPE_DEFAULT, "%s Captured pending speech request dispatch block. Is Initial Bring up %{BOOL}d", &v32, 0x12u);
        }

        v28 = _Block_copy(v24);
        v29 = self->_continuePendingRequest;
        self->_continuePendingRequest = v28;

        self->_sendContextBeforeContinuingSpeechRequest = !upCopy;
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        if (v24)
        {
          v24[2](v24);
        }

        v30 = self->_continuePendingRequest;
        self->_continuePendingRequest = 0;

        if (completionCopy)
        {
          v31 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No AFConnection." underlyingError:0];
          (completionCopy)[2](completionCopy, v31);
        }
      }

      goto LABEL_19;
    }

    if (completionCopy)
    {
      v24 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"AFConnection is already recording." underlyingError:0];
      (completionCopy)[2](completionCopy, v24);
LABEL_19:
    }

LABEL_20:

    goto LABEL_21;
  }

  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:v25 instrumentationTurn:? isInitialBringUp:? completion:?];
    if (!completionCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (completionCopy)
  {
LABEL_11:
    v15 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No speech request dispatch group." underlyingError:0];
    (completionCopy)[2](completionCopy, v15);
    goto LABEL_20;
  }

LABEL_21:
}

- (void)startSpeechRequestWithSpeechFileAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  _currentSpeechRequestGroup = [(SRUIFSpeechRequestHandler *)self _currentSpeechRequestGroup];
  v9 = _currentSpeechRequestGroup;
  if (_currentSpeechRequestGroup)
  {
    dispatch_group_enter(_currentSpeechRequestGroup);
  }

  objc_initWeak(&location, self);
  delegate = [(SRUIFSpeechRequestHandler *)self delegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SRUIFSpeechRequestHandler_startSpeechRequestWithSpeechFileAtURL_completion___block_invoke;
  v14[3] = &unk_279C61848;
  objc_copyWeak(&v18, &location);
  v11 = v9;
  v15 = v11;
  v12 = lCopy;
  v16 = v12;
  v13 = completionCopy;
  v17 = v13;
  [delegate sendContextForSpeechRequestContinuationWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

uint64_t __78__SRUIFSpeechRequestHandler_startSpeechRequestWithSpeechFileAtURL_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [WeakRetained _currentSpeechRequestGroup];

    if (v3 == v4)
    {
      v5 = [v10 delegate];
      v6 = [v5 connectionForSpeechRequestHandler:v10];
      [v6 startSpeechRequestWithSpeechFileAtURL:*(a1 + 40)];

      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, 0);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    dispatch_group_leave(v8);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)speechRecordingWillBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    sendContextBeforeContinuingSpeechRequest = self->_sendContextBeforeContinuingSpeechRequest;
    *buf = 136315394;
    v9 = "[SRUIFSpeechRequestHandler speechRecordingWillBegin]";
    v10 = 1024;
    v11 = sendContextBeforeContinuingSpeechRequest;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s Should send context before speech request continuation: %{BOOL}d", buf, 0x12u);
  }

  if (self->_sendContextBeforeContinuingSpeechRequest)
  {
    objc_initWeak(buf, self);
    delegate = [(SRUIFSpeechRequestHandler *)self delegate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__SRUIFSpeechRequestHandler_speechRecordingWillBegin__block_invoke;
    v6[3] = &unk_279C61870;
    objc_copyWeak(&v7, buf);
    [delegate sendContextForSpeechRequestContinuationWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SRUIFSpeechRequestHandler *)self _continuePendingSpeechRequest];
  }
}

void __53__SRUIFSpeechRequestHandler_speechRecordingWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _continuePendingSpeechRequest];
}

- (void)speechRecordingDidFail
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFSpeechRequestHandler speechRecordingDidFail]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(SRUIFSpeechRequestHandler *)self _continuePendingSpeechRequest];
}

- (void)stopSpeechRequestWithOptions:(id)options
{
  v14 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SRUIFSpeechRequestHandler stopSpeechRequestWithOptions:]";
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SRUIFSpeechRequestHandler_stopSpeechRequestWithOptions___block_invoke;
  v7[3] = &unk_279C61898;
  objc_copyWeak(&v9, buf);
  v6 = optionsCopy;
  v8 = v6;
  [(SRUIFSpeechRequestHandler *)self _performOnCurrentSpeechDipatchGroup:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __58__SRUIFSpeechRequestHandler_stopSpeechRequestWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v2 connectionForSpeechRequestHandler:v3];
  [v4 stopSpeechWithOptions:*(a1 + 32)];
}

- (void)stopSpeechRequest
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRUIFSpeechRequestHandler stopSpeechRequest]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  delegate = [(SRUIFSpeechRequestHandler *)self delegate];
  v5 = [delegate connectionForSpeechRequestHandler:self];
  [v5 stopSpeech];
}

- (void)updateSpeechRequestOptions:(id)options
{
  v14 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SRUIFSpeechRequestHandler updateSpeechRequestOptions:]";
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SRUIFSpeechRequestHandler_updateSpeechRequestOptions___block_invoke;
  v7[3] = &unk_279C61898;
  objc_copyWeak(&v9, buf);
  v6 = optionsCopy;
  v8 = v6;
  [(SRUIFSpeechRequestHandler *)self _performOnCurrentSpeechDipatchGroup:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __56__SRUIFSpeechRequestHandler_updateSpeechRequestOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v2 connectionForSpeechRequestHandler:v3];
  [v4 updateSpeechOptions:*(a1 + 32)];
}

- (void)_performOnCurrentSpeechDipatchGroup:(id)group
{
  groupCopy = group;
  _currentSpeechRequestGroup = [(SRUIFSpeechRequestHandler *)self _currentSpeechRequestGroup];
  if (_currentSpeechRequestGroup)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SRUIFSpeechRequestHandler__performOnCurrentSpeechDipatchGroup___block_invoke;
    v7[3] = &unk_279C618C0;
    objc_copyWeak(&v10, &location);
    v8 = _currentSpeechRequestGroup;
    v9 = groupCopy;
    dispatch_group_notify(v8, MEMORY[0x277D85CD0], v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFSpeechRequestHandler _performOnCurrentSpeechDipatchGroup:v6];
    }
  }
}

void __65__SRUIFSpeechRequestHandler__performOnCurrentSpeechDipatchGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained _currentSpeechRequestGroup];

    WeakRetained = v5;
    if (v3 == v4)
    {
      (*(*(a1 + 40) + 16))();
      WeakRetained = v5;
    }
  }
}

- (void)cancelSpeechRequest
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRUIFSpeechRequestHandler cancelSpeechRequest]";
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  delegate = [(SRUIFSpeechRequestHandler *)self delegate];
  [delegate speechRequestHandlerWillCancelSpeechRequest:self];

  delegate2 = [(SRUIFSpeechRequestHandler *)self delegate];
  v7 = [delegate2 connectionForSpeechRequestHandler:self];

  delegate3 = [(SRUIFSpeechRequestHandler *)self delegate];
  v9 = [delegate3 speechRequestHandlerShouldRollBackRequestForSpeechCancellation:self];

  if (v9)
  {
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRUIFSpeechRequestHandler cancelSpeechRequest]";
      _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s Delegate specified a rollback is necessary", &v12, 0xCu);
    }

    [v7 rollbackRequest];
  }

  [v7 cancelRequest];
  delegate4 = [(SRUIFSpeechRequestHandler *)self delegate];
  [delegate4 speechRequestHandlerDidCancelSpeechRequest:self];
}

- (void)startSpeechRequestWithSpeechRequestOptions:(os_log_t)log instrumentationTurn:isInitialBringUp:completion:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s couldn't find a speech request dispatch group", &v1, 0xCu);
}

- (void)_performOnCurrentSpeechDipatchGroup:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SRUIFSpeechRequestHandler _performOnCurrentSpeechDipatchGroup:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s Speech Request Dispatch Group nil.", &v1, 0xCu);
}

@end