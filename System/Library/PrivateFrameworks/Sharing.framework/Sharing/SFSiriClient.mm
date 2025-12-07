@interface SFSiriClient
- (SFSiriClient)init;
- (void)_activate;
- (void)_completeAllRequestsWithError:(id)error;
- (void)_completeRequest:(id)request error:(id)error;
- (void)_deviceSetupEnd;
- (void)_deviceSetupPlayGreetingID:(int)d completion:(id)completion;
- (void)_deviceSetupPrepareGreetingFlow:(id)flow error:(id)error completion:(id)completion;
- (void)_invalidate;
- (void)_processQueuedRequests;
- (void)_speakPasscode:(id)passcode instructions:(id)instructions languageCode:(id)code voiceName:(id)name flags:(unsigned int)flags completion:(id)completion;
- (void)_speakText:(id)text languageCode:(id)code flags:(unsigned int)flags rate:(double)rate delay:(double)delay startHandler:(id)handler completion:(id)completion;
- (void)activate;
- (void)deviceSetupBegin:(unint64_t)begin;
- (void)deviceSetupEnd;
- (void)deviceSetupPlayGreetingID:(int)d completion:(id)completion;
- (void)deviceSetupPrepareGreeting:(id)greeting;
- (void)didFinishSpeakingRequest:(id)request withError2:(id)error2;
- (void)didFinishSpeakingRequest:(id)request withError:(id)error;
- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error2:(id)error2;
- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error;
- (void)invalidate;
- (void)invalidateWithFlags:(unsigned int)flags;
- (void)preWarmDeviceSetupWelcomePhaseWithCompletion:(id)completion;
- (void)request:(id)request didReceiveTimingInfo2:(id)info2;
- (void)request:(id)request didReceiveTimingInfo:(id)info;
- (void)sessionService:(id)service didChangeStateFrom:(int64_t)from to:(int64_t)to;
- (void)sessionService:(id)service willPresentFeedbackWithDialogIdentifier:(id)identifier;
- (void)speakDeviceSetupWelcomePhaseWithCompletion:(id)completion;
- (void)speakPasscode:(id)passcode instructions:(id)instructions languageCode:(id)code voiceName:(id)name flags:(unsigned int)flags completion:(id)completion;
- (void)speakText:(id)text flags:(unsigned int)flags rate:(double)rate delay:(double)delay startHandler:(id)handler completion:(id)completion;
- (void)speakText:(id)text languageCode:(id)code completion:(id)completion;
- (void)speakText:(id)text rate:(double)rate completion:(id)completion;
- (void)startUtteranceRequest:(id)request;
- (void)stopSpeaking;
@end

@implementation SFSiriClient

- (SFSiriClient)init
{
  v6.receiver = self;
  v6.super_class = SFSiriClient;
  v2 = [(SFSiriClient *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__SFSiriClient_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFSiriClient *)self _activate];
    }
  }

  if (selfCopy->_siriDialogHandler)
  {
    siriServiceManager = selfCopy->_siriServiceManager;
    if (!siriServiceManager)
    {
      v5 = objc_alloc_init(getSVXClientServiceManagerClass());
      v6 = selfCopy->_siriServiceManager;
      selfCopy->_siriServiceManager = v5;

      siriServiceManager = selfCopy->_siriServiceManager;
    }

    sessionService = [(SVXClientServiceManager *)siriServiceManager sessionService];
    [sessionService setDelegate:selfCopy];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFSiriClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithFlags:(unsigned int)flags
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SFSiriClient_invalidateWithFlags___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __36__SFSiriClient_invalidateWithFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 12) = *(a1 + 40);
    v2 = *(a1 + 32);
  }

  return [v2 _invalidate];
}

- (void)_invalidate
{
  selfCopy = self;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFSiriClient *)self _invalidate];
    }
  }

  selfCopy->_invalidateCalled = 1;
  currentTimer = selfCopy->_currentTimer;
  if (currentTimer)
  {
    v5 = currentTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_currentTimer;
    selfCopy->_currentTimer = 0;

    v7 = NSErrorWithOSStatusF(4294960573, "Invalidated");
    [(SFSiriClient *)selfCopy _completeRequest:selfCopy->_currentRequest error:v7];
LABEL_6:
    [(SFSiriClient *)selfCopy _completeAllRequestsWithError:v7];
LABEL_7:

    goto LABEL_8;
  }

  synthesizing = [(SFSiriRequest *)selfCopy->_currentRequest synthesizing];
  if (synthesizing)
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (synthesizing = _LogCategory_Initialize(), synthesizing))
      {
        [(SFSiriClient *)synthesizing _invalidate];
      }
    }

    speechSynthesisRequest = [(SFSiriRequest *)selfCopy->_currentRequest speechSynthesisRequest];
