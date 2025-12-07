@interface RPSiriSession
- (BOOL)voiceControllerSetupAndReturnError:(id *)error;
- (NSString)description;
- (RPSiriSession)init;
- (void)_activate2;
- (void)_activateCompletedWithError:(id)error;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidateWithCompletion:(id)completion;
- (void)_invalidated;
- (void)_recordingLimitTimerFired;
- (void)_recordingLimitTimerStart:(unsigned int)start;
- (void)_sendSiriStop;
- (void)_startActivationWithDestinationID:(id)d messenger:(id)messenger completion:(id)completion;
- (void)_stopRecording;
- (void)_teardownVoiceController;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateWithCompletion:(id)completion;
- (void)prewarmWithCompletion:(id)completion;
- (void)receivedButtonUpWithCompletion:(id)completion;
- (void)setMessenger:(id)messenger;
- (void)voiceControllerAudioCallback:(id)callback forStream:(unint64_t)stream buffer:(id)buffer;
- (void)voiceControllerDidDetectEndpoint:(id)endpoint ofType:(int)type atTime:(double)time;
- (void)voiceControllerDidDetectStartpoint:(id)startpoint;
- (void)voiceControllerDidStartRecording:(id)recording forStream:(unint64_t)stream successfully:(BOOL)successfully error:(id)error;
- (void)voiceControllerDidStopRecording:(id)recording forStream:(unint64_t)stream forReason:(int64_t)reason;
- (void)voiceControllerEncoderErrorDidOccur:(id)occur error:(id)error;
- (void)voiceControllerMediaServicesWereReset:(id)reset;
- (void)voiceControllerTearDown;
@end

@implementation RPSiriSession

- (RPSiriSession)init
{
  v6.receiver = self;
  v6.super_class = RPSiriSession;
  v2 = [(RPSiriSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_isSourcePTTEligible = _os_feature_enabled_impl();
    v4 = v3;
  }

  return v3;
}

- (void)setMessenger:(id)messenger
{
  messengerCopy = messenger;
  if (self->_messenger != messengerCopy)
  {
    objc_storeStrong(&self->_messenger, messenger);
    if (_os_feature_enabled_impl())
    {
      if ([(RPSiriSession *)self isDestinationPTTEligible])
      {
        messenger = self->_messenger;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __30__RPSiriSession_setMessenger___block_invoke;
        v7[3] = &unk_1E7C94EE8;
        v7[4] = self;
        [(RPMessageable *)messenger registerRequestID:@"_siriEndpoint" options:0 handler:v7];
      }
    }
  }
}

void __30__RPSiriSession_setMessenger___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __30__RPSiriSession_setMessenger___block_invoke_cold_1(v9);
  }

  [*(a1 + 32) _stopRecording];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
}

- (void)_stopRecording
{
  startRecordingState = self->_startRecordingState;
  if (startRecordingState == 6 || startRecordingState == 1)
  {
    delegate = [(RPSiriSession *)self delegate];
    [delegate rpSiriSessionDidReceiveStopRecording];
  }
}

- (NSString)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "RPSiriSession");
  v2 = v4;

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_RPSiriSession <= 30)
  {
    if (gLogCategory_RPSiriSession != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(RPSiriSession *)completionCopy activateWithCompletion:v5, v6];
    }
  }

  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v10 = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__RPSiriSession_activateWithCompletion___block_invoke;
  v12[3] = &unk_1E7C92E20;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(v10, v12);
}

- (void)prewarmWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__RPSiriSession_prewarmWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

