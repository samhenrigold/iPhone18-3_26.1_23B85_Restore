@interface CXProvider
+ (CXProvider)allocWithZone:(_NSZone *)zone;
+ (void)reportNewIncomingVoIPPushPayload:(NSDictionary *)dictionaryPayload completion:(void *)completion;
- (CXAbstractProviderDelegate)delegate;
- (CXFeatures)featureFlags;
- (CXProvider)initWithConfiguration:(CXProviderConfiguration *)configuration;
- (CXProviderConfiguration)configuration;
- (CXProviderDelegatePrivate)privateDelegate;
- (NSArray)pendingCallActionsOfClass:(Class)callActionClass withCallUUID:(NSUUID *)callUUID;
- (NSArray)pendingTransactions;
- (OS_dispatch_queue)queue;
- (id)callProviderHostDelegate;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)handleMediaServicesWereResetNotification:(id)notification;
- (void)handleMuteStatusChangedNotification:(id)notification;
- (void)invalidate;
- (void)performAction:(id)action;
- (void)performCompletionBlock:(id)block;
- (void)registerCurrentConfiguration;
- (void)reportAudioFinishedForCallWithUUID:(id)d;
- (void)reportCallWithUUID:(NSUUID *)UUID endedAtDate:(NSDate *)dateEnded reason:(CXCallEndedReason)endedReason;
- (void)reportCallWithUUID:(NSUUID *)UUID updated:(CXCallUpdate *)update;
- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)reportCallWithUUID:(id)d failedAtDate:(id)date withContext:(id)context;
- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)reportNewIncomingCallWithUUID:(NSUUID *)UUID update:(CXCallUpdate *)update completion:(void *)completion;
- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID connectedAtDate:(NSDate *)dateConnected;
- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID startedConnectingAtDate:(NSDate *)dateStartedConnecting;
- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)requestTransaction:(id)transaction completion:(id)completion;
- (void)setConfiguration:(CXProviderConfiguration *)configuration;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue;
@end

@implementation CXProvider

- (CXAbstractProviderDelegate)delegate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  delegate = [abstractProvider delegate];

  if ([delegate conformsToProtocol:&unk_1F2CB7240])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (CXProviderDelegatePrivate)privateDelegate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  delegate = [abstractProvider delegate];

  if ([delegate conformsToProtocol:&unk_1F2CB9A40])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (CXProvider)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(CXProvider *)CXXPCProvider allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___CXProvider;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (CXProvider)initWithConfiguration:(CXProviderConfiguration *)configuration
{
  v4 = configuration;
  v15.receiver = self;
  v15.super_class = CXProvider;
  v5 = [(CXProvider *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider initWithConfiguration:]", @"configuration"}];
    }

    v6 = objc_alloc_init(CXAbstractProvider);
    abstractProvider = v5->_abstractProvider;
    v5->_abstractProvider = v6;

    [(CXAbstractProvider *)v5->_abstractProvider setInternalActionDelegate:v5];
    [(CXAbstractProvider *)v5->_abstractProvider setConnectionInterruptionHandler:&__block_literal_global_9];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.callkit.callprovider.completion", v8);
    completionQueue = v5->_completionQueue;
    v5->_completionQueue = v9;

    v11 = [(CXProviderConfiguration *)v4 copy];
    v12 = v5->_configuration;
    v5->_configuration = v11;

    if ([(CXProvider *)v5 requiresProxyingAVAudioSessionState])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel_handleMediaServicesWereResetNotification_ name:*MEMORY[0x1E6958128] object:0];
    }
  }

  return v5;
}

void __36__CXProvider_initWithConfiguration___block_invoke()
{
  v0 = [MEMORY[0x1E6958460] sharedInstance];
  v7 = 0;
  v1 = [v0 setInterruptionPriority:0 error:&v7];
  v2 = v7;

  v4 = CXDefaultLog(v3);
  v5 = v4;
  if (v1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Successfully reset audio session interruption priority to Normal", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36__CXProvider_initWithConfiguration___block_invoke_cold_1(v2, v5);
  }
}

