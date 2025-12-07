@interface FigCapturePowerMonitor
+ (void)initialize;
- (FigCapturePowerMonitor)init;
- (float)maxTorchLevel;
- (uint64_t)_powerNotification:(uint64_t)result;
- (unsigned)powerPressureLevel;
- (void)dealloc;
@end

@implementation FigCapturePowerMonitor

- (float)maxTorchLevel
{
  FigSimpleMutexLock();
  maxTorchLevel = self->_maxTorchLevel;
  FigSimpleMutexUnlock();
  return maxTorchLevel;
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

- (FigCapturePowerMonitor)init
{
  v10.receiver = self;
  v10.super_class = FigCapturePowerMonitor;
  v2 = [(FigCapturePowerMonitor *)&v10 init];
  if (v2)
  {
    v3 = FigSimpleMutexCreate();
    *(v2 + 4) = v3;
    if (v3)
    {
      *(v2 + 4) = -1;
      *(v2 + 10) = 1065353216;
      v4 = FigDispatchQueueCreateWithPriority();
      *(v2 + 1) = v4;
      if (v4)
      {
        v5 = [FigWeakReference weakReferenceToObject:v2];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __30__FigCapturePowerMonitor_init__block_invoke;
        handler[3] = &unk_1E7991270;
        handler[4] = v5;
        if (!notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v2 + 4, *(v2 + 1), handler))
        {
          v6 = *(v2 + 1);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __30__FigCapturePowerMonitor_init__block_invoke_2;
          block[3] = &unk_1E79907D8;
          block[4] = v2;
          block[5] = handler;
          dispatch_sync(v6, block);
          return v2;
        }

        [FigCapturePowerMonitor init];
      }

      else
      {
        [FigCapturePowerMonitor init];
      }
    }

    else
    {
      [FigCapturePowerMonitor init];
    }

    return 0;
  }

  return v2;
}

void __30__FigCapturePowerMonitor_init__block_invoke(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  if (!notify_get_state(a2, &state64))
  {
    v5 = [*(a1 + 32) referencedObject];
    [(FigCapturePowerMonitor *)v5 _powerNotification:?];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)dealloc
{
  registrationToken = self->_registrationToken;
  if ((registrationToken & 0x80000000) == 0)
  {
    notify_cancel(registrationToken);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = FigCapturePowerMonitor;
  [(FigCapturePowerMonitor *)&v4 dealloc];
}

- (unsigned)powerPressureLevel
{
  FigSimpleMutexLock();
  powerPressureLevel = self->_powerPressureLevel;
  FigSimpleMutexUnlock();
  return powerPressureLevel;
}

- (uint64_t)_powerNotification:(uint64_t)result
{
  if (result)
  {
    v4 = result;
    if (dword_1ED844090)
    {
      v5 = OUTLINED_FUNCTION_1_51();
      if (OUTLINED_FUNCTION_58(v5))
      {
        v13 = v2;
      }

      else
      {
        v13 = v2 & 0xFFFFFFFE;
      }

      if (v13)
      {
        *v30 = 136315650;
        *&v30[4] = "[FigCapturePowerMonitor _powerNotification:]";
        *&v30[12] = 1024;
        *&v30[14] = a2;
        *&v30[18] = 1024;
        *&v30[20] = 30;
        LODWORD(v29) = 24;
        v13 = OUTLINED_FUNCTION_2_40(v13, v6, v7, v8, &dword_1AC90E000, v10, v11, "<<<< FigCapturePowerMonitor >>>> %s: Power level now %d (vs. threshold %d)", v30, v29, *v30, *&v30[8], *&v30[16], *&v30[24], *&v30[32], v31, v32, v33);
        v14 = v13;
        v2 = v34;
      }

      else
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_0_39(v13, v6, v7, v14, v9, v10, v11, v12, v28, v29, *v30, *&v30[8], *&v30[16], *&v30[24], *&v30[32], v31, v32, v33);
    }

    FigSimpleMutexLock();
    *(v4 + 44) = a2;
    if (a2 <= 0x1D)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = *(v4 + 40);
    *(v4 + 40) = v15;
    result = FigSimpleMutexUnlock();
    if (v15 != v16)
    {
      if (dword_1ED844090)
      {
        v17 = OUTLINED_FUNCTION_1_51();
        if (OUTLINED_FUNCTION_58(v17))
        {
          v25 = v2;
        }

        else
        {
          v25 = v2 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = *(v4 + 44);
          *v30 = 136315906;
          *&v30[4] = "[FigCapturePowerMonitor _powerNotification:]";
          *&v30[12] = 1024;
          *&v30[14] = a2;
          *&v30[18] = 2048;
          *&v30[20] = v15;
          *&v30[28] = 1024;
          *&v30[30] = v26;
          LODWORD(v29) = 34;
          v25 = OUTLINED_FUNCTION_2_40(v25, v18, v19, v20, &dword_1AC90E000, v22, v23, "<<<< FigCapturePowerMonitor >>>> %s: Power level %d setting maxTorchLevel %g, _powerPressureLevel %d", v30, v29, *v30, *&v30[8], *&v30[16], *&v30[24], *&v30[32], v31, v32, v33);
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        OUTLINED_FUNCTION_0_39(v25, v18, v19, v27, v21, v22, v23, v24, v28, v29, *v30, *&v30[8], *&v30[16], *&v30[24], *&v30[32], v31, v32, v33);
      }

      result = *(v4 + 24);
      if (result)
      {
        return (*(result + 16))(result, v4);
      }
    }
  }

  return result;
}

@end