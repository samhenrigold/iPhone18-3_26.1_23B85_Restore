@interface TUMomentsController
+ (BOOL)isFaceTimePhotosEnabled;
+ (BOOL)isFaceTimePhotosXPCServiceEnabled;
+ (BOOL)isInternalInstall;
+ (id)faceTimePhotosEnabledDeterminer;
+ (id)sharedInstance;
+ (void)setFaceTimePhotosEnabled:(BOOL)enabled;
+ (void)setFaceTimePhotosEnabledDeterminer:(id)determiner;
- (TUMomentsController)init;
- (TUMomentsController)initWithDataSource:(id)source queue:(id)queue;
- (TUMomentsController)initWithQueue:(id)queue;
- (id)capabilitiesForProvider:(id)provider;
- (void)addDelegate:(id)delegate;
- (void)dataSource:(id)source didFinishProcessingRawVideoMessage:(id)message;
- (void)dataSource:(id)source didFinishRecordingMedia:(id)media;
- (void)dataSource:(id)source didReceiveLocallyRequestedMomentDescriptor:(id)descriptor;
- (void)dataSource:(id)source didReceiveMediaRecordingError:(id)error;
- (void)dataSource:(id)source didReceiveMessageRecordingError:(id)error;
- (void)dataSource:(id)source didUpdateCapabilities:(id)capabilities forVideoStreamToken:(int64_t)token;
- (void)dataSource:(id)source requestSandboxExtensionForURL:(id)l reply:(id)reply;
- (void)dataSource:(id)source willCaptureRemoteRequestFromRequesterID:(id)d;
- (void)dealloc;
- (void)discardVideoMessageWithUUID:(id)d completion:(id)completion;
- (void)endMediaRequestWithUUID:(id)d completion:(id)completion;
- (void)endRecordingMessageWithUUID:(id)d completion:(id)completion;
- (void)endRequestWithTransactionID:(id)d completion:(id)completion;
- (void)prewarmAudioClientWithCompletion:(id)completion;
- (void)prewarmMediaRequest:(id)request completion:(id)completion;
- (void)registerProvider:(id)provider completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)resetVideoMessagingWithSessionUUID:(id)d completion:(id)completion;
- (void)saveVideoMessageWithUUID:(id)d completion:(id)completion;
- (void)sendVideoMessageWithRequest:(id)request completion:(id)completion;
- (void)serverDiedForDataSource:(id)source;
- (void)startMediaRequest:(id)request completion:(id)completion;
- (void)startRecordingMessageWithMediaType:(int)type completion:(id)completion;
- (void)startRequestWithMediaType:(int)type forProvider:(id)provider requesteeID:(id)d completion:(id)completion;
- (void)unregisterProvider:(id)provider completion:(id)completion;
@end

@implementation TUMomentsController

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[TUMomentsController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __37__TUMomentsController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TUMomentsController);

  return MEMORY[0x1EEE66BB8]();
}

- (TUMomentsController)init
{
  v3 = objc_alloc_init(TUMomentsControllerXPCClient);
  v4 = [(TUMomentsController *)self initWithDataSource:v3];

  return v4;
}

- (TUMomentsController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(TUMomentsControllerXPCClient);
  v6 = [(TUMomentsController *)self initWithDataSource:v5 queue:queueCopy];

  return v6;
}

- (TUMomentsController)initWithDataSource:(id)source queue:(id)queue
{
  sourceCopy = source;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = TUMomentsController;
  v9 = [(TUMomentsController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_dataSource, source);
    [(TUMomentsControllerDataSource *)v10->_dataSource setDelegate:v10];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v10->_delegates;
    v10->_delegates = weakObjectsHashTable;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    capabilitiesByVideoStreamToken = v10->_capabilitiesByVideoStreamToken;
    v10->_capabilitiesByVideoStreamToken = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    providerByVideoStreamToken = v10->_providerByVideoStreamToken;
    v10->_providerByVideoStreamToken = dictionary2;

    lockdownModeEnabled = v10->_lockdownModeEnabled;
    v10->_lockdownModeEnabled = &__block_literal_global_16;
  }

  return v10;
}

uint64_t __48__TUMomentsController_initWithDataSource_queue___block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = TULockdownModeEnabled();
  v1 = TUDefaultLog(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = @"NO";
    if (v0)
    {
      v2 = @"YES";
    }

    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1956FD000, v1, OS_LOG_TYPE_DEFAULT, "Determined lockdownModeEnabled: %@", &v4, 0xCu);
  }

  return v0;
}

