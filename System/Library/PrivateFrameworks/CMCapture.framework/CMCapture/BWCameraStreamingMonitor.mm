@interface BWCameraStreamingMonitor
+ (id)sharedCameraStreamingMonitor;
+ (void)initialize;
- (BWCameraStreamingMonitor)initWithMediaStatusDomainPublisher:(id)publisher msnReportingEnabled:(BOOL)enabled systemStatusReportingEnabled:(BOOL)reportingEnabled privacyAccountingAccessLogger:(id)logger;
- (_BYTE)_handleClientDeath:(_BYTE *)result;
- (double)_informSystemStatusWithIsStreaming:(__int128 *)streaming clientAuditToken:(uint64_t)token mediaEnvironment:;
- (double)_updateActiveClientSessionsForSessionID:(uint64_t)d clientSession:(_OWORD *)session clientAuditToken:(uint64_t)token tccIdentity:(uint64_t)identity mediaEnvironment:;
- (uint64_t)_updateCameraStreamingMonitorInfoWithStreaming:(char)streaming cameraAccessGranted:(uint64_t)granted clientAuditToken:(uint64_t)token tccIdentity:(int)identity updateStreamingStatus:(int)status updateAccessStatus:;
- (void)_getClientInfoForTCCIdentity:(uint64_t)identity clientPID:(int)d sessionIsPrewarming:;
- (void)_informMediaSafetyNetWithIsStreaming:(uint64_t)streaming clientAuditToken:(int)token;
- (void)_informPrivacyAccountingWithIsStreaming:(uint64_t)streaming clientInfo:(__int128 *)info clientAuditToken:(uint64_t)token tccIdentity:;
- (void)_updateClientInfoFromSetStreaming:(_OWORD *)streaming clientAuditToken:(uint64_t)token tccIdentity:;
- (void)_updateMicrophoneInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)streaming deviceType:(unsigned int)type maxFrameRate:(float)rate streamUniqueID:(uint64_t)d clientAuditToken:(void *)token;
- (void)_updateSpeakerInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)streaming deviceType:(unsigned int)type streamUniqueID:(int)d clientAuditToken:(void *)token;
- (void)dealloc;
- (void)setCameraAccess:(BOOL)access deviceType:(int)type clientAuditToken:(id *)token tccIdentity:(id)identity mediaEnvironment:(id)environment completionHandler:(id)handler;
- (void)setSessionStateForSessionID:(id)d running:(BOOL)running containsVideoSource:(BOOL)source clientAuditToken:(id *)token tccIdentity:(id)identity mediaEnvironment:(id)environment sessionIsPrewarming:(BOOL)prewarming completionHandler:(id)self0;
- (void)setStreaming:(BOOL)streaming deviceType:(int)type maxFrameRate:(float)rate streamUniqueID:(id)d clientAuditToken:(id *)token tccIdentity:(id)identity mediaEnvironment:(id)environment completionHandler:(id)self0;
@end

@implementation BWCameraStreamingMonitor

