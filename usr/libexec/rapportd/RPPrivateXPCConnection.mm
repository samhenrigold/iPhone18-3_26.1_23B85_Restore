@interface RPPrivateXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)xpcConnectionInvalidated;
- (void)xpcPrivateAdvertiserActivate:(id)activate completion:(id)completion;
- (void)xpcPrivateAdvertiserUpdate:(id)update completion:(id)completion;
- (void)xpcPrivateDiscoveryActivate:(id)activate completion:(id)completion;
- (void)xpcPrivateDiscoveryUpdate:(id)update completion:(id)completion;
@end

@implementation RPPrivateXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D4A70 <= 90 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_100126F00(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v15 = RPErrorF(4294896128, "Missing entitlement '%@'", v9, v10, v11, v12, v13, v14, @"com.apple.rapport");
    v16 = v15;
    result = 0;
    *error = v15;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  v3 = self->_activatedAdvertiser;
  if (v3)
  {
    if (dword_1001D4A70 < 31 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126F50(&self->_xpcCnx, v3);
    }

    if (!self->_direct)
    {
      [(RPPrivateAdvertiser *)v3 invalidate];
    }

    activatedAdvertiser = self->_activatedAdvertiser;
    self->_activatedAdvertiser = 0;
  }

  v5 = self->_activatedDiscovery;
  if (v5)
  {
    if (dword_1001D4A70 < 31 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126F50(&self->_xpcCnx, v5);
    }

    if (!self->_direct)
    {
      [(RPPrivateDiscovery *)v5 invalidate];
    }

    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = 0;
  }

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (void)xpcPrivateAdvertiserActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  v12 = 0;
  v9 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v12];
  v10 = v12;
  v11 = v10;
  if (v9)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126FA4(self);
    }

    objc_storeStrong(&self->_activatedAdvertiser, activate);
    v11 = 0;
  }

  (completionCopy)[2](completionCopy, v11);
}

- (void)xpcPrivateAdvertiserUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v11 = 0;
  v8 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  v10 = v9;
  if (v8)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126FF0(self);
    }

    v10 = 0;
  }

  (completionCopy)[2](completionCopy, v10);
}

- (void)xpcPrivateDiscoveryActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  v12 = 0;
  v9 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v12];
  v10 = v12;
  v11 = v10;
  if (v9)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_10012703C(self);
    }

    objc_storeStrong(&self->_activatedDiscovery, activate);
    v11 = 0;
  }

  (completionCopy)[2](completionCopy, v11);
}

- (void)xpcPrivateDiscoveryUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v11 = 0;
  v8 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  v10 = v9;
  if (v8)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100127088(self);
    }

    v10 = 0;
  }

  (completionCopy)[2](completionCopy, v10);
}

@end