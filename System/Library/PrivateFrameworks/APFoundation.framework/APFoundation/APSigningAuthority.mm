@interface APSigningAuthority
- (APSigningAuthority)initWithPoolName:(id)name;
- (BOOL)_createAttribute:(void *)attribute enableStashing:(BOOL *)stashing;
- (BOOL)_verifyContext:(void *)context;
- (BOOL)isUsed;
- (BOOL)usingStashedContext;
- (id)_createContext:(void *)context requestStashed:(BOOL *)stashed;
- (id)_failureString:(int64_t)string;
- (id)_getEncodedStringFromFPDIDataRef:(void *)ref withLength:(unsigned int)length;
- (id)_handleInitResponse:(void *)response length:(unsigned int)length forContextRef:(void *)ref error:(id)error;
- (id)_signatureForData:(id)data error:(id *)error;
- (id)signatureForData:(id)data error:(id *)error;
- (void)_destroyObject:(void *)object ofType:(int64_t)type;
- (void)_handleSetupResponse:(void *)response length:(unsigned int)length forContextRef:(unint64_t *)ref error:(id)error;
- (void)_sendInitRequest:(id)request forContextRef:(void *)ref withCompletion:(id)completion;
- (void)_sendSetupRequest:(id)request forContextRef:(unint64_t *)ref withCompletion:(id)completion;
- (void)_setFailureStateWithError:(int64_t)error finalState:(unint64_t)state;
- (void)_setFailureStateWithErrorAndDestroyContext:(int64_t)context finalState:(unint64_t)state contextRef:(void *)ref;
- (void)_setupNewContext:(BOOL)context withCompletion:(id)completion;
- (void)setIsUsed:(BOOL)used;
- (void)setState:(int64_t)state;
- (void)setupWithCompletion:(BOOL)completion completion:(id)a4;
@end

@implementation APSigningAuthority

- (APSigningAuthority)initWithPoolName:(id)name
{
  v53[7] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v50.receiver = self;
  v50.super_class = APSigningAuthority;
  v9 = [(APSigningAuthority *)&v50 init];
  if (v9)
  {
    v49 = nameCopy;
    v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7, v8);
    v53[0] = v10;
    v14 = objc_msgSend_null(MEMORY[0x1E695DFB0], v11, v12, v13);
    v53[1] = v14;
    v18 = objc_msgSend_null(MEMORY[0x1E695DFB0], v15, v16, v17);
    v53[2] = v18;
    v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v19, v20, v21);
    v53[3] = v22;
    v26 = objc_msgSend_null(MEMORY[0x1E695DFB0], v23, v24, v25);
    v53[4] = v26;
    v30 = objc_msgSend_null(MEMORY[0x1E695DFB0], v27, v28, v29);
    v53[5] = v30;
    v34 = objc_msgSend_null(MEMORY[0x1E695DFB0], v31, v32, v33);
    v53[6] = v34;
    v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v53, 7);
    v40 = objc_msgSend_mutableCopy(v36, v37, v38, v39);
    stageDurationIntervals = v9->_stageDurationIntervals;
    v9->_stageDurationIntervals = v40;

    if (objc_msgSend_isAllowedClient(APSigningClientValidator, v42, v43, v44))
    {
      objc_storeStrong(&v9->_poolName, name);
      v9->_failureError = 7204;
      v9->_state = 17005;
      v46 = APPerfLogForCategory(0x30uLL);
      v9->_signpostID = os_signpost_id_generate(v46);
    }

    else
    {
      objc_msgSend__setFailureStateWithError_finalState_(v9, v45, 7206, 0);
      v51 = @"finalStatus";
      v52 = &unk_1F3909010;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, &v52, &v51, 1);
      AnalyticsSendEvent();
    }

    nameCopy = v49;
  }

  return v9;
}