void __39__RPSiriSession_prewarmWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 voiceControllerSetupAndReturnError:&v6];
  v4 = v6;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  if (v3)
  {
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __39__RPSiriSession_prewarmWithCompletion___block_invoke_cold_2();
    }
  }

  else if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __39__RPSiriSession_prewarmWithCompletion___block_invoke_cold_1(v4);
  }
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = self->_destinationID;
  if (!v11)
  {
    v20 = RPErrorF(4294960591, "No destinationID", v5, v6, v7, v8, v9, v10, v29);
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateWithCompletion:v20];
      if (!completionCopy)
      {
        goto LABEL_35;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_35;
    }

    completionCopy[2](completionCopy, v20);
    goto LABEL_35;
  }

  v12 = self->_messenger;
  v20 = v12;
  if (!v12)
  {
    v28 = RPErrorF(4294960591, "No messenger", v14, v15, v16, v17, v18, v19, v29);
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateWithCompletion:v28];
      if (!completionCopy)
      {
        goto LABEL_25;
      }
    }

    else if (!completionCopy)
    {
LABEL_25:

      goto LABEL_35;
    }

    completionCopy[2](completionCopy, v28);
    goto LABEL_25;
  }

  if (self->_activateState)
  {
    if (gLogCategory_RPSiriSession <= 40)
    {
      if (gLogCategory_RPSiriSession != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [(RPSiriSession *)v12 _activateWithCompletion:v13, v14];
      }
    }

    v21 = RPErrorF(4294960591, "Already in activation state %d", v14, v15, v16, v17, v18, v19, self->_activateState);
    if (_os_feature_enabled_impl() && [(RPSiriSession *)self isDestinationPTTEligible]&& ((startRecordingState = self->_startRecordingState, startRecordingState == 6) || startRecordingState == 1))
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
      [v23 setObject:v24 forKeyedSubscript:@"_pttEligible"];

      if (gLogCategory_RPSiriSession <= 40)
      {
        if (gLogCategory_RPSiriSession != -1 || (v25 = _LogCategory_Initialize(), v25))
        {
          [(RPSiriSession *)v25 _activateWithCompletion:v26, v27];
        }
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __41__RPSiriSession__activateWithCompletion___block_invoke;
      v32[3] = &unk_1E7C93780;
      v33 = completionCopy;
      [v20 sendRequestID:@"_siriStartWhileRecording" request:MEMORY[0x1E695E0F8] destinationID:v11 options:v23 responseHandler:v32];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, v21);
    }
  }

  else if (self->_voiceController)
  {
    [(RPSiriSession *)self _startActivationWithDestinationID:v11 messenger:v12 completion:completionCopy];
  }

  else
  {
    if (gLogCategory_RPSiriSession <= 40)
    {
      if (gLogCategory_RPSiriSession != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [(RPSiriSession *)v12 _activateWithCompletion:v13, v14];
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __41__RPSiriSession__activateWithCompletion___block_invoke_2;
    v30[3] = &unk_1E7C94F10;
    v30[4] = self;
    v30[5] = v11;
    v30[6] = v20;
    v31 = completionCopy;
    [(RPSiriSession *)self prewarmWithCompletion:v30];
  }

LABEL_35:
}

void __41__RPSiriSession__activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __41__RPSiriSession__activateWithCompletion___block_invoke_cold_1(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

void __41__RPSiriSession__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    [*(a1 + 32) _startActivationWithDestinationID:*(a1 + 40) messenger:*(a1 + 48) completion:*(a1 + 56)];
    goto LABEL_8;
  }

  v4 = v3;
  if (gLogCategory_RPSiriSession <= 90)
  {
    if (gLogCategory_RPSiriSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      __41__RPSiriSession__activateWithCompletion___block_invoke_2_cold_1(v4);
      v4 = v7;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
LABEL_8:
    v4 = v7;
  }
}

- (void)_startActivationWithDestinationID:(id)d messenger:(id)messenger completion:(id)completion
{
  dCopy = d;
  messengerCopy = messenger;
  self->_activateState = 1;
  v10 = _Block_copy(completion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v10;

  objc_storeStrong(&self->_selfRef, self);
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession _startActivationWithDestinationID:dCopy messenger:? completion:?];
  }

  [(RPSiriSession *)self _activate2];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
  [v12 setObject:v13 forKeyedSubscript:@"_pttEligible"];

  isDestinationPTTEligible = _os_feature_enabled_impl();
  if (isDestinationPTTEligible)
  {
    isDestinationPTTEligible = [(RPSiriSession *)self isDestinationPTTEligible];
    if (isDestinationPTTEligible)
    {
      sourceID = self->_sourceID;
      if (sourceID)
      {
        isDestinationPTTEligible = [v12 setObject:sourceID forKeyedSubscript:@"senderIDS"];
      }
    }
  }

  if (gLogCategory_RPSiriSession <= 30)
  {
    if (gLogCategory_RPSiriSession != -1 || (isDestinationPTTEligible = _LogCategory_Initialize(), isDestinationPTTEligible))
    {
      [RPSiriSession _startActivationWithDestinationID:isDestinationPTTEligible messenger:v15 completion:sourceID];
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__RPSiriSession__startActivationWithDestinationID_messenger_completion___block_invoke;
  v17[3] = &unk_1E7C93B48;
  v17[4] = self;
  [messengerCopy sendRequestID:@"_siriStart" request:MEMORY[0x1E695E0F8] destinationID:dCopy options:v12 responseHandler:v17];
}

void __72__RPSiriSession__startActivationWithDestinationID_messenger_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || (v8 = _LogCategory_Initialize(), v8)))
  {
    __72__RPSiriSession__startActivationWithDestinationID_messenger_completion___block_invoke_cold_1(v8, v9, v10);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 32);
  if (v12[4] == 1)
  {
    [v12 _activateCompletedWithError:v11];
  }

