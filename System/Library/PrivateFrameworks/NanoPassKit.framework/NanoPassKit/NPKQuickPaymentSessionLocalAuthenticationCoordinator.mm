@interface NPKQuickPaymentSessionLocalAuthenticationCoordinator
- (NPKQuickPaymentSessionLocalAuthenticationCoordinator)initWithCallbackQueue:(id)queue;
- (NPKQuickPaymentSessionLocalAuthenticationCoordinatorCredentialDelegate)credentialDelegate;
- (id)_nameForLocalAuthenticationEvent:(int64_t)event;
- (int64_t)_credentialTypeForEvent:(int64_t)event;
- (void)_activateLocalAuthenticationEvent:(int64_t)event;
- (void)_cancelLocalAuthentication;
- (void)_deactivateLocalAuthenticationEvent:(int64_t)event;
- (void)_handleLocalAuthenticationPolicyEvaluatedWithContext:(id)context error:(id)error;
- (void)_invokeCompletionHandlerForInvalidationWithError:(id)error;
- (void)_presentNextLocalAuthenticationEvent;
- (void)beginLocalAuthenticationWithAccessControl:(__SecAccessControl *)control operation:(int64_t)operation completion:(id)completion;
- (void)beginLocalAuthenticationWithPolicy:(int64_t)policy completion:(id)completion;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)invalidateLocalAuthenticationContexts;
@end

@implementation NPKQuickPaymentSessionLocalAuthenticationCoordinator

- (NPKQuickPaymentSessionLocalAuthenticationCoordinator)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = NPKQuickPaymentSessionLocalAuthenticationCoordinator;
  v6 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.nanopassbook.lacoordinator", v7);
    localAuthenticationQueue = v6->_localAuthenticationQueue;
    v6->_localAuthenticationQueue = v8;

    objc_storeStrong(&v6->_callbackQueue, queue);
  }

  return v6;
}

- (void)beginLocalAuthenticationWithPolicy:(int64_t)policy completion:(id)completion
{
  completionCopy = completion;
  localAuthenticationQueue = self->_localAuthenticationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke;
  block[3] = &unk_279946730;
  block[4] = self;
  v10 = completionCopy;
  policyCopy = policy;
  v8 = completionCopy;
  dispatch_async(localAuthenticationQueue, block);
}

void __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(*(a1 + 40));
      *buf = 138412290;
      v70 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: begin local authentication with completion:%@", buf, 0xCu);
    }
  }

  v7 = MEMORY[0x277D37D28];
  v8 = *MEMORY[0x277D38558];
  v68[0] = *MEMORY[0x277D38538];
  v68[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v66 = *MEMORY[0x277D383D8];
  v67 = *MEMORY[0x277D38460];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  [v7 subjects:v9 sendEvent:v10];

  v11 = *(a1 + 32);
  if (v11[4])
  {
    v12 = pk_Payment_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_Payment_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: existing completion handler", buf, 2u);
      }
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD4770] code:-9 userInfo:0];
    [*(a1 + 32) _invokeCompletionHandlerForInvalidationWithError:v16];

    v11 = *(a1 + 32);
  }

  if (v11[5])
  {
    v17 = pk_Payment_log(v11);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_Payment_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: already-completed context", buf, 2u);
      }
    }

    if (*(a1 + 40))
    {
      v21 = *(*(a1 + 32) + 40);
      v22 = *(*(a1 + 32) + 48);
      v23 = *(*(a1 + 32) + 56);
      v24 = *(a1 + 32);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;

      v26 = *(a1 + 32);
      v27 = *(v26 + 48);
      *(v26 + 48) = 0;

      v28 = *(a1 + 32);
      v29 = *(v28 + 56);
      *(v28 + 56) = 0;

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_59;
      v61[3] = &unk_279948930;
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      v62 = v21;
      v63 = v22;
      v64 = v23;
      v65 = v31;
      v32 = v23;
      v33 = v22;
      v34 = v21;
      [v30 _performDelegateCallback:v61];

LABEL_18:
LABEL_19:
    }
  }

  else
  {
    v35 = [v11 setCompletionHandler:*(a1 + 40)];
    if (!*(*(a1 + 32) + 64))
    {
      kdebug_trace();
      v34 = objc_alloc_init(MEMORY[0x277CD4790]);
      v39 = pk_Payment_log(v34);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (v40)
      {
        v42 = pk_Payment_log(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: created new context", buf, 2u);
        }
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

      v45 = pk_Payment_log(v44);
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

      if (WeakRetained)
      {
        if (v46)
        {
          v48 = pk_Payment_log(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v48, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: evaluating asynchronously", buf, 2u);
          }
        }

        [v34 setUiDelegate:*(a1 + 32)];
        v49 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_62;
        block[3] = &unk_279945F18;
        v50 = v34;
        v51 = *(a1 + 48);
        v52 = *(a1 + 32);
        v58 = v50;
        v59 = v52;
        v60 = v51;
        dispatch_async(v49, block);

        objc_storeStrong((*(a1 + 32) + 64), v34);
        v33 = v58;
      }

      else
      {
        if (v46)
        {
          v53 = pk_Payment_log(v47);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v53, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: evaluating synchronously", buf, 2u);
          }
        }

        [v34 setUiDelegate:*(a1 + 32)];
        v54 = *(a1 + 48);
        v56 = 0;
        v55 = [v34 evaluatePolicy:v54 options:0 error:&v56];
        v33 = v56;
        [*(a1 + 32) _handleLocalAuthenticationPolicyEvaluatedWithContext:v34 error:v33];
      }

      goto LABEL_18;
    }

    v36 = pk_Payment_log(v35);
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

    if (v37)
    {
      v34 = pk_Payment_log(v38);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: in-progress context", buf, 2u);
      }

      goto LABEL_19;
    }
  }
}

