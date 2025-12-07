@interface RPHIDSession
- (RPHIDSession)init;
- (void)activateWithCompletion:(id)completion;
- (void)hidCommand:(int)command buttonState:(int)state destinationID:(id)d completion:(id)completion;
- (void)hidCommand:(int)command destinationID:(id)d completion:(id)completion;
- (void)invalidate;
@end

@implementation RPHIDSession

- (RPHIDSession)init
{
  v6.receiver = self;
  v6.super_class = RPHIDSession;
  v2 = [(RPHIDSession *)&v6 init];
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
  v9[2] = __39__RPHIDSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

void __39__RPHIDSession_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (*(*(a1 + 32) + 16))
  {
    if (gLogCategory_RPHIDSession <= 30)
    {
      if (gLogCategory_RPHIDSession != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __39__RPHIDSession_activateWithCompletion___block_invoke_cold_1(a1, a2, a3);
      }
    }

    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }

  else
  {
    v11 = RPErrorF(4294960591, "No messenger provided", a3, a4, a5, a6, a7, a8, v14);
    v15 = v11;
    if (gLogCategory_RPHIDSession <= 90)
    {
      if (gLogCategory_RPHIDSession != -1 || (v12 = _LogCategory_Initialize(), v11 = v15, v12))
      {
        __39__RPHIDSession_activateWithCompletion___block_invoke_cold_2(v11);
        v11 = v15;
      }
    }

    v13 = *(v8 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v15);
      v11 = v15;
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__RPHIDSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __26__RPHIDSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_RPHIDSession <= 30)
  {
    if (gLogCategory_RPHIDSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __26__RPHIDSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

- (void)hidCommand:(int)command destinationID:(id)d completion:(id)completion
{
  v6 = *&command;
  v18[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v17 = @"_hidC";
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithInt:v6];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__RPHIDSession_hidCommand_destinationID_completion___block_invoke;
  v15[3] = &unk_1E7C93780;
  v16 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_hidC" request:v13 destinationID:dCopy options:0 responseHandler:v15];
}

uint64_t __52__RPHIDSession_hidCommand_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)hidCommand:(int)command buttonState:(int)state destinationID:(id)d completion:(id)completion
{
  v7 = *&state;
  v8 = *&command;
  v21[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v20[0] = @"_hBtS";
  v12 = MEMORY[0x1E696AD98];
  dCopy = d;
  v14 = [v12 numberWithInt:v7];
  v20[1] = @"_hidC";
  v21[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v21[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__RPHIDSession_hidCommand_buttonState_destinationID_completion___block_invoke;
  v18[3] = &unk_1E7C93780;
  v19 = completionCopy;
  v17 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_hidC" request:v16 destinationID:dCopy options:0 responseHandler:v18];
}

uint64_t __64__RPHIDSession_hidCommand_buttonState_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

@end