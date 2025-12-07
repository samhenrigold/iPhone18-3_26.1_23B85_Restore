@interface FigCaptureSessionAttachedSessionManager
+ (void)initialize;
- (FigCaptureSessionAttachedSessionManager)init;
- (double)_generateStateLog;
- (uint64_t)attachToRunningSession:(uint64_t)session;
- (void)_startNextSession;
- (void)_stopAttachedSessionsAndRemoveHostSession:(void *)result;
- (void)sessionDidReconfigure:(uint64_t)reconfigure;
- (void)sessionDidStartRunning:(char)running sessionContainsVideoSource:(char)source sessionContainsCameraSource:;
- (void)sessionDidStopRunning:(char)running captureDeviceStolen:(char)stolen sessionIsEligibleToAttach:(char)attach clientStartedSession:;
- (void)sessionInvalidated:(uint64_t)invalidated;
@end

@implementation FigCaptureSessionAttachedSessionManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureSessionAttachedSessionManager)init
{
  v5.receiver = self;
  v5.super_class = FigCaptureSessionAttachedSessionManager;
  v2 = [(FigCaptureSessionAttachedSessionManager *)&v5 init];
  if (v2)
  {
    if (dword_1EB58E660)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2->_queue = dispatch_queue_create("com.apple.coremedia.capturesessionattachedsessionmanager", 0);
    v2->_attachedSessions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_detachingSessions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_sessionsToStart = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_incompatibleSessions = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (double)_generateStateLog
{
  if (self)
  {
    if (dword_1EB58E660)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  if (dword_1EB58E660)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ++*(*(a1 + 32) + 72);
  v4 = *(a1 + 32);
  if (*(a1 + 40) == v4[1])
  {
    __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke_cold_1(v4, v2, v6);
    v4 = v6[0];
  }

  [(FigCaptureSessionAttachedSessionManager *)v4 _generateStateLog];
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __62__FigCaptureSessionAttachedSessionManager_sessionInvalidated___block_invoke(uint64_t a1)
{
  State = [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  ++*(*(a1 + 32) + 72);
  if (dword_1EB58E660)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(*(a1 + 32) + 56) removeObject:{*(a1 + 40), State, v7, v8}];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5 == *(a1 + 40))
  {
    if (v5)
    {
      CFRelease(*(v4 + 16));
      *(*(a1 + 32) + 16) = 0;
      v4 = *(a1 + 32);
    }

    [(FigCaptureSessionAttachedSessionManager *)v4 _startNextSession];
    v4 = *(a1 + 32);
  }

  [(FigCaptureSessionAttachedSessionManager *)v4 _generateStateLog];
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }
}

- (uint64_t)attachToRunningSession:(uint64_t)session
{
  if (session)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = *(session + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__FigCaptureSessionAttachedSessionManager_attachToRunningSession___block_invoke;
    block[3] = &unk_1E79973C8;
    block[5] = &v6;
    block[6] = a2;
    block[4] = session;
    dispatch_sync(v2, block);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double __66__FigCaptureSessionAttachedSessionManager_attachToRunningSession___block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (!v3 && dword_1EB58E660)
  {
    v4 = OUTLINED_FUNCTION_6_42();
    v5 = OUTLINED_FUNCTION_96(v4);
    if (OUTLINED_FUNCTION_6(v5))
    {
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_4_48(v6, v7, v8, v9, &dword_1AC90E000, v10, v11, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s:  %@ cannot attach because there is nothing to attach to.", v68, v69, v70, v71, *(&v71 + 1), v72, *v75, *&v75[8], v76, SHIBYTE(v76));
      OUTLINED_FUNCTION_16_22();
    }

    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_17_8(v12, v13, v14, v15, v16);
    v2 = a1[4];
    v3 = *(v2 + 8);
  }

  if (v3)
  {
    [(FigCaptureSessionAttachedSessionManager *)v2 _generateStateLog];
    if (dword_1EB58E660)
    {
      v17 = OUTLINED_FUNCTION_6_42();
      v18 = OUTLINED_FUNCTION_96(v17);
      if (OUTLINED_FUNCTION_6(v18))
      {
        OUTLINED_FUNCTION_14_20();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_4_48(v19, v20, v21, v22, &dword_1AC90E000, v23, v24, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Attempting to attach %@ to a host session.", v68, v69, v70, v71, *(&v71 + 1), v72, *v75, *&v75[8], v76, SHIBYTE(v76));
        OUTLINED_FUNCTION_16_22();
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_17_8(v25, v26, v27, v28, v29);
    }

    v30 = FigCaptureSessionAttachSession(*(a1[4] + 8), a1[6]);
    if (v30 == 2)
    {
      [*(a1[4] + 48) removeObject:a1[6]];
      if (([*(a1[4] + 56) containsObject:a1[6]] & 1) == 0)
      {
        [*(a1[4] + 56) addObject:a1[6]];
      }

      if (!dword_1EB58E660)
      {
        goto LABEL_29;
      }

      v52 = OUTLINED_FUNCTION_6_42();
      v53 = OUTLINED_FUNCTION_96(v52);
      if (!OUTLINED_FUNCTION_6(v53))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_14_20();
      WORD2(v71) = 2112;
      *(&v71 + 6) = v54;
      HIWORD(v71) = 2112;
      v74 = v55;
      *v75 = 2112;
      *&v75[2] = v56;
      OUTLINED_FUNCTION_5();
      v51 = "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Session %@ incompatible with host %@. Incompatible sessions: %@";
    }

    else
    {
      if (v30 != 1)
      {
        if (!v30 && dword_1EB58E660)
        {
          v31 = OUTLINED_FUNCTION_6_42();
          v32 = OUTLINED_FUNCTION_96(v31);
          if (OUTLINED_FUNCTION_6(v32))
          {
            OUTLINED_FUNCTION_14_20();
            WORD2(v71) = 2112;
            *(&v71 + 6) = v33;
            HIWORD(v71) = 2112;
            v73 = v34;
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_4_48(v35, v36, v37, v38, &dword_1AC90E000, v39, v40, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Session %@ did not attach to host %@", v68, v69, v70, v71, *(&v71 + 1), v73, *v75, *&v75[8], v76, SHIBYTE(v76));
            OUTLINED_FUNCTION_16_22();
          }

          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_17_8(v62, v63, v64, v65, v66);
        }

        return [(FigCaptureSessionAttachedSessionManager *)a1[4] _generateStateLog];
      }

      *(*(a1[5] + 8) + 24) = 1;
      if (([*(a1[4] + 32) containsObject:a1[6]] & 1) == 0)
      {
        [*(a1[4] + 32) addObject:a1[6]];
      }

      if (!dword_1EB58E660)
      {
LABEL_29:
        OUTLINED_FUNCTION_15_19();
        return [(FigCaptureSessionAttachedSessionManager *)a1[4] _generateStateLog];
      }

      v41 = OUTLINED_FUNCTION_6_42();
      v42 = OUTLINED_FUNCTION_96(v41);
      if (!OUTLINED_FUNCTION_6(v42))
      {
LABEL_28:
        OUTLINED_FUNCTION_1_65();
        OUTLINED_FUNCTION_17_8(v57, v58, v59, v60, v61);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_14_20();
      WORD2(v71) = 2112;
      *(&v71 + 6) = v43;
      HIWORD(v71) = 2112;
      v74 = v44;
      OUTLINED_FUNCTION_5();
      v51 = "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Session %@ attached to host %@";
    }

    OUTLINED_FUNCTION_4_48(v45, v46, v47, v48, &dword_1AC90E000, v49, v50, v51, v68, v69, v70, v71, *(&v71 + 1), v74, *v75, *&v75[8], v76, SHIBYTE(v76));
    OUTLINED_FUNCTION_16_22();
    goto LABEL_28;
  }

  return [(FigCaptureSessionAttachedSessionManager *)a1[4] _generateStateLog];
}

- (void)sessionDidStartRunning:(char)running sessionContainsVideoSource:(char)source sessionContainsCameraSource:
{
  if (self)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    OUTLINED_FUNCTION_7_1();
    v10 = 3221225472;
    v11 = __121__FigCaptureSessionAttachedSessionManager_sessionDidStartRunning_sessionContainsVideoSource_sessionContainsCameraSource___block_invoke;
    v12 = &unk_1E7997620;
    selfCopy = self;
    v14 = cf;
    runningCopy = running;
    sourceCopy = source;
    fig_dispatch_async_autoreleasepool(v8, v9);
  }
}

void __121__FigCaptureSessionAttachedSessionManager_sessionDidStartRunning_sessionContainsVideoSource_sessionContainsCameraSource___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
    if (dword_1EB58E660)
    {
      v2 = OUTLINED_FUNCTION_9_31();
      v3 = OUTLINED_FUNCTION_29_4(v2);
      if (OUTLINED_FUNCTION_6(v3))
      {
        OUTLINED_FUNCTION_14_20();
        WORD2(v66) = 2112;
        OUTLINED_FUNCTION_17_19();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4_48(v4, v5, v6, v7, &dword_1AC90E000, v8, v9, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Received DidStartRunning for %@. sessionContainsVideoSource: %i, sessionContainsCameraSource: %i", v63, v64, v65, v66, *(&v66 + 1), v67, v69, v70, SBYTE2(v70), SHIBYTE(v70));
        OUTLINED_FUNCTION_54_1();
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_17_8(v10, v11, v12, v13, v14);
    }

    OUTLINED_FUNCTION_15_19();
    v15 = *(a1 + 32);
    v16 = *(v15 + 8);
    if (v16 || *(a1 + 49) != 1)
    {
      if (*(a1 + 48) == 1)
      {
        if (dword_1EB58E660)
        {
          v20 = OUTLINED_FUNCTION_9_31();
          v21 = OUTLINED_FUNCTION_29_4(v20);
          if (OUTLINED_FUNCTION_6(v21))
          {
            OUTLINED_FUNCTION_14_20();
            WORD2(v66) = 2112;
            *(&v66 + 6) = v22;
            HIWORD(v66) = 2112;
            v68 = v23;
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_4_48(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: New primary session: %@, replaces %@", v63, v64, v65, v66, *(&v66 + 1), v68, v69, v70, SBYTE2(v70), SHIBYTE(v70));
            OUTLINED_FUNCTION_54_1();
          }

          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_17_8(v30, v31, v32, v33, v34);
          v15 = *(a1 + 32);
          v16 = *(v15 + 8);
        }

        v35 = *(a1 + 40);
        *(v15 + 8) = v35;
        if (v35)
        {
          CFRetain(v35);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _stopAttachedSessionsAndRemoveHostSession:?];
        [*(*(a1 + 32) + 48) addObjectsFromArray:*(*(a1 + 32) + 56)];
        [*(*(a1 + 32) + 56) removeAllObjects];
      }
    }

    else
    {
      v17 = *(a1 + 40);
      if (v17)
      {
        v17 = CFRetain(v17);
        v15 = *(a1 + 32);
      }

      *(v15 + 8) = v17;
      if (dword_1EB58E660)
      {
        v18 = OUTLINED_FUNCTION_9_31();
        v19 = OUTLINED_FUNCTION_29_4(v18);
        if (OUTLINED_FUNCTION_6(v19))
        {
          OUTLINED_FUNCTION_14_20();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_4_48(v36, v37, v38, v39, &dword_1AC90E000, v40, v41, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: New primary session: %@", v63, v64, v65, v66, *(&v66 + 1), v67, v69, v70, SBYTE2(v70), SHIBYTE(v70));
          OUTLINED_FUNCTION_54_1();
        }

        OUTLINED_FUNCTION_1_65();
        OUTLINED_FUNCTION_17_8(v42, v43, v44, v45, v46);
      }
    }

    [OUTLINED_FUNCTION_21_17() removeObject:?];
    v47 = *(a1 + 32);
    v48 = *(v47 + 16);
    if (*(a1 + 40) == v48)
    {
      if (dword_1EB58E660)
      {
        v49 = OUTLINED_FUNCTION_9_31();
        v50 = OUTLINED_FUNCTION_29_4(v49);
        if (OUTLINED_FUNCTION_6(v50))
        {
          OUTLINED_FUNCTION_14_20();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_48(v51, v52, v53, v54, &dword_1AC90E000, v55, v56, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Currently starting session started, resetting _currentlyStartingSession", v63, v64, v65, v66, *(&v66 + 1), v67, v69, v70, SBYTE2(v70), SHIBYTE(v70));
          OUTLINED_FUNCTION_54_1();
        }

        OUTLINED_FUNCTION_1_65();
        OUTLINED_FUNCTION_17_8(v57, v58, v59, v60, v61);
        v47 = *(a1 + 32);
        v48 = *(v47 + 16);
      }

      if (v48)
      {
        CFRelease(v48);
        *(*(a1 + 32) + 16) = 0;
        v47 = *(a1 + 32);
      }
    }

    [(FigCaptureSessionAttachedSessionManager *)v47 _startNextSession];
  }

  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  v62 = *(a1 + 40);
  if (v62)
  {
    CFRelease(v62);
  }
}

- (void)_stopAttachedSessionsAndRemoveHostSession:(void *)result
{
  if (result)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = result;
    obj = result[4];
    v3 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v23;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          if (dword_1EB58E660)
          {
            v20 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v9 = v20;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v10 = v9;
            }

            else
            {
              v10 = v9 & 0xFFFFFFFE;
            }

            if (v10)
            {
              v15 = 136315394;
              v16 = "[FigCaptureSessionAttachedSessionManager _stopAttachedSessionsAndRemoveHostSession:]";
              v17 = 2112;
              v18 = v7;
              LODWORD(v12) = 22;
              v11 = &v15;
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigCaptureSessionStopAttachedSession(v7, a2);
        }

        v4 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v4);
    }

    [v13[5] addObjectsFromArray:{v13[4], v11, v12}];
    return [v13[4] removeAllObjects];
  }

  return result;
}

- (void)_startNextSession
{
  if (self)
  {
    if (!*(self + 16))
    {
      firstObject = [*(self + 48) firstObject];
      *(self + 16) = firstObject;
      if (firstObject)
      {
        if (dword_1EB58E660)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_6(v4))
          {
            OUTLINED_FUNCTION_0_55();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_17_8(v5, v6, v7, v8, v9);
          firstObject = *(self + 16);
        }

        FigCaptureSessionStartDetachedSession(firstObject);
        *(self + 24) = *(self + 72);
      }
    }
  }
}

- (void)sessionDidStopRunning:(char)running captureDeviceStolen:(char)stolen sessionIsEligibleToAttach:(char)attach clientStartedSession:
{
  if (self)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    OUTLINED_FUNCTION_7_1();
    v12 = 3221225472;
    v13 = __132__FigCaptureSessionAttachedSessionManager_sessionDidStopRunning_captureDeviceStolen_sessionIsEligibleToAttach_clientStartedSession___block_invoke;
    v14 = &unk_1E7997648;
    selfCopy = self;
    v16 = cf;
    runningCopy = running;
    stolenCopy = stolen;
    attachCopy = attach;
    fig_dispatch_async_autoreleasepool(v10, v11);
  }
}

void __132__FigCaptureSessionAttachedSessionManager_sessionDidStopRunning_captureDeviceStolen_sessionIsEligibleToAttach_clientStartedSession___block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    goto LABEL_43;
  }

  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  if (dword_1EB58E660)
  {
    v3 = OUTLINED_FUNCTION_7_37();
    v4 = OUTLINED_FUNCTION_96(v3);
    if (OUTLINED_FUNCTION_6(v4))
    {
      OUTLINED_FUNCTION_19_16();
      WORD2(v63) = 2112;
      OUTLINED_FUNCTION_17_19();
      WORD1(v66) = v5;
      HIDWORD(v66) = v6;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_48(v7, v8, v9, v10, &dword_1AC90E000, v11, v12, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Received DidStopRunning for %@. captureDeviceStolen: %i, sessionIsEligibleToAttach: %i, clientStartedSession: %i", v60, v61, v62, v63, v64, v65, v66, v67, SBYTE2(v67), SHIBYTE(v67));
      OUTLINED_FUNCTION_16_22();
    }

    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_17_8(v13, v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_15_19();
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  if ((*(a1 + 50) & 1) == 0)
  {
    [*(v19 + 32) removeObject:v18];
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
    [OUTLINED_FUNCTION_21_17() removeObject:?];
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = *(v19 + 16);
    if (v20)
    {
      if (v20 == v18)
      {
        CFRelease(v20);
        *(*(a1 + 32) + 16) = 0;
        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
      }
    }
  }

  v21 = [*(v19 + 40) containsObject:v18];
  v22 = v21;
  if (v21)
  {
    if (dword_1EB58E660)
    {
      v23 = OUTLINED_FUNCTION_7_37();
      if (OUTLINED_FUNCTION_26_8(v23))
      {
        v24 = v1;
      }

      else
      {
        v24 = v1 & 0xFFFFFFFE;
      }

      if (v24)
      {
        OUTLINED_FUNCTION_19_16();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
        v1 = v68;
      }

      OUTLINED_FUNCTION_1_65();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  }

  v26 = *(a1 + 32);
  v25 = *(a1 + 40);
  if (v25 == *(v26 + 16))
  {
    if (dword_1EB58E660)
    {
      v28 = OUTLINED_FUNCTION_7_37();
      if (OUTLINED_FUNCTION_26_8(v28))
      {
        v29 = v1;
      }

      else
      {
        v29 = v1 & 0xFFFFFFFE;
      }

      if (v29)
      {
        OUTLINED_FUNCTION_19_16();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_65();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
    }

    [*(v26 + 48) removeObject:v25];
    v26 = *(a1 + 32);
    v30 = *(v26 + 16);
    if (v30)
    {
      CFRelease(v30);
      *(*(a1 + 32) + 16) = 0;
      v26 = *(a1 + 32);
    }

    v27 = *(v26 + 72) != *(v26 + 24) + 1;
    if (v22)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (*(a1 + 48) != 1 || *(a1 + 49) != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  v27 = 1;
  if ((v22 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (([*(v26 + 56) containsObject:*(a1 + 40)] & 1) == 0)
  {
    if (dword_1EB58E660)
    {
      v31 = OUTLINED_FUNCTION_7_37();
      v32 = OUTLINED_FUNCTION_96(v31);
      if (OUTLINED_FUNCTION_6(v32))
      {
        OUTLINED_FUNCTION_19_16();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_4_48(v33, v34, v35, v36, &dword_1AC90E000, v37, v38, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Adding stopped session %@ to _sessionsToStart", v60, v61, v62, v63, v64, v65, v66, v67, SBYTE2(v67), SHIBYTE(v67));
        OUTLINED_FUNCTION_16_22();
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_17_8(v39, v40, v41, v42, v43);
    }

    if (([OUTLINED_FUNCTION_21_17() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_21_17() addObject:?];
    }
  }

LABEL_41:
  v44 = *(a1 + 32);
  v45 = v44[1];
  if (*(a1 + 40) != v45)
  {
    if (!v27)
    {
      goto LABEL_43;
    }

    goto LABEL_53;
  }

  if (dword_1EB58E660)
  {
    v47 = OUTLINED_FUNCTION_7_37();
    v48 = OUTLINED_FUNCTION_96(v47);
    if (OUTLINED_FUNCTION_6(v48))
    {
      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_4_48(v49, v50, v51, v52, &dword_1AC90E000, v53, v54, "<<<< FigCaptureSessionAttachedSessionManager >>>> %s: Primary session %@ stopped, resetting primary session", v60, v61, v62, v63, v64, v65, v66, v67, SBYTE2(v67), SHIBYTE(v67));
      OUTLINED_FUNCTION_16_22();
    }

    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_17_8(v55, v56, v57, v58, v59);
    v44 = *(a1 + 32);
    v45 = v44[1];
  }

  if (v45)
  {
    CFRelease(v45);
    *(*(a1 + 32) + 8) = 0;
    v44 = *(a1 + 32);
  }

  [(FigCaptureSessionAttachedSessionManager *)v44 _stopAttachedSessionsAndRemoveHostSession:?];
  if (v27)
  {
LABEL_53:
    [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _startNextSession];
  }

LABEL_43:
  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  v46 = *(a1 + 40);
  if (v46)
  {
    CFRelease(v46);
  }
}

- (void)sessionDidReconfigure:(uint64_t)reconfigure
{
  if (reconfigure)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v4 = OUTLINED_FUNCTION_11_27();
    v5[1] = 3221225472;
    v5[2] = __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke;
    v5[3] = &unk_1E7990178;
    v5[4] = reconfigure;
    v5[5] = cf;
    fig_dispatch_async_autoreleasepool(v4, v5);
  }
}

- (void)sessionInvalidated:(uint64_t)invalidated
{
  if (invalidated)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v4 = OUTLINED_FUNCTION_11_27();
    v5[1] = 3221225472;
    v5[2] = __62__FigCaptureSessionAttachedSessionManager_sessionInvalidated___block_invoke;
    v5[3] = &unk_1E7990178;
    v5[4] = invalidated;
    v5[5] = cf;
    fig_dispatch_async_autoreleasepool(v4, v5);
  }
}

void __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke_cold_1(void *a1, uint64_t *a2, uint64_t *a3)
{
  [(FigCaptureSessionAttachedSessionManager *)a1 _stopAttachedSessionsAndRemoveHostSession:?];
  [*(*a2 + 48) addObjectsFromArray:*(*a2 + 56)];
  [*(*a2 + 56) removeAllObjects];
  [(FigCaptureSessionAttachedSessionManager *)*a2 _startNextSession];
  *a3 = *a2;
}

@end