LABEL_24:
    v7 = speechSynthesisRequest;
    if (speechSynthesisRequest)
    {
      [(SiriTTSDaemonSession *)selfCopy->_speechSynthesizer cancelWithRequest:speechSynthesisRequest];
    }

    goto LABEL_7;
  }

  currentRequest = selfCopy->_currentRequest;
  if ((selfCopy->_invalidateFlags & 0x20) == 0)
  {
    if (currentRequest)
    {
      if (gLogCategory_SFSiriClient <= 30)
      {
        if (gLogCategory_SFSiriClient != -1 || (synthesizing = _LogCategory_Initialize(), synthesizing))
        {
          [(SFSiriClient *)synthesizing _invalidate];
        }
      }

      speechSynthesisRequest = [(SFSiriRequest *)selfCopy->_currentRequest speechUtteranceRequest];
      goto LABEL_24;
    }

LABEL_31:
    v7 = NSErrorWithOSStatusF(4294960573, "Invalidated");
    goto LABEL_6;
  }

  if (!currentRequest)
  {
    goto LABEL_31;
  }

  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (synthesizing = _LogCategory_Initialize(), synthesizing))
    {
      [(SFSiriClient *)synthesizing _invalidate];
    }
  }

LABEL_8:
  [(SFSiriClient *)selfCopy _deviceSetupEnd];
  siriDialogHandler = selfCopy->_siriDialogHandler;
  selfCopy->_siriDialogHandler = 0;

  sessionService = [(SVXClientServiceManager *)selfCopy->_siriServiceManager sessionService];
  [sessionService setDelegate:0];

  siriServiceManager = selfCopy->_siriServiceManager;
  selfCopy->_siriServiceManager = 0;

  invalidationHandler = selfCopy->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    invalidationHandler = selfCopy->_invalidationHandler;
  }

  selfCopy->_invalidationHandler = 0;
}

- (void)preWarmDeviceSetupWelcomePhaseWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_cold_1(a1, a2, a3);
    }
  }

  if (!*(*(v3 + 32) + 88))
  {
    v4 = objc_alloc_init(getSVXClientServiceManagerClass());
    v5 = *(v3 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;
  }

  v7 = objc_alloc(getSVXSystemEventClass());
  v8 = [v7 initWithType:1 timestamp:mach_absolute_time()];
  v9 = [*(*(v3 + 32) + 88) activationService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_2;
  v11[3] = &unk_1E788B318;
  v10 = *(v3 + 40);
  v11[4] = *(v3 + 32);
  v12 = v10;
  [v9 prewarmForSystemEvent:v8 completion:v11];
}

void __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *(*(v3 + 32) + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_3;
    block[3] = &unk_1E788B1C0;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

- (void)speakDeviceSetupWelcomePhaseWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_cold_1(a1, a2, a3);
    }
  }

  if (!*(*(v3 + 32) + 88))
  {
    v4 = objc_alloc_init(getSVXClientServiceManagerClass());
    v5 = *(v3 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;
  }

  v7 = objc_alloc(getSVXSystemEventClass());
  v8 = [v7 initWithType:1 timestamp:mach_absolute_time()];
  v9 = [*(*(v3 + 32) + 88) activationService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_2;
  v11[3] = &unk_1E788CB38;
  v10 = *(v3 + 40);
  v11[4] = *(v3 + 32);
  v12 = v10;
  [v9 activateWithSystemEvent:v8 userInfo:0 completion:v11];
}

void __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_2_cold_1(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_3;
    v6[3] = &unk_1E788B318;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)speakPasscode:(id)passcode instructions:(id)instructions languageCode:(id)code voiceName:(id)name flags:(unsigned int)flags completion:(id)completion
{
  passcodeCopy = passcode;
  instructionsCopy = instructions;
  codeCopy = code;
  nameCopy = name;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SFSiriClient_speakPasscode_instructions_languageCode_voiceName_flags_completion___block_invoke;
  block[3] = &unk_1E78911F8;
  block[4] = self;
  v26 = passcodeCopy;
  v27 = instructionsCopy;
  v28 = codeCopy;
  flagsCopy = flags;
  v29 = nameCopy;
  v30 = completionCopy;
  v20 = completionCopy;
  v21 = nameCopy;
  v22 = codeCopy;
  v23 = instructionsCopy;
  v24 = passcodeCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_speakPasscode:(id)passcode instructions:(id)instructions languageCode:(id)code voiceName:(id)name flags:(unsigned int)flags completion:(id)completion
{
  v50 = *&flags;
  passcodeCopy = passcode;
  instructionsCopy = instructions;
  codeCopy = code;
  nameCopy = name;
  completionCopy = completion;
  v18 = completionCopy;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      v19 = IsAppleInternalBuild();
      v20 = @"*";
      if (v19)
      {
        v20 = passcodeCopy;
      }

      completionCopy = LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _speakPasscode:instructions:languageCode:voiceName:flags:completion:]", 30, "Speak passcode '%@', instructions '%@', languageCode '%@', flags %#{flags}\n", v20, instructionsCopy, codeCopy, v50, &unk_1A9990488);
    }
  }

  if (!self->_speechSynthesizer)
  {
    v21 = objc_alloc_init(getSiriTTSDaemonSessionClass(completionCopy));
    speechSynthesizer = self->_speechSynthesizer;
    self->_speechSynthesizer = v21;
  }

  if ((v50 & 0x10) == 0 && self->_currentRequest)
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [SFSiriClient _speakPasscode:completionCopy instructions:v16 languageCode:v17 voiceName:? flags:? completion:?];
      }
    }

    speechUtteranceRequest = [(SFSiriRequest *)self->_currentRequest speechUtteranceRequest];
    if (speechUtteranceRequest)
    {
      [(SiriTTSDaemonSession *)self->_speechSynthesizer cancelWithRequest:speechUtteranceRequest];
    }
  }

  v24 = codeCopy;
  v47 = v24;
  if (!v24)
  {
    v24 = self->_languageCode;
    if (!v24)
    {
      v25 = softLinkVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
      languageCode = self->_languageCode;
      self->_languageCode = v25;

      v27 = self->_languageCode;
      if (!v27)
      {
        self->_languageCode = @"en-US";

        v27 = self->_languageCode;
      }

      v24 = v27;
    }
  }

  if (!self->_requests)
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requests = self->_requests;
    self->_requests = v28;
  }

  if (instructionsCopy)
  {
    v30 = getSiriTTSSynthesisVoiceClass;
    v31 = instructionsCopy;
    v32 = [objc_alloc(v30()) initWithLanguage:v24 name:nameCopy];
    v33 = [objc_alloc(getSiriTTSSynthesisRequestClass()) initWithText:v31 voice:v32];
    v34 = [objc_alloc(getSiriTTSSpeechRequestClass()) initWithText:v31 voice:v32];

    v35 = objc_alloc_init(SFSiriRequest);
    [(SFSiriRequest *)v35 setFlags:v50];
    [(SFSiriRequest *)v35 setOwner:self];
    [(SFSiriRequest *)v35 setSpeechCompletion:v18];
    [(SFSiriRequest *)v35 setSpeechSynthesisRequest:v33];
    [(SFSiriRequest *)v35 setSpeechUtteranceRequest:v34];
    [(NSMutableArray *)self->_requests addObject:v35];
  }

  v48 = instructionsCopy;
  v36 = [(__CFString *)passcodeCopy length];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    if (v48)
    {
      v39 = 0.5;
    }

    else
    {
      v39 = 0.0;
    }

    do
    {
      v40 = [(__CFString *)passcodeCopy substringWithRange:v38, 1];
      v41 = [objc_alloc(getSiriTTSSynthesisVoiceClass()) initWithLanguage:v24 name:nameCopy];
      v42 = [objc_alloc(getSiriTTSSynthesisRequestClass()) initWithText:v40 voice:v41];
      v43 = [objc_alloc(getSiriTTSSpeechRequestClass()) initWithText:v40 voice:v41];
      v44 = objc_alloc_init(SFSiriRequest);
      v45 = v44;
      if (v38)
      {
        v46 = 0.2;
      }

      else
      {
        v46 = v39;
      }

      [(SFSiriRequest *)v44 setDelaySecs:v46];
      [(SFSiriRequest *)v45 setFlags:v50];
      [(SFSiriRequest *)v45 setOwner:self];
      [(SFSiriRequest *)v45 setSpeechSynthesisRequest:v42];
      [(SFSiriRequest *)v45 setSpeechUtteranceRequest:v43];
      if (v18 && v37 == 1)
      {
        [(SFSiriRequest *)v45 setSpeechCompletion:v18];
      }

      [(NSMutableArray *)self->_requests addObject:v45];

      ++v38;
      --v37;
    }

    while (v37);
  }

  [(SFSiriClient *)self _processQueuedRequests];
}