LABEL_7:
}

- (void)_activate2
{
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [(RPSiriSession *)self _activate2];
  }

  self->_startRecordingState = 1;
  v3 = [objc_alloc(getAVVCStartRecordSettingsClass()) initWithStreamID:self->_streamId atStartHostTime:0];
  voiceController = self->_voiceController;
  v14 = 0;
  v5 = [(AVVoiceController *)voiceController startRecordForStream:v3 error:&v14];
  v6 = v14;
  [(RPSiriSession *)self _recordingLimitTimerStart:60];
  if ((v5 & 1) == 0)
  {
    self->_startRecordingState = 3;
    v12 = RPNestedErrorF(v6, 4294960596, "Recording start failed", v7, v8, v9, v10, v11, v13);
    [(RPSiriSession *)self _activateCompletedWithError:v12];
  }
}

- (void)_activateCompletedWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateCompletedWithError:errorCopy];
    }

    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  self->_activateState = v4;
  v5 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v5)
  {
    v5[2](v5, errorCopy);
  }

  if (self->_invalidateCalled)
  {
    [(RPSiriSession *)self _invalidated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__RPSiriSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RPSiriSession_invalidateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)receivedButtonUpWithCompletion:(id)completion
{
  if (_os_feature_enabled_impl())
  {
    isDestinationPTTEligible = [(RPSiriSession *)self isDestinationPTTEligible];
    if (isDestinationPTTEligible)
    {
      if (gLogCategory_RPSiriSession <= 30)
      {
        if (gLogCategory_RPSiriSession != -1 || (isDestinationPTTEligible = _LogCategory_Initialize(), isDestinationPTTEligible))
        {
          [(RPSiriSession *)isDestinationPTTEligible receivedButtonUpWithCompletion:v5, v6];
        }
      }

      [(RPSiriSession *)self _sendSiriStop];
    }
  }
}

- (void)_sendSiriStop
{
  selfCopy = self;
  activateState = self->_activateState;
  if (activateState == 4 || activateState == 1)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isSourcePTTEligible];
    [v10 setObject:v6 forKeyedSubscript:@"_pttEligible"];

    if (gLogCategory_RPSiriSession <= 30)
    {
      if (gLogCategory_RPSiriSession != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        [(RPSiriSession *)v7 _sendSiriStop];
      }
    }

    [(RPMessageable *)selfCopy->_messenger sendRequestID:@"_siriStop" request:MEMORY[0x1E695E0F8] destinationID:selfCopy->_destinationID options:v10 responseHandler:&__block_literal_global_16];
  }

  else
  {
    if (gLogCategory_RPSiriSession <= 40)
    {
      if (gLogCategory_RPSiriSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(RPSiriSession *)self _sendSiriStop];
      }
    }

    [(RPSiriSession *)selfCopy invalidateWithCompletion:0];
  }
}

