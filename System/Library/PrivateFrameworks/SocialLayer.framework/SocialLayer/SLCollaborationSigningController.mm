@interface SLCollaborationSigningController
- (SLCollaborationSigningController)initWithTargetSerialQueue:(id)queue synchronous:(BOOL)synchronous;
- (id)taskServiceWithErrorHandler:(id)handler;
- (void)signData:(id)data forCollaborationIdentifier:(id)identifier trackingPreventionSalt:(id)salt timeout:(double)timeout completion:(id)completion;
- (void)signSourceProcessWithMetadata:(id)metadata timeout:(double)timeout completion:(id)completion;
@end

@implementation SLCollaborationSigningController

- (SLCollaborationSigningController)initWithTargetSerialQueue:(id)queue synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v23 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v8 = objc_opt_class();
  v16.receiver = self;
  v16.super_class = SLCollaborationSigningController;
  v9 = [(SLDServiceProxy *)&v16 initWithServiceClass:v8 targetSerialQueue:queueCopy delegate:0];
  v10 = v9;
  if (v9)
  {
    v11 = SLFrameworkLogHandle(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      *buf = 134218498;
      v18 = v10;
      v19 = 2112;
      if (synchronousCopy)
      {
        v12 = @"YES";
      }

      v20 = queueCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_INFO, "[%p] initWithTargetSerialQueue: %@ synchronous: %@", buf, 0x20u);
    }

    objc_storeStrong(&v10->_targetSerialQueue, queue);
    v10->_synchronous = synchronousCopy;
    v13 = [[SLRemoteTaskManager alloc] initWithDelegate:v10 targetSerialQueue:v10->_targetSerialQueue synchronous:synchronousCopy];
    taskManager = v10->_taskManager;
    v10->_taskManager = v13;

    [(SLDServiceProxy *)v10 connect];
  }

  return v10;
}

- (void)signData:(id)data forCollaborationIdentifier:(id)identifier trackingPreventionSalt:(id)salt timeout:(double)timeout completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  saltCopy = salt;
  completionCopy = completion;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6;
  v39 = __Block_byref_object_dispose__6;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v36[5];
    *buf = 136315650;
    v42 = "[SLCollaborationSigningController signData:forCollaborationIdentifier:trackingPreventionSalt:timeout:completion:]";
    v43 = 2112;
    v44 = identifierCopy;
    v45 = 2112;
    v46 = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: identifier: %@ uuid: %@", buf, 0x20u);
  }

  taskManager = [(SLCollaborationSigningController *)self taskManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke;
  v28[3] = &unk_278926540;
  v19 = dataCopy;
  v29 = v19;
  v20 = identifierCopy;
  v30 = v20;
  v21 = saltCopy;
  v31 = v21;
  selfCopy = self;
  v34 = &v35;
  v33 = completionCopy;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9;
  v25[3] = &unk_278926290;
  v27 = &v35;
  v26 = v33;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_14;
  v23[3] = &unk_2789261F0;
  v22 = v26;
  v24 = v22;
  [taskManager startTask:v28 withTimeout:v25 timeoutHandler:v23 errorHandler:timeout];

  _Block_object_dispose(&v35, 8);
}

id __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_2;
  v14[3] = &unk_278926518;
  v8 = *(a1 + 48);
  v14[4] = *(a1 + 56);
  v15 = v5;
  v13 = *(a1 + 64);
  v9 = v13;
  v16 = v13;
  v10 = v5;
  v11 = [a2 signData:v6 forCollaborationIdentifier:v7 trackingPreventionSalt:v8 reply:v14];

  return v11;
}

void __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_3;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void *__114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLCollaborationSigningController] signData:forCollaborationIdentifier: received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationSigningController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)signSourceProcessWithMetadata:(id)metadata timeout:(double)timeout completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [metadataCopy localIdentifier];
    v12 = v27[5];
    *buf = 136315650;
    v33 = "[SLCollaborationSigningController signSourceProcessWithMetadata:timeout:completion:]";
    v34 = 2112;
    v35 = localIdentifier;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "%s: metadata local identifier: %@ uuid: %@", buf, 0x20u);
  }

  taskManager = [(SLCollaborationSigningController *)self taskManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke;
  v21[3] = &unk_2789265B8;
  v14 = metadataCopy;
  v22 = v14;
  selfCopy = self;
  v25 = &v26;
  v24 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16;
  v18[3] = &unk_278926290;
  v20 = &v26;
  v19 = v24;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_17;
  v16[3] = &unk_2789261F0;
  v15 = v19;
  v17 = v15;
  [taskManager startTask:v21 withTimeout:v18 timeoutHandler:v16 errorHandler:timeout];

  _Block_object_dispose(&v26, 8);
}

id __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_2;
  v10[3] = &unk_278926590;
  v6 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v14 = *(a1 + 56);
  v12 = v6;
  v13 = *(a1 + 48);
  v7 = v5;
  v8 = [a2 signSourceProcessWithMetadata:v6 reply:v10];

  return v8;
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3;
  v10[3] = &unk_278926568;
  v11 = *(a1 + 40);
  v12 = v5;
  v16 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void *__85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = [*(a1 + 32) suppress];
    v4 = *(a1 + 40);
    v5 = SLFrameworkLogHandle(v3);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(*(a1 + 72) + 8) + 40);
        v8 = *(a1 + 56);
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "[SLCollaborationSigningController] signSourceProcessWithMetadata: received response for request UUID: %@, error: %@", &v9, 0x16u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3_cold_1(a1, v6);
    }

    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationSigningController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)taskServiceWithErrorHandler:(id)handler
{
  v3 = [(SLDServiceProxy *)self synchronousRemoteServiceWithErrorHandler:handler];
  if (([v3 conformsToProtocol:&unk_2846AF048] & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

void __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  v2 = 138412290;
  v3 = v0;
  _os_log_error_impl(&dword_231772000, v1, OS_LOG_TYPE_ERROR, "[SLCollaborationSigningController] signData:forCollaborationIdentifier: request with UUID timed out: %@", &v2, 0xCu);
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v5 = [*(a1 + 48) localIdentifier];
  v6 = *(a1 + 56);
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLCollaborationSigningController] signSourceProcessWithMetadata: returned nil for request UUID: %@. This will prevent verification of the source process for collaboration identifier: %@, error: %@", &v7, 0x20u);
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  v2 = 138412290;
  v3 = v0;
  _os_log_error_impl(&dword_231772000, v1, OS_LOG_TYPE_ERROR, "[SLCollaborationSigningController] signSourceProcessWithMetadata: request with UUID timed out: %@", &v2, 0xCu);
}

@end