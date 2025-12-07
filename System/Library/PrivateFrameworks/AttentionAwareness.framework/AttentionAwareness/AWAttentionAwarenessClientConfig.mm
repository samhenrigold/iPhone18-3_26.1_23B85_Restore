@interface AWAttentionAwarenessClientConfig
+ (id)sharedClientConfig;
- (AWAttentionAwarenessClientConfig)init;
- (AWNotification_s)notifySupportedEventsChangedWithQueue:(id)queue block:(id)block;
- (id)tagForIndex:(unint64_t)index;
- (unint64_t)addTag:(id)tag;
- (unint64_t)supportedEvents;
- (void)cancelNotification:(AWNotification_s *)notification;
- (void)dealloc;
- (void)decrementTagIndexRefCount:(unint64_t)count;
- (void)incrementTagIndexRefCount:(unint64_t)count;
- (void)updateState:(BOOL)state;
@end

@implementation AWAttentionAwarenessClientConfig

+ (id)sharedClientConfig
{
  if (sharedClientConfig_onceToken != -1)
  {
    dispatch_once(&sharedClientConfig_onceToken, &__block_literal_global_2065);
  }

  v3 = sharedClientConfig_clientConfig;

  return v3;
}

- (void)decrementTagIndexRefCount:(unint64_t)count
{
  if (count)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__AWAttentionAwarenessClientConfig_decrementTagIndexRefCount___block_invoke;
    v4[3] = &unk_1E7F37F50;
    v4[4] = self;
    v4[5] = count;
    dispatch_sync(queue, v4);
  }
}

void __62__AWAttentionAwarenessClientConfig_decrementTagIndexRefCount___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 unsignedLongLongValue];
    v6 = v5 - 1;
    if (v5 == 1)
    {
      if (currentLogLevel < 7)
      {
        goto LABEL_32;
      }

      v15 = _AALog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v16 = i;
        }

        else if (!*(i - 1))
        {
          v20 = absTimeNS();
          if (v20 == -1)
          {
            v21 = INFINITY;
          }

          else
          {
            v21 = v20 / 1000000000.0;
          }

          v27 = *(a1 + 40);
          v28 = *(*(a1 + 32) + 64);
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v27];
          v30 = [v28 objectForKeyedSubscript:v29];
          v31 = tagDescription(v27, v30);
          v37 = 136315906;
          v38 = *&v16;
          v39 = 1024;
          *v40 = 247;
          *&v40[4] = 2048;
          *&v40[6] = v21;
          v41 = 2112;
          v42 = v31;
          _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: removed %@ from tag map", &v37, 0x26u);

LABEL_31:
LABEL_32:
          v32 = *(*(a1 + 32) + 64);
          v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
          [v32 removeObjectForKey:v33];

          v34 = *(a1 + 40);
          v35 = *(*(a1 + 32) + 72);
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v34];
          [v35 removeObjectForKey:v10];
          goto LABEL_33;
        }
      }
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
    v8 = *(*(a1 + 32) + 72);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    [v8 setObject:v7 forKeyedSubscript:v9];

    if (currentLogLevel >= 7)
    {
      v10 = _AALog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v11 = j;
        }

        else if (!*(j - 1))
        {
          v18 = absTimeNS();
          if (v18 == -1)
          {
            v19 = INFINITY;
          }

          else
          {
            v19 = v18 / 1000000000.0;
          }

          v22 = *(a1 + 40);
          v23 = *(*(a1 + 32) + 64);
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
          v25 = [v23 objectForKeyedSubscript:v24];
          v26 = tagDescription(v22, v25);
          v37 = 136316162;
          v38 = *&v11;
          v39 = 1024;
          *v40 = 242;
          *&v40[4] = 2048;
          *&v40[6] = v19;
          v41 = 2112;
          v42 = v26;
          v43 = 2048;
          v44 = v6;
          _os_log_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: decremented ref count of %@ to %llu", &v37, 0x30u);

          goto LABEL_33;
        }
      }
    }
  }

  else if (currentLogLevel >= 3)
  {
    v10 = _AALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = absTimeNS();
      if (v13 == -1)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = v13 / 1000000000.0;
      }

      v36 = tagDescription(*(a1 + 40), 0);
      v37 = 134218242;
      v38 = v14;
      v39 = 2112;
      *v40 = v36;
      _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: trying to decrement ref for non-existent %@", &v37, 0x16u);
    }

