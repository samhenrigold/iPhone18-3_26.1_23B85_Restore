@interface SSProximityDevice
- (SSProximityDevice)initWithQueue:(id)queue endpoint:(unint64_t)endpoint remoteInfo:(id)info;
- (id)templateSession;
- (void)activateUsingPreSharedKey:(BOOL)key completion:(id)completion;
- (void)invalidate:(BOOL)invalidate;
- (void)proxSetupAuthEventUpdate:(id)update;
- (void)verifyPIN:(id)n;
@end

@implementation SSProximityDevice

- (SSProximityDevice)initWithQueue:(id)queue endpoint:(unint64_t)endpoint remoteInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  if (endpoint)
  {
    v16.receiver = self;
    v16.super_class = SSProximityDevice;
    v10 = [(SSProximityDevice *)&v16 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      v10->_endpoint = endpoint;
      objc_storeStrong(&v10->_remoteInfo, info);
      v12 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:queueCopy];
      v13 = p_isa[2];
      p_isa[2] = v12;

      [p_isa[2] setDelegate:p_isa];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)activateUsingPreSharedKey:(BOOL)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  objc_initWeak(&location, self);
  client = self->_client;
  endpoint = self->_endpoint;
  remoteInfo = self->_remoteInfo;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke;
  v11[3] = &unk_279B44DE0;
  v10 = completionCopy;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [(CoreTelephonyClient *)client getProximityTransportSession:endpoint remoteDeviceInfo:remoteInfo usePreSharedKey:keyCopy completion:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

void __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sLogDomain(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSession:v5];

    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 client];
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 endpoint];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25;
    v14[3] = &unk_279B44DB8;
    v15 = *(a1 + 32);
    [v11 activateProximityTransfer:v13 completion:v14];
  }
}

void __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  objc_initWeak(&location, self);
  client = self->_client;
  endpoint = self->_endpoint;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SSProximityDevice_invalidate___block_invoke;
  v7[3] = &unk_279B44828;
  objc_copyWeak(&v8, &location);
  [(CoreTelephonyClient *)client invalidateProximityTransfer:endpoint force:invalidateCopy completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __32__SSProximityDevice_invalidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __32__SSProximityDevice_invalidate___block_invoke_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setClient:0];
}

- (void)verifyPIN:(id)n
{
  nCopy = n;
  client = self->_client;
  endpoint = self->_endpoint;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SSProximityDevice_verifyPIN___block_invoke;
  v8[3] = &unk_279B44638;
  v9 = nCopy;
  v7 = nCopy;
  [(CoreTelephonyClient *)client validateProximityTransfer:endpoint pin:v7 completion:v8];
}

void __31__SSProximityDevice_verifyPIN___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __31__SSProximityDevice_verifyPIN___block_invoke_cold_1(a1, v4, v5);
    }
  }
}

- (id)templateSession
{
  session = self->_session;
  if (session)
  {
    v3 = session;
  }

  else
  {
    v4 = sLogDomain(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SSProximityDevice templateSession];
    }
  }

  return session;
}

- (void)proxSetupAuthEventUpdate:(id)update
{
  updateCopy = update;
  eventHandler = [(SSProximityDevice *)self eventHandler];

  if (eventHandler)
  {
    eventHandler2 = [(SSProximityDevice *)self eventHandler];
    v8 = [TSUtilities skEventFromDictionary:updateCopy];
    (*(eventHandler2 + 16))(eventHandler2, v8);
  }

  else
  {
    eventHandler2 = sLogDomain(v6);
    if (os_log_type_enabled(eventHandler2, OS_LOG_TYPE_ERROR))
    {
      [SSProximityDevice proxSetupAuthEventUpdate:];
    }
  }
}

void __31__SSProximityDevice_verifyPIN___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "verify PIN(%@) failed : %@", &v4, 0x16u);
}

@end