void __30__RPSiriSession__sendSiriStop__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (v7 && gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __30__RPSiriSession__sendSiriStop__block_invoke_cold_1(v7);
  }
}

- (void)_invalidateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPSiriSession <= 30)
    {
      if (gLogCategory_RPSiriSession != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [(RPSiriSession *)completionCopy _invalidateWithCompletion:v5, v6];
      }
    }

    activateState = self->_activateState;
    self->_activateState = 7;
    [(RPSiriSession *)self voiceControllerTearDown];
    if (!_os_feature_enabled_impl() || ![(RPSiriSession *)self isDestinationPTTEligible])
    {
      if (activateState == 4 || activateState == 1)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
        [v9 setObject:v10 forKeyedSubscript:@"_pttEligible"];

        if (gLogCategory_RPSiriSession <= 30)
        {
          if (gLogCategory_RPSiriSession != -1 || (v11 = _LogCategory_Initialize(), v11))
          {
            [(RPSiriSession *)v11 _invalidateWithCompletion:v12, v13];
          }
        }

        messenger = self->_messenger;
        destinationID = self->_destinationID;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __43__RPSiriSession__invalidateWithCompletion___block_invoke;
        v22[3] = &unk_1E7C94DB8;
        v22[4] = self;
        v23 = v7;
        [(RPMessageable *)messenger sendRequestID:@"_siriStop" request:MEMORY[0x1E695E0F8] destinationID:destinationID options:v9 responseHandler:v22];
        v16 = self->_messenger;
        self->_messenger = 0;
      }

      else
      {
        v17 = self->_messenger;
        self->_messenger = 0;

        [(RPSiriSession *)self _invalidated];
      }
    }

    v18 = self->_messenger;
    self->_messenger = 0;

    [(RPSiriSession *)self _invalidated];
    if (_os_feature_enabled_impl() && [(RPSiriSession *)self isDestinationPTTEligible])
    {
      [(RPMessageable *)self->_messenger deregisterRequestID:@"_siriEndpoint"];
    }

    recordingLimitTimer = self->_recordingLimitTimer;
    if (recordingLimitTimer)
    {
      v20 = recordingLimitTimer;
      dispatch_source_cancel(v20);
      v21 = self->_recordingLimitTimer;
      self->_recordingLimitTimer = 0;
    }
  }
}

void __43__RPSiriSession__invalidateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (v8)
  {
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __43__RPSiriSession__invalidateWithCompletion___block_invoke_cold_1(v11);
    }
  }

  else if (gLogCategory_RPSiriSession <= 30)
  {
    if (gLogCategory_RPSiriSession != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      __43__RPSiriSession__invalidateWithCompletion___block_invoke_cold_2(v8, v9, v10);
    }
  }

  [*(a1 + 32) _invalidated];
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v11);
  }
}

- (void)_teardownVoiceController
{
  voiceController = self->_voiceController;
  if (voiceController)
  {
    v7 = 0;
    [(AVVoiceController *)voiceController teardownWithError:&v7];
    v4 = v7;
    if (v4 && gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [(RPSiriSession *)v4 _teardownVoiceController];
    }

    v5 = objc_autoreleasePoolPush();
    v6 = self->_voiceController;
    self->_voiceController = 0;

    objc_autoreleasePoolPop(v5);
  }
}

