@interface SiriActivationAssertion
- (SiriActivationAssertion)initWithIdentifier:(id)identifier reason:(unint64_t)reason;
- (void)configureConnection;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatedAtTimestamp:(double)timestamp;
@end

@implementation SiriActivationAssertion

- (SiriActivationAssertion)initWithIdentifier:(id)identifier reason:(unint64_t)reason
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SiriActivationAssertion;
  v7 = [(SiriActivationSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SiriActivationSource *)v7 setIdentifier:identifierCopy];
    [(SiriActivationAssertion *)v8 setReason:reason];
    [(SiriActivationAssertion *)v8 configureConnection];
  }

  return v8;
}

- (void)configureConnection
{
  v3 = MEMORY[0x1E698F498];
  v4 = +[SASBoardServicesConfiguration configuration];
  machServiceIdentifier = [v4 machServiceIdentifier];
  v6 = +[SASBoardServicesConfiguration configuration];
  v7 = [v6 identifierForService:1];
  v8 = [v3 endpointForMachName:machServiceIdentifier service:v7 instance:0];

  v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
  connection = self->super._connection;
  self->super._connection = v9;

  objc_initWeak(&location, self);
  v11 = self->super._connection;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __46__SiriActivationAssertion_configureConnection__block_invoke;
  v15 = &unk_1E82F3658;
  objc_copyWeak(&v16, &location);
  [(BSServiceConnection *)v11 configureConnection:&v12];
  [(BSServiceConnection *)self->super._connection activate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__SiriActivationAssertion_configureConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy_;
    v14[4] = __Block_byref_object_dispose_;
    v15 = [WeakRetained identifier];
    v6 = +[SASSignalServer serviceQuality];
    [v3 setServiceQuality:v6];

    v7 = +[SASSignalServer interface];
    [v3 setInterface:v7];

    [v3 setInterfaceTarget:v5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SiriActivationAssertion_configureConnection__block_invoke_22;
    v12[3] = &unk_1E82F4138;
    v12[4] = v5;
    objc_copyWeak(&v13, (a1 + 32));
    [v3 setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SiriActivationAssertion_configureConnection__block_invoke_24;
    v10[3] = &unk_1E82F4138;
    v10[4] = v5;
    objc_copyWeak(&v11, (a1 + 32));
    [v3 setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__SiriActivationAssertion_configureConnection__block_invoke_25;
    v8[3] = &unk_1E82F4160;
    objc_copyWeak(&v9, (a1 + 32));
    v8[4] = v5;
    v8[5] = v14;
    [v3 setActivationHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    _Block_object_dispose(v14, 8);
  }
}

void __46__SiriActivationAssertion_configureConnection__block_invoke_22(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SiriActivationAssertion configureConnection]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation Received Invalidation for Assertion - %@, Invalidating…", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __46__SiriActivationAssertion_configureConnection__block_invoke_24(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SiriActivationAssertion configureConnection]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation Received Interruption for Assertion - %@, Invalidating…", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __46__SiriActivationAssertion_configureConnection__block_invoke_25(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v18 = 136315650;
    v19 = "[SiriActivationAssertion configureConnection]_block_invoke";
    v20 = 2048;
    v21 = v7;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Activated for assertion strongSelf=%p connection=%@", &v18, 0x20u);
  }

  if (WeakRetained)
  {
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AF00];
      v10 = v8;
      v11 = [v9 currentThread];
      v12 = [v11 qualityOfService];
      v18 = 136315394;
      v19 = "[SiriActivationAssertion configureConnection]_block_invoke";
      v20 = 2048;
      v21 = v12;
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock about to lock with qos: %zd", &v18, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[SiriActivationAssertion configureConnection]_block_invoke";
      _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock successfully locked", &v18, 0xCu);
    }

    v14 = [v3 remoteTarget];
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*&WeakRetained[8]._os_unfair_lock_opaque];
    [v14 registerAssertionWithIdentifier:v15 reason:v16];

    os_unfair_lock_unlock(WeakRetained + 4);
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[SiriActivationAssertion configureConnection]_block_invoke";
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_lock unlocked", &v18, 0xCu);
    }
  }
}

- (void)invalidate
{
  Current = CFAbsoluteTimeGetCurrent();

  [(SiriActivationAssertion *)self invalidatedAtTimestamp:Current];
}

- (void)invalidatedAtTimestamp:(double)timestamp
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    connection = self->super._connection;
    v17 = 136315650;
    v18 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    v22 = connection;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Unregistering & invalidating assertion self=%@ connection=%@", &v17, 0x20u);
  }

  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v7;
    currentThread = [v8 currentThread];
    qualityOfService = [currentThread qualityOfService];
    v17 = 136315394;
    v18 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    v19 = 2048;
    selfCopy = qualityOfService;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock about to lock with qos: %zd", &v17, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  v12 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock successfully locked", &v17, 0xCu);
  }

  remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
  identifier = [(SiriActivationSource *)self identifier];
  [remoteTarget unregisterAssertionWithIdentifier:identifier];

  [(BSServiceConnection *)self->super._connection invalidate];
  v15 = self->super._connection;
  self->super._connection = 0;

  os_unfair_lock_unlock(&self->super._lock);
  v16 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SiriActivationAssertion invalidatedAtTimestamp:]";
    _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _lock unlocked", &v17, 0xCu);
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[SiriActivationAssertion dealloc]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation SiriActivationAssertion got deallocated", buf, 0xCu);
  }

  [(SiriActivationAssertion *)self invalidate];
  v4.receiver = self;
  v4.super_class = SiriActivationAssertion;
  [(SiriActivationSource *)&v4 dealloc];
}

@end