- (void)dealloc
{
  [(TUMomentsControllerDataSource *)self->_dataSource invalidate];
  v3.receiver = self;
  v3.super_class = TUMomentsController;
  [(TUMomentsController *)&v3 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUMomentsController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__TUMomentsController_addDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __35__TUMomentsController_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUMomentsController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__TUMomentsController_removeDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __38__TUMomentsController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)prewarmAudioClientWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = TUDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Prewarming audio client for video message", buf, 2u);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource2 = [(TUMomentsController *)self dataSource];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__TUMomentsController_prewarmAudioClientWithCompletion___block_invoke;
    v15[3] = &unk_1E7425568;
    v11 = &v16;
    v15[4] = self;
    v16 = completionCopy;
    [dataSource2 prewarmAudioClientWithCompletion:v15];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    queue2 = [(TUMomentsController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__TUMomentsController_prewarmAudioClientWithCompletion___block_invoke_3;
    block[3] = &unk_1E7425590;
    v11 = &v14;
    v14 = completionCopy;
    dispatch_async(queue2, block);

    goto LABEL_7;
  }

LABEL_8:
}

void __56__TUMomentsController_prewarmAudioClientWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__TUMomentsController_prewarmAudioClientWithCompletion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __56__TUMomentsController_prewarmAudioClientWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)startRecordingMessageWithMediaType:(int)type completion:(id)completion
{
  v4 = *&type;
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Starting video message with mediaType: %d", buf, 8u);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    dataSource2 = [(TUMomentsController *)self dataSource];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__TUMomentsController_startRecordingMessageWithMediaType_completion___block_invoke;
    v17[3] = &unk_1E74255E0;
    v13 = &v18;
    v17[4] = self;
    v18 = completionCopy;
    [dataSource2 startRecordingMessageWithMediaType:v4 completion:v17];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    queue2 = [(TUMomentsController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__TUMomentsController_startRecordingMessageWithMediaType_completion___block_invoke_3;
    block[3] = &unk_1E7425590;
    v13 = &v16;
    v16 = completionCopy;
    dispatch_async(queue2, block);

    goto LABEL_7;
  }

LABEL_8:
}

void __69__TUMomentsController_startRecordingMessageWithMediaType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__TUMomentsController_startRecordingMessageWithMediaType_completion___block_invoke_2;
    block[3] = &unk_1E74255B8;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void __69__TUMomentsController_startRecordingMessageWithMediaType_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)endRecordingMessageWithUUID:(id)d completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = dCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Ending video message for UUID: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    dataSource2 = [(TUMomentsController *)self dataSource];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__TUMomentsController_endRecordingMessageWithUUID_completion___block_invoke;
    v18[3] = &unk_1E7425568;
    v14 = &v19;
    v18[4] = self;
    v19 = completionCopy;
    [dataSource2 endRecordingMessageWithUUID:dCopy completion:v18];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    queue2 = [(TUMomentsController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__TUMomentsController_endRecordingMessageWithUUID_completion___block_invoke_3;
    block[3] = &unk_1E7425590;
    v14 = &v17;
    v17 = completionCopy;
    dispatch_async(queue2, block);

    goto LABEL_7;
  }

LABEL_8:
}

void __62__TUMomentsController_endRecordingMessageWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__TUMomentsController_endRecordingMessageWithUUID_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __62__TUMomentsController_endRecordingMessageWithUUID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)discardVideoMessageWithUUID:(id)d completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = dCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Discarding video message for UUID: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    dataSource2 = [(TUMomentsController *)self dataSource];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__TUMomentsController_discardVideoMessageWithUUID_completion___block_invoke;
    v18[3] = &unk_1E7425568;
    v14 = &v19;
    v18[4] = self;
    v19 = completionCopy;
    [dataSource2 discardVideoMessageWithUUID:dCopy completion:v18];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    queue2 = [(TUMomentsController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__TUMomentsController_discardVideoMessageWithUUID_completion___block_invoke_3;
    block[3] = &unk_1E7425590;
    v14 = &v17;
    v17 = completionCopy;
    dispatch_async(queue2, block);

    goto LABEL_7;
  }

LABEL_8:
}

void __62__TUMomentsController_discardVideoMessageWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__TUMomentsController_discardVideoMessageWithUUID_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __62__TUMomentsController_discardVideoMessageWithUUID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)sendVideoMessageWithRequest:(id)request completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = requestCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Sending video message with request: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__TUMomentsController_sendVideoMessageWithRequest_completion___block_invoke;
  v13[3] = &unk_1E7425568;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource sendVideoMessageWithRequest:requestCopy completion:v13];
}

