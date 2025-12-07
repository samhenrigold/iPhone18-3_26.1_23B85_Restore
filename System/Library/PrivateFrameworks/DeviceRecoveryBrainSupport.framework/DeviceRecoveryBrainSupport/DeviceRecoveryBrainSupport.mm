id DRECopyIORegEntryWithError(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, a1);
  if (v6)
  {
    v7 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, v5, kCFAllocatorDefault, 0);
    v9 = IOObjectRelease(v7);
    v10 = DRGetLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "DRECopyIORegEntryWithError";
      v18 = 2082;
      v19 = a1;
      v20 = 2114;
      v21 = CFProperty;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ioreg property: '%{public}s' = %{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v13 = DRGetLogHandle(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      DRECopyIORegEntryWithError_cold_1();
    }

    v14 = [NSString stringWithFormat:@"unable to fetch io-reg entry for %s", a1];
    v11 = DRCreateError(@"DeviceRecoveryError", 16, v14, @"unable to fetch io-reg entry for %s", 0, "DRECopyIORegEntryWithError", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryHelpers.m", 0x16u);

    CFProperty = 0;
    if (a3 && v11)
    {
      v15 = v11;
      CFProperty = 0;
      *a3 = v11;
    }
  }

  return CFProperty;
}

id DRECopyIORegAsStringWithError(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, a1);
  if (!v6)
  {
    DRECopyIORegAsStringWithError_cold_2(a1, &v14);
    CFProperty = 0;
LABEL_16:
    v9 = v14;
    goto LABEL_8;
  }

  v7 = v6;
  CFProperty = IORegistryEntryCreateCFProperty(v6, v5, kCFAllocatorDefault, 0);
  IOObjectRelease(v7);
  if (!CFProperty)
  {
    DRECopyIORegAsStringWithError_cold_1(v5, &v14);
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFProperty = CFProperty;
    v9 = 0;
    v10 = CFProperty;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[NSString alloc] initWithData:CFProperty encoding:4];
    v9 = 0;
    goto LABEL_11;
  }

  v11 = [NSString stringWithFormat:@"unable to coerce io-reg property to a string"];
  v9 = DRCreateError(@"DeviceRecoveryError", 16, v11, @"unable to coerce io-reg property to a string", 0, "DRECopyIORegAsStringWithError", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryHelpers.m", 0x3Du);

LABEL_8:
  v10 = 0;
  if (a3 && v9)
  {
    v12 = v9;
    v10 = 0;
    *a3 = v9;
  }

LABEL_11:

  return v10;
}

void DREDeleteNVRAMProperty(void *a1)
{
  property = a1;
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v1)
  {
    v2 = v1;
    IORegistryEntrySetCFProperty(v1, @"IONVRAM-DELETE-PROPERTY", property);
    IOObjectRelease(v2);
  }
}

uint64_t DRESetNVRAMProperty(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = DRENVRAMService();
  if (v5)
  {
    v6 = v5;
    v7 = DRGetLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "DRESetNVRAMProperty";
      v12 = 2114;
      v13 = v3;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting NVRAM var: %{public}@ = %{public}@", &v10, 0x20u);
    }

    v8 = IORegistryEntrySetCFProperty(v6, v3, v4);
  }

  else
  {
    v8 = 3758097097;
  }

  return v8;
}

uint64_t DRENVRAMService()
{
  result = atomic_load(DRENVRAMService_sharedNVRAM);
  if (!result)
  {
    result = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (result)
    {
      v1 = 0;
      atomic_compare_exchange_strong(DRENVRAMService_sharedNVRAM, &v1, result);
      if (v1)
      {
        IOObjectRelease(result);
        return v1;
      }
    }
  }

  return result;
}

id DREGetNVRAMVar(void *a1)
{
  v1 = a1;
  v2 = DRENVRAMService();
  v3 = v2;
  v4 = DRGetLogHandle(v2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "DREGetNVRAMVar";
      v10 = 2114;
      v11 = v1;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting NVRAM var: %{public}@", &v8, 0x16u);
    }

    v6 = IORegistryEntryCreateCFProperty(v3, v1, 0, 0);
  }

  else
  {
    DREGetNVRAMVar_cold_1(v4);
    v6 = 0;
  }

  return v6;
}

