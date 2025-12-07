@interface BWFigCaptureAttachedAccessoriesMonitor
+ (id)sharedAttachedAccessoriesMonitor;
+ (void)initialize;
- (BWFigCaptureAttachedAccessoriesMonitor)init;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol forConnection:(id)connection;
- (void)dealloc;
@end

@implementation BWFigCaptureAttachedAccessoriesMonitor

+ (id)sharedAttachedAccessoriesMonitor
{
  if (sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitorLockOnce != -1)
  {
    +[BWFigCaptureAttachedAccessoriesMonitor sharedAttachedAccessoriesMonitor];
  }

  return sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitor;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

BWFigCaptureAttachedAccessoriesMonitor *__74__BWFigCaptureAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitor__block_invoke(uint64_t a1)
{
  sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitorLock = FigSimpleMutexCreate();
  result = objc_alloc_init(BWFigCaptureAttachedAccessoriesMonitor);
  sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitor = result;
  return result;
}

- (BWFigCaptureAttachedAccessoriesMonitor)init
{
  v5.receiver = self;
  v5.super_class = BWFigCaptureAttachedAccessoriesMonitor;
  v2 = [(BWFigCaptureAttachedAccessoriesMonitor *)&v5 init];
  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__42;
    v3 = getACCConnectionInfoClass_softClass;
    v11 = __Block_byref_object_dispose__42;
    v12 = getACCConnectionInfoClass_softClass;
    if (!getACCConnectionInfoClass_softClass)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __getACCConnectionInfoClass_block_invoke;
      v6[3] = &unk_1E798FC38;
      v6[4] = &v7;
      __getACCConnectionInfoClass_block_invoke(v6);
      v3 = v8[5];
    }

    _Block_object_dispose(&v7, 8);
    v2->_connectionInfoProvider = [v3 sharedInstance];
    v2->_notificationQueue = dispatch_queue_create("com.apple.bwgraph.sharedattachedaccessories.notification", 0);
    [(ACCConnectionInfo *)v2->_connectionInfoProvider registerDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(ACCConnectionInfo *)self->_connectionInfoProvider registerDelegate:0];

  v3.receiver = self;
  v3.super_class = BWFigCaptureAttachedAccessoriesMonitor;
  [(BWFigCaptureAttachedAccessoriesMonitor *)&v3 dealloc];
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol forConnection:(id)connection
{
  if (dword_1ED8443B0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke;
  block[3] = &unk_1E7998980;
  typeCopy = type;
  protocolCopy = protocol;
  block[4] = self;
  block[5] = attached;
  block[6] = connection;
  dispatch_sync(notificationQueue, block);
}

void __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) != 13)
  {
    return;
  }

  v2 = *(a1 + 60);
  v3 = v2 > 0xE;
  v4 = (1 << v2) & 0x4402;
  if (v3 || v4 == 0)
  {
    return;
  }

  v6 = *(*(a1 + 32) + 8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr;
  v22 = getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr;
  if (!getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr)
  {
    v15[1] = MEMORY[0x1E69E9820];
    v15[2] = 3221225472;
    v15[3] = __getkACCProperties_Endpoint_NFC_TypeSymbolLoc_block_invoke;
    v15[4] = &unk_1E798FC38;
    v16 = &v19;
    v8 = CoreAccessoriesLibrary();
    v20[3] = dlsym(v8, "kACCProperties_Endpoint_NFC_Type");
    getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr = *(v16[1] + 24);
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke_cold_1();
  }

  v9 = [objc_msgSend(v6 accessoryPropertySync:*v7 forEndpoint:*(a1 + 40) connection:{*(a1 + 48)), "intValue"}];
  if ((v9 - 87) > 1)
  {
    if (v9 != 66)
    {
      return;
    }

    if (*(*(a1 + 32) + 32))
    {
      if (dword_1ED8443B0)
      {
        goto LABEL_12;
      }

      return;
    }

    if (dword_1ED8443B0)
    {
      v18 = 0;
      v17 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = 32;
LABEL_23:
    *(*(a1 + 32) + v13) = *(a1 + 48);
    v14 = @"NewPropertyValue";
    v15[0] = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return;
  }

  if (!*(*(a1 + 32) + 24))
  {
    if (dword_1ED8443B0)
    {
      v18 = 0;
      v17 = 0;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = 24;
    goto LABEL_23;
  }

  if (dword_1ED8443B0)
  {
LABEL_12:
    v18 = 0;
    v17 = 0;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)accessoryConnectionDetached:(id)detached
{
  if (dword_1ED8443B0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__BWFigCaptureAttachedAccessoriesMonitor_accessoryConnectionDetached___block_invoke;
  block[3] = &unk_1E798F898;
  block[4] = detached;
  block[5] = self;
  dispatch_sync(notificationQueue, block);
}

void *__70__BWFigCaptureAttachedAccessoriesMonitor_accessoryConnectionDetached___block_invoke(uint64_t a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(*(a1 + 32), a2, *(*(a1 + 40) + 24)))
  {
    if (dword_1ED8443B0)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 24;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    if (dword_1ED8443B0)
    {
      v10 = 0;
      v9 = 0;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 32;
  }

  *(*(a1 + 40) + v6) = 0;
  v7 = @"NewPropertyValue";
  v8 = MEMORY[0x1E695E110];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

void __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getkACCProperties_Endpoint_NFC_Type(void)") description:{@"BWFigCaptureAttachedAccessoriesMonitor.m", 33, @"%s", dlerror()}];
  __break(1u);
}

@end