LABEL_33:
  }
}

- (void)incrementTagIndexRefCount:(unint64_t)count
{
  if (count)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__AWAttentionAwarenessClientConfig_incrementTagIndexRefCount___block_invoke;
    v4[3] = &unk_1E7F37F50;
    v4[4] = self;
    v4[5] = count;
    dispatch_sync(queue, v4);
  }
}

void __62__AWAttentionAwarenessClientConfig_incrementTagIndexRefCount___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 unsignedLongLongValue] + 1;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v7 = *(*(a1 + 32) + 72);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    [v7 setObject:v6 forKeyedSubscript:v8];

    if (currentLogLevel >= 7)
    {
      v9 = _AALog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v10 = i;
        }

        else if (!*(i - 1))
        {
          v14 = absTimeNS();
          if (v14 == -1)
          {
            v15 = INFINITY;
          }

          else
          {
            v15 = v14 / 1000000000.0;
          }

          v16 = *(a1 + 40);
          v17 = *(*(a1 + 32) + 64);
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
          v19 = [v17 objectForKeyedSubscript:v18];
          v20 = tagDescription(v16, v19);
          v22 = 136316162;
          v23 = *&v10;
          v24 = 1024;
          *v25 = 216;
          *&v25[4] = 2048;
          *&v25[6] = v15;
          v26 = 2112;
          v27 = v20;
          v28 = 2048;
          v29 = v5;
          _os_log_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: incremented ref count of %@ to %llu", &v22, 0x30u);

          goto LABEL_18;
        }
      }
    }
  }

  else if (currentLogLevel >= 3)
  {
    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = absTimeNS();
      if (v12 == -1)
      {
        v13 = INFINITY;
      }

      else
      {
        v13 = v12 / 1000000000.0;
      }

      v21 = tagDescription(*(a1 + 40), 0);
      v22 = 134218242;
      v23 = v13;
      v24 = 2112;
      *v25 = v21;
      _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, "%13.5f: trying to increment ref for non-existent %@", &v22, 0x16u);
    }

LABEL_18:
  }
}

- (id)tagForIndex:(unint64_t)index
{
  if (index)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2045;
    v11 = __Block_byref_object_dispose__2046;
    v12 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AWAttentionAwarenessClientConfig_tagForIndex___block_invoke;
    block[3] = &unk_1E7F37CD8;
    block[4] = self;
    block[5] = &v7;
    block[6] = index;
    dispatch_sync(queue, block);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __48__AWAttentionAwarenessClientConfig_tagForIndex___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)addTag:(id)tag
{
  tagCopy = tag;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AWAttentionAwarenessClientConfig_addTag___block_invoke;
  block[3] = &unk_1E7F37CB0;
  v10 = tagCopy;
  v11 = &v12;
  block[4] = self;
  v6 = tagCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __43__AWAttentionAwarenessClientConfig_addTag___block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *(v2 + 56);
  *(v2 + 56) = v3 + 1;
  *(*(a1[6] + 8) + 24) = v3;
  v4 = a1[5];
  v5 = *(a1[4] + 64);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1[6] + 8) + 24)];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = *(a1[4] + 72);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1[6] + 8) + 24)];
  [v7 setObject:&unk_1F3960898 forKeyedSubscript:v8];

  if (currentLogLevel < 7)
  {
    return;
  }

  v9 = _AALog();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m"; *(i - 1) == 47; ++i)
  {
    v10 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v12 = absTimeNS();
  if (v12 == -1)
  {
    v13 = INFINITY;
  }

  else
  {
    v13 = v12 / 1000000000.0;
  }

  v14 = tagDescription(*(*(a1[6] + 8) + 24), a1[5]);
  v15 = 136315906;
  v16 = v10;
  v17 = 1024;
  v18 = 178;
  v19 = 2048;
  v20 = v13;
  v21 = 2112;
  v22 = v14;
  _os_log_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: adding %@ to tag map", &v15, 0x26u);

LABEL_13:
}