- (void)_setupNewContext:(BOOL)context withCompletion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v6 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "Setting up new context for authority %p", buf, 0xCu);
  }

  objc_msgSend_setState_(self, v7, 17001, v8);
  v31 = 0;
  v15 = objc_msgSend_poolName(self, v9, v10, v11);
  if (!v15 || (objc_msgSend_poolName(self, v12, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_length(v16, v17, v18, v19) == 0, v16, v15, v20))
  {
    contextCopy = 0;
  }

  v21 = objc_msgSend__createContext_requestStashed_(self, v12, &v31, &contextCopy);
  if (v21)
  {
    objc_initWeak(buf, self);
    v22 = v31;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1BAF26CF8;
    v27[3] = &unk_1E7F1D4A8;
    objc_copyWeak(v29, buf);
    v29[1] = v31;
    v27[4] = self;
    v30 = contextCopy;
    v28 = completionCopy;
    objc_msgSend__sendInitRequest_forContextRef_withCompletion_(self, v23, v21, v22, v27);

    objc_destroyWeak(v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      selfCopy = "[APSigningAuthority _setupNewContext:withCompletion:]";
      _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: initRequest nil, FPDI creation failed.", buf, 0xCu);
    }

    objc_msgSend_setState_(self, v25, 7200, v26);
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)_createContext:(void *)context requestStashed:(BOOL *)stashed
{
  v79[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v8 = APPerfLogForCategory(0x30uLL);
  v12 = objc_msgSend_signpostID(self, v9, v10, v11);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ContextCreate", "", buf, 2u);
    }
  }

  v71[8] = 0;
  *v71 = stashed != 0;
  v15 = 0;
  if (objc_msgSend__createAttribute_enableStashing_(self, v14, &v71[1], v71))
  {
    v70 = 0;
    v69 = 0;
    v16 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_INFO, "Signing Authority %p creating context", buf, 0xCu);
    }

    inited = objc_msgSend_FPDICreateContext_withAttribute_initRequest_initRequestLength_(APFPDIWrapper, v17, context, *&v71[1], &v70, &v69);
    if (inited == -44663 || (v20 = inited, inited == -44802))
    {
      v21 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_INFO, "Attempting to re-create stashed context for authority %p as non-stashed", buf, 0xCu);
      }

      objc_msgSend_FPDISetStashingIsEnabled_forAttribute_(APFPDIWrapper, v22, 0, *&v71[1]);
      v24 = objc_msgSend_FPDICreateContext_withAttribute_initRequest_initRequestLength_(APFPDIWrapper, v23, context, *&v71[1], &v70, &v69);
      if (v24 == -44663)
      {
        objc_msgSend__setFailureStateWithError_finalState_(self, v19, 7201, 3);
        objc_msgSend__destroyObject_ofType_(self, v25, &v71[1], 1205);
        v26 = APPerfLogForCategory(0x30uLL);
        v30 = objc_msgSend_signpostID(self, v27, v28, v29);
        if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = v30;
          if (os_signpost_enabled(v26))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1BADC1000, v26, OS_SIGNPOST_INTERVAL_END, v31, "ContextCreate", " enableTelemetry=YES ", buf, 2u);
          }
        }

        v32 = MEMORY[0x1E696AD98];
        v33 = CFAbsoluteTimeGetCurrent();
        v37 = objc_msgSend_numberWithDouble_(v32, v34, v35, v36, (v33 - Current) * 1000.0);
        v41 = objc_msgSend_stageDurationIntervals(self, v38, v39, v40);
        objc_msgSend_setObject_atIndexedSubscript_(v41, v42, v37, 3);

        v78 = @"finalStatus";
        v79[0] = &unk_1F3909028;
        v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, v79, &v78, 1);
        AnalyticsSendEvent();
        v15 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v20 = v24;
    }

    if (v20)
    {
      v45 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136643075;
        selfCopy3 = "[APSigningAuthority _createContext:requestStashed:]";
        v76 = 1025;
        v77 = v20;
        _os_log_impl(&dword_1BADC1000, v45, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Attribution set privacy level error, FPDI creation failed. Status: %{private}d", buf, 0x12u);
      }

      objc_msgSend__setFailureStateWithError_finalState_(self, v46, 7200, 3);
      objc_msgSend__destroyObject_ofType_(self, v47, &v71[1], 1205);
      v72 = @"finalStatus";
      v73 = &unk_1F3909040;
      v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, &v73, &v72, 1);
      AnalyticsSendEvent();
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend__getEncodedStringFromFPDIDataRef_withLength_(self, v19, v70, v69);
      objc_msgSend__destroyObject_ofType_(self, v50, &v71[1], 1205);
      objc_msgSend__destroyObject_ofType_(self, v51, &v70, 1206);
      v49 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_1BADC1000, v49, OS_LOG_TYPE_INFO, "Signing Authority %p finished creating context", buf, 0xCu);
      }
    }

    v52 = APPerfLogForCategory(0x30uLL);
    v56 = objc_msgSend_signpostID(self, v53, v54, v55);
    if ((v56 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v57 = v56;
      if (os_signpost_enabled(v52))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BADC1000, v52, OS_SIGNPOST_INTERVAL_END, v57, "ContextCreate", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v58 = MEMORY[0x1E696AD98];
    v59 = CFAbsoluteTimeGetCurrent();
    v44 = objc_msgSend_numberWithDouble_(v58, v60, v61, v62, (v59 - Current) * 1000.0);
    v66 = objc_msgSend_stageDurationIntervals(self, v63, v64, v65);
    objc_msgSend_setObject_atIndexedSubscript_(v66, v67, v44, 3);

    goto LABEL_27;
  }

LABEL_28:

  return v15;
}