void __62__TUMomentsController_sendVideoMessageWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__TUMomentsController_sendVideoMessageWithRequest_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)saveVideoMessageWithUUID:(id)d completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Saving video message with UUID: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__TUMomentsController_saveVideoMessageWithUUID_completion___block_invoke;
  v13[3] = &unk_1E7425568;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource saveVideoMessageWithUUID:dCopy completion:v13];
}

void __59__TUMomentsController_saveVideoMessageWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__TUMomentsController_saveVideoMessageWithUUID_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)resetVideoMessagingWithSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Resetting video messaging", buf, 2u);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__TUMomentsController_resetVideoMessagingWithSessionUUID_completion___block_invoke;
  v13[3] = &unk_1E7425568;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource resetVideoMessagingWithSessionUUID:dCopy completion:v13];
}

void __69__TUMomentsController_resetVideoMessagingWithSessionUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__TUMomentsController_resetVideoMessagingWithSessionUUID_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)prewarmMediaRequest:(id)request completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = requestCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Prewarming media request %@", &v12, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  [dataSource prewarmMediaRequest:requestCopy completion:completionCopy];
}

- (void)startMediaRequest:(id)request completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = requestCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Starting media request %@", &v12, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  [dataSource startMediaRequest:requestCopy completion:completionCopy];
}

- (void)endMediaRequestWithUUID:(id)d completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = dCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Ending media request with UUID %@", &v12, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  [dataSource endMediaRequestWithUUID:dCopy completion:completionCopy];
}

- (void)startRequestWithMediaType:(int)type forProvider:(id)provider requesteeID:(id)d completion:(id)completion
{
  v8 = *&type;
  v31 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  dCopy = d;
  completionCopy = completion;
  if (!providerCopy)
  {
    [TUMomentsController startRequestWithMediaType:forProvider:requesteeID:completion:];
  }

  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = TUDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v26 = v8;
    v27 = 2112;
    v28 = providerCopy;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "mediaType: %d, provider: %@ participant: %@", buf, 0x1Cu);
  }

  remoteIDSDestinations = [providerCopy remoteIDSDestinations];
  v17 = remoteIDSDestinations;
  if (dCopy)
  {
    firstObject = [remoteIDSDestinations objectForKeyedSubscript:dCopy];
  }

  else
  {
    allValues = [remoteIDSDestinations allValues];
    firstObject = [allValues firstObject];
  }

  dataSource = [(TUMomentsController *)self dataSource];
  streamToken = [providerCopy streamToken];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__TUMomentsController_startRequestWithMediaType_forProvider_requesteeID_completion___block_invoke;
  v23[3] = &unk_1E7425608;
  v23[4] = self;
  v24 = completionCopy;
  v22 = completionCopy;
  [dataSource startRequestWithMediaType:v8 forStreamToken:streamToken requesteeID:dCopy destinationID:firstObject completion:v23];
}

void __84__TUMomentsController_startRequestWithMediaType_forProvider_requesteeID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__TUMomentsController_startRequestWithMediaType_forProvider_requesteeID_completion___block_invoke_2;
    block[3] = &unk_1E74255B8;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

- (void)endRequestWithTransactionID:(id)d completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    [TUMomentsController endRequestWithTransactionID:completion:];
  }

  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "transactionID: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__TUMomentsController_endRequestWithTransactionID_completion___block_invoke;
  v13[3] = &unk_1E7425568;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource endRequestWithTransactionID:dCopy completion:v13];
}

void __62__TUMomentsController_endRequestWithTransactionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__TUMomentsController_endRequestWithTransactionID_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)registerProvider:(id)provider completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  completionCopy = completion;
  if (!providerCopy)
  {
    [TUMomentsController registerProvider:completion:];
  }

  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = providerCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  streamToken = [providerCopy streamToken];
  requesterID = [providerCopy requesterID];
  remoteIDSDestinations = [providerCopy remoteIDSDestinations];
  isRemoteMomentsAvailable = [providerCopy isRemoteMomentsAvailable];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__TUMomentsController_registerProvider_completion___block_invoke;
  v18[3] = &unk_1E7425658;
  v18[4] = self;
  v19 = providerCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = providerCopy;
  [dataSource registerStreamToken:streamToken requesterID:requesterID remoteIDSDestinations:remoteIDSDestinations remoteMomentsAvailable:isRemoteMomentsAvailable completion:v18];
}

