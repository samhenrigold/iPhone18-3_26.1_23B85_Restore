@interface SLCollaborationHandshakeController
- (SLCollaborationHandshakeController)initWithTargetSerialQueue:(id)queue synchronous:(BOOL)synchronous;
- (id)_handshakeService;
- (id)_sandboxExtensionIssueFileURL:(id)l withAuditToken:(id *)token;
- (id)taskServiceWithErrorHandler:(id)handler;
- (void)addParticipantHandles:(id)handles withFileURL:(id)l metadata:(id)metadata timeout:(double)timeout completion:(id)completion;
- (void)addParticipantHandles:(id)handles withMetadata:(id)metadata timeout:(double)timeout completion:(id)completion;
- (void)generateProofForIdentity:(id)identity collaborationIdentifier:(id)identifier timeout:(double)timeout completion:(id)completion;
- (void)removeParticipantIdentities:(id)identities withFileURL:(id)l metadata:(id)metadata timeout:(double)timeout completion:(id)completion;
- (void)removeParticipantIdentities:(id)identities withMetadata:(id)metadata timeout:(double)timeout completion:(id)completion;
- (void)startCollaborationWithFileURL:(id)l metadata:(id)metadata participants:(id)participants timeout:(double)timeout completion:(id)completion;
- (void)startCollaborationWithMetadata:(id)metadata participants:(id)participants timeout:(double)timeout completion:(id)completion;
- (void)verifySourceBundleIdentifierFromMetadata:(id)metadata timeout:(double)timeout completion:(id)completion;
@end

@implementation SLCollaborationHandshakeController

- (SLCollaborationHandshakeController)initWithTargetSerialQueue:(id)queue synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v23 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v8 = objc_opt_class();
  v16.receiver = self;
  v16.super_class = SLCollaborationHandshakeController;
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

- (void)startCollaborationWithMetadata:(id)metadata participants:(id)participants timeout:(double)timeout completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  participantsCopy = participants;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v30[5];
    *buf = 136315906;
    v36 = "[SLCollaborationHandshakeController startCollaborationWithMetadata:participants:timeout:completion:]";
    v37 = 2112;
    v38 = metadataCopy;
    v39 = 2112;
    v40 = participantsCopy;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: Metadata: %@, Participants: %@, requestUUID: %@", buf, 0x2Au);
  }

  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke;
  v23[3] = &unk_2789261A0;
  v16 = metadataCopy;
  v24 = v16;
  v17 = participantsCopy;
  v25 = v17;
  selfCopy = self;
  v28 = &v29;
  v27 = completionCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_9;
  v21[3] = &unk_2789261C8;
  v22 = v27;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_2_14;
  v19[3] = &unk_2789261F0;
  v18 = v22;
  v20 = v18;
  [taskManager startTask:v23 withTimeout:v21 timeoutHandler:v19 errorHandler:timeout];

  _Block_object_dispose(&v29, 8);
}

id __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_2;
  v13[3] = &unk_278926178;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 startCollaborationWithMetadata:v6 participants:v7 reply:v13];

  return v10;
}

void __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_3;
  block[3] = &unk_278926150;
  v17 = *(a1 + 40);
  v18 = v9;
  v15 = *(a1 + 48);
  v11 = v15;
  v21 = v15;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v10, block);
}

void *__101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 72) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] startCollaborationWithMetadata received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

void __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_9(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)startCollaborationWithFileURL:(id)l metadata:(id)metadata participants:(id)participants timeout:(double)timeout completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  participantsCopy = participants;
  completionCopy = completion;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v42[5];
    *buf = 136315906;
    *&buf[4] = "[SLCollaborationHandshakeController startCollaborationWithFileURL:metadata:participants:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2112;
    v48 = participantsCopy;
    LOWORD(v49) = 2112;
    *(&v49 + 2) = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: Metadata: %@, Participants: %@, requestUUID: %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v48 = "";
  v49 = 0u;
  v50 = 0u;
  _handshakeService = [(SLCollaborationHandshakeController *)self _handshakeService];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke;
  v40[3] = &unk_278925B78;
  v40[4] = buf;
  [_handshakeService prepareConnectionWithReply:v40];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__2;
  v38[4] = __Block_byref_object_dispose__2;
  v19 = *(*&buf[8] + 48);
  v37[0] = *(*&buf[8] + 32);
  v37[1] = v19;
  v39 = [(SLCollaborationHandshakeController *)self _sandboxExtensionIssueFileURL:lCopy withAuditToken:v37];
  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_2;
  v29[3] = &unk_278926218;
  v21 = lCopy;
  v30 = v21;
  v35 = v38;
  v22 = metadataCopy;
  v31 = v22;
  v23 = participantsCopy;
  v32 = v23;
  selfCopy = self;
  v36 = &v41;
  v34 = completionCopy;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_17;
  v27[3] = &unk_2789261C8;
  v28 = v34;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_2_18;
  v25[3] = &unk_2789261F0;
  v24 = v28;
  v26 = v24;
  [taskManager startTask:v29 withTimeout:v27 timeoutHandler:v25 errorHandler:timeout];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v41, 8);
}

