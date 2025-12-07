uint64_t *DMCLogObjects(uint64_t a1, uint64_t a2)
{
  if (DMCLogObjects_onceToken != -1)
  {
    DMCLogObjects_cold_1();
  }

  return &DMCLogObjects__DMCLogObjects;
}

uint64_t __DMCLogObjects_block_invoke()
{
  v0 = os_log_create("com.apple.devicemanagementclient", "DMC");
  v1 = DMCLogObjects__DMCLogObjects;
  DMCLogObjects__DMCLogObjects = v0;

  v2 = os_log_create("com.apple.devicemanagementclient", "MDM");
  v3 = qword_1ED5BB958;
  qword_1ED5BB958 = v2;

  v4 = os_log_create("com.apple.devicemanagementclient", "Assertion");
  v5 = qword_1ED5BB960;
  qword_1ED5BB960 = v4;

  v6 = os_log_create("com.apple.devicemanagementclient", "File");
  v7 = qword_1ED5BB968;
  qword_1ED5BB968 = v6;

  v8 = os_log_create("com.apple.devicemanagementclient", "Restore");
  v9 = qword_1ED5BB970;
  qword_1ED5BB970 = v8;

  v10 = os_log_create("com.apple.devicemanagementclient", "Tether");
  v11 = qword_1ED5BB978;
  qword_1ED5BB978 = v10;

  qword_1ED5BB980 = os_log_create("com.apple.devicemanagementclient", "RTS");

  return MEMORY[0x1EEE66BB8]();
}

id MDMAppManagementFilePath()
{
  if (MDMAppManagementFilePath_once != -1)
  {
    MDMAppManagementFilePath_cold_1();
  }

  v1 = MDMAppManagementFilePath_str;

  return v1;
}

void __MCSystemProfileStorageDirectory_block_invoke()
{
  if (MCSystemProfileLibraryDirectory_once != -1)
  {
    __MCSystemProfileStorageDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileLibraryDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"ConfigurationProfiles"];
  v1 = [v3 copy];
  v2 = MCSystemProfileStorageDirectory_str;
  MCSystemProfileStorageDirectory_str = v1;
}

id MDMCloudConfigurationDetailsFilePath()
{
  if (MDMCloudConfigurationDetailsFilePath_once != -1)
  {
    MDMCloudConfigurationDetailsFilePath_cold_1();
  }

  v1 = MDMCloudConfigurationDetailsFilePath_str;

  return v1;
}

void __MDMCloudConfigurationDetailsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"CloudConfigurationDetails.plist"];
  v1 = [v3 copy];
  v2 = MDMCloudConfigurationDetailsFilePath_str;
  MDMCloudConfigurationDetailsFilePath_str = v1;
}

void __MCSystemProfileLibraryDirectory_block_invoke()
{
  v3 = MCConfigurationProfilesSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 copy];
  v2 = MCSystemProfileLibraryDirectory_str;
  MCSystemProfileLibraryDirectory_str = v1;
}

id MCConfigurationProfilesSystemGroupContainer()
{
  if (MCConfigurationProfilesSystemGroupContainer_onceToken != -1)
  {
    MCConfigurationProfilesSystemGroupContainer_cold_1();
  }

  v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;

  return v1;
}

void __MCConfigurationProfilesSystemGroupContainer_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    v0 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
    MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
  }

  v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
  if (MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath || (DMCSystemGroupContainerPathWithGroupIdentifier(@"systemgroup.com.apple.configurationprofiles"), v2 = objc_claimAutoreleasedReturnValue(), v3 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath, MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = v2, v3, (v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath) != 0))
  {
    v5 = [v1 isEqualToString:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles"];
    if (v5)
    {
      return;
    }

    v7 = *DMCLogObjects(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v14 = 138543618;
      *&v14[4] = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
      *&v14[12] = 2114;
      *&v14[14] = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
      v8 = "Received a profile system group container path we weren't expecting\nExpected: %{public}@\nActual: %{public}@\nOverriding MCM with expected path";
      v9 = v7;
      v10 = 22;
LABEL_10:
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_FAULT, v8, v14, v10);
    }
  }

  else
  {
    v11 = *DMCLogObjects(0, v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v14 = 138543362;
      *&v14[4] = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
      v8 = "Failed to get profile system group container path. Overriding with expected path: %{public}@";
      v9 = v11;
      v10 = 12;
      goto LABEL_10;
    }
  }

  v12 = [@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles" copy];
  v13 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
  MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = v12;
}

id DMCSystemGroupContainerPathWithGroupIdentifier(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  v2 = container_system_group_path_for_identifier();
  v4 = *DMCLogObjects(v2, v3);
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v8 = v1;
      v9 = 2082;
      v10 = v2;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "Got system group container path from MCM for %{public}@: %{public}s", buf, 0x16u);
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    free(v2);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v8 = v1;
      v9 = 2048;
      v10 = 1;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_ERROR, "Error getting system group container for %{public}@: %llu", buf, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

void __MDMAppManagementFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMAppManagement.plist"];
  v1 = [v3 copy];
  v2 = MDMAppManagementFilePath_str;
  MDMAppManagementFilePath_str = v1;
}

void __MDMCloudConfigurationSetAsideDetailsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"CloudConfigurationSetAsideDetails.plist"];
  v1 = [v3 copy];
  v2 = MDMCloudConfigurationSetAsideDetailsFilePath_str;
  MDMCloudConfigurationSetAsideDetailsFilePath_str = v1;
}

id MDMCloudConfigurationSetAsideDetailsFilePath()
{
  if (MDMCloudConfigurationSetAsideDetailsFilePath_once != -1)
  {
    MDMCloudConfigurationSetAsideDetailsFilePath_cold_1();
  }

  v1 = MDMCloudConfigurationSetAsideDetailsFilePath_str;

  return v1;
}

void ___scheduleCleanup_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  for (i = v2; [v2 count]; v2 = i)
  {
    v3 = [i firstObject];
    v4 = [v3 compare:*(a1 + 48)];

    if (v4 == 1)
    {
      break;
    }

    [i removeObjectAtIndex:0];
  }
}

void AppleAccountLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppleAccountLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7ADC1B0;
    v3 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void sub_1B16329DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAAQuotaInfoRequestClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  result = objc_getClass("AAQuotaInfoRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAQuotaInfoRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAAQuotaInfoRequestClass_block_invoke_cold_1();
    return __getAAQuotaInfoResponseClass_block_invoke(v3);
  }

  return result;
}

Class __getAAQuotaInfoResponseClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  result = objc_getClass("AAQuotaInfoResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAQuotaInfoResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAAQuotaInfoResponseClass_block_invoke_cold_1();
    return __77__ACAccountStore_DeviceManagementClient__dmc_visibleRemoteManagementAccounts__block_invoke(v3, v4);
  }

  return result;
}

void sub_1B1634A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1636454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1636764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1636BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

Class __getCDPUIControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreCDPUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreCDPUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7ADC478;
    v6 = 0;
    CoreCDPUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreCDPUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CDPUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPUIControllerClass_block_invoke_cold_1();
  }

  getCDPUIControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPUILibraryCore_frameworkLibrary = result;
  return result;
}

void DMCActivationUtilitiesWaitingForReady(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_INFO, "Activation state changed.", v5, 2u);
  }

  v3 = +[DMCActivationUtilities sharedInstance];
  [v3 _clearCache];

  v4 = +[DMCActivationUtilities sharedInstance];
  [v4 setIsReady:1];
}

void DMCActivationUtilitiesDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_INFO, "Device deactivated. Clearing activation record cache.", v4, 2u);
  }

  v3 = +[DMCActivationUtilities sharedInstance];
  [v3 _clearCache];
}

id syncQueue(uint64_t a1)
{
  if (syncQueue_onceToken != -1)
  {
    syncQueue_cold_1();
  }

  v2 = syncQueue_queue;

  return v2;
}

id syncQueueAlertQueue(uint64_t a1)
{
  if (syncQueueAlertQueue_onceToken != -1)
  {
    syncQueueAlertQueue_cold_1();
  }

  v2 = syncQueueAlertQueue_queue;

  return v2;
}

void syncQueueShowNextAlert(uint64_t a1)
{
  *(&v47[3] + 4) = *MEMORY[0x1E69E9840];
  if (!syncQueueCurrentAlert)
  {
    v1 = syncQueueAlertQueue(a1);
    v2 = [v1 firstObject];

    if (v2)
    {
      v4 = *MEMORY[0x1E695E480];
      v5 = *MEMORY[0x1E695E8D0];
      *&v3 = 134217984;
      v42 = v3;
      do
      {
        error = 0;
        flags = 0;
        v6 = [v2 notificationParametersOutFlags:{&flags, v42}];
        v7 = CFUserNotificationCreate(v4, 0.0, flags, &error, v6);
        if (!v7)
        {
          v18 = *DMCLogObjects(0, v8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = error;
            v20 = v18;
            v21 = [v2 summary];
            *buf = 67109378;
            LODWORD(v47[0]) = v19;
            WORD2(v47[0]) = 2114;
            *(v47 + 6) = v21;
            _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "DMCAlertManager cannot create alert with error: %d. Alert: '%{public}@'", buf, 0x12u);
          }

          goto LABEL_21;
        }

        v9 = v7;
        RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v7, mainQueueAlertCallback, 0);
        if (RunLoopSource)
        {
          v12 = RunLoopSource;
          v13 = syncQueueAlertQueue(RunLoopSource);
          v14 = [v13 count];

          if (v14)
          {
            v17 = syncQueueAlertQueue(v15);
            [v17 removeObjectAtIndex:0];
          }

          else
          {
            v25 = *DMCLogObjects(v15, v16);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_ERROR, "DMCAlertManager missing alert in sync alert queue", buf, 2u);
            }
          }

          objc_storeStrong(&syncQueueCurrentAlert, v2);
          [v2 setNotification:v9];
          Main = CFRunLoopGetMain();
          CFRunLoopAddSource(Main, v12, v5);
          CFRelease(v12);
          v29 = *DMCLogObjects(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = [v2 summary];
            *buf = 138543362;
            v47[0] = v31;
            _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_DEFAULT, "Displaying alert: '%{public}@'", buf, 0xCu);
          }

          v32 = [v2 dismissAfterTimeInterval];
          if (v34 > 0.0)
          {
            v35 = *DMCLogObjects(v32, v33);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = v35;
              [v2 dismissAfterTimeInterval];
              *buf = v42;
              v47[0] = v37;
              _os_log_impl(&dword_1B1630000, v36, OS_LOG_TYPE_DEFAULT, "Scheduling automatic alert dismissal after %0.0f seconds.", buf, 0xCu);
            }

            CFRetain(v9);
            [v2 dismissAfterTimeInterval];
            v39 = dispatch_time(0, (v38 * 1000000000.0));
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __syncQueueShowNextAlert_block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0l;
            block[4] = v9;
            dispatch_after(v39, MEMORY[0x1E69E96A0], block);
            goto LABEL_21;
          }
        }

        else
        {
          v22 = *DMCLogObjects(0, v11);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = v22;
            v24 = [v2 summary];
            *buf = 138543362;
            v47[0] = v24;
            _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "DMCAlertManager cannot create run loop source to display alert: '%{public}@'", buf, 0xCu);
          }
        }

        CFRelease(v9);
LABEL_21:

        v41 = syncQueueAlertQueue(v40);
        v2 = [v41 firstObject];
      }

      while (v2);
    }
  }
}

id syncQueueiTunesLoginCompletionBlocks(uint64_t a1)
{
  if (syncQueueiTunesLoginCompletionBlocks_onceToken != -1)
  {
    syncQueueiTunesLoginCompletionBlocks_cold_1();
  }

  v2 = syncQueueiTunesLoginCompletionBlocks_blocks;

  return v2;
}

uint64_t __syncQueue_block_invoke()
{
  syncQueue_queue = dispatch_queue_create("com.apple.devicemanagementclient.DMCAlertManager.syncQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __syncQueueAlertQueue_block_invoke()
{
  syncQueueAlertQueue_queue = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void mainQueueAlertCallback(void *a1, unint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown (%lu)", a2];
    v3 = a1;
    v2 = 5;
  }

  else
  {
    v3 = *(&off_1E7ADC578 + a2);
  }

  v4 = *DMCLogObjects(a1, a2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "DMCAlert dismissed with response: %{public}@", buf, 0xCu);
  }

  v6 = syncQueue(v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __mainQueueAlertCallback_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v8 = v2;
  dispatch_sync(v6, block);
}

void __syncQueueShowNextAlert_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "Automatically dismissing alert.", v4, 2u);
  }

  CFUserNotificationCancel(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

void __mainQueueAlertCallback_block_invoke(uint64_t a1)
{
  v2 = syncQueueCurrentAlert;
  v3 = syncQueueCurrentAlert;
  syncQueueCurrentAlert = 0;

  v4 = [v2 completionBlock];

  if (v4)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __mainQueueAlertCallback_block_invoke_2;
    v7[3] = &unk_1E7ADC4E8;
    v8 = v2;
    v9 = *(a1 + 32);
    dispatch_async(v6, v7);
  }

  syncQueueShowNextAlert(v5);
}

