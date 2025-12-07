@interface FigCaptureLockScreenPrewarmingMonitor
+ (void)initialize;
+ (void)start;
+ (void)stop;
- (uint64_t)_shouldPrewarmForHostTime:(uint64_t)result;
- (void)_cancelDelayedPrewarmTimer;
- (void)_evaluatePrewarmingConditions;
- (void)_init;
- (void)_invalidate;
- (void)_prewarmAfterDelay:(uint64_t)delay;
- (void)_setIsPrewarming:(uint64_t)result;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_updateActiveBiometricOperation:(uint64_t)result;
- (void)_updateDeviceLockState;
- (void)dealloc;
- (void)layoutMonitor:(id)monitor didUpdateLayout:(id)layout;
@end

@implementation FigCaptureLockScreenPrewarmingMonitor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)start
{
  if (!sPrewarmingMonitor)
  {
    if (MGGetBoolAnswer())
    {
      sPrewarmingMonitor = [[FigCaptureLockScreenPrewarmingMonitor alloc] _init];
    }
  }
}

+ (void)stop
{
  [(FigCaptureLockScreenPrewarmingMonitor *)sPrewarmingMonitor _invalidate];

  sPrewarmingMonitor = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureLockScreenPrewarmingMonitor;
  [(FigCaptureLockScreenPrewarmingMonitor *)&v3 dealloc];
}

void __52__FigCaptureLockScreenPrewarmingMonitor__invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 20) == 1)
  {
    [(FigCaptureLockScreenPrewarmingMonitor *)v1 _stopMonitoring];
  }
}

double __60__FigCaptureLockScreenPrewarmingMonitor__prewarmAfterDelay___block_invoke_29()
{
  if (dword_1ED8440D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void __97__FigCaptureLockScreenPrewarmingMonitor__registerForBiometricEnrollmentChangesAndStartMonitoring__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = a2 != 0;
  v3 = *(result + 32);
  if (*(v3 + 20) != v2)
  {
    *(v3 + 20) = v2;
    v4 = *(result + 32);
    if (a2)
    {
      [(FigCaptureLockScreenPrewarmingMonitor *)v4 _startMonitoring];
    }

    else
    {
      [(FigCaptureLockScreenPrewarmingMonitor *)v4 _stopMonitoring];
    }
  }
}

- (void)layoutMonitor:(id)monitor didUpdateLayout:(id)layout
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke;
  v9 = &unk_1E798F898;
  monitorCopy = monitor;
  selfCopy = self;
  if (self->_addingLayoutObserver)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      [FigCaptureLockScreenPrewarmingMonitor layoutMonitor:didUpdateLayout:];
    }

    v8(v7);
  }

  else
  {
    if (!_FigIsNotCurrentDispatchQueue())
    {
      [FigCaptureLockScreenPrewarmingMonitor layoutMonitor:didUpdateLayout:];
    }

    notifyQueue = self->_notifyQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke_2;
    v6[3] = &unk_1E7990390;
    v6[4] = self;
    v6[5] = v7;
    dispatch_sync(notifyQueue, v6);
  }
}

void __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isOnLockScreen];
  v3 = *(a1 + 40);
  if (*(v3 + 64) != v2)
  {
    *(v3 + 64) = v2;
    v4 = *(a1 + 40);

    [(FigCaptureLockScreenPrewarmingMonitor *)v4 _evaluatePrewarmingConditions];
  }
}

uint64_t __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 66) == 1)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)_init
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = FigCaptureLockScreenPrewarmingMonitor;
  v1 = objc_msgSendSuper2(&v7, sel_init);
  if (v1)
  {
    v1[1] = FigDispatchQueueCreateWithPriority();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    OUTLINED_FUNCTION_3_72();
    v8[2] = v2;
    v8[3] = &unk_1E79997C0;
    v8[4] = v1;
    *(v1 + 4) = clspm_registerForNotifyName("com.apple.BiometricKit.enrollmentChanged", v3, v8);
    v5 = @"ExtendedDeviceLockState";
    v6 = MEMORY[0x1E695E118];
    v1[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  return v1;
}

- (void)_invalidate
{
  if (self)
  {
    v2 = *(self + 16);
    if (v2)
    {
      notify_cancel(v2);
      *(self + 16) = 0;
      OUTLINED_FUNCTION_7_1();
      v5 = 3221225472;
      v6 = __52__FigCaptureLockScreenPrewarmingMonitor__invalidate__block_invoke;
      v7 = &unk_1E798F870;
      selfCopy = self;
      dispatch_async(v3, block);
    }
  }
}

- (void)_stopMonitoring
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_10_38(result))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v4);
    }

    v2 = *(v1 + 48);
    if (v2)
    {
      notify_cancel(v2);
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      notify_cancel(v3);
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
    }

    if (*(v1 + 66) == 1)
    {
      [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      *(v1 + 64) = 0;
      *(v1 + 66) = 0;
    }

    [(FigCaptureLockScreenPrewarmingMonitor *)v1 _evaluatePrewarmingConditions];
  }
}