void __51__TUMomentsController_registerProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = TUDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "registered, capabilities: %@, error: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUMomentsController_registerProvider_completion___block_invoke_50;
  block[3] = &unk_1E7425630;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v5;
  v16 = v9;
  v17 = v10;
  v11 = *(a1 + 48);
  v18 = v6;
  v19 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v8, block);
}

uint64_t __51__TUMomentsController_registerProvider_completion___block_invoke_50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) capabilitiesByVideoStreamToken];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "streamToken")}];
    [v3 setObject:v2 forKeyedSubscript:v4];

    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) providerByVideoStreamToken];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "streamToken")}];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  result = *(a1 + 64);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)unregisterProvider:(id)provider completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  completionCopy = completion;
  if (!providerCopy)
  {
    [TUMomentsController unregisterProvider:completion:];
  }

  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = providerCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  dataSource = [(TUMomentsController *)self dataSource];
  streamToken = [providerCopy streamToken];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__TUMomentsController_unregisterProvider_completion___block_invoke;
  v15[3] = &unk_1E74256A8;
  v15[4] = self;
  v16 = providerCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = providerCopy;
  [dataSource unregisterStreamToken:streamToken completion:v15];
}

void __53__TUMomentsController_unregisterProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__TUMomentsController_unregisterProvider_completion___block_invoke_2;
  v8[3] = &unk_1E7425680;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __53__TUMomentsController_unregisterProvider_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) capabilitiesByVideoStreamToken];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "streamToken")}];
  [v2 setObject:0 forKeyedSubscript:v3];

  v4 = [*(a1 + 32) providerByVideoStreamToken];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "streamToken")}];
  [v4 setObject:0 forKeyedSubscript:v5];

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (id)capabilitiesForProvider:(id)provider
{
  providerCopy = provider;
  queue = [(TUMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  capabilitiesByVideoStreamToken = [(TUMomentsController *)self capabilitiesByVideoStreamToken];
  v7 = MEMORY[0x1E696AD98];
  streamToken = [providerCopy streamToken];

  v9 = [v7 numberWithInteger:streamToken];
  v10 = [capabilitiesByVideoStreamToken objectForKeyedSubscript:v9];

  if (!v10)
  {
    if ([objc_opt_class() isFaceTimePhotosRestricted] & 1) != 0 || (-[TUMomentsController lockdownModeEnabled](self, "lockdownModeEnabled"), v11 = objc_claimAutoreleasedReturnValue(), v12 = v11[2](), v11, (v12))
    {
      v13 = 2;
    }

    else
    {
      v13 = [objc_opt_class() isFaceTimePhotosEnabled] ^ 1;
    }

    v14 = [TUMomentsCapabilities alloc];
    v15 = [MEMORY[0x1E695DFD8] set];
    v10 = [(TUMomentsCapabilities *)v14 initWithAvailability:v13 supportedMediaTypes:v15];
  }

  return v10;
}

+ (id)faceTimePhotosEnabledDeterminer
{
  if (faceTimePhotosEnabledDeterminer_onceToken != -1)
  {
    +[TUMomentsController faceTimePhotosEnabledDeterminer];
  }

  v2 = _Block_copy(sharedFaceTimePhotosEnabledDeterminer);

  return v2;
}

void __54__TUMomentsController_faceTimePhotosEnabledDeterminer__block_invoke()
{
  if (!sharedFaceTimePhotosEnabledDeterminer)
  {
    sharedFaceTimePhotosEnabledDeterminer = &__block_literal_global_61;
  }
}

uint64_t __54__TUMomentsController_faceTimePhotosEnabledDeterminer__block_invoke_2()
{
  if (+[TUMomentsController isFaceTimePhotosRestricted])
  {
    return 0;
  }

  v1 = [MEMORY[0x1E695E000] tu_defaults];
  v2 = [v1 BOOLForKey:@"FaceTimePhotosEnabled"];

  return v2;
}

+ (void)setFaceTimePhotosEnabledDeterminer:(id)determiner
{
  sharedFaceTimePhotosEnabledDeterminer = _Block_copy(determiner);

  MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isFaceTimePhotosEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__TUMomentsController_isFaceTimePhotosEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isFaceTimePhotosEnabled_hasRegisteredDefaults != -1)
  {
    dispatch_once(&isFaceTimePhotosEnabled_hasRegisteredDefaults, block);
  }

  faceTimePhotosEnabledDeterminer = [self faceTimePhotosEnabledDeterminer];
  v4 = faceTimePhotosEnabledDeterminer[2]();

  return v4;
}

void __46__TUMomentsController_isFaceTimePhotosEnabled__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] tu_defaults];
  v5 = @"FaceTimePhotosEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isFaceTimePhotosEnabledByDefault")}];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 registerDefaults:v4];
}