void OUTLINED_FUNCTION_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_5_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL DREIsRunningInDeviceRecoveryEnvironment()
{
  size = 0;
  v0 = sysctlbyname("hw.osenvironment", 0, &size, 0, 0);
  if (v0 == -1)
  {
    v10 = DRGetLogHandle(v0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      DREIsRunningInDeviceRecoveryEnvironment_cold_3(v10);
    }
  }

  else
  {
    v1 = malloc_type_malloc(size, 0x5C398F0AuLL);
    if (v1)
    {
      v2 = v1;
      bzero(v1, size);
      v3 = sysctlbyname("hw.osenvironment", v2, &size, 0, 0);
      v4 = v3;
      v5 = DRGetLogHandle(v3);
      v6 = v5;
      v7 = v4 == -1;
      v8 = v4 != -1;
      if (v7)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          DREIsRunningInDeviceRecoveryEnvironment_cold_1(v6);
        }
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v14 = "DREIsRunningInDeviceRecoveryEnvironment";
          v15 = 2082;
          v16 = v2;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Running in OS environment: %{public}s", buf, 0x16u);
        }

        v9 = strncmp(v2, "device-recovery", 0xFuLL);
        if (v9)
        {
          v8 = 0;
LABEL_18:
          free(v2);
          return v8;
        }

        v6 = DRGetLogHandle(v9);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v14 = "DREIsRunningInDeviceRecoveryEnvironment";
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Running in DeviceRecoveryEnvironment\n", buf, 0xCu);
        }
      }

      goto LABEL_18;
    }

    v10 = DRGetLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      DREIsRunningInDeviceRecoveryEnvironment_cold_2(v10);
    }
  }

  return 0;
}

BOOL DREBootedAutomatically()
{
  result = DREIsRunningInDeviceRecoveryEnvironment();
  if (result)
  {
    return ((DREEntryReasonEnum() - 3) & 0xFFFFFFFD) == 0;
  }

  return result;
}

id DREEntryReasonEnum()
{
  v0 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v1 = [v0 DREEntryReasonEnum];

  return v1;
}

id DREEntryDescription()
{
  v0 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v1 = [v0 DREEntryDescription];

  return v1;
}

id DREStringFromEntryReason(uint64_t a1)
{
  v2 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v3 = [v2 DREStringFromEntryReason:a1];

  return v3;
}

id DREEntryReasonString()
{
  v0 = DREEntryReasonEnum();

  return DREStringFromEntryReason(v0);
}

__CFString *DROverrideDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"BrainType"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = [v4 unsignedCharValue];
      v7 = @"None";
      if (v6 == 2)
      {
        v7 = @"Production";
      }

      v8 = @"Builtin";
      goto LABEL_6;
    }

    DROverrideDescription_cold_12(isKindOfClass);
LABEL_54:
    v9 = @"<unknown>";
    goto LABEL_16;
  }

  if (([v3 isEqualToString:@"BrainBundlePath"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UserDataPath") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SystemDataPath") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"UpdateVolumePath"))
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();
    if ((v10 & 1) == 0)
    {
      DROverrideDescription_cold_11(v10);
      goto LABEL_54;
    }

    v11 = v4;