void __mainQueueAlertCallback_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  v2[2](v2, *(a1 + 40));
}

uint64_t __syncQueueiTunesLoginCompletionBlocks_block_invoke()
{
  syncQueueiTunesLoginCompletionBlocks_blocks = [MEMORY[0x1E695DF70] array];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1639A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAMSProcessInfoClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSProcessInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSProcessInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSProcessInfoClass_block_invoke_cold_1();
    AppleMediaServicesLibrary();
  }
}

void AppleMediaServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7ADC598;
    v3 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSUserAgentClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSUserAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUserAgentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSUserAgentClass_block_invoke_cold_1();
    return [(DMCAppIdentifier *)v3 newAppIdentifierWithIdentifier:v4, v5];
  }

  return result;
}

uint64_t DMCHCUCreateCSR(void *a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E697AD50];
  keys[0] = *MEMORY[0x1E697AD68];
  keys[1] = v2;
  values[0] = *MEMORY[0x1E697ADA8];
  values[1] = @"1024";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 5;
  cf = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  v5 = CFDictionaryCreate(v3, MEMORY[0x1E697AFF0], &cf, 1, 0, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  RandomKey = SecKeyCreateRandomKey(v4, 0);
  v7 = SecKeyCopyPublicKey(RandomKey);
  v9 = v7;
  if (v4)
  {
    CFRelease(v4);
  }

  if (RandomKey)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *DMCLogObjects(v7, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Could not create public/private key pair for CSR.", buf, 2u);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    CertificateRequestWithParameters = 0;
  }

  else
  {
    memset(cStr, 0, 37);
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    uuid_unparse(out, cStr);
    v13 = CFStringCreateWithCString(v3, cStr, 0x600u);
    *buf = *MEMORY[0x1E697B278];
    v20 = *MEMORY[0x1E697AAF0];
    v21 = v13;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v17 = buf;
    v18 = 0;
    [v1 setObject:v9 forKey:@"PublicKey"];
    [v1 setObject:RandomKey forKey:@"PrivateKey"];
    CertificateRequestWithParameters = SecGenerateCertificateRequestWithParameters();
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(RandomKey);
    CFRelease(v9);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  return CertificateRequestWithParameters;
}

id DMCHCUSetCertificateDataForMappedLabel(const __CFData *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = SecCertificateCreateWithData(0, a1);
  v10 = [v8 objectForKey:@"PrivateKey"];

  v11 = 0;
  if (a1 && v10)
  {
    v12 = SecIdentityCreate();
    if (v12)
    {
      v13 = v12;
      v14 = v7;
      if (v14)
      {
        v15 = [DMCKeychain saveItem:v13 withLabel:v14 group:@"apple" useSystemKeychain:1 enforcePersonalPersona:a4];
        v11 = v15;
        if (v15)
        {
          v16 = _persistentKeyMapTable(v15);
          [v16 setObject:v11 forKey:v14];
          v17 = v16;
          v18 = MTiPCUKeychainMapPath(v17);
          [v17 DMCWriteToBinaryFile:v18];
        }
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v13);
    }

    else
    {
      v11 = 0;
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

SecCertificateRef DMCHCUCopyCertificateFromKeychainForMappedLabel(void *a1, uint64_t a2)
{
  certificateRef = 0;
  v2 = _copyObjectFromKeychainForLabel(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != SecCertificateGetTypeID())
    {
      v5 = CFGetTypeID(v3);
      if (v5 == SecIdentityGetTypeID())
      {
        SecIdentityCopyCertificate(v3, &certificateRef);
        CFRelease(v3);
        return certificateRef;
      }

      else
      {
        CFRelease(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *_copyObjectFromKeychainForLabel(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = _persistentKeyMapTable(v3);
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = [DMCKeychain copyItemWithPersistentID:v5 useSystemKeychain:1 enforcePersonalPersona:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *DMCHCUCopyHostCertificateForMappedLabel(void *a1, uint64_t a2)
{
  v3 = [a1 stringByAppendingString:@"-HostCert"];
  v4 = _copyObjectFromKeychainForLabel(v3, a2);

  return v4;
}

id certificatesFromDERCertificateDataArray(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v22;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = SecCertificateCreateWithData(0, *(*(&v21 + 1) + 8 * i));
        if (v9)
        {
          v11 = v9;
          [v3 addObject:v9];

          v14 = *DMCLogObjects(v12, v13);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            continue;
          }

          *v20 = 0;
          v15 = v14;
          v16 = OS_LOG_TYPE_INFO;
          v17 = "SecCertificateCreateWithData succeed";
        }

        else
        {
          v18 = *DMCLogObjects(0, v10);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            continue;
          }

          *v20 = 0;
          v15 = v18;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = "Could not parse anchor certificate data. Ignoring.";
        }

        _os_log_impl(&dword_1B1630000, v15, v16, v17, v20, 2u);
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v6)
      {
LABEL_15:

        goto LABEL_17;
      }
    }
  }

  v3 = 0;
LABEL_17:

  return v3;
}

id _persistentKeyMapTable(uint64_t a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = MTiPCUKeychainMapPath(a1);
  v3 = [v1 dictionaryWithContentsOfFile:v2];

  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
  }

  return v3;
}

id DMCCTIMEI(uint64_t a1)
{
  if (DMCCTIMEI_once != -1)
  {
    DMCCTIMEI_cold_1();
  }

  v2 = DMCCTIMEI_imei;

  return v2;
}

void __DMCCTIMEI_block_invoke(uint64_t a1)
{
  v1 = _EquipmentInfo(a1);
  v4 = [v1 IMEI];

  if ([v4 length])
  {
    v2 = _IMEIString(v4);
    v3 = DMCCTIMEI_imei;
    DMCCTIMEI_imei = v2;
  }
}

id _EquipmentInfo(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = _CoreTelephonyClient(a1);
  v2 = _DataServiceSubscriptionContextFromClient(v1);
  v3 = v2;
  if (v2)
  {
    v2 = [v2 slotID];
  }

  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  v32 = 0;
  v5 = [v1 getMobileEquipmentInfo:&v32];
  v6 = v32;
  v8 = v6;
  if (!v5)
  {
    v20 = *DMCLogObjects(v6, v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v8;
      v21 = "_EquipmentInfo: getMobileEquipmentInfo: failed: %{public}@";
      v22 = v20;
      v23 = 12;
LABEL_27:
      _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v9 = [v5 meInfoList];

  if (!v9)
  {
    v26 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "_EquipmentInfo: getMobileEquipmentInfo: returned no items";
LABEL_26:
      v22 = v26;
      v23 = 2;
      goto LABEL_27;
    }

LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [v5 meInfoList];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v13)
  {
LABEL_16:

LABEL_22:
    v26 = *DMCLogObjects(v18, v19);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v21 = "_EquipmentInfo: could not find acceptable equipment info";
    goto LABEL_26;
  }

  v14 = v13;
  v15 = *v29;
LABEL_10:
  v16 = 0;
  while (1)
  {
    if (*v29 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v17 = *(*(&v28 + 1) + 8 * v16);
    if ([v17 slotId] == v4)
    {
      break;
    }

    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  v24 = v17;

  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = *DMCLogObjects(v18, v19);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v24;
    _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_DEFAULT, "_EquipmentInfo: result = %{public}@", buf, 0xCu);
  }

LABEL_29:

  return v24;
}

id _IMEIString(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD60] stringWithString:a1];
    if ([v1 length] >= 3)
    {
      [v1 insertString:@" " atIndex:2];
    }

    if ([v1 length] >= 0xA)
    {
      [v1 insertString:@" " atIndex:9];
    }

    if ([v1 length] >= 0x11)
    {
      [v1 insertString:@" " atIndex:16];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id DMCCTMEID(uint64_t a1)
{
  if (DMCCTMEID_once != -1)
  {
    DMCCTMEID_cold_1();
  }

  v2 = DMCCTMEID_meid;

  return v2;
}

void __DMCCTMEID_block_invoke(uint64_t a1)
{
  v1 = _EquipmentInfo(a1);
  obj = [v1 MEID];

  if ([obj length])
  {
    objc_storeStrong(&DMCCTMEID_meid, obj);
  }
}

DMCCTEnrollmentProperties *DMCCTTelephonyPropertiesForEnrollmentAuthentication()
{
  v0 = objc_alloc_init(DMCCTEnrollmentProperties);
  v1 = _EquipmentInfo(v0);
  v2 = [v1 IMEI];
  v3 = _IMEIString(v2);
  [(DMCCTEnrollmentProperties *)v0 setImei:v3];

  v4 = [v1 MEID];
  [(DMCCTEnrollmentProperties *)v0 setMeid:v4];

  return v0;
}

uint64_t DMCCTSupportsVoiceRoaming()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = +[DMCMobileGestalt hasTelephonyCapability];
  if (!v0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v2 = _CoreTelephonyClient(v0);
  v3 = _DataServiceSubscriptionContextFromClient(v2);
  v4 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  v18 = 0;
  v5 = [v2 copyCarrierBundleValue:v3 key:@"ShowVoiceRoamingSwitch" bundleType:v4 error:&v18];
  v6 = v18;
  v8 = v6;
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = [v5 BOOLValue];
      v12 = 1;
      goto LABEL_12;
    }

    v13 = *DMCLogObjects(isKindOfClass, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v8;
      v14 = "voice roaming switch value from carrier bundle is not a BOOLean, assuming NO: %{public}@";
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *DMCLogObjects(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v8;
      v14 = "could not get voice roaming switch from carrier bundle, assuming NO: %{public}@";
LABEL_10:
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_12:

  if (!v12)
  {
    return 0;
  }

LABEL_13:
  v15 = *DMCLogObjects(v0, v1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (v11)
    {
      v16 = @"YES";
    }

    *buf = 138543362;
    v20 = v16;
    _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_INFO, "device supports voice roaming: %{public}@", buf, 0xCu);
  }

  return v11;
}

id _CoreTelephonyClient(uint64_t a1)
{
  if (_CoreTelephonyClient_onceToken != -1)
  {
    _CoreTelephonyClient_cold_1();
  }

  v2 = _CoreTelephonyClient_coreTelephonyClient;

  return v2;
}

id _DataServiceSubscriptionContextFromClient(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = v1;
  if (v1)
  {
    v24 = 0;
    v4 = [v1 getPreferredDataSubscriptionContextSync:&v24];
    v5 = v24;
    v7 = v5;
    if (!v4)
    {
      v20 = *DMCLogObjects(v5, v6);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v7;
        _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_DEFAULT, "getPreferredDataSubscriptionContextSync failed: %{public}@", buf, 0xCu);
      }

      v19 = 0;
      v9 = v7;
      goto LABEL_19;
    }

    v23 = v5;
    v8 = [v3 getSIMStatus:v4 error:&v23];
    v9 = v23;

    if (v8)
    {
      v12 = [v8 isEqualToString:*MEMORY[0x1E6965438]];
      if (!v12)
      {
        v19 = v4;
        goto LABEL_18;
      }

      v14 = *DMCLogObjects(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "rejecting data SIM that isn't inserted";
        v16 = v14;
        v17 = 2;
LABEL_15:
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else
    {
      v21 = *DMCLogObjects(v10, v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v9;
        v15 = "getSIMStatus failed: %{public}@";
        v16 = v21;
        v17 = 12;
        goto LABEL_15;
      }
    }

    v19 = 0;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v18 = *DMCLogObjects(0, v2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "nil client passed to _DataServiceSubscriptionContextFromClient", buf, 2u);
  }

  v19 = 0;
LABEL_20:

  return v19;
}

BOOL DMCCTHasGSM(uint64_t a1)
{
  v1 = DMCCTIMEI(a1);
  v2 = v1 != 0;

  return v2;
}

BOOL DMCCTHasCDMA(uint64_t a1)
{
  v1 = DMCCTMEID(a1);
  v2 = v1 != 0;

  return v2;
}

BOOL DMCCTSetManagedCellularProfile(void *a1, void *a2)
{
  v3 = a1;
  v4 = _CTServerConnectionCreate();
  if (v4)
  {
    v12 = v4;
    ManagedCellularProfile = _CTServerConnectionLoadManagedCellularProfile();
    v14 = ManagedCellularProfile == 0;
    if (a2 && ManagedCellularProfile)
    {
      *a2 = errorFromCTError(ManagedCellularProfile);
    }

    CFRelease(v12);
  }

  else if (a2)
  {
    cannotConnectError(0, v5, v6, v7, v8, v9, v10, v11);
    *a2 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id errorFromCTError(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A5A0];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(a1)];
    v17 = DMCErrorArray(@"MACH_ERROR_P_CODE_%@", v10, v11, v12, v13, v14, v15, v16, v9);
    v6 = [v7 DMCErrorWithDomain:v8 code:a1 >> 32 descriptionArray:v17 errorType:@"DMCFatalError"];
  }

  else if (a1 == 1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(SHIDWORD(a1))];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A798];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v6 = [v3 errorWithDomain:v4 code:a1 >> 32 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id cannotConnectError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"CELLULAR_CANNOT_CONNECT", a2, a3, a4, a5, a6, a7, a8, 0);
  v10 = [v8 DMCErrorWithDomain:@"DMCCellularErrorDomain" code:36001 descriptionArray:v9 errorType:@"DMCFatalError"];

  return v10;
}

BOOL DMCCTClearManagedCellularProfile(void *a1)
{
  v2 = _CTServerConnectionCreate();
  if (v2)
  {
    v10 = v2;
    v11 = _CTServerConnectionUnloadManagedCellularProfile();
    v12 = v11 == 0;
    if (a1 && v11)
    {
      *a1 = errorFromCTError(v11);
    }

    CFRelease(v10);
  }

  else if (a1)
  {
    cannotConnectError(0, v3, v4, v5, v6, v7, v8, v9);
    *a1 = v12 = 0;
  }

  else
  {
    return 0;
  }

  return v12;
}

BOOL DMCCTGetManagedCellularProfile(void *a1, void *a2)
{
  v4 = _CTServerConnectionCreate();
  if (v4)
  {
    v12 = v4;
    ManagedCellularProfile = _CTServerConnectionGetManagedCellularProfile();
    if (a1)
    {
      v14 = 0;
      *a1 = 0;
    }

    v15 = ManagedCellularProfile == 0;
    if (a2 && ManagedCellularProfile)
    {
      *a2 = errorFromCTError(ManagedCellularProfile);
    }

    CFRelease(v12);
  }

  else if (a2)
  {
    cannotConnectError(0, v5, v6, v7, v8, v9, v10, v11);
    *a2 = v15 = 0;
  }

  else
  {
    return 0;
  }

  return v15;
}

void *___queue_verifyThresholdAndAddDateRecord_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) timeIntervalSinceDate:a2];
  if (v7 <= 3.0 && *(a1 + 48) <= ++*(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

id DMCLocalizedString(void *a1)
{
  v1 = a1;
  v2 = _bundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"DMCLocalizable"];

  return v3;
}

id _bundle(uint64_t a1)
{
  if (_bundle_once != -1)
  {
    _bundle_cold_1();
  }

  v2 = _bundle_bundle;

  return v2;
}

id DMCLocalizedStringByDevice(void *a1)
{
  v1 = a1;
  v2 = +[DMCMobileGestalt deviceClass];
  v3 = DMCLocalizedStringForDevice(v1, v2);

  return v3;
}

id DMCLocalizedStringForDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a2 uppercaseString];
    v7 = [v5 stringWithFormat:@"%@_%@", v4, v6];

    v8 = DMCLocalizedString(v7);
    if ([v8 isEqualToString:v7])
    {
      v9 = DMCLocalizedString(v4);
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

  else
  {
    v10 = DMCLocalizedString(v3);
  }

  return v10;
}

id DMCLocalizedFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = DMCLocalizedString(v10);

  v13 = [v11 initWithFormat:v12 arguments:&a9];

  return v13;
}