- (void)speakText:(id)text rate:(double)rate completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SFSiriClient_speakText_rate_completion___block_invoke;
  v13[3] = &unk_1E7891220;
  v13[4] = self;
  v14 = textCopy;
  rateCopy = rate;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = textCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)speakText:(id)text languageCode:(id)code completion:(id)completion
{
  textCopy = text;
  codeCopy = code;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__SFSiriClient_speakText_languageCode_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = textCopy;
  v17 = codeCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = codeCopy;
  v14 = textCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)speakText:(id)text flags:(unsigned int)flags rate:(double)rate delay:(double)delay startHandler:(id)handler completion:(id)completion
{
  textCopy = text;
  handlerCopy = handler;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFSiriClient_speakText_flags_rate_delay_startHandler_completion___block_invoke;
  block[3] = &unk_1E7891248;
  block[4] = self;
  v22 = textCopy;
  flagsCopy = flags;
  rateCopy = rate;
  delayCopy = delay;
  v23 = handlerCopy;
  v24 = completionCopy;
  v18 = completionCopy;
  v19 = handlerCopy;
  v20 = textCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_speakText:(id)text languageCode:(id)code flags:(unsigned int)flags rate:(double)rate delay:(double)delay startHandler:(id)handler completion:(id)completion
{
  v13 = *&flags;
  textCopy = text;
  codeCopy = code;
  handlerCopy = handler;
  completionCopy = completion;
  v21 = completionCopy;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      v22 = IsAppleInternalBuild();
      v23 = @"*";
      if (v22)
      {
        v23 = textCopy;
      }

      completionCopy = LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _speakText:languageCode:flags:rate:delay:startHandler:completion:]", 30, "Scheduling speaking '%@', languageCode '%@', rate %.2f, delay %.3f\n", v23, codeCopy, *&rate, *&delay);
    }
  }

  if (self->_speechSynthesizer)
  {
    if ((v13 & 0x10) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v24 = objc_alloc_init(getSiriTTSDaemonSessionClass(completionCopy));
    speechSynthesizer = self->_speechSynthesizer;
    self->_speechSynthesizer = v24;

    if ((v13 & 0x10) != 0)
    {
      goto LABEL_18;
    }
  }

  if (self->_currentRequest)
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [SFSiriClient _speakText:completionCopy languageCode:v19 flags:v20 rate:? delay:? startHandler:? completion:?];
      }
    }

    speechUtteranceRequest = [(SFSiriRequest *)self->_currentRequest speechUtteranceRequest];
    if (speechUtteranceRequest)
    {
      [(SiriTTSDaemonSession *)self->_speechSynthesizer cancelWithRequest:speechUtteranceRequest];
    }
  }