- (id)callProviderHostDelegate
{
  hostProtocolDelegate = [(CXProvider *)self hostProtocolDelegate];
  if ([hostProtocolDelegate conformsToProtocol:&unk_1F2CA7158])
  {
    v3 = hostProtocolDelegate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CXProviderConfiguration)configuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  queue = [(CXProvider *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CXProvider_configuration__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __27__CXProvider_configuration__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setConfiguration:(CXProviderConfiguration *)configuration
{
  v4 = configuration;
  v5 = dyld_program_sdk_at_least();
  if (!v4 && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider setConfiguration:]", @"configuration"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CXProvider_setConfiguration___block_invoke;
  block[3] = &unk_1E7C06BE0;
  block[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, block);
}

uint64_t __31__CXProvider_setConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that configuration was set to %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 40) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  return [*(a1 + 32) registerCurrentConfiguration];
}

- (NSArray)pendingCallActionsOfClass:(Class)callActionClass withCallUUID:(NSUUID *)callUUID
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = callUUID;
  array = [MEMORY[0x1E695DF70] array];
  if ([(objc_class *)callActionClass isSubclassOfClass:objc_opt_class()])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(CXProvider *)self pendingTransactions];
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v21 = *v29;
      do
      {
        v8 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v8;
          v9 = *(*(&v28 + 1) + 8 * v8);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          actions = [v9 actions];
          v11 = [actions countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(actions);
                }

                v15 = *(*(&v24 + 1) + 8 * i);
                if (objc_opt_isKindOfClass())
                {
                  callUUID = [v15 callUUID];
                  v17 = [callUUID isEqual:v6];

                  if (v17)
                  {
                    [array addObject:v15];
                  }
                }
              }

              v12 = [actions countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          v8 = v23 + 1;
        }

        while (v23 + 1 != v22);
        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }
  }

  v18 = [array copy];

  return v18;
}

- (void)reportNewIncomingCallWithUUID:(NSUUID *)UUID update:(CXCallUpdate *)update completion:(void *)completion
{
  v8 = UUID;
  v9 = update;
  v10 = completion;
  if (dyld_program_sdk_at_least())
  {
    if (v8)
    {
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportNewIncomingCallWithUUID:update:completion:]", @"UUID"}];
      if (v9)
      {
LABEL_4:
        if (v10)
        {
          goto LABEL_5;
        }

LABEL_8:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportNewIncomingCallWithUUID:update:completion:]", @"completion"}];
        goto LABEL_5;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportNewIncomingCallWithUUID:update:completion:]", @"update"}];
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E6979268] object:0];

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke;
  block[3] = &unk_1E7C06DE0;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, block);
}

void __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    *buf = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was asked to report a new incoming call with UUID: %@ update: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke_162;
  v9[3] = &unk_1E7C073D8;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 56);
  [v6 reportNewIncomingCallWithUUID:v7 update:v8 reply:v9];
}

void __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke_162(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke_2;
  v7[3] = &unk_1E7C073B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performCompletionBlock:v7];
}

- (void)reportCallWithUUID:(NSUUID *)UUID updated:(CXCallUpdate *)update
{
  v6 = UUID;
  v7 = update;
  if (dyld_program_sdk_at_least())
  {
    if (v6)
    {
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:updated:]", @"UUID"}];
      if (v7)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:updated:]", @"update"}];
  }

LABEL_4:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CXProvider_reportCallWithUUID_updated___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __41__CXProvider_reportCallWithUUID_updated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was asked to report that call with UUID %@ updated with update %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportCallWithUUID:*(a1 + 40) updated:*(a1 + 48)];
}

