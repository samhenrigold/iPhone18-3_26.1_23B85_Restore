@interface SiriPresentationPineBoardMainScreenViewController
- (BOOL)_getValueForShouldRequestDictation;
- (SiriPresentationPineBoardMainScreenViewController)initWithIdentifier:(int64_t)identifier hostedPresentationFrame:(CGRect)frame;
- (id)siriViewController:(id)controller willStartRequestWithOptions:(id)options;
- (void)_forwardHIDButtonEventWithUsagePage:(unsigned int)page usage:(unsigned int)usage type:(int64_t)type senderID:(unint64_t)d;
- (void)_prewarmSiriVideoFlowDelegatePlugin;
- (void)setNextAssistantRecognitionStrings:(id)strings;
- (void)setNextVoiceRecognitionAudioInputPaths:(id)paths;
- (void)siriViewController:(id)controller didChangePresentationPeekMode:(unint64_t)mode;
- (void)siriViewController:(id)controller didChangePresentationVisualState:(unint64_t)state;
- (void)siriViewController:(id)controller didReceiveButtonUpWithRequestOptions:(id)options;
- (void)siriViewController:(id)controller sceneDidActivateWithIdentifier:(id)identifier;
- (void)siriViewControllerDidChangeToListeningMode:(id)mode;
- (void)siriViewControllerDidDeactivateScene:(id)scene;
- (void)siriViewControllerDidPresentKeyboard:(id)keyboard;
@end

@implementation SiriPresentationPineBoardMainScreenViewController

- (SiriPresentationPineBoardMainScreenViewController)initWithIdentifier:(int64_t)identifier hostedPresentationFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = SiriPresentationPineBoardMainScreenViewController;
  v8 = [(SiriPresentationViewController *)&v11 initWithIdentifier:identifier hostedPresentationFrame:?];
  v9 = v8;
  if (v8)
  {
    [(SiriPresentationPineBoardMainScreenViewController *)v8 _prewarmFlamesWithPresentationFrame:x, y, width, height];
    v9->_shouldRequestDictation = 0;
    v9->_didRequestDictationStart = 0;
    v9->_shouldListenForSceneActivation = 0;
  }

  return v9;
}

- (void)_prewarmSiriVideoFlowDelegatePlugin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriPresentationPineBoardMainScreenViewController _prewarmSiriVideoFlowDelegatePlugin]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation  _prewarmSiriVideoFlowDelegatePlugin", &v10, 0xCu);
  }

  clientLite = self->_clientLite;
  self->_clientLite = 0;

  v5 = objc_alloc_init(MEMORY[0x277CEF1D8]);
  v6 = self->_clientLite;
  self->_clientLite = v5;

  v7 = [objc_alloc(MEMORY[0x277D47458]) initWithBundleIdentifier:@"com.apple.siri.VideoFlowDelegatePlugin"];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v7 setAceId:uUIDString];

  [(AFClientLite *)self->_clientLite handleCommand:v7 commandHandler:0 completion:&__block_literal_global_0];
}

void __88__SiriPresentationPineBoardMainScreenViewController__prewarmSiriVideoFlowDelegatePlugin__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v4 || !a2)
  {
    if (v6)
    {
      v10 = 136315394;
      v11 = "[SiriPresentationPineBoardMainScreenViewController _prewarmSiriVideoFlowDelegatePlugin]_block_invoke";
      v12 = 2112;
      v13 = v4;
      v7 = "%s #activation _prewarmSiriVideoFlowDelegatePlugin failed with error: %@";
      v8 = v5;
      v9 = 22;
      goto LABEL_7;
    }
  }

  else if (v6)
  {
    v10 = 136315138;
    v11 = "[SiriPresentationPineBoardMainScreenViewController _prewarmSiriVideoFlowDelegatePlugin]_block_invoke";
    v7 = "%s #activation _prewarmSiriVideoFlowDelegatePlugin successful";
    v8 = v5;
    v9 = 12;
LABEL_7:
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
  }
}

- (void)siriViewController:(id)controller didChangePresentationPeekMode:(unint64_t)mode
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v7 = [objc_opt_class() conformsToProtocol:&unk_2833C6AF8];

  if (v7)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 siriPresentation:self didChangePresentationPeekMode:mode];
  }
}