LABEL_18:
  v27 = codeCopy;
  v28 = v27;
  if (!v27)
  {
    v28 = self->_languageCode;
    if (!v28)
    {
      v29 = softLinkVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
      languageCode = self->_languageCode;
      self->_languageCode = v29;

      v31 = self->_languageCode;
      if (!v31)
      {
        self->_languageCode = @"en-US";

        v31 = self->_languageCode;
      }

      v28 = v31;
    }
  }

  v32 = [objc_alloc(getSiriTTSSynthesisVoiceClass()) initWithLanguage:v28 name:0];
  v33 = [objc_alloc(getSiriTTSSynthesisRequestClass()) initWithText:textCopy voice:v32];
  v34 = [objc_alloc(getSiriTTSSpeechRequestClass()) initWithText:textCopy voice:v32];
  rateCopy = rate;
  *&v36 = rateCopy;
  [v33 setRate:v36];
  *&v37 = rateCopy;
  [v34 setRate:v37];
  v38 = objc_alloc_init(SFSiriRequest);
  [(SFSiriRequest *)v38 setDelaySecs:delay];
  [(SFSiriRequest *)v38 setFlags:v13];
  [(SFSiriRequest *)v38 setOwner:self];
  [(SFSiriRequest *)v38 setSpeechCompletion:v21];
  [(SFSiriRequest *)v38 setSpeechSynthesisRequest:v33];
  [(SFSiriRequest *)v38 setSpeechUtteranceRequest:v34];
  [(SFSiriRequest *)v38 setSpeechStartHandler:handlerCopy];
  requests = self->_requests;
  if (!requests)
  {
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = self->_requests;
    self->_requests = v40;

    requests = self->_requests;
  }

  [(NSMutableArray *)requests addObject:v38];
  [(SFSiriClient *)self _processQueuedRequests];
}

- (void)stopSpeaking
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFSiriClient_stopSpeaking__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __28__SFSiriClient_stopSpeaking__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 16))
  {
    v3 = a1;
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __28__SFSiriClient_stopSpeaking__block_invoke_cold_1(a1, a2, a3);
      }
    }

    v4 = [*(*(v3 + 32) + 16) speechUtteranceRequest];
    if (v4)
    {
      v5 = v4;
      [*(*(v3 + 32) + 48) cancelWithRequest:v4];
      v4 = v5;
    }
  }
}

- (void)_processQueuedRequests
{
  v4 = IsAppleInternalBuild();
  if (v4)
  {
    text = [self text];
  }

  else
  {
    text = @"*";
  }

  v9 = text;
  [self rate];
  v7 = v6;
  [a2 delaySecs];
  LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _processQueuedRequests]", 30, "Starting speaking text '%@', rate %.2f, delay %.3f\n", v9, *&v7, v8);
  if (v4)
  {
  }
}

void __38__SFSiriClient__processQueuedRequests__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:*(a1 + 32) withInstrumentMetrics:*(*(*(a1 + 40) + 8) + 40) error:v3];
}

- (void)_completeAllRequestsWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_requests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SFSiriClient *)self _completeRequest:*(*(&v10 + 1) + 8 * v9++) error:errorCopy, v10];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_requests removeAllObjects];
}

- (void)_completeRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v7 = requestCopy;
  currentRequest = self->_currentRequest;
  if (currentRequest == requestCopy)
  {
    self->_currentRequest = 0;

    v7 = requestCopy;
  }

  speechStartHandler = [(SFSiriRequest *)v7 speechStartHandler];

  if (speechStartHandler)
  {
    speechStartHandler2 = [(SFSiriRequest *)requestCopy speechStartHandler];
    (speechStartHandler2)[2](speechStartHandler2, 0, errorCopy);

    [(SFSiriRequest *)requestCopy setSpeechStartHandler:0];
  }

  speechCompletion = [(SFSiriRequest *)requestCopy speechCompletion];

  if (speechCompletion)
  {
    speechCompletion2 = [(SFSiriRequest *)requestCopy speechCompletion];
    (speechCompletion2)[2](speechCompletion2, errorCopy);

    [(SFSiriRequest *)requestCopy setSpeechCompletion:0];
  }
}