void __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  objc_msgSend_auditToken(v2);
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

id __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1[9] + 8) + 40);
  v7 = a1[4];
  v8 = a1[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_3;
  v14[3] = &unk_278926178;
  v9 = a1[6];
  v10 = a1[8];
  v14[4] = a1[7];
  v15 = v5;
  v17 = a1[10];
  v16 = v10;
  v11 = v5;
  v12 = [a2 startCollaborationWithFileURL:v7 sandboxTokenData:v6 metadata:v8 participants:v9 reply:v14];

  return v12;
}

void __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_4;
  block[3] = &unk_278926150;
  v17 = *(a1 + 40);
  v18 = v9;
  v15 = *(a1 + 48);
  v11 = v15;
  v21 = v15;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v10, block);
}

void *__109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 72) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] startCollaborationWithFileURL Received response for requestUUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

void __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_17(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)addParticipantHandles:(id)handles withMetadata:(id)metadata timeout:(double)timeout completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  metadataCopy = metadata;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v31[5];
    *buf = 136315650;
    v37 = "[SLCollaborationHandshakeController addParticipantHandles:withMetadata:timeout:completion:]";
    v38 = 2112;
    v39 = metadataCopy;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke;
  v24[3] = &unk_2789261A0;
  v16 = handlesCopy;
  v25 = v16;
  v17 = metadataCopy;
  v26 = v17;
  selfCopy = self;
  v29 = &v30;
  v28 = completionCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20;
  v21[3] = &unk_278926290;
  v23 = &v30;
  v22 = v28;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_21;
  v19[3] = &unk_2789261F0;
  v18 = v22;
  v20 = v18;
  [taskManager startTask:v24 withTimeout:v21 timeoutHandler:v19 errorHandler:timeout];

  _Block_object_dispose(&v30, 8);
}

id __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_2;
  v13[3] = &unk_278926268;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 addParticipantHandles:v6 withMetadata:v7 reply:v13];

  return v10;
}

void __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_3;
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

void *__92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] addParticipantHandles received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)addParticipantHandles:(id)handles withFileURL:(id)l metadata:(id)metadata timeout:(double)timeout completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  lCopy = l;
  metadataCopy = metadata;
  completionCopy = completion;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v43[5];
    *buf = 136315650;
    *&buf[4] = "[SLCollaborationHandshakeController addParticipantHandles:withFileURL:metadata:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2112;
    v49 = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v49 = "";
  v50 = 0u;
  v51 = 0u;
  _handshakeService = [(SLCollaborationHandshakeController *)self _handshakeService];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke;
  v41[3] = &unk_278925B78;
  v41[4] = buf;
  [_handshakeService prepareConnectionWithReply:v41];

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__2;
  v39[4] = __Block_byref_object_dispose__2;
  v19 = *(*&buf[8] + 48);
  v38[0] = *(*&buf[8] + 32);
  v38[1] = v19;
  v40 = [(SLCollaborationHandshakeController *)self _sandboxExtensionIssueFileURL:lCopy withAuditToken:v38];
  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_2;
  v30[3] = &unk_2789262B8;
  v21 = handlesCopy;
  v31 = v21;
  v22 = lCopy;
  v32 = v22;
  v36 = v39;
  v23 = metadataCopy;
  v33 = v23;
  selfCopy = self;
  v37 = &v42;
  v35 = completionCopy;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23;
  v27[3] = &unk_278926290;
  v29 = &v42;
  v28 = v35;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_24;
  v25[3] = &unk_2789261F0;
  v24 = v28;
  v26 = v24;
  [taskManager startTask:v30 withTimeout:v27 timeoutHandler:v25 errorHandler:timeout];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v42, 8);
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  objc_msgSend_auditToken(v2);
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

