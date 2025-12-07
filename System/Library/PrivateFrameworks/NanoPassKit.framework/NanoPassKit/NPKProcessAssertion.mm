@interface NPKProcessAssertion
+ (id)acquireBackgroundTaskAssertionWithExplanation:(id)explanation acquiredHandler:(id)handler invalidationHandler:(id)invalidationHandler;
@end

@implementation NPKProcessAssertion

+ (id)acquireBackgroundTaskAssertionWithExplanation:(id)explanation acquiredHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  explanationCopy = explanation;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v11 = NPKMyPid(invalidationHandlerCopy, v10);
  v12 = objc_alloc(MEMORY[0x277CEEEA8]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke;
  v22[3] = &unk_279945508;
  v13 = explanationCopy;
  v25 = v11;
  v23 = v13;
  v24 = handlerCopy;
  v14 = handlerCopy;
  v15 = [v12 initWithPID:v11 flags:1 reason:4 name:v13 withHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke_14;
  v19[3] = &unk_279945530;
  v20 = v13;
  v21 = invalidationHandlerCopy;
  v16 = invalidationHandlerCopy;
  v17 = v13;
  [v15 setInvalidationHandler:v19];

  return v15;
}

uint64_t __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log(a1);
  v5 = v4;
  if (a2)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = pk_Payment_log(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v19 = 138412546;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v11 = "Notice: Acquired process assertion for %@ event with %d.";
    v12 = v8;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v14 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (!v14)
  {
    goto LABEL_10;
  }

  v8 = pk_Payment_log(v15);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v19 = 138412546;
    v20 = v16;
    v21 = 1024;
    v22 = v17;
    v11 = "Error: Failed to acquire process assertion for %@ event: %d.";
    v12 = v8;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_25B300000, v12, v13, v11, &v19, 0x12u);
  }

LABEL_9:

LABEL_10:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t __105__NPKProcessAssertion_acquireBackgroundTaskAssertionWithExplanation_acquiredHandler_invalidationHandler___block_invoke_14(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Invalidated process assertion for %@ event.", &v8, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end