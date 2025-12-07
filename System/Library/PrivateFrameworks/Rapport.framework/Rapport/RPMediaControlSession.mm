@interface RPMediaControlSession
- (RPMediaControlSession)init;
- (uint64_t)_invalidate;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleMediaControlEvent:(id)event;
- (void)_invalidate;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)mediaCaptionSettingGetFromDestinationID:(id)d completion:(id)completion;
- (void)mediaCaptionSettingSet:(int)set destinationID:(id)d completion:(id)completion;
- (void)mediaCommand:(int)command destinationID:(id)d completion:(id)completion;
- (void)mediaGetVolumeFromDestinationID:(id)d completion:(id)completion;
- (void)mediaSetVolume:(double)volume destinationID:(id)d completion:(id)completion;
- (void)mediaSkipBySeconds:(double)seconds destinationID:(id)d completion:(id)completion;
@end

@implementation RPMediaControlSession

- (RPMediaControlSession)init
{
  v6.receiver = self;
  v6.super_class = RPMediaControlSession;
  v2 = [(RPMediaControlSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
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
  v9[2] = __48__RPMediaControlSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  v17[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!self->_messenger)
  {
    v14 = RPErrorF(4294960591, "No messenger provided", v4, v5, v6, v7, v8, v9, v15[0]);
    if (gLogCategory_RPMediaControlSession <= 90 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
    {
      [RPMediaControlSession _activateWithCompletion:v14];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
LABEL_9:

      goto LABEL_16;
    }

    completionCopy[2](completionCopy, v14);
    goto LABEL_9;
  }

  if (self->_mediaControlFlagsChangedHandler)
  {
    v16[0] = @"interest";
    v16[1] = @"statusFlags";
    v17[0] = MEMORY[0x1E695E118];
    v17[1] = &unk_1F2EEC818;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    messenger = self->_messenger;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__RPMediaControlSession__activateWithCompletion___block_invoke;
    v15[3] = &unk_1E7C94AD0;
    v15[4] = self;
    [(RPMessageable *)messenger registerEventID:@"_iMC" options:v11 handler:v15];
    self->_registeredMediaControlInterest = 1;

    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  if (gLogCategory_RPMediaControlSession <= 30 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
  {
    [RPMediaControlSession _activateWithCompletion:v13];
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (completionCopy)
  {
LABEL_15:
    completionCopy[2](completionCopy, 0);
  }

LABEL_16:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPMediaControlSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPMediaControlSession <= 30 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
    {
      [(RPMediaControlSession *)self _invalidate];
    }

    if (self->_registeredMediaControlInterest)
    {
      [(RPMessageable *)self->_messenger deregisterEventID:@"_iMC"];
      self->_registeredMediaControlInterest = 0;
    }

    mediaControlFlagsChangedHandler = self->_mediaControlFlagsChangedHandler;
    self->_mediaControlFlagsChangedHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;
  }
}

- (void)_handleMediaControlEvent:(id)event
{
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_RPMediaControlSession <= 30 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPMediaControlSession, "[RPMediaControlSession _handleMediaControlEvent:]", 30, "MediaControl event: %ll{flags}, %#m\n", Int64, &unk_1B6F2E640, 0);
  }

  if (Int64 != self->_mediaControlFlags)
  {
    self->_mediaControlFlags = Int64;
    v5 = _Block_copy(self->_mediaControlFlagsChangedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

- (void)mediaCaptionSettingGetFromDestinationID:(id)d completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v14 = @"_mcc";
  v15[0] = &unk_1F2EEC830;
  v8 = MEMORY[0x1E695DF20];
  dCopy = d;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__RPMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke;
  v12[3] = &unk_1E7C93780;
  v13 = completionCopy;
  v11 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v10 destinationID:dCopy options:0 responseHandler:v12];
}

void __76__RPMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetInt64Ranged();
  (*(*(a1 + 32) + 16))();
}

- (void)mediaCaptionSettingSet:(int)set destinationID:(id)d completion:(id)completion
{
  v6 = *&set;
  v18[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v17[0] = @"_mcc";
  v17[1] = @"_mcs";
  v18[0] = &unk_1F2EEC848;
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithInt:v6];
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__RPMediaControlSession_mediaCaptionSettingSet_destinationID_completion___block_invoke;
  v15[3] = &unk_1E7C93780;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __73__RPMediaControlSession_mediaCaptionSettingSet_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaCommand:(int)command destinationID:(id)d completion:(id)completion
{
  v6 = *&command;
  v18[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v17 = @"_mcc";
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithInt:v6];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__RPMediaControlSession_mediaCommand_destinationID_completion___block_invoke;
  v15[3] = &unk_1E7C93780;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __63__RPMediaControlSession_mediaCommand_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaSkipBySeconds:(double)seconds destinationID:(id)d completion:(id)completion
{
  v18[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v17[0] = @"_mcc";
  v17[1] = @"_skpS";
  v18[0] = &unk_1F2EEC860;
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithDouble:seconds];
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__RPMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke;
  v15[3] = &unk_1E7C93780;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __69__RPMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaGetVolumeFromDestinationID:(id)d completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v14 = @"_mcc";
  v15[0] = &unk_1F2EEC878;
  v8 = MEMORY[0x1E695DF20];
  dCopy = d;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__RPMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke;
  v12[3] = &unk_1E7C93780;
  v13 = completionCopy;
  v11 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v10 destinationID:dCopy options:0 responseHandler:v12];
}

void __68__RPMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  (*(*(a1 + 32) + 16))(v6);
}

- (void)mediaSetVolume:(double)volume destinationID:(id)d completion:(id)completion
{
  v19[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v18[0] = @"_mcc";
  v18[1] = @"_vol";
  v19[0] = &unk_1F2EEC890;
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithDouble:volume];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__RPMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke;
  v15[3] = &unk_1E7C94AF8;
  volumeCopy = volume;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

void __65__RPMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (uint64_t)_invalidate
{
  if (*(self + 17))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_RPMediaControlSession, "[RPMediaControlSession _invalidate]", 30, "Invalidate: Interest %s\n", v1);
}

@end