- (void)siriViewController:(id)controller didChangePresentationVisualState:(unint64_t)state
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [siriPresentationControllerDelegate siriPresentation:self didChangePresentationVisualState:state];
  }
}

- (id)siriViewController:(id)controller willStartRequestWithOptions:(id)options
{
  v48 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  optionsCopy = options;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    v46 = 2112;
    v47 = optionsCopy;
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v10 = optionsCopy;
  [v10 setUseAutomaticEndpointing:0];
  [v10 setUseStreamingDictation:1];
  requestInfo = [v10 requestInfo];
  if ([requestInfo afui_isRemoteHeadsetActivation])
  {
  }

  else
  {
    afui_isTVFollowUpHearstActivation = [v10 afui_isTVFollowUpHearstActivation];

    if ((afui_isTVFollowUpHearstActivation & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #tv Automatic endpointing for hearst request and server command in multi-turn", buf, 0xCu);
  }

  [v10 setUseAutomaticEndpointing:1];
LABEL_9:
  [v10 setReleaseAudioSessionOnRecordingCompletion:1];
  v14 = [(SiriPresentationViewController *)self _updateRequestOptionsWithTestingInput:v10];

  activationDeviceIdentifier = [v14 activationDeviceIdentifier];
  v16 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CCACC8];
    v18 = v16;
    currentThread = [v17 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    v46 = 2048;
    v47 = qualityOfService;
    _os_log_impl(&dword_21FEE5000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v21 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", buf, 0xCu);
  }

  inputType = [v14 inputType];
  v23 = ([v14 isShortButtonPressAction] & 1) == 0 && objc_msgSend(v14, "requestSource") != 36 && objc_msgSend(v14, "requestSource") != 24 && objc_msgSend(activationDeviceIdentifier, "length") != 0;
  self->_shouldRequestDictation = inputType == v23;
  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v24 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v24, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", buf, 0xCu);
  }

  v25 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = NSStringFromBOOL();
    *buf = 136315394;
    v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    v46 = 2112;
    v47 = v27;
    _os_log_impl(&dword_21FEE5000, v26, OS_LOG_TYPE_DEFAULT, "%s #activation Should start Dictation - %@", buf, 0x16u);
  }

  if (self->_shouldRequestDictation)
  {
    requestDictationFromSiriGroup = self->_requestDictationFromSiriGroup;
    self->_requestDictationFromSiriGroup = 0;

    v29 = dispatch_group_create();
    v30 = self->_requestDictationFromSiriGroup;
    self->_requestDictationFromSiriGroup = v29;

    if ([v14 isInitialBringUp])
    {
      dispatch_group_enter(self->_requestDictationFromSiriGroup);
      v31 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = MEMORY[0x277CCACC8];
        v33 = v31;
        currentThread2 = [v32 currentThread];
        qualityOfService2 = [currentThread2 qualityOfService];
        *buf = 136315394;
        v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
        v46 = 2048;
        v47 = qualityOfService2;
        _os_log_impl(&dword_21FEE5000, v33, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", buf, 0x16u);
      }

      os_unfair_lock_lock(&self->_dictationInProgressLock);
      v36 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
        _os_log_impl(&dword_21FEE5000, v36, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", buf, 0xCu);
      }

      self->_shouldListenForSceneActivation = 1;
      os_unfair_lock_unlock(&self->_dictationInProgressLock);
      v37 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
        _os_log_impl(&dword_21FEE5000, v37, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", buf, 0xCu);
      }
    }

    dispatch_group_enter(self->_requestDictationFromSiriGroup);
    objc_initWeak(buf, self);
    v38 = self->_requestDictationFromSiriGroup;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __100__SiriPresentationPineBoardMainScreenViewController_siriViewController_willStartRequestWithOptions___block_invoke;
    v41[3] = &unk_2784300F8;
    objc_copyWeak(&v43, buf);
    v42 = activationDeviceIdentifier;
    dispatch_group_notify(v38, MEMORY[0x277D85CD0], v41);

    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
  }

  else
  {
    v39 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
      _os_log_impl(&dword_21FEE5000, v39, OS_LOG_TYPE_DEFAULT, "%s #activation sending command to warm up VideoFlowDelegatePlugin", buf, 0xCu);
    }

    [(SiriPresentationPineBoardMainScreenViewController *)self _prewarmSiriVideoFlowDelegatePlugin];
  }

  return v14;
}

