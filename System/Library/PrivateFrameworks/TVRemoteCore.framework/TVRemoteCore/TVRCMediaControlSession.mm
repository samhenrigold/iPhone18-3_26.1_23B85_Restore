@interface TVRCMediaControlSession
- (TVRCMediaControlSession)init;
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

@implementation TVRCMediaControlSession

- (TVRCMediaControlSession)init
{
  v6.receiver = self;
  v6.super_class = TVRCMediaControlSession;
  v2 = [(TVRCMediaControlSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
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
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__TVRCMediaControlSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_279D82568;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  v18[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_messenger)
  {
    if (self->_mediaControlFlagsChangedHandler)
    {
      v6 = *MEMORY[0x277D442E8];
      v17[0] = *MEMORY[0x277D44280];
      v17[1] = v6;
      v18[0] = MEMORY[0x277CBEC38];
      v18[1] = &unk_287E66B38;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      messenger = self->_messenger;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__TVRCMediaControlSession__activateWithCompletion___block_invoke;
      v16[3] = &unk_279D82590;
      v16[4] = self;
      [(RPMessageable *)messenger registerEventID:@"MediaControlStatus" options:v7 handler:v16];
      v9 = self->_messenger;
      v10 = *MEMORY[0x277D44228];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2;
      v14[3] = &unk_279D825B8;
      v14[4] = self;
      v15 = v5;
      [(RPMessageable *)v9 sendRequestID:@"FetchMediaControlStatus" request:MEMORY[0x277CBEC10] destinationID:v10 options:0 responseHandler:v14];
      self->_registeredMediaControlInterest = 1;
    }

    else if (completionCopy)
    {
      completionCopy = (*(completionCopy + 2))(completionCopy, 0);
    }

    v11 = _TVRCMediaEventsLog(completionCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Activated", v13, 2u);
    }
  }

  else
  {
    v11 = RPErrorF();
    v12 = _TVRCMediaEventsLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(TVRCMediaControlSession *)v11 _activateWithCompletion:v12];
    }

    if (v5)
    {
      (v5)[2](v5, v11);
    }
  }
}

void __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCMediaEventsLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response for FetchMediaControlStatus, response %{public}@, error %{public}@", &v11, 0x16u);
  }

  if (v7)
  {
    v10 = _TVRCMediaEventsLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2_cold_1(v7, v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _handleMediaControlEvent:v6];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TVRCMediaControlSession_invalidate__block_invoke;
  block[3] = &unk_279D825E0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    v3 = _TVRCMediaEventsLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_registeredMediaControlInterest)
      {
        v4 = "yes";
      }

      else
      {
        v4 = "no";
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate: Interest %s\n", &v7, 0xCu);
    }

    if (self->_registeredMediaControlInterest)
    {
      [(RPMessageable *)self->_messenger deregisterEventID:@"MediaControlStatus"];
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
  v12 = *MEMORY[0x277D85DE8];
  Int64 = CFDictionaryGetInt64();
  v5 = _TVRCMediaEventsLog(Int64);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v9 = Int64;
    v10 = 1024;
    v11 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MediaControl event: %llu, %d", buf, 0x12u);
  }

  if (Int64 != self->_mediaControlFlags)
  {
    self->_mediaControlFlags = Int64;
    v6 = MEMORY[0x26D6B0B70](self->_mediaControlFlagsChangedHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6);
    }
  }
}

- (void)mediaCaptionSettingGetFromDestinationID:(id)d completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messenger = self->_messenger;
  v14 = @"MediaControlCommand";
  v15[0] = &unk_287E66B50;
  v8 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__TVRCMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke;
  v12[3] = &unk_279D82F80;
  v13 = completionCopy;
  v11 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v10 destinationID:dCopy options:0 responseHandler:v12];
}

void __78__TVRCMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetInt64Ranged();
  (*(*(a1 + 32) + 16))();
}

- (void)mediaCaptionSettingSet:(int)set destinationID:(id)d completion:(id)completion
{
  v6 = *&set;
  v18[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messenger = self->_messenger;
  v17[0] = @"MediaControlCommand";
  v17[1] = @"MediaCaptionSetting";
  v18[0] = &unk_287E66B68;
  v10 = MEMORY[0x277CCABB0];
  dCopy = d;
  v12 = [v10 numberWithInt:v6];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__TVRCMediaControlSession_mediaCaptionSettingSet_destinationID_completion___block_invoke;
  v15[3] = &unk_279D82F80;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __75__TVRCMediaControlSession_mediaCaptionSettingSet_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messenger = self->_messenger;
  v17 = @"MediaControlCommand";
  v10 = MEMORY[0x277CCABB0];
  dCopy = d;
  v12 = [v10 numberWithInt:v6];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__TVRCMediaControlSession_mediaCommand_destinationID_completion___block_invoke;
  v15[3] = &unk_279D82F80;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __65__TVRCMediaControlSession_mediaCommand_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v18[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messenger = self->_messenger;
  v17[0] = @"MediaControlCommand";
  v17[1] = @"MessageKeySkipSeconds";
  v18[0] = &unk_287E66B80;
  v10 = MEMORY[0x277CCABB0];
  dCopy = d;
  v12 = [v10 numberWithDouble:seconds];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__TVRCMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke;
  v15[3] = &unk_279D82F80;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __71__TVRCMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messenger = self->_messenger;
  v14 = @"MediaControlCommand";
  v15[0] = &unk_287E66B98;
  v8 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__TVRCMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke;
  v12[3] = &unk_279D82F80;
  v13 = completionCopy;
  v11 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v10 destinationID:dCopy options:0 responseHandler:v12];
}

void __70__TVRCMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  (*(*(a1 + 32) + 16))(v6);
}

- (void)mediaSetVolume:(double)volume destinationID:(id)d completion:(id)completion
{
  v19[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messenger = self->_messenger;
  v18[0] = @"MediaControlCommand";
  v18[1] = @"MessageKeyVolume";
  v19[0] = &unk_287E66BB0;
  v10 = MEMORY[0x277CCABB0];
  dCopy = d;
  v12 = [v10 numberWithDouble:volume];
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__TVRCMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke;
  v15[3] = &unk_279D82FA8;
  volumeCopy = volume;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

void __67__TVRCMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (void)_activateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "### Activate failed: %{public}@\n", &v2, 0xCu);
}

void __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "FetchMediaControlStatus failed: %{public}@", &v2, 0xCu);
}

@end