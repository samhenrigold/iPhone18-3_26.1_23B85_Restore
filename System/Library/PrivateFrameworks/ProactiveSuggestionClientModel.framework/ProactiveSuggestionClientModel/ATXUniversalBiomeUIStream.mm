@interface ATXUniversalBiomeUIStream
- (ATXUniversalBiomeUIStream)initWithStoreConfig:(id)config;
- (id)_innerStreamForConsumerSubType:(unsigned __int8)type;
- (id)_innerStreamForStreamId:(id)id;
- (id)_streamIdForConsumerSubType:(unsigned __int8)type;
- (id)deprecatedGenericEventPublisherFromStartTime:(double)time;
- (id)genericEventPublisherFromStartTime:(double)time;
- (id)genericEventPublisherFromStartTime:(double)time consumerSubType:(unsigned __int8)type;
- (id)streamIdentifiers;
- (void)donateGenericUIEvent:(id)event;
@end

@implementation ATXUniversalBiomeUIStream

- (id)streamIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _validUIStreamConsumerSubTypes = [(ATXUniversalBiomeUIStream *)self _validUIStreamConsumerSubTypes];
  v5 = [_validUIStreamConsumerSubTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_validUIStreamConsumerSubTypes);
        }

        v9 = -[ATXUniversalBiomeUIStream _streamIdForConsumerSubType:](self, "_streamIdForConsumerSubType:", [*(*(&v12 + 1) + 8 * i) unsignedIntValue]);
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [_validUIStreamConsumerSubTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (ATXUniversalBiomeUIStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = ATXUniversalBiomeUIStream;
  v5 = [(ATXUniversalBiomeUIStream *)&v13 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    storeConfig = v5->_storeConfig;
    v5->_storeConfig = atx_storeConfig;

    v8 = objc_alloc(MEMORY[0x1E69C5D60]);
    v9 = objc_opt_new();
    v10 = [v8 initWithGuardedData:v9];
    lock = v5->_lock;
    v5->_lock = v10;
  }

  return v5;
}

- (id)genericEventPublisherFromStartTime:(double)time
{
  v5 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"homeScreen" storeConfig:self->_storeConfig];
  v6 = [v5 publisherFromStartTime:time];

  streamIdentifiers = [(ATXUniversalBiomeUIStream *)self streamIdentifiers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__ATXUniversalBiomeUIStream_genericEventPublisherFromStartTime___block_invoke;
  v11[3] = &unk_1E86A4468;
  v11[4] = self;
  *&v11[5] = time;
  v8 = [streamIdentifiers _pas_mappedArrayWithTransform:v11];

  v9 = [v6 orderedMergeWithOthers:v8 comparator:&__block_literal_global_11];

  return v9;
}

id __64__ATXUniversalBiomeUIStream_genericEventPublisherFromStartTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _innerStreamForStreamId:a2];
  v4 = [v3 publisherFromStartTime:*(a1 + 40)];

  return v4;
}

uint64_t __64__ATXUniversalBiomeUIStream_genericEventPublisherFromStartTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)genericEventPublisherFromStartTime:(double)time consumerSubType:(unsigned __int8)type
{
  v5 = [(ATXUniversalBiomeUIStream *)self _innerStreamForConsumerSubType:type];
  v6 = [v5 publisherFromStartTime:time];
  v7 = v6;
  if (v6)
  {
    bpsPublisher = v6;
  }

  else
  {
    bpsPublisher = [MEMORY[0x1E695E0F0] bpsPublisher];
  }

  v9 = bpsPublisher;

  return v9;
}

- (id)deprecatedGenericEventPublisherFromStartTime:(double)time
{
  v4 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"homeScreen" storeConfig:self->_storeConfig];
  v5 = [v4 publisherFromStartTime:time];

  return v5;
}

- (void)donateGenericUIEvent:(id)event
{
  eventCopy = event;
  v6 = -[ATXUniversalBiomeUIStream _innerStreamForConsumerSubType:](self, "_innerStreamForConsumerSubType:", [eventCopy consumerSubTypeForUIStream]);
  source = [v6 source];
  [source sendEvent:eventCopy];
}

- (id)_streamIdForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
  v6 = [v4 initWithFormat:@"blendingUI%@", v5];

  return v6;
}

- (id)_innerStreamForStreamId:(id)id
{
  idCopy = id;
  streamIdentifiers = [(ATXUniversalBiomeUIStream *)self streamIdentifiers];
  v6 = [streamIdentifiers containsObject:idCopy];

  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = 0;
    lock = self->_lock;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__ATXUniversalBiomeUIStream__innerStreamForStreamId___block_invoke;
    v12[3] = &unk_1E86A4578;
    v15 = &v16;
    v13 = idCopy;
    selfCopy = self;
    [(_PASLock *)lock runWithLockAcquired:v12];
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = __atxlog_handle_blending(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXUniversalBiomeUIStream *)self _innerStreamForStreamId:idCopy, v10];
    }

    v9 = 0;
  }

  return v9;
}

void __53__ATXUniversalBiomeUIStream__innerStreamForStreamId___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9[1] objectForKey:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:a1[4] storeConfig:*(a1[5] + 8)];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [v9[1] setObject:*(*(a1[6] + 8) + 40) forKey:a1[4]];
  }
}

- (id)_innerStreamForConsumerSubType:(unsigned __int8)type
{
  v4 = [(ATXUniversalBiomeUIStream *)self _streamIdForConsumerSubType:type];
  v5 = [(ATXUniversalBiomeUIStream *)self _innerStreamForStreamId:v4];

  return v5;
}

- (void)_innerStreamForStreamId:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "%@ - could not create BMStoreStream for streamId: %@", &v7, 0x16u);
}

@end