+ (BOOL)isInternalInstall
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__TUMomentsController_isInternalInstall__block_invoke;
  block[3] = &unk_1E7424CD8;
  block[4] = &v5;
  if (isInternalInstall_onceToken != -1)
  {
    dispatch_once(&isInternalInstall_onceToken, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__TUMomentsController_isInternalInstall__block_invoke(uint64_t a1)
{
  v2 = [CUTWeakLinkClass() sharedInstance];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = [v2 isInternalInstall];
    v2 = v3;
  }
}

+ (BOOL)isFaceTimePhotosXPCServiceEnabled
{
  v2 = objc_alloc_init(TUFeatureFlags);
  livePhotoXPCServiceEnabled = [(TUFeatureFlags *)v2 livePhotoXPCServiceEnabled];
  v4 = livePhotoXPCServiceEnabled;
  if (livePhotoXPCServiceEnabled)
  {
    v5 = TUDefaultLog(livePhotoXPCServiceEnabled);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Determined that Live Photo moments XPC Service should be enabled", v7, 2u);
    }
  }

  return v4;
}

+ (void)setFaceTimePhotosEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  tu_defaults = [MEMORY[0x1E695E000] tu_defaults];
  [tu_defaults setBool:enabledCopy forKey:@"FaceTimePhotosEnabled"];

  tu_defaults2 = [MEMORY[0x1E695E000] tu_defaults];
  [tu_defaults2 synchronize];
}

- (void)dataSource:(id)source didUpdateCapabilities:(id)capabilities forVideoStreamToken:(int64_t)token
{
  capabilitiesCopy = capabilities;
  queue = [(TUMomentsController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__TUMomentsController_dataSource_didUpdateCapabilities_forVideoStreamToken___block_invoke;
  block[3] = &unk_1E7425028;
  selfCopy = self;
  tokenCopy = token;
  v11 = capabilitiesCopy;
  v9 = capabilitiesCopy;
  dispatch_async(queue, block);
}

void __76__TUMomentsController_dataSource_didUpdateCapabilities_forVideoStreamToken___block_invoke(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 48);
    *buf = 138412546;
    v28 = v3;
    v29 = 2048;
    v30 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "capabilities: %@ token: %ld", buf, 0x16u);
  }

  v5 = *(v1 + 32);
  v6 = [*(v1 + 40) capabilitiesByVideoStreamToken];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(v1 + 48)];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [*(v1 + 40) delegates];
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = *(v1 + 40);
          v21 = *(v1 + 32);
          v14 = [v13 providerByVideoStreamToken];
          [MEMORY[0x1E696AD98] numberWithInteger:*(v1 + 48)];
          v15 = v9;
          v16 = v10;
          v18 = v17 = v1;
          v19 = [v14 objectForKeyedSubscript:v18];
          [v12 momentsController:v13 didUpdateCapabilities:v21 forProvider:v19];

          v1 = v17;
          v10 = v16;
          v9 = v15;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)dataSource:(id)source willCaptureRemoteRequestFromRequesterID:(id)d
{
  dCopy = d;
  queue = [(TUMomentsController *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__TUMomentsController_dataSource_willCaptureRemoteRequestFromRequesterID___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __74__TUMomentsController_dataSource_willCaptureRemoteRequestFromRequesterID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) delegates];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 momentsController:*(a1 + 32) willCaptureRemoteRequestFromIdentifier:*(a1 + 40)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)dataSource:(id)source didReceiveLocallyRequestedMomentDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  queue = [(TUMomentsController *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__TUMomentsController_dataSource_didReceiveLocallyRequestedMomentDescriptor___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = descriptorCopy;
  selfCopy = self;
  v7 = descriptorCopy;
  dispatch_async(queue, v8);
}

void __77__TUMomentsController_dataSource_didReceiveLocallyRequestedMomentDescriptor___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 40) delegates];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 momentsController:*(a1 + 40) didReceiveLocallyRequestedMomentDescriptor:*(a1 + 32)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)dataSource:(id)source requestSandboxExtensionForURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  processName = [source processName];
  v10 = [processName isEqualToString:@"com.apple.FTLivePhotoService"];

  if (v10)
  {
    v11 = [[TUSandboxExtendedURL alloc] initWithURL:lCopy];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9BB0]];
    [(TUSandboxExtendedURL *)v11 setSandboxExtensionClass:v12];

    dataSource = [(TUMomentsController *)self dataSource];
    -[TUSandboxExtendedURL setPid:](v11, "setPid:", [dataSource processIdentifier]);

    replyCopy[2](replyCopy, v11, 0);
  }

  else
  {
    replyCopy[2](replyCopy, 0, 0);
  }
}