id DMCUSEnglishString(void *a1)
{
  v1 = a1;
  v2 = _bundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"DMCLocalizable" localization:@"en"];

  return v3;
}

id DMCErrorArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = objc_opt_new();
  _DMCStashFormattedStringInArray(v10, v9, 0, &a9);
  _DMCStashFormattedStringInArray(v10, v9, 1, &a9);

  _DMCStashArgumentsInArray(v10, &a9);

  return v10;
}

void _DMCStashFormattedStringInArray(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a2;
  v8 = a1;
  v9 = [v6 alloc];
  if (a3)
  {
    v10 = DMCUSEnglishString(v7);

    DMCUSEnglishLocale(v11);
  }

  else
  {
    v10 = DMCLocalizedString(v7);

    [MEMORY[0x1E695DF58] currentLocale];
  }
  v12 = ;
  v13 = [v9 initWithFormat:v10 locale:v12 arguments:a4, a4, a4];
  [v8 addObject:v13];
}

void _DMCStashArgumentsInArray(void *a1, id *a2)
{
  v3 = a1;
  v10 = a2;
  v8 = a2 + 1;
  v4 = *a2;
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:{v5, v8, v10}];
      v6 = v9;
      v8 = v9 + 1;
      v7 = *v6;

      v5 = v7;
    }

    while (v7);
  }
}

id DMCUnformattedErrorArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = MEMORY[0x1E695DF70];
  v10 = a1;
  v11 = DMCLocalizedString(v10);
  v12 = DMCUSEnglishString(v10);

  v13 = [v9 arrayWithObjects:{v11, v12, 0}];

  _DMCStashArgumentsInArray(v13, &a9);

  return v13;
}

uint64_t ___bundle_block_invoke()
{
  _bundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

BOOL DMCFixPermissionOfSystemGroupContainerFileFM(void *a1, void *a2, int a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v32 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v32];
  v10 = v32;
  v11 = *MEMORY[0x1E696A370];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A370]];
  if (a3)
  {
    v13 = 511;
  }

  else
  {
    v13 = 438;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
  if (([v12 isEqualToNumber:v14] & 1) == 0)
  {
    v39 = v11;
    v40[0] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v31 = v10;
    [v7 setAttributes:v22 ofItemAtPath:v8 error:&v31];
    v23 = v31;

    v10 = v23;
  }

  if (v10)
  {
    v37[0] = *MEMORY[0x1E696A578];
    v24 = DMCLocalizedFormat(@"ERROR_FAILED_TO_FIX_PERMISSIONS_%@", v15, v16, v17, v18, v19, v20, v21, v8);
    v37[1] = *MEMORY[0x1E696AA08];
    v38[0] = v24;
    v38[1] = v10;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DMCInternalErrorDomain" code:2 userInfo:v25];
    v28 = *DMCLogObjects(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = v8;
      v35 = 2114;
      v36 = v26;
      _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_ERROR, "Failed to fix permissions of file at path %{public}@. Error: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v29 = v26;
      *a4 = v26;
    }
  }

  return v10 == 0;
}

BOOL DMCFixPermissionsOfSystemGroupContainerDirectoryAndContents(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a1;
  v5 = [v3 defaultManager];
  v6 = DMCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM(v5, v4, a2);

  return v6;
}

BOOL DMCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM(void *a1, void *a2, void *a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E695DF70] array];
  v37 = 0;
  v8 = [v5 fileExistsAtPath:v6 isDirectory:&v37];
  if (v8 && (v37 & 1) != 0)
  {
    v36 = 0;
    v10 = DMCFixPermissionOfSystemGroupContainerFileFM(v5, v6, 1, &v36);
    v11 = v36;
    if (!v10)
    {
      [v7 addObject:v11];
    }

    v12 = [v5 enumeratorAtPath:v6];
    v13 = objc_autoreleasePoolPush();
    v14 = [v12 nextObject];
    if (v14)
    {
      v15 = v14;
      do
      {
        v16 = [v6 stringByAppendingPathComponent:v15];
        buf[0] = 0;
        [v5 fileExistsAtPath:v16 isDirectory:buf];
        v35 = 0;
        v17 = DMCFixPermissionOfSystemGroupContainerFileFM(v5, v16, buf[0], &v35);
        v18 = v35;
        if (!v17)
        {
          [v7 addObject:v18];
        }

        objc_autoreleasePoolPop(v13);
        v13 = objc_autoreleasePoolPush();
        v15 = [v12 nextObject];
      }

      while (v15);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v19 = *DMCLogObjects(v8, v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v6;
      _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Path %{public}@ does not refer to a directory.", buf, 0xCu);
    }

    v42 = *MEMORY[0x1E696A578];
    v27 = DMCLocalizedFormat(@"ERROR_NOT_A_DIRECTORY_P_PATH_%@", v20, v21, v22, v23, v24, v25, v26, v6);
    v43[0] = v27;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];

    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DMCInternalErrorDomain" code:1 userInfo:v12];
    [v7 addObject:v28];
  }

  v29 = [v7 count];
  v31 = v29;
  if (v29)
  {
    v32 = *DMCLogObjects(v29, v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = v6;
      v40 = 2114;
      v41 = v7;
      _os_log_impl(&dword_1B1630000, v32, OS_LOG_TYPE_ERROR, "Failed to change ownership of directory and contents at %{public}@. Errors: %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v33 = v7;
      *a3 = v7;
    }
  }

  return v31 == 0;
}

uint64_t DMCSafelyCopyItemAtPathToDestinationPath(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a2;
  v7 = a1;
  v8 = [v5 defaultManager];
  v9 = DMCSafelyCopyItemAtPathToDestinationPathFM(v8, v7, v6, a3);

  return v9;
}

uint64_t DMCSafelyCopyItemAtPathToDestinationPathFM(void *a1, void *a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 fileExistsAtPath:v8];
  if (v10)
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v15 = *DMCLogObjects(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v54 = v12;
      v55 = 2114;
      v56 = v13;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ to %{public}@...", buf, 0x16u);
    }

    v52 = 0;
    v16 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v13 create:1 error:&v52];
    v17 = v52;
    v19 = v17;
    if (v16)
    {
      v47 = a4;
      v20 = [v12 lastPathComponent];
      v21 = [v16 URLByAppendingPathComponent:v20];

      if (v21)
      {
        v51 = v19;
        v24 = [v7 copyItemAtURL:v12 toURL:v21 error:&v51];
        v25 = v51;

        if (!v24 || v25)
        {
          v42 = *DMCLogObjects(v26, v27);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v54 = v12;
            v55 = 2114;
            v56 = v21;
            v57 = 2114;
            v58 = v25;
            _os_log_impl(&dword_1B1630000, v42, OS_LOG_TYPE_ERROR, "Copying of item %{public}@ to temporary %{public}@ failed with error %{public}@", buf, 0x20u);
          }

          v31 = 0;
          v19 = v25;
        }

        else
        {
          v49 = 0;
          v50 = 0;
          v28 = [v7 replaceItemAtURL:v13 withItemAtURL:v21 backupItemName:0 options:1 resultingItemURL:&v50 error:&v49];
          v46 = v50;
          v29 = v49;
          if (v29)
          {
            v31 = 0;
          }

          else
          {
            v31 = v28;
          }

          if (v31)
          {
            v32 = [v21 absoluteString];
            v33 = [v7 fileExistsAtPath:v32];

            if (v33)
            {
              v48 = 0;
              v34 = [v7 removeItemAtURL:v21 error:&v48];
              v35 = v48;
              v37 = v35;
              if (!v34 || v35)
              {
                v38 = *DMCLogObjects(v35, v36);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v54 = v21;
                  v55 = 2114;
                  v56 = v37;
                  _os_log_impl(&dword_1B1630000, v38, OS_LOG_TYPE_ERROR, "Removal of temporary item %{public}@ failed with error %{public}@", buf, 0x16u);
                }
              }
            }

            v19 = 0;
          }

          else
          {
            v19 = v29;
            v43 = *DMCLogObjects(v29, v30);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v54 = v13;
              v55 = 2114;
              v56 = v21;
              v57 = 2114;
              v58 = v19;
              _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_ERROR, "Replacement of item %{public}@ with %{public}@ failed with error %{public}@", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v41 = *DMCLogObjects(v22, v23);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v54 = v12;
          _os_log_impl(&dword_1B1630000, v41, OS_LOG_TYPE_ERROR, "Failed to create temporary URL for moving item %{public}@", buf, 0xCu);
        }

        v31 = 0;
      }

      a4 = v47;
    }

    else
    {
      v40 = *DMCLogObjects(v17, v18);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v54 = v12;
        _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_ERROR, "Failed to get temporary directory path for item %{public}@", buf, 0xCu);
      }

      v31 = 0;
    }

    if (a4 && v19)
    {
      v44 = v19;
      *a4 = v19;
    }
  }

  else
  {
    v39 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = v8;
      _os_log_impl(&dword_1B1630000, v39, OS_LOG_TYPE_ERROR, "Item does not exist at %{public}@", buf, 0xCu);
    }

    v31 = 0;
    v19 = 0;
  }

  return v31;
}