- (void)reportCallWithUUID:(NSUUID *)UUID endedAtDate:(NSDate *)dateEnded reason:(CXCallEndedReason)endedReason
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = UUID;
  v9 = dateEnded;
  v10 = dyld_program_sdk_at_least();
  if (!v8 && v10)
  {
    v10 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:endedAtDate:reason:]", @"UUID"}];
  }

  v11 = CXDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [(NSUUID *)v8 UUIDString];
    *buf = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = uUIDString;
    v18 = 2112;
    v19 = v9;
    v20 = 2048;
    v21 = endedReason;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Provider %@ was asked to report that call with UUID %@ ended at date %@ with reason %ld", buf, 0x2Au);
  }

  if ((endedReason - 1) >= 5)
  {
    v13 = -1;
  }

  else
  {
    v13 = endedReason;
  }

  [(CXProvider *)self reportCallWithUUID:v8 endedAtDate:v9 privateReason:v13];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v10 = dyld_program_sdk_at_least();
  if (!dCopy && v10)
  {
    v10 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:endedAtDate:privateReason:]", @"UUID"}];
  }

  v11 = CXDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = uUIDString;
    v17 = 2112;
    v18 = dateCopy;
    v19 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ ended at date %@ with private reason %ld", buf, 0x2Au);
  }

  [(CXProvider *)self reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason failureContext:0];
}

- (void)reportCallWithUUID:(id)d failedAtDate:(id)date withContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v11 = dyld_program_sdk_at_least();
  if (v11)
  {
    if (dCopy)
    {
      if (contextCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:failedAtDate:withContext:]", @"UUID"}];
      if (contextCopy)
      {
        goto LABEL_4;
      }
    }

    v11 = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:failedAtDate:withContext:]", @"failureContext"}];
  }

LABEL_4:
  v12 = CXDefaultLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = uUIDString;
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ failed at date %@ with context %@", buf, 0x2Au);
  }

  [(CXProvider *)self reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:1 failureContext:contextCopy];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v13 = dyld_program_sdk_at_least();
  if (!dCopy && v13)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:endedAtDate:privateReason:failureContext:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CXProvider_reportCallWithUUID_endedAtDate_privateReason_failureContext___block_invoke;
  block[3] = &unk_1E7C06FE8;
  block[4] = self;
  v19 = dCopy;
  v21 = contextCopy;
  reasonCopy = reason;
  v20 = dateCopy;
  v15 = contextCopy;
  v16 = dateCopy;
  v17 = dCopy;
  dispatch_async(queue, block);
}

void __74__CXProvider_reportCallWithUUID_endedAtDate_privateReason_failureContext___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a1 + 48);
    v9 = 138413314;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    v15 = 2048;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ ended at date %@ with private reason %ld and failure context %@", &v9, 0x34u);
  }

  v8 = [*(a1 + 32) callProviderHostDelegate];
  [v8 reportCallWithUUID:*(a1 + 40) endedAtDate:*(a1 + 48) privateReason:*(a1 + 64) failureContext:*(a1 + 56)];
}

- (void)reportAudioFinishedForCallWithUUID:(id)d
{
  dCopy = d;
  v5 = dyld_program_sdk_at_least();
  if (!dCopy && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportAudioFinishedForCallWithUUID:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CXProvider_reportAudioFinishedForCallWithUUID___block_invoke;
  block[3] = &unk_1E7C06BE0;
  block[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, block);
}

void __49__CXProvider_reportAudioFinishedForCallWithUUID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ finished audio", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) callProviderHostDelegate];
  [v5 reportAudioFinishedForCallWithUUID:*(a1 + 40)];
}

- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  v8 = dyld_program_sdk_at_least();
  if (!dCopy && v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportOutgoingCallWithUUID:sentInvitationAtDate:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CXProvider_reportOutgoingCallWithUUID_sentInvitationAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = dCopy;
  v14 = dateCopy;
  v10 = dateCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __62__CXProvider_reportOutgoingCallWithUUID_sentInvitationAtDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@ sent invitation at date %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportOutgoingCallWithUUID:*(a1 + 40) sentInvitationAtDate:*(a1 + 48)];
}

- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dCopy = d;
  dataCopy = data;
  v10 = dyld_program_sdk_at_least();
  if (!dCopy && v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:changedFrequencyData:forDirection:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CXProvider_reportCallWithUUID_changedFrequencyData_forDirection___block_invoke;
  block[3] = &unk_1E7C07488;
  block[4] = self;
  v15 = dCopy;
  v16 = dataCopy;
  directionCopy = direction;
  v12 = dataCopy;
  v13 = dCopy;
  dispatch_async(queue, block);
}

void __67__CXProvider_reportCallWithUUID_changedFrequencyData_forDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderHostDelegate];
  [v2 reportCallWithUUID:*(a1 + 40) changedFrequencyData:*(a1 + 48) forDirection:*(a1 + 56)];
}

- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  dCopy = d;
  v9 = dyld_program_sdk_at_least();
  if (!dCopy && v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:changedMeterLevel:forDirection:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CXProvider_reportCallWithUUID_changedMeterLevel_forDirection___block_invoke;
  block[3] = &unk_1E7C074B0;
  block[4] = self;
  v13 = dCopy;
  levelCopy = level;
  directionCopy = direction;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __64__CXProvider_reportCallWithUUID_changedMeterLevel_forDirection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) callProviderHostDelegate];
  LODWORD(v2) = *(a1 + 56);
  [v3 reportCallWithUUID:*(a1 + 40) changedMeterLevel:*(a1 + 48) forDirection:v2];
}

- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  dCopy = d;
  identifierCopy = identifier;
  if (dyld_program_sdk_at_least())
  {
    if (dCopy)
    {
      if (identifierCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]", @"UUID"}];
      if (identifierCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]", @"crossDeviceIdentifier"}];
  }

LABEL_4:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CXProvider_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed___block_invoke;
  block[3] = &unk_1E7C07488;
  block[4] = self;
  v14 = dCopy;
  v15 = identifierCopy;
  usedCopy = used;
  v11 = identifierCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

void __78__CXProvider_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ and cross device identifier %@ changed bytes of data used %ld", &v8, 0x2Au);
  }

  v7 = [*(a1 + 32) callProviderHostDelegate];
  [v7 reportCallWithUUID:*(a1 + 40) crossDeviceIdentifier:*(a1 + 48) changedBytesOfDataUsed:*(a1 + 56)];
}

- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID startedConnectingAtDate:(NSDate *)dateStartedConnecting
{
  v6 = UUID;
  v7 = dateStartedConnecting;
  v8 = dyld_program_sdk_at_least();
  if (!v6 && v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportOutgoingCallWithUUID:startedConnectingAtDate:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CXProvider_reportOutgoingCallWithUUID_startedConnectingAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

void __65__CXProvider_reportOutgoingCallWithUUID_startedConnectingAtDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@ started connecting at date %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportOutgoingCallWithUUID:*(a1 + 40) startedConnectingAtDate:*(a1 + 48)];
}

- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID connectedAtDate:(NSDate *)dateConnected
{
  v6 = UUID;
  v7 = dateConnected;
  v8 = dyld_program_sdk_at_least();
  if (!v6 && v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportOutgoingCallWithUUID:connectedAtDate:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CXProvider_reportOutgoingCallWithUUID_connectedAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

void __57__CXProvider_reportOutgoingCallWithUUID_connectedAtDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@ connected at date %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportOutgoingCallWithUUID:*(a1 + 40) connectedAtDate:*(a1 + 48)];
}

- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update
{
  dCopy = d;
  updateCopy = update;
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CXProvider_reportNewOutgoingCallWithUUID_update___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = dCopy;
  v13 = updateCopy;
  v9 = updateCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __51__CXProvider_reportNewOutgoingCallWithUUID_update___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) callProviderHostDelegate];
  [v5 reportNewOutgoingCallWithUUID:*(a1 + 40) update:*(a1 + 48)];
}