- (void)serverDiedForDataSource:(id)source
{
  queue = [(TUMomentsController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__TUMomentsController_serverDiedForDataSource___block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__TUMomentsController_serverDiedForDataSource___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[TUMomentsController serverDiedForDataSource:]_block_invoke";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "%s: ", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = [*(a1 + 32) delegates];
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 momentsControllerServerDied:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v5);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [*(a1 + 32) providerByVideoStreamToken];
  v10 = [v9 allKeys];

  obj = v10;
  v28 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v11;
        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = [*(a1 + 32) providerByVideoStreamToken];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [*(a1 + 32) providerByVideoStreamToken];
        [v15 setObject:0 forKeyedSubscript:v12];

        v16 = [*(a1 + 32) capabilitiesByVideoStreamToken];
        [v16 setObject:0 forKeyedSubscript:v12];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v17 = [*(a1 + 32) delegates];
        v18 = [v17 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            v21 = 0;
            do
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v30 + 1) + 8 * v21);
              if (objc_opt_respondsToSelector())
              {
                v23 = [TUMomentsCapabilities alloc];
                v24 = [MEMORY[0x1E695DFD8] set];
                v25 = [(TUMomentsCapabilities *)v23 initWithAvailability:0 supportedMediaTypes:v24];

                [v22 momentsController:*(a1 + 32) didUpdateCapabilities:v25 forProvider:v14];
              }

              ++v21;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v19);
        }

        v11 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v28);
  }
}

- (void)dataSource:(id)source didFinishProcessingRawVideoMessage:(id)message
{
  messageCopy = message;
  queue = [(TUMomentsController *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__TUMomentsController_dataSource_didFinishProcessingRawVideoMessage___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = messageCopy;
  v7 = messageCopy;
  dispatch_async(queue, v8);
}

void __69__TUMomentsController_dataSource_didFinishProcessingRawVideoMessage___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 momentsController:*(a1 + 32) didFinishProcessingRawVideoMessage:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)dataSource:(id)source didFinishRecordingMedia:(id)media
{
  mediaCopy = media;
  v6 = TUDefaultLog(mediaCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Finished recording media", buf, 2u);
  }

  queue = [(TUMomentsController *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__TUMomentsController_dataSource_didFinishRecordingMedia___block_invoke;
  v9[3] = &unk_1E7424898;
  v9[4] = self;
  v10 = mediaCopy;
  v8 = mediaCopy;
  dispatch_async(queue, v9);
}

void __58__TUMomentsController_dataSource_didFinishRecordingMedia___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 momentsController:*(a1 + 32) didFinishRecordingMedia:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)dataSource:(id)source didReceiveMessageRecordingError:(id)error
{
  errorCopy = error;
  queue = [(TUMomentsController *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__TUMomentsController_dataSource_didReceiveMessageRecordingError___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __66__TUMomentsController_dataSource_didReceiveMessageRecordingError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 momentsController:*(a1 + 32) didReceiveMessageRecordingError:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)dataSource:(id)source didReceiveMediaRecordingError:(id)error
{
  errorCopy = error;
  queue = [(TUMomentsController *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__TUMomentsController_dataSource_didReceiveMediaRecordingError___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __64__TUMomentsController_dataSource_didReceiveMediaRecordingError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 momentsController:*(a1 + 32) didReceiveMediaRecordingError:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)startRequestWithMediaType:forProvider:requesteeID:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"provider != nil" object:? file:? lineNumber:? description:?];
}

- (void)endRequestWithTransactionID:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"transactionID != nil" object:? file:? lineNumber:? description:?];
}

- (void)registerProvider:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"provider != nil" object:? file:? lineNumber:? description:?];
}

- (void)unregisterProvider:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"provider != nil" object:? file:? lineNumber:? description:?];
}

@end