uint64_t DMCSetSkipBackupAttributeToItemAtPath(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v6 = v4;
  if (v4 && ([MEMORY[0x1E696AC08] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "fileExistsAtPath:", v8), v8, v7, (v9 & 1) != 0))
  {
    v25 = 0;
    v10 = *MEMORY[0x1E695DB80];
    v11 = [v6 getResourceValue:&v25 forKey:*MEMORY[0x1E695DB80] error:0];
    v12 = v25;
    v13 = v12;
    if (v11 && [v12 BOOLValue] == a2)
    {
      v16 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v24 = 0;
      v15 = [v6 setResourceValue:v14 forKey:v10 error:&v24];
      v16 = v24;

      if (!v15 || v16)
      {
        v19 = *DMCLogObjects(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
          v21 = [v6 path];
          *buf = 138543618;
          v27 = v21;
          v28 = 2114;
          v29 = v16;
          _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v22 = *DMCLogObjects(v4, v5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v3;
      _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup. Path does not exist.", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

void sub_1B16460B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1646600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1646794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DMCIOModelPrefixString()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService && (v3 = MatchingService, CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"model-number", *MEMORY[0x1E695E480], 0), IOObjectRelease(v3), CFProperty))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:objc_msgSend(CFProperty encoding:{"bytes"), 4}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id DMCIOModelString()
{
  v0 = DMCIOModelPrefixString();
  if (v0)
  {
    v1 = +[DMCMobileGestalt regionCode];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v0, v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id DMCIOSerialString()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v3);
  }

  else
  {
    CFProperty = 0;
  }

  return CFProperty;
}

id DMCIOBluetoothMAC()
{
  v8 = 0;
  if (!MEMORY[0x1B2731000](0, &v8) && (v2 = IOServiceNameMatching("bluetooth")) != 0 && (MatchingService = IOServiceGetMatchingService(v8, v2)) != 0)
  {
    v4 = MatchingService;
    v5 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", *MEMORY[0x1E695E480], 1u);
    if (v5)
    {
      v6 = v5;
      v10.location = 0;
      v10.length = 6;
      CFDataGetBytes(v5, v10, buffer);
      v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5]];
      CFRelease(v6);
    }

    else
    {
      v0 = 0;
    }

    IOObjectRelease(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_1B164D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B164D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B164DFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B164E564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id URLForCanonicalFilePath(void *a1)
{
  v1 = a1;
  v2 = DMCSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

  return v4;
}

id DMCLKLogoutSupportClass(uint64_t a1)
{
  if (DMCLKLogoutSupportClass_onceToken != -1)
  {
    DMCLKLogoutSupportClass_cold_1();
  }

  v2 = DMCLKLogoutSupportClass_LKLogoutSupportClass;

  return v2;
}

void *__DMCLKLogoutSupportClass_block_invoke()
{
  if (LoginKitBundle_onceToken != -1)
  {
    __DMCLKLogoutSupportClass_block_invoke_cold_1();
  }

  result = [LoginKitBundle_retval classNamed:@"LKLogoutSupport"];
  DMCLKLogoutSupportClass_LKLogoutSupportClass = result;
  return result;
}

uint64_t DMCBYSetupAssistantNeedsToRun()
{
  +[DMCLazyInitializationUtilities initSetupAssistant];
  v0 = _BYSetupAssistantNeedsToRun;

  return v0();
}

id DMCBYSetupAssistantFinishedDarwinNotification()
{
  +[DMCLazyInitializationUtilities initSetupAssistant];
  v0 = _BYSetupAssistantFinishedDarwinNotification;

  return v0;
}

id DMCAKAppleIDSession(uint64_t a1)
{
  if (DMCAKAppleIDSession_onceToken != -1)
  {
    DMCAKAppleIDSession_cold_1();
  }

  v2 = DMCAKAppleIDSession_theClass;

  return v2;
}

void __DMCAKAppleIDSession_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = AuthKitBundle(a1);
  DMCAKAppleIDSession_theClass = [v1 classNamed:@"AKAppleIDSession"];

  if (!DMCAKAppleIDSession_theClass)
  {
    v4 = *DMCLogObjects(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = @"AKAppleIDSession";
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_ERROR, "Could not load %{public}@", &v5, 0xCu);
    }
  }
}

id AuthKitBundle(uint64_t a1)
{
  if (AuthKitBundle_onceToken != -1)
  {
    AuthKitBundle_cold_1();
  }

  v2 = AuthKitBundle_retval;

  return v2;
}

id DMCAKAuthenticationUsernameKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationUsernameKey;

  return v0;
}

id DMCAKAuthenticationPasswordKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationPasswordKey;

  return v0;
}

id DMCAKAuthenticationAlternateDSIDKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationAlternateDSIDKey;

  return v0;
}

id DMCAKAuthenticationDSIDKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationDSIDKey;

  return v0;
}

id DMCAKAuthenticationIDMSTokenKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationIDMSTokenKey;

  return v0;
}

id DMCAKAnisetteProvisioningControllerClass(uint64_t a1)
{
  v1 = AuthKitBundle(a1);
  v2 = [v1 classNamed:@"AKAnisetteProvisioningController"];

  return v2;
}

id DMCAIDAMutableServiceContextClass(uint64_t a1)
{
  v1 = AppleIDSSOAuthenticationBundle(a1);
  v2 = [v1 classNamed:@"AIDAMutableServiceContext"];

  return v2;
}

id AppleIDSSOAuthenticationBundle(uint64_t a1)
{
  if (AppleIDSSOAuthenticationBundle_onceToken != -1)
  {
    AppleIDSSOAuthenticationBundle_cold_1();
  }

  v2 = AppleIDSSOAuthenticationBundle_retval;

  return v2;
}

id DMCAIDAServiceOwnersManagerClass(uint64_t a1)
{
  v1 = AppleIDSSOAuthenticationBundle(a1);
  v2 = [v1 classNamed:@"AIDAServiceOwnersManager"];

  return v2;
}

id DMCAIDAServiceTypeCloud()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeCloud;

  return v0;
}

id DMCAIDAServiceTypeMessages()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeMessages;

  return v0;
}

id DMCAIDAServiceTypeFaceTime()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeFaceTime;

  return v0;
}

id DMCAIDAServiceTypeStore()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeStore;

  return v0;
}

id DMCAIDAServiceTypeGameCenter()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeGameCenter;

  return v0;
}

uint64_t DMCAMSAuthenticateOptionsClass(uint64_t a1)
{
  if (AppleMediaServicesBundle_onceToken != -1)
  {
    DMCAMSAuthenticateOptionsClass_cold_1();
  }

  v2 = AppleMediaServicesBundle_retval;

  return [v2 classNamed:@"AMSAuthenticateOptions"];
}

uint64_t DMCAMSUIAuthenticateTaskClass(uint64_t a1)
{
  if (AppleMediaServicesUIBundle_onceToken != -1)
  {
    DMCAMSUIAuthenticateTaskClass_cold_1();
  }

  v2 = AppleMediaServicesUIBundle_retval;

  return [v2 classNamed:@"AMSUIAuthenticateTask"];
}

id DMCkMAActivationStateActivated()
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v0 = _kMAActivationStateActivated;

  return v0;
}

id DMCkNotificationActivationStateChanged()
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v0 = _kNotificationActivationStateChanged;

  return v0;
}

uint64_t DMCMAEGetActivationStateWithError(uint64_t a1)
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v2 = _MAEGetActivationStateWithError;

  return v2(a1);
}

uint64_t DMCMAECopyActivationRecordWithError(uint64_t a1)
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v2 = _MAECopyActivationRecordWithError;

  return v2(a1);
}

void __LoginKitBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/LoginKit.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_126];
}

void __AuthKitBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AuthKit.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_130];
}

void __AppleIDSSOAuthenticationBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleIDSSOAuthentication.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_134];
}

void __AppleMediaServicesBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleMediaServices.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_138];
}

void __AppleMediaServicesUIBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_142];
}

uint64_t DMCLockdownSetDeviceName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] && lockdown_connect())
  {
    v2 = lockdown_set_value();
    v3 = lockdown_disconnect();
    if (!v2)
    {
      v6 = 1;
      goto LABEL_7;
    }

    v5 = *DMCLogObjects(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v2;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Unable to set device name with error %d", v8, 8u);
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

uint64_t DMCHasMDMMigrated()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (migrationCheckQueue_onceToken != -1)
  {
    DMCHasMDMMigrated_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __DMCHasMDMMigrated_block_invoke;
  block[3] = &unk_1E7ADC1F0;
  block[4] = &v3;
  dispatch_sync(migrationCheckQueue_queue, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __DMCHasMDMMigrated_block_invoke(uint64_t a1)
{
  v2 = kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated;
  if (kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated)
  {
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E695DEF0];
  v4 = MCSystemMetadataFilePath(a1);
  v5 = [v3 dataWithContentsOfFile:v4];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E696AE40] DMCSafePropertyListWithData:v5 options:0 format:0 error:0];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_6:
      v6 = 0;
    }
  }

  v7 = [v6 objectForKey:@"LastMDMMigratedBuild"];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = MCLegacyMetadataFilePath(v8);
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated = 0;
  }

  else
  {
    v11 = +[DMCMobileGestalt buildVersion];
    kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated = [v7 isEqualToString:v11];
  }

  v2 = kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated;
LABEL_11:
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __migrationCheckQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("DMC migration check queue", v2);
  v1 = migrationCheckQueue_queue;
  migrationCheckQueue_queue = v0;
}

void sub_1B1656960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DMCDeviceIsNetworkTethered()
{
  v168 = *MEMORY[0x1E69E9840];
  v0 = SCPreferencesCreate(0, @"MCNetworkTetherUtilities", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SCNetworkSetCopyCurrent(v0);
  if (!v2)
  {
    v114 = DMCLogObjects(0, v3)[5];
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v114, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: No network set!", buf, 2u);
    }

    v113 = 0;
    goto LABEL_130;
  }

  v4 = v2;
  SCNetworkSetGetServiceOrder(v2);
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v156 = 0u;
  v5 = [obj countByEnumeratingWithState:&v153 objects:v161 count:16];
  if (!v5)
  {
    v113 = 0;
    goto LABEL_129;
  }

  v6 = v5;
  v131 = v4;
  v7 = MEMORY[0x1E69823A8];
  v8 = &off_1B1669000;
  v152 = *v154;
  v9 = *MEMORY[0x1E6982370];
  domain = *MEMORY[0x1E69822F0];
  v147 = *MEMORY[0x1E6982350];
  key = *MEMORY[0x1E6982548];
  v142 = *MEMORY[0x1E695E4D0];
  protocolType = *MEMORY[0x1E69823A0];
  v132 = *MEMORY[0x1E69828B8];
  v133 = *MEMORY[0x1E6982488];
  v129 = *MEMORY[0x1E69822E0];
  v128 = *MEMORY[0x1E6982338];
  v134 = *MEMORY[0x1E69823A8];
  v149 = v1;
LABEL_5:
  v10 = 0;
  v150 = v6;
  while (1)
  {
    if (*v154 != v152)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v153 + 1) + 8 * v10);
    v12 = DMCLogObjects(v7, v8)[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v163 = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Checking service ID %{public}@", buf, 0xCu);
    }

    v13 = SCNetworkServiceCopy(v1, v11);
    if (v13)
    {
      break;
    }

    v31 = DMCLogObjects(0, v14)[5];
    v7 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      *buf = 138543362;
      v163 = v11;
      _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Cannot get service ref for service ID %{public}@", buf, 0xCu);
    }

LABEL_58:
    if (++v10 == v6)
    {
      v7 = [obj countByEnumeratingWithState:&v153 objects:v161 count:16];
      v6 = v7;
      if (!v7)
      {
        v113 = 0;
        v4 = v131;
        goto LABEL_129;
      }

      goto LABEL_5;
    }
  }

  v15 = v13;
  v16 = v11;
  Enabled = SCNetworkServiceGetEnabled(v15);
  if (!Enabled)
  {
    v32 = DMCLogObjects(Enabled, v18)[5];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v163 = v16;
      v33 = v32;
      v34 = "DMCDeviceIsNetworkTethered: service ID %{public}@ is not enabled";
LABEL_56:
      _os_log_impl(&dword_1B1630000, v33, OS_LOG_TYPE_DEBUG, v34, buf, 0xCu);
    }

