@interface NPKFidoAuthCoordinator
- (void)clearContext;
- (void)requestAuthorizationWithCompletion:(id)completion;
@end

@implementation NPKFidoAuthCoordinator

- (void)requestAuthorizationWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _Block_copy(completionCopy);
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: request authorization with completion: %@", buf, 0xCu);
    }
  }

  _isDeviceLocked = [(NPKFidoAuthCoordinator *)self _isDeviceLocked];
  if (_isDeviceLocked)
  {
    v11 = pk_General_log(_isDeviceLocked);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: noting that device is locked; requesting unlock", buf, 2u);
      }
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1004 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 1, 0, v15);
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CD4790]);
    v17 = pk_General_log(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_General_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: About to evaluate device owner authentication policy for context: %@", buf, 0xCu);
      }
    }

    if ([(NPKFidoAuthCoordinator *)self _isWristDetectDisabled])
    {
      +[NPKAudioPlayer playWarsawHaptic];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke;
    v21[3] = &unk_279948D58;
    v22 = v16;
    selfCopy = self;
    v24 = completionCopy;
    v15 = v16;
    [v15 evaluatePolicy:1023 options:0 reply:v21];
  }
}

void __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke_2;
  v9[3] = &unk_279945BB0;
  v10 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __61__NPKFidoAuthCoordinator_requestAuthorizationWithCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: Context evaluated; error: %@", &v13, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
  }

  v8 = v7;
  if ([*(a1 + 32) code] == -2)
  {
    v9 = [*(a1 + 32) domain];
    [v9 isEqualToString:*MEMORY[0x277CD4770]];
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 8);
  *(v10 + 8) = v8;
  v12 = v8;

  (*(*(a1 + 56) + 16))();
}

- (void)clearContext
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      context = self->_context;
      v9 = 138412290;
      v10 = context;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKFidoAuthCoordinator: clearing context: %@", &v9, 0xCu);
    }
  }

  [(LAContext *)self->_context invalidate];
  v8 = self->_context;
  self->_context = 0;
}

@end