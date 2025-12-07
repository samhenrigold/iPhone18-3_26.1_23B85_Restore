@interface RPAppSignInService
- (RPAppSignInService)init;
- (id)description;
- (void)_activate;
- (void)_invalidate;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation RPAppSignInService

- (RPAppSignInService)init
{
  v6.receiver = self;
  v6.super_class = RPAppSignInService;
  v2 = [(RPAppSignInService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "RPAppSignInService");
  v2 = v4;

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__RPAppSignInService_activate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__30__RPAppSignInService_activate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 8) & 1) == 0)
  {
    v5 = result;
    *(v4 + 8) = 1;
    if (gLogCategory_RPAppSignInService <= 30)
    {
      if (gLogCategory_RPAppSignInService != -1 || (result = _LogCategory_Initialize(), result))
      {
        __30__RPAppSignInService_activate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];

    return [v6 _activate];
  }

  return result;
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_RPAppSignInService <= 30)
  {
    if (gLogCategory_RPAppSignInService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(RPAppSignInService *)self _activate];
    }
  }

  v4 = objc_alloc_init(getSFServiceClass());
  objc_storeStrong(&selfCopy->_bleAdvertiser, v4);
  [v4 setDeviceActionType:28];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v4 setIdentifier:uUIDString];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__RPAppSignInService__activate__block_invoke;
  v8[3] = &unk_1E7C92D10;
  v9 = v4;
  v10 = selfCopy;
  v7 = v4;
  [v7 activateWithCompletion:v8];
}

void __31__RPAppSignInService__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3)
    {
      v8 = v3;
      if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
      {
        __31__RPAppSignInService__activate__block_invoke_cold_1(v8);
      }

      [*(*(a1 + 40) + 16) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_RPAppSignInService <= 30)
    {
      v8 = 0;
      if (gLogCategory_RPAppSignInService != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __31__RPAppSignInService__activate__block_invoke_cold_2(v3, v5, v4);
LABEL_7:
        v5 = v8;
      }
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPAppSignInService_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__32__RPAppSignInService_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 24) & 1) == 0)
  {
    v5 = result;
    *(v4 + 24) = 1;
    if (gLogCategory_RPAppSignInService <= 30)
    {
      if (gLogCategory_RPAppSignInService != -1 || (result = _LogCategory_Initialize(), result))
      {
        __32__RPAppSignInService_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];

    return [v6 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  selfCopy = self;
  if (self->_bleAdvertiser)
  {
    if (gLogCategory_RPAppSignInService <= 30)
    {
      if (gLogCategory_RPAppSignInService != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(RPAppSignInService *)self _invalidate];
      }
    }

    [(SFService *)selfCopy->_bleAdvertiser invalidate];
    bleAdvertiser = selfCopy->_bleAdvertiser;
    selfCopy->_bleAdvertiser = 0;
  }

  [(RPAppSignInService *)selfCopy _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (gLogCategory_RPAppSignInService <= 30)
    {
      if (gLogCategory_RPAppSignInService != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(RPAppSignInService *)self _invalidated];
      }
    }
  }
}

@end