LABEL_57:

    CFRelease(v15);
    goto LABEL_58;
  }

  Interface = SCNetworkServiceGetInterface(v15);
  v21 = DMCLogObjects(Interface, v20)[5];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v22)
  {
    *buf = 138543362;
    v163 = v15;
    _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_DEBUG, "_getBaseInterfaceForService(%{public}@)", buf, 0xCu);
  }

  for (i = Interface; ; i = v25)
  {
    v25 = Interface;
    v26 = DMCLogObjects(v22, v23)[5];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      *buf = 138543362;
      v163 = v25;
      _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_DEBUG, "_getBaseInterfaceForService: Candidate interface %{public}@", buf, 0xCu);
    }

    if (!v25)
    {
      if (i)
      {
        goto LABEL_30;
      }

      v35 = DMCLogObjects(v27, v28)[5];
      v1 = v149;
      v6 = v150;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      *buf = 138543362;
      v163 = v16;
      v33 = v35;
      v34 = "DMCDeviceIsNetworkTethered: cannot get interface for service ID %{public}@";
      goto LABEL_56;
    }

    v29 = CFEqual(v25, v9);
    if (v29)
    {
      break;
    }

    v22 = SCNetworkInterfaceGetInterface(v25);
    Interface = v22;
  }

  v36 = DMCLogObjects(v29, v30)[5];
  v27 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
  if (v27)
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v36, OS_LOG_TYPE_DEBUG, "_getBaseInterfaceForService: Candidate interface is a good IPv4 interface", buf, 2u);
  }

  i = v25;
LABEL_30:
  v37 = DMCLogObjects(v27, v28)[5];
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
  if (v38)
  {
    v40 = v37;
    IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType();
    *buf = 138543362;
    v163 = IOInterfaceType;
    v42 = IOInterfaceType;
    _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_DEBUG, "Interface type: %{public}@", buf, 0xCu);
  }

  v43 = DMCLogObjects(v38, v39)[5];
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
  if (v44)
  {
    v46 = v43;
    FamilyType = _SCNetworkInterfaceGetFamilyType();
    *buf = 138543362;
    v163 = FamilyType;
    v48 = FamilyType;
    _os_log_impl(&dword_1B1630000, v46, OS_LOG_TYPE_DEBUG, "Interface family: %{public}@", buf, 0xCu);
  }

  v49 = DMCLogObjects(v44, v45)[5];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = v49;
    FamilySubType = _SCNetworkInterfaceGetFamilySubType();
    *buf = 138543362;
    v163 = FamilySubType;
    v52 = FamilySubType;
    _os_log_impl(&dword_1B1630000, v50, OS_LOG_TYPE_DEBUG, "Interface family sub-type: %{public}@", buf, 0xCu);
  }

  v53 = [_SCNetworkInterfaceGetIOInterfaceType() intValue];
  v6 = v150;
  if (v53 != 6)
  {
    v73 = DMCLogObjects(v53, v54)[5];
    v1 = v149;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v163 = v16;
    v33 = v73;
    v34 = "DMCDeviceIsNetworkTethered: service ID %{public}@ is not USB Ethernet";
    goto LABEL_56;
  }

  BSDName = SCNetworkInterfaceGetBSDName(i);
  v57 = DMCLogObjects(BSDName, v56)[5];
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
  if (!BSDName)
  {
    v1 = v149;
    if (!v58)
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v163 = v16;
    v33 = v57;
    v34 = "DMCDeviceIsNetworkTethered: could not get BSD name from service ID %{public}@";
    goto LABEL_56;
  }

  if (v58)
  {
    *buf = 138543618;
    v163 = v16;
    v164 = 2114;
    v165 = BSDName;
    _os_log_impl(&dword_1B1630000, v57, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: BSD name from service ID %{public}@ is: %{public}@", buf, 0x16u);
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, domain, BSDName, v147);
  if (!NetworkInterfaceEntity)
  {
    v74 = DMCLogObjects(0, v60)[5];
    v1 = v149;
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v163 = v16;
    v33 = v74;
    v34 = "DMCDeviceIsNetworkTethered: could not network link from service ID %{public}@";
    goto LABEL_56;
  }

  v61 = NetworkInterfaceEntity;
  v62 = SCDynamicStoreCreate(0, @"MCNetworkTetherUtilities", 0, 0);
  if (!v62)
  {
    v75 = DMCLogObjects(0, v63)[5];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v75, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: could not create dynamic store!", buf, 2u);
    }

LABEL_62:
    v76 = v61;
LABEL_66:
    CFRelease(v76);

    goto LABEL_67;
  }

  v144 = v61;
  cf = v62;
  v64 = SCDynamicStoreCopyValue(v62, v61);
  v66 = DMCLogObjects(v64, v65)[5];
  v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
  theDict = v64;
  if (!v64)
  {
    if (v67)
    {
      *buf = 138543362;
      v163 = v16;
      _os_log_impl(&dword_1B1630000, v66, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: could not get network link info from service ID %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
    v76 = v144;
    goto LABEL_66;
  }

  if (v67)
  {
    *buf = 138543618;
    v163 = v16;
    v164 = 2114;
    v165 = v64;
    _os_log_impl(&dword_1B1630000, v66, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: service ID %{public}@ has netlink info: %{public}@", buf, 0x16u);
  }

  Value = CFDictionaryGetValue(v64, key);
  v61 = v144;
  if (v142 != Value)
  {
    v70 = DMCLogObjects(Value, v69)[5];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v163 = v16;
      v71 = v70;
      v72 = "DMCDeviceIsNetworkTethered: netlink for service ID %{public}@ is not active";
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v77 = SCNetworkServiceCopyProtocol(v15, protocolType);
  if (!v77)
  {
    v90 = DMCLogObjects(0, v78)[5];
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v163 = v16;
      v71 = v90;
      v72 = "DMCDeviceIsNetworkTethered: could not get IPv4 info for service ID %{public}@";
LABEL_48:
      _os_log_impl(&dword_1B1630000, v71, OS_LOG_TYPE_DEBUG, v72, buf, 0xCu);
    }

LABEL_49:
    CFRelease(theDict);
    CFRelease(cf);
    goto LABEL_62;
  }

  v79 = v77;
  v80 = v16;
  v81 = SCNetworkProtocolGetConfiguration(v79);
  v140 = v81;
  v143 = v80;
  v137 = v79;
  if (!v81 || (v81 = SCNetworkProtocolGetEnabled(v79), !v81))
  {
    v89 = DMCLogObjects(v81, v82)[5];
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      *v166 = 0;
      _os_log_impl(&dword_1B1630000, v89, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to get IPv4 info and/or it's disabled", v166, 2u);
    }

    goto LABEL_105;
  }

  v83 = DMCLogObjects(v81, v82)[5];
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
  {
    *v166 = 138543362;
    v167 = v140;
    _os_log_impl(&dword_1B1630000, v83, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: IPv4 info: %{public}@", v166, 0xCu);
  }

  v84 = [v140 objectForKey:v133];
  v86 = DMCLogObjects(v84, v85)[5];
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
  {
    *v166 = 138543362;
    v167 = v84;
    _os_log_impl(&dword_1B1630000, v86, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: IPv4 config method: %{public}@", v166, 0xCu);
  }

  if (![(__CFArray *)v84 isEqualToString:v132])
  {
    v91 = _isIPv4ConfigMethodAutomatic_onceToken;
    v130 = v84;
    if (v91 != -1)
    {
      DMCDeviceIsNetworkTethered_cold_1();
    }

    v92 = [_isIPv4ConfigMethodAutomatic_ipv4DynamicConfigMethods containsObject:v130];

    if (v92)
    {
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, domain, v129, v128);
      if (NetworkServiceEntity)
      {
        v127 = NetworkServiceEntity;
        v95 = SCDynamicStoreCopyKeyList(cf, NetworkServiceEntity);
        v97 = DMCLogObjects(v95, v96)[5];
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          *v166 = 138543362;
          v167 = v95;
          _os_log_impl(&dword_1B1630000, v97, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 keys: %{public}@", v166, 0xCu);
        }

        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v135 = v95;
        v139 = [(__CFArray *)v135 countByEnumeratingWithState:&v157 objects:buf count:16];
        if (v139)
        {
          v138 = *v158;
          while (2)
          {
            for (j = 0; j != v139; ++j)
            {
              if (*v158 != v138)
              {
                objc_enumerationMutation(v135);
              }

              v99 = *(*(&v157 + 1) + 8 * j);
              v100 = _serviceIDFromDynamicStoreKey(v99);
              if ([v100 isEqualToString:v143])
              {
                v101 = SCDynamicStoreCopyValue(cf, v99);
                v103 = DMCLogObjects(v101, v102)[5];
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  *v166 = 138543362;
                  v167 = v101;
                  _os_log_impl(&dword_1B1630000, v103, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 service dict: %{public}@", v166, 0xCu);
                }

                isIPv4ConfigInfoUseful = _isIPv4ConfigInfoUseful(v101);
                if (isIPv4ConfigInfoUseful)
                {
                  v115 = DMCLogObjects(isIPv4ConfigInfoUseful, v105)[5];
                  v4 = v131;
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
                  {
                    *v166 = 0;
                    _os_log_impl(&dword_1B1630000, v115, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful dynamic IPv4 config!", v166, 2u);
                  }

                  CFRelease(v127);
                  v116 = v143;

                  v61 = v144;
                  goto LABEL_121;
                }
              }
            }

            v139 = [(__CFArray *)v135 countByEnumeratingWithState:&v157 objects:buf count:16];
            if (v139)
            {
              continue;
            }

            break;
          }
        }

        CFRelease(v127);
        v6 = v150;
        v61 = v144;
        goto LABEL_105;
      }

      v106 = DMCLogObjects(0, v94)[5];
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        *v166 = 0;
        _os_log_impl(&dword_1B1630000, v106, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to create network service entry", v166, 2u);
      }
    }

    goto LABEL_104;
  }

  v87 = _isIPv4ConfigInfoUseful(v140);
  if (!v87)
  {
LABEL_104:

LABEL_105:
    v107 = SCNetworkServiceCopyProtocol(v15, v134);
    if (!v107)
    {
      v112 = DMCLogObjects(0, v108)[5];
      v16 = v143;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v163 = v143;
        _os_log_impl(&dword_1B1630000, v112, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: could not get IPv6 info for service ID %{public}@", buf, 0xCu);
      }

      CFRelease(v137);
      goto LABEL_49;
    }

    v109 = v107;
    isUsefulIPv6Protocol = _isUsefulIPv6Protocol(v107, cf, v143);
    if (isUsefulIPv6Protocol)
    {
      v120 = DMCLogObjects(isUsefulIPv6Protocol, v111)[5];
      v4 = v131;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v163 = v143;
        _os_log_impl(&dword_1B1630000, v120, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: got useful IPv6 info for service ID %{public}@!", buf, 0xCu);
      }

      CFRelease(v109);
      v116 = v143;
      v61 = v144;
      goto LABEL_126;
    }

    CFRelease(v109);
    CFRelease(v137);
    CFRelease(theDict);
    CFRelease(cf);
    CFRelease(v144);

LABEL_67:
    CFRelease(v15);
    v1 = v149;
    goto LABEL_58;
  }

  v125 = DMCLogObjects(v87, v88)[5];
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
  {
    *v166 = 0;
    _os_log_impl(&dword_1B1630000, v125, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful manual config of IPv4!", v166, 2u);
  }

  v116 = v143;
  v4 = v131;
LABEL_121:
  v119 = DMCLogObjects(v117, v118)[5];
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v163 = v116;
    _os_log_impl(&dword_1B1630000, v119, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: got useful IPv4 info for service ID %{public}@!", buf, 0xCu);
  }

LABEL_126:
  CFRelease(v137);
  CFRelease(theDict);
  CFRelease(cf);
  CFRelease(v61);

  CFRelease(v15);
  v123 = DMCLogObjects(v121, v122)[5];
  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v163 = v116;
    _os_log_impl(&dword_1B1630000, v123, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Found tethered Ethernet at Service ID %{public}@!!", buf, 0xCu);
  }

  v113 = 1;
  v1 = v149;
LABEL_129:

  CFRelease(v4);
LABEL_130:
  CFRelease(v1);
  return v113;
}

uint64_t _isIPv4ConfigInfoUseful(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = [v1 objectForKey:*MEMORY[0x1E6982478]];
  v3 = [v1 objectForKey:*MEMORY[0x1E69824C8]];
  v5 = DMCLogObjects(v3, v4)[5];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    *buf = 138543362;
    v20 = v2;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 addresses: %{public}@", buf, 0xCu);
  }

  v8 = DMCLogObjects(v6, v7)[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 netmasks: %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___isIPv4ConfigInfoUseful_block_invoke;
  v12[3] = &unk_1E7ADCE10;
  v9 = v3;
  v13 = v9;
  v14 = &v15;
  [v2 enumerateObjectsUsingBlock:v12];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10 & 1;
}

void sub_1B1658C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___isIPv4ConfigInfoUseful_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = v7;
  if ([v9 length] && objc_msgSend(v8, "length") && (HIDWORD(v11[0]) = 0, v11[1] = 0, inet_pton(2, objc_msgSend(v9, "UTF8String"), v11 + 4) >= 1) && BYTE4(v11[0]) && BYTE4(v11[0]) != 127)
  {
    v10 = WORD2(v11[0]);

    if (v10 != 65193)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }
}

uint64_t _isIPv6ConfigInfoUseful(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = [v1 objectForKey:*MEMORY[0x1E69824D8]];
  v3 = [v1 objectForKey:*MEMORY[0x1E6982500]];
  v5 = DMCLogObjects(v3, v4)[5];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    *buf = 138543362;
    v20 = v2;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 addresses: %{public}@", buf, 0xCu);
  }

  v8 = DMCLogObjects(v6, v7)[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 netmasks: %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___isIPv6ConfigInfoUseful_block_invoke;
  v12[3] = &unk_1E7ADCE10;
  v9 = v3;
  v13 = v9;
  v14 = &v15;
  [v2 enumerateObjectsUsingBlock:v12];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10 & 1;
}

void sub_1B1658F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___isIPv6ConfigInfoUseful_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = v7;
  v10 = [v9 length];
  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v13 = 0uLL;
  v14 = 0;
  if (inet_pton(30, [v9 UTF8String], &v13) < 1)
  {
    goto LABEL_14;
  }

  if (!v13)
  {
    if (*(&v13 + 4) || (HIDWORD(v13) & 0xFEFFFFFF) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v13 == 254)
  {
    v12 = v13 & 0xC000;

    if (v12 == 0x8000)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:

LABEL_13:
  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_15:
}

uint64_t _isUsefulIPv6Protocol(const __SCNetworkProtocol *a1, const __SCDynamicStore *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Enabled = SCNetworkProtocolGetConfiguration(a1);
  v8 = Enabled;
  if (Enabled && (Enabled = SCNetworkProtocolGetEnabled(a1), Enabled))
  {
    v9 = DMCLogObjects(Enabled, v7)[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v41 = v8;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 info: %{public}@", buf, 0xCu);
    }

    v10 = [(__CFArray *)v8 objectForKey:*MEMORY[0x1E69824E0]];
    if ([v10 isEqualToString:*MEMORY[0x1E69828D8]])
    {
      isIPv6ConfigInfoUseful = _isIPv6ConfigInfoUseful(v8);
      if (isIPv6ConfigInfoUseful)
      {
        v13 = DMCLogObjects(isIPv6ConfigInfoUseful, v12)[5];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful IPv6 manual config!", buf, 2u);
        }

        v14 = 1;
        goto LABEL_31;
      }

LABEL_30:
      v14 = 0;
LABEL_31:

      goto LABEL_32;
    }

    if (![v10 isEqualToString:*MEMORY[0x1E69828C8]])
    {
      goto LABEL_30;
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982340]);
    if (!NetworkServiceEntity)
    {
      v31 = DMCLogObjects(0, v17)[5];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to create network service entry", buf, 2u);
      }

      goto LABEL_30;
    }

    v18 = NetworkServiceEntity;
    v19 = SCDynamicStoreCopyKeyList(a2, NetworkServiceEntity);
    v21 = DMCLogObjects(v19, v20)[5];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v41 = v19;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 keys: %{public}@", buf, 0xCu);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v19;
    v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v34 = v18;
      v25 = *v36;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = _serviceIDFromDynamicStoreKey(*(*(&v35 + 1) + 8 * i));
          if ([(__CFString *)v27 isEqualToString:v5])
          {
            v28 = SCDynamicStoreCopyValue(a2, v27);
            v29 = _isIPv6ConfigInfoUseful(v28);
            if (v29)
            {
              v33 = DMCLogObjects(v29, v30)[5];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_1B1630000, v33, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful dynamic IPv6 config!", buf, 2u);
              }

              v14 = 1;
              goto LABEL_36;
            }
          }
        }

        v24 = [(__CFArray *)v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v14 = 0;
LABEL_36:
      v18 = v34;
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v18);
  }

  else
  {
    v15 = DMCLogObjects(Enabled, v7)[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to get IPv6 info and/or it's disabled", buf, 2u);
    }

    v14 = 0;
  }

LABEL_32:

  return v14;
}

