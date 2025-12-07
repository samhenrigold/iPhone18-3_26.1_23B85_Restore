@interface RBXNUWrapper
+ (id)sharedWrapper;
+ (void)setGPURoleWithKernel:(unsigned __int8)kernel forPid:(int)pid;
- (RBXNUWrapper)init;
- (int64_t)_setBallastOffset:(unint64_t)offset;
- (void)setGPURole:(unsigned __int8)role forPid:(int)pid;
- (void)setGPURoleWithGPUDevice:(unsigned __int8)device forPid:(int)pid;
@end

@implementation RBXNUWrapper

+ (id)sharedWrapper
{
  if (sharedWrapper_onceToken != -1)
  {
    +[RBXNUWrapper sharedWrapper];
  }

  v3 = sharedWrapper_result;

  return v3;
}

uint64_t __29__RBXNUWrapper_sharedWrapper__block_invoke()
{
  sharedWrapper_result = objc_alloc_init(RBXNUWrapper);

  return MEMORY[0x2821F96F8]();
}

- (RBXNUWrapper)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = RBXNUWrapper;
  v2 = [(RBXNUWrapper *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D73668] clientWithIdentifier:227];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;

    v5 = [(TRIClient *)v2->_trialClient levelForFactor:@"BallastOffset" withNamespaceName:@"COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS"];
    v6 = rbs_process_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      longValue = [v5 longValue];
      *buf = 134217984;
      v22 = longValue;
      _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "Setting ballast offset to %lld", buf, 0xCu);
    }

    if (-[RBXNUWrapper _setBallastOffset:](v2, "_setBallastOffset:", [v5 longValue]) < 0)
    {
      v8 = rbs_process_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [RBXNUWrapper init];
      }
    }

    objc_initWeak(buf, v2);
    v9 = v2->_trialClient;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __20__RBXNUWrapper_init__block_invoke;
    v18[3] = &unk_279B33E88;
    objc_copyWeak(&v19, buf);
    v10 = [(TRIClient *)v9 addUpdateHandlerForNamespaceName:@"COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS" usingBlock:v18];
    if ([v5 longValue])
    {
      [(RBXNUWrapper *)v2 setBallastDrained:1];
    }

    if (MEMORY[0x28220C838] && MEMORY[0x28221DB70])
    {
      v11 = IOServiceMatching("IOGPU");
      if (!IOServiceGetMatchingService(*MEMORY[0x277CD2898], v11))
      {
        v13 = rbs_general_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [RBXNUWrapper init];
        }

        goto LABEL_23;
      }

      v12 = IOGPUDeviceCreate();
      v2->_gpuDevice = v12;
      if (!v12)
      {
        v13 = rbs_general_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [RBXNUWrapper init];
        }

        goto LABEL_23;
      }

      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v14 = "_gpuDevice initialized";
LABEL_18:
        _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, v14, v17, 2u);
      }
    }

    else
    {
      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v14 = "IOGPU not present";
        goto LABEL_18;
      }
    }

LABEL_23:

    v15 = v2;
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __20__RBXNUWrapper_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] refresh];
  v2 = [WeakRetained[3] levelForFactor:@"BallastOffset" withNamespaceName:@"COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS"];
  v3 = rbs_process_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [v2 longValue];
    _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_DEFAULT, "Trial Update Received: Setting ballast offset to %lld", &v5, 0xCu);
  }

  if ([WeakRetained _setBallastOffset:{objc_msgSend(v2, "longValue")}] < 0)
  {
    v4 = rbs_process_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [RBXNUWrapper init];
    }
  }
}

+ (void)setGPURoleWithKernel:(unsigned __int8)kernel forPid:(int)pid
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = 0x706030202uLL >> (8 * kernel);
  if (kernel >= 5u)
  {
    LOBYTE(v5) = 2;
  }

  v6 = v5 & 7;
  if (setpriority(5, pid, v6))
  {
    if (*__error() == 3)
    {
      return;
    }

    v7 = rbs_process_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromDarwinGPURole(v6);
      v9 = __error();
      v10 = strerror(*v9);
      v11 = 67109890;
      pidCopy2 = pid;
      v13 = 2114;
      v14 = v8;
      v15 = 1024;
      v16 = v6;
      v17 = 2080;
      v18 = v10;
      _os_log_error_impl(&dword_262485000, v7, OS_LOG_TYPE_ERROR, "%d Error setting Darwin GPU to %{public}@s (%d): %s", &v11, 0x22u);
LABEL_9:
    }
  }

  else
  {
    v7 = rbs_process_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromDarwinGPURole(v6);
      v11 = 67109634;
      pidCopy2 = pid;
      v13 = 2114;
      v14 = v8;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "%d Set Darwin GPU to %{public}@s (%d)", &v11, 0x18u);
      goto LABEL_9;
    }
  }
}

- (void)setGPURoleWithGPUDevice:(unsigned __int8)device forPid:(int)pid
{
  v18 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x28221DB78])
  {
    if (self->_gpuDevice)
    {
      if (device == 3)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      if (device == 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5;
      }

      v7 = IOGPUDeviceSetAppGPURole();
      if (v7 == -536870208)
      {
        v9 = rbs_process_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v14 = 67109376;
          pidCopy2 = pid;
          v16 = 1024;
          v17 = v6;
          v10 = "%d setGPURole role to %d (no effect for this process)";
          goto LABEL_19;
        }
      }

      else
      {
        v8 = v7;
        if (v7)
        {
          v9 = rbs_general_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(RBXNUWrapper *)pid setGPURoleWithGPUDevice:v8 forPid:v9];
          }
        }

        else
        {
          v9 = rbs_process_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v14 = 67109376;
            pidCopy2 = pid;
            v16 = 1024;
            v17 = v6;
            v10 = "%d setGPURole role to %d";
LABEL_19:
            v11 = v9;
            v12 = OS_LOG_TYPE_INFO;
            v13 = 14;
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      v9 = rbs_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RBXNUWrapper setGPURoleWithGPUDevice:forPid:];
      }
    }
  }

  else
  {
    v9 = rbs_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v10 = "Setting GPU Role not avaible on this mastering";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 2;
LABEL_20:
      _os_log_impl(&dword_262485000, v11, v12, v10, &v14, v13);
    }
  }
}

- (void)setGPURole:(unsigned __int8)role forPid:(int)pid
{
  v4 = *&pid;
  roleCopy = role;
  [RBXNUWrapper setGPURoleWithKernel:"setGPURoleWithKernel:forPid:" forPid:?];

  [(RBXNUWrapper *)self setGPURoleWithGPUDevice:roleCopy forPid:v4];
}

- (int64_t)_setBallastOffset:(unint64_t)offset
{
  self->_ballastOffsetMB = offset;
  offsetCopy = offset;
  return sysctlbyname("kern.memorystatus.ballast_offset_mb", 0, 0, &offsetCopy, 4uLL);
}

- (void)setGPURoleWithGPUDevice:(os_log_t)log forPid:.cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "%d setGPURole failed with result = %x", v3, 0xEu);
}

@end