+ (id)sharedCameraStreamingMonitor
{
  if (sharedCameraStreamingMonitor_sOnceToken != -1)
  {
    +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  }

  return sharedCameraStreamingMonitor_sSharedBWCameraStreamingMonitor;
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

- (BWCameraStreamingMonitor)initWithMediaStatusDomainPublisher:(id)publisher msnReportingEnabled:(BOOL)enabled systemStatusReportingEnabled:(BOOL)reportingEnabled privacyAccountingAccessLogger:(id)logger
{
  reportingEnabledCopy = reportingEnabled;
  enabledCopy = enabled;
  v14.receiver = self;
  v14.super_class = BWCameraStreamingMonitor;
  v10 = [(BWCameraStreamingMonitor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (reportingEnabledCopy)
    {
      v10->_systemStatusReportingEnabled = reportingEnabledCopy;
      v10->_mediaStatusDomainPublisher = publisher;
      FigCaptureGetCurrentProcessAuditToken(&v16);
      if (FigCaptureClientHasEntitlement(&v16, @"com.apple.systemstatus.activityattribution"))
      {
        *&v16 = 0;
        *(&v16 + 1) = &v16;
        v17 = 0x3052000000;
        v18 = __Block_byref_object_copy__36;
        v12 = getSTDynamicActivityAttributionPublisherClass_softClass;
        v19 = __Block_byref_object_dispose__36;
        v20 = getSTDynamicActivityAttributionPublisherClass_softClass;
        if (!getSTDynamicActivityAttributionPublisherClass_softClass)
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __getSTDynamicActivityAttributionPublisherClass_block_invoke;
          v15[3] = &unk_1E798FC38;
          v15[4] = &v16;
          __getSTDynamicActivityAttributionPublisherClass_block_invoke(v15);
          v12 = *(*(&v16 + 1) + 40);
        }

        _Block_object_dispose(&v16, 8);
        [v12 setCurrentAttributionKey:0 andApp:0x1F2185490];
      }
    }

    if (enabledCopy)
    {
      v11->_msnReportingEnabled = enabledCopy;
    }

    v11->_activeStreamUniqueIDsByClientPID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v11->_cameraStreamingMonitorQueue = FigDispatchQueueCreateWithPriority();
    v11->_clientInfoByPID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_managedClientInfoByBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_privacyAccountingAccessLogger = logger;
    v11->_clientSessionsBySessionID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_activeClientSessionIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraStreamingMonitor;
  [(BWCameraStreamingMonitor *)&v3 dealloc];
}

void __97__BWCameraStreamingMonitor__informSystemStatusWithIsStreaming_clientAuditToken_mediaEnvironment___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    isEqualToString = objc_msgSend_isEqualToString_([*(a1 + 40) extensionPointIdentifier]);
    v12 = *(a1 + 64);
    v54 = *(a1 + 48);
    v55 = v12;
    if (!FigCaptureAuditTokenIsValid(&v54) || (isEqualToString & 1) != 0)
    {
      if (isEqualToString)
      {
        v28 = objc_alloc(getSTExecutableIdentityClass());
        v29 = *(a1 + 64);
        v54 = *(a1 + 48);
        v55 = v29;
        v30 = [v28 initWithAuditToken:&v54];
        v31 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v30];
        v32 = [objc_alloc(getSTExecutableIdentityClass()) initWithApplicationBundleIdentifier:{objc_msgSend(*(a1 + 40), "extensionContainingAppBundleIdentifier")}];
        v33 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v32];
        v34 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v33 activeEntity:v31];
        if (dword_1ED8443D0)
        {
          LODWORD(v47) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [a2 setCameraCaptureAttributions:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v34, v43, v44)}];
      }

      else
      {
        v39 = [objc_alloc(getSTExecutableIdentityClass()) initWithApplicationBundleIdentifier:0x1F216ED50];
        v40 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v39];
        v41 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v40];
        if (dword_1ED8443D0)
        {
          LODWORD(v47) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [a2 setCameraCaptureAttributions:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v41, v43, v44)}];
      }

      return;
    }

    if (dword_1ED8443D0)
    {
      LODWORD(v47) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_25:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_26:
    v36 = MEMORY[0x1E695DFD8];
    STActivityAttributionClass = getSTActivityAttributionClass();
    v38 = *(a1 + 64);
    v54 = *(a1 + 48);
    v55 = v38;
    [a2 setCameraCaptureAttributions:{objc_msgSend(v36, "setWithObject:", objc_msgSend(STActivityAttributionClass, "attributionWithAuditToken:", &v54))}];
    return;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = [objc_msgSend(*(a1 + 40) "rbsProcessHandle")];
  v5 = [v4 countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (!v5)
  {
LABEL_20:
    if (dword_1ED8443D0)
    {
      LODWORD(v47) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v6 = v5;
  v7 = *v51;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v51 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v50 + 1) + 8 * v8);
    if (objc_msgSend_isEqualToString_([v9 endowmentNamespace]))
    {
      if (objc_msgSend_isEqualToString_([v9 environment]))
      {
        v10 = [v9 endowment];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v50 objects:v49 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B06E8]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B06F8]];
  if (!v14)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v17 = objc_alloc(getSTExecutableIdentityClass());
  v18 = *(a1 + 64);
  v54 = *(a1 + 48);
  v55 = v18;
  v19 = [v17 initWithAuditToken:&v54];
  v20 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v19];
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v47 = v21;
  v48 = v21;
  [v14 getBytes:&v47 length:32];
  v54 = v47;
  v55 = v48;
  FigCaptureGetPIDFromAuditToken(&v54);
  v22 = objc_alloc(getSTExecutableIdentityClass());
  v54 = v47;
  v55 = v48;
  v23 = [v22 initWithAuditToken:&v54];
  v24 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v23 website:v16];
  v25 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v24 activeEntity:v20];
  if (dword_1ED8443D0)
  {
    *type = 0;
    v45 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 setCameraCaptureAttributions:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v25, v43, v44)}];
}

uint64_t __97__BWCameraStreamingMonitor__informSystemStatusWithIsStreaming_clientAuditToken_mediaEnvironment___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E695DFD8] set];

  return [a2 setCameraCaptureAttributions:v3];
}

void __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_2;
  v4[3] = &unk_1E798F898;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_4;
  v4[3] = &unk_1E798F898;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