id _serviceIDFromDynamicStoreKey(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
  if ([v1 scanUpToString:@"/Network/Service/" intoString:0] && objc_msgSend(v1, "scanString:intoString:", @"/Network/Service/", 0))
  {
    v7 = 0;
    v3 = [v1 scanUpToCharactersFromSet:v2 intoString:&v7];
    v4 = v7;
    v5 = v4;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void ___isIPv4ConfigMethodAutomatic_block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69828B0];
  v6[0] = *MEMORY[0x1E69828A8];
  v6[1] = v1;
  v2 = *MEMORY[0x1E69828C0];
  v6[2] = *MEMORY[0x1E69828A0];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = _isIPv4ConfigMethodAutomatic_ipv4DynamicConfigMethods;
  _isIPv4ConfigMethodAutomatic_ipv4DynamicConfigMethods = v4;
}

uint64_t DMCSendSettingsChangedNotification(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Sending settings changed notification.", v4, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.settingschanged" cStringUsingEncoding:4]);
}

uint64_t DMCSendUserSettingsChangedNotification(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Sending user settings changed notification.", v4, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.usersettingschanged" cStringUsingEncoding:4]);
}

uint64_t DMCSendUPPTrustFailedNotification(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Sending UPP trust failed notification.", v4, 2u);
  }

  return notify_post([@"com.apple.devicemanagementclient.uppTrustFailed" cStringUsingEncoding:4]);
}

uint64_t DMCSendUPPVerificationOfflineNotification(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Sending UPP verification offline notification.", v4, 2u);
  }

  return notify_post([@"com.apple.devicemanagementclient.uppVerificationOffline" cStringUsingEncoding:4]);
}

void DMCSendNagDeadlineNotification(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = *DMCLogObjects(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "Sending nag deadline notification for item: %{public}@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"NagItem";
  v7 = v1;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v4 postNotificationName:@"com.apple.devicemanagementclient.nagDeadline" object:0 userInfo:v5];

  notify_post([@"com.apple.devicemanagementclient.nagDeadline" cStringUsingEncoding:4]);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id DMCSystemContainerPathWithBundleIdentifier(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  v1 = container_system_path_for_identifier();
  v3 = *DMCLogObjects(v1, v2);
  if (v1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v7 = v1;
      _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "Got system container path from MCM: %{public}s", buf, 0xCu);
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithCString:v1 encoding:4];
    free(v1);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = 1;
      _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_ERROR, "Error getting system container: %llu", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

id MCSystemMetadataFilePath(uint64_t a1)
{
  if (MCSystemMetadataFilePath_once != -1)
  {
    MCSystemMetadataFilePath_cold_1();
  }

  v2 = MCSystemMetadataFilePath_str;

  return v2;
}

void __MCSystemMetadataFilePath_block_invoke()
{
  if (MCSystemPublicInfoDirectory_once != -1)
  {
    __MCSystemMetadataFilePath_block_invoke_cold_1();
  }

  v0 = MCSystemPublicInfoDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v3 copy];
  v2 = MCSystemMetadataFilePath_str;
  MCSystemMetadataFilePath_str = v1;
}

id MCUserMetadataFilePath(uint64_t a1)
{
  if (MCUserMetadataFilePath_once != -1)
  {
    MCUserMetadataFilePath_cold_1();
  }

  v2 = MCUserMetadataFilePath_str;

  return v2;
}

void __MCUserMetadataFilePath_block_invoke()
{
  if (MCUserPublicInfoDirectory_once != -1)
  {
    __MCUserMetadataFilePath_block_invoke_cold_1();
  }

  v0 = MCUserPublicInfoDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v3 copy];
  v2 = MCUserMetadataFilePath_str;
  MCUserMetadataFilePath_str = v1;
}

id MCLegacyMetadataFilePath(uint64_t a1)
{
  if (MCLegacyMetadataFilePath_once != -1)
  {
    MCLegacyMetadataFilePath_cold_1();
  }

  v2 = MCLegacyMetadataFilePath_str;

  return v2;
}

void __MCLegacyMetadataFilePath_block_invoke()
{
  if (MCLegacyPublicInfoDirectory_once != -1)
  {
    __MCLegacyMetadataFilePath_block_invoke_cold_1();
  }

  v0 = MCLegacyPublicInfoDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v3 copy];
  v2 = MCLegacyMetadataFilePath_str;
  MCLegacyMetadataFilePath_str = v1;
}

id DMCConfigurationProfilesSystemGroupContainerMetadataFilePath(uint64_t a1)
{
  if (DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_once != -1)
  {
    DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_cold_1();
  }

  v2 = DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_str;

  return v2;
}

void __DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_block_invoke()
{
  v3 = MCConfigurationProfilesSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist"];
  v1 = [v0 copy];
  v2 = DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_str;
  DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_str = v1;
}

id DMCMultiUserDeviceConfigurationFilePath(uint64_t a1)
{
  if (DMCMultiUserDeviceConfigurationFilePath_once != -1)
  {
    DMCMultiUserDeviceConfigurationFilePath_cold_1();
  }

  v2 = DMCMultiUserDeviceConfigurationFilePath_str;

  return v2;
}

void __DMCMultiUserDeviceConfigurationFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCMultiUserDeviceConfigurationFilePath_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MultiUserDeviceConfiguration.plist"];
  v1 = [v3 copy];
  v2 = DMCMultiUserDeviceConfigurationFilePath_str;
  DMCMultiUserDeviceConfigurationFilePath_str = v1;
}

id DMCMultiUserUserConfigurationFilePath(uint64_t a1)
{
  if (DMCMultiUserUserConfigurationFilePath_once != -1)
  {
    DMCMultiUserUserConfigurationFilePath_cold_1();
  }

  v2 = DMCMultiUserUserConfigurationFilePath_str;

  return v2;
}

void __DMCMultiUserUserConfigurationFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __DMCMultiUserUserConfigurationFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MultiUserUserConfiguration.plist"];
  v1 = [v3 copy];
  v2 = DMCMultiUserUserConfigurationFilePath_str;
  DMCMultiUserUserConfigurationFilePath_str = v1;
}

id DMCHangTracerDirectory(uint64_t a1)
{
  if (DMCHangTracerDirectory_once != -1)
  {
    DMCHangTracerDirectory_cold_1();
  }

  v2 = DMCHangTracerDirectory_str;

  return v2;
}

void __DMCHangTracerDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"HangTrace"];
  v1 = [v3 copy];
  v2 = DMCHangTracerDirectory_str;
  DMCHangTracerDirectory_str = v1;
}

id DMCLoggingDirectory(uint64_t a1)
{
  if (DMCLoggingDirectory_once != -1)
  {
    DMCLoggingDirectory_cold_1();
  }

  v2 = DMCLoggingDirectory_str;

  return v2;
}

void __DMCLoggingDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"Logging"];
  v1 = [v3 copy];
  v2 = DMCLoggingDirectory_str;
  DMCLoggingDirectory_str = v1;
}

id DMCEventsFilePath(uint64_t a1)
{
  if (DMCEventsFilePath_once != -1)
  {
    DMCEventsFilePath_cold_1();
  }

  v2 = DMCEventsFilePath_str;

  return v2;
}

void __DMCEventsFilePath_block_invoke(uint64_t a1)
{
  v4 = DMCLoggingDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"DMCEvents.plist"];
  v2 = [v1 copy];
  v3 = DMCEventsFilePath_str;
  DMCEventsFilePath_str = v2;
}

id DMCNagItemsDirectory(uint64_t a1)
{
  if (DMCNagItemsDirectory_once != -1)
  {
    DMCNagItemsDirectory_cold_1();
  }

  v2 = DMCNagItemsDirectory_str;

  return v2;
}

void __DMCNagItemsDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"NagItems"];
  v1 = [v3 copy];
  v2 = DMCNagItemsDirectory_str;
  DMCNagItemsDirectory_str = v1;
}

id DMCSystemFeaturesDirectory(uint64_t a1)
{
  if (DMCSystemFeaturesDirectory_once != -1)
  {
    DMCSystemFeaturesDirectory_cold_1();
  }

  v2 = DMCSystemFeaturesDirectory_str;

  return v2;
}

void __DMCSystemFeaturesDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"Features"];
  v1 = [v3 copy];
  v2 = DMCSystemFeaturesDirectory_str;
  DMCSystemFeaturesDirectory_str = v1;
}

id DMCDiskRestrictionFilePath(uint64_t a1)
{
  if (DMCDiskRestrictionFilePath_once != -1)
  {
    DMCDiskRestrictionFilePath_cold_1();
  }

  v2 = DMCDiskRestrictionFilePath_str;

  return v2;
}

