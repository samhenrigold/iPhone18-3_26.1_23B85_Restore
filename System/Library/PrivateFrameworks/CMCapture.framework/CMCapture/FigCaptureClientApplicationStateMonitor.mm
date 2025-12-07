@interface FigCaptureClientApplicationStateMonitor
+ (uint64_t)_applicationStateForBKSApplicationState:(int)state clientType:(int)type backgroundCameraAccess:;
+ (uint64_t)_applicationStateForClientLayoutState:(unsigned int)state clientType:(int)type backgroundCameraAccess:;
+ (void)initialize;
+ (void)startContinuityCaptureTerminationMonitorWithHandler:(id)handler;
+ (void)startPrewarmingMonitorWithHandler:(id)handler;
+ (void)stopPrewarmingMonitor;
- (FigCaptureClientApplicationStateMonitor)initWithClientAuditToken:(id *)token mediaEnvironment:(id)environment forThirdPartyTorch:(BOOL)torch applicationAndLayoutStateHandler:(id)handler;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)mediaEnvironment;
- (OS_tcc_identity)mediaEnvironmentTCCIdentity;
- (char)_initWithClient:(void *)client;
- (id)_updateBKSApplicationStateFromAVAudioSession;
- (id)_updateBKSApplicationStateFromCMSession;
- (id)loggingPrefix;
- (uint64_t)_createAndObserveAVAudioSessionForBKSApplicationStateMonitoring;
- (uint64_t)_createAndObserveCMSessionForBKSApplicationStateMonitoring;
- (uint64_t)_resolveAggregateLayoutState;
- (uint64_t)_resolveApplicationIDForLayoutMonitoring;
- (uint64_t)_resolveApplicationState;
- (void)_deregisterAndReleaseAVAudioSession;
- (void)_deregisterAndReleaseCMSession;
- (void)_handleAVAudioSessionMediaServicesWereResetNotification:(uint64_t)notification;
- (void)_handleBKSApplicationStateChange:(uint64_t)change;
- (void)_handleLayout:(uint64_t)layout;
- (void)_handleMediaEndowmentUpdate:(uint64_t)update;
- (void)_handleVisibilityEndowmentUpdate:(uint64_t)update;
- (void)_updateClientStateCondition:(void *)condition newValue:;
- (void)_updateMediaEnvironmentWithEndowmentInfos:(uint64_t)infos evaluateLayout:(uint64_t)layout;
- (void)dealloc;
- (void)deviceLockStateMonitor:(id)monitor didUpdateDeviceLockState:(BOOL)state;
- (void)invalidate;
- (void)layoutMonitor:(id)monitor didUpdateLayout:(id)layout;
@end

@implementation FigCaptureClientApplicationStateMonitor