- (void)setStreaming:(BOOL)streaming deviceType:(int)type maxFrameRate:(float)rate streamUniqueID:(id)d clientAuditToken:(id *)token tccIdentity:(id)identity mediaEnvironment:(id)environment completionHandler:(id)self0
{
  if ((type - 17) > 3)
  {
    cameraStreamingMonitorQueue = self->_cameraStreamingMonitorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __144__BWCameraStreamingMonitor_setStreaming_deviceType_maxFrameRate_streamUniqueID_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke;
    block[3] = &unk_1E799B828;
    v12 = *&token->var0[4];
    v14 = *token->var0;
    v15 = v12;
    streamingCopy = streaming;
    block[4] = self;
    block[5] = d;
    typeCopy = type;
    rateCopy = rate;
    block[6] = identity;
    block[7] = handler;
    dispatch_async(cameraStreamingMonitorQueue, block);
  }

  else
  {
    if (dword_1ED8443D0)
    {
      v20 = 0;
      v19 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (handler)
    {
      (*(handler + 2))(handler, a2, *&rate);
    }
  }
}

- (void)setCameraAccess:(BOOL)access deviceType:(int)type clientAuditToken:(id *)token tccIdentity:(id)identity mediaEnvironment:(id)environment completionHandler:(id)handler
{
  cameraStreamingMonitorQueue = self->_cameraStreamingMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__BWCameraStreamingMonitor_setCameraAccess_deviceType_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke;
  block[3] = &unk_1E799B850;
  v9 = *&token->var0[4];
  v11 = *token->var0;
  v12 = v9;
  accessCopy = access;
  block[4] = self;
  block[5] = identity;
  block[6] = environment;
  block[7] = handler;
  dispatch_async(cameraStreamingMonitorQueue, block);
}

- (void)setSessionStateForSessionID:(id)d running:(BOOL)running containsVideoSource:(BOOL)source clientAuditToken:(id *)token tccIdentity:(id)identity mediaEnvironment:(id)environment sessionIsPrewarming:(BOOL)prewarming completionHandler:(id)self0
{
  cameraStreamingMonitorQueue = self->_cameraStreamingMonitorQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v11 = *&token->var0[4];
  v13 = *token->var0;
  v12[2] = __168__BWCameraStreamingMonitor_setSessionStateForSessionID_running_containsVideoSource_clientAuditToken_tccIdentity_mediaEnvironment_sessionIsPrewarming_completionHandler___block_invoke;
  v12[3] = &unk_1E799B878;
  v14 = v11;
  v12[4] = self;
  v12[5] = d;
  prewarmingCopy = prewarming;
  runningCopy = running;
  sourceCopy = source;
  v12[6] = identity;
  v12[7] = environment;
  v12[8] = handler;
  dispatch_async(cameraStreamingMonitorQueue, v12);
}

BWCameraStreamingMonitor *__56__BWCameraStreamingMonitor_sharedCameraStreamingMonitor__block_invoke()
{
  result = SystemStatusLibraryCore(0);
  if (result && (result = getSTActivityAttributionClass()) != 0)
  {
    result = getSTMediaStatusDomainPublisherClass();
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  if (MEMORY[0x1EEE8C550])
  {
    v2 = MEMORY[0x1EEE8C558] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || MEMORY[0x1EEE8C560] == 0 || MEMORY[0x1EEE8C568] == 0;
  v5 = !v4;
  if (!v4 || v1)
  {
    if (v1)
    {
      v6 = [objc_alloc(getSTMediaStatusDomainPublisherClass()) init];
    }

    else
    {
      v6 = 0;
    }

    result = -[BWCameraStreamingMonitor initWithMediaStatusDomainPublisher:msnReportingEnabled:systemStatusReportingEnabled:privacyAccountingAccessLogger:]([BWCameraStreamingMonitor alloc], "initWithMediaStatusDomainPublisher:msnReportingEnabled:systemStatusReportingEnabled:privacyAccountingAccessLogger:", v6, v5, v1, [getPAAccessLoggerClass() sharedInstance]);
    sharedCameraStreamingMonitor_sSharedBWCameraStreamingMonitor = result;
  }

  return result;
}

- (_BYTE)_handleClientDeath:(_BYTE *)result
{
  if (!result)
  {
    return result;
  }

  if (!OUTLINED_FUNCTION_30_12(result))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v11);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
  v5 = [objc_msgSend(a2 "bundle")];
  v6 = (v2 + 48);
  if (![*(v2 + 48) objectForKeyedSubscript:v5])
  {
    v9 = *(v2 + 40);
    v8 = (v2 + 40);
    v10 = [v9 objectForKeyedSubscript:v4];
    if (v10)
    {
      *(v10 + 10) = 1;
    }

    result = [*v8 objectForKeyedSubscript:v4];
    if (result)
    {
      v6 = v8;
      v5 = v4;
      if (result[8])
      {
        return result;
      }
    }

    else
    {
      v6 = v8;
      v5 = v4;
    }

    goto LABEL_16;
  }

  v7 = [*v6 objectForKeyedSubscript:v5];
  if (v7)
  {
    *(v7 + 10) = 1;
  }

  result = [*v6 objectForKeyedSubscript:v5];
  if (!result || (result[8] & 1) == 0)
  {
LABEL_16:
    v12 = *v6;

    return [v12 removeObjectForKey:v5];
  }

  return result;
}

- (double)_informSystemStatusWithIsStreaming:(__int128 *)streaming clientAuditToken:(uint64_t)token mediaEnvironment:
{
  if (!self || *(self + 33) != 1)
  {
    return result;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v21);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a2)
  {
    if (dword_1ED8443D0)
    {
      OUTLINED_FUNCTION_18_27();
      v14 = OUTLINED_FUNCTION_14_36(qword_1ED8443C8);
      if (os_log_type_enabled(v14, v38))
      {
        v15 = v39;
      }

      else
      {
        v15 = v39 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v32 = 136315138;
        v33 = "[BWCameraStreamingMonitor _informSystemStatusWithIsStreaming:clientAuditToken:mediaEnvironment:]";
        LODWORD(v23) = 12;
        v22 = &v32;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = *(self + 16);
    v18 = &__block_literal_global_56;
    goto LABEL_24;
  }

  v8 = streaming[1];
  v36 = *streaming;
  v37 = v8;
  if (!FigCaptureAuditTokenIsValid(&v36))
  {
    v10 = 0;
    goto LABEL_21;
  }

  v9 = streaming[1];
  v36 = *streaming;
  v37 = v9;
  v10 = [FigCaptureProcessHandle handleForAuditToken:&v36 error:0];
  if (v10)
  {
LABEL_21:
    v16 = *(self + 16);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __97__BWCameraStreamingMonitor__informSystemStatusWithIsStreaming_clientAuditToken_mediaEnvironment___block_invoke;
    v27 = &unk_1E799B7B8;
    tokenCopy = token;
    v29 = v10;
    v17 = streaming[1];
    v30 = *streaming;
    v31 = v17;
    v18 = &v24;
    v19 = v16;
LABEL_24:
    [v19 updateVolatileDataWithBlock:{v18, v22, v23, v24, v25, v26, v27, tokenCopy, v29, v30, v31}];
    return result;
  }

  OUTLINED_FUNCTION_18_27();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v12 = v39;
  if (!os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v38))
  {
    v12 &= ~1u;
  }

  if (v12)
  {
    v13 = streaming[1];
    v36 = *streaming;
    v37 = v13;
    v32 = 136315394;
    v33 = "[BWCameraStreamingMonitor _informSystemStatusWithIsStreaming:clientAuditToken:mediaEnvironment:]";
    v34 = 1024;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v36);
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

- (void)_informMediaSafetyNetWithIsStreaming:(uint64_t)streaming clientAuditToken:(int)token
{
  if (streaming && *(streaming + 32) == 1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v25);
    }

    OUTLINED_FUNCTION_4_79();
    FigCaptureGetPIDFromAuditToken(v3);
    if (token)
    {
      OUTLINED_FUNCTION_4_79();
      if (FigCaptureAuditTokenIsValid(v4))
      {
        OUTLINED_FUNCTION_4_79();
        v6 = FigCaptureCopyClientCodeSigningIdentifier(v5);
      }

      else
      {
        v6 = CFRetain(@"com.apple.camera");
      }

      v9 = v6;
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_18_27();
        v10 = OUTLINED_FUNCTION_14_36(qword_1ED8443C8);
        v11 = os_log_type_enabled(v10, v26);
        if (OUTLINED_FUNCTION_12(v11))
        {
          OUTLINED_FUNCTION_6_72();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
          OUTLINED_FUNCTION_141(v12, v13, v14, v15, v16);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v17, v18, v19, v20, v21);
      }

      MSNMonitorSetCameraState();
      OUTLINED_FUNCTION_4_79();
      if (FigCaptureClientIsRunningInXCTest(v22))
      {
        MSNMonitorSetXCTestExceptionState();
        if (!v9)
        {
          return;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_4_79();
      if (FigCaptureClientIsNonStandard(v23) && (OUTLINED_FUNCTION_4_79(), !FigCaptureClientIsAVConferenced(v24)))
      {
        CFStringGetCStringPtr(v9, 0x600u);
      }

      else
      {
        MSNMonitorSetXCTestExceptionState();
      }

      MSNMonitorSetCameraNonStandardCameraClient();
      if (v9)
      {
LABEL_23:
        CFStringGetCStringPtr(v9, 0x600u);
        MSNMonitorSetLastCameraClient();
        CFRelease(v9);
      }
    }

    else
    {
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_18_27();
        v7 = OUTLINED_FUNCTION_14_36(qword_1ED8443C8);
        if (os_log_type_enabled(v7, v26))
        {
          v8 = v27;
        }

        else
        {
          v8 = v27 & 0xFFFFFFFE;
        }

        if (v8)
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MSNMonitorSetCameraState();
      MSNMonitorSetXCTestExceptionState();
      MSNMonitorSetCameraNonStandardCameraClient();
    }
  }
}

- (void)_informPrivacyAccountingWithIsStreaming:(uint64_t)streaming clientInfo:(__int128 *)info clientAuditToken:(uint64_t)token tccIdentity:
{
  if (self)
  {
    v11 = info[1];
    v60 = *info;
    v61 = v11;
    FigCaptureGetPIDFromAuditToken(&v60);
    if (a2)
    {
      if (!streaming)
      {
        goto LABEL_13;
      }

      v12 = *(streaming + 24);
      if (v12)
      {
        [v12 end];
        objc_setProperty_nonatomic(streaming, v13, 0, 24);
      }

      v14 = *(streaming + 16);
      if (v14)
      {
        objc_msgSend_auditToken(v14);
        if (FigCaptureClientIsRunningInMediaserverd(&v60))
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_13:
        v60 = 0u;
        v61 = 0u;
        if (FigCaptureClientIsRunningInMediaserverd(&v60))
        {
          goto LABEL_26;
        }

        if (!streaming)
        {
          goto LABEL_24;
        }
      }

      v17 = *(streaming + 16);
      if (v17)
      {
        objc_msgSend_auditToken(v17);
        goto LABEL_25;
      }

LABEL_24:
      v60 = 0u;
      v61 = 0u;
LABEL_25:
      if (!FigCaptureClientIsAVConferenced(&v60))
      {
        if (!token)
        {
          v42 = info[1];
          v60 = *info;
          v61 = v42;
          if (!FigCaptureAuditTokenIsValid(&v60))
          {
            PATCCAccessClass = getPATCCAccessClass();
            v38 = [PATCCAccessClass accessWithAccessor:objc_msgSend(objc_alloc(getPAApplicationClass()) forService:{"initWithBundleID:", 0x1F216ED50), *MEMORY[0x1E69D5520]}];
            if (dword_1ED8443D0)
            {
              v51 = OUTLINED_FUNCTION_7_63();
              if (OUTLINED_FUNCTION_8_4(v51))
              {
                v52 = v5;
              }

              else
              {
                v52 = v5 & 0xFFFFFFFE;
              }

              if (v52)
              {
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_2_102();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_33;
          }

          if (dword_1ED8443D0)
          {
            OUTLINED_FUNCTION_112();
            v43 = OUTLINED_FUNCTION_77(qword_1ED8443C8);
            v44 = OUTLINED_FUNCTION_15_1(v43);
            if (OUTLINED_FUNCTION_12(v44))
            {
              OUTLINED_FUNCTION_6_72();
              OUTLINED_FUNCTION_5();
              OUTLINED_FUNCTION_2_102();
              OUTLINED_FUNCTION_141(v45, v46, v47, v48, v49);
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_39_0(v53, v54, v55, v56, v57);
          }

          v58 = getPATCCAccessClass();
          if (streaming && (v59 = *(streaming + 16)) != 0)
          {
            objc_msgSend_auditToken(v59);
          }

          else
          {
            v60 = 0u;
            v61 = 0u;
          }

          v37 = [v58 accessWithAuditToken:&v60 forService:*MEMORY[0x1E69D5520]];
LABEL_32:
          v38 = v37;
LABEL_33:
          v39 = [*(self + 56) beginIntervalForAccess:v38];
          if (!streaming)
          {
            return;
          }

          v22 = v39;
          streamingCopy2 = streaming;
          goto LABEL_35;
        }

        tcc_identity_get_identifier();
        [OUTLINED_FUNCTION_8() stringWithUTF8String:?];
        if (dword_1ED8443D0)
        {
          v40 = OUTLINED_FUNCTION_7_63();
          if (OUTLINED_FUNCTION_8_4(v40))
          {
            v41 = v5;
          }

          else
          {
            v41 = v5 & 0xFFFFFFFE;
          }

          if (v41)
          {
            OUTLINED_FUNCTION_78();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_2_102();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v35 = getPATCCAccessClass();
        v36 = [objc_alloc(getPAApplicationClass()) initWithTCCIdentity:token];
LABEL_31:
        v37 = [v35 accessWithAccessor:v36 forService:*MEMORY[0x1E69D5520]];
        goto LABEL_32;
      }

LABEL_26:
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_112();
        v23 = OUTLINED_FUNCTION_77(qword_1ED8443C8);
        v24 = OUTLINED_FUNCTION_15_1(v23);
        if (OUTLINED_FUNCTION_12(v24))
        {
          OUTLINED_FUNCTION_6_72();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
          OUTLINED_FUNCTION_141(v25, v26, v27, v28, v29);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v30, v31, v32, v33, v34);
      }

      v35 = getPATCCAccessClass();
      v36 = [getPAApplicationClass() applicationWithType:0 identifier:0x1F2185490];
      goto LABEL_31;
    }

    if (token)
    {
      [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_112();
        v15 = OUTLINED_FUNCTION_77(qword_1ED8443C8);
        v16 = os_log_type_enabled(v15, v62);
        if (OUTLINED_FUNCTION_5_24(v16))
        {
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
LABEL_20:
          _os_log_send_and_compose_impl();
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else if (dword_1ED8443D0)
    {
      OUTLINED_FUNCTION_112();
      v18 = OUTLINED_FUNCTION_77(qword_1ED8443C8);
      v19 = os_log_type_enabled(v18, v62);
      if (OUTLINED_FUNCTION_5_24(v19))
      {
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_2_102();
        goto LABEL_20;
      }

LABEL_21:
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!streaming)
    {
      [0 end];
      return;
    }

    [*(streaming + 24) end];
    streamingCopy2 = streaming;
    v22 = 0;
LABEL_35:
    objc_setProperty_nonatomic(streamingCopy2, v20, v22, 24);
  }
}

- (uint64_t)_updateCameraStreamingMonitorInfoWithStreaming:(char)streaming cameraAccessGranted:(uint64_t)granted clientAuditToken:(uint64_t)token tccIdentity:(int)identity updateStreamingStatus:(int)status updateAccessStatus:
{
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v25);
  }

  v29 = 0;
  OUTLINED_FUNCTION_20_23();
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v13);
  OUTLINED_FUNCTION_20_23();
  PIDVersionFromAuditToken = FigCaptureGetPIDVersionFromAuditToken(v15);
  v17 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75E0] error:{"identifierWithPid:", PIDFromAuditToken), &v29}];
  if (token)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
    result = [*(v12 + 48) objectForKeyedSubscript:v18];
    v19 = result;
    if (!result)
    {
      v19 = [[BWCameraStreamingMonitorClientInfo alloc] initWithProcessHandle:v17];
      [*(v12 + 48) setObject:v19 forKeyedSubscript:v18];
      if (v19)
      {
        v20 = v19[2];
      }

      else
      {
        v20 = 0;
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke;
      v27[3] = &unk_1E799B800;
      v27[4] = v12;
      v21 = v27;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v22 = [*(v12 + 40) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];
  if (!v22)
  {
    v19 = [[BWCameraStreamingMonitorClientInfo alloc] initWithProcessHandle:v17];
    [*(v12 + 40) setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];
    if (v19)
    {
      v20 = v19[2];
    }

    else
    {
      v20 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_3;
    v26[3] = &unk_1E799B800;
    v26[4] = v12;
    v21 = v26;
LABEL_25:
    result = [v20 monitorForDeath:v21];
    if (!identity)
    {
LABEL_18:
      if (status)
      {
        if (v19)
        {
          *(v19 + 9) = streaming;
        }
      }

      return result;
    }

LABEL_16:
    if (!v19)
    {
      return result;
    }

    *(v19 + 8) = a2;
    goto LABEL_18;
  }

  v19 = v22;
  OUTLINED_FUNCTION_20_23();
  result = FigCaptureAuditTokenIsValid(v23);
  if (!result)
  {
    goto LABEL_15;
  }

  v24 = v19[2];
  if (v24)
  {
    objc_msgSend_auditToken(v24);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  result = FigCaptureGetPIDVersionFromAuditToken(v28);
  if (PIDVersionFromAuditToken == result)
  {
LABEL_15:
    if (!identity)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return result;
}

- (void)_updateClientInfoFromSetStreaming:(_OWORD *)streaming clientAuditToken:(uint64_t)token tccIdentity:
{
  if (self)
  {
    if (!OUTLINED_FUNCTION_30_12(self))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v19);
    }

    v8 = streaming[1];
    v20[0] = *streaming;
    v20[1] = v8;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v20);
    if (token)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
      v11 = *(v4 + 48);
    }

    else
    {
      v12 = *(v4 + 40);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      v11 = v12;
    }

    v13 = [v11 objectForKeyedSubscript:v10];
    if (v13)
    {
      if ((*(v13 + 8) & 1) == 0 && *(v13 + 9) & 1 | (PIDFromAuditToken == -1) && a2)
      {
        if (token)
        {
          tcc_identity_get_identifier();
          v14 = [OUTLINED_FUNCTION_8() stringWithUTF8String:?];
          if (![*(v4 + 48) objectForKeyedSubscript:v14])
          {
            return;
          }

          OUTLINED_FUNCTION_26_20();
          if (!v15)
          {
            return;
          }

          v16 = *(v4 + 48);
          v17 = v14;
LABEL_20:
          [v16 removeObjectForKey:v17];
          return;
        }

        if ([*(v4 + 40) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}])
        {
          OUTLINED_FUNCTION_26_20();
          if (v15)
          {
            v18 = *(v4 + 40);
            v17 = [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
            v16 = v18;
            goto LABEL_20;
          }
        }
      }
    }
  }
}

- (void)_updateSpeakerInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)streaming deviceType:(unsigned int)type streamUniqueID:(int)d clientAuditToken:(void *)token
{
  if (streaming)
  {
    if (FigCaptureSpeakerInterferenceMitigationIsSupported())
    {
      isEqualToString = objc_msgSend_isEqualToString_(token);
      if ((d - 21) <= 0xFFFFFFFB)
      {
        if (isEqualToString)
        {

          FigCaptureSpeakerSetInterferenceMitigationIsRequired(type, 0);
        }
      }
    }
  }
}

- (void)_updateMicrophoneInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)streaming deviceType:(unsigned int)type maxFrameRate:(float)rate streamUniqueID:(uint64_t)d clientAuditToken:(void *)token
{
  if (streaming && FigCaptureMicrophoneInterferenceMitigationIsSupported() && objc_msgSend_isEqualToString_(token))
  {
    if (rate >= 120.0)
    {
      typeCopy = type;
    }

    else
    {
      typeCopy = 0;
    }

    FigCaptureMicrophoneSetInterferenceMitigationIsRequired(typeCopy, 0);
  }
}

- (void)_getClientInfoForTCCIdentity:(uint64_t)identity clientPID:(int)d sessionIsPrewarming:
{
  if (!result)
  {
    return result;
  }

  if (!OUTLINED_FUNCTION_30_12(result))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v10);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_6:
    [MEMORY[0x1E696AD98] numberWithInt:identity];
    result = [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    if (result || !d)
    {
      return result;
    }

    v9 = *(v4 + 40);
    v8 = &unk_1F2246348;
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  v9 = *(v4 + 48);
LABEL_9:

  return [v9 objectForKeyedSubscript:v8];
}

- (double)_updateActiveClientSessionsForSessionID:(uint64_t)d clientSession:(_OWORD *)session clientAuditToken:(uint64_t)token tccIdentity:(uint64_t)identity mediaEnvironment:
{
  if (!self)
  {
    return result;
  }

  if (!OUTLINED_FUNCTION_30_12(self))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v41);
  }

  v10 = session[1];
  v52[0] = *session;
  v52[1] = v10;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v52);
  if (dword_1ED8443D0)
  {
    v54 = 0;
    v53 = OS_LOG_TYPE_DEFAULT;
    v12 = OUTLINED_FUNCTION_29_16();
    v13 = v54;
    if (os_log_type_enabled(v12, v53))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      if (d)
      {
        v15 = *(d + 28);
        v16 = *(d + 29);
        v17 = *(d + 8);
        if (v17)
        {
          LODWORD(v17) = *(v17 + 9);
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        LODWORD(v17) = 0;
      }

      v46 = 136315906;
      v47 = "[BWCameraStreamingMonitor _updateActiveClientSessionsForSessionID:clientSession:clientAuditToken:tccIdentity:mediaEnvironment:]";
      v48 = 1024;
      *v49 = v15;
      *&v49[4] = 1024;
      *&v49[6] = v16;
      v50 = 1024;
      v51 = v17;
      LODWORD(v43) = 30;
      v42 = &v46;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!d || *(d + 28) != 1)
  {
LABEL_24:
    if (![OUTLINED_FUNCTION_23_21() containsObject:?])
    {
      goto LABEL_27;
    }

    dCopy = d;
    [OUTLINED_FUNCTION_23_21() removeObject:?];
    if ([*(v6 + 72) count])
    {
      goto LABEL_26;
    }

    v25 = OUTLINED_FUNCTION_5_73();
    [(BWCameraStreamingMonitor *)v25 _informSystemStatusWithIsStreaming:v26 clientAuditToken:identity mediaEnvironment:?];
    v27 = OUTLINED_FUNCTION_22_22();
    [(BWCameraStreamingMonitor *)v27 _informPrivacyAccountingWithIsStreaming:v28 clientInfo:v29 clientAuditToken:token tccIdentity:?];
    v30 = OUTLINED_FUNCTION_5_73();
    [BWCameraStreamingMonitor _informMediaSafetyNetWithIsStreaming:v30 clientAuditToken:0];
    if (token)
    {
      tcc_identity_get_identifier();
      v31 = [OUTLINED_FUNCTION_7() stringWithUTF8String:?];
      if (![*(v6 + 48) objectForKeyedSubscript:v31])
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_26_20();
      if (!v32)
      {
        goto LABEL_26;
      }

      v33 = *(v6 + 48);
      v34 = v31;
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      if (![OUTLINED_FUNCTION_7() objectForKeyedSubscript:?])
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_26_20();
      if (!v32)
      {
        goto LABEL_26;
      }

      [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      v33 = OUTLINED_FUNCTION_7();
    }

    [v33 removeObjectForKey:{v34, v42, v43}];
LABEL_26:

    goto LABEL_27;
  }

  if (*(d + 29) == 1)
  {
    v18 = *(d + 8);
    if (v18)
    {
      if (*(v18 + 9) == 1)
      {
        if (![OUTLINED_FUNCTION_23_21() containsObject:?])
        {
          [OUTLINED_FUNCTION_23_21() addObject:?];
          v35 = OUTLINED_FUNCTION_5_73();
          [(BWCameraStreamingMonitor *)v35 _informSystemStatusWithIsStreaming:v36 clientAuditToken:identity mediaEnvironment:?];
          v37 = OUTLINED_FUNCTION_22_22();
          [(BWCameraStreamingMonitor *)v37 _informPrivacyAccountingWithIsStreaming:v38 clientInfo:v39 clientAuditToken:token tccIdentity:?];
          v40 = OUTLINED_FUNCTION_5_73();
          [BWCameraStreamingMonitor _informMediaSafetyNetWithIsStreaming:v40 clientAuditToken:1];
          goto LABEL_27;
        }

        if ((*(d + 28) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

  if (*(d + 29) != 1)
  {
    goto LABEL_24;
  }

  v19 = *(d + 8);
  if (!v19 || (*(v19 + 9) & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  if (dword_1ED8443D0)
  {
    v54 = 0;
    v53 = OS_LOG_TYPE_DEFAULT;
    v21 = OUTLINED_FUNCTION_29_16();
    v22 = v54;
    if (os_log_type_enabled(v21, v53))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v24 = [*(v6 + 72) componentsJoinedByString:{@", "}];
      v46 = 136315394;
      v47 = "[BWCameraStreamingMonitor _updateActiveClientSessionsForSessionID:clientSession:clientAuditToken:tccIdentity:mediaEnvironment:]";
      v48 = 2112;
      *v49 = v24;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __144__BWCameraStreamingMonitor_setStreaming_deviceType_maxFrameRate_streamUniqueID_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v45 = *(a1 + 64);
  v46 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v45);
  [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  if (dword_1ED8443D0)
  {
    v5 = OUTLINED_FUNCTION_7_63();
    v6 = OUTLINED_FUNCTION_15_1(v5);
    if (OUTLINED_FUNCTION_12(v6))
    {
      *v43 = 136315906;
      *&v43[4] = "[BWCameraStreamingMonitor setStreaming:deviceType:maxFrameRate:streamUniqueID:clientAuditToken:tccIdentity:mediaEnvironment:completionHandler:]_block_invoke";
      *&v43[12] = 1024;
      *&v43[14] = *(a1 + 104);
      *&v43[18] = 2112;
      *&v43[20] = *(a1 + 40);
      *&v43[28] = 1024;
      *&v43[30] = PIDFromAuditToken;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141(v7, v8, v9, v10, v11);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0(v12, v13, v14, v15, v16);
  }

  [BWCameraStreamingMonitor _updateSpeakerInterferenceMitigationRequirementIfNeededWithIsStreaming:*(a1 + 104) deviceType:*(a1 + 96) streamUniqueID:*(a1 + 40) clientAuditToken:?];
  [BWCameraStreamingMonitor _updateMicrophoneInterferenceMitigationRequirementIfNeededWithIsStreaming:*(a1 + 104) deviceType:*(a1 + 100) maxFrameRate:v17 streamUniqueID:*(a1 + 40) clientAuditToken:?];
  if (*(a1 + 104) == 1)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DFA8] set];
      [*(*(a1 + 32) + 8) setObject:v4 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];
    }

    v23 = [MEMORY[0x1E695DFD8] setWithSet:v4];
    [v4 addObject:*(a1 + 40)];
    if (![v23 count] && objc_msgSend(v4, "count"))
    {
      v29 = *(a1 + 32);
      v30 = *(a1 + 104);
      v31 = *(a1 + 48);
      v32 = *(a1 + 80);
      v45 = *(a1 + 64);
      v46 = v32;
      OUTLINED_FUNCTION_27_16(v29, v30, v24, v25, v31, v26, v27, v28, v41, v42, *v43, *&v43[8], *&v43[16], *&v43[24], *&v43[32], v44);
LABEL_19:
      v38 = *(a1 + 32);
      v39 = *(a1 + 48);
      v40 = *(a1 + 80);
      v45 = *(a1 + 64);
      v46 = v40;
      [(BWCameraStreamingMonitor *)v38 _updateClientInfoFromSetStreaming:&v45 clientAuditToken:v39 tccIdentity:?];
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeObject:*(a1 + 40)];
      if ([v4 count])
      {
        goto LABEL_13;
      }

      [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      [OUTLINED_FUNCTION_8() removeObjectForKey:?];
      v34 = *(a1 + 104);
    }

    else
    {
      v34 = 0;
    }

    v35 = *(a1 + 32);
    v36 = *(a1 + 48);
    v37 = *(a1 + 80);
    v45 = *(a1 + 64);
    v46 = v37;
    OUTLINED_FUNCTION_27_16(v35, v34 & 1, v18, v19, v36, v20, v21, v22, v41, v42, *v43, *&v43[8], *&v43[16], *&v43[24], *&v43[32], v44);
    if (![*(*(a1 + 32) + 8) count])
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __119__BWCameraStreamingMonitor_setCameraAccess_deviceType_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v40);
  if (dword_1ED8443D0)
  {
    OUTLINED_FUNCTION_18_27();
    v4 = OUTLINED_FUNCTION_14_36(qword_1ED8443C8);
    v5 = os_log_type_enabled(v4, v42);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      v6 = *(a1 + 96);
      v34 = 136315650;
      v35 = "[BWCameraStreamingMonitor setCameraAccess:deviceType:clientAuditToken:tccIdentity:mediaEnvironment:completionHandler:]_block_invoke";
      v36 = 1024;
      v37 = v6;
      v38 = 1024;
      v39 = PIDFromAuditToken;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v10;
  [(BWCameraStreamingMonitor *)v8 _updateCameraStreamingMonitorInfoWithStreaming:v7 cameraAccessGranted:&v40 clientAuditToken:v9 tccIdentity:0 updateStreamingStatus:1 updateAccessStatus:?];
  if (*(a1 + 96) == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 80);
    v40 = *(a1 + 64);
    v41 = v15;
    [(BWCameraStreamingMonitor *)v13 _updateClientInfoFromSetStreaming:&v40 clientAuditToken:v14 tccIdentity:?];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = [*(*(a1 + 32) + 64) allValues];
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v31;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          if (v22)
          {
            if (*(v22 + 24) != PIDFromAuditToken)
            {
              goto LABEL_16;
            }

            v23 = *(v22 + 16);
            goto LABEL_19;
          }

          if (!PIDFromAuditToken)
          {
            v23 = 0;
LABEL_19:
            v24 = *(a1 + 32);
            v25 = *(a1 + 40);
            v26 = *(a1 + 48);
            v27 = *(a1 + 80);
            v40 = *(a1 + 64);
            v41 = v27;
            v18 = [(BWCameraStreamingMonitor *)v24 _updateActiveClientSessionsForSessionID:v23 clientSession:v22 clientAuditToken:&v40 tccIdentity:v25 mediaEnvironment:v26];
          }

LABEL_16:
          ++v21;
        }

        while (v19 != v21);
        v28 = [v16 countByEnumeratingWithState:&v30 objects:v29 count:{16, v18}];
        v19 = v28;
      }

      while (v28);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v11);
  }

  return result;
}

uint64_t __168__BWCameraStreamingMonitor_setSessionStateForSessionID_running_containsVideoSource_clientAuditToken_tccIdentity_mediaEnvironment_sessionIsPrewarming_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  v22 = *(a1 + 72);
  v23 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v22);
  v4 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v6 = v4;
    *(v4 + 28) = *(a1 + 105);
    *(v4 + 29) = *(a1 + 106);
  }

  else
  {
    v5 = [(BWCameraStreamingMonitor *)*(a1 + 32) _getClientInfoForTCCIdentity:PIDFromAuditToken clientPID:*(a1 + 104) sessionIsPrewarming:?];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = [[BWCameraStreamingMonitorClientSession alloc] initWithClientInfo:v5 sessionID:*(a1 + 40) clientPID:PIDFromAuditToken running:*(a1 + 105) containsVideoSource:*(a1 + 106)];
    [*(*(a1 + 32) + 64) setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  if (dword_1ED8443D0)
  {
    OUTLINED_FUNCTION_18_27();
    v7 = OUTLINED_FUNCTION_14_36(qword_1ED8443C8);
    v8 = v25;
    if (os_log_type_enabled(v7, v24))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      [*(*(a1 + 32) + 72) componentsJoinedByString:{@", "}];
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0(v10, v11, v12, v13, v14);
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 88);
  v22 = *(a1 + 72);
  v23 = v19;
  v20 = [(BWCameraStreamingMonitor *)v15 _updateActiveClientSessionsForSessionID:v16 clientSession:v6 clientAuditToken:&v22 tccIdentity:v17 mediaEnvironment:v18];
  if ((*(a1 + 105) & 1) == 0)
  {
    [*(*(a1 + 32) + 64) setObject:0 forKeyedSubscript:{*(a1 + 40), v20}];
  }

LABEL_14:
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end