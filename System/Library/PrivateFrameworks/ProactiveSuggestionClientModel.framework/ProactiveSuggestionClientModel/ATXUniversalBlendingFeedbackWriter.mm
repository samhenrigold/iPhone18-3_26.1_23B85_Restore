@interface ATXUniversalBlendingFeedbackWriter
- (ATXUniversalBlendingFeedbackWriter)init;
- (ATXUniversalBlendingFeedbackWriter)initWithClientModelStream:(id)stream lightWeightClientModelStream:(id)modelStream blendingModelStream:(id)blendingModelStream uiStream:(id)uiStream;
- (void)donateBlendingModelUICacheUpdate:(id)update uiConsumer:(unsigned __int8)consumer;
- (void)donateUIInteractionEvent:(id)event;
- (void)sendEventToBiomeIfNeededForClientModelCacheUpdate:(id)update previousUpdate:(id)previousUpdate;
@end

@implementation ATXUniversalBlendingFeedbackWriter

- (ATXUniversalBlendingFeedbackWriter)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXUniversalBlendingFeedbackWriter *)self initWithClientModelStream:v3 lightWeightClientModelStream:v4 blendingModelStream:v5 uiStream:v6];

  return v7;
}

- (ATXUniversalBlendingFeedbackWriter)initWithClientModelStream:(id)stream lightWeightClientModelStream:(id)modelStream blendingModelStream:(id)blendingModelStream uiStream:(id)uiStream
{
  streamCopy = stream;
  modelStreamCopy = modelStream;
  blendingModelStreamCopy = blendingModelStream;
  uiStreamCopy = uiStream;
  v21.receiver = self;
  v21.super_class = ATXUniversalBlendingFeedbackWriter;
  v15 = [(ATXUniversalBlendingFeedbackWriter *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientModelStream, stream);
    objc_storeStrong(&v16->_lightWeightClientModelStream, modelStream);
    objc_storeStrong(&v16->_blendingModelStream, blendingModelStream);
    objc_storeStrong(&v16->_uiStream, uiStream);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("ATXUniversalBlendingFeedbackWriter.internalQueue", v17);
    internalQueue = v16->_internalQueue;
    v16->_internalQueue = v18;
  }

  return v16;
}

- (void)sendEventToBiomeIfNeededForClientModelCacheUpdate:(id)update previousUpdate:(id)previousUpdate
{
  updateCopy = update;
  previousUpdateCopy = previousUpdate;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__ATXUniversalBlendingFeedbackWriter_sendEventToBiomeIfNeededForClientModelCacheUpdate_previousUpdate___block_invoke;
  block[3] = &unk_1E86A4150;
  v12 = previousUpdateCopy;
  v13 = updateCopy;
  selfCopy = self;
  v9 = updateCopy;
  v10 = previousUpdateCopy;
  dispatch_sync(internalQueue, block);
}

void __103__ATXUniversalBlendingFeedbackWriter_sendEventToBiomeIfNeededForClientModelCacheUpdate_previousUpdate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) suggestions];
  if ([v2 count])
  {

LABEL_4:
    v6 = __atxlog_handle_blending(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) clientModelId];
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1DEFC4000, v6, OS_LOG_TYPE_DEFAULT, "Adding event to client model Biome stream for: %{public}@", &v13, 0xCu);
    }

    v8 = [*(*(a1 + 48) + 8) source];
    [v8 sendEvent:*(a1 + 40)];

    v9 = [[ATXLightweightClientModelCacheUpdate alloc] initWithClientModelCacheUpdate:*(a1 + 40)];
    v10 = __atxlog_handle_blending(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ATXLightweightClientModelCacheUpdate *)v9 clientModelId];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Adding event to lightweight client model Biome stream for: %{public}@", &v13, 0xCu);
    }

    v12 = [*(*(a1 + 48) + 16) source];
    [v12 sendEvent:v9];
    goto LABEL_9;
  }

  v4 = [*(a1 + 40) suggestions];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  v9 = __atxlog_handle_blending(v3);
  if (!os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  v12 = [*(a1 + 40) clientModelId];
  v13 = 138543362;
  v14 = v12;
  _os_log_impl(&dword_1DEFC4000, &v9->super, OS_LOG_TYPE_DEFAULT, "Not adding event for client model to Biome stream (%{public}@) because our previous suggestion was empty and so is our new one.", &v13, 0xCu);
LABEL_9:

LABEL_10:
}

- (void)donateBlendingModelUICacheUpdate:(id)update uiConsumer:(unsigned __int8)consumer
{
  updateCopy = update;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__ATXUniversalBlendingFeedbackWriter_donateBlendingModelUICacheUpdate_uiConsumer___block_invoke;
  v8[3] = &unk_1E86A4B50;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_sync(internalQueue, v8);
}

- (void)donateUIInteractionEvent:(id)event
{
  eventCopy = event;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ATXUniversalBlendingFeedbackWriter_donateUIInteractionEvent___block_invoke;
  v7[3] = &unk_1E86A4B50;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(internalQueue, v7);
}

uint64_t __63__ATXUniversalBlendingFeedbackWriter_donateUIInteractionEvent___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_blending(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{objc_msgSend(*(a1 + 32), "consumerSubTypeForUIStream")}];
    v4 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1DEFC4000, v2, OS_LOG_TYPE_DEFAULT, "Feedback Writer: Recording UI interaction event for consumerSubType %@. Event: %@", &v6, 0x16u);
  }

  return [*(*(a1 + 40) + 32) donateGenericUIEvent:*(a1 + 32)];
}

@end