- (BOOL)_createAttribute:(void *)attribute enableStashing:(BOOL *)stashing
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_FPDIInitAttribute_(APFPDIWrapper, a2, attribute, stashing) && objc_msgSend_FPDISetHighPrivacyLevelForAttribute_(APFPDIWrapper, v7, *attribute, v8))
  {
    v9 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = 136642819;
      *v20 = "[APSigningAuthority _createAttribute:enableStashing:]";
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Attribution initialization error, FPDI creation failed", &v19, 0xCu);
    }

    objc_msgSend__setFailureStateWithError_finalState_(self, v10, 7200, 4);
    objc_msgSend__destroyObject_ofType_(self, v11, attribute, 1205);
    v23 = @"finalStatus";
    v24[0] = &unk_1F3909058;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v24, &v23, 1);
    AnalyticsSendEvent();

    return 0;
  }

  else
  {
    IsEnabled_forAttribute = objc_msgSend_FPDISetStashingIsEnabled_forAttribute_(APFPDIWrapper, v7, stashing != 0, *attribute);
    if (IsEnabled_forAttribute)
    {
      v16 = IsEnabled_forAttribute;
      v17 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = @"NO";
        v19 = 67109634;
        *v20 = v16;
        if (stashing)
        {
          v18 = @"YES";
        }

        *&v20[4] = 2112;
        *&v20[6] = v18;
        v21 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "Error %d setting stash attribute to %@ for signing authority %p", &v19, 0x1Cu);
      }

      *stashing = 0;
    }

    return 1;
  }
}

- (void)_sendInitRequest:(id)request forContextRef:(void *)ref withCompletion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "Signing Authority %p sending init request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = APPerfLogForCategory(0x30uLL);
  v16 = objc_msgSend_signpostID(self, v13, v14, v15);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v47 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ContextInit", "", v47, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1BAF27B50;
  aBlock[3] = &unk_1E7F1D4D0;
  objc_copyWeak(v46, buf);
  aBlock[4] = self;
  v46[1] = *&Current;
  v46[2] = ref;
  v17 = completionCopy;
  v45 = v17;
  v18 = _Block_copy(aBlock);
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, v19, v20, v21))
  {
    goto LABEL_11;
  }

  v22 = objc_alloc_init(APSigningAuthoritySettings);
  v26 = objc_msgSend_failContextServerInit(v22, v23, v24, v25);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);

  if (!v30 || (objc_msgSend_failContextServerInit(v22, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_integerValue(v34, v35, v36, v37), v34, v38 <= dword_1EBC37098))
  {

LABEL_11:
    v22 = objc_alloc_init(APSigningServerRequestor);
    objc_msgSend_sendRequestForData_requestType_completionHandler_(v22, v41, requestCopy, 1301, v18);
    goto LABEL_12;
  }

  v39 = dispatch_time(0, 10000000000);
  v40 = dispatch_queue_create("com.apple.ap.signingauthority.fail_init", 0);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1BAF27D64;
  v42[3] = &unk_1E7F1D4F8;
  v43 = v18;
  dispatch_after(v39, v40, v42);

  ++dword_1EBC37098;
LABEL_12:

  objc_destroyWeak(v46);
  objc_destroyWeak(buf);
}