void __100__SiriPresentationPineBoardMainScreenViewController_siriViewController_willStartRequestWithOptions___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x277CCACC8];
      v6 = v4;
      v7 = [v5 currentThread];
      v11 = 136315394;
      v12 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
      v13 = 2048;
      v14 = [v7 qualityOfService];
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_dictationInProgressLock about to lock with qos: %zd", &v11, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 372);
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_dictationInProgressLock successfully locked", &v11, 0xCu);
    }

    if (BYTE2(WeakRetained[373]._os_unfair_lock_opaque) == 1)
    {
      -[os_unfair_lock_s _forwardHIDButtonEventWithUsagePage:usage:type:senderID:](WeakRetained, "_forwardHIDButtonEventWithUsagePage:usage:type:senderID:", 12, 4, 0, [*(a1 + 32) longLongValue]);
      LOBYTE(WeakRetained[373]._os_unfair_lock_opaque) = 1;
      BYTE2(WeakRetained[373]._os_unfair_lock_opaque) = 0;
      v9 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Forwarded Dictation Start Event to BackBoard", &v11, 0xCu);
      }
    }

    os_unfair_lock_unlock(WeakRetained + 372);
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_dictationInProgressLock unlocked", &v11, 0xCu);
    }
  }
}

- (void)siriViewController:(id)controller didReceiveButtonUpWithRequestOptions:(id)options
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  optionsCopy = options;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x277CCACC8];
    v11 = v9;
    currentThread = [v10 currentThread];
    v19 = 136315394;
    v20 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
    v21 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v19, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
    _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v19, 0xCu);
  }

  didRequestDictationStart = self->_didRequestDictationStart;
  self->_shouldRequestDictation = 0;
  self->_didRequestDictationStart = 0;
  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
    _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", &v19, 0xCu);
  }

  if (didRequestDictationStart)
  {
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
      _os_log_impl(&dword_21FEE5000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation Forwarding Dictation stop event to BackBoard", &v19, 0xCu);
    }

    activationDeviceIdentifier = [optionsCopy activationDeviceIdentifier];
    -[SiriPresentationPineBoardMainScreenViewController _forwardHIDButtonEventWithUsagePage:usage:type:senderID:](self, "_forwardHIDButtonEventWithUsagePage:usage:type:senderID:", 12, 4, 1, [activationDeviceIdentifier longLongValue]);
  }

  requestDictationFromSiriGroup = self->_requestDictationFromSiriGroup;
  self->_requestDictationFromSiriGroup = 0;
}

- (void)siriViewControllerDidPresentKeyboard:(id)keyboard
{
  v18 = *MEMORY[0x277D85DE8];
  keyboardCopy = keyboard;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACC8];
    v8 = v6;
    currentThread = [v7 currentThread];
    v14 = 136315394;
    v15 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
    v16 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v14, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
    _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v14, 0xCu);
  }

  if (self->_requestDictationFromSiriGroup)
  {
    shouldRequestDictation = self->_shouldRequestDictation;
  }

  else
  {
    shouldRequestDictation = 0;
  }

  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", &v14, 0xCu);
  }

  if (shouldRequestDictation)
  {
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
      _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation Keyboard Ready to Start Dictation", &v14, 0xCu);
    }

    dispatch_group_leave(self->_requestDictationFromSiriGroup);
  }
}

- (void)siriViewController:(id)controller sceneDidActivateWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [siriPresentationControllerDelegate siriPresentation:self sceneDidActivateWithIdentifier:identifierCopy];
  }

  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x277CCACC8];
    v10 = v8;
    currentThread = [v9 currentThread];
    v16 = 136315394;
    v17 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
    v18 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v16, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v16, 0xCu);
  }

  if (self->_requestDictationFromSiriGroup && self->_shouldRequestDictation && self->_shouldListenForSceneActivation)
  {
    self->_shouldListenForSceneActivation = 0;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", &v16, 0xCu);
  }

  if (v13)
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
      _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation Scene Activated & ready to start dictation", &v16, 0xCu);
    }

    dispatch_group_leave(self->_requestDictationFromSiriGroup);
  }
}