- (void)cancelNotification:(AWNotification_s *)notification
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AWAttentionAwarenessClientConfig_cancelNotification___block_invoke;
  v4[3] = &unk_1E7F37F50;
  v4[4] = self;
  v4[5] = notification;
  dispatch_sync(queue, v4);
}

void __55__AWAttentionAwarenessClientConfig_cancelNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [v3 removeObjectForKey:v4];

  v5 = *(*(a1 + 32) + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [v5 removeObjectForKey:v6];
}

- (AWNotification_s)notifySupportedEventsChangedWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__AWAttentionAwarenessClientConfig_notifySupportedEventsChangedWithQueue_block___block_invoke;
  v13[3] = &unk_1E7F37C88;
  v13[4] = self;
  v14 = queueCopy;
  v15 = blockCopy;
  v16 = &v17;
  v9 = blockCopy;
  v10 = queueCopy;
  dispatch_sync(queue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __80__AWAttentionAwarenessClientConfig_notifySupportedEventsChangedWithQueue_block___block_invoke(void *a1)
{
  v2 = ++CARColorFilterIntensityBlueYellowKey_block_invoke_counter;
  v3 = a1[5];
  v4 = *(a1[4] + 24);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:CARColorFilterIntensityBlueYellowKey_block_invoke_counter];
  [v4 setObject:v3 forKeyedSubscript:v5];

  v6 = MEMORY[0x1BFB0D030](a1[6]);
  v7 = *(a1[4] + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [v7 setObject:v6 forKeyedSubscript:v8];

  *(*(a1[7] + 8) + 24) = v2;
}

- (void)updateState:(BOOL)state
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  self->_supportedEventsValid = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__AWAttentionAwarenessClientConfig_updateState___block_invoke;
  v21[3] = &unk_1E7F37ED8;
  stateCopy = state;
  v21[4] = self;
  v5 = [AWServiceManager invokeWithService:v21];
  if (v5)
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = absTimeNS();
        if (v15 == -1)
        {
          v16 = INFINITY;
        }

        else
        {
          v16 = v15 / 1000000000.0;
        }

        *buf = 134218242;
        v25 = v16;
        v26 = 2112;
        v27 = v5;
        _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, "%13.5f: failed get supported events: %@", buf, 0x16u);
      }
    }

    self->_supportedEventsValid = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_notifyQueues;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_notifyQueues objectForKeyedSubscript:v12, v17];
        v14 = [(NSMutableDictionary *)self->_notifyBlocks objectForKeyedSubscript:v12];
        dispatch_async(v13, v14);
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }
}

uint64_t __48__AWAttentionAwarenessClientConfig_updateState___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__AWAttentionAwarenessClientConfig_updateState___block_invoke_2;
  v3[3] = &unk_1E7F37C60;
  v4 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  [a2 getSupportedEventsWithReply:v3];
  return 0;
}

void __48__AWAttentionAwarenessClientConfig_updateState___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    if (currentLogLevel == 5)
    {
      v4 = _AALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = absTimeNS();
        if (v5 == -1)
        {
          v6 = INFINITY;
        }

        else
        {
          v6 = v5 / 1000000000.0;
        }

        v11 = getEventMaskDescription(*(*(a1 + 32) + 40));
        v12 = getEventMaskDescription(a2);
        v16 = 134218498;
        v17 = v6;
        v18 = 2112;
        *v19 = v11;
        *&v19[8] = 2112;
        *&v19[10] = v12;
        v13 = "%13.5f: supported event mask changed from %@ to %@";
        v14 = v4;
        v15 = 32;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v16, v15);
      }