- (void)requestTransaction:(id)transaction completion:(id)completion
{
  transactionCopy = transaction;
  completionCopy = completion;
  if (dyld_program_sdk_at_least())
  {
    if (transactionCopy)
    {
      if (completionCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider requestTransaction:completion:]", @"transaction"}];
      if (completionCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider requestTransaction:completion:]", @"completion"}];
  }

LABEL_4:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CXProvider_requestTransaction_completion___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = transactionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = transactionCopy;
  dispatch_async(queue, block);
}

void __44__CXProvider_requestTransaction_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ requested transaction %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) callProviderHostDelegate];
  [v5 requestTransaction:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  dCopy = d;
  updateCopy = update;
  v8 = updateCopy;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:receivedDTMFUpdate:]", @"UUID"}];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:receivedDTMFUpdate:]", @"dtmfUpdate"}];
    goto LABEL_3;
  }

  if (!updateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CXProvider_reportCallWithUUID_receivedDTMFUpdate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v8;
  v14 = dCopy;
  v10 = dCopy;
  v11 = v8;
  dispatch_async(queue, block);
}

void __52__CXProvider_reportCallWithUUID_receivedDTMFUpdate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) UUIDString];
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified receivedDTMFUpdate %@ from call with UUID %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportCallWithUUID:*(a1 + 48) receivedDTMFUpdate:*(a1 + 40)];
}

- (CXFeatures)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(CXFeatures);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

- (OS_dispatch_queue)queue
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  queue = [abstractProvider queue];

  return queue;
}

- (void)registerCurrentConfiguration
{
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CXProvider_registerCurrentConfiguration__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__CXProvider_registerCurrentConfiguration__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 32) requiresProxyingAVAudioSessionState];
  if (v3)
  {
    v4 = [MEMORY[0x1E6958460] sharedInstance];
    [v2 setAudioSessionID:{objc_msgSend(v4, "opaqueSessionID")}];

    v5 = [*(a1 + 32) featureFlags];
    v6 = [v5 callManagementMuteControl];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = *(a1 + 32);
      v9 = *MEMORY[0x1E6958000];
      v10 = [MEMORY[0x1E69583C0] sharedInstance];
      [v7 addObserver:v8 selector:sel_handleMuteStatusChangedNotification_ name:v9 object:v10];
    }
  }

  v11 = CXDefaultLog(v3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v2;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Registering configuration %@", &v14, 0xCu);
  }

  v12 = [*(a1 + 32) callProviderHostDelegate];
  v13 = [v2 copy];
  [v12 registerWithConfiguration:v13];
}

- (void)handleMuteStatusChangedNotification:(id)notification
{
  v7 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = CXDefaultLog(notificationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = notificationCopy;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Handling notification %@", &v5, 0xCu);
  }
}

- (void)performCompletionBlock:(id)block
{
  blockCopy = block;
  queue = [(CXProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CXProvider_performCompletionBlock___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __37__CXProvider_performCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractProvider];
  v3 = [v2 delegateQueue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) completionQueue];
  }

  queue = v5;

  dispatch_async(queue, *(a1 + 40));
}