void __DMCDiskRestrictionFilePath_block_invoke()
{
  v2 = [0 stringByAppendingPathComponent:@"DiskManagement_Settings.plist"];
  v0 = [v2 copy];
  v1 = DMCDiskRestrictionFilePath_str;
  DMCDiskRestrictionFilePath_str = v0;
}

id DMCManagedEventsDaemonKeepAliveFilePath(uint64_t a1)
{
  if (DMCManagedEventsDaemonKeepAliveFilePath_once != -1)
  {
    DMCManagedEventsDaemonKeepAliveFilePath_cold_1();
  }

  v2 = DMCManagedEventsDaemonKeepAliveFilePath_str;

  return v2;
}

void __DMCManagedEventsDaemonKeepAliveFilePath_block_invoke()
{
  v2 = [0 stringByAppendingPathComponent:@"managedeventsd_alive_token"];
  v0 = [v2 copy];
  v1 = DMCManagedEventsDaemonKeepAliveFilePath_str;
  DMCManagedEventsDaemonKeepAliveFilePath_str = v0;
}

id DMCDeviceManagementDaemonSetupOptionDirectoryPath(uint64_t a1)
{
  if (DMCDeviceManagementDaemonSetupOptionDirectoryPath_once != -1)
  {
    DMCDeviceManagementDaemonSetupOptionDirectoryPath_cold_1();
  }

  v2 = DMCDeviceManagementDaemonSetupOptionDirectoryPath_str;

  return v2;
}

uint64_t __DMCDeviceManagementDaemonSetupOptionDirectoryPath_block_invoke()
{
  DMCDeviceManagementDaemonSetupOptionDirectoryPath_str = [@"/private/var/mobile/Library/Application Support/com.apple.dmd-setup-option" copy];

  return MEMORY[0x1EEE66BB8]();
}

id MTiPCUKeychainMapPath(uint64_t a1)
{
  if (MTiPCUKeychainMapPath_once != -1)
  {
    MTiPCUKeychainMapPath_cold_1();
  }

  v2 = MTiPCUKeychainMapPath_str;

  return v2;
}

void __MTiPCUKeychainMapPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"KeyMapTable"];
  v1 = [v3 copy];
  v2 = MTiPCUKeychainMapPath_str;
  MTiPCUKeychainMapPath_str = v1;
}

id DMCSystemLostModeRequestPath(uint64_t a1)
{
  if (DMCSystemLostModeRequestPath_once != -1)
  {
    DMCSystemLostModeRequestPath_cold_1();
  }

  v2 = DMCSystemLostModeRequestPath_str;

  return v2;
}

void __DMCSystemLostModeRequestPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"LostModeRequest.plist"];
  v1 = [v3 copy];
  v2 = DMCSystemLostModeRequestPath_str;
  DMCSystemLostModeRequestPath_str = v1;
}

id MDMFilePath(uint64_t a1)
{
  if (MDMFilePath_once != -1)
  {
    MDMFilePath_cold_1();
  }

  v2 = MDMFilePath_str;

  return v2;
}

void __MDMFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDM.plist"];
  v1 = [v3 copy];
  v2 = MDMFilePath_str;
  MDMFilePath_str = v1;
}

id MDMUserFilePath(uint64_t a1)
{
  if (MDMUserFilePath_once != -1)
  {
    MDMUserFilePath_cold_1();
  }

  v2 = MDMUserFilePath_str;

  return v2;
}

void __MDMUserFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDM.plist"];
  v1 = [v3 copy];
  v2 = MDMUserFilePath_str;
  MDMUserFilePath_str = v1;
}

id MDMPropertiesFilePath(uint64_t a1)
{
  if (MDMPropertiesFilePath_once != -1)
  {
    MDMPropertiesFilePath_cold_1();
  }

  v2 = MDMPropertiesFilePath_str;

  return v2;
}

void __MDMPropertiesFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMProperties.plist"];
  v1 = [v3 copy];
  v2 = MDMPropertiesFilePath_str;
  MDMPropertiesFilePath_str = v1;
}

id MDMPropertiesUserFilePath(uint64_t a1)
{
  if (MDMPropertiesUserFilePath_once != -1)
  {
    MDMPropertiesUserFilePath_cold_1();
  }

  v2 = MDMPropertiesUserFilePath_str;

  return v2;
}

void __MDMPropertiesUserFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMProperties.plist"];
  v1 = [v3 copy];
  v2 = MDMPropertiesUserFilePath_str;
  MDMPropertiesUserFilePath_str = v1;
}

id MDMOutstandingActivitiesFilePath(uint64_t a1)
{
  if (MDMOutstandingActivitiesFilePath_once != -1)
  {
    MDMOutstandingActivitiesFilePath_cold_1();
  }

  v2 = MDMOutstandingActivitiesFilePath_str;

  return v2;
}

void __MDMOutstandingActivitiesFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMOutstandingActivities.plist"];
  v1 = [v3 copy];
  v2 = MDMOutstandingActivitiesFilePath_str;
  MDMOutstandingActivitiesFilePath_str = v1;
}

id MDMUserOutstandingActivitiesFilePath(uint64_t a1)
{
  if (MDMUserOutstandingActivitiesFilePath_once != -1)
  {
    MDMUserOutstandingActivitiesFilePath_cold_1();
  }

  v2 = MDMUserOutstandingActivitiesFilePath_str;

  return v2;
}

void __MDMUserOutstandingActivitiesFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMOutstandingActivities.plist"];
  v1 = [v3 copy];
  v2 = MDMUserOutstandingActivitiesFilePath_str;
  MDMUserOutstandingActivitiesFilePath_str = v1;
}

id MDMEventsFilePath(uint64_t a1)
{
  if (MDMEventsFilePath_once != -1)
  {
    MDMEventsFilePath_cold_1();
  }

  v2 = MDMEventsFilePath_str;

  return v2;
}

void __MDMEventsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMEvents.plist"];
  v1 = [v3 copy];
  v2 = MDMEventsFilePath_str;
  MDMEventsFilePath_str = v1;
}

id MDMDirtyEnrollmentStateFilePath(uint64_t a1)
{
  if (MDMDirtyEnrollmentStateFilePath_once != -1)
  {
    MDMDirtyEnrollmentStateFilePath_cold_1();
  }

  v2 = MDMDirtyEnrollmentStateFilePath_str;

  return v2;
}

void __MDMDirtyEnrollmentStateFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMDirtyEnrollmentState.plist"];
  v1 = [v3 copy];
  v2 = MDMDirtyEnrollmentStateFilePath_str;
  MDMDirtyEnrollmentStateFilePath_str = v1;
}

id MDMPostSetupAutoInstallProfilePath(uint64_t a1)
{
  if (MDMPostSetupAutoInstallProfilePath_once != -1)
  {
    MDMPostSetupAutoInstallProfilePath_cold_1();
  }

  v2 = MDMPostSetupAutoInstallProfilePath_str;

  return v2;
}

void __MDMPostSetupAutoInstallProfilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PostSetupProfile.mobileconfig"];
  v1 = [v3 copy];
  v2 = MDMPostSetupAutoInstallProfilePath_str;
  MDMPostSetupAutoInstallProfilePath_str = v1;
}

id MDMPostSetupAutoInstallSetAsideProfilePath(uint64_t a1)
{
  if (MDMPostSetupAutoInstallSetAsideProfilePath_once != -1)
  {
    MDMPostSetupAutoInstallSetAsideProfilePath_cold_1();
  }

  v2 = MDMPostSetupAutoInstallSetAsideProfilePath_str;

  return v2;
}

void __MDMPostSetupAutoInstallSetAsideProfilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PostSetupSetAsideProfile.mobileconfig"];
  v1 = [v3 copy];
  v2 = MDMPostSetupAutoInstallSetAsideProfilePath_str;
  MDMPostSetupAutoInstallSetAsideProfilePath_str = v1;
}

id MDMSystemRestartLogPath(uint64_t a1)
{
  if (MDMSystemRestartLogPath_once != -1)
  {
    MDMSystemRestartLogPath_cold_1();
  }

  v2 = MDMSystemRestartLogPath_str;

  return v2;
}

void __MDMSystemRestartLogPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMRequestedRestart"];
  v1 = [v3 copy];
  v2 = MDMSystemRestartLogPath_str;
  MDMSystemRestartLogPath_str = v1;
}

id MDMSystemShutDownLogPath(uint64_t a1)
{
  if (MDMSystemShutDownLogPath_once != -1)
  {
    MDMSystemShutDownLogPath_cold_1();
  }

  v2 = MDMSystemShutDownLogPath_str;

  return v2;
}

void __MDMSystemShutDownLogPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMRequestedShutDown"];
  v1 = [v3 copy];
  v2 = MDMSystemShutDownLogPath_str;
  MDMSystemShutDownLogPath_str = v1;
}

id MDMSetupAssistantSettingsFilePath(uint64_t a1)
{
  if (MDMSetupAssistantSettingsFilePath_once != -1)
  {
    MDMSetupAssistantSettingsFilePath_cold_1();
  }

  v2 = MDMSetupAssistantSettingsFilePath_str;

  return v2;
}

void __MDMSetupAssistantSettingsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"SetupAssistantSettings.plist"];
  v1 = [v3 copy];
  v2 = MDMSetupAssistantSettingsFilePath_str;
  MDMSetupAssistantSettingsFilePath_str = v1;
}

id MDMMigrationDirectory(uint64_t a1)
{
  if (MDMMigrationDirectory_once != -1)
  {
    MDMMigrationDirectory_cold_1();
  }

  v2 = MDMMigrationDirectory_str;

  return v2;
}

void __MDMMigrationDirectory_block_invoke(uint64_t a1)
{
  v4 = DMCSystemFeaturesDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"MDMMigration"];
  v2 = [v1 copy];
  v3 = MDMMigrationDirectory_str;
  MDMMigrationDirectory_str = v2;
}

id MDMCloudConfigurationPendingMigrationDetailsFilePath(uint64_t a1)
{
  if (MDMCloudConfigurationPendingMigrationDetailsFilePath_once != -1)
  {
    MDMCloudConfigurationPendingMigrationDetailsFilePath_cold_1();
  }

  v2 = MDMCloudConfigurationPendingMigrationDetailsFilePath_str;

  return v2;
}

void __MDMCloudConfigurationPendingMigrationDetailsFilePath_block_invoke(uint64_t a1)
{
  v4 = MDMMigrationDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"CloudConfigurationPendingMigrationDetails.plist"];
  v2 = [v1 copy];
  v3 = MDMCloudConfigurationPendingMigrationDetailsFilePath_str;
  MDMCloudConfigurationPendingMigrationDetailsFilePath_str = v2;
}

id MDMMigrationConfigFilePath(uint64_t a1)
{
  if (MDMMigrationConfigFilePath_once != -1)
  {
    MDMMigrationConfigFilePath_cold_1();
  }

  v2 = MDMMigrationConfigFilePath_str;

  return v2;
}

void __MDMMigrationConfigFilePath_block_invoke(uint64_t a1)
{
  v4 = MDMMigrationDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"MDMMigrationConfig.plist"];
  v2 = [v1 copy];
  v3 = MDMMigrationConfigFilePath_str;
  MDMMigrationConfigFilePath_str = v2;
}

id MDMDEPPushServiceDirectory(uint64_t a1)
{
  if (MDMDEPPushServiceDirectory_once != -1)
  {
    MDMDEPPushServiceDirectory_cold_1();
  }

  v2 = MDMDEPPushServiceDirectory_str;

  return v2;
}

void __MDMDEPPushServiceDirectory_block_invoke(uint64_t a1)
{
  v4 = DMCSystemFeaturesDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"DEPPush"];
  v2 = [v1 copy];
  v3 = MDMDEPPushServiceDirectory_str;
  MDMDEPPushServiceDirectory_str = v2;
}

id MDMDEPTokenSyncActivitiesFilePath(uint64_t a1)
{
  if (MDMDEPTokenSyncActivitiesFilePath_once != -1)
  {
    MDMDEPTokenSyncActivitiesFilePath_cold_1();
  }

  v2 = MDMDEPTokenSyncActivitiesFilePath_str;

  return v2;
}

void __MDMDEPTokenSyncActivitiesFilePath_block_invoke(uint64_t a1)
{
  v4 = MDMDEPPushServiceDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"MDMDEPTokenSyncActivities.plist"];
  v2 = [v1 copy];
  v3 = MDMDEPTokenSyncActivitiesFilePath_str;
  MDMDEPTokenSyncActivitiesFilePath_str = v2;
}