LABEL_21:

      goto LABEL_22;
    }

    if (currentLogLevel >= 6)
    {
      v4 = _AALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/SimpleFrameworkTypes.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v7 = i;
          }

          else if (!*(i - 1))
          {
            v9 = absTimeNS();
            if (v9 == -1)
            {
              v10 = INFINITY;
            }

            else
            {
              v10 = v9 / 1000000000.0;
            }

            v11 = getEventMaskDescription(*(*(a1 + 32) + 40));
            v12 = getEventMaskDescription(a2);
            v16 = 136316162;
            v17 = *&v7;
            v18 = 1024;
            *v19 = 128;
            *&v19[4] = 2048;
            *&v19[6] = v10;
            *&v19[14] = 2112;
            *&v19[16] = v11;
            v20 = 2112;
            v21 = v12;
            v13 = "%30s:%-4d: %13.5f: supported event mask changed from %@ to %@";
            v14 = v4;
            v15 = 48;
            goto LABEL_20;
          }
        }
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  *(*(a1 + 32) + 40) = a2;
  *(*(a1 + 32) + 48) = 1;
}

- (unint64_t)supportedEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AWAttentionAwarenessClientConfig_supportedEvents__block_invoke;
  v5[3] = &unk_1E7F37F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __51__AWAttentionAwarenessClientConfig_supportedEvents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if ((*(result + 48) & 1) == 0)
  {
    v3 = 5;
    while (1)
    {
      result = *(a1 + 32);
      if (*(result + 48))
      {
        break;
      }

      [result updateState:1];
      if (!--v3)
      {
        result = *(a1 + 32);
        if ((*(result + 48) & 1) == 0 && currentLogLevel >= 3)
        {
          v4 = _AALog();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v5 = absTimeNS();
            if (v5 == -1)
            {
              v6 = INFINITY;
            }

            else
            {
              v6 = v5 / 1000000000.0;
            }

            v7 = getEventMaskDescription(*(*(a1 + 32) + 40));
            v8 = 134218242;
            v9 = v6;
            v10 = 2112;
            v11 = v7;
            _os_log_error_impl(&dword_1BB2EF000, v4, OS_LOG_TYPE_ERROR, "%13.5f: returning invalid supportedEvents %@", &v8, 0x16u);
          }

          result = *(a1 + 32);
        }

        break;
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = *(result + 40);
  return result;
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = AWAttentionAwarenessClientConfig;
  [(AWAttentionAwarenessClientConfig *)&v3 dealloc];
}

- (AWAttentionAwarenessClientConfig)init
{
  v21.receiver = self;
  v21.super_class = AWAttentionAwarenessClientConfig;
  v2 = [(AWAttentionAwarenessClientConfig *)&v21 init];
  if (v2)
  {
    v3 = awQueue(1);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifyQueues = v2->_notifyQueues;
    v2->_notifyQueues = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifyBlocks = v2->_notifyBlocks;
    v2->_notifyBlocks = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagMap = v2->_tagMap;
    v2->_tagMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagRefCount = v2->_tagRefCount;
    v2->_tagRefCount = v11;

    v2->_nextTagIndex = 1;
    objc_initWeak(&location, v2);
    v13 = v2->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__AWAttentionAwarenessClientConfig_init__block_invoke;
    handler[3] = &unk_1E7F37C38;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch("com.apple.AttentionAwareness.SupportedEventsChanged", &v2->_notifyToken, v13, handler);
    v14 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AWAttentionAwarenessClientConfig_init__block_invoke_2;
    block[3] = &unk_1E7F38038;
    v17 = v2;
    dispatch_sync(v14, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __40__AWAttentionAwarenessClientConfig_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateState:1];
}

uint64_t __54__AWAttentionAwarenessClientConfig_sharedClientConfig__block_invoke()
{
  v0 = objc_alloc_init(AWAttentionAwarenessClientConfig);
  v1 = sharedClientConfig_clientConfig;
  sharedClientConfig_clientConfig = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end