- (void)performAction:(id)action
{
  v49 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  abstractProvider = [(CXProvider *)self abstractProvider];
  delegateQueue = [abstractProvider delegateQueue];
  dispatch_assert_queue_V2(delegateQueue);

  delegate = [(CXProvider *)self delegate];
  privateDelegate = [(CXProvider *)self privateDelegate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = actionCopy;
      v12 = objc_opt_respondsToSelector();
      if (v12)
      {
        [delegate provider:self performAnswerCallAction:v11];
        goto LABEL_39;
      }

      v13 = CXDefaultLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(sel_provider_performAnswerCallAction_);
        v47 = 138412290;
        v48 = v14;
        goto LABEL_37;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = actionCopy;
        v16 = objc_opt_respondsToSelector();
        if (v16)
        {
          [delegate provider:self performEndCallAction:v15];
          goto LABEL_39;
        }

        v13 = CXDefaultLog(v16);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = NSStringFromSelector(sel_provider_performEndCallAction_);
          v47 = 138412290;
          v48 = v14;
          goto LABEL_37;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = actionCopy;
          v18 = objc_opt_respondsToSelector();
          if (v18)
          {
            [delegate provider:self performSetHeldCallAction:v17];
            goto LABEL_39;
          }

          v13 = CXDefaultLog(v18);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = NSStringFromSelector(sel_provider_performSetHeldCallAction_);
            v47 = 138412290;
            v48 = v14;
            goto LABEL_37;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = actionCopy;
            v20 = objc_opt_respondsToSelector();
            if (v20)
            {
              [delegate provider:self performSetMutedCallAction:v19];
              goto LABEL_39;
            }

            v13 = CXDefaultLog(v20);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = NSStringFromSelector(sel_provider_performSetMutedCallAction_);
              v47 = 138412290;
              v48 = v14;
              goto LABEL_37;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = actionCopy;
              v22 = objc_opt_respondsToSelector();
              if (v22)
              {
                [delegate provider:self performSetGroupCallAction:v21];
                goto LABEL_39;
              }

              v13 = CXDefaultLog(v22);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = NSStringFromSelector(sel_provider_performSetGroupCallAction_);
                v47 = 138412290;
                v48 = v14;
                goto LABEL_37;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v25 = 0;
                goto LABEL_40;
              }

              v23 = actionCopy;
              v24 = objc_opt_respondsToSelector();
              if (v24)
              {
                [delegate provider:self performPlayDTMFCallAction:v23];
                goto LABEL_39;
              }

              v13 = CXDefaultLog(v24);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = NSStringFromSelector(sel_provider_performPlayDTMFCallAction_);
                v47 = 138412290;
                v48 = v14;
                goto LABEL_37;
              }
            }
          }
        }
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v9 = actionCopy;
  v10 = objc_opt_respondsToSelector();
  if ((v10 & 1) == 0)
  {
    v13 = CXDefaultLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(sel_provider_performStartCallAction_);
      v47 = 138412290;
      v48 = v14;
LABEL_37:
      _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate does not respond to %@. Action will not be performed", &v47, 0xCu);

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  [delegate provider:self performStartCallAction:v9];
LABEL_39:

  v25 = 1;
LABEL_40:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  v26 = isInternalInstall();
  if (v26)
  {
    v27 = CXDefaultLog(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_1B47F3000, v27, OS_LOG_TYPE_DEFAULT, "fulfill CXSetTranslatingCallAction", &v47, 2u);
    }

    [actionCopy fulfill];
LABEL_45:
    if ((v25 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_127;
  }

  if ((v25 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = actionCopy;
      v30 = objc_opt_respondsToSelector();
      if (v30)
      {
        [delegate provider:self performSetTranslatingCallAction:v28];
        goto LABEL_126;
      }

      v32 = CXDefaultLog(v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = NSStringFromSelector(sel_provider_performSetTranslatingCallAction_);
        v47 = 138412290;
        v48 = v33;
        goto LABEL_124;
      }

      goto LABEL_125;
    }

LABEL_46:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = actionCopy;
      v29 = objc_opt_respondsToSelector();
      if (v29)
      {
        [privateDelegate provider:self performSendMMIOrUSSDCodeAction:v28];
LABEL_126:

        goto LABEL_127;
      }

      v32 = CXDefaultLog(v29);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = NSStringFromSelector(sel_provider_performSendMMIOrUSSDCodeAction_);
        v47 = 138412290;
        v48 = v33;
LABEL_124:
        _os_log_impl(&dword_1B47F3000, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate does not respond to %@. Action will not be performed", &v47, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = actionCopy;
        v31 = objc_opt_respondsToSelector();
        if (v31)
        {
          [privateDelegate provider:self performJoinCallAction:v28];
          goto LABEL_126;
        }

        v32 = CXDefaultLog(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = NSStringFromSelector(sel_provider_performJoinCallAction_);
          v47 = 138412290;
          v48 = v33;
          goto LABEL_124;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = actionCopy;
          v34 = objc_opt_respondsToSelector();
          if (v34)
          {
            [privateDelegate provider:self performSetTTYTypeCallAction:v28];
            goto LABEL_126;
          }

          v32 = CXDefaultLog(v34);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = NSStringFromSelector(sel_provider_performSetTTYTypeCallAction_);
            v47 = 138412290;
            v48 = v33;
            goto LABEL_124;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = actionCopy;
            v35 = objc_opt_respondsToSelector();
            if (v35)
            {
              [privateDelegate provider:self performSetSendingVideoCallAction:v28];
              goto LABEL_126;
            }

            v32 = CXDefaultLog(v35);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = NSStringFromSelector(sel_provider_performSetSendingVideoCallAction_);
              v47 = 138412290;
              v48 = v33;
              goto LABEL_124;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = actionCopy;
              v36 = objc_opt_respondsToSelector();
              if (v36)
              {
                [privateDelegate provider:self performSetRelayingCallAction:v28];
                goto LABEL_126;
              }

              v32 = CXDefaultLog(v36);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = NSStringFromSelector(sel_provider_performSetRelayingCallAction_);
                v47 = 138412290;
                v48 = v33;
                goto LABEL_124;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = actionCopy;
                v37 = objc_opt_respondsToSelector();
                if (v37)
                {
                  [privateDelegate provider:self performSetScreeningCallAction:v28];
                  goto LABEL_126;
                }

                v32 = CXDefaultLog(v37);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = NSStringFromSelector(sel_provider_performSetScreeningCallAction_);
                  v47 = 138412290;
                  v48 = v33;
                  goto LABEL_124;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = actionCopy;
                  v38 = objc_opt_respondsToSelector();
                  if (v38)
                  {
                    [privateDelegate provider:self performSetAllowUplinkAudioInjectionAction:v28];
                    goto LABEL_126;
                  }

                  v32 = CXDefaultLog(v38);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = NSStringFromSelector(sel_provider_performSetAllowUplinkAudioInjectionAction_);
                    v47 = 138412290;
                    v48 = v33;
                    goto LABEL_124;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = actionCopy;
                    v39 = objc_opt_respondsToSelector();
                    if (v39)
                    {
                      [privateDelegate provider:self performPullCallAction:v28];
                      goto LABEL_126;
                    }

                    v32 = CXDefaultLog(v39);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      v33 = NSStringFromSelector(sel_provider_performPullCallAction_);
                      v47 = 138412290;
                      v48 = v33;
                      goto LABEL_124;
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = actionCopy;
                      v40 = objc_opt_respondsToSelector();
                      if (v40)
                      {
                        [privateDelegate provider:self performSetVideoPresentationSizeCallAction:v28];
                        goto LABEL_126;
                      }

                      v32 = CXDefaultLog(v40);
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        v33 = NSStringFromSelector(sel_provider_performSetVideoPresentationSizeCallAction_);
                        v47 = 138412290;
                        v48 = v33;
                        goto LABEL_124;
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v28 = actionCopy;
                        v41 = objc_opt_respondsToSelector();
                        if (v41)
                        {
                          [privateDelegate provider:self performSetVideoPresentationStateCallAction:v28];
                          goto LABEL_126;
                        }

                        v32 = CXDefaultLog(v41);
                        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                        {
                          v33 = NSStringFromSelector(sel_provider_performSetVideoPresentationStateCallAction_);
                          v47 = 138412290;
                          v48 = v33;
                          goto LABEL_124;
                        }
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v28 = actionCopy;
                          v42 = objc_opt_respondsToSelector();
                          if (v42)
                          {
                            [privateDelegate provider:self performSetSharingScreenCallAction:v28];
                            goto LABEL_126;
                          }

                          v32 = CXDefaultLog(v42);
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                          {
                            v33 = NSStringFromSelector(sel_provider_performSetSharingScreenCallAction_);
                            v47 = 138412290;
                            v48 = v33;
                            goto LABEL_124;
                          }
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v28 = actionCopy;
                            v43 = objc_opt_respondsToSelector();
                            if (v43)
                            {
                              [privateDelegate provider:self performSetScreenShareAttributesCallAction:v28];
                              goto LABEL_126;
                            }

                            v32 = CXDefaultLog(v43);
                            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                            {
                              v33 = NSStringFromSelector(sel_provider_performSetScreenShareAttributesCallAction_);
                              v47 = 138412290;
                              v48 = v33;
                              goto LABEL_124;
                            }
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v28 = actionCopy;
                              v44 = objc_opt_respondsToSelector();
                              if (v44)
                              {
                                [privateDelegate provider:self performEnableVideoCallAction:v28];
                                goto LABEL_126;
                              }

                              v32 = CXDefaultLog(v44);
                              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                              {
                                v33 = NSStringFromSelector(sel_provider_performEnableVideoCallAction_);
                                v47 = 138412290;
                                v48 = v33;
                                goto LABEL_124;
                              }
                            }

                            else
                            {
                              objc_opt_class();
                              isKindOfClass = objc_opt_isKindOfClass();
                              if ((isKindOfClass & 1) == 0)
                              {
                                v28 = CXDefaultLog(isKindOfClass);
                                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                                {
                                  [(CXProvider *)actionCopy performAction:v28];
                                }

                                goto LABEL_126;
                              }

                              v28 = actionCopy;
                              v46 = objc_opt_respondsToSelector();
                              if (v46)
                              {
                                [privateDelegate provider:self performShareIdentityCallAction:v28];
                                goto LABEL_126;
                              }

                              v32 = CXDefaultLog(v46);
                              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                              {
                                v33 = NSStringFromSelector(sel_provider_performShareIdentityCallAction_);
                                v47 = 138412290;
                                v48 = v33;
                                goto LABEL_124;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_125:

    goto LABEL_126;
  }

LABEL_127:
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v6 = queue;
  v7 = delegate;
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider setDelegate:v7 queue:v6];
}

- (NSArray)pendingTransactions
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  pendingTransactions = [abstractProvider pendingTransactions];

  return pendingTransactions;
}

- (void)invalidate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider invalidate];
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider provider:self commitTransaction:transactionCopy];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider provider:self handleTimeoutForAction:timeoutCopy];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  toCopy = to;
  abstractProvider = [(CXProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CXProvider_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = toCopy;
  selfCopy = self;
  v6 = toCopy;
  [abstractProvider performDelegateCallback:v7];
}

void __57__CXProvider_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) BOOLValue];
  v3 = v2;
  v4 = CXDefaultLog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    v15 = v3;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Notified that audio session activation state changed to: %d", &v14, 8u);
  }

  v5 = [MEMORY[0x1E6958460] sharedInstance];
  v6 = [*(a1 + 40) delegate];
  if (v3)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = CXDefaultLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109120;
        v15 = 1;
        _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "Notifying delegate that audio session activation state changed to: %d", &v14, 8u);
      }

      v10 = [*(a1 + 40) delegate];
      [v10 provider:*(a1 + 40) didActivateAudioSession:v5];
LABEL_12:
    }
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v13 = CXDefaultLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109120;
        v15 = 0;
        _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Notifying delegate that audio session activation state changed to: %d", &v14, 8u);
      }

      v10 = [*(a1 + 40) delegate];
      [v10 provider:*(a1 + 40) didDeactivateAudioSession:v5];
      goto LABEL_12;
    }
  }
}

- (void)handleMediaServicesWereResetNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = CXDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(CXProvider *)self registerCurrentConfiguration];
}

+ (void)reportNewIncomingVoIPPushPayload:(NSDictionary *)dictionaryPayload completion:(void *)completion
{
  v5 = completion;
  v6 = dictionaryPayload;
  v7 = objc_alloc_init(CXNotificationServiceExtensionVoIPXPCClient);
  [(CXNotificationServiceExtensionVoIPXPCClient *)v7 requestApplicationLaunchForIncomingCall:v6 completion:v5];
}

void __36__CXProvider_initWithConfiguration___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error resetting audio session interruption priority to Normal: %@", &v2, 0xCu);
}

- (void)performAction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Unknown action class in transaction: %@", &v2, 0xCu);
}

@end