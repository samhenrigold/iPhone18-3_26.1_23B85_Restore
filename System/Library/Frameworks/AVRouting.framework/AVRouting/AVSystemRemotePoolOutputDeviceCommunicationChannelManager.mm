@interface AVSystemRemotePoolOutputDeviceCommunicationChannelManager
+ (id)sharedSystemRemotePool;
+ (id)sharedSystemRemotePoolImpl;
- (AVSystemRemotePoolOutputDeviceCommunicationChannelManager)initWithDeviceID:(id)d;
- (id)_initializeIfNeededAndGetSystemRemotePool;
- (void)_didCloseCommChannelWithUUID:(__CFString *)d forDeviceWithID:(__CFString *)iD;
- (void)_didReceiveData:(__CFData *)data fromDeviceWithID:(__CFString *)d fromChannelWithUUID:(__CFString *)iD;
- (void)dealloc;
- (void)openCommunicationChannelWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation AVSystemRemotePoolOutputDeviceCommunicationChannelManager

- (void)dealloc
{
  outputContext = self->_outputContext;
  if (outputContext && [(AVOutputContext *)outputContext figRoutingContext])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    [(AVOutputContext *)self->_outputContext figRoutingContext];
    FigNotificationCenterRemoveWeakListener();
    [(AVOutputContext *)self->_outputContext figRoutingContext];
    FigNotificationCenterRemoveWeakListener();
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  communicationChannelsForUUIDs = self->_communicationChannelsForUUIDs;
  if (communicationChannelsForUUIDs)
  {
    CFRelease(communicationChannelsForUUIDs);
  }

  v6.receiver = self;
  v6.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelManager;
  [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)&v6 dealloc];
}

+ (id)sharedSystemRemotePoolImpl
{
  v2 = AVDefaultRoutingContextFactory();
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_sharedSystemRemotePoolImpl__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = v2;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __87__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_sharedSystemRemotePoolImpl__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemRemotePoolContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)sharedSystemRemotePool
{
  v2 = [[AVOutputContext alloc] initWithOutputContextImpl:+[AVSystemRemotePoolOutputDeviceCommunicationChannelManager sharedSystemRemotePoolImpl]];

  return v2;
}

- (id)_initializeIfNeededAndGetSystemRemotePool
{
  CMNotificationCenterGetDefaultLocalCenter();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__initializeIfNeededAndGetSystemRemotePool__block_invoke;
  block[3] = &unk_1E794EEE0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  v4 = v9[5];
  if (v4)
  {
    if ([v4 figRoutingContext])
    {
      if (*(v15 + 24) == 1)
      {
        [(AVOutputContext *)self->_outputContext figRoutingContext];
        if (!FigNotificationCenterAddWeakListener())
        {
          [(AVOutputContext *)self->_outputContext figRoutingContext];
          FigNotificationCenterAddWeakListener();
        }
      }
    }
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

void *__102__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__initializeIfNeededAndGetSystemRemotePool__block_invoke(void *result)
{
  v1 = result;
  v2 = *(result[4] + 24);
  if (!v2)
  {
    result = +[AVSystemRemotePoolOutputDeviceCommunicationChannelManager sharedSystemRemotePool];
    *(v1[4] + 24) = result;
    *(*(v1[5] + 8) + 24) = 1;
    v2 = *(v1[4] + 24);
  }

  *(*(v1[6] + 8) + 40) = v2;
  return result;
}

- (void)openCommunicationChannelWithOptions:(id)options completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  parentOutputDevice = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self parentOutputDevice];
  v8 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionCancelIfAuthRequired"];
  v9 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionCorrelationID"];
  v10 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionInitiator"];
  if (dword_1ED6F6B68)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (parentOutputDevice && (v12 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self _initializeIfNeededAndGetSystemRemotePool]) != 0)
  {
    v13 = v12;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15 = dictionary;
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionCorrelationID"];
    }

    if (v10)
    {
      [v15 setObject:v10 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"];
    }

    if ([v8 BOOLValue])
    {
      [v15 setObject:v8 forKeyedSubscript:@"AVOutputContextAddOutputDeviceCancelIfAuthRequiredKey"];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke;
    v17[3] = &unk_1E794EF08;
    v17[4] = options;
    v17[5] = v9;
    v17[6] = v13;
    v17[7] = self;
    v17[8] = handler;
    [v13 addOutputDevice:parentOutputDevice options:v15 completionHandler:v17];
  }

  else
  {
    v16 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
    (*(handler + 2))(handler, 0, v16, 0);
  }
}

void __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ([a2 status] != 2)
  {
    [a2 cancellationReason];
    LODWORD(v9) = 0;
    Mutable = 0;
    v10 = 0;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v5 = MEMORY[0x1E6961760];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionControlType"];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:@"AVOutputDeviceCommunicationChannelControlTypeDirect"])
    {
      v8 = 2;
    }

    else
    {
      if (![v7 isEqualToString:@"AVOutputDeviceCommunicationChannelControlTypeRelayed"])
      {
        goto LABEL_9;
      }

      v8 = 1;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E6961778], [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8]);
  }