- (uint64_t)_resolveApplicationIDForLayoutMonitoring
{
  if (!self)
  {
    return 0;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if ([*(self + 8) isSwiftPlaygroundsDevelopmentApp])
  {
    return 0x1F21854D0;
  }

  if (![*(self + 8) mediaEnvironment])
  {
    v7 = *(self + 8);
    if (*(self + 64) == 1)
    {
      xpcServiceRootHostApplicationID = [objc_msgSend(objc_msgSend(v7 "processHandle")];
    }

    else
    {
      clientType = [v7 clientType];
      v11 = *(self + 8);
      if (clientType == 3 && (v12 = [v11 isSecureCaptureExtension], v11 = *(self + 8), (v12 & 1) == 0))
      {
        xpcServiceRootHostApplicationID = [v11 xpcServiceRootHostApplicationID];
      }

      else
      {
        xpcServiceRootHostApplicationID = [v11 applicationID];
      }
    }

    v4 = xpcServiceRootHostApplicationID;
    v60 = 0;
    if (FigCaptureAudiomxdSupportEnabled(xpcServiceRootHostApplicationID, v9))
    {
      if ((*(self + 80) & 1) == 0)
      {
        goto LABEL_30;
      }

      v13 = [*(self + 24) getMXSessionProperty:*MEMORY[0x1E69B0190] error:&v60];
      if (v60)
      {
        OUTLINED_FUNCTION_24_10();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v57);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_5_1(v49, v50, v59, v51, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_1_4();
        goto LABEL_57;
      }

      intValue = [v13 intValue];
      if (!intValue)
      {
LABEL_30:
        if ([*(self + 8) applicationIDToInheritAppStateFrom])
        {
          if (dword_1ED844110)
          {
            OUTLINED_FUNCTION_24_10();
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v24, v57);
            OUTLINED_FUNCTION_115_0();
            if (v26)
            {
              v27 = v25;
            }

            else
            {
              v27 = v58;
            }

            if (v27)
            {
              [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
              OUTLINED_FUNCTION_9_3();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_13_0(v28, v29, v30, v31, v32);
          }

          [*(self + 8) setApplicationIDToInheritAppStateFrom:0];
          [*(self + 8) setPidToInheritAppStateFrom:0];
        }

        return v4;
      }
    }

    else
    {
      if ((*(self + 80) & 1) == 0)
      {
        goto LABEL_30;
      }

      v58 = 0;
      if (CMSessionCopyProperty())
      {
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_30();
        if (v2)
        {
          v16 = MEMORY[0x1E696AEC0];
          [*(self + 8) pid];
          OUTLINED_FUNCTION_67_2();
          OUTLINED_FUNCTION_55_5();
          [v16 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_53_6();
          OUTLINED_FUNCTION_9_3();
          v17 = OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141(v17, v18, v19, v20, v21);
        }

LABEL_56:
        OUTLINED_FUNCTION_1_4();
LABEL_57:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return v4;
      }

      intValue = [0 intValue];

      if (!intValue)
      {
        goto LABEL_30;
      }
    }

    if (intValue == [*(self + 8) pidToInheritAppStateFrom])
    {
LABEL_40:
      if (dword_1ED844110)
      {
        OUTLINED_FUNCTION_24_10();
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, v57);
        OUTLINED_FUNCTION_115_0();
        if (v26)
        {
          v35 = v34;
        }

        else
        {
          v35 = v58;
        }

        if (v35)
        {
          [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
          [*(self + 8) applicationIDToInheritAppStateFrom];
          [*(self + 8) pidToInheritAppStateFrom];
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_18_13(v44, v45, v59, v46, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0(v36, v37, v38, v39, v40);
      }

      isEqualToString = objc_msgSend_isEqualToString_([*(self + 8) applicationIDToInheritAppStateFrom]);
      v42 = *(self + 8);
      if (isEqualToString)
      {
        return [v42 applicationID];
      }

      else
      {
        return [v42 applicationIDToInheritAppStateFrom];
      }
    }

    hostProcess = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", intValue), &v60}];
    if (!v60)
    {
      v23 = hostProcess;
      while ([hostProcess hostProcess])
      {
        hostProcess = [v23 hostProcess];
        v23 = hostProcess;
      }

      [*(self + 8) setPidToInheritAppStateFrom:{objc_msgSend(v23, "pid")}];
      [*(self + 8) setApplicationIDToInheritAppStateFrom:{objc_msgSend(objc_msgSend(v23, "bundle"), "identifier")}];
      goto LABEL_40;
    }

    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_30();
    if (v2)
    {
      [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_9_3();
      v52 = OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_141(v52, v53, v54, v55, v56);
    }

    goto LABEL_56;
  }

  v6 = *(self + 8);

  return [v6 mediaEnvironmentBundleID];
}

- (id)loggingPrefix
{
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", result, objc_msgSend(result[1], "pid"), objc_msgSend(result[1], "applicationID")];
  }

  return result;
}

- (uint64_t)_resolveAggregateLayoutState
{
  if (result)
  {
    v1 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    v2 = v1[25];
    if (v2 == 6)
    {
      return 6;
    }

    v3 = v1[27];
    if (v3 == 6)
    {
      return 6;
    }

    v4 = v1[29];
    if (v4 == 6)
    {
      return 6;
    }

    else if (v2 == 5 || v3 == 5 || v4 == 5)
    {
      return 5;
    }

    else if (v2 == 4 || v3 == 4 || v4 == 4)
    {
      return 4;
    }

    else if (v2 == 3 || v3 == 3 || v4 == 3)
    {
      return 3;
    }

    else if (v2 == 2 || v3 == 2 || v4 == 2)
    {
      if (v4 == 1)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      if (v2 == 1 || v3 == 1)
      {
        return 3;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      return v3 == 1 && v4 == 1 && v2 == 1;
    }
  }

  return result;
}

- (uint64_t)_resolveApplicationState
{
  if (!self)
  {
    return 0;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(self + 80) == 1)
  {
    v2 = +[FigCaptureClientApplicationStateMonitor _applicationStateForBKSApplicationState:clientType:backgroundCameraAccess:](FigCaptureClientApplicationStateMonitor, *(self + 84), [*(self + 8) clientType], objc_msgSend(*(self + 8), "hasBackgroundCameraAccess"));
  }

  else
  {
    v2 = 2;
  }

  if ((*(self + 96) & 1) == 0 && (*(self + 105) & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = v7 && v2 == 2;
    if (!v7)
    {
LABEL_22:
      if (*(self + 152) == 1 && v2 == 2)
      {
        if (*(self + 153))
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }

      goto LABEL_9;
    }

LABEL_39:
    _resolveAggregateLayoutState = [(FigCaptureClientApplicationStateMonitor *)self _resolveAggregateLayoutState];
    v2 = +[FigCaptureClientApplicationStateMonitor _applicationStateForClientLayoutState:clientType:backgroundCameraAccess:](FigCaptureClientApplicationStateMonitor, _resolveAggregateLayoutState, [*(self + 8) clientType], objc_msgSend(*(self + 8), "hasBackgroundCameraAccess"));
    goto LABEL_22;
  }

  if (v2 == 2)
  {
    goto LABEL_39;
  }

  v2 = 1;
LABEL_9:
  if ([*(self + 8) clientType] == 3)
  {
    FigSimpleMutexLock();
    v3 = [objc_msgSend(qword_1ED844F40 objectForKeyedSubscript:{objc_msgSend(*(self + 8), "xpcServiceRootHostApplicationID")), "referencedObject"}];
    v4 = v3;
    if (v2 == 2)
    {
      if (!v3 || (v5 = [*(v3 + 8) pid], v5 == objc_msgSend(*(self + 8), "pid")) || (objc_msgSend_isEqualToString_(objc_msgSend(*(v4 + 8), "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(*(self + 8), "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(*(self + 8), "applicationID")) & 1) != 0)
      {
        if ([*(self + 8) xpcServiceRootHostApplicationID])
        {
          v6 = [[FigWeakReference alloc] initWithReferencedObject:self];
          [qword_1ED844F40 setObject:v6 forKeyedSubscript:{objc_msgSend(*(self + 8), "xpcServiceRootHostApplicationID")}];
        }

        else if (dword_1ED844110)
        {
          v25 = 0;
          v24 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_115_0();
          if (v7)
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", self, objc_msgSend(*(self + 8), "pid"), objc_msgSend(*(self + 8), "applicationID")];
            [*(self + 8) applicationID];
            [*(self + 8) pid];
            OUTLINED_FUNCTION_27_7();
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_18_13(v12, v13, v23, v14, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0(v16, v17, v18, v19, v20);
        }

        v2 = 2;
      }

      else
      {
        [*(self + 8) xpcServiceRootHostApplicationID];
        [*(self + 8) applicationID];
        [*(self + 8) pid];
        [*(v4 + 8) applicationID];
        [*(v4 + 8) pid];
        v25 = 0;
        v24 = 0;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        v2 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (v3 == self)
      {
        [qword_1ED844F40 setObject:0 forKeyedSubscript:{objc_msgSend(*(self + 8), "xpcServiceRootHostApplicationID")}];
      }

      v2 = 1;
    }

    FigSimpleMutexUnlock();
  }

  return v2;
}

- (uint64_t)_createAndObserveAVAudioSessionForBKSApplicationStateMonitoring
{
  if (result)
  {
    v3 = result;
    if (FigCaptureAudiomxdSupportEnabled(result, a2))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", objc_msgSend(*(v3 + 8), "pid")];
      v5 = objc_alloc(MEMORY[0x1E698D710]);
      v6 = *(v3 + 8);
      if (v6)
      {
        objc_msgSend_auditToken(v6);
      }

      else
      {
        memset(v42, 0, 32);
      }

      v7 = [v5 initSiblingSession:0xFFFFFFFFLL auditToken:v42 clientIdentifier:v4 autoReconnect:1];
      *(v3 + 24) = v7;
      if (!v7)
      {
        LODWORD(v35) = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, v2, v36, v37, v38, v39, v40, v41);
        return 4294954510;
      }

      [FigWeakReference weakReferenceToObject:v3];
      OUTLINED_FUNCTION_32_7();
      v9 = [v8 addObserverForType:2 name:? block:?];
      if (v9)
      {
        *(v3 + 40) = v9;
        OUTLINED_FUNCTION_33_1();
        v11 = [v10 addObserverForType:1 name:? block:?];
        if (v11)
        {
          *(v3 + 48) = v11;
          [(FigCaptureClientApplicationStateMonitor *)v3 _updateBKSApplicationStateFromAVAudioSession];
          return 0;
        }

        v22 = OUTLINED_FUNCTION_20_9();
        OUTLINED_FUNCTION_29_4(v22);
        OUTLINED_FUNCTION_28_6();
        if (!v23)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v20 = OUTLINED_FUNCTION_20_9();
        OUTLINED_FUNCTION_29_4(v20);
        OUTLINED_FUNCTION_28_6();
        if (!v21)
        {
LABEL_18:
          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_17_8(v24, v25, v26, v27, v28);
          return 4294954510;
        }
      }

      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_5_43();
      OUTLINED_FUNCTION_18_13(v32, v33, v42, v34, &dword_1AC90E000);
      OUTLINED_FUNCTION_54_1();
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_29_4(v13);
    OUTLINED_FUNCTION_28_6();
    if (v14)
    {
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_5_43();
      OUTLINED_FUNCTION_18_13(v29, v30, v42, v31, &dword_1AC90E000);
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8(v15, v16, v17, v18, v19);
    return 4294954514;
  }

  return result;
}

- (id)_updateBKSApplicationStateFromAVAudioSession
{
  if (result)
  {
    v3 = result;
    v4 = FigCaptureAudiomxdSupportEnabled(result, a2);
    if (v4)
    {
      FigSimpleMutexLock();
      v75 = 0;
      v12 = [v3[3] getMXSessionProperty:*MEMORY[0x1E69AFCA0] error:&v75];
      if (v75)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_115_0();
        if (v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", v3, objc_msgSend(v3[1], "pid"), objc_msgSend(v3[1], "applicationID")];
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_18_13(v17, v18, varC0, v19, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0(v20, v21, v22, v23, v24);
      }

      else
      {
        intValue = [v12 intValue];
        [(FigCaptureClientApplicationStateMonitor *)v3 _handleBKSApplicationStateChange:intValue, v26, v27, v28, v29, v30, v31, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v75, varC0[0], varC0[1], varC0[2], varC0[3], varC0[4], varC0[5], varC0[6], varC0[7], varC0[8], varC0[9], varC0[10], varC0[11], varC0[12], varC0[13], varC0[14], varC0[15], varC0[16], varC0[17], varC0[18], varC0[19], varC0[20], varC0[21], varC0[22], varC0[23], varC0[24], varC0[25]];
      }

      return FigSimpleMutexUnlock();
    }

    else
    {
      v32 = OUTLINED_FUNCTION_43_7(v4, v5, v6, v7, v8, v9, v10, v11, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, SBYTE4(v72), v75);
      OUTLINED_FUNCTION_61_3(v32, v33, v34, v35, v36, v37, v38, v39, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v74, v75);
      OUTLINED_FUNCTION_39_7();
      if (v15)
      {
        v41 = v40;
      }

      else
      {
        v41 = v2;
      }

      if (v41)
      {
        [(FigCaptureClientApplicationStateMonitor *)v3 loggingPrefix];
        OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_2_1();
        v47 = OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_18_2(v47, v48, v49, v50, v51);
      }

      OUTLINED_FUNCTION_1_4();
      return OUTLINED_FUNCTION_17_8(v42, v43, v44, v45, v46);
    }
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
  }

  if (initialize_sLayoutMonitorOnceToken != -1)
  {
    +[FigCaptureClientApplicationStateMonitor initialize];
  }
}

uint64_t __53__FigCaptureClientApplicationStateMonitor_initialize__block_invoke()
{
  qword_1ED844F40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = FigSimpleMutexCreate();
  qword_1ED844F48 = result;
  return result;
}

- (void)invalidate
{
  if (self->_stateChangeLock)
  {
    FigSimpleMutexLock();
    self->_invalid = 1;
    FigSimpleMutexUnlock();
  }

  xpcServiceRootHostApplicationID = [(FigCaptureClientApplicationStateMonitorClient *)self->_client xpcServiceRootHostApplicationID];
  if (xpcServiceRootHostApplicationID)
  {
    FigSimpleMutexLock();
    v5 = [objc_msgSend(qword_1ED844F40 objectForKeyedSubscript:{-[FigCaptureClientApplicationStateMonitorClient xpcServiceRootHostApplicationID](self->_client, "xpcServiceRootHostApplicationID")), "referencedObject"}];
    if (v5 == self || v5 == 0)
    {
      [qword_1ED844F40 setObject:0 forKeyedSubscript:{-[FigCaptureClientApplicationStateMonitorClient xpcServiceRootHostApplicationID](self->_client, "xpcServiceRootHostApplicationID")}];
    }

    xpcServiceRootHostApplicationID = FigSimpleMutexUnlock();
  }

  if (FigCaptureAudiomxdSupportEnabled(xpcServiceRootHostApplicationID, v4))
  {
    [(FigCaptureClientApplicationStateMonitor *)&self->super.isa _deregisterAndReleaseAVAudioSession];
  }

  else
  {
    [(FigCaptureClientApplicationStateMonitor *)self _deregisterAndReleaseCMSession];
  }

  [(FigCaptureClientApplicationStateMonitorClient *)self->_client invalidate];
  [(RBSProcessMonitor *)self->_mediaEndowmentMonitor invalidate];

  self->_mediaEndowmentMonitor = 0;
  [(RBSProcessMonitor *)self->_visibilityEndowmentMonitor invalidate];

  self->_visibilityEndowmentMonitor = 0;
  [(FigCaptureDisplayLayoutMonitor *)self->_displayLayoutMonitor removeLayoutObserver:self];

  self->_displayLayoutMonitor = 0;
  [(FigCaptureDisplayLayoutMonitor *)self->_externalDisplayLayoutMonitor removeLayoutObserver:self];

  self->_externalDisplayLayoutMonitor = 0;
  [(FigCaptureDisplayLayoutMonitor *)self->_continuityDisplayLayoutMonitor removeLayoutObserver:self];

  self->_continuityDisplayLayoutMonitor = 0;
}

- (void)dealloc
{
  [(FigCaptureClientApplicationStateMonitor *)self invalidate];

  if (self->_stateChangeLock)
  {
    FigSimpleMutexDestroy();
    self->_stateChangeLock = 0;
  }

  v3.receiver = self;
  v3.super_class = FigCaptureClientApplicationStateMonitor;
  [(FigCaptureClientApplicationStateMonitor *)&v3 dealloc];
}

- (NSString)mediaEnvironment
{
  mediaEnvironment = [(FigCaptureClientApplicationStateMonitorClient *)self->_client mediaEnvironment];

  return mediaEnvironment;
}

- (OS_tcc_identity)mediaEnvironmentTCCIdentity
{
  mediaEnvironmentTCCIdentity = [(FigCaptureClientApplicationStateMonitorClient *)self->_client mediaEnvironmentTCCIdentity];

  return mediaEnvironmentTCCIdentity;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(FigCaptureClientApplicationStateMonitorClient *)self->_client debugDescription];
  applicationState = self->_applicationState;
  v6 = @"--- Undefined application state ---";
  if (applicationState == 2)
  {
    v6 = @"Foregrounded";
  }

  if (applicationState == 1)
  {
    v7 = @"Backgrounded";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 stringWithFormat:@"%@, state: %@", v4, v7];
  array = [MEMORY[0x1E695DF70] array];
  if (self->_isBKSApplicationStateMonitoringRequiredForClient)
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"bksAppState: %@", FigCaptureBKSApplicationStateToString(self->_bksApplicationState))}];
  }

  if (self->_isLayoutMonitoringRequiredForClient || self->_isExternalDisplayLayoutMonitoringRequiredForClient)
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"layout: %@", FigCaptureClientLayoutStateToString(self->_aggregateLayoutState))}];
  }

  if (self->_isDeviceLockStateMonitoringRequiredForClient)
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"device locked: %d", self->_deviceIsLocked)}];
  }

  [v8 appendFormat:@" (%@)", objc_msgSend(array, "componentsJoinedByString:", @", ")];
  v10 = MEMORY[0x1E696AEC0];

  return [v10 stringWithString:v8];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureClientApplicationStateMonitor debugDescription](self, "debugDescription")];
}