LABEL_15:
    v9 = v11;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"UserAuthResult"])
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    if ((v13 & 1) == 0)
    {
      DROverrideDescription_cold_10(v13);
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"NetworkAvailableResult"])
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();
    if ((v14 & 1) == 0)
    {
      DROverrideDescription_cold_9(v14);
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"BrainLoadResult"])
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if ((v15 & 1) == 0)
    {
      DROverrideDescription_cold_8(v15);
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if (![v3 isEqualToString:@"IssuesScanResult"])
  {
    if (![v3 isEqualToString:@"RecoveryResult"])
    {
      if ([v3 isEqualToString:@"FreeSpaceThreshold"])
      {
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();
        if ((v19 & 1) == 0)
        {
          DROverrideDescription_cold_5(v19);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"Free space Threshold: %@", v4];
      }

      else if ([v3 isEqualToString:@"SystemDataPath"])
      {
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();
        if ((v20 & 1) == 0)
        {
          DROverrideDescription_cold_4(v20);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"System Data Path: %@", v4];
      }

      else if ([v3 isEqualToString:@"UserDataPath"])
      {
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();
        if ((v21 & 1) == 0)
        {
          DROverrideDescription_cold_3(v21);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"User Data Path: %@", v4];
      }

      else
      {
        v22 = [v3 isEqualToString:@"UpdateVolumePath"];
        if (!v22)
        {
          v24 = DRGetLogHandle(v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            DROverrideDescription_cold_1(v3, v24);
          }

          goto LABEL_54;
        }

        objc_opt_class();
        v23 = objc_opt_isKindOfClass();
        if ((v23 & 1) == 0)
        {
          DROverrideDescription_cold_2(v23);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"Update Volume Path: %@", v4];
      }
      v11 = ;
      goto LABEL_15;
    }

    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if ((v18 & 1) == 0)
    {
      DROverrideDescription_cold_6(v18);
      goto LABEL_54;
    }

LABEL_27:
    v6 = [v4 unsignedCharValue];
    v7 = @"None";
    v8 = @"Force Failure";
LABEL_6:
    if (v6 == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  if ((v16 & 1) == 0)
  {
    DROverrideDescription_cold_7(v16);
    goto LABEL_54;
  }

  v17 = [v4 unsignedCharValue] - 1;
  if (v17 >= 3)
  {
    v9 = @"None";
  }

  else
  {
    v9 = off_2C2A8[v17];
  }

LABEL_16:

  return v9;
}

id DRValidateOverride(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"BrainType"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 3)
      {
LABEL_4:
        v5 = 0;
        goto LABEL_12;
      }

      DRValidateOverride_cold_15();
    }

    else
    {
      DRValidateOverride_cold_14();
    }

    goto LABEL_43;
  }

  if (([v3 isEqualToString:@"BrainBundlePath"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UserDataPath") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SystemDataPath") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"UpdateVolumePath"))
  {
    v6 = [NSString stringWithFormat:@"%@ is not a NSString(%s)", v3, object_getClassName(v4)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 0;
    }

    else
    {
      DRValidateOverride_cold_13();
      v5 = v9;
    }

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"UserAuthResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      DRValidateOverride_cold_12();
    }

    else
    {
      DRValidateOverride_cold_11();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"NetworkAvailableResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      DRValidateOverride_cold_10();
    }

    else
    {
      DRValidateOverride_cold_9();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"BrainLoadResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      DRValidateOverride_cold_8();
    }

    else
    {
      DRValidateOverride_cold_7();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"IssuesScanResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 4)
      {
        goto LABEL_4;
      }

      DRValidateOverride_cold_6();
    }

    else
    {
      DRValidateOverride_cold_5();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"RecoveryResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 5)
      {
        goto LABEL_4;
      }

      DRValidateOverride_cold_4();
    }

    else
    {
      DRValidateOverride_cold_3();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"FreeSpaceThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    DRValidateOverride_cold_2();
    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"AlwaysShowWiFiPicker"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    DRValidateOverride_cold_1();
LABEL_43:
    v5 = v9;
    goto LABEL_12;
  }

  v8 = [NSString stringWithFormat:@"Unknown override name: %@", v3];
  v5 = DRCreateError(@"DeviceRecoveryError", 13, v8, @"Unknown override name: %@", 0, "DRValidateOverride", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryOverrides.m", 0xE1u);

LABEL_12:

  return v5;
}

id DRBrainTypeFromOverride(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 2)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRUserAuthResultFromOverride(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 1)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRNetworkAvailableResultFromOverride(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 1)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRBrainLoadResultFromOverride(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 1)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRIssuesScanResultFromOverride(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 3)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRRecoveryResultFromOverride(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 4)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

BOOL OUTLINED_FUNCTION_15(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_17(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id DRGetLogHandle(uint64_t a1)
{
  if (DRGetLogHandle_onceToken != -1)
  {
    DRGetLogHandle_cold_1();
  }

  v2 = DRGetLogHandle_logHandle;

  return v2;
}

id DRGetSignpostHandle(uint64_t a1)
{
  if (DRGetSignpostHandle_onceToken != -1)
  {
    DRGetSignpostHandle_cold_1();
  }

  v2 = DRGetSignpostHandle_signpostHandle;

  return v2;
}

id _ProcessNameForPid()
{
  v0 = off_305F8();
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v4 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", v0];
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"%@ (pid %d)", v3, v0];
  }

  return v4;
}

void sub_4EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_72F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void OUTLINED_FUNCTION_11_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void OUTLINED_FUNCTION_13_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

