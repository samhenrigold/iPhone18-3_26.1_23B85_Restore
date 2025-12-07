@interface FigCaptureThermalMonitor
+ (void)initialize;
- (FigCaptureThermalMonitor)init;
- (float)maxTorchLevel;
- (int)thermalLevel;
- (uint64_t)_thermalNotification:(uint64_t)result;
- (void)dealloc;
@end

@implementation FigCaptureThermalMonitor

- (FigCaptureThermalMonitor)init
{
  v10.receiver = self;
  v10.super_class = FigCaptureThermalMonitor;
  v2 = [(FigCaptureThermalMonitor *)&v10 init];
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
        handler[2] = __32__FigCaptureThermalMonitor_init__block_invoke;
        handler[3] = &unk_1E7991270;
        handler[4] = v5;
        if (!notify_register_dispatch(*MEMORY[0x1E69E98C0], v2 + 4, *(v2 + 1), handler))
        {
          v6 = *(v2 + 1);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __32__FigCaptureThermalMonitor_init__block_invoke_2;
          block[3] = &unk_1E79907D8;
          block[4] = v2;
          block[5] = handler;
          dispatch_sync(v6, block);
          return v2;
        }

        [FigCaptureThermalMonitor init];
      }

      else
      {
        [FigCaptureThermalMonitor init];
      }
    }

    else
    {
      [FigCaptureThermalMonitor init];
    }

    return 0;
  }

  return v2;
}

void __32__FigCaptureThermalMonitor_init__block_invoke(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  if (!notify_get_state(a2, &state64))
  {
    v5 = [*(a1 + 32) referencedObject];
    [(FigCaptureThermalMonitor *)v5 _thermalNotification:?];
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
  v4.super_class = FigCaptureThermalMonitor;
  [(FigCaptureThermalMonitor *)&v4 dealloc];
}

- (int)thermalLevel
{
  FigSimpleMutexLock();
  thermalLevel = self->_thermalLevel;
  FigSimpleMutexUnlock();
  return thermalLevel;
}

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

- (uint64_t)_thermalNotification:(uint64_t)result
{
  if (result)
  {
    v4 = result;
    if (dword_1ED844450)
    {
      v5 = OUTLINED_FUNCTION_1_42();
      if (OUTLINED_FUNCTION_58(v5))
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LODWORD(v44) = 136315650;
        OUTLINED_FUNCTION_3_31();
        WORD1(v46) = v13;
        DWORD1(v46) = 30;
        LODWORD(v43) = 24;
        v12 = OUTLINED_FUNCTION_2_40(v14, v15, v16, v17, &dword_1AC90E000, v18, v19, "<<<< FigCaptureThermalMonitor >>>> %s: Thermal level now %d (vs. threshold %d)", &v44, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
        v20 = v12;
        v2 = v51;
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_0_35(v12, v6, v7, v20, v8, v9, v10, v11, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
    }

    FigSimpleMutexLock();
    if (a2 <= 0x1D)
    {
      v21 = a2 == 20;
    }

    else
    {
      v21 = 2;
    }

    if (a2 <= 0x1D)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    v23 = *(v4 + 40);
    *(v4 + 40) = v22;
    v24 = *(v4 + 44);
    *(v4 + 44) = v21;
    result = FigSimpleMutexUnlock();
    if (v22 != v23 || v21 != v24)
    {
      if (dword_1ED844450)
      {
        v26 = OUTLINED_FUNCTION_1_42();
        if (OUTLINED_FUNCTION_58(v26))
        {
          v33 = v2;
        }

        else
        {
          v33 = v2 & 0xFFFFFFFE;
        }

        if (v33)
        {
          LODWORD(v44) = 136315650;
          OUTLINED_FUNCTION_3_31();
          WORD1(v46) = 2048;
          *(&v46 + 4) = v34;
          LODWORD(v43) = 28;
          v33 = OUTLINED_FUNCTION_2_40(v35, v36, v37, v38, &dword_1AC90E000, v39, v40, "<<<< FigCaptureThermalMonitor >>>> %s: Thermal level %d, setting maxTorchLevel %g.", &v44, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
          v41 = v33;
        }

        else
        {
          v41 = 0;
        }

        OUTLINED_FUNCTION_0_35(v33, v27, v28, v41, v29, v30, v31, v32, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
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