- (void)startUtteranceRequest:(id)request
{
  requestCopy = request;
  speechUtteranceRequest = [requestCopy speechUtteranceRequest];
  delaySecs = [requestCopy delaySecs];
  if (v9 > 0.0 && gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || (delaySecs = _LogCategory_Initialize(), delaySecs)))
  {
    [(SFSiriClient *)speechUtteranceRequest startUtteranceRequest:v7];
    if (speechUtteranceRequest)
    {
      goto LABEL_6;
    }
  }

  else if (speechUtteranceRequest)
  {
LABEL_6:
    [requestCopy setSynthesizing:0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __38__SFSiriClient_startUtteranceRequest___block_invoke;
    v21[3] = &unk_1E788B198;
    v10 = speechUtteranceRequest;
    v22 = v10;
    [v10 setDidStartSpeaking:v21];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__SFSiriClient_startUtteranceRequest___block_invoke_2;
    v17[3] = &unk_1E788FE88;
    objc_copyWeak(&v19, &location);
    v11 = v10;
    v18 = v11;
    [v11 setDidGenerateWordTimings:v17];
    speechSynthesizer = self->_speechSynthesizer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__SFSiriClient_startUtteranceRequest___block_invoke_3;
    v14[3] = &unk_1E788D048;
    objc_copyWeak(&v16, &location);
    v15 = v11;
    [(SiriTTSDaemonSession *)speechSynthesizer speakWithSpeechRequest:v15 didFinish:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);

    goto LABEL_12;
  }

  if (gLogCategory_SFSiriClient <= 90)
  {
    if (gLogCategory_SFSiriClient != -1 || (delaySecs = _LogCategory_Initialize(), delaySecs))
    {
      [(SFSiriClient *)delaySecs startUtteranceRequest:v7, v8];
    }
  }

  v13 = NSErrorWithOSStatusF(4294960596, "No speech request after delay");
  [(SFSiriClient *)self _completeRequest:requestCopy error:v13];

LABEL_12:
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke(uint64_t result, uint64_t a2)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __38__SFSiriClient_startUtteranceRequest___block_invoke_cold_1(result, a2);
  }
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained request:*(a1 + 32) didReceiveTimingInfo:v3];
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakingRequest:*(a1 + 32) withError:v3];
}

- (void)deviceSetupBegin:(unint64_t)begin
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SFSiriClient_deviceSetupBegin___block_invoke;
  v4[3] = &unk_1E788B260;
  v4[4] = self;
  v4[5] = begin;
  dispatch_async(dispatchQueue, v4);
}

void __33__SFSiriClient_deviceSetupBegin___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = (*(a1 + 40) >> 3) & 1;
    v4 = objc_alloc(getSVXDeviceSetupContextClass());
    v5 = [v4 initWithTimestamp:mach_absolute_time() presentsAlternativeFlowWhenStoreAccountIsUnavailable:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;

    v2 = *(a1 + 32);
  }

  if (!v2[8])
  {
    v8 = objc_alloc_init(getSVXClientServiceManagerClass());
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    v2 = *(a1 + 32);
  }

  if (!v2[9])
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      __33__SFSiriClient_deviceSetupBegin___block_invoke_cold_1(a1);
    }

    v11 = [*(*(a1 + 32) + 64) deviceService];
    v12 = *(a1 + 32);
    v13 = *(v12 + 72);
    *(v12 + 72) = v11;

    v14 = *(a1 + 32);
    v15 = *(v14 + 72);
    v16 = *(v14 + 56);

    [v15 beginSetupWithContext:v16];
  }
}

- (void)deviceSetupEnd
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SFSiriClient_deviceSetupEnd__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceSetupEnd
{
  selfCopy = self;
  if (self->_siriDeviceSetupService)
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFSiriClient *)self _deviceSetupEnd];
      }
    }
  }

  [(SVXClientDeviceServicing *)selfCopy->_siriDeviceSetupService endSetup];
  siriDeviceSetupService = selfCopy->_siriDeviceSetupService;
  selfCopy->_siriDeviceSetupService = 0;

  siriDeviceSetupContext = selfCopy->_siriDeviceSetupContext;
  selfCopy->_siriDeviceSetupContext = 0;

  siriDeviceSetupManager = selfCopy->_siriDeviceSetupManager;
  selfCopy->_siriDeviceSetupManager = 0;
}

- (void)deviceSetupPrepareGreeting:(id)greeting
{
  greetingCopy = greeting;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = greetingCopy;
  v6 = greetingCopy;
  dispatch_async(dispatchQueue, v7);
}

void __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 32);
  if (v4[9] && v4[7] && v4[8])
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_cold_1(a1, a2, a3);
      }
    }

    v6 = *(v3 + 32);
    v5 = *(v3 + 40);
    v7 = *(v6 + 72);
    v8 = *(v6 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_2;
    v11[3] = &unk_1E78912C0;
    v11[4] = v6;
    v12 = v5;
    [v7 prepareForSetupWithContext:v8 completion:v11];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = NSErrorWithOSStatusF(4294960551, "deviceSetupBegin not called");
    (*(v9 + 16))(v9, 0, v10);
  }
}