LABEL_9:
  v11 = *v5;
  v12 = *(a1 + 40);
  if (v12)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6961768], v12);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961770], v11);
  FigCFDictionarySetInt32();
  if (dword_1ED6F6B68)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = [*(a1 + 48) figRoutingContext];
  v15 = *(*(a1 + 56) + 16);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v16)
  {
    v9 = 4294954514;
LABEL_18:
    AVLocalizedErrorWithUnderlyingOSStatus(v9, 0);
    goto LABEL_19;
  }

  v17 = v16(v14, v15, Mutable, &cf);
  if (v17)
  {
    v9 = v17;
    goto LABEL_18;
  }

  if (cf)
  {
    v18 = [AVSystemRemotePoolOutputDeviceCommunicationChannelImpl alloc];
    v9 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelImpl *)v18 initWithDeviceID:*(*(a1 + 56) + 16) channelUUID:cf outputContext:*(a1 + 48)];
    v10 = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v9];

    v19 = *(a1 + 56);
    v20 = *(v19 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke_11;
    block[3] = &unk_1E794E908;
    block[5] = v10;
    block[6] = cf;
    block[4] = v19;
    av_readwrite_dispatch_queue_write(v20, block);
    LODWORD(v9) = 0;
    goto LABEL_20;
  }

  AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  LODWORD(v9) = 0;
LABEL_19:
  v10 = 0;
LABEL_20:
  (*(*(a1 + 64) + 16))();
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (dword_1ED6F6B68)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v27;
    v23 = type;
    if (os_log_type_enabled(v21, type))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v29 = 136315650;
      v30 = "[AVSystemRemotePoolOutputDeviceCommunicationChannelManager openCommunicationChannelWithOptions:completionHandler:]_block_invoke_2";
      v31 = 2114;
      v32 = cf;
      v33 = 1024;
      v34 = v9;
      _os_log_send_and_compose_impl(v24, 0, v35, 128, &dword_1AB586000, v21, v23, "<<<< AVOutputDeviceCommunicationChannelManager (System Remote Pool) >>>> %s: Open comm channel completed for comm channel ID %{public}@ (err=%d)", &v29, 28);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke_11(uint64_t a1)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
  CFDictionarySetValue(MutableCopy, *(a1 + 48), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = MutableCopy;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

- (void)_didReceiveData:(__CFData *)data fromDeviceWithID:(__CFString *)d fromChannelWithUUID:(__CFString *)iD
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  if (iD && [(NSString *)self->_deviceID isEqualToString:d])
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didReceiveData_fromDeviceWithID_fromChannelWithUUID___block_invoke;
    block[3] = &unk_1E794EA40;
    block[4] = self;
    block[5] = &v12;
    block[6] = iD;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    parentOutputDevice = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self parentOutputDevice];
    [(AVOutputDevice *)parentOutputDevice communicationChannelManager:self didReceiveData:data fromCommunicationChannel:v13[5]];
  }

  _Block_object_dispose(&v12, 8);
}

void __114__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didReceiveData_fromDeviceWithID_fromChannelWithUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(*(*(a1 + 32) + 40), *(a1 + 48));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelImpl alloc] initWithDeviceID:*(*(a1 + 32) + 16) channelUUID:*(a1 + 48) outputContext:*(*(a1 + 32) + 24)];
    *(*(*(a1 + 40) + 8) + 40) = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v5];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
    CFDictionarySetValue(MutableCopy, *(a1 + 48), *(*(*(a1 + 40) + 8) + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

- (void)_didCloseCommChannelWithUUID:(__CFString *)d forDeviceWithID:(__CFString *)iD
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  if (d && [(NSString *)self->_deviceID isEqualToString:iD])
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didCloseCommChannelWithUUID_forDeviceWithID___block_invoke;
    block[3] = &unk_1E794EA40;
    block[4] = self;
    block[5] = &v10;
    block[6] = d;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    parentOutputDevice = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self parentOutputDevice];
    [(AVOutputDevice *)parentOutputDevice communicationChannelManager:self didCloseCommunicationChannel:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

void __106__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didCloseCommChannelWithUUID_forDeviceWithID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(*(*(a1 + 32) + 40), *(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
    CFDictionaryRemoveValue(MutableCopy, *(a1 + 48));
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }

  else
  {
    v5 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelImpl alloc] initWithDeviceID:*(*(a1 + 32) + 16) channelUUID:*(a1 + 48) outputContext:*(*(a1 + 32) + 24)];
    *(*(*(a1 + 40) + 8) + 40) = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v5];
  }
}

- (AVSystemRemotePoolOutputDeviceCommunicationChannelManager)initWithDeviceID:(id)d
{
  v8.receiver = self;
  v8.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelManager;
  v4 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)&v8 init];
  if (v4 && (v5 = [d copy], (v4->_deviceID = v5) != 0))
  {
    v4->_outputContext = 0;
    v4->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.device-comm-channel-manager");
    v4->_communicationChannelsForUUIDs = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end