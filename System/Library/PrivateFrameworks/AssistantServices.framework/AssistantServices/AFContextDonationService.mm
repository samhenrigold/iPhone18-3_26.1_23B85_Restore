@interface AFContextDonationService
+ (id)defaultService;
- (id)_connection;
- (id)_init;
- (void)deviceContextConnectionDidInvalidate:(id)invalidate;
- (void)donateContext:(id)context withMetadata:(id)metadata pushToRemote:(BOOL)remote completion:(id)completion;
- (void)registerContextTransformer:(id)transformer forType:(id)type;
- (void)setDonationService:(id)service;
@end

@implementation AFContextDonationService

+ (id)defaultService
{
  if (defaultService_onceToken != -1)
  {
    dispatch_once(&defaultService_onceToken, &__block_literal_global_47986);
  }

  v3 = defaultService_sDonation;

  return v3;
}

- (void)deviceContextConnectionDidInvalidate:(id)invalidate
{
  connection = self->_connection;
  self->_connection = 0;
}

- (void)donateContext:(id)context withMetadata:(id)metadata pushToRemote:(BOOL)remote completion:(id)completion
{
  contextCopy = context;
  metadataCopy = metadata;
  completionCopy = completion;
  type = [metadataCopy type];
  if (type)
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke;
    v15[3] = &unk_1E7349578;
    v15[4] = self;
    v16 = contextCopy;
    v17 = metadataCopy;
    remoteCopy = remote;
    v19 = completionCopy;
    v18 = type;
    dispatch_async(queue, v15);
  }
}

void __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke(uint64_t a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    [v3 donateContext:*(a1 + 40) withMetadata:*(a1 + 48) pushToRemote:*(a1 + 72)];
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__47966;
    v39 = __Block_byref_object_dispose__47967;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__47966;
    v33 = __Block_byref_object_dispose__47967;
    v34 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_5;
    v23[3] = &unk_1E7349500;
    v23[4] = v2;
    v26 = &v35;
    v27 = &v29;
    v24 = *(a1 + 56);
    v28 = *(a1 + 72);
    v25 = *(a1 + 64);
    v6 = MEMORY[0x193AFB7B0](v23);
    v7 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 56)];
    v8 = [*(a1 + 40) serializedBackingStore];
    v9 = v8;
    if (v7)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_3;
      v17[3] = &unk_1E7349550;
      v17[4] = *(a1 + 32);
      v21 = &v35;
      v18 = v8;
      v22 = &v29;
      v19 = *(a1 + 48);
      v20 = v6;
      [v7 getRedactedContextForContextSnapshot:v10 metadata:v11 privacyPolicy:50 completion:v17];
    }

    else
    {
      v43 = &unk_1F056EFB8;
      v44[0] = v8;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v13 = v36[5];
      v36[5] = v12;

      v14 = *(a1 + 48);
      v41 = &unk_1F056EFB8;
      v42 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v16 = v30[5];
      v30[5] = v15;

      v6[2](v6);
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }
}

void __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_2;
  v7[3] = &unk_1E73494D8;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v2 donateSerializedContextMapByPrivacyClass:v3 withMetadataMap:v4 forType:v6 pushToRemote:v5 completion:v7];
}

void __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_4;
  block[3] = &unk_1E7349528;
  v16 = v5;
  v17 = v6;
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  v20 = *(a1 + 72);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v6;
  v14 = v5;
  dispatch_async(v7, block);
}

uint64_t __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_4(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v24 = a1[4];
    v25 = a1[5];
    *buf = 136315650;
    v35 = "[AFContextDonationService donateContext:withMetadata:pushToRemote:completion:]_block_invoke_4";
    v36 = 2112;
    v37 = v24;
    v38 = 2112;
    v39 = v25;
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #hal redacted: %@ %@", buf, 0x20u);
  }

  v3 = a1[4];
  if (v3 && a1[5])
  {
    v4 = a1[6];
    v32[0] = &unk_1F056EFB8;
    v32[1] = &unk_1F056EFD0;
    v33[0] = v4;
    v5 = [v3 serializedBackingStore];
    v33[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v7 = *(a1[9] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = a1[7];
    v30[0] = &unk_1F056EFB8;
    v30[1] = &unk_1F056EFD0;
    v10 = a1[5];
    v31[0] = v9;
    v31[1] = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = v31;
    v13 = v30;
    v14 = 2;
  }

  else
  {
    v15 = a1[6];
    v28 = &unk_1F056EFB8;
    v29 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = *(a1[9] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = a1[7];
    v26 = &unk_1F056EFB8;
    v27 = v19;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v27;
    v13 = &v26;
    v14 = 1;
  }

  v20 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:{v14, v26, v27}];
  v21 = *(a1[10] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  return (*(a1[8] + 16))();
}

uint64_t __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerContextTransformer:(id)transformer forType:(id)type
{
  transformerCopy = transformer;
  typeCopy = type;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AFContextDonationService_registerContextTransformer_forType___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = transformerCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = transformerCopy;
  dispatch_async(queue, block);
}

uint64_t __63__AFContextDonationService_registerContextTransformer_forType___block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 24))
  {
    return [*(v1 + 24) registerContextTransformer:a1[5] forType:a1[6]];
  }

  else
  {
    return [*(v1 + 8) setObject:a1[5] forKey:a1[6]];
  }
}

- (void)setDonationService:(id)service
{
  serviceCopy = service;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AFContextDonationService_setDonationService___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

void __47__AFContextDonationService_setDonationService___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = *(a1 + 32);
    if (*(v2 + 24))
    {
      v7 = [*(v2 + 8) keyEnumerator];
      v3 = [v7 nextObject];
      if (v3)
      {
        v4 = v3;
        do
        {
          v5 = [*(*(a1 + 32) + 8) objectForKey:v4];
          [*(*(a1 + 32) + 24) registerContextTransformer:v5 forType:v4];

          v6 = [v7 nextObject];

          v4 = v6;
        }

        while (v6);
      }
    }
  }
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [AFDeviceContextConnection alloc];
    queue = self->_queue;
    v6 = +[AFInstanceContext currentContext];
    v7 = [(AFDeviceContextConnection *)v4 initWithQueue:queue instanceContext:v6 delegate:self];
    v8 = self->_connection;
    self->_connection = v7;

    connection = self->_connection;
  }

  return connection;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = AFContextDonationService;
  v2 = [(AFContextDonationService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AFContextDonationService", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    transformersByType = v2->_transformersByType;
    v2->_transformersByType = strongToWeakObjectsMapTable;
  }

  return v2;
}

void __42__AFContextDonationService_defaultService__block_invoke()
{
  v0 = [[AFContextDonationService alloc] _init];
  v1 = defaultService_sDonation;
  defaultService_sDonation = v0;
}

@end