- (id)_handleInitResponse:(void *)response length:(unsigned int)length forContextRef:(void *)ref error:(id)error
{
  v7 = *&length;
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v11 = APLogForCategory(0x30uLL);
  v12 = v11;
  if (!response || errorCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      selfCopy2 = "[APSigningAuthority _handleInitResponse:length:forContextRef:error:]";
      v34 = 2112;
      v35 = errorCopy;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to receive init reponse, FPDI setup has failed.\n%@", buf, 0x16u);
    }

    objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(self, v21, 7205, 5, ref);
    v30 = @"finalStatus";
    v31 = &unk_1F3909070;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v31, &v30, 1);
    AnalyticsSendEvent();

    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_INFO, "Signing Authority %p handling init response", buf, 0xCu);
    }

    v27 = 0;
    v26 = 0;
    if (objc_msgSend_FPDIInitContext_withInitResponse_initResponseLength_setupRequest_setupRequestLength_(APFPDIWrapper, v13, ref, response, v7, &v27, &v26))
    {
      v15 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136642819;
        selfCopy2 = "[APSigningAuthority _handleInitResponse:length:forContextRef:error:]";
        _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to receive setup request, FPDI setup has failed.", buf, 0xCu);
      }

      objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(self, v16, 7205, 6, ref);
      v28 = @"finalStatus";
      v29 = &unk_1F3909088;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v29, &v28, 1);
      AnalyticsSendEvent();

      v20 = 0;
    }

    else
    {
      v20 = objc_msgSend__getEncodedStringFromFPDIDataRef_withLength_(self, v14, v27, v26);
    }

    objc_msgSend__destroyObject_ofType_(self, v19, &v27, 1206);
  }

  v24 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_INFO, "Signing Authority %p finished handling init response", buf, 0xCu);
  }

  return v20;
}