id __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a1[9] + 8) + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_3;
  v14[3] = &unk_278926268;
  v9 = a1[6];
  v10 = a1[8];
  v14[4] = a1[7];
  v15 = v5;
  v17 = a1[10];
  v16 = v10;
  v11 = v5;
  v12 = [a2 addParticipantHandles:v6 withFileURL:v7 sandboxTokenData:v8 metadata:v9 reply:v14];

  return v12;
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_4;
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

void *__100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] addParticipantHandles:withFileURL: received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)removeParticipantIdentities:(id)identities withMetadata:(id)metadata timeout:(double)timeout completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  metadataCopy = metadata;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v31[5];
    *buf = 136315650;
    v37 = "[SLCollaborationHandshakeController removeParticipantIdentities:withMetadata:timeout:completion:]";
    v38 = 2112;
    v39 = metadataCopy;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke;
  v24[3] = &unk_2789261A0;
  v16 = identitiesCopy;
  v25 = v16;
  v17 = metadataCopy;
  v26 = v17;
  selfCopy = self;
  v29 = &v30;
  v28 = completionCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25;
  v21[3] = &unk_278926290;
  v23 = &v30;
  v22 = v28;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_26;
  v19[3] = &unk_2789261F0;
  v18 = v22;
  v20 = v18;
  [taskManager startTask:v24 withTimeout:v21 timeoutHandler:v19 errorHandler:timeout];

  _Block_object_dispose(&v30, 8);
}

id __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_2;
  v13[3] = &unk_278926268;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 removeParticipantIdentities:v6 withMetadata:v7 reply:v13];

  return v10;
}

void __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_3;
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

void *__98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] removeParticipantIdentities received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)removeParticipantIdentities:(id)identities withFileURL:(id)l metadata:(id)metadata timeout:(double)timeout completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  lCopy = l;
  metadataCopy = metadata;
  completionCopy = completion;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v43[5];
    *buf = 136315650;
    *&buf[4] = "[SLCollaborationHandshakeController removeParticipantIdentities:withFileURL:metadata:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2112;
    v49 = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v49 = "";
  v50 = 0u;
  v51 = 0u;
  _handshakeService = [(SLCollaborationHandshakeController *)self _handshakeService];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke;
  v41[3] = &unk_278925B78;
  v41[4] = buf;
  [_handshakeService prepareConnectionWithReply:v41];

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__2;
  v39[4] = __Block_byref_object_dispose__2;
  v19 = *(*&buf[8] + 48);
  v38[0] = *(*&buf[8] + 32);
  v38[1] = v19;
  v40 = [(SLCollaborationHandshakeController *)self _sandboxExtensionIssueFileURL:lCopy withAuditToken:v38];
  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_2;
  v30[3] = &unk_2789262B8;
  v21 = identitiesCopy;
  v31 = v21;
  v22 = lCopy;
  v32 = v22;
  v36 = v39;
  v23 = metadataCopy;
  v33 = v23;
  selfCopy = self;
  v37 = &v42;
  v35 = completionCopy;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28;
  v27[3] = &unk_278926290;
  v29 = &v42;
  v28 = v35;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_29;
  v25[3] = &unk_2789261F0;
  v24 = v28;
  v26 = v24;
  [taskManager startTask:v30 withTimeout:v27 timeoutHandler:v25 errorHandler:timeout];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v42, 8);
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  objc_msgSend_auditToken(v2);
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

id __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a1[9] + 8) + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_3;
  v14[3] = &unk_278926268;
  v9 = a1[6];
  v10 = a1[8];
  v14[4] = a1[7];
  v15 = v5;
  v17 = a1[10];
  v16 = v10;
  v11 = v5;
  v12 = [a2 removeParticipantIdentities:v6 withFileURL:v7 sandboxTokenData:v8 metadata:v9 reply:v14];

  return v12;
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_4;
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

void *__106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SLFrameworkLogHandle([*(a1 + 32) suppress]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] removeParticipantIdentities:withFileURL: received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)generateProofForIdentity:(id)identity collaborationIdentifier:(id)identifier timeout:(double)timeout completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  identifierCopy = identifier;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v31[5];
    *buf = 136315906;
    v37 = "[SLCollaborationHandshakeController generateProofForIdentity:collaborationIdentifier:timeout:completion:]";
    v38 = 2112;
    v39 = identityCopy;
    v40 = 2112;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: identity: %@ documentIdentifier: %@ uuid: %@", buf, 0x2Au);
  }

  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke;
  v24[3] = &unk_2789261A0;
  v16 = identityCopy;
  v25 = v16;
  v17 = identifierCopy;
  v26 = v17;
  selfCopy = self;
  v29 = &v30;
  v28 = completionCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31;
  v21[3] = &unk_278926290;
  v23 = &v30;
  v22 = v28;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_32;
  v19[3] = &unk_2789261F0;
  v18 = v22;
  v20 = v18;
  [taskManager startTask:v24 withTimeout:v21 timeoutHandler:v19 errorHandler:timeout];

  _Block_object_dispose(&v30, 8);
}