BOOL OUTLINED_FUNCTION_25(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_5_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

BOOL OUTLINED_FUNCTION_6_1@<W0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_8_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id DRCreateErrorWithInfo(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v15 = a1;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a4;
  v20 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a8, a9, a7, v16];
  v21 = DRGetLogHandle(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v26 = &stru_30AA8;
    *buf = 136448002;
    v29 = "DRCreateErrorWithInfo";
    v30 = 2082;
    if (v17)
    {
      v26 = v17;
    }

    v31 = a8;
    v32 = 1024;
    v33 = a9;
    v34 = 2082;
    v35 = a7;
    v36 = 2114;
    v37 = v15;
    v38 = 2048;
    v39 = a2;
    v40 = 2114;
    v41 = v16;
    v42 = 2114;
    v43 = v26;
    _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}s: Error [%{public}s:%d][%{public}s]: %{public}@ - %ld - %{public}@ %{public}@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v22 = [v18 mutableCopy];
  }

  else
  {
    v22 = [NSMutableDictionary dictionaryWithCapacity:3];
  }

  v23 = v22;
  [v22 setObject:v20 forKey:NSDebugDescriptionErrorKey];
  [v23 setObject:v19 forKey:@"StaticString"];

  if (v17)
  {
    [v23 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v24 = [NSError errorWithDomain:v15 code:a2 userInfo:v23];

  return v24;
}

void sub_ADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_BC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL iterateSafely(io_iterator_t a1, int a2, id a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 < 1)
  {
    v10 = 0;
LABEL_10:
    _os_log_pack_size();
    v13 = &v17 - ((off_30608() + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v13, v14, 0, &dword_0, "%s : IOIterator was still invalid after attempting %d times", v17, v18);
    *v15 = 136315394;
    *(v15 + 4) = "_Bool iterateSafely(io_iterator_t, int, void (^__strong)(io_object_t), void (^__strong)(void))";
    *(v15 + 12) = 1024;
    *(v15 + 14) = a2;
    _LPLogPack(1, v13);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = IOIteratorNext(a1);
      if (v11)
      {
        v12 = v11;
        do
        {
          v7[2](v7, v12);
          IOObjectRelease(v12);
          v12 = IOIteratorNext(a1);
        }

        while (v12);
      }

      if (IOIteratorIsValid(a1))
      {
        break;
      }

      IOIteratorReset(a1);
      v8[2](v8);
      v10 = ++v9 < a2;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }
  }

  return v10;
}

void sub_E12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v5, 8);
}

void __destroy_helper_block_e8_32s40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