- (void)_startMonitoring
{
  if (result)
  {
    result = OUTLINED_FUNCTION_10_38(result);
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3(v4);
    }

    if (*(v1 + 20) == 1 && !*(v1 + 24) && !*(v1 + 48) && (*(v1 + 66) & 1) == 0)
    {
      v2 = *(v1 + 8);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__FigCaptureLockScreenPrewarmingMonitor__startMonitoring__block_invoke;
      v6[3] = &unk_1E79997C0;
      v6[4] = v1;
      *(v1 + 24) = clspm_registerForNotifyName("com.apple.BiometricKit.activeOperation", v2, v6);
      v3 = *(v1 + 8);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __57__FigCaptureLockScreenPrewarmingMonitor__startMonitoring__block_invoke_2;
      v5[3] = &unk_1E79997C0;
      v5[4] = v1;
      *(v1 + 48) = clspm_registerForNotifyName("com.apple.mobile.keybagd.lock_status", v3, v5);
      *(v1 + 65) = 1;
      result = [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      *(v1 + 65) = 256;
    }
  }

  return result;
}

- (void)_updateActiveBiometricOperation:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 28);
    if (v3 != a2)
    {
      *(result + 28) = a2;
      if (v3 == 2)
      {
        *(result + 32) = mach_absolute_time();
      }

      [(FigCaptureLockScreenPrewarmingMonitor *)result _evaluatePrewarmingConditions];
    }
  }
}

- (void)_updateDeviceLockState
{
  if (result)
  {
    v2 = MKBGetDeviceLockState();
    v3 = *(result + 52);
    if (v2 != v3)
    {
      v4 = v2;
      if (((v2 < 7) & (0x46u >> v2)) == 0 && v3 <= 6 && ((0x39u >> v3) & 1) == 0)
      {
        *(result + 56) = mach_absolute_time();
      }

      *(result + 52) = v4;

      [(FigCaptureLockScreenPrewarmingMonitor *)result _evaluatePrewarmingConditions];
    }
  }
}

- (void)_evaluatePrewarmingConditions
{
  if (result)
  {
    v2 = mach_absolute_time();
    v3 = [(FigCaptureLockScreenPrewarmingMonitor *)result _shouldPrewarmForHostTime:v2];

    [(FigCaptureLockScreenPrewarmingMonitor *)result _setIsPrewarming:v3];
  }
}

- (uint64_t)_shouldPrewarmForHostTime:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v9);
    }

    v3 = *(v2 + 67);
    v4 = (*(v2 + 52) > 6u) | (0x39u >> *(v2 + 52));
    v5 = *(v2 + 64);
    v6 = ((FigHostTimeToNanoseconds() / 1000) / 1000000.0) < 0.5;
    v7 = *(v2 + 28);
    v8 = FigHostTimeToNanoseconds();
    result = 0;
    if (v4 & 1) != 0 && (v5 & 1) != 0 && ((v6 | v3))
    {
      return (v7 != 2) & ((((v8 / 1000) / 1000000.0) < 0.5) | v3);
    }
  }

  return result;
}