id __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_2;
  v13[3] = &unk_2789262E0;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 generateProofForIdentity:v6 collaborationIdentifier:v7 reply:v13];

  return v10;
}

void __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_3;
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

void *__106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_3(uint64_t a1)
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
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLCollaborationHandshakeController] generateProofForIdentity:collaborationIdentifier: received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)verifySourceBundleIdentifierFromMetadata:(id)metadata timeout:(double)timeout completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = SLFrameworkLogHandle(uUID);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [metadataCopy localIdentifier];
    v12 = v27[5];
    *buf = 136315650;
    v33 = "[SLCollaborationHandshakeController verifySourceBundleIdentifierFromMetadata:timeout:completion:]";
    v34 = 2112;
    v35 = localIdentifier;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "%s: local identifier: %@ uuid: %@", buf, 0x20u);
  }

  taskManager = [(SLCollaborationHandshakeController *)self taskManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke;
  v21[3] = &unk_278926330;
  v14 = metadataCopy;
  v22 = v14;
  selfCopy = self;
  v25 = &v26;
  v24 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34;
  v18[3] = &unk_278926290;
  v20 = &v26;
  v19 = v24;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_35;
  v16[3] = &unk_2789261F0;
  v15 = v19;
  v17 = v15;
  [taskManager startTask:v21 withTimeout:v18 timeoutHandler:v16 errorHandler:timeout];

  _Block_object_dispose(&v26, 8);
}

id __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_2;
  v12[3] = &unk_278926308;
  v6 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v13 = v5;
  v11 = *(a1 + 48);
  v7 = v11;
  v14 = v11;
  v8 = v5;
  v9 = [a2 verifySourceBundleIdentifierFromMetadata:v6 reply:v12];

  return v9;
}

void __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_3;
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

void *__98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_3(uint64_t a1)
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
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLCollaborationHandshakeController] verifySourceBundleIdentifierFromMetadata: received response for request UUID: %@, error: %@", &v6, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)taskServiceWithErrorHandler:(id)handler
{
  v3 = [(SLDServiceProxy *)self synchronousRemoteServiceWithErrorHandler:handler];
  if (([v3 conformsToProtocol:&unk_2846B99D0] & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)_handshakeService
{
  synchronousRemoteService = [(SLDServiceProxy *)self synchronousRemoteService];
  if (([synchronousRemoteService conformsToProtocol:&unk_2846B99D0] & 1) == 0)
  {

    synchronousRemoteService = 0;
  }

  return synchronousRemoteService;
}

- (id)_sandboxExtensionIssueFileURL:(id)l withAuditToken:(id *)token
{
  lCopy = l;
  path = [lCopy path];
  hasDirectoryPath = [lCopy hasDirectoryPath];

  if (hasDirectoryPath)
  {
    v8 = [path stringByAppendingString:@"/"];

    path = v8;
  }

  [path fileSystemRepresentation];
  v12 = *token->var0;
  v13 = *&token->var0[4];
  v9 = sandbox_extension_issue_file_to_process();
  v10 = v9;
  if (v9)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:strlen(v9) + 1 freeWhenDone:{1, v12, v13}];
  }

  return v10;
}

void __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLCollaborationHandshakeController] addParticipantHandles request with UUID timed out: %@", v2, v3, v4, v5);
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLCollaborationHandshakeController] addParticipantHandles:withFileURL: request with UUID timed out: %@", v2, v3, v4, v5);
}

void __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLCollaborationHandshakeController] removeParticipantIdentities request with UUID timed out: %@", v2, v3, v4, v5);
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLCollaborationHandshakeController] removeParticipantIdentities:withFileURL: request with UUID timed out: %@", v2, v3, v4, v5);
}

void __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLCollaborationHandshakeController] generateProofForIdentity:collaborationIdentifier: request with UUID timed out: %@", v2, v3, v4, v5);
}

void __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34_cold_1()
{
  OUTLINED_FUNCTION_0_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLCollaborationHandshakeController] verifySourceBundleIdentifierFromMetadata: request with UUID timed out: %@", v2, v3, v4, v5);
}

@end