- (void)dealloc
{
  _teardownVoiceController = [(RPSiriSession *)self _teardownVoiceController];
  if (gLogCategory_RPSiriSession <= 30)
  {
    if (gLogCategory_RPSiriSession != -1 || (_teardownVoiceController = _LogCategory_Initialize(), _teardownVoiceController))
    {
      [(RPSiriSession *)_teardownVoiceController dealloc];
    }
  }

  v6.receiver = self;
  v6.super_class = RPSiriSession;
  [(RPSiriSession *)&v6 dealloc];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_messenger)
  {
    startRecordingState = self->_startRecordingState;
    if (startRecordingState != 1 && startRecordingState != 6 && self->_stopRecordingState != 1)
    {
      [(AVVoiceController *)self->_voiceController deactivateAudioSessionForStream:self->_streamId withOptions:1 error:0];
      if (self->_voiceController)
      {
        _teardownVoiceController = [(RPSiriSession *)self _teardownVoiceController];
        if (gLogCategory_RPSiriSession <= 30)
        {
          if (gLogCategory_RPSiriSession != -1 || (_teardownVoiceController = _LogCategory_Initialize(), _teardownVoiceController))
          {
            [(RPSiriSession *)_teardownVoiceController _invalidated];
          }
        }
      }

      voiceController = self->_voiceController;
      self->_voiceController = 0;

      delegate = self->_delegate;
      self->_delegate = 0;

      self->_streamId = 0;
      self->_invalidateDone = 1;
      if (gLogCategory_RPSiriSession <= 30)
      {
        if (gLogCategory_RPSiriSession != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          [(RPSiriSession *)v9 _invalidated];
        }
      }

      selfRef = self->_selfRef;
      self->_selfRef = 0;
    }
  }
}

- (BOOL)voiceControllerSetupAndReturnError:(id *)error
{
  v57 = 0u;
  v58 = 0u;
  v56 = 0x40CF400000000000;
  LODWORD(v57) = 1869641075;
  HIDWORD(v57) = 320;
  DWORD1(v58) = 1;
  v5 = [objc_alloc(getAVAudioFormatClass(self a2))];
  audioFormat = self->_audioFormat;
  self->_audioFormat = v5;

  if (self->_audioFormat)
  {
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession voiceControllerSetupAndReturnError:?];
    }

    voiceController = self->_voiceController;
    if (voiceController)
    {
      v14 = 0;
    }

    else
    {
      v55 = 0;
      v16 = [objc_alloc(getAVVoiceControllerClass()) initVoiceControllerForClient:4 withError:&v55];
      v14 = v55;
      v17 = self->_voiceController;
      self->_voiceController = v16;

      voiceController = self->_voiceController;
      if (!voiceController)
      {
        if (error)
        {
          RPNestedErrorF(v14, 4294960596, "AVVoiceController init failed", v18, v19, v20, v21, v22, v51);
          *error = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

LABEL_33:

        return v15;
      }
    }

    v23 = [(AVVoiceController *)voiceController setRecordDelegate:self];
    v24 = [objc_alloc(getAVVCContextSettingsClass(v23)) initWithMode:1969840752 deviceUID:0];
    v53 = v14;
    v54 = 0;
    v25 = [(AVVoiceController *)self->_voiceController setContext:v24 streamType:&v54 error:&v53];
    v26 = v53;

    if (v25)
    {
      self->_streamId = v25;
      if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
      {
        [RPSiriSession voiceControllerSetupAndReturnError:v25];
      }

      settings = [(AVAudioFormat *)self->_audioFormat settings];
      if (settings)
      {
        v39 = self->_voiceController;
        streamId = self->_streamId;
        v52 = v26;
        [(AVVoiceController *)v39 activateAudioSessionForStream:streamId isPrewarm:1 recordMode:1 error:&v52];
        v41 = v52;

        if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
        {
          [RPSiriSession voiceControllerSetupAndReturnError:?];
        }

        v42 = [objc_alloc(getAVVCPrepareRecordSettingsClass()) initWithStreamID:self->_streamId settings:settings bufferDuration:0.1];
        [v42 setMeteringEnabled:1];
        v43 = self->_voiceController;
        v51 = v41;
        v44 = [(AVVoiceController *)v43 prepareRecordForStream:v42 error:&v51];
        v26 = v51;

        v15 = (v26 == 0) & v44;
        if (error && !v15)
        {
          *error = RPNestedErrorF(v26, 4294960596, "AVVoiceController PrepareRecord failed", v45, v46, v47, v48, v49, v51);
        }
      }

      else if (error)
      {
        RPErrorF(4294960591, "No audio format settings", v32, v33, v34, v35, v36, v37, v51);
        *error = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    else if (error)
    {
      RPNestedErrorF(v26, 4294960596, "AVVoiceController setContext failed", v27, v28, v29, v30, v31, v51);
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    v14 = v26;
    goto LABEL_33;
  }

  if (!error)
  {
    return 0;
  }

  RPErrorF(4294960596, "AVAudioFormat init failed", v7, v8, v9, v10, v11, v12, v51);
  *error = v15 = 0;
  return v15;
}

- (void)voiceControllerTearDown
{
  selfCopy = self;
  if (gLogCategory_RPSiriSession <= 30)
  {
    if (gLogCategory_RPSiriSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(RPSiriSession *)self voiceControllerTearDown];
    }
  }

  *&selfCopy->_startRecordingState = 0x100000007;
  voiceController = selfCopy->_voiceController;
  if (voiceController)
  {
    streamId = selfCopy->_streamId;
    v8 = 0;
    v6 = [voiceController stopRecordForStream:streamId error:&v8];
    v7 = v8;
    if ((v6 & 1) == 0 && gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [(RPSiriSession *)v7 voiceControllerTearDown];
    }
  }

  else
  {
    if (gLogCategory_RPSiriSession <= 40)
    {
      if (gLogCategory_RPSiriSession != -1 || (voiceController = _LogCategory_Initialize(), voiceController))
      {
        [(RPSiriSession *)voiceController voiceControllerTearDown];
      }
    }

    v7 = 0;
  }
}

- (void)voiceControllerDidStartRecording:(id)recording forStream:(unint64_t)stream successfully:(BOOL)successfully error:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__RPSiriSession_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke;
  v12[3] = &unk_1E7C94F38;
  successfullyCopy = successfully;
  v12[4] = self;
  v13 = errorCopy;
  streamCopy = stream;
  v11 = errorCopy;
  dispatch_async(dispatchQueue, v12);
}

