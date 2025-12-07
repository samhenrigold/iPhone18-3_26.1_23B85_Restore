@interface MXRoutingContextReportingRTCServiceImpl
- (MXRoutingContextReportingRTCServiceImpl)initWithFigEndpointType:(id)type routeChangeSucceeded:(BOOL)succeeded;
- (void)_configurationDidFinish;
- (void)dealloc;
- (void)sendModificationResult:(id)result;
@end

@implementation MXRoutingContextReportingRTCServiceImpl

- (MXRoutingContextReportingRTCServiceImpl)initWithFigEndpointType:(id)type routeChangeSucceeded:(BOOL)succeeded
{
  v54 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = MXRoutingContextReportingRTCServiceImpl;
  v5 = [(MXRoutingContextReportingRTCServiceImpl *)&v40 init:type];
  if ([type isEqualToString:*MEMORY[0x1E69626A8]])
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v5->mWorkQueue = dispatch_queue_create("com.apple.mediaexperience.MXRoutingContextReportingRTCServiceImpl.queue", v7);
    v5->mConfigured = 0;
    v5->mConfigurationCondition = objc_alloc_init(MEMORY[0x1E696AB30]);
    v8 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    if (!v8)
    {
      v8 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    }

    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v9 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
    v52 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v10 = RTCReportingLibrary();
      v11 = dlsym(v10, "kRTCReportingSessionInfoClientType");
      *(*(v45 + 1) + 24) = v11;
      getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v9 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v9)
    {
      goto LABEL_32;
    }

    v49[0] = *v9;
    v50[0] = &unk_1F28AF758;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v12 = getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr;
    v52 = getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingSessionInfoClientVersionSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v13 = RTCReportingLibrary();
      v14 = dlsym(v13, "kRTCReportingSessionInfoClientVersion");
      *(*(v45 + 1) + 24) = v14;
      getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v12 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v12)
    {
      goto LABEL_32;
    }

    v49[1] = *v12;
    v50[1] = &unk_1F28AF770;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v15 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
    v52 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v16 = RTCReportingLibrary();
      v17 = dlsym(v16, "kRTCReportingSessionInfoSessionID");
      *(*(v45 + 1) + 24) = v17;
      getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v15 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v15)
    {
      goto LABEL_32;
    }

    v49[2] = *v15;
    v50[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v18 = getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr;
    v52 = getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingSessionInfoBatchEventSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v19 = RTCReportingLibrary();
      v20 = dlsym(v19, "kRTCReportingSessionInfoBatchEvent");
      *(*(v45 + 1) + 24) = v20;
      getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v18 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v18)
    {
      goto LABEL_32;
    }

    v49[3] = *v18;
    v50[3] = &unk_1F28AF770;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v21 = getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr;
    v52 = getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingSessionInfoClientBundleIDSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v22 = RTCReportingLibrary();
      v23 = dlsym(v22, "kRTCReportingSessionInfoClientBundleID");
      *(*(v45 + 1) + 24) = v23;
      getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v21 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v21)
    {
      goto LABEL_32;
    }

    v49[4] = *v21;
    v50[4] = v8;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:5];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v25 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
    v52 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
    if (!getkRTCReportingUserInfoClientNameSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v26 = RTCReportingLibrary();
      v27 = dlsym(v26, "kRTCReportingUserInfoClientName");
      *(*(v45 + 1) + 24) = v27;
      getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v25 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v25)
    {
      goto LABEL_32;
    }

    v47[0] = *v25;
    v48[0] = @"MXRoutingContext";
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v28 = getkRTCReportingUserInfoServiceNameSymbolLoc_ptr;
    v52 = getkRTCReportingUserInfoServiceNameSymbolLoc_ptr;
    if (!getkRTCReportingUserInfoServiceNameSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getkRTCReportingUserInfoServiceNameSymbolLoc_block_invoke;
      v44 = &unk_1E7AE73A0;
      v45 = v51;
      v29 = RTCReportingLibrary();
      v30 = dlsym(v29, "kRTCReportingUserInfoServiceName");
      *(*(v45 + 1) + 24) = v30;
      getkRTCReportingUserInfoServiceNameSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v28 = *(v51[1] + 24);
    }

    _Block_object_dispose(v51, 8);
    if (!v28)
    {
LABEL_32:
      __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      __break(1u);
    }

    v47[1] = *v28;
    v48[1] = @"WHA";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__16;
    v32 = getRTCReportingClass_softClass;
    v45 = __Block_byref_object_dispose__16;
    v46 = getRTCReportingClass_softClass;
    if (!getRTCReportingClass_softClass)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __getRTCReportingClass_block_invoke;
      v52 = &unk_1E7AE73A0;
      v53 = &v41;
      __getRTCReportingClass_block_invoke(v51);
      v32 = *(v42 + 40);
    }

    _Block_object_dispose(&v41, 8);
    v33 = [[v32 alloc] initWithSessionInfo:v24 userInfo:v31 frameworksToCheck:0];
    v5->mRTCReporting = v33;

    objc_initWeak(&location, v5);
    mRTCReporting = v5->mRTCReporting;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __88__MXRoutingContextReportingRTCServiceImpl_initWithFigEndpointType_routeChangeSucceeded___block_invoke;
    v37[3] = &unk_1E7AECD88;
    objc_copyWeak(&v38, &location);
    [mRTCReporting startConfigurationWithCompletionHandler:v37];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {

    return 0;
  }

  return v5;
}