- (void)_sendSetupRequest:(id)request forContextRef:(unint64_t *)ref withCompletion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "Signing Authority %p sending setup request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = APPerfLogForCategory(0x30uLL);
  v16 = objc_msgSend_signpostID(self, v13, v14, v15);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v50 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ContextSetup", "", v50, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1BAF28520;
  aBlock[3] = &unk_1E7F1D4D0;
  objc_copyWeak(v49, buf);
  aBlock[4] = self;
  v49[1] = *&Current;
  v49[2] = ref;
  v17 = completionCopy;
  v48 = v17;
  v18 = _Block_copy(aBlock);
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, v19, v20, v21))
  {
    goto LABEL_11;
  }

  v22 = objc_alloc_init(APSigningAuthoritySettings);
  v26 = objc_msgSend_failContextServerSetup(v22, v23, v24, v25);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);

  if (!v30 || (objc_msgSend_failContextServerSetup(v22, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_integerValue(v34, v35, v36, v37), v34, v38 <= dword_1EBC3709C))
  {

LABEL_11:
    v22 = objc_alloc_init(APSigningServerRequestor);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1BAF2880C;
    v43[3] = &unk_1E7F1D520;
    v44 = v18;
    objc_msgSend_sendRequestForData_requestType_completionHandler_(v22, v42, requestCopy, 1302, v43);
    v41 = &v44;
    goto LABEL_12;
  }

  v39 = dispatch_time(0, 10000000000);
  v40 = dispatch_queue_create("com.apple.ap.signingauthority.fail_init", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF28724;
  block[3] = &unk_1E7F1D4F8;
  v46 = v18;
  dispatch_after(v39, v40, block);

  v41 = &v46;
  ++dword_1EBC3709C;
LABEL_12:

  objc_destroyWeak(v49);
  objc_destroyWeak(buf);
}

- (void)_handleSetupResponse:(void *)response length:(unsigned int)length forContextRef:(unint64_t *)ref error:(id)error
{
  v8 = *&length;
  v36 = *MEMORY[0x1E69E9840];
  v11 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_INFO, "Signing Authority %p handling setup response", buf, 0xCu);
  }

  if (!response || error)
  {
    v18 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      selfCopy2 = "[APSigningAuthority _handleSetupResponse:length:forContextRef:error:]";
      _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to receive init reponse, FPDI setup has failed.", buf, 0xCu);
    }

    objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(self, v19, 7205, 7, ref);
    v32 = @"finalStatus";
    v33 = &unk_1F39090A0;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v33, &v32, 1);
    AnalyticsSendEvent();
  }

  else
  {
    v13 = objc_msgSend_FPDISetupContext_withSetupResponse_setupResponseLength_(APFPDIWrapper, v12, ref, response, v8);
    v14 = APLogForCategory(0x30uLL);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136642819;
        selfCopy2 = "[APSigningAuthority _handleSetupResponse:length:forContextRef:error:]";
        _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to set setup response, FPDI setup has failed.", buf, 0xCu);
      }

      objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(self, v16, 7205, 8, ref);
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v31, &v30, 1, v28, v29, @"finalStatus", &unk_1F39090B8);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136642819;
        selfCopy2 = "[APSigningAuthority _handleSetupResponse:length:forContextRef:error:]";
        _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_DEBUG, "[%{sensitive}s]: FPDI setup has succeeded.", buf, 0xCu);
      }

      objc_msgSend_setState_(self, v22, 17002, v23);
      objc_msgSend_setFinalState_(self, v24, 9, v25);
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, &v29, &v28, 1, @"finalStatus", &unk_1F39090D0, v30, v31);
    }
    v27 = ;
    AnalyticsSendEvent();

    v21 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_INFO, "Signing Authority %p finished setup response", buf, 0xCu);
    }
  }
}

- (BOOL)_verifyContext:(void *)context
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Signing Authority %p verifying stored context", buf, 0xCu);
  }

  v8 = objc_msgSend_dataUsingEncoding_(@"verificationContext", v6, 4, v7);
  v9 = v8;
  v13 = objc_msgSend_bytes(v9, v10, v11, v12);
  v17 = objc_msgSend_length(v8, v14, v15, v16);
  v29 = 0;
  v28 = 0;
  v19 = objc_msgSend_FPDISignWithContext_message_messageLength_rawSignature_rawSignatureLength_(APFPDIWrapper, v18, context, v13, v17, &v29, &v28);
  v20 = APLogForCategory(0x30uLL);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_INFO, "FPDI context for signing authority %p is not valid.", buf, 0xCu);
    }

    v30 = @"finalStatus";
    v31 = &unk_1F39090E8;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v31, &v30, 1);
    AnalyticsSendEvent();
  }

  else
  {
    if (v21)
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_INFO, "Signing Authority %p verified context", buf, 0xCu);
    }

    objc_msgSend_setState_(self, v25, 17002, v26);
  }

  objc_msgSend__destroyObject_ofType_(self, v24, &v29, 1206);

  return v19 == 0;
}