void __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 96);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_3;
  v12[3] = &unk_1E788B750;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

- (void)_deviceSetupPrepareGreetingFlow:(id)flow error:(id)error completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  flowCopy = flow;
  errorCopy = error;
  completionCopy = completion;
  v13 = completionCopy;
  if (!flowCopy || errorCopy)
  {
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient _deviceSetupPrepareGreetingFlow:errorCopy error:? completion:?];
    }

    if (errorCopy)
    {
      (v13)[2](v13, 0, errorCopy);
    }

    else
    {
      v21 = NSErrorWithOSStatusF(4294960596, "No flow and no error");
      (v13)[2](v13, 0, v21);
    }
  }

  else
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [SFSiriClient _deviceSetupPrepareGreetingFlow:completionCopy error:v11 completion:v12];
      }
    }

    v22 = objc_alloc_init(SFSiriDeviceSetupGreetingDetails);
    v23 = flowCopy;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    scenes = [flowCopy scenes];
    v15 = [scenes countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(scenes);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          if ([v19 sceneID] == 5)
          {
            if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
            {
              [SFSiriClient _deviceSetupPrepareGreetingFlow:error:completion:];
            }

            objc_storeStrong(&self->_deviceSetupSceneOutro, v19);
          }

          else if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
          {
            [SFSiriClient _deviceSetupPrepareGreetingFlow:v19 error:? completion:?];
          }

          ++v18;
        }

        while (v16 != v18);
        v20 = [scenes countByEnumeratingWithState:&v24 objects:v28 count:16];
        v16 = v20;
      }

      while (v20);
    }

    (v13)[2](v13, v22, 0);
    flowCopy = v23;
  }
}

- (void)deviceSetupPlayGreetingID:(int)d completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SFSiriClient_deviceSetupPlayGreetingID_completion___block_invoke;
  block[3] = &unk_1E788EAE0;
  dCopy = d;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceSetupPlayGreetingID:(int)d completion:(id)completion
{
  completionCopy = completion;
  if (self->_siriDeviceSetupService && self->_siriDeviceSetupContext && self->_siriDeviceSetupManager)
  {
    if (d == 5)
    {
      v7 = self->_deviceSetupSceneOutro;
      if (v7)
      {
        goto LABEL_8;
      }

      v8 = objc_alloc_init(getSVXDeviceSetupFlowSceneBuilderClass());
      [v8 setSceneID:5];
      build = [v8 build];
      if (build)
      {
        v7 = build;

LABEL_8:
        if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
        {
          [SFSiriClient _deviceSetupPlayGreetingID:completion:];
        }

        v12 = objc_alloc(getSVXSystemEventClass());
        v13 = [v12 initWithType:7 timestamp:mach_absolute_time() alarm:0 deviceSetupFlowScene:v7];
        activationService = [(SVXClientServiceManager *)self->_siriDeviceSetupManager activationService];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke;
        v17[3] = &unk_1E78912E8;
        v19 = 5;
        v17[4] = self;
        v18 = completionCopy;
        [activationService activateWithSystemEvent:v13 userInfo:0 completion:v17];

        goto LABEL_18;
      }

      if (gLogCategory_SFSiriClient <= 90)
      {
        if (gLogCategory_SFSiriClient != -1 || (build = _LogCategory_Initialize(), build))
        {
          [(SFSiriClient *)build _deviceSetupPlayGreetingID:v10 completion:v11];
        }
      }
    }

    v15 = NSErrorWithOSStatusF(4294960551, "deviceSetupPrepareGreeting not called");
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      v16 = "?";
      if (d == 5)
      {
        v16 = "Outro";
      }

      if (!d)
      {
        v16 = "Invalid";
      }

      LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _deviceSetupPlayGreetingID:completion:]", 90, "### SiriGreeting play start failed: %s, %{error}\n", v16, v15);
    }
  }

  else
  {
    v15 = NSErrorWithOSStatusF(4294960551, "deviceSetupBegin not called");
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient _deviceSetupPlayGreetingID:d completion:v15];
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v15);
  }

LABEL_18:
}