id MDMDEPTokenSyncPropertiesFilePath(uint64_t a1)
{
  if (MDMDEPTokenSyncPropertiesFilePath_once != -1)
  {
    MDMDEPTokenSyncPropertiesFilePath_cold_1();
  }

  v2 = MDMDEPTokenSyncPropertiesFilePath_str;

  return v2;
}

void __MDMDEPTokenSyncPropertiesFilePath_block_invoke(uint64_t a1)
{
  v4 = MDMDEPPushServiceDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"DEPPushTokenSyncProperties.plist"];
  v2 = [v1 copy];
  v3 = MDMDEPTokenSyncPropertiesFilePath_str;
  MDMDEPTokenSyncPropertiesFilePath_str = v2;
}

id MDMManagedStoreBooksManifestPath(uint64_t a1)
{
  if (MDMManagedStoreBooksManifestPath_once != -1)
  {
    MDMManagedStoreBooksManifestPath_cold_1();
  }

  v2 = MDMManagedStoreBooksManifestPath_str;

  return v2;
}

void __MDMManagedStoreBooksManifestPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"ManagedBooks.plist"];
  v1 = [v3 copy];
  v2 = MDMManagedStoreBooksManifestPath_str;
  MDMManagedStoreBooksManifestPath_str = v1;
}

id MDMManagedNonStoreBooksSystemGroupContainer()
{
  v0 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
  if (!MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath)
  {
    v1 = DMCSystemGroupContainerPathWithGroupIdentifier(@"systemgroup.com.apple.media.books.managed");
    v2 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
    MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath = v1;

    v0 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
    if (!MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath)
    {
      v4 = *DMCLogObjects(0, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_ERROR, "Failed to get managed books system group container", v6, 2u);
      }

      v0 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
    }
  }

  return v0;
}

id MDMManagedNonStoreBooksDirectory(uint64_t a1)
{
  if (MDMManagedNonStoreBooksDirectory_once != -1)
  {
    MDMManagedNonStoreBooksDirectory_cold_1();
  }

  v2 = MDMManagedNonStoreBooksDirectory_str;

  return v2;
}

void __MDMManagedNonStoreBooksDirectory_block_invoke()
{
  v3 = MDMManagedNonStoreBooksSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 copy];
  v2 = MDMManagedNonStoreBooksDirectory_str;
  MDMManagedNonStoreBooksDirectory_str = v1;
}

id MDMManagedNonStoreBooksManifestPath(uint64_t a1)
{
  if (MDMManagedNonStoreBooksManifestPath_once != -1)
  {
    MDMManagedNonStoreBooksManifestPath_cold_1();
  }

  v2 = MDMManagedNonStoreBooksManifestPath_str;

  return v2;
}

void __MDMManagedNonStoreBooksManifestPath_block_invoke(uint64_t a1)
{
  v4 = MDMManagedNonStoreBooksDirectory(a1);
  v1 = [v4 stringByAppendingPathComponent:@"Managed.plist"];
  v2 = [v1 copy];
  v3 = MDMManagedNonStoreBooksManifestPath_str;
  MDMManagedNonStoreBooksManifestPath_str = v2;
}

id MDMLegacyManagedNonStoreBooksDirectory(uint64_t a1)
{
  if (MDMLegacyManagedNonStoreBooksDirectory_once != -1)
  {
    MDMLegacyManagedNonStoreBooksDirectory_cold_1();
  }

  v2 = MDMLegacyManagedNonStoreBooksDirectory_str;

  return v2;
}

uint64_t __MDMLegacyManagedNonStoreBooksDirectory_block_invoke()
{
  MDMLegacyManagedNonStoreBooksDirectory_str = [@"/var/mobile/Media/Books/Managed" copy];

  return MEMORY[0x1EEE66BB8]();
}

id MDMAuthenticationResultsCacheFilePath(uint64_t a1)
{
  if (MDMAuthenticationResultsCacheFilePath_once != -1)
  {
    MDMAuthenticationResultsCacheFilePath_cold_1();
  }

  v2 = MDMAuthenticationResultsCacheFilePath_str;

  return v2;
}

void __MDMAuthenticationResultsCacheFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"AuthenticationResultsCache.plist"];
  v1 = [v3 copy];
  v2 = MDMAuthenticationResultsCacheFilePath_str;
  MDMAuthenticationResultsCacheFilePath_str = v1;
}

id MDMDatabaseReturnToServiceStorageDirectory(uint64_t a1)
{
  if (MDMDatabaseReturnToServiceStorageDirectory_once != -1)
  {
    MDMDatabaseReturnToServiceStorageDirectory_cold_1();
  }

  v2 = MDMDatabaseReturnToServiceStorageDirectory_str;

  return v2;
}

void __MDMDatabaseReturnToServiceStorageDirectory_block_invoke()
{
  v2 = [@"/private/var/db/com.apple.devicemanagementclient" stringByAppendingPathComponent:@"/MDM_ReturnToService"];
  v0 = [v2 copy];
  v1 = MDMDatabaseReturnToServiceStorageDirectory_str;
  MDMDatabaseReturnToServiceStorageDirectory_str = v0;
}

id MDMSystemReturnToServiceStorageDirectory(uint64_t a1)
{
  if (MDMSystemReturnToServiceStorageDirectory_once != -1)
  {
    MDMSystemReturnToServiceStorageDirectory_cold_1();
  }

  v2 = MDMSystemReturnToServiceStorageDirectory_str;

  return v2;
}

void __MDMSystemReturnToServiceStorageDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"Stash"];
  v1 = [v3 copy];
  v2 = MDMSystemReturnToServiceStorageDirectory_str;
  MDMSystemReturnToServiceStorageDirectory_str = v1;
}

id MDMDirtyPersonaFilePath(uint64_t a1)
{
  if (MDMDirtyPersonaFilePath_once != -1)
  {
    MDMDirtyPersonaFilePath_cold_1();
  }

  v2 = MDMDirtyPersonaFilePath_str;

  return v2;
}

void __MDMDirtyPersonaFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMDirtyPersona.plist"];
  v1 = [v3 copy];
  v2 = MDMDirtyPersonaFilePath_str;
  MDMDirtyPersonaFilePath_str = v1;
}

void __MCSystemPublicInfoDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PublicInfo"];
  v1 = [v3 copy];
  v2 = MCSystemPublicInfoDirectory_str;
  MCSystemPublicInfoDirectory_str = v1;
}

void __MCUserPublicInfoDirectory_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PublicInfo"];
  v1 = [v3 copy];
  v2 = MCUserPublicInfoDirectory_str;
  MCUserPublicInfoDirectory_str = v1;
}

void __MCLegacyPublicInfoDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/ConfigurationProfiles/PublicInfo"];
  v0 = [v2 copy];
  v1 = MCLegacyPublicInfoDirectory_str;
  MCLegacyPublicInfoDirectory_str = v0;
}

void __MCUserProfileStorageDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/UserConfigurationProfiles"];
  v0 = [v2 copy];
  v1 = MCUserProfileStorageDirectory_str;
  MCUserProfileStorageDirectory_str = v0;
}

void sub_1B165DD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B165E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _assertionQueue(uint64_t a1)
{
  if (_assertionQueue_onceToken != -1)
  {
    _assertionQueue_cold_1();
  }

  v2 = _assertionQueue_queue;

  return v2;
}

void _retainPowerAssertion(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = DMCLogObjects(a1, a2)[2];
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 67109376;
    v14 = powerAssertionRetainCount;
    v15 = 1024;
    v16 = powerAssertionRetainCount + 1;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Retaining power assertion. Count: %d -> %d", buf, 0xEu);
  }

  if (powerAssertionRetainCount)
  {
    IOPMAssertionRetain(assertionID);
  }

  else
  {
    v5 = DMCLogObjects(v3, v4)[2];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "Creating new IOPMAssertion.", buf, 2u);
    }

    v12[0] = @"PreventUserIdleSystemSleep";
    v12[1] = @"MC activity";
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:{3600.0, @"AssertType", @"AssertName", @"TimeoutSeconds"}];
    v12[2] = v6;
    v12[3] = @"TimeoutActionTurnOff";
    v11[3] = @"TimeoutAction";
    v11[4] = @"AllowsDeviceRestart";
    v12[4] = *MEMORY[0x1E695E4D0];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

    v8 = IOPMAssertionCreateWithProperties(v7, &assertionID);
    v10 = DMCLogObjects(v8, v9)[2];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = assertionID;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEFAULT, "IOPMAssertion created %d", buf, 8u);
    }
  }

  ++powerAssertionRetainCount;
}

void _releasePowerAssertion(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = DMCLogObjects(a1, a2)[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109376;
    v8 = powerAssertionRetainCount;
    v9 = 1024;
    v10 = powerAssertionRetainCount - 1;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Releasing power assertion. Count: %d -> %d.", &v7, 0xEu);
  }

  v3 = IOPMAssertionRelease(assertionID);
  v5 = __OFSUB__(powerAssertionRetainCount--, 1);
  if ((powerAssertionRetainCount < 0) ^ v5 | (powerAssertionRetainCount == 0))
  {
    v6 = DMCLogObjects(v3, v4)[2];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = assertionID;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEFAULT, "IOPMAssertion released %d.", &v7, 8u);
    }
  }
}

uint64_t ___assertionQueue_block_invoke()
{
  _assertionQueue_queue = dispatch_queue_create("Power assertion queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1660C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1661014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B16614FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B16620AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLARatchetManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLARatchetManagerClass_softClass;
  v7 = getLARatchetManagerClass_softClass;
  if (!getLARatchetManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLARatchetManagerClass_block_invoke;
    v3[3] = &unk_1E7ADC1F0;
    v3[4] = &v4;
    __getLARatchetManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1662D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLARatchetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLARatchetClass_softClass;
  v7 = getLARatchetClass_softClass;
  if (!getLARatchetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLARatchetClass_block_invoke;
    v3[3] = &unk_1E7ADC1F0;
    v3[4] = &v4;
    __getLARatchetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1663190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLARatchetManagerClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LARatchetManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLARatchetManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLARatchetManagerClass_block_invoke_cold_1();
    LocalAuthenticationLibrary();
  }
}

void LocalAuthenticationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7ADD198;
    v3 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLARatchetClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  result = objc_getClass("LARatchet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLARatchetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLARatchetClass_block_invoke_cold_1();
    return DMCIsSetupBuddyDone();
  }

  return result;
}

uint64_t DMCIsSetupBuddyDone()
{
  if (DMCBYSetupAssistantNeedsToRun())
  {
    return 0;
  }

  else
  {
    return DMCIsBundleIDRunning(@"com.apple.purplebuddy") ^ 1;
  }
}

uint64_t DMCIsGreenTea(uint64_t a1, uint64_t a2)
{
  if (DMCIsGreenTea_once != -1)
  {
    DMCIsGreenTea_cold_1();
  }

  return DMCIsGreenTea_isGreenTea;
}

void __DMCIsGreenTea_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  v3 = MatchingService - 1;
  if (MatchingService - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], MatchingService);
  }

  v4 = +[DMCMobileGestalt regionCode];
  DMCIsGreenTea_isGreenTea = (v3 < 0xFFFFFFFE) & [v4 isEqualToString:@"CH"];
}

uint64_t DMCIsBundleIDRunning(uint64_t a1)
{
  v1 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:a1];
  v2 = [MEMORY[0x1E69C75D0] handleForPredicate:v1 error:0];
  v3 = [v2 currentState];
  v4 = [v3 isRunning];

  return v4;
}

__CFString *DMCStringForBool(int a1)
{
  if (a1)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

id DMCUSEnglishLocale(uint64_t a1)
{
  if (DMCUSEnglishLocale_once != -1)
  {
    DMCUSEnglishLocale_cold_1();
  }

  v2 = DMCUSEnglishLocale_locale;

  return v2;
}

uint64_t __DMCUSEnglishLocale_block_invoke()
{
  DMCUSEnglishLocale_locale = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];

  return MEMORY[0x1EEE66BB8]();
}

id DMCUSEnglishNumberFormatter(uint64_t a1)
{
  if (DMCUSEnglishNumberFormatter_once != -1)
  {
    DMCUSEnglishNumberFormatter_cold_1();
  }

  v2 = DMCUSEnglishNumberFormatter_formatter;

  return v2;
}

uint64_t __DMCUSEnglishNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = DMCUSEnglishNumberFormatter_formatter;
  DMCUSEnglishNumberFormatter_formatter = v0;

  v2 = DMCUSEnglishNumberFormatter_formatter;
  v4 = DMCUSEnglishLocale(v3);
  [v2 setLocale:v4];

  v5 = DMCUSEnglishNumberFormatter_formatter;

  return [v5 setNumberStyle:0];
}

void sub_1B1664AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}