- (void)_setIsPrewarming:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_10_38(result))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v38);
    }

    if (*(v2 + 67) != a2)
    {
      *(v2 + 67) = a2;
      if (a2)
      {
        if (dword_1ED8440D0)
        {
          v4 = OUTLINED_FUNCTION_6_54();
          v5 = OUTLINED_FUNCTION_8_5(v4);
          v6 = OUTLINED_FUNCTION_6(v5);
          if (v6)
          {
            LODWORD(v42) = 136315394;
            *(&v42 + 4) = "[FigCaptureLockScreenPrewarmingMonitor _setIsPrewarming:]";
            WORD6(v42) = 2048;
            *(&v45 - 2) = 0x406F400000000000;
            OUTLINED_FUNCTION_5();
            v6 = OUTLINED_FUNCTION_4_63(v16, v17, v18, v19, &dword_1AC90E000, v20, v21, "<<<< FigCaptureLockScreenPrewarmingMonitor >>>> %s: Biometric match complete, device is unlocked, and on lock screen. Will prewarm the capture device in %.0fms.", v39, v40, v42, *(&v42 + 1), v45, v46, SBYTE2(v46), SHIBYTE(v46));
            v13 = v6;
          }

          else
          {
            v13 = 0;
          }

          OUTLINED_FUNCTION_1_92(v6, v7, v8, v13, v9, v10, v11, v12, v39, v40, v41, v44, v45, v46, SBYTE2(v46), SHIBYTE(v46));
        }

        [(FigCaptureLockScreenPrewarmingMonitor *)v2 _prewarmAfterDelay:?];
      }

      else
      {
        if (*(v2 + 72))
        {
          if (*(v2 + 64) == 1)
          {
            v14 = *(v2 + 52) - 1;
            if (v14 > 5)
            {
              v15 = "biometric match in progress";
            }

            else
            {
              v15 = off_1E7999830[v14];
            }
          }

          else
          {
            v15 = "no longer on lock screen";
          }

          if (dword_1ED8440D0)
          {
            v22 = OUTLINED_FUNCTION_6_54();
            v23 = OUTLINED_FUNCTION_8_5(v22);
            v24 = OUTLINED_FUNCTION_6(v23);
            if (v24)
            {
              LODWORD(v43) = 136315394;
              *(&v43 + 4) = "[FigCaptureLockScreenPrewarmingMonitor _setIsPrewarming:]";
              WORD6(v43) = 2080;
              *(&v45 - 2) = v15;
              OUTLINED_FUNCTION_5();
              v24 = OUTLINED_FUNCTION_4_63(v32, v33, v34, v35, &dword_1AC90E000, v36, v37, "<<<< FigCaptureLockScreenPrewarmingMonitor >>>> %s: Cancelling lock screen capture device prewarming for reason: %s.", v39, v40, v43, *(&v43 + 1), v45, v46, SBYTE2(v46), SHIBYTE(v46));
              v31 = v24;
            }

            else
            {
              v31 = 0;
            }

            OUTLINED_FUNCTION_1_92(v24, v25, v26, v31, v27, v28, v29, v30, v39, v40, v41, v44, v45, v46, SBYTE2(v46), SHIBYTE(v46));
          }

          [(FigCaptureLockScreenPrewarmingMonitor *)v2 _cancelDelayedPrewarmTimer];
        }

        *(v2 + 56) = 0;
        *(v2 + 32) = 0;
      }
    }
  }
}

- (void)_prewarmAfterDelay:(uint64_t)delay
{
  if (delay)
  {
    if (!OUTLINED_FUNCTION_10_38(delay))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v6);
    }

    [(FigCaptureLockScreenPrewarmingMonitor *)v2 _cancelDelayedPrewarmTimer];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 8));
    v5 = dispatch_time(0, (a2 * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, (a2 * 0.1 * 1000000000.0));
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__FigCaptureLockScreenPrewarmingMonitor__prewarmAfterDelay___block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = v2;
    dispatch_source_set_event_handler(v4, handler);
    *(v2 + 72) = v4;
    dispatch_activate(v4);
  }
}

- (void)_cancelDelayedPrewarmTimer
{
  if (self)
  {
    v2 = *(self + 72);
    if (v2)
    {
      dispatch_source_cancel(v2);

      *(self + 72) = 0;
    }
  }
}

uint64_t __60__FigCaptureLockScreenPrewarmingMonitor__prewarmAfterDelay___block_invoke(uint64_t a1)
{
  if (dword_1ED8440D0)
  {
    v2 = OUTLINED_FUNCTION_6_54();
    v3 = OUTLINED_FUNCTION_8_5(v2);
    v4 = OUTLINED_FUNCTION_6(v3);
    if (v4)
    {
      LODWORD(v22) = 136315138;
      *(&v23 - 4) = "[FigCaptureLockScreenPrewarmingMonitor _prewarmAfterDelay:]_block_invoke";
      OUTLINED_FUNCTION_5();
      v4 = OUTLINED_FUNCTION_4_63(v12, v13, v14, v15, &dword_1AC90E000, v16, v17, "<<<< FigCaptureLockScreenPrewarmingMonitor >>>> %s: Prewarming capture device for lock screen camera", v19, v20, v22, v23, v24, v25, SBYTE2(v25), SHIBYTE(v25));
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    OUTLINED_FUNCTION_1_92(v4, v5, v6, v11, v7, v8, v9, v10, v19, v20, v21, v23, v24, v25, SBYTE2(v25), SHIBYTE(v25));
  }

  [(FigCaptureLockScreenPrewarmingMonitor *)*(a1 + 32) _cancelDelayedPrewarmTimer];
  [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  return [(FigCaptureLockScreenPrewarmingMonitor *)*(a1 + 32) _setIsPrewarming:?];
}

- (uint64_t)layoutMonitor:didUpdateLayout:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)layoutMonitor:didUpdateLayout:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

@end