uint64_t _lp2_delete_directory_contents(const char *a1)
{
  value = 0;
  v2 = removefile_state_alloc();
  removefile_state_set(v2, 1u, _lp2_delete_directory_contents_confirm);
  removefile_state_set(v2, 2u, &value);
  removefile_state_set(v2, 3u, _lp2_delete_directory_contents_error);
  removefile_state_set(v2, 4u, &value);
  _os_log_pack_size();
  v3 = &v21[-((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _os_log_pack_fill(v3, v4, 0, &dword_0, "Deleting contents of %{private}s...");
  *v5 = 136380675;
  *(v5 + 4) = a1;
  _LPLogPack(1, v3);
  if (removefile(a1, v2, 3u))
  {
    if (!value)
    {
      value = *__error();
    }
  }

  else
  {
    strcpy(path, ".XXXXXXXX");
    v6 = open(a1, 1048832);
    if (v6 == -1)
    {
      v10 = *__error();
    }

    else
    {
      v7 = v6;
      v8 = mkstempsat_np(v6, path, 8);
      if (v8 == -1)
      {
        v10 = *__error();
      }

      else
      {
        v9 = v8;
        if (unlinkat(v7, path, 0) || fcopyfile(v9, v7, 0, 5u))
        {
          v10 = *__error();
        }

        else
        {
          v10 = 0;
        }

        close(v9);
      }

      close(v7);
    }

    value = v10;
    if (v10)
    {
      _os_log_pack_size();
      v11 = &v21[-((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0)];
      v13 = _os_log_pack_fill(v11, v12, 0, &dword_0, "Could not reset metadata on %{private}s: %s");
      v14 = strerror(value);
      *v13 = 136380931;
      *(v13 + 4) = a1;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v14;
      _LPLogPack(1, v11);
    }
  }

  _os_log_pack_size();
  v15 = &v21[-((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = _os_log_pack_fill(v15, v16, 0, &dword_0, "Deleting contents of %{private}s %s (result: %d).");
  v18 = value;
  v19 = "failed";
  *v17 = 136381187;
  *(v17 + 4) = a1;
  if (!v18)
  {
    v19 = "succeeded";
  }

  *(v17 + 12) = 2080;
  *(v17 + 14) = v19;
  *(v17 + 22) = 1024;
  *(v17 + 24) = v18;
  _LPLogPack(1, v15);
  removefile_state_free(v2);
  return value;
}

uint64_t _execForLibpartition(const char **a1)
{
  v40 = 0;
  *v42 = -1;
  if (pipe(v42))
  {
    _os_log_pack_size();
    v2 = &v37 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = _os_log_pack_fill(v2, v3, 0, &dword_0, "pipe failed while preparing to execute %s: %s", v37, v38);
    v5 = *a1;
    v6 = __error();
    v7 = strerror(*v6);
    *v4 = 136315394;
    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    *(v4 + 14) = v7;
    _LPLogPack(1, v2);
    return 0xFFFFFFFFLL;
  }

  v38 = 0;
  v39 = 0;
  posix_spawn_file_actions_init(&v39);
  posix_spawn_file_actions_adddup2(&v39, v42[1], 1);
  posix_spawn_file_actions_addclose(&v39, v42[0]);
  posix_spawnattr_init(&v38);
  posix_spawnattr_setflags(&v38, 0x4000);
  v9 = posix_spawn(&v40, *a1, &v39, 0, a1, 0);
  if (v9)
  {
    v8 = v9;
    _os_log_pack_size();
    v10 = &v37 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v10, v11, 0, &dword_0, "posix_spawn %s failed: %s", v37, v38);
    v13 = *a1;
    v14 = strerror(v8);
    *v12 = 136315394;
    *(v12 + 4) = v13;
    *(v12 + 12) = 2080;
    *(v12 + 14) = v14;
    _LPLogPack(1, v10);
    close(v42[0]);
    goto LABEL_5;
  }

  bzero(v41, 0x400uLL);
  v16 = v42[0];
  close(v42[1]);
  v42[1] = -1;
  v17 = read(v16, v41, 0x400uLL);
  if (v17 >= 1)
  {
    do
    {
      execlogfunction(v17, v18, v19, v20, v21, v22, v23, v24, v17);
      v17 = read(v16, v41, 0x400uLL);
    }

    while (v17 > 0);
  }

  HIDWORD(v37) = 0;
  if (waitpid(v40, &v37 + 1, 0) == -1)
  {
    v8 = *__error();
    _os_log_pack_size();
    v25 = &v37 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill(v25, v26, 0, &dword_0, "waitpid failed for %s: %s", v37, v38);
    v28 = *a1;
    v29 = __error();
    v30 = strerror(*v29);
    *v27 = 136315394;
    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;
    *(v27 + 14) = v30;
    _LPLogPack(1, v25);
  }

  else
  {
    if ((BYTE4(v37) & 0x7F) == 0x7F)
    {
      _os_log_pack_size();
      v31 = &v37 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v31, v32, 0, &dword_0, "%s was stopped by signal %d", v37, v38);
      v34 = *a1;
      v35 = SHIDWORD(v37) >> 8;
    }

    else
    {
      if ((BYTE4(v37) & 0x7F) == 0)
      {
        v8 = BYTE5(v37);
        goto LABEL_5;
      }

      _os_log_pack_size();
      v31 = &v37 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v31, v36, 0, &dword_0, "%s was terminated by signal %d", v37, v38);
      v34 = *a1;
      v35 = BYTE4(v37) & 0x7F;
    }

    *v33 = 136315394;
    *(v33 + 4) = v34;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v35;
    _LPLogPack(1, v31);
    v8 = 0xFFFFFFFFLL;
  }

LABEL_5:
  posix_spawnattr_destroy(&v38);
  posix_spawn_file_actions_destroy(&v39);
  if (v42[1] != -1)
  {
    close(v42[1]);
  }

  return v8;
}

void ___is_running_in_ramdisk_block_invoke(id a1)
{
  bzero(__s1, 0x400uLL);
  v1 = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    if (strstr(__s1, "-restore"))
    {
      _is_running_in_ramdisk_is_ramdisk = 1;
    }
  }
}

uint64_t _lp2_delete_directory_contents_error(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = __error();
  v6 = *v5;
  *a3 = *v5;
  _os_log_pack_size();
  v7 = &v12 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _os_log_pack_fill(v7, v8, 0, &dword_0, "Could not removefile(3) path %{private}s: %s");
  v10 = strerror(v6);
  *v9 = 136380931;
  *(v9 + 4) = a2;
  *(v9 + 12) = 2080;
  *(v9 + 14) = v10;
  _LPLogPack(1, v7);
  return 2;
}

void execlogfunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = &a9;
  v9 = [[NSString alloc] initWithFormat:@"%.*s" arguments:&a9];
  _os_log_pack_size();
  v10 = &v13 - ((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _os_log_pack_fill(v10, v11, 0, &dword_0, "%@");
  *v12 = 138412290;
  *(v12 + 4) = v9;
  _LPLogPack(3, v10);
}

id _LPLogObject(uint64_t a1)
{
  if (_LPLogObject_onceToken != -1)
  {
    _LPLogObject_cold_1();
  }

  v2 = _LPLogObject_obj;

  return v2;
}

void _LPLogPack(uint64_t a1, uint64_t a2)
{
  if (sLogLevel >= a1)
  {
    v3 = _LPLogObject(a1);
    v4 = os_log_pack_compose();

    if (sLogToStandardOut == 1)
    {
      v5 = fprintf(__stdoutp, "%s\n", v4);
    }

    if (sLogToOSLog == 1)
    {
      v6 = _LPLogObject(v5);
      os_log_pack_send();
    }

    if (sLogToConsole == 1)
    {
      dprintf(sConsoleFD, "%s\n", v4);
    }

    free(v4);
  }
}

uint64_t LPLogSetOutput(char a1)
{
  sLogToStandardOut = a1 & 1;
  sLogToOSLog = (a1 & 2) != 0;
  sLogToConsole = (a1 & 4) != 0;
  result = sConsoleFD;
  if ((a1 & 4) != 0)
  {
    if (sConsoleFD == -1)
    {
      result = open("/dev/console", 10);
      sConsoleFD = result;
      if (result == -1)
      {
        sLogToConsole = 0;
      }
    }
  }

  else
  {
    if (sConsoleFD != -1)
    {
      result = close(sConsoleFD);
    }

    sConsoleFD = -1;
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_38320 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_38314 > a2)
  {
    return 1;
  }

  if (dword_38314 < a2)
  {
    return 0;
  }

  return dword_38318 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_38328 == -1)
  {
    if (qword_38330)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_38330)
    {
      return _availability_version_check();
    }
  }

  if (qword_38320 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_38314 > a3)
      {
        return 1;
      }

      if (dword_38314 >= a3)
      {
        return dword_38318 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v1 = qword_38330;
  if (qword_38330)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (off_30620)
    {
      v1 = off_30620;
      qword_38330 = off_30620;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_38314, &dword_38318);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void DRECopyIORegEntryWithError_cold_1()
{
  v2[0] = 136447490;
  OUTLINED_FUNCTION_2();
  v3 = "node != IO_OBJECT_NULL";
  v4 = v0;
  v5 = "";
  OUTLINED_FUNCTION_4();
  v6 = 22;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2, 0x3Au);
}

void DRECopyIORegAsStringWithError_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20);
  }

  v5 = [NSString stringWithFormat:@"unable to fetch property for key: %@", a1];
  v6 = OUTLINED_FUNCTION_0();
  *a2 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x35u);
}