+ (uint64_t)_applicationStateForBKSApplicationState:(int)state clientType:(int)type backgroundCameraAccess:
{
  objc_opt_self();
  result = 1;
  if (a2)
  {
    if (a2 == 4)
    {
      if (type)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else if (a2 == 8)
    {
      if ((state - 3) >= 5)
      {
        return 2;
      }

      else
      {
        return dword_1AD055358[state - 3];
      }
    }
  }

  else if (((state - 6) & 0xFFFFFFFD) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }

  return result;
}

+ (uint64_t)_applicationStateForClientLayoutState:(unsigned int)state clientType:(int)type backgroundCameraAccess:
{
  objc_opt_self();
  result = 1;
  if (state <= 8)
  {
    if (((1 << state) & 0x2E) != 0)
    {
      v8 = a2 - 2;
      if (a2 - 2) < 5 && ((0x17u >> v8))
      {
        return dword_1AD05536C[v8];
      }

      else if (type)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (a2 == 6)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      if (((1 << state) & 0x140) != 0)
      {
        return v9;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)layoutMonitor:(id)monitor didUpdateLayout:(id)layout
{
  if (!self->_invalid)
  {
    [FigCaptureClientApplicationStateMonitor _handleLayout:?];
  }
}

+ (void)startPrewarmingMonitorWithHandler:(id)handler
{
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F216ED50, 0x1F2185310, 0}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke;
  v5[3] = &unk_1E79970C0;
  v5[4] = v4;
  v5[5] = handler;
  v6 = 1;
  sPrewarmingProcessMonitor = [MEMORY[0x1E69C75F8] monitorWithConfiguration:v5];
}

uint64_t __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:1];
  v9 = *MEMORY[0x1E699F9D0];
  [v4 setEndowmentNamespaces:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v9, 1)}];
  [a2 setStateDescriptor:v4];
  v8 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifiers:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(a1 + 32))}];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v8, 1)}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke_2;
  v6[3] = &unk_1E7997098;
  v6[4] = *(a1 + 40);
  v7 = *(a1 + 48);
  return [a2 setUpdateHandler:v6];
}