void *__88__MXRoutingContextReportingRTCServiceImpl_initWithFigEndpointType_routeChangeSucceeded___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [objc_loadWeak((a1 + 32)) _configurationDidFinish];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)dealloc
{
  mWorkQueue = self->mWorkQueue;
  if (mWorkQueue)
  {
    dispatch_release(mWorkQueue);
  }

  self->mWorkQueue = 0;

  self->mConfigured = 0;
  v4.receiver = self;
  v4.super_class = MXRoutingContextReportingRTCServiceImpl;
  [(MXRoutingContextReportingRTCServiceImpl *)&v4 dealloc];
}

- (void)_configurationDidFinish
{
  [(NSCondition *)self->mConfigurationCondition lock];
  self->mConfigured = 1;
  [(NSCondition *)self->mConfigurationCondition broadcast];
  mConfigurationCondition = self->mConfigurationCondition;

  [(NSCondition *)mConfigurationCondition unlock];
}

- (void)sendModificationResult:(id)result
{
  mWorkQueue = self->mWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MXRoutingContextReportingRTCServiceImpl_sendModificationResult___block_invoke;
  v4[3] = &unk_1E7AEA340;
  v4[4] = self;
  v4[5] = result;
  dispatch_async(mWorkQueue, v4);
}

void *__66__MXRoutingContextReportingRTCServiceImpl_sendModificationResult___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) lock];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    do
    {
      [*(v2 + 16) wait];
      v2 = *(a1 + 32);
    }

    while (*(v2 + 24) != 1);
  }

  [*(v2 + 16) unlock];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v3 = getkRTCReportingMessageParametersCategorySymbolLoc_ptr;
  v21 = getkRTCReportingMessageParametersCategorySymbolLoc_ptr;
  if (!getkRTCReportingMessageParametersCategorySymbolLoc_ptr)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getkRTCReportingMessageParametersCategorySymbolLoc_block_invoke;
    v16 = &unk_1E7AE73A0;
    v17 = v20;
    v4 = RTCReportingLibrary();
    *(v20[1] + 24) = dlsym(v4, "kRTCReportingMessageParametersCategory");
    getkRTCReportingMessageParametersCategorySymbolLoc_ptr = *(v17[1] + 24);
    v3 = *(v20[1] + 24);
  }

  _Block_object_dispose(v20, 8);
  if (!v3)
  {
    goto LABEL_15;
  }

  v18[0] = *v3;
  v19[0] = &unk_1F28AF770;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v5 = getkRTCReportingMessageParametersTypeSymbolLoc_ptr;
  v21 = getkRTCReportingMessageParametersTypeSymbolLoc_ptr;
  if (!getkRTCReportingMessageParametersTypeSymbolLoc_ptr)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getkRTCReportingMessageParametersTypeSymbolLoc_block_invoke;
    v16 = &unk_1E7AE73A0;
    v17 = v20;
    v6 = RTCReportingLibrary();
    *(v20[1] + 24) = dlsym(v6, "kRTCReportingMessageParametersType");
    getkRTCReportingMessageParametersTypeSymbolLoc_ptr = *(v17[1] + 24);
    v5 = *(v20[1] + 24);
  }

  _Block_object_dispose(v20, 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v18[1] = *v5;
  v19[1] = &unk_1F28AF770;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v7 = getkRTCReportingMessageParametersPayloadSymbolLoc_ptr;
  v21 = getkRTCReportingMessageParametersPayloadSymbolLoc_ptr;
  if (!getkRTCReportingMessageParametersPayloadSymbolLoc_ptr)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getkRTCReportingMessageParametersPayloadSymbolLoc_block_invoke;
    v16 = &unk_1E7AE73A0;
    v17 = v20;
    v8 = RTCReportingLibrary();
    *(v20[1] + 24) = dlsym(v8, "kRTCReportingMessageParametersPayload");
    getkRTCReportingMessageParametersPayloadSymbolLoc_ptr = *(v17[1] + 24);
    v7 = *(v20[1] + 24);
  }

  _Block_object_dispose(v20, 8);
  if (!v7)
  {
LABEL_15:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    __break(1u);
  }

  v18[2] = *v7;
  v19[2] = [*(a1 + 40) RTCDictionary];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v12 = 0;
  result = [*(*(a1 + 32) + 8) sendMessageWithDictionary:v9 error:&v12];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

@end