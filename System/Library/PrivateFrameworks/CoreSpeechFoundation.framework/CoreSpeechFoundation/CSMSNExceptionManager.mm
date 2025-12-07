@interface CSMSNExceptionManager
+ (id)sharedInstance;
- (CSMSNExceptionManager)init;
- (void)beginAnnounceMessageException:(id)exception reason:(id)reason;
- (void)endAnnounceMessageException:(id)exception reason:(id)reason;
@end

@implementation CSMSNExceptionManager

- (void)endAnnounceMessageException:(id)exception reason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  exceptionCopy = exception;
  reasonCopy = reason;
  if ([exceptionCopy isEqualToString:@"announcemessage"])
  {
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", exceptionCopy, reasonCopy];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CSMSNExceptionManager_endAnnounceMessageException_reason___block_invoke;
    block[3] = &unk_1E865C9C8;
    block[4] = self;
    v13 = reasonCopy;
    v14 = exceptionCopy;
    v15 = reasonCopy;
    v10 = reasonCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]";
      v18 = 2114;
      v19 = exceptionCopy;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Unexpected exception request : %{public}@", buf, 0x16u);
    }
  }
}

void __60__CSMSNExceptionManager_endAnnounceMessageException_reason___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2 || ([v2 objectForKeyedSubscript:*(a1 + 40)], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, objc_msgSend(*(*(a1 + 32) + 8), "objectForKeyedSubscript:", *(a1 + 40)), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "intValue"), v5, v4, v6 < 1))
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = *(a1 + 40);
    v21 = 136315394;
    v22 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]_block_invoke";
    v23 = 2114;
    v24 = v10;
    v11 = "%s There is no cached exception for %{public}@";
    v12 = v9;
    v13 = 22;
    goto LABEL_16;
  }

  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 intValue];

  if (v8 > 1)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:(v8 - 1)];
    [*(*(a1 + 32) + 8) setObject:v14 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  }

  v15 = *(*(a1 + 32) + 8);
  if (!v15 || ![v15 count])
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 48);
      v21 = 136315394;
      v22 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]_block_invoke";
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Calling MSN end announce message exception for %{public}@", &v21, 0x16u);
    }

    [*(a1 + 48) UTF8String];
    MSNMonitorEndException();
  }

  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 8);
    v20 = *(a1 + 56);
    v21 = 136315650;
    v22 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]_block_invoke";
    v23 = 2114;
    v24 = v19;
    v25 = 2114;
    v26 = v20;
    v11 = "%s Updated announce message exception table : %{public}@, reason : %{public}@";
    v12 = v18;
    v13 = 32;
LABEL_16:
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, v11, &v21, v13);
  }
}

- (void)beginAnnounceMessageException:(id)exception reason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  exceptionCopy = exception;
  reasonCopy = reason;
  if ([exceptionCopy isEqualToString:@"announcemessage"])
  {
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", exceptionCopy, reasonCopy];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CSMSNExceptionManager_beginAnnounceMessageException_reason___block_invoke;
    block[3] = &unk_1E865C9C8;
    block[4] = self;
    v13 = exceptionCopy;
    v14 = reasonCopy;
    v15 = reasonCopy;
    v10 = reasonCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[CSMSNExceptionManager beginAnnounceMessageException:reason:]";
      v18 = 2114;
      v19 = exceptionCopy;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Unexpected exception request : %{public}@", buf, 0x16u);
    }
  }
}

void __62__CSMSNExceptionManager_beginAnnounceMessageException_reason___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2 || ![v2 count])
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v14 = 136315394;
      v15 = "[CSMSNExceptionManager beginAnnounceMessageException:reason:]_block_invoke";
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Calling MSN begin announce message exception for %{public}@", &v14, 0x16u);
    }

    [*(a1 + 40) UTF8String];
    MSNMonitorBeginException();
  }

  v5 = *(*(a1 + 32) + 8);
  if (v5 && ([v5 objectForKeyedSubscript:*(a1 + 48)], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 48)];
    v8 = [v7 intValue];

    v9 = (v8 + 1);
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [*(*(a1 + 32) + 8) setObject:v10 forKeyedSubscript:*(a1 + 48)];

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(a1 + 32) + 8);
    v13 = *(a1 + 56);
    v14 = 136315650;
    v15 = "[CSMSNExceptionManager beginAnnounceMessageException:reason:]_block_invoke";
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Updated announce message exception table : %{public}@, reason : %{public}@", &v14, 0x20u);
  }
}

- (CSMSNExceptionManager)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CSMSNExceptionManager;
    v4 = [(CSMSNExceptionManager *)&v10 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSMSNExceptionManager Queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      announceMessageExceptions = v4->_announceMessageExceptions;
      v4->_announceMessageExceptions = dictionary;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14980 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_14980, &__block_literal_global_14981);
  }

  v3 = sharedInstance_sharedInstance_14982;

  return v3;
}

uint64_t __39__CSMSNExceptionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSMSNExceptionManager);
  v1 = sharedInstance_sharedInstance_14982;
  sharedInstance_sharedInstance_14982 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end