- (void)_destroyObject:(void *)object ofType:(int64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  if (type == 1207)
  {
    if (!objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, a2, object, 1207))
    {
      goto LABEL_10;
    }
  }

  else if (type == 1206)
  {
    if (!objc_msgSend_FPDIDestroyData_(APFPDIWrapper, a2, object, 1206))
    {
      goto LABEL_10;
    }
  }

  else if (type != 1205 || !objc_msgSend_FPDIDestroyAttribute_(APFPDIWrapper, a2, object, 1205))
  {
LABEL_10:
    v5 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 136643075;
      v10 = "[APSigningAuthority _destroyObject:ofType:]";
      v11 = 2050;
      typeCopy2 = type;
      v6 = "[%{sensitive}s]: Successfully destroyed an object of type %{public}ld";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136643075;
    v10 = "[APSigningAuthority _destroyObject:ofType:]";
    v11 = 2050;
    typeCopy2 = type;
    v6 = "[%{sensitive}s]: Unsuccessfully attempted to destroy an object of type %{public}ld, object possibly no longer exists.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
LABEL_12:
    _os_log_impl(&dword_1BADC1000, v7, v8, v6, &v9, 0x16u);
  }

LABEL_13:
}

- (id)_getEncodedStringFromFPDIDataRef:(void *)ref withLength:(unsigned int)length
{
  v4 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, ref, length);
  v7 = objc_msgSend_base64EncodedStringWithOptions_(v4, v5, 0, v6);

  return v7;
}

- (id)_failureString:(int64_t)string
{
  if ((string - 7200) <= 6)
  {
    a2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, off_1E7F1D5B8[string - 7200], v3, self);
  }

  return a2;
}

- (void)_setFailureStateWithError:(int64_t)error finalState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  objc_msgSend_setFailureError_(self, a2, error, state);
  objc_msgSend_setFinalState_(self, v7, state, v8);
  objc_msgSend_setState_(self, v9, 17003, v10);
  v13 = objc_msgSend__failureString_(self, v11, error, v12);
  v14 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "%{public}@", &v15, 0xCu);
  }
}

- (void)_setFailureStateWithErrorAndDestroyContext:(int64_t)context finalState:(unint64_t)state contextRef:(void *)ref
{
  objc_msgSend__setFailureStateWithError_finalState_(self, a2, context, state);
  if (ref)
  {
    v11 = objc_msgSend_poolName(self, v7, v8, v9);
    objc_msgSend_removeContextForPool_contextIdentifier_(APSigningContextStorage, v10, v11, ref);
  }
}

- (id)_signatureForData:(id)data error:(id *)error
{
  v70[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (objc_msgSend_state(self, v7, v8, v9) == 17002)
  {
    v13 = objc_msgSend_signingContextStorage(self, v10, v11, v12);
    objc_msgSend_setUsed_(v13, v14, 1, v15);

    v16 = dataCopy;
    v20 = objc_msgSend_bytes(v16, v17, v18, v19);
    v24 = objc_msgSend_length(dataCopy, v21, v22, v23);
    v62 = 0;
    v61 = 0;
    v28 = objc_msgSend_signingContextStorage(self, v25, v26, v27);
    v32 = objc_msgSend_contextRef(v28, v29, v30, v31);
    v34 = objc_msgSend_FPDISignWithContext_message_messageLength_rawSignature_rawSignatureLength_(APFPDIWrapper, v33, v32, v20, v24, &v62, &v61);

    if (v34)
    {
      if (error)
      {
        v37 = MEMORY[0x1E696ABC0];
        v63 = *MEMORY[0x1E696A578];
        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"failed with error code %d.", v36, v34);
        v64 = v38;
        v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v39, &v64, &v63, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v37, v41, @"com.apple.ap.signingAuthorityErrorDomain", 7202, v40);
      }

      v42 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136643075;
        v66 = "[APSigningAuthority _signatureForData:error:]";
        v67 = 1024;
        LODWORD(v68) = v34;
        _os_log_impl(&dword_1BADC1000, v42, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: FairPlaySAPSign failed with error code %d. Unable to generate signature - disabling request signing.", buf, 0x12u);
      }

      v46 = objc_msgSend_signingContextStorage(self, v43, v44, v45);
      v50 = objc_msgSend_contextRef(v46, v47, v48, v49);

      objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(self, v51, 7202, 1, v50);
      v53 = 0;
    }

    else
    {
      v58 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136642819;
        v66 = "[APSigningAuthority _signatureForData:error:]";
        _os_log_impl(&dword_1BADC1000, v58, OS_LOG_TYPE_DEBUG, "[%{sensitive}s]: Successfully got a signature", buf, 0xCu);
      }

      v53 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v59, v62, v61);
    }

    objc_msgSend__destroyObject_ofType_(self, v52, &v62, 1206);
  }

  else
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v69 = *MEMORY[0x1E696A578];
      v70[0] = @"Signing authority is not setup, can not sign data";
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v70, &v69, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v54, v56, @"com.apple.ap.signingAuthorityErrorDomain", 7202, v55);
    }

    v57 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      v66 = "[APSigningAuthority _signatureForData:error:]";
      v67 = 2114;
      v68 = @"Signing authority is not setup, can not sign data";
      _os_log_impl(&dword_1BADC1000, v57, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: %{public}@", buf, 0x16u);
    }

    v53 = 0;
  }

  return v53;
}

