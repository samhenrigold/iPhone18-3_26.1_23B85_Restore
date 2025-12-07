@interface PSWiFiSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSWiFiSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480], a2, enabled, v3);
  if (v5)
  {
    v6 = v5;
    Current = CFRunLoopGetCurrent();
    v8 = *MEMORY[0x1E695E8E0];
    PSWiFiManagerClientScheduleWithRunLoop(v6, Current, *MEMORY[0x1E695E8E0], v9);
    v13 = PSWiFiManagerClientCopyDevices(v6, v10, v11, v12);
    if ([v13 count])
    {
      v14 = [v13 objectAtIndexedSubscript:0];

      Power = PSWiFiDeviceClientGetPower(v14, v15, v16, v17);
      if (Power != enabledCopy)
      {
        v19 = _PSLoggingFacility(Power);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27[0]) = 0;
          _os_log_impl(&dword_18B008000, v19, OS_LOG_TYPE_DEFAULT, "Toggled Wifi State.", v27, 2u);
        }

        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v20 = getWiFiManagerClientSetPowerSymbolLoc_ptr;
        v32 = getWiFiManagerClientSetPowerSymbolLoc_ptr;
        if (!getWiFiManagerClientSetPowerSymbolLoc_ptr)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __getWiFiManagerClientSetPowerSymbolLoc_block_invoke;
          v27[3] = &unk_1E71DBC78;
          v28 = &v29;
          v21 = MobileWiFiLibrary();
          v22 = dlsym(v21, "WiFiManagerClientSetPower");
          *(v28[1] + 24) = v22;
          getWiFiManagerClientSetPowerSymbolLoc_ptr = *(v28[1] + 24);
          v20 = v30[3];
        }

        _Block_object_dispose(&v29, 8);
        if (!v20)
        {
          [PSContactsAuthorizationLevelController dealloc];
          v26 = v25;
          _Block_object_dispose(&v29, 8);
          _Unwind_Resume(v26);
        }

        v20(v6, enabledCopy);
      }
    }

    v23 = CFRunLoopGetCurrent();
    PSWiFiManagerClientUnscheduleFromRunLoop(v6, v23, v8, v24);
    CFRelease(v6);
  }
}

+ (BOOL)isEnabled
{
  v4 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480], a2, v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Current = CFRunLoopGetCurrent();
  v7 = *MEMORY[0x1E695E8E0];
  PSWiFiManagerClientScheduleWithRunLoop(v5, Current, *MEMORY[0x1E695E8E0], v8);
  v12 = PSWiFiManagerClientCopyDevices(v5, v9, v10, v11);
  if ([v12 count])
  {
    v13 = [v12 objectAtIndexedSubscript:0];

    v17 = PSWiFiDeviceClientGetPower(v13, v14, v15, v16) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = CFRunLoopGetCurrent();
  PSWiFiManagerClientUnscheduleFromRunLoop(v5, v18, v7, v19);
  CFRelease(v5);

  return v17;
}

@end