void DRECopyIORegAsStringWithError_cold_2(uint64_t a1, uint64_t *a2)
{
  v4 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20);
  }

  v5 = [NSString stringWithFormat:@"unable to fetch io-reg entry for %s", a1];
  v6 = OUTLINED_FUNCTION_0();
  *a2 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x2Fu);
}

void DREGetNVRAMVar_cold_1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    v4 = "nvramService != IO_OBJECT_NULL";
    v5 = v2;
    v6 = "";
    OUTLINED_FUNCTION_4();
    v7 = 122;
    _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, 0x3Au);
  }
}

void DREIsRunningInDeviceRecoveryEnvironment_cold_1(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5 = 136446722;
  v6 = "DREIsRunningInDeviceRecoveryEnvironment";
  v7 = 1024;
  v8 = v2;
  v9 = 2082;
  v10 = v4;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%{public}s: Unable to determine OS environment: %d:(%{public}s)\n", &v5, 0x1Cu);
}

void DREIsRunningInDeviceRecoveryEnvironment_cold_2(os_log_t log)
{
  v1 = 136446210;
  v2 = "DREIsRunningInDeviceRecoveryEnvironment";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s: Failed to allocate buffer to read OSEnvironment value. Assuming running in normal mode", &v1, 0xCu);
}