void __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_cold_1(a1, v3);
    }
  }

  else if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_cold_2(a1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_2;
    v6[3] = &unk_1E788B318;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)request:(id)request didReceiveTimingInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFSiriClient_request_didReceiveTimingInfo___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = requestCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)request:(id)request didReceiveTimingInfo2:(id)info2
{
  v79 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  info2Copy = info2;
  speechStartHandler = [(SFSiriRequest *)self->_currentRequest speechStartHandler];
  if (speechStartHandler)
  {
    [(SFSiriRequest *)self->_currentRequest setSpeechStartHandler:0];
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = info2Copy;
    v9 = info2Copy;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v78 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = objc_alloc_init(SFSiriWordTimingInfo);
          [v14 startTime];
          [(SFSiriWordTimingInfo *)v15 setTimeOffset:?];
          textRange = [v14 textRange];
          [(SFSiriWordTimingInfo *)v15 setTextRange:textRange, v17];
          [v35 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v41 objects:v78 count:16];
      }

      while (v11);
    }

    v30 = speechStartHandler;
    (speechStartHandler)[2](speechStartHandler, v35, 0);
    v32 = requestCopy;
    text = [requestCopy text];
    v18 = [text length];
    v76 = 0u;
    memset(v77, 0, sizeof(v77));
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v40 = &v46;
    v46 = 0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v19 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v36 + 1) + 8 * j);
          textRange2 = [v23 textRange];
          v26 = v24;
          v27 = v18 >= textRange2 && v18 - textRange2 >= v24;
          v28 = @"?";
          if (v27)
          {
            v28 = [text substringWithRange:{textRange2, v24}];
          }

          [v23 startTime];
          SNPrintF_Add(&v40, v78, "\t{ %ld x %ld } @ %f '%@'\n", textRange2, v26, v29, v28);
        }

        v20 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v20);
    }

    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient request:&v46 didReceiveTimingInfo2:?];
    }

    info2Copy = v31;
    requestCopy = v32;
    speechStartHandler = v30;
  }

  else if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient request:info2Copy didReceiveTimingInfo2:?];
  }
}

- (void)didFinishSpeakingRequest:(id)request withError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFSiriClient_didFinishSpeakingRequest_withError___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = requestCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)didFinishSpeakingRequest:(id)request withError2:(id)error2
{
  requestCopy = request;
  error2Copy = error2;
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient didFinishSpeakingRequest:error2Copy withError2:requestCopy];
  }

  speechUtteranceRequest = [(SFSiriRequest *)self->_currentRequest speechUtteranceRequest];

  if (speechUtteranceRequest != requestCopy && gLogCategory_SFSiriClient <= 60 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient didFinishSpeakingRequest:withError2:];
  }

  [(SFSiriClient *)self _completeRequest:self->_currentRequest error:error2Copy];
  if (self->_invalidateCalled)
  {
    v8 = NSErrorWithOSStatusF(4294960573, "Invalidated");
    [(SFSiriClient *)self _completeAllRequestsWithError:v8];
  }

  else
  {
    [(SFSiriClient *)self _processQueuedRequests];
  }
}

- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SFSiriClient_didFinishSynthesisRequest_withInstrumentMetrics_error___block_invoke;
  v15[3] = &unk_1E788B9C0;
  v15[4] = self;
  v16 = requestCopy;
  v17 = metricsCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = metricsCopy;
  v14 = requestCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error2:(id)error2
{
  requestCopy = request;
  metricsCopy = metrics;
  error2Copy = error2;
  v11 = self->_currentRequest;
  [(SFSiriRequest *)v11 setSynthesizing:0];
  if (!error2Copy && self->_invalidateCalled)
  {
    error2Copy = NSErrorWithOSStatusF(4294960573, "Invalidated");
  }

  if (error2Copy)
  {
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient didFinishSynthesisRequest:error2Copy withInstrumentMetrics:requestCopy error2:?];
      if (!v11)
      {
LABEL_10:
        if (self->_invalidateCalled)
        {
          [(SFSiriClient *)self _completeAllRequestsWithError:error2Copy];
        }

        goto LABEL_21;
      }
    }

    else if (!v11)
    {
      goto LABEL_10;
    }

    [(SFSiriClient *)self _completeRequest:v11 error:error2Copy];
    goto LABEL_10;
  }

  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient didFinishSynthesisRequest:metricsCopy withInstrumentMetrics:requestCopy error2:?];
  }

  [(SFSiriRequest *)v11 delaySecs];
  if (v12 > 0.0)
  {
    [(SFSiriRequest *)v11 delaySecs];
    v14 = v13;
    mach_absolute_time();
    [(SFSiriRequest *)v11 startTicks];
    UpTicksToSecondsF();
    if (v14 - v15 <= 0.0)
    {
      [(SFSiriClient *)self startUtteranceRequest:v11];
    }

    else
    {
      currentTimer = self->_currentTimer;
      if (currentTimer)
      {
        v17 = currentTimer;
        dispatch_source_cancel(v17);
        v18 = self->_currentTimer;
        self->_currentTimer = 0;
      }

      v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v20 = self->_currentTimer;
      self->_currentTimer = v19;

      v21 = self->_currentTimer;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__SFSiriClient_didFinishSynthesisRequest_withInstrumentMetrics_error2___block_invoke;
      v22[3] = &unk_1E788A658;
      v22[4] = self;
      v23 = v11;
      dispatch_source_set_event_handler(v21, v22);
      CUDispatchTimerSet();
      dispatch_activate(self->_currentTimer);
    }
  }

LABEL_21:
}

uint64_t __71__SFSiriClient_didFinishSynthesisRequest_withInstrumentMetrics_error2___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 startUtteranceRequest:v7];
}