void __79__RPSiriSession_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 40))
    {
      v9 = 3;
    }

    else
    {
      v9 = 6;
    }

    *(*(a1 + 32) + 56) = v9;
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __79__RPSiriSession_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke_cold_1(a1);
    }

    v10 = *(a1 + 32);
    if (v10[40] == 1)
    {
      [v10 voiceControllerTearDown];
      v10 = *(a1 + 32);
    }

    [v10 _activateCompletedWithError:0];
  }

  else
  {
    *(*(a1 + 32) + 56) = 3;
    v11 = *(a1 + 32);
    v13 = RPNestedErrorF(*(a1 + 40), 4294960596, "Recording start 2 failed", a4, a5, a6, a7, a8, v12);
    [v11 _activateCompletedWithError:v13];
  }
}

- (void)voiceControllerDidStopRecording:(id)recording forStream:(unint64_t)stream forReason:(int64_t)reason
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke;
  block[3] = &unk_1E7C94590;
  block[4] = self;
  block[5] = stream;
  block[6] = reason;
  dispatch_async(dispatchQueue, block);
}

_BYTE *__69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 60) = 5;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke_cold_1(a1);
  }

  result = *(a1 + 32);
  if (result[40] == 1)
  {

    return [result _invalidated];
  }

  return result;
}

- (void)voiceControllerAudioCallback:(id)callback forStream:(unint64_t)stream buffer:(id)buffer
{
  bufferCopy = buffer;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke;
  block[3] = &unk_1E7C94F60;
  v11 = bufferCopy;
  streamCopy = stream;
  block[4] = self;
  v9 = bufferCopy;
  dispatch_async(dispatchQueue, block);
}