- (void)siriViewControllerDidDeactivateScene:(id)scene
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [siriPresentationControllerDelegate siriPresentationDidDeactivateScene:self];
  }
}

- (void)siriViewControllerDidChangeToListeningMode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  [(SiriPresentationPineBoardMainScreenViewController *)self _buttonDownTimestamp];
  if (v4 > 0.0)
  {
    CFAbsoluteTimeGetCurrent();
    SiriSystemUpTimeFromCFAbsoluteCurrentTime();
    v6 = v5 - self->_buttonDownTimestamp;
    v7 = MEMORY[0x277CEF098];
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = v8;
      v11 = [v9 numberWithDouble:v6];
      v14 = 136315394;
      v15 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidChangeToListeningMode:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation Launch time (button.down - listening): %@", &v14, 0x16u);
    }

    [(SiriPresentationPineBoardMainScreenViewController *)self _thresholdForTriggeringABCInLaunch];
    if (v6 >= v12)
    {
      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidChangeToListeningMode:]";
        _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation Triggering ABC for launch time >= 2.5 seconds", &v14, 0xCu);
      }

      [(SiriPresentationViewController *)self _logSignatureWithType:@"tvos_launch_performance" subType:@"tvos_long_launch_time" context:0];
    }
  }
}

- (void)setNextVoiceRecognitionAudioInputPaths:(id)paths
{
  v26 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SiriPresentationPineBoardMainScreenViewController setNextVoiceRecognitionAudioInputPaths:]";
    v24 = 2112;
    v25 = pathsCopy;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(SiriPresentationViewController *)self _clearAllTestingInputs];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = pathsCopy;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(obj);
        }

        v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(&v17 + 1) + 8 * v9)];
        v11 = objc_alloc(MEMORY[0x277D551B8]);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __92__SiriPresentationPineBoardMainScreenViewController_setNextVoiceRecognitionAudioInputPaths___block_invoke;
        v15[3] = &unk_278430120;
        v16 = v10;
        v12 = v10;
        v13 = [v11 initWithBuilder:v15];
        [(SiriPresentationViewController *)self _enqueueTestInput:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

void __92__SiriPresentationPineBoardMainScreenViewController_setNextVoiceRecognitionAudioInputPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:2];
  [v3 setRecordedSpeechURL:*(a1 + 32)];
}

- (void)setNextAssistantRecognitionStrings:(id)strings
{
  v24 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SiriPresentationPineBoardMainScreenViewController setNextAssistantRecognitionStrings:]";
    v22 = 2112;
    v23 = stringsCopy;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(SiriPresentationViewController *)self _clearAllTestingInputs];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277D551B8]);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __88__SiriPresentationPineBoardMainScreenViewController_setNextAssistantRecognitionStrings___block_invoke;
        v14[3] = &unk_278430120;
        v14[4] = v11;
        v13 = [v12 initWithBuilder:v14];
        [(SiriPresentationViewController *)self _enqueueTestInput:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __88__SiriPresentationPineBoardMainScreenViewController_setNextAssistantRecognitionStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:1];
  [v3 setText:*(a1 + 32)];
}

- (void)_forwardHIDButtonEventWithUsagePage:(unsigned int)page usage:(unsigned int)usage type:(int64_t)type senderID:(unint64_t)d
{
  keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
  if (type <= 1)
  {
    mach_absolute_time();
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    IOHIDEventSetSenderID();
    BKSHIDEventSendToResolvedProcessForDeferringEnvironment();
    CFRelease(KeyboardEvent);
  }
}

- (BOOL)_getValueForShouldRequestDictation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCACC8];
    v6 = v4;
    currentThread = [v5 currentThread];
    v10 = 136315394;
    v11 = "[SiriPresentationPineBoardMainScreenViewController _getValueForShouldRequestDictation]";
    v12 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v10, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriPresentationPineBoardMainScreenViewController _getValueForShouldRequestDictation]";
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v10, 0xCu);
  }

  return self->_shouldRequestDictation;
}

@end