- (BOOL)isUsed
{
  v4 = objc_msgSend_signingContextStorage(self, a2, v2, v3);
  v8 = objc_msgSend_used(v4, v5, v6, v7);

  return v8;
}

- (void)setIsUsed:(BOOL)used
{
  usedCopy = used;
  v7 = objc_msgSend_signingContextStorage(self, a2, used, v3);
  objc_msgSend_setUsed_(v7, v5, usedCopy, v6);
}

- (BOOL)usingStashedContext
{
  v4 = objc_msgSend_signingContextStorage(self, a2, v2, v3);
  v8 = objc_msgSend_stashed(v4, v5, v6, v7);

  return v8;
}

- (void)setState:(int64_t)state
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_state(self, v6, v7, v8);
    if ((v9 - 17000) > 4)
    {
      v10 = @"invalid";
    }

    else
    {
      v10 = off_1E7F1D5F0[v9 - 17000];
    }

    if ((state - 17000) > 4)
    {
      v11 = @"invalid";
    }

    else
    {
      v11 = off_1E7F1D5F0[state - 17000];
    }

    v12 = 134218498;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "SigningAuthority %p state %@ -> %@", &v12, 0x20u);
  }

  self->_state = state;
}

- (void)setupWithCompletion:(BOOL)completion completion:(id)a4
{
  completionCopy = completion;
  v132[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = APPerfLogForCategory(0x30uLL);
  v12 = objc_msgSend_signpostID(self, v9, v10, v11);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v13, "TotalSetupTime", "", buf, 2u);
    }
  }

  if (!completionCopy)
  {
    goto LABEL_28;
  }

  v14 = CFAbsoluteTimeGetCurrent();
  v15 = APPerfLogForCategory(0x30uLL);
  v19 = objc_msgSend_signpostID(self, v16, v17, v18);
  if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v20, "CacheReadTime", "", buf, 2u);
    }
  }

  v24 = objc_msgSend_poolName(self, v21, v22, v23);
  v27 = objc_msgSend_retrieveAvailableStashedContextsForPool_(APSigningContextStorage, v25, v24, v26);

  v28 = APPerfLogForCategory(0x30uLL);
  v32 = objc_msgSend_signpostID(self, v29, v30, v31);
  if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v33 = v32;
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v28, OS_SIGNPOST_INTERVAL_END, v33, "CacheReadTime", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v34 = MEMORY[0x1E696AD98];
  v35 = CFAbsoluteTimeGetCurrent();
  v39 = objc_msgSend_numberWithDouble_(v34, v36, v37, v38, (v35 - v14) * 1000.0);
  v43 = objc_msgSend_stageDurationIntervals(self, v40, v41, v42);
  objc_msgSend_setObject_atIndexedSubscript_(v43, v44, v39, 1);

  if (!objc_msgSend_count(v27, v45, v46, v47))
  {
LABEL_27:

LABEL_28:
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = sub_1BAF29CF8;
    v128[3] = &unk_1E7F1D548;
    v128[4] = self;
    v129 = v6;
    objc_msgSend__setupNewContext_withCompletion_(self, v127, completionCopy, v128);

    goto LABEL_29;
  }

  v50 = objc_msgSend_objectAtIndexedSubscript_(v27, v48, 0, v49);
  v54 = objc_msgSend_contextRef(v50, v51, v52, v53);

  v55 = CFAbsoluteTimeGetCurrent();
  v56 = APPerfLogForCategory(0x30uLL);
  v60 = objc_msgSend_signpostID(self, v57, v58, v59);
  if ((v60 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v61 = v60;
    if (os_signpost_enabled(v56))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v56, OS_SIGNPOST_INTERVAL_BEGIN, v61, "VerifyCachedContext", "", buf, 2u);
    }
  }

  v64 = objc_msgSend__verifyContext_(self, v62, v54, v63);
  v65 = APPerfLogForCategory(0x30uLL);
  v69 = objc_msgSend_signpostID(self, v66, v67, v68);
  v70 = v69;
  if (!v64)
  {
    if ((v69 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v65, OS_SIGNPOST_INTERVAL_END, v70, "VerifyCachedContext", " enableTelemetry=YES ", buf, 2u);
    }

    v111 = MEMORY[0x1E696AD98];
    v112 = CFAbsoluteTimeGetCurrent();
    v116 = objc_msgSend_numberWithDouble_(v111, v113, v114, v115, (v112 - v55) * 1000.0);
    v120 = objc_msgSend_stageDurationIntervals(self, v117, v118, v119);
    objc_msgSend_setObject_atIndexedSubscript_(v120, v121, v116, 2);

    v125 = objc_msgSend_poolName(self, v122, v123, v124);
    objc_msgSend_removeContextForPool_contextIdentifier_(APSigningContextStorage, v126, v125, v54);

    goto LABEL_27;
  }

  if ((v69 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v65, OS_SIGNPOST_INTERVAL_END, v70, "VerifyCachedContext", " enableTelemetry=YES ", buf, 2u);
  }

  v71 = MEMORY[0x1E696AD98];
  v72 = CFAbsoluteTimeGetCurrent();
  v76 = objc_msgSend_numberWithDouble_(v71, v73, v74, v75, (v72 - v55) * 1000.0);
  v80 = objc_msgSend_stageDurationIntervals(self, v77, v78, v79);
  objc_msgSend_setObject_atIndexedSubscript_(v80, v81, v76, 2);

  v82 = [APSigningContextStorage alloc];
  v86 = objc_msgSend_poolName(self, v83, v84, v85);
  v88 = objc_msgSend_initWithContextRef_poolName_stashed_(v82, v87, v54, v86, 1);
  signingContextStorage = self->_signingContextStorage;
  self->_signingContextStorage = v88;

  v90 = APPerfLogForCategory(0x30uLL);
  v94 = objc_msgSend_signpostID(self, v91, v92, v93);
  if ((v94 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v95 = v94;
    if (os_signpost_enabled(v90))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v90, OS_SIGNPOST_INTERVAL_END, v95, "TotalSetupTime", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v96 = MEMORY[0x1E696AD98];
  v97 = CFAbsoluteTimeGetCurrent();
  v101 = objc_msgSend_numberWithDouble_(v96, v98, v99, v100, (v97 - Current) * 1000.0);
  v105 = objc_msgSend_stageDurationIntervals(self, v102, v103, v104);
  objc_msgSend_setObject_atIndexedSubscript_(v105, v106, v101, 0);

  v131 = @"finalStatus";
  v132[0] = &unk_1F3909100;
  v108 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v107, v132, &v131, 1);
  AnalyticsSendEvent();

  objc_msgSend_setFinalState_(self, v109, 10, v110);
  (*(v6 + 2))(v6, self);

LABEL_29:
}

- (id)signatureForData:(id)data error:(id *)error
{
  v6 = objc_msgSend_sha256(data, a2, data, error);
  v8 = objc_msgSend__signatureForData_error_(self, v7, v6, error);

  return v8;
}

@end