- (void)sessionService:(id)service didChangeStateFrom:(int64_t)from to:(int64_t)to
{
  serviceCopy = service;
  v8 = serviceCopy;
  if (gLogCategory_SFSiriClient <= 30)
  {
    v10 = serviceCopy;
    if (gLogCategory_SFSiriClient != -1 || (v9 = _LogCategory_Initialize(), v8 = v10, v9))
    {
      [SFSiriClient sessionService:from didChangeStateFrom:to to:?];
      v8 = v10;
    }
  }
}

- (void)sessionService:(id)service willPresentFeedbackWithDialogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SFSiriClient_sessionService_willPresentFeedbackWithDialogIdentifier___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  dispatch_async(dispatchQueue, v8);
}

uint64_t __71__SFSiriClient_sessionService_willPresentFeedbackWithDialogIdentifier___block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __71__SFSiriClient_sessionService_willPresentFeedbackWithDialogIdentifier___block_invoke_cold_1(v1);
    }
  }

  v2 = *(v1 + 40);
  if ((*(v2 + 8) & 1) == 0)
  {
    result = *(v2 + 112);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (void)startUtteranceRequest:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    v3 = [a1 text];
    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient startUtteranceRequest:]", 30, "Start delayed speech request '%@'\n", v3);
  }

  else
  {
    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient startUtteranceRequest:]", 30, "Start delayed speech request '%@'\n", @"*");
  }
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    v3 = [*(a1 + 32) text];
    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient startUtteranceRequest:]_block_invoke", 30, "Did start speaking text '%@ '\n", v3);
  }

  else
  {
    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient startUtteranceRequest:]_block_invoke", 30, "Did start speaking text '%@ '\n", @"*");
  }
}

- (uint64_t)_deviceSetupPlayGreetingID:(int)a1 completion:(uint64_t)a2 .cold.3(int a1, uint64_t a2)
{
  v2 = "?";
  if (a1 == 5)
  {
    v2 = "Outro";
  }

  if (!a1)
  {
    v2 = "Invalid";
  }

  return LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _deviceSetupPlayGreetingID:completion:]", 90, "### SiriGreeting play start failed: %s, %{error}\n", v2, a2);
}

uint64_t __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = "?";
  if (v2 == 5)
  {
    v3 = "Outro";
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Invalid";
  }

  return LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _deviceSetupPlayGreetingID:completion:]_block_invoke", 90, "### SiriGreeting play failed: %s, %{error}\n", v4, a2);
}

uint64_t __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = "?";
  if (v1 == 5)
  {
    v2 = "Outro";
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "Invalid";
  }

  return LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient _deviceSetupPlayGreetingID:completion:]_block_invoke", 30, "SiriGreeting play completed: %s\n", v3);
}

- (void)didFinishSpeakingRequest:(uint64_t)a1 withError2:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (IsAppleInternalBuild())
  {
    v4 = [a2 text];
    v7 = v4;
    v5 = "no";
    if (!a1)
    {
      v5 = "yes";
    }

    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient didFinishSpeakingRequest:withError2:]", 30, "Did finish speaking text '%@', finished %s, error %{error}\n", v4, v5, a1);
  }

  else
  {
    v6 = "no";
    if (!a1)
    {
      v6 = "yes";
    }

    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient didFinishSpeakingRequest:withError2:]", 30, "Did finish speaking text '%@', finished %s, error %{error}\n", @"*", v6, a1);
  }
}

- (void)didFinishSynthesisRequest:(uint64_t)a1 withInstrumentMetrics:(void *)a2 error2:.cold.1(uint64_t a1, void *a2)
{
  if (IsAppleInternalBuild())
  {
    v4 = [a2 text];
    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient didFinishSynthesisRequest:withInstrumentMetrics:error2:]", 90, "### Speech synthesis failed '%@': %{error}\n", v4, a1);
  }

  else
  {
    LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient didFinishSynthesisRequest:withInstrumentMetrics:error2:]", 90, "### Speech synthesis failed '%@': %{error}\n", @"*", a1);
  }
}

- (void)didFinishSynthesisRequest:(void *)a1 withInstrumentMetrics:(void *)a2 error2:.cold.2(void *a1, void *a2)
{
  v4 = IsAppleInternalBuild();
  if (v4)
  {
    v5 = [a2 text];
  }

  else
  {
    v5 = @"*";
  }

  v7 = v5;
  [a1 audioStartLatency];
  LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient didFinishSynthesisRequest:withInstrumentMetrics:error2:]", 30, "Did finish speech synthesis '%@': latency %f ms\n", v7, v6 * 1000.0);
  if (v4)
  {
  }
}

- (uint64_t)sessionService:(unint64_t)a1 didChangeStateFrom:(unint64_t)a2 to:.cold.1(unint64_t a1, unint64_t a2)
{
  if (a1 > 4)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E7891308[a1];
  }

  if (a2 > 4)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E7891308[a2];
  }

  return LogPrintF(&gLogCategory_SFSiriClient, "[SFSiriClient sessionService:didChangeStateFrom:to:]", 30, "Session state change from %s -> %s\n", v2, v3);
}

@end