void __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  [objc_msgSend(a3 "bundle")];
  if ([objc_msgSend(a4 "state")] == 4)
  {
    v6 = [objc_msgSend(a4 "state")];
    if ([v6 containsObject:*MEMORY[0x1E699F9D0]])
    {
      if (*(a1 + 32) && *(a1 + 40) == 1)
      {
        v7 = objc_autoreleasePoolPush();
        (*(*(a1 + 32) + 16))();

        objc_autoreleasePoolPop(v7);
      }
    }
  }
}

+ (void)stopPrewarmingMonitor
{
  [sPrewarmingProcessMonitor invalidate];

  sPrewarmingProcessMonitor = 0;
}

+ (void)startContinuityCaptureTerminationMonitorWithHandler:(id)handler
{
  if (!sContinuityCaptureProcessTerminationMonitor)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke;
    v3[3] = &unk_1E7997110;
    v3[4] = handler;
    sContinuityCaptureProcessTerminationMonitor = [MEMORY[0x1E69C75F8] monitorWithConfiguration:v3];
  }
}

uint64_t __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(MEMORY[0x1E69C7630] "descriptor")];
  [a2 setEvents:1];
  v6[0] = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:0x1F21855B0];
  v6[1] = [MEMORY[0x1E69C7610] predicateMatchingJobLabel:0x1F2185250];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 2)}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke_2;
  v5[3] = &unk_1E79970E8;
  v5[4] = *(a1 + 32);
  return [a2 setUpdateHandler:v5];
}

void __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_msgSend(objc_msgSend(a4 exitEvent];
  if (dword_1ED844110)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 32))
  {
    v7 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
    objc_autoreleasePoolPop(v7);
  }
}