void DREIsRunningInDeviceRecoveryEnvironment_cold_3(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136446466;
  v5 = "DREIsRunningInDeviceRecoveryEnvironment";
  v6 = 2082;
  v7 = v3;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%{public}s: Failed to determine size of buffer to read OSEnvironment value(%{public}s). Assuming running in normal mode", &v4, 0x16u);
}

void DROverrideDescription_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "DROverrideDescription";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unknown override name: %{public}@", &v2, 0x16u);
}

void DROverrideDescription_cold_2(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_3(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_4(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_5(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_6(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_7(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_8(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_9(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_10(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_11(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DROverrideDescription_cold_12(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void DRValidateOverride_cold_1()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xDFu);
}

void DRValidateOverride_cold_2()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xDDu);
}

void DRValidateOverride_cold_3()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xD1u);
}

void DRValidateOverride_cold_4()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_1();
    *(&v15[13] + 2) = 216;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  v5 = [NSString stringWithFormat:@"RecoveryResult override has an invalid value: %d (must be between %d and %d)", v1, 0, 4];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xD8u);
}

void DRValidateOverride_cold_5()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xC7u);
}

void DRValidateOverride_cold_6()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle(v2);
  if (OUTLINED_FUNCTION_15(v3))
  {
    v15 = 136447490;
    v16 = "DRValidateOverride";
    v17 = 2082;
    v18 = "DRValidateOverride";
    v19 = 2082;
    v20 = "((issuesScanResultVal == DROverrideIssuesScanResultNoOverride) || (issuesScanResultVal == DROverrideIssuesScanResultForceFailure) || (issuesScanResultVal == DROverrideIssuesScanResultNoResults) || (issuesScanResultVal == DROverrideIssuesScanResultRequireUserApproval))";
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryOverrides.m";
    v25 = 1026;
    v26 = 205;
    OUTLINED_FUNCTION_10(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v15);
  }

  OUTLINED_FUNCTION_19();
  v7 = [v6 stringWithFormat:@"IssuesScanResult override has an invalid value: %d (must be %d, %d, %d or %d)"];
  v8 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v8, v9, v10, v11, v12, v13, v14, 0xCDu);
}

void DRValidateOverride_cold_7()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xBFu);
}

void DRValidateOverride_cold_8()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle(v2);
  if (OUTLINED_FUNCTION_15(v3))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_1();
    *(&v15[13] + 2) = 195;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  OUTLINED_FUNCTION_18();
  v5 = [v4 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xC3u);
}

void DRValidateOverride_cold_9()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xB7u);
}

void DRValidateOverride_cold_10()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle(v2);
  if (OUTLINED_FUNCTION_15(v3))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_1();
    *(&v15[13] + 2) = 187;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  OUTLINED_FUNCTION_18();
  v5 = [v4 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xBBu);
}

void DRValidateOverride_cold_11()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xAFu);
}

void DRValidateOverride_cold_12()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle(v2);
  if (OUTLINED_FUNCTION_15(v3))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_1();
    *(&v15[13] + 2) = 179;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  OUTLINED_FUNCTION_18();
  v5 = [v4 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xB3u);
}

void DRValidateOverride_cold_13()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20);
  }

  v5 = [NSString stringWithFormat:@"%@", v1];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xABu);
}

void DRValidateOverride_cold_14()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [OUTLINED_FUNCTION_14() stringWithFormat:ClassName];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xA0u);
}

void DRValidateOverride_cold_15()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle(v2);
  if (OUTLINED_FUNCTION_15(v3))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_1();
    *(&v15[13] + 2) = 165;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  OUTLINED_FUNCTION_19();
  v5 = [v4 stringWithFormat:@"BrainType override has an invalid value: %d (must be %d, %d or %d)"];
  v6 = OUTLINED_FUNCTION_0_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0xA5u);
}