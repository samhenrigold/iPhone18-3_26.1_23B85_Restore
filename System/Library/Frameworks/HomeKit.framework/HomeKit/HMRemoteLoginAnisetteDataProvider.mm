@interface HMRemoteLoginAnisetteDataProvider
- (HMRemoteLoginAnisetteDataProvider)initWithCoder:(id)coder;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation HMRemoteLoginAnisetteDataProvider

- (HMRemoteLoginAnisetteDataProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMRemoteLoginAnisetteDataProvider;
  v5 = [(HMRemoteLoginAnisetteDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dCopy = d;
  initNewMessage = [(HMRemoteLoginMessage *)[HMLegacyAnisetteDataRequest alloc] initNewMessage];
  [initNewMessage setDsid:dCopy];

  messageName = [initNewMessage messageName];
  v26 = messageName;
  v10 = encodeRootObject(initNewMessage);
  v27[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v16 = [v14 initWithTarget:uuid];
  v17 = [v12 initWithName:messageName2 destination:v16 payload:v11];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __78__HMRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v24 = &unk_1E754C0F0;
  v25 = completionCopy;
  v18 = completionCopy;
  [v17 setResponseHandler:&v21];
  v19 = [(HMRemoteLoginAnisetteDataProvider *)self context:v21];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v17];
}

void __78__HMRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [HMLegacyAnisetteDataResponse objWithDict:a3];
  v6 = *(a1 + 32);
  v7 = [v8 anisetteData];
  (*(v6 + 16))(v6, v7, v5);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  necessaryCopy = necessary;
  v26[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  initNewMessage = [(HMRemoteLoginMessage *)[HMFetchAnisetteDataRequest alloc] initNewMessage];
  [initNewMessage setShouldProvision:necessaryCopy];
  messageName = [initNewMessage messageName];
  v25 = messageName;
  v9 = encodeRootObject(initNewMessage);
  v26[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v13 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v15 = [v13 initWithTarget:uuid];
  v16 = [v11 initWithName:messageName2 destination:v15 payload:v10];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __93__HMRemoteLoginAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke;
  v23 = &unk_1E754C0F0;
  v24 = completionCopy;
  v17 = completionCopy;
  [v16 setResponseHandler:&v20];
  v18 = [(HMRemoteLoginAnisetteDataProvider *)self context:v20];
  messageDispatcher = [v18 messageDispatcher];
  [messageDispatcher sendMessage:v16];
}

void __93__HMRemoteLoginAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [HMFetchAnisetteDataResponse objWithDict:a3];
  v6 = *(a1 + 32);
  v7 = [v8 anisetteData];
  (*(v6 + 16))(v6, v7, v5);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  initNewMessage = [(HMRemoteLoginMessage *)[HMEraseAnisetteDataRequest alloc] initNewMessage];
  messageName = [initNewMessage messageName];
  v23 = messageName;
  v7 = encodeRootObject(initNewMessage);
  v24[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v9 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v13 = [v11 initWithTarget:uuid];
  v14 = [v9 initWithName:messageName2 destination:v13 payload:v8];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __65__HMRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v21 = &unk_1E754C0F0;
  v22 = completionCopy;
  v15 = completionCopy;
  [v14 setResponseHandler:&v18];
  v16 = [(HMRemoteLoginAnisetteDataProvider *)self context:v18];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v14];
}

void __65__HMRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMEraseAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dataCopy = data;
  initNewMessage = [(HMRemoteLoginMessage *)[HMSyncAnisetteDataRequest alloc] initNewMessage];
  [initNewMessage setSimData:dataCopy];

  messageName = [initNewMessage messageName];
  v26 = messageName;
  v10 = encodeRootObject(initNewMessage);
  v27[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v16 = [v14 initWithTarget:uuid];
  v17 = [v12 initWithName:messageName2 destination:v16 payload:v11];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __72__HMRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v24 = &unk_1E754C0F0;
  v25 = completionCopy;
  v18 = completionCopy;
  [v17 setResponseHandler:&v21];
  v19 = [(HMRemoteLoginAnisetteDataProvider *)self context:v21];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v17];
}

void __72__HMRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMSyncAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  initNewMessage = [(HMRemoteLoginMessage *)[HMProvisionAnisetteDataRequest alloc] initNewMessage];
  messageName = [initNewMessage messageName];
  v23 = messageName;
  v7 = encodeRootObject(initNewMessage);
  v24[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v9 = objc_alloc(MEMORY[0x1E69A2A10]);
  messageName2 = [initNewMessage messageName];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMRemoteLoginAnisetteDataProvider *)self uuid];
  v13 = [v11 initWithTarget:uuid];
  v14 = [v9 initWithName:messageName2 destination:v13 payload:v8];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__HMRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v21 = &unk_1E754C0F0;
  v22 = completionCopy;
  v15 = completionCopy;
  [v14 setResponseHandler:&v18];
  v16 = [(HMRemoteLoginAnisetteDataProvider *)self context:v18];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v14];
}

void __69__HMRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMProvisionAnisetteDataResponse objWithDict:a3];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);
}

@end