void __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 6)
  {
    [*(v1 + 64) updateMeterForStream:*(a1 + 48)];
    [*(*(a1 + 32) + 64) getAveragePowerForStream:*(a1 + 48) forChannel:0];
    v4 = __exp10f(v3 / 20.0);
    if (gLogCategory_RPSiriSession <= 10 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke_cold_1(a1, v4);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [*(a1 + 40) packetDescriptions];
    v7 = [*(a1 + 40) packetDescriptionCount];
    if (v7)
    {
      v8 = 16 * v7;
      do
      {
        v19[0] = &unk_1F2EEC8A8;
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v6 + 12)];
        v19[1] = &unk_1F2EEC8C0;
        v20[0] = v9;
        v10 = *v6;
        v6 += 16;
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
        v20[1] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v5 addObject:v12];

        v8 -= 16;
      }

      while (v8);
    }

    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(*(a1 + 40) length:{"data"), objc_msgSend(*(a1 + 40), "bytesDataSize")}];
    v18[0] = v13;
    v17[0] = &unk_1F2EEC8D8;
    v17[1] = &unk_1F2EEC8F0;
    *&v14 = v4;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v17[2] = &unk_1F2EEC908;
    v18[1] = v15;
    v18[2] = v5;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

    [*(*(a1 + 32) + 112) sendEventID:@"_siA" event:v16 destinationID:*(*(a1 + 32) + 96) options:0 completion:0];
  }
}

- (void)voiceControllerDidDetectStartpoint:(id)startpoint
{
  startpointCopy = startpoint;
  v5 = startpointCopy;
  if (gLogCategory_RPSiriSession <= 30)
  {
    v6 = startpointCopy;
    if (gLogCategory_RPSiriSession != -1 || (startpointCopy = _LogCategory_Initialize(), v5 = v6, startpointCopy))
    {
      [(RPSiriSession *)startpointCopy voiceControllerDidDetectStartpoint:v5, v4];
      v5 = v6;
    }
  }
}

- (void)voiceControllerDidDetectEndpoint:(id)endpoint ofType:(int)type atTime:(double)time
{
  endpointCopy = endpoint;
  v8 = endpointCopy;
  if (gLogCategory_RPSiriSession <= 30)
  {
    v10 = endpointCopy;
    if (gLogCategory_RPSiriSession != -1 || (v9 = _LogCategory_Initialize(), v8 = v10, v9))
    {
      LogPrintF(&gLogCategory_RPSiriSession, "[RPSiriSession voiceControllerDidDetectEndpoint:ofType:atTime:]", 30, "Detected endpoint: type %d, time %f\n", type, time);
      v8 = v10;
    }
  }
}

- (void)voiceControllerEncoderErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  errorCopy = error;
  if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession voiceControllerEncoderErrorDidOccur:errorCopy error:?];
  }
}

- (void)voiceControllerMediaServicesWereReset:(id)reset
{
  resetCopy = reset;
  v4 = resetCopy;
  if (gLogCategory_RPSiriSession <= 60)
  {
    v6 = resetCopy;
    if (gLogCategory_RPSiriSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [RPSiriSession voiceControllerMediaServicesWereReset:];
      v4 = v6;
    }
  }
}

- (void)_recordingLimitTimerStart:(unsigned int)start
{
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession _recordingLimitTimerStart:start];
  }

  recordingLimitTimer = self->_recordingLimitTimer;
  if (recordingLimitTimer)
  {
    v6 = recordingLimitTimer;
    dispatch_source_cancel(v6);
    v7 = self->_recordingLimitTimer;
    self->_recordingLimitTimer = 0;
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v9 = self->_recordingLimitTimer;
  self->_recordingLimitTimer = v8;
  v10 = v8;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__RPSiriSession__recordingLimitTimerStart___block_invoke;
  v11[3] = &unk_1E7C92D80;
  v11[4] = v10;
  v11[5] = self;
  dispatch_source_set_event_handler(v10, v11);
  CUDispatchTimerSet();
  dispatch_activate(v10);
}

void *__43__RPSiriSession__recordingLimitTimerStart___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[10])
  {
    return [result _recordingLimitTimerFired];
  }

  return result;
}

- (void)_recordingLimitTimerFired
{
  selfCopy = self;
  if (gLogCategory_RPSiriSession <= 30)
  {
    if (gLogCategory_RPSiriSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(RPSiriSession *)self _recordingLimitTimerFired];
    }
  }

  if (_os_feature_enabled_impl() && [(RPSiriSession *)selfCopy isDestinationPTTEligible])
  {

    [(RPSiriSession *)selfCopy _stopRecording];
  }
}

@end