- (char)_initWithClient:(void *)client
{
  if (!client)
  {
    return 0;
  }

  v53.receiver = client;
  v53.super_class = FigCaptureClientApplicationStateMonitor;
  v5 = objc_msgSendSuper2(&v53, sel_init);
  if (v5)
  {
    *(v5 + 1) = a2;
    if (dword_1ED844110)
    {
      v52 = 0;
      v51 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_115_0();
      if (v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = v2;
      }

      if (v9)
      {
        [*(v5 + 1) debugDescription];
        LODWORD(v48) = 136315394;
        OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_48_7();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v10, v11, v12, v13, v14);
    }

    *(v5 + 2) = FigSimpleMutexCreate();
    v15 = *(v5 + 1);
    if ([v15 clientType] == 5 || (objc_msgSend_isEqualToString_(objc_msgSend(v15, "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v15, "applicationID")) & 1) != 0)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v16 = objc_msgSend_isEqualToString_([v15 applicationID]) ^ 1;
    }

    v5[80] = v16;
    v5[96] = [*(v5 + 1) isForThirdPartyTorch] ^ 1;
    if ([*(v5 + 1) isForThirdPartyTorch])
    {
      v18 = 0;
    }

    else
    {
      v18 = MGGetBoolAnswer();
    }

    v5[105] = v18;
    v19 = *(v5 + 1);
    v20 = BWDeviceIsiPhone(v18, v17);
    v5[113] = ([v19 isForThirdPartyTorch] ^ 1) & v20;
    v21 = *(v5 + 1);
    if (v21)
    {
      objc_msgSend_auditToken(v21);
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50[0] = v48;
    v50[1] = v49;
    v5[152] = FigCaptureClientIsFacemetricsd(v50);
    v22 = *(v5 + 1);
    if (objc_msgSend_isEqualToString_([v22 applicationID]) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v22, "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v22, "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v22, "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v22, "applicationID")) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v22, "applicationID")))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_([v22 applicationID]);
    }

    v5[64] = isEqualToString;
    *(v5 + 21) = 0;
    v5[88] = 0;
    *(v5 + 23) = 0;
    if ([*(v5 + 1) mediaEnvironment])
    {
      [*(v5 + 1) processHandle];
      OUTLINED_FUNCTION_32_7();
      *(v5 + 7) = [v32 rbsProcessMonitorForEndowmentNamespace:? serviceClass:? updateHandler:?];
      [objc_msgSend(MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", objc_msgSend(*(v5 + 1), "pid")), 0), "endowmentInfoForHandle"}];
      v33 = OUTLINED_FUNCTION_3_30();
      [(FigCaptureClientApplicationStateMonitor *)v33 _updateMediaEnvironmentWithEndowmentInfos:v34 evaluateLayout:0, v35, v36, v37, v38, v39];
    }

    OUTLINED_FUNCTION_57_5();
    if (v8)
    {
      v41 = FigCaptureAudiomxdSupportEnabled(v24, v25) ? [(FigCaptureClientApplicationStateMonitor *)v5 _createAndObserveAVAudioSessionForBKSApplicationStateMonitoring]: [(FigCaptureClientApplicationStateMonitor *)v5 _createAndObserveCMSessionForBKSApplicationStateMonitoring];
      if (v41)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v3, v42, v43, v44, v45, v46, v47);

        return 0;
      }
    }

    *(v5 + 31) = 0;
    *(v5 + 25) = 0;
    v5[104] = 0;
    if (v5[96] == 1)
    {
      v26 = +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];
      *(v5 + 16) = v26;
      [v26 addLayoutObserver:v5];
    }

    *(v5 + 27) = 0;
    v5[112] = 0;
    if (v5[105] == 1)
    {
      v27 = +[FigCaptureDisplayLayoutMonitor sharedExternalDisplayLayoutMonitor];
      *(v5 + 17) = v27;
      [v27 addLayoutObserver:v5];
    }

    *(v5 + 29) = 0;
    v5[120] = 0;
    OUTLINED_FUNCTION_56_6();
    if (v8)
    {
      v28 = +[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor];
      *(v5 + 18) = v28;
      [v28 addLayoutObserver:v5];
    }

    if (v5[64] == 1)
    {
      [*(v5 + 1) processHandle];
      OUTLINED_FUNCTION_33_1();
      *(v5 + 9) = [v29 rbsProcessMonitorForEndowmentNamespace:? serviceClass:? updateHandler:?];
    }

    *(v5 + 153) = 0;
    if (v5[152] == 1)
    {
      v30 = +[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor];
      *(v5 + 20) = v30;
      [v30 addDeviceLockStateObserver:v5];
    }
  }

  return v5;
}

- (void)_handleMediaEndowmentUpdate:(uint64_t)update
{
  if (self)
  {
    OUTLINED_FUNCTION_59_0();
    a47 = v49;
    a48 = v50;
    v52 = v51;
    v54 = v53;
    if (dword_1ED844110)
    {
      OUTLINED_FUNCTION_3_45();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_4_0();
      if (v48)
      {
        v56 = MEMORY[0x1E696AEC0];
        [*(v54 + 8) pid];
        OUTLINED_FUNCTION_63_4();
        OUTLINED_FUNCTION_51_6();
        [v56 stringWithFormat:@"<%p[%d][%@]>"];
        OUTLINED_FUNCTION_0_49();
        OUTLINED_FUNCTION_7_33();
        OUTLINED_FUNCTION_5_1(v57, v58, &a20, v59, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v60, v61, v62, v63, v64);
    }

    [objc_msgSend(v52 "state")];
    v65 = OUTLINED_FUNCTION_3_30();
    [(FigCaptureClientApplicationStateMonitor *)v65 _updateMediaEnvironmentWithEndowmentInfos:v66 evaluateLayout:1, v67, v68, v69, v70, v71];
    OUTLINED_FUNCTION_58_0();
  }
}

- (void)_updateMediaEnvironmentWithEndowmentInfos:(uint64_t)infos evaluateLayout:(uint64_t)layout
{
  if (result)
  {
    infosCopy = infos;
    v11 = result;
    if (dword_1ED844110)
    {
      v12 = OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_58_8(v12);
      OUTLINED_FUNCTION_30();
      if (endowment)
      {
        v13 = MEMORY[0x1E696AEC0];
        [*(v11 + 8) pid];
        OUTLINED_FUNCTION_67_2();
        OUTLINED_FUNCTION_55_5();
        [v13 stringWithFormat:@"<%p[%d][%@]>"];
        *v62 = 136315906;
        *&v62[4] = "[FigCaptureClientApplicationStateMonitor _updateMediaEnvironmentWithEndowmentInfos:evaluateLayout:]";
        OUTLINED_FUNCTION_27_7();
        *&v62[14] = v14;
        *&v62[22] = 2112;
        v66 = a2;
        LOWORD(v68) = 1024;
        *(&v68 + 2) = infosCopy;
        OUTLINED_FUNCTION_2_1();
        v15 = OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_141(v15, v16, v17, v18, v19);
      }

      OUTLINED_FUNCTION_2_4();
      result = OUTLINED_FUNCTION_56_0(v20, v21, v22, v23, v24);
    }

    v25 = OUTLINED_FUNCTION_60_1(result, a2, infos, layout, a5, a6, a7, a8, v54, v56, v58, v60, *v62, *&v62[8], *&v62[16], v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
    if (v25)
    {
      v26 = v25;
      v27 = infosCopy;
      v28 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (MEMORY[0] != v28)
          {
            objc_enumerationMutation(a2);
          }

          endowment = *(8 * i);
          isEqualToString = objc_msgSend_isEqualToString_([endowment endowmentNamespace]);
          if (isEqualToString)
          {
            environment = [endowment environment];
            [*(v11 + 8) mediaEnvironment];
            isEqualToString = objc_msgSend_isEqualToString_(environment);
            if (isEqualToString)
            {
              endowment = [endowment endowment];
              objc_opt_class();
              isEqualToString = objc_opt_isKindOfClass();
              if (isEqualToString)
              {
                v39 = [endowment objectForKeyedSubscript:*MEMORY[0x1E69B06F0]];
                goto LABEL_18;
              }
            }
          }
        }

        v26 = OUTLINED_FUNCTION_60_1(isEqualToString, v31, v32, v33, v34, v35, v36, v37, v55, v57, v59, v61, v63, v64, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
        if (v26)
        {
          continue;
        }

        break;
      }

      v39 = 0;
LABEL_18:
      infosCopy = v27;
    }

    else
    {
      v39 = 0;
    }

    FigSimpleMutexLock();
    if ([*(v11 + 8) mediaEnvironmentBundleID] == v39 || (objc_msgSend_isEqualToString_(objc_msgSend(*(v11 + 8), "mediaEnvironmentBundleID")) & 1) != 0)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      if (dword_1ED844110)
      {
        v40 = OUTLINED_FUNCTION_46_6();
        OUTLINED_FUNCTION_58_8(v40);
        OUTLINED_FUNCTION_30();
        if (endowment)
        {
          v41 = MEMORY[0x1E696AEC0];
          [*(v11 + 8) pid];
          OUTLINED_FUNCTION_67_2();
          OUTLINED_FUNCTION_55_5();
          [v41 stringWithFormat:@"<%p[%d][%@]>"];
          [*(v11 + 8) mediaEnvironmentBundleID];
          OUTLINED_FUNCTION_27_7();
          OUTLINED_FUNCTION_2_1();
          v42 = OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141(v42, v43, v44, v45, v46);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v47, v48, v49, v50, v51);
      }

      [*(v11 + 8) setMediaEnvironmentBundleID:v39];
      if (v39)
      {
        [v39 UTF8String];
        v52 = tcc_identity_create();
        [*(v11 + 8) setMediaEnvironmentTCCIdentity:v52];
      }

      else
      {
        [*(v11 + 8) setMediaEnvironmentTCCIdentity:0];
      }

      FigSimpleMutexUnlock();
      if (infosCopy)
      {
        [*(v11 + 128) currentLayout];
        v53 = OUTLINED_FUNCTION_3_30();
        [FigCaptureClientApplicationStateMonitor _handleLayout:v53];
      }
    }
  }
}

- (uint64_t)_createAndObserveCMSessionForBKSApplicationStateMonitoring
{
  if (!self)
  {
    return 0;
  }

  if (FigCaptureAudiomxdSupportEnabled(self, a2))
  {
    v18 = OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_29_4(v18);
    OUTLINED_FUNCTION_39_7();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = v2;
    }

    if (v21)
    {
      [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
      v52 = 136315394;
      OUTLINED_FUNCTION_5_43();
      v38 = OUTLINED_FUNCTION_9_14();
      OUTLINED_FUNCTION_18_2(v38, v39, v40, v41, v42);
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8(v22, v23, v24, v25, v26);
    v16 = 4294954514;
    goto LABEL_28;
  }

  v6 = CMSessionCreate();
  if (v6)
  {
    v16 = v6;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v4, v45, v46, v47, v48, v49, v50);
    v59 = 0;
    v58[128] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v3)
    {
      v52 = 136315650;
      v53 = "[FigCaptureClientApplicationStateMonitor _createAndObserveCMSessionForBKSApplicationStateMonitoring]";
      v54 = 2114;
      loggingPrefix = [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
      v56 = 1024;
      v57 = v16;
      OUTLINED_FUNCTION_5_1(loggingPrefix, v43, v58, v44, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_1_4();
    goto LABEL_27;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", objc_msgSend(*(self + 8), "pid")];
  v7 = CMSessionSetProperty();
  if (v7)
  {
    v16 = v7;
    v28 = OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_36_0(v28);
    OUTLINED_FUNCTION_22_9();
    if (v29)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(self + 8), "pid")}];
    v8 = CMSessionSetProperty();
    if (!v8)
    {
      memset(v51, 0, sizeof(v51));
      v9 = *(self + 8);
      if (v9)
      {
        objc_msgSend_auditToken(v9);
      }

      [MEMORY[0x1E695DEF0] dataWithBytes:v51 length:32];
      v10 = CMSessionSetProperty();
      if (!v10)
      {
        v11 = [FigWeakReference weakReferenceToObject:self];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v13 = *MEMORY[0x1E69AFB00];
        v14 = *(self + 32);
        v46 = MEMORY[0x1E69E9820];
        v47 = 3221225472;
        v48 = __101__FigCaptureClientApplicationStateMonitor__createAndObserveCMSessionForBKSApplicationStateMonitoring__block_invoke;
        v49 = &unk_1E798FC90;
        v50 = v11;
        *(self + 40) = [defaultCenter addObserverForName:v13 object:v14 queue:0 usingBlock:&v46];
        [(FigCaptureClientApplicationStateMonitor *)self _updateBKSApplicationStateFromCMSession];
        return 0;
      }

      v16 = v10;
      v35 = OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_36_0(v35);
      OUTLINED_FUNCTION_22_9();
      if (!v36)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_65_3();
      v52 = 136315906;
      OUTLINED_FUNCTION_15_14();
      goto LABEL_31;
    }

    v16 = v8;
    v33 = OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_36_0(v33);
    OUTLINED_FUNCTION_22_9();
    if (v34)
    {
LABEL_22:
      OUTLINED_FUNCTION_65_3();
      v52 = 136315906;
      OUTLINED_FUNCTION_15_14();
LABEL_31:
      OUTLINED_FUNCTION_5_1(v30, v31, v58, v32, &dword_1AC90E000);
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_1_4();
LABEL_27:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_28:
  v37 = *(self + 32);
  if (v37)
  {
    CFRelease(v37);
    *(self + 32) = 0;
  }

  return v16;
}

- (void)_handleVisibilityEndowmentUpdate:(uint64_t)update
{
  if (self)
  {
    OUTLINED_FUNCTION_59_0();
    a47 = v49;
    a48 = v50;
    v52 = v51;
    if (dword_1ED844110)
    {
      OUTLINED_FUNCTION_3_45();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_4_0();
      if (v48)
      {
        v54 = MEMORY[0x1E696AEC0];
        [*(v52 + 8) pid];
        OUTLINED_FUNCTION_63_4();
        OUTLINED_FUNCTION_51_6();
        [v54 stringWithFormat:@"<%p[%d][%@]>"];
        OUTLINED_FUNCTION_0_49();
        OUTLINED_FUNCTION_7_33();
        OUTLINED_FUNCTION_5_1(v55, v56, &a20, v57, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v58, v59, v60, v61, v62);
    }

    if (*(v52 + 96) == 1)
    {
      [*(v52 + 128) currentLayout];
      v64 = OUTLINED_FUNCTION_3_30();
      [FigCaptureClientApplicationStateMonitor _handleLayout:v64];
    }

    if (*(v52 + 105) == 1)
    {
      [*(v52 + 136) currentLayout];
      v65 = OUTLINED_FUNCTION_3_30();
      [FigCaptureClientApplicationStateMonitor _handleLayout:v65];
    }

    OUTLINED_FUNCTION_56_6();
    if (v63)
    {
      [*(v52 + 144) currentLayout];
      v66 = OUTLINED_FUNCTION_3_30();
      [FigCaptureClientApplicationStateMonitor _handleLayout:v66];
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (FigCaptureClientApplicationStateMonitor)initWithClientAuditToken:(id *)token mediaEnvironment:(id)environment forThirdPartyTorch:(BOOL)torch applicationAndLayoutStateHandler:(id)handler
{
  torchCopy = torch;
  v11 = [FigCaptureClientApplicationStateMonitorClient alloc];
  v12 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v12;
  v13 = [(FigCaptureClientApplicationStateMonitorClient *)v11 initWithAuditToken:v16 mediaEnvironment:environment forThirdPartyTorch:torchCopy applicationAndLayoutStateHandler:handler];
  v14 = [(FigCaptureClientApplicationStateMonitor *)self _initWithClient:v13];

  return v14;
}

- (void)_deregisterAndReleaseAVAudioSession
{
  if (self)
  {
    if (FigCaptureAudiomxdSupportEnabled(self, a2))
    {
      if (self[3])
      {
        OUTLINED_FUNCTION_57_5();
        if (v4)
        {
          [v3 removeObserverForType:2 observer:self[5] name:*MEMORY[0x1E69AFB00]];

          self[5] = 0;
          [self[3] removeObserverForType:1 observer:self[6] name:*MEMORY[0x1E698D5C0]];

          self[6] = 0;
          v3 = self[3];
        }

        self[3] = 0;
      }
    }

    else
    {
      v5 = OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_8_5(v5);
      OUTLINED_FUNCTION_28_6();
      if (v6)
      {
        OUTLINED_FUNCTION_50_7();
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_18_13(v12, v13, v15, v14, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8(v7, v8, v9, v10, v11);
    }
  }
}

- (void)_deregisterAndReleaseCMSession
{
  if (self)
  {
    if (FigCaptureAudiomxdSupportEnabled(self, a2))
    {
      v5 = OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_8_5(v5);
      OUTLINED_FUNCTION_28_6();
      if (v6)
      {
        OUTLINED_FUNCTION_50_7();
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_18_13(v12, v13, v15, v14, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8(v7, v8, v9, v10, v11);
    }

    else if (*(self + 32))
    {
      OUTLINED_FUNCTION_57_5();
      if (!v4 || ([objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")], *(self + 40), *(self + 40) = 0, (v3 = *(self + 32)) != 0))
      {
        CFRelease(v3);
        *(self + 32) = 0;
      }
    }
  }
}

- (void)_handleAVAudioSessionMediaServicesWereResetNotification:(uint64_t)notification
{
  if (self)
  {
    OUTLINED_FUNCTION_59_0();
    a47 = v49;
    a48 = v50;
    v52 = v51;
    if (objc_msgSend_isEqualToString_([v53 name]))
    {
      if (dword_1ED844110)
      {
        OUTLINED_FUNCTION_3_45();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
        OUTLINED_FUNCTION_4_0();
        if (v48)
        {
          v56 = MEMORY[0x1E696AEC0];
          [v52[1] pid];
          OUTLINED_FUNCTION_63_4();
          OUTLINED_FUNCTION_51_6();
          [v56 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_0_49();
          OUTLINED_FUNCTION_7_33();
          OUTLINED_FUNCTION_5_1(v57, v58, &a20, v59, &dword_1AC90E000);
          OUTLINED_FUNCTION_34_8();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v60, v61, v62, v63, v64);
      }

      [(FigCaptureClientApplicationStateMonitor *)v52 _updateBKSApplicationStateFromAVAudioSession];
    }

    else
    {
      OUTLINED_FUNCTION_6_37();
      v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(v65);
      OUTLINED_FUNCTION_22_9();
      if (v66)
      {
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_0_49();
        OUTLINED_FUNCTION_7_33();
        OUTLINED_FUNCTION_5_1(v72, v73, &a20, v74, &dword_1AC90E000);
        OUTLINED_FUNCTION_48_7();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_13_0(v67, v68, v69, v70, v71);
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (id)_updateBKSApplicationStateFromCMSession
{
  if (result)
  {
    v4 = result;
    v5 = FigCaptureAudiomxdSupportEnabled(result, a2);
    if (v5)
    {
      v30 = OUTLINED_FUNCTION_43_7(v5, v6, v7, v8, v9, v10, v11, v12, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, SBYTE4(v71), v74);
      OUTLINED_FUNCTION_61_3(v30, v31, v32, v33, v34, v35, v36, v37, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v76);
      OUTLINED_FUNCTION_39_7();
      if (v39)
      {
        v40 = v38;
      }

      else
      {
        v40 = v2;
      }

      if (v40)
      {
        [(FigCaptureClientApplicationStateMonitor *)v4 loggingPrefix];
        OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_2_1();
        v46 = OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_18_2(v46, v47, v48, v49, v50);
      }

      OUTLINED_FUNCTION_1_4();
      return OUTLINED_FUNCTION_17_8(v41, v42, v43, v44, v45);
    }

    else
    {
      FigSimpleMutexLock();
      v75 = 0;
      if (CMSessionCopyProperty())
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_4_0();
        if (v3)
        {
          v14 = MEMORY[0x1E696AEC0];
          [v4[1] pid];
          OUTLINED_FUNCTION_63_4();
          OUTLINED_FUNCTION_51_6();
          [v14 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_5_1(v15, v16, v77, v17, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_39_0(v18, v19, v20, v21, v22);
      }

      else
      {
        intValue = [0 intValue];
        [(FigCaptureClientApplicationStateMonitor *)v4 _handleBKSApplicationStateChange:intValue, v24, v25, v26, v27, v28, v29, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, 0, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17], v77[18], v77[19], v77[20], v77[21], v77[22], v77[23], v77[24], v77[25]];
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

- (void)_handleBKSApplicationStateChange:(uint64_t)change
{
  OUTLINED_FUNCTION_59_0();
  a45 = v47;
  a46 = v50;
  if (!v48)
  {
LABEL_6:
    OUTLINED_FUNCTION_58_0();
    return;
  }

  v51 = v49;
  v52 = v48;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(v52 + 80) != 1)
  {
    OUTLINED_FUNCTION_3_45();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
    OUTLINED_FUNCTION_4_0();
    if (v46)
    {
      v54 = MEMORY[0x1E696AEC0];
      [*(v52 + 8) pid];
      [*(v52 + 8) applicationID];
      [v54 stringWithFormat:@"<%p[%d][%@]>"];
      OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_5_1(v55, v56, &a18 + 3, v57, &dword_1AC90E000);
      OUTLINED_FUNCTION_34_8();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_39_0(v58, v59, v60, v61, v62);
    goto LABEL_6;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInt:v51];
  OUTLINED_FUNCTION_58_0();

  [(FigCaptureClientApplicationStateMonitor *)v63 _updateClientStateCondition:v64 newValue:v65];
}

- (void)_updateClientStateCondition:(void *)condition newValue:
{
  if (!self || (*(self + 168) & 1) != 0)
  {
    return;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (self + 84 == a2)
  {
    [condition unsignedIntValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v15 || (*(self + 88) & 1) == 0) && dword_1ED844110)
    {
      v16 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v16);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
        v62 = OUTLINED_FUNCTION_106_0();
        FigCaptureBKSApplicationStateToString(v62);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1(v63, v64, v89, v65, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v17, v18, v19, v20, v21);
    }

    *(self + 84) = condition;
    v22 = 88;
  }

  else if (self + 100 == a2)
  {
    [condition intValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v15 || (*(self + 104) & 1) == 0) && dword_1ED844110)
    {
      v23 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v23);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
        v66 = OUTLINED_FUNCTION_106_0();
        FigCaptureClientLayoutStateToString(v66);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1(v67, v68, v89, v69, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v24, v25, v26, v27, v28);
    }

    *(self + 100) = condition;
    v22 = 104;
  }

  else if (self + 108 == a2)
  {
    [condition intValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v15 || (*(self + 112) & 1) == 0) && dword_1ED844110)
    {
      v29 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v29);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
        v75 = OUTLINED_FUNCTION_106_0();
        FigCaptureClientLayoutStateToString(v75);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1(v76, v77, v89, v78, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v30, v31, v32, v33, v34);
    }

    *(self + 108) = condition;
    v22 = 112;
  }

  else if (self + 116 == a2)
  {
    [condition intValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v15 || (*(self + 120) & 1) == 0) && dword_1ED844110)
    {
      v35 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v35);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
        v79 = OUTLINED_FUNCTION_106_0();
        FigCaptureClientLayoutStateToString(v79);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1(v80, v81, v89, v82, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v36, v37, v38, v39, v40);
    }

    *(self + 116) = condition;
    v22 = 120;
  }

  else
  {
    v8 = (self + 153);
    if (self + 153 != a2)
    {
      OUTLINED_FUNCTION_3_45();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_60_2(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_5();
        v70 = OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_141(v70, v71, v72, v73, v74);
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_56_0(v10, v11, v12, v13, v14);
      return;
    }

    bOOLValue = [condition BOOLValue];
    if ((*v8 != bOOLValue || (*(self + 154) & 1) == 0) && dword_1ED844110)
    {
      v42 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v42);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_5_1(v83, v84, v89, v85, &dword_1AC90E000);
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v43, v44, v45, v46, v47);
    }

    *v8 = bOOLValue;
    v22 = 154;
  }

  *(self + v22) = 1;
  OUTLINED_FUNCTION_57_5();
  if ((!v15 || *(self + 88) == 1) && (*(self + 96) != 1 || *(self + 104) == 1) && (*(self + 105) != 1 || *(self + 112) == 1))
  {
    OUTLINED_FUNCTION_56_6();
    if ((!v15 || *(self + 120) == 1) && (*(self + 152) != 1 || *(self + 154) == 1))
    {
      _resolveApplicationState = [(FigCaptureClientApplicationStateMonitor *)self _resolveApplicationState];
      _resolveAggregateLayoutState = [(FigCaptureClientApplicationStateMonitor *)self _resolveAggregateLayoutState];
      v50 = *(self + 92);
      v51 = v50 == 2 && *(self + 124) != _resolveAggregateLayoutState;
      if (v50 != _resolveApplicationState || v51)
      {
        *(self + 92) = _resolveApplicationState;
        *(self + 124) = _resolveAggregateLayoutState;
        if (dword_1ED844110)
        {
          OUTLINED_FUNCTION_6_37();
          v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v53 = v90;
          os_log_type_enabled(v52, v89[128]);
          OUTLINED_FUNCTION_115_0();
          if (v15)
          {
            v55 = v54;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            [(FigCaptureClientApplicationStateMonitor *)self loggingPrefix];
            FigCaptureClientLayoutStateToString(*(self + 124));
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_18_13(v86, v87, v89, v88, &dword_1AC90E000);
            OUTLINED_FUNCTION_48_7();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0(v56, v57, v58, v59, v60);
        }

        applicationAndLayoutStateHandler = [*(self + 8) applicationAndLayoutStateHandler];
        (*(applicationAndLayoutStateHandler + 16))(applicationAndLayoutStateHandler, [*(self + 8) pid], *(self + 92), *(self + 124));
      }
    }
  }
}

- (void)_handleLayout:(uint64_t)layout
{
  if (layout)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = v3;
    if (*(v3 + 168))
    {
LABEL_3:
      OUTLINED_FUNCTION_58_0();
      return;
    }

    v5 = v2;
    FigSimpleMutexLock();
    _resolveApplicationIDForLayoutMonitoring = [(FigCaptureClientApplicationStateMonitor *)v4 _resolveApplicationIDForLayoutMonitoring];
    if (dword_1ED844110)
    {
      v7 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_60_2(v7);
      OUTLINED_FUNCTION_30();
      if (v1)
      {
        v8 = MEMORY[0x1E696AEC0];
        [*(v4 + 8) pid];
        OUTLINED_FUNCTION_67_2();
        OUTLINED_FUNCTION_55_5();
        [v8 stringWithFormat:@"<%p[%d][%@]>"];
        FigCaptureDisplayTypeName([v5 displayType]);
        OUTLINED_FUNCTION_2_1();
        v9 = OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_141(v9, v10, v11, v12, v13);
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0(v14, v15, v16, v17, v18);
    }

    if ([v5 isPaymentServiceVisible])
    {
      v19 = 6;
LABEL_29:
      isEqualToString = objc_msgSend_isEqualToString_([*(v4 + 8) applicationID]);
      displayType = [v5 displayType];
      if (displayType <= 2)
      {
        if (((v19 == 3) & isEqualToString) != 0)
        {
          v26 = 2;
        }

        else
        {
          v26 = v19;
        }

        -[FigCaptureClientApplicationStateMonitor _updateClientStateCondition:newValue:](v4, v4 + 8 * displayType + 100, [MEMORY[0x1E696AD98] numberWithInt:v26]);
      }

      FigSimpleMutexUnlock();
      goto LABEL_3;
    }

    if ([*(v4 + 8) clientType] == 5)
    {
      v20 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(*(v4 + 8), "avconferenceClientApplicationIDs")}];
      v21 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v5, "foregroundApps")}];
      [v21 intersectSet:v20];
      if ([v21 count])
      {
        if ([objc_msgSend(v5 "foregroundApps")] <= 1)
        {
          v19 = 2;
        }

        else
        {
          v19 = 3;
        }
      }

      else
      {
        v23 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v5, "pipApps")}];
        [v23 intersectSet:v20];
        v19 = 4 * ([v23 count] != 0);
      }

      goto LABEL_29;
    }

    if (objc_msgSend_isEqualToString_([*(v4 + 8) applicationID]))
    {
      if ([*(v4 + 128) isOnLockScreen] && !objc_msgSend_isEqualToString_(objc_msgSend(*(v4 + 8), "xpcServiceRootHostApplicationID")))
      {
        v19 = 0;
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if (objc_msgSend_isEqualToString_([*(v4 + 8) applicationID]))
    {
      isSiriVisible = [v5 isSiriVisible];
    }

    else
    {
      if (!objc_msgSend_isEqualToString_([*(v4 + 8) applicationID]))
      {
        if (![objc_msgSend(v5 "foregroundApps")])
        {
          if ([objc_msgSend(v5 "obscuredApps")])
          {
            v19 = 5;
          }

          else if ([objc_msgSend(v5 "pipApps")])
          {
            v19 = 4;
          }

          else
          {
            v19 = [objc_msgSend(v5 "foregroundApps")] != 0;
          }

          goto LABEL_29;
        }

        if ([objc_msgSend(v5 "foregroundApps")] != 1)
        {
          if ([objc_msgSend(v5 "foregroundApps")] <= 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = 3;
          }

          goto LABEL_29;
        }

LABEL_19:
        v19 = 2;
        goto LABEL_29;
      }

      isSiriVisible = [v5 isPaymentServiceIDVerifierVisible];
    }

    if (isSiriVisible)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_29;
  }
}

- (void)deviceLockStateMonitor:(id)monitor didUpdateDeviceLockState:(BOOL)state
{
  stateCopy = state;
  FigSimpleMutexLock();
  -[FigCaptureClientApplicationStateMonitor _updateClientStateCondition:newValue:](self, &self->_deviceIsLocked, [MEMORY[0x1E696AD98] numberWithBool:stateCopy]);

  FigSimpleMutexUnlock();
}

@end