void __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_62(int8x16_t *a1)
{
  v1 = a1[3].i64[0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_2;
  v3[3] = &unk_279948958;
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  [v2.i64[0] evaluatePolicy:v1 options:0 reply:v3];
}

void __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithPolicy_completion___block_invoke_3;
  block[3] = &unk_279945880;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

- (void)beginLocalAuthenticationWithAccessControl:(__SecAccessControl *)control operation:(int64_t)operation completion:(id)completion
{
  completionCopy = completion;
  localAuthenticationQueue = self->_localAuthenticationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke;
  v11[3] = &unk_2799489A8;
  v11[4] = self;
  v12 = completionCopy;
  controlCopy = control;
  operationCopy = operation;
  v10 = completionCopy;
  dispatch_async(localAuthenticationQueue, v11);
}

void __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: begin local authentication with access control", buf, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6[4])
  {
    v7 = pk_Payment_log(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: existing completion handler", buf, 2u);
      }
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD4770] code:-9 userInfo:0];
    [*(a1 + 32) _invokeCompletionHandlerForInvalidationWithError:v11];

    v6 = *(a1 + 32);
  }

  if (!v6[5])
  {
    v30 = [v6 setCompletionHandler:*(a1 + 40)];
    if (*(*(a1 + 32) + 64))
    {
      v31 = pk_Payment_log(v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

      if (!v32)
      {
        return;
      }

      v29 = pk_Payment_log(v33);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: in-progress context", buf, 2u);
      }
    }

    else
    {
      kdebug_trace();
      v34 = objc_alloc_init(MEMORY[0x277CD4790]);
      v35 = pk_Payment_log(v34);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

      if (v36)
      {
        v38 = pk_Payment_log(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v38, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: created new context", buf, 2u);
        }
      }

      v39 = pk_Payment_log(v37);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (v40)
      {
        v42 = pk_Payment_log(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: evaluating asynchronously", buf, 2u);
        }
      }

      [v34 setUiDelegate:*(a1 + 32)];
      v43 = dispatch_get_global_queue(0, 0);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_65;
      v49[3] = &unk_279948980;
      v44 = v34;
      v45 = *(a1 + 56);
      v52 = *(a1 + 48);
      v53 = v45;
      v46 = *(a1 + 32);
      v50 = v44;
      v51 = v46;
      dispatch_async(v43, v49);

      v47 = *(a1 + 32);
      v48 = *(v47 + 64);
      *(v47 + 64) = v44;
      v29 = v44;
    }

    goto LABEL_31;
  }

  v12 = pk_Payment_log(v6);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: already-completed context", buf, 2u);
    }
  }

  if (*(a1 + 40))
  {
    v16 = *(*(a1 + 32) + 40);
    v17 = *(*(a1 + 32) + 48);
    v18 = *(*(a1 + 32) + 56);
    v19 = *(a1 + 32);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    v21 = *(a1 + 32);
    v22 = *(v21 + 48);
    *(v21 + 48) = 0;

    v23 = *(a1 + 32);
    v24 = *(v23 + 56);
    *(v23 + 56) = 0;

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_64;
    v54[3] = &unk_279948930;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v55 = v16;
    v56 = v17;
    v57 = v18;
    v58 = v26;
    v27 = v18;
    v28 = v17;
    v29 = v16;
    [v25 _performDelegateCallback:v54];

LABEL_31:
  }
}

void __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_65(int8x16_t *a1)
{
  v1 = a1[3].i64[0];
  v2 = a1[3].i64[1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_2;
  v4[3] = &unk_279948958;
  v3 = a1[2];
  v5 = vextq_s8(v3, v3, 8uLL);
  [v3.i64[0] evaluateAccessControl:v1 operation:v2 options:0 reply:v4];
}

void __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__NPKQuickPaymentSessionLocalAuthenticationCoordinator_beginLocalAuthenticationWithAccessControl_operation_completion___block_invoke_3;
  block[3] = &unk_279945880;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

- (void)invalidateLocalAuthenticationContexts
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: requested invalidate context", buf, 2u);
    }
  }

  localAuthenticationQueue = self->_localAuthenticationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKQuickPaymentSessionLocalAuthenticationCoordinator_invalidateLocalAuthenticationContexts__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(localAuthenticationQueue, block);
}

void __93__NPKQuickPaymentSessionLocalAuthenticationCoordinator_invalidateLocalAuthenticationContexts__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 40);
      v8 = *(v6 + 64);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: invalidating context completed:%@ inProgress:%@", &v13, 0x16u);
    }
  }

  [*(*(a1 + 32) + 40) invalidate];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  [*(*(a1 + 32) + 64) invalidate];
  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  *(v11 + 64) = 0;
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:&unk_286CE7738];
  v9 = pk_Payment_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _nameForLocalAuthenticationEvent:event];
      if (v8)
      {
        if ([v8 BOOLValue])
        {
          v14 = @"activated";
        }

        else
        {
          v14 = @"deactivated";
        }
      }

      else
      {
        v14 = @"received";
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInteger:event];
      *buf = 138413058;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = paramsCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: LocalAuthentication UI ***** %@ %@ ***** - event: %@ params: %@", buf, 0x2Au);
    }
  }

  if (event)
  {
    localAuthenticationQueue = self->_localAuthenticationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__NPKQuickPaymentSessionLocalAuthenticationCoordinator_event_params_reply___block_invoke;
    block[3] = &unk_279945F18;
    v18 = v8;
    selfCopy = self;
    eventCopy = event;
    dispatch_async(localAuthenticationQueue, block);
  }
}

uint64_t __75__NPKQuickPaymentSessionLocalAuthenticationCoordinator_event_params_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _activateLocalAuthenticationEvent:v4];
  }

  else
  {

    return [v3 _deactivateLocalAuthenticationEvent:v4];
  }
}

- (void)_handleLocalAuthenticationPolicyEvaluatedWithContext:(id)context error:(id)error
{
  v44[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  errorCopy = error;
  kdebug_trace();
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  if (errorCopy)
  {
    v8 = MEMORY[0x277D37D28];
    v9 = *MEMORY[0x277D38558];
    v41[0] = *MEMORY[0x277D38538];
    v41[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v39 = *MEMORY[0x277D383D8];
    v40 = *MEMORY[0x277D383E8];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v8 subjects:v10 sendEvent:v11];
    externalizedContext = 0;
  }

  else
  {
    externalizedContext = [(LAContext *)contextCopy externalizedContext];
    v13 = MEMORY[0x277D37D28];
    v14 = *MEMORY[0x277D38558];
    v44[0] = *MEMORY[0x277D38538];
    v44[1] = v14;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v42 = *MEMORY[0x277D383D8];
    v43 = *MEMORY[0x277D38400];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    [v13 subjects:v10 sendEvent:v11];
  }

  v15 = _Block_copy(self->_completionHandler);
  v16 = pk_Payment_log(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    if (v17)
    {
      v19 = pk_Payment_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = errorCopy;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: have completion handler for evaluate policy with error:%@", buf, 0xCu);
      }
    }

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __115__NPKQuickPaymentSessionLocalAuthenticationCoordinator__handleLocalAuthenticationPolicyEvaluatedWithContext_error___block_invoke;
    v32[3] = &unk_279948930;
    v33 = contextCopy;
    v34 = externalizedContext;
    v35 = errorCopy;
    v36 = v15;
    v21 = errorCopy;
    v22 = externalizedContext;
    v23 = contextCopy;
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v32];

    completedError = v36;
  }

  else
  {
    if (v17)
    {
      v25 = pk_Payment_log(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = errorCopy;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: no completion handler for evaluate policy with error:%@", buf, 0xCu);
      }
    }

    completedContext = self->_completedContext;
    self->_completedContext = contextCopy;
    v27 = contextCopy;

    completedCredential = self->_completedCredential;
    self->_completedCredential = externalizedContext;
    v29 = externalizedContext;

    completedError = self->_completedError;
    self->_completedError = errorCopy;
    v30 = errorCopy;
  }

  inProgressContext = self->_inProgressContext;
  self->_inProgressContext = 0;
}

- (void)_activateLocalAuthenticationEvent:(int64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      eventCopy = event;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Activating local authentication event %ld", &v14, 0xCu);
    }
  }

  pendingLocalAuthenticationEvents = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];

  if (!pendingLocalAuthenticationEvents)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self setPendingLocalAuthenticationEvents:array];
  }

  pendingLocalAuthenticationEvents2 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [pendingLocalAuthenticationEvents2 addObject:v13];

  [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _presentNextLocalAuthenticationEvent];
}

- (void)_deactivateLocalAuthenticationEvent:(int64_t)event
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      eventCopy = event;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: Deactivating local authentication with event %ld", buf, 0xCu);
    }
  }

  activeLocalAuthenticationEvent = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self activeLocalAuthenticationEvent];
  v11 = activeLocalAuthenticationEvent;
  if (activeLocalAuthenticationEvent && [activeLocalAuthenticationEvent integerValue] == event)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__deactivateLocalAuthenticationEvent___block_invoke;
    v14[3] = &unk_279945830;
    v14[4] = self;
    v14[5] = event;
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v14];
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self setActiveLocalAuthenticationEvent:0];
  }

  pendingLocalAuthenticationEvents = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [pendingLocalAuthenticationEvents removeObject:v13];

  [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _presentNextLocalAuthenticationEvent];
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__deactivateLocalAuthenticationEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) credentialDelegate];
  [v2 localAuthenticationCoordinator:*(a1 + 32) cancelRequestForCredentialOfType:{objc_msgSend(*(a1 + 32), "_credentialTypeForEvent:", *(a1 + 40))}];
}

- (void)_presentNextLocalAuthenticationEvent
{
  dispatch_assert_queue_V2(self->_localAuthenticationQueue);
  pendingLocalAuthenticationEvents = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
  if ([pendingLocalAuthenticationEvents count])
  {
    activeLocalAuthenticationEvent = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self activeLocalAuthenticationEvent];

    if (!activeLocalAuthenticationEvent)
    {
      pendingLocalAuthenticationEvents2 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
      firstObject = [pendingLocalAuthenticationEvents2 firstObject];
      integerValue = [firstObject integerValue];

      pendingLocalAuthenticationEvents3 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self pendingLocalAuthenticationEvents];
      [pendingLocalAuthenticationEvents3 removeObjectAtIndex:0];

      if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v8 = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _credentialTypeForEvent:integerValue];
        objc_initWeak(&location, self);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke;
        v10[3] = &unk_279948A20;
        v10[4] = self;
        v11[1] = v8;
        objc_copyWeak(v11, &location);
        v11[2] = integerValue;
        [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v10];
        objc_destroyWeak(v11);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
  }
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) credentialDelegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_2;
  v5[3] = &unk_2799489F8;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  [v2 localAuthenticationCoordinator:v3 requestsCredentialOfType:v4 completion:v5];

  objc_destroyWeak(&v6);
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [v5 dataUsingEncoding:4];
      v9 = [v7 inProgressContext];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_3;
      v12[3] = &unk_2799489D0;
      objc_copyWeak(v13, (a1 + 32));
      v13[1] = *(a1 + 40);
      [v9 setCredential:v8 forProcessedEvent:v10 credentialType:v11 reply:v12];

      objc_destroyWeak(v13);
    }

    else
    {
      [WeakRetained _cancelLocalAuthentication];
    }
  }
}

void __92__NPKQuickPaymentSessionLocalAuthenticationCoordinator__presentNextLocalAuthenticationEvent__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = pk_Payment_log(WeakRetained);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [WeakRetained _nameForLocalAuthenticationEvent:*(a1 + 40)];
      if (a2)
      {
        v12 = @"success";
      }

      else
      {
        v12 = [v5 description];
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: setCredential for %@ returned %@", &v13, 0x16u);
      if ((a2 & 1) == 0)
      {
      }
    }
  }
}

- (void)_cancelLocalAuthentication
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Local authentication coordinator: Cancelling authentication", v8, 2u);
    }
  }

  inProgressContext = [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self inProgressContext];
  [inProgressContext invalidate];

  [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self setInProgressContext:0];
}

- (void)_invokeCompletionHandlerForInvalidationWithError:(id)error
{
  errorCopy = error;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = _Block_copy(completionHandler);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __105__NPKQuickPaymentSessionLocalAuthenticationCoordinator__invokeCompletionHandlerForInvalidationWithError___block_invoke;
    v9[3] = &unk_279946670;
    v11 = v6;
    v10 = errorCopy;
    v8 = v6;
    [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self _performDelegateCallback:v9];
  }
}

- (int64_t)_credentialTypeForEvent:(int64_t)event
{
  v3 = -2;
  if (event != 3)
  {
    v3 = 0;
  }

  if (event == 2)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (id)_nameForLocalAuthenticationEvent:(int64_t)event
{
  if (event > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_279948A40 + event);
  }
}

- (NPKQuickPaymentSessionLocalAuthenticationCoordinatorCredentialDelegate)credentialDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialDelegate);

  return WeakRetained;
}

@end