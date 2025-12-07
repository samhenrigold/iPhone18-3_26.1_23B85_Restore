void sub_100004C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t tapToManagerHidEventCallBack(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[SUCoreLog sharedLogger];
    v8 = [v9 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "tapToManagerHidEventCallBack";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Invalid manager object passed to %{public}s", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (IOHIDEventGetType() == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    v7 = [v4 managerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __tapToManagerHidEventCallBack_block_invoke;
    block[3] = &unk_1000996E8;
    v12 = v4;
    v13 = v6;
    v14 = IntegerValue;
    dispatch_async(v7, block);

    v8 = v12;
LABEL_7:
  }

  return 1;
}

void __tapToManagerHidEventCallBack_block_invoke(uint64_t a1)
{
  v1 = a1;
  if (([*(a1 + 32) registeredForButtonPress] & 1) == 0)
  {
    v8 = [*(v1 + 32) logger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring stale HIDEvent", buf, 2u);
    }

    return;
  }

  v2 = *(v1 + 40);
  v3 = 1;
  if (v2 <= 148)
  {
    if (v2 != 48)
    {
      if (v2 != 64)
      {
        goto LABEL_46;
      }

      v10 = [*(v1 + 32) logger];
      v5 = [v10 oslog];

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      if (*(v1 + 48))
      {
        v11 = "Pressed";
      }

      else
      {
        v11 = "Released";
      }

      *buf = 136446210;
      *&buf[4] = v11;
      v7 = "MenyKey was %{public}s";
      goto LABEL_36;
    }

    v16 = [*(v1 + 32) logger];
    v5 = [v16 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 48))
      {
        v17 = "Pressed";
      }

      else
      {
        v17 = "Released";
      }

      *buf = 136446210;
      *&buf[4] = v17;
      v7 = "PowerKey was %{public}s";
      goto LABEL_36;
    }
  }

  else
  {
    switch(v2)
    {
      case 149:
        v12 = [*(v1 + 32) logger];
        v5 = [v12 oslog];

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 48))
          {
            v13 = "Pressed";
          }

          else
          {
            v13 = "Released";
          }

          *buf = 136446210;
          *&buf[4] = v13;
          v7 = "Help was %{public}s";
          goto LABEL_36;
        }

        break;
      case 233:
        v14 = [*(v1 + 32) logger];
        v5 = [v14 oslog];

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 48))
          {
            v15 = "Pressed";
          }

          else
          {
            v15 = "Released";
          }

          *buf = 136446210;
          *&buf[4] = v15;
          v7 = "VolumeUp was %{public}s";
          goto LABEL_36;
        }

        break;
      case 234:
        v4 = [*(v1 + 32) logger];
        v5 = [v4 oslog];

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 48))
          {
            v6 = "Pressed";
          }

          else
          {
            v6 = "Released";
          }

          *buf = 136446210;
          *&buf[4] = v6;
          v7 = "VolumeDown was %{public}s";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        }

        break;
      default:
        goto LABEL_46;
    }
  }

LABEL_37:

  v18 = *(v1 + 40);
  *buf = 0;
  *&buf[8] = 0;
  if (catchSysdiagnoseSequence_nvramOnce != -1)
  {
    __tapToManagerHidEventCallBack_block_invoke_cold_1();
  }

  if (catchSysdiagnoseSequence_allowCollection == 1)
  {
    gettimeofday(buf, 0);
    if (catchSysdiagnoseSequence_lastUsage == v18 && (*&buf[8] - SDWORD2(catchSysdiagnoseSequence_lastSysdiagnoseTime) + 1000000 * (*buf - catchSysdiagnoseSequence_lastSysdiagnoseTime)) >= 0x3938701 && (*&buf[8] - SDWORD2(catchSysdiagnoseSequence_lastPressTime) + 1000000 * (*buf - catchSysdiagnoseSequence_lastPressTime)) <= 0xAAE5F)
    {
      catchSysdiagnoseSequence_lastSysdiagnoseTime = *buf;
      v19 = dispatch_get_global_queue(25, 0);
      dispatch_async(v19, &__block_literal_global_739);
    }

    catchSysdiagnoseSequence_lastUsage = v18;
    catchSysdiagnoseSequence_lastPressTime = *buf;
  }

  v3 = 0;
LABEL_46:
  if ([*(v1 + 32) useRedRingUI] && (objc_msgSend(*(v1 + 32), "bypassCodeEntered") & 1) == 0)
  {
    if (!tapToManagerHidEventCallBack_buttonPressArray)
    {
      v31 = objc_alloc_init(NSMutableArray);
      v32 = tapToManagerHidEventCallBack_buttonPressArray;
      tapToManagerHidEventCallBack_buttonPressArray = v31;
    }

    if (!tapToManagerHidEventCallBack_bypassCode)
    {
      tapToManagerHidEventCallBack_bypassCode = &off_1000A7E40;
    }

    v33 = [tapToManagerHidEventCallBack_buttonPressArray count];
    if (v33 > 2 * [tapToManagerHidEventCallBack_bypassCode count])
    {
      [tapToManagerHidEventCallBack_buttonPressArray removeObjectAtIndex:0];
    }

    if (*(v1 + 48))
    {
      v34 = v3;
    }

    else
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      v35 = tapToManagerHidEventCallBack_buttonPressArray;
      v36 = [NSNumber numberWithLong:*(v1 + 40)];
      [v35 addObject:v36];

      v37 = [*(v1 + 32) logger];
      v38 = [v37 oslog];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = tapToManagerHidEventCallBack_buttonPressArray;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "buttonPressArray is %{public}@\n", buf, 0xCu);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v39 = tapToManagerHidEventCallBack_buttonPressArray;
      v40 = [v39 countByEnumeratingWithState:&v74 objects:v81 count:16];
      if (v40)
      {
        v42 = v40;
        v43 = v1;
        LODWORD(v44) = 0;
        v45 = *v75;
        *&v41 = 67109120;
        v71 = v41;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v75 != v45)
            {
              objc_enumerationMutation(v39);
            }

            v47 = *(*(&v74 + 1) + 8 * i);
            if ([tapToManagerHidEventCallBack_bypassCode count] - 1 >= v44 && (objc_msgSend(tapToManagerHidEventCallBack_bypassCode, "objectAtIndexedSubscript:", v44), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v47, "isEqual:", v48), v48, v49))
            {
              LODWORD(v44) = v44 + 1;
              v50 = [*(v43 + 32) logger];
              v51 = [v50 oslog];

              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v71;
                *&buf[4] = v44;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Incremented match index: %d", buf, 8u);
              }
            }

            else
            {
              v52 = [tapToManagerHidEventCallBack_bypassCode objectAtIndexedSubscript:0];
              v53 = [v47 isEqual:v52];

              v54 = [*(v43 + 32) logger];
              v51 = [v54 oslog];

              v55 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
              if (v53)
              {
                if (v55)
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Set match index to 1", buf, 2u);
                }

                LODWORD(v44) = 1;
              }

              else
              {
                if (v55)
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Reset match index to 0", buf, 2u);
                }

                LODWORD(v44) = 0;
              }
            }
          }

          v42 = [v39 countByEnumeratingWithState:&v74 objects:v81 count:16];
        }

        while (v42);
        v44 = v44;
        v1 = v43;
      }

      else
      {
        v44 = 0;
      }

      v56 = [tapToManagerHidEventCallBack_bypassCode count];
      v57 = *(v1 + 32);
      if (v56 == v44)
      {
        v58 = [v57 logger];
        v59 = [v58 oslog];

        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Bypass code detected..moving past red ring and activating TTR server", buf, 2u);
        }

        [*(v1 + 32) setBypassCodeEntered:1];
        v60 = [*(v1 + 32) serverWasActivated];
        v61 = *(v1 + 32);
        if (v60)
        {
          [v61 restartRecoveryAdvertisement];
        }

        else
        {
          v70 = [v61 server];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = __tapToManagerHidEventCallBack_block_invoke_725;
          v72[3] = &unk_1000995D0;
          v73 = *(v1 + 32);
          [v70 activateWithCompletion:v72];
        }
      }

      else if (([v57 screenOn] & 1) == 0)
      {
        v62 = [*(v1 + 32) uiAssetsBasePath];

        v63 = [*(v1 + 32) logger];
        v22 = [v63 oslog];

        v64 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v62)
        {
          if (v64)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Redrawing alert", buf, 2u);
          }

          v65 = [*(v1 + 32) uiAssetsBasePath];
          v22 = [v65 stringByAppendingPathComponent:@"alert.png"];

          v66 = [*(v1 + 32) uiAssetsBasePath];
          v67 = [v66 stringByAppendingPathComponent:@"alert.map"];

          v68 = [*(v1 + 32) logger];
          v69 = [v68 oslog];

          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Displaying error state..\n", buf, 2u);
          }

          [*(v1 + 32) drawImageFromPath:v22 withMapFromPath:v67];
          goto LABEL_57;
        }

        if (v64)
        {
          *buf = 0;
          v24 = "Failed to locate path to alert";
          goto LABEL_53;
        }

LABEL_57:
      }
    }
  }

  else
  {
    if (![*(v1 + 32) managerIsActive] || !objc_msgSend(*(v1 + 32), "onFirstScreen"))
    {
      v27 = [*(v1 + 32) logger];
      v22 = [v27 oslog];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(v1 + 32);
        v29 = [v28 managerIsActive];
        v30 = [*(v1 + 32) onFirstScreen];
        *buf = 134218496;
        *&buf[4] = v28;
        *&buf[12] = 1024;
        *&buf[14] = v29;
        v79 = 1024;
        v80 = v30;
        v24 = "TapToManager ignoring button press for manager:%p, active:%d, onFirstScreen:%d";
        v25 = v22;
        v26 = 24;
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    v20 = [*(v1 + 32) screenOn];
    v21 = [*(v1 + 32) logger];
    v22 = [v21 oslog];

    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23)
      {
        *buf = 0;
        v24 = "InitialUI screen needs to be shown and the screen is already on. Nothing to do";
LABEL_53:
        v25 = v22;
        v26 = 2;
LABEL_56:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "InitialUI screen needs to be shown and the screen is off. Redrawing UI", buf, 2u);
    }

    [*(v1 + 32) setScreenOn:1];
    [*(v1 + 32) deactivateScreenOffTimer];
    [*(v1 + 32) activate:0];
  }
}

void __tapToManagerHidEventCallBack_block_invoke_725(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 logger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetupKit server ActivateWithCompletion retirned error. Not setting serverWasActivated", v9, 2u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "tapToManagerHidEventCallBack setting serverWasActivated to YES", buf, 2u);
    }

    [*(a1 + 32) setServerWasActivated:1];
  }

  [*(a1 + 32) activate:v5];
}

void __catchSysdiagnoseSequence_block_invoke(id a1)
{
  v1 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"nerd-logging"];
  if (v1)
  {
    catchSysdiagnoseSequence_allowCollection = 1;
  }
}

CFTypeRef copy_nvram_variable_with_system_nvram_check(const __CFString *a1)
{
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    v7 = @"Could not get master port\n";
  }

  else
  {
    v9 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v9)
    {
      v10 = v9;
      CFProperty = IORegistryEntryCreateCFProperty(v9, a1, kCFAllocatorDefault, 0);
      IOObjectRelease(v10);
      return CFProperty;
    }

    v7 = @"Could not get options entry from the device tree\n";
  }

  logfunction("", 1, v7, v2, v3, v4, v5, v6);
  return 0;
}

BOOL set_nvram_object_with_system_nvram_check(const __CFString *a1, _BOOL8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = @"Can't insert nil key into registry\n";
LABEL_10:
    logfunction("", 1, v18, a4, a5, a6, a7, a8);
    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    logfunction("", 1, @"Can't insert nil object into registry\n", a4, a5, a6, a7, a8);
    return v8;
  }

  v10 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
  if (!v10)
  {
    v18 = @"Failed to locate IODeviceTree options in IO registry\n";
    goto LABEL_10;
  }

  v11 = v10;
  v12 = IORegistryEntrySetCFProperty(v10, a1, v8);
  v8 = v12 == 0;
  if (v12)
  {
    logfunction("", 1, @"Failed to set key %@ in IO registry: %d\n", v13, v14, v15, v16, v17, a1, v12);
  }

  IOObjectRelease(v11);
  return v8;
}

uint64_t msu_delete_nvram_variable_if_exists(const __CFString *a1, _BYTE *a2)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buffer = 0u;
  v15 = 0u;
  v4 = msu_nvram_exists(a1);
  CFStringGetCString(a1, buffer, 511, 0x8000100u);
  if (!v4)
  {
    v12 = @"%s: NVRAM %s not found..Nothing to do\n\n";
    goto LABEL_5;
  }

  v10 = set_nvram_object_with_system_nvram_check(@"IONVRAM-DELETE-PROPERTY", a1, 0, v5, v6, v7, v8, v9);
  v11 = 0;
  if (v10)
  {
    v12 = @"%s: Deleted value %s\n\n";
LABEL_5:
    v11 = 1;
    logfunction("", 1, v12, v5, v6, v7, v8, v9, "msu_delete_nvram_variable_if_exists", buffer);
  }

  *a2 = v4;
  return v11;
}

BOOL msu_nvram_exists(const __CFString *a1)
{
  v1 = copy_nvram_variable_with_system_nvram_check(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

BOOL set_nvram_variable(char *cStr, _BOOL8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cStr)
  {
    v23 = @"Can't set null key name into NVRAM\n";
LABEL_11:
    logfunction("", 1, v23, a4, a5, a6, a7, a8);
    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    logfunction("", 1, @"Can't set NULL value into NVRAM\n", a4, a5, a6, a7, a8);
    return v8;
  }

  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v9)
  {
    v23 = @"Failed to allocate string for key\n";
    goto LABEL_11;
  }

  v10 = v9;
  v11 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
  if (!v11)
  {
    logfunction("", 1, @"Failed to allocate string for value\n", v12, v13, v14, v15, v16);
    CFRelease(v10);
    return 0;
  }

  v17 = v11;
  v8 = set_nvram_object_with_system_nvram_check(v10, v11, 0, v12, v13, v14, v15, v16);
  if (!v8)
  {
    logfunction("", 1, @"Failed to set value into NVRAM\n", v18, v19, v20, v21, v22);
  }

  CFRelease(v10);
  CFRelease(v17);
  return v8;
}

BOOL delete_nvram_variable_and_force_sync(const __CFString *a1)
{
  v8 = 0;
  v6 = msu_delete_nvram_variable_if_exists(a1, &v8);
  result = 0;
  if (v6)
  {
    if (v8 == 1)
    {

      return set_nvram_object_with_system_nvram_check(@"IONVRAM-FORCESYNCNOW-PROPERTY", @"IONVRAM-FORCESYNCNOW-PROPERTY", 0, v1, v2, v3, v4, v5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

int *logfunctionv(const char *a1, uint64_t a2, const __CFString *a3, va_list a4)
{
  v7 = *__error();
  memcpy(__dst, "Error creating CFString", sizeof(__dst));
  if (logfunctionv_onceToken != -1)
  {
    logfunctionv_cold_1();
  }

  v8 = CFStringCreateWithFormatAndArguments(0, 0, a3, a4);
  if (v8)
  {
    v9 = v8;
    v10 = __dst;
    if (CFStringGetCString(v8, __dst, 1024, 0x8000100u))
    {
      v11 = 0;
    }

    else
    {
      Length = CFStringGetLength(v9);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6FEB6E8AuLL);
      CFStringGetCString(v9, v11, MaximumSizeForEncoding + 1, 0x8000100u);
      v10 = v11;
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v14 = "";
  if (a1)
  {
    v14 = a1;
  }

  fprintf(__stderrp, "%s: %s", v14, v10);
  free(v11);
  result = __error();
  *result = v7;
  return result;
}

void __logfunctionv_block_invoke(id a1)
{
  if (getenv("__OSINSTALL_ENVIRONMENT"))
  {

    open("/dev/console", 131082);
  }
}

uint64_t msu_execute_command_with_callback(const char **a1, void (*a2)(int *))
{
  *v45 = 0;
  if (pipe(v45) != -1)
  {
    v4 = fork();
    if (v4 == -1)
    {
      v18 = *a1;
      v19 = __error();
      v20 = strerror(*v19);
      logfunction("", 1, @"fork %s failed: %s\n", v21, v22, v23, v24, v25, v18, v20);
      close(v45[0]);
LABEL_11:
      close(v45[1]);
      return 0xFFFFFFFFLL;
    }

    v5 = v4;
    if (!v4)
    {
      if (dup2(v45[1], 1) == -1)
      {
        goto LABEL_8;
      }

      if (dup2(v45[1], 2) == -1)
      {
        _exit(2);
      }

      close(v45[0]);
      if (execv(*a1, a1) == -1)
      {
        v6 = __stderrp;
        v7 = *a1;
        v8 = __error();
        v9 = strerror(*v8);
        fprintf(v6, "execv: %s: %s", v7, v9);
LABEL_8:
        _exit(1);
      }

      goto LABEL_11;
    }

    v28 = v45[0];
    close(v45[1]);
    if (v28 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    bzero(v45, 0x400uLL);
    v29 = read(v28, v45, 0x3FFuLL);
    if (v29 >= 1)
    {
      for (i = v29; i > 0; i = read(v28, v45, 0x3FFuLL))
      {
        *(v45 + i) = 0;
        a2(v45);
      }
    }

    v44 = 0;
    if (waitpid(v5, &v44, 0) != -1)
    {
      if ((v44 & 0x7F) == 0x7F)
      {
        logfunction("", 1, @"%s was stopped by signal %d\n", v31, v32, v33, v34, v35, *a1, (v44 >> 8));
      }

      else
      {
        if ((v44 & 0x7F) == 0)
        {
          v26 = BYTE1(v44);
LABEL_26:
          close(v28);
          return v26;
        }

        logfunction("", 1, @"%s was terminated by signal %d\n", v31, v32, v33, v34, v35, *a1, v44 & 0x7F);
      }

      v26 = 0xFFFFFFFFLL;
      goto LABEL_26;
    }

    v26 = *__error();
    v36 = *a1;
    v37 = __error();
    v38 = strerror(*v37);
    logfunction("", 1, @"waitpid failed for %s: %s\n", v39, v40, v41, v42, v43, v36, v38);
    goto LABEL_26;
  }

  v10 = *a1;
  v11 = __error();
  v12 = strerror(*v11);
  logfunction("", 1, @"pipe failed while preparing to execute %s: %s\n", v13, v14, v15, v16, v17, v10, v12);
  return 0xFFFFFFFFLL;
}

void _nerd_partition_logger(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSString alloc];
    v5 = [NSString stringWithUTF8String:a1];
    v6 = [v4 initWithFormat:v5 arguments:a2];

    v7 = [NSString stringWithFormat:@"NERD_PARTITION_LOGGER: %@\n", v6];
    memset(v12, 0, sizeof(v12));
    [v7 getCString:v12 maxLength:511 encoding:4];
    v8 = +[SUCoreLog sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }
}

void nerd_ramrod_msg_logger(uint64_t a1)
{
  v2 = +[SUCoreLog sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NERD_RAMROD_LOG: %{public}s\n", &v4, 0xCu);
  }
}

void sub_10000D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v54 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100017240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v30 - 176));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void __nerdGetSoftwareUpdateTypes_block_invoke(id a1)
{
  nerdGetSoftwareUpdateTypes_softwareUpdateAssetTypes = [[NSSet alloc] initWithArray:&off_1000A7E58];

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  if (main_nerdOnce != -1)
  {
    main_cold_1();
  }

  if (MGGetBoolAnswer())
  {
    v4 = [main_daemonLogger oslog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = @"com.apple.mobile.nerd";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting a debug XPC service listerner for service: %@", &v13, 0xCu);
    }

    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.nerd"];
    v6 = main_debugXPCListener;
    main_debugXPCListener = v5;

    v7 = [main_daemonLogger oslog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating debug XPC delegate", &v13, 2u);
    }

    v8 = [NerdDebugXPCListener alloc];
    v9 = [(NerdDebugXPCListener *)v8 initWithNerdController:main_controller];
    v10 = main_debugXPCListenerDelegate;
    main_debugXPCListenerDelegate = v9;

    [main_debugXPCListener setDelegate:main_debugXPCListenerDelegate];
    v11 = [main_daemonLogger oslog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resuming listener", &v13, 2u);
    }

    [main_debugXPCListener resume];
  }

  objc_autoreleasePoolPop(v3);
  NSLog(@"Calling CFRunLoopRun");
  CFRunLoopRun();
  return 0;
}

void __main_block_invoke(id a1)
{
  v1 = [[SUCoreLog alloc] initWithCategory:@"nerd"];
  v2 = main_daemonLogger;
  main_daemonLogger = v1;

  v3 = [main_daemonLogger oslog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NeRD is starting up", buf, 2u);
  }

  v4 = [[NerdController alloc] initController];
  v5 = main_controller;
  main_controller = v4;

  v6 = [main_daemonLogger oslog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Controller initialized", buf, 2u);
  }

  v7 = main_daemonLogger;
  v21 = main_controller;
  v20 = v7;
  v8 = dispatch_get_global_queue(21, 0);
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = setupSignalHandlers_signals[v9];
    v13 = dispatch_source_create(&_dispatch_source_type_signal, v12, 0, v8);
    *buf = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = __setupSignalHandlers_block_invoke;
    v26 = &unk_100099AD0;
    v14 = v20;
    v27 = v14;
    v29 = v12;
    v15 = v21;
    v28 = v15;
    dispatch_source_set_event_handler(v13, buf);
    dispatch_resume(v13);
    v16 = setupSignalHandlers_signalSources[v9];
    setupSignalHandlers_signalSources[v9] = v13;
    v17 = v13;

    signal(v12, 1);
    v10 = 0;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  v18 = [v14 oslog];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Signal handlers registered for SIGTERM and SIGINT", v22, 2u);
  }

  v19 = [main_controller nerdFSM];
  [v19 postEvent:kSU_E_ActivateLoadingPersisted];
}

void __setupSignalHandlers_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received signal %d, performing cleanup", v4, 8u);
  }

  [*(a1 + 40) performCleanupOnTermination];
  exit(*(a1 + 48));
}

void networkReachabilityCallBack(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = [v4 managerLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Reachable";
    if ((a2 & 2) == 0)
    {
      v7 = "Not Reachable";
    }

    v8 = 136446466;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network reachability changed: %{public}s Flags: 0X%x", &v8, 0x12u);
  }

  if ((a2 & 2) != 0)
  {
    [v4 setNetworkIsReachable:1];
    dispatch_semaphore_signal(networkAvailable);
  }
}

__CFString *wifiErrorString(uint64_t a1)
{
  if (a1 == -100)
  {
    v2 = @"Invalid credential";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  return v2;
}

void __scanUsingDeviceCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = [*(a4 + 24) managerLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scan callback invoked", v9, 2u);
  }

  *a4 = a3;
  if (a2)
  {
    [*(a4 + 8) addObjectsFromArray:a2];
  }

  CFRunLoopStop(*(a4 + 16));
}

void __joinUsingDeviceCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = [*(a5 + 24) managerLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "JoinUsingDeviceCallback invoked", v9, 2u);
  }

  *a5 = a4;
  CFRunLoopStop(*(a5 + 16));
}

void sub_10001AE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL ramrod_check_NVRAM_access()
{
  v0 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0);
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}

CFTypeRef ramrod_copy_NVRAM_variable_from_devicetree(CFStringRef theString)
{
  Copy = CFStringCreateCopy(0, theString);
  v2 = atomic_load(ramrod_NVRAM_service_shared_nvram);
  if (!v2)
  {
    v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (v2)
    {
      v5 = 0;
      atomic_compare_exchange_strong(ramrod_NVRAM_service_shared_nvram, &v5, v2);
      if (v5)
      {
        IOObjectRelease(v2);
        v2 = v5;
      }
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, Copy, 0, 0);
  CFRelease(Copy);
  return CFProperty;
}

uint64_t ramrod_load_tga(const char *a1, void *a2, unint64_t *a3, void *a4)
{
  memset(&v51, 0, sizeof(v51));
  v8 = open(a1, 0, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    if (fstat(v8, &v51))
    {
      v10 = __error();
      strerror(*v10);
      ramrod_log_msg("unable to stat image '%s': %s\n");
LABEL_4:
      v11 = 0;
LABEL_25:
      close(v9);
      return v11;
    }

    st_size = v51.st_size;
    v15 = mmap(0, v51.st_size, 1, 2, v9, 0);
    if (v15 == -1)
    {
      v21 = __error();
      strerror(*v21);
      ramrod_log_msg("unable to mmap image '%s': %s\n");
      goto LABEL_4;
    }

    v16 = v15;
    if (st_size >= 0x13 && v15[1] <= 1u && ((v17 = v15[2], v17 <= 0xB) ? (v18 = ((1 << v17) & 0xE0E) == 0) : (v18 = 1), !v18 && v15[7] <= 0x20u && (v15[12] || v15[13]) && (v15[14] || v15[15]) && (v19 = v15[16], (((v19 - 8) >> 3) | (32 * (v19 - 8))) <= 3u) && v15[17] < 0x40u))
    {
      if (!v15[1] && v17 >= 0xA)
      {
        v22 = *(v15 + 6);
        if (*(v15 + 6))
        {
          if (*(v15 + 7) && (v19 == 24 || v19 == 32))
          {
            v23 = 4 * v22;
            v24 = *(v15 + 7);
            v50 = v15[17];
            v49 = *v15;
            v25 = malloc((4 * v22) * v24);
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = v24 - 1;
            if (v50 >= 0x20)
            {
              v33 = 0;
            }

            v34 = &v25[v33 * v23];
            v35 = st_size - v49 - 18;
            v36 = &v16[v49 + 18];
            v37 = v22 - 1;
            while (1)
            {
              if (!v35)
              {
LABEL_69:
                if (v25)
                {
                  free(v25);
                }

                goto LABEL_23;
              }

              v39 = *v36++;
              v38 = v39;
              v40 = v39;
              --v35;
              v41 = v39 - 127;
              if (v39 >= 0)
              {
                v42 = v38 + 1;
              }

              else
              {
                v42 = v41;
              }

              if (v19 == 24)
              {
                if (v42)
                {
                  v46 = 0;
                  v47 = &v34[4 * v32 + 1];
                  do
                  {
                    if ((v40 & 0x80000000) == 0 || !v46)
                    {
                      v45 = v35 >= 3;
                      v35 -= 3;
                      if (!v45)
                      {
                        goto LABEL_69;
                      }

                      v28 = *v36;
                      v29 = v36[1];
                      v30 = v36[2];
                      v36 += 3;
                    }

                    *(v47 - 1) = v28;
                    *v47 = v29;
                    v47[1] = v30;
                    v47[2] = -1;
                    if (v37 == v32)
                    {
                      goto LABEL_64;
                    }

                    ++v46;
                    v47 += 4;
                    ++v32;
                  }

                  while (v42 > v46);
                }
              }

              else if (v42)
              {
                v43 = 0;
                v44 = &v34[4 * v32 + 1];
                while (1)
                {
                  if ((v40 & 0x80000000) == 0 || !v43)
                  {
                    v45 = v35 >= 4;
                    v35 -= 4;
                    if (!v45)
                    {
                      goto LABEL_69;
                    }

                    v27 = v36[3];
                    if (v27)
                    {
                      v28 = *v36;
                      v29 = v36[1];
                      v30 = v36[2];
                    }

                    else
                    {
                      v30 = 0;
                      v29 = 0;
                      v28 = 0;
                    }

                    v36 += 4;
                  }

                  *(v44 - 1) = v30;
                  *v44 = v29;
                  v44[1] = v28;
                  v44[2] = v27;
                  if (v37 == v32)
                  {
                    break;
                  }

                  ++v43;
                  v44 += 4;
                  ++v32;
                  if (v42 <= v43)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_64:
                v32 = 0;
                v48 = v24 - 2 + v26;
                if (v50 >= 0x20)
                {
                  v48 = v31 + 1;
                }

                ++v31;
                v34 = &v25[v48 * v23];
              }

LABEL_67:
              v26 = -v31;
              if (v31 >= v24)
              {
                *a2 = v22;
                *a3 = v24;
                v11 = 1;
                *a4 = v25;
                goto LABEL_24;
              }
            }
          }
        }
      }

      ramrod_log_msg("image '%s' is an unsupported TGA\n");
    }

    else
    {
      ramrod_log_msg("image '%s' is not a TGA\n");
    }

LABEL_23:
    v11 = 0;
LABEL_24:
    munmap(v16, st_size);
    goto LABEL_25;
  }

  v12 = __error();
  v13 = strerror(*v12);
  ramrod_log_msg("unable to open image '%s': %s\n", a1, v13);
  return 0;
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t ramrod_remove_log_fd_no_locking(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &log_fds;
  if (v2)
  {
    v3 = &log_fds_fileonly;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&log_fds_mutex);
  if (a1 && __PAIR128__(log_fds, log_fds_fileonly) != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (log_fds)
    {
      CFSetApplyFunction(log_fds, ramrod_log_to_fd_set_applier, &context);
    }

    ramrod_log_msg_to_all_fds_bytes_to_sync += a2;
    if (ramrod_log_msg_to_all_fds_bytes_to_sync)
    {
      LOBYTE(theArray[1]) = 1;
      ramrod_log_msg_to_all_fds_bytes_to_sync = 0;
    }

    if (log_fds_fileonly)
    {
      CFSetApplyFunction(log_fds_fileonly, ramrod_log_to_fd_set_applier, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            ramrod_remove_log_fd_no_locking(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&log_fds_mutex);
  return 0;
}

void ramrod_log_to_fd_set_applier(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

void do_syslog_ramrod_log_msg(uint64_t a1, const char *a2, va_list a3)
{
  v5 = a1;
  if (_log_syslog_flush_msgs == 1)
  {
    if (flush_syslog_msgs_once != -1)
    {
      do_syslog_ramrod_log_msg_cold_1();
    }

    if (flush_syslog_msgs_asl_db)
    {
      pthread_mutex_lock(&flush_syslog_msgs_syslog_mutex);
      last = 0;
      v6 = asl_match(flush_syslog_msgs_asl_db, 0, &last, flush_syslog_msgs__log_syslog_position, 0x100uLL, 0, 1);
      if (v6)
      {
        v7 = v6;
        do
        {
          flush_syslog_msgs__log_syslog_position = last + 1;
          while (1)
          {
            v8 = asl_next(v7);
            if (!v8)
            {
              break;
            }

            v9 = asl_format(v8, "std", "lcl", 1u);
            if (v9)
            {
              v10 = v9;
              call_ramrod_log_msg(v5, "SYSLOG: %s", v9);
              free(v10);
            }
          }

          asl_close(v7);
          v7 = asl_match(flush_syslog_msgs_asl_db, 0, &last, flush_syslog_msgs__log_syslog_position, 0x100uLL, 0, 1);
        }

        while (v7);
      }

      pthread_mutex_unlock(&flush_syslog_msgs_syslog_mutex);
    }
  }

  do_ramrod_log_msg(v5, a2, a3);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (v1)
  {
    v2 = v1;
    if (CFStringGetCStringPtr(v1, 0x8000100u))
    {
      ramrod_log_msg("%s");
    }

    else
    {
      Length = CFStringGetLength(v2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v5 = malloc(MaximumSizeForEncoding + 1);
      if (v5)
      {
        v6 = v5;
        if (CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          ramrod_log_msg("%s");
        }

        else
        {
          ramrod_log_msg("(Failed to alloc and convert log message)\n");
        }

        free(v6);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n");
      }
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("(Failed to format log message)\n");
  }
}

void do_ramrod_log_msg(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&log_mutex);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (_log_handler)
      {
        _log_handler(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((_log_buffermsgs & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = log_buffer;
    if (!log_buffer)
    {
      v5 = malloc(0x100000uLL);
      log_buffer = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&log_mutex);
        goto LABEL_24;
      }

      log_buffer_head = v5;
      log_buffer_tail = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = log_buffer_tail;
      v9 = log_buffer_head;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        log_buffer_tail = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          log_buffer_head = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

void __flush_syslog_msgs_block_invoke(id a1)
{
  v1 = asl_open_path(0, 0);
  if (v1)
  {
    asl_close(v1);
    v2 = "asl_open_path() succeeded - syslogd polling not needed";
  }

  else
  {
    v3 = asl_open(0, 0, 4u);
    if (v3)
    {
      flush_syslog_msgs_asl_db = v3;
      return;
    }

    v2 = "asl_open() returned NULL - disabling syslogd polling";
  }

  call_ramrod_log_msg(1, v2);
}

uint64_t ramrod_load_png(const char *a1, void *a2, unint64_t *a3, void *a4)
{
  memset(&v28, 0, sizeof(v28));
  v26 = 0;
  v27 = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v8 = open(a1, 0, 0);
  v9 = v8;
  if (v8 < 0)
  {
    v12 = __error();
    v13 = strerror(*v12);
    ramrod_log_msg("unable to open image '%s': %s\n", a1, v13);
    return 0;
  }

  if (fstat(v8, &v28))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_log_msg("unable to stat image '%s': %s\n");
LABEL_4:
    v11 = 0;
    goto LABEL_14;
  }

  st_size = v28.st_size;
  v15 = mmap(0, v28.st_size, 1, 2, v9, 0);
  if (v15 == -1)
  {
    v16 = __error();
    strerror(*v16);
    ramrod_log_msg("unable to mmap image '%s': %s\n");
    goto LABEL_4;
  }

  if (picoPNG::decodePNG(&__p, &v27, &v26, v15, st_size, 1))
  {
    ramrod_log_msg("unable to decode image '%s'\n", a1);
  }

  else
  {
    v17 = __p;
    v18 = v24 - __p;
    v19 = malloc(v24 - __p);
    if (v19)
    {
      v20 = v19;
      memcpy(v19, v17, v18);
      v21 = v26;
      *a2 = v27;
      *a3 = v21;
      *a4 = v20;
      v11 = 1;
      goto LABEL_13;
    }

    ramrod_log_msg("unable to malloc destination image buffer\n");
  }

  v11 = 0;
LABEL_13:
  munmap(v15, st_size);
LABEL_14:
  close(v9);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_10001F098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ramrod_create_error_internal_va(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

uint64_t picoPNG::decodePNG(uint64_t *a1, unint64_t *a2, unint64_t *a3, unsigned __int8 *a4, unint64_t a5, char a6)
{
  v6 = 0;
  *v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v7 = 48;
  if (!a4)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  if (!a5)
  {
LABEL_21:
    *a2 = v9;
    *a3 = v6;
    return v7;
  }

  if (a5 < 0x1D)
  {
    v6 = 0;
    v9 = 0;
    v7 = 27;
    goto LABEL_21;
  }

  if (*a4 != 137 || a4[1] != 80 || a4[2] != 78 || a4[3] != 71 || a4[4] != 13 || a4[5] != 10 || a4[6] != 26 || a4[7] != 10)
  {
    v6 = 0;
    v9 = 0;
    v7 = 28;
    goto LABEL_21;
  }

  if (a4[12] != 73 || a4[13] != 72 || a4[14] != 68 || a4[15] != 82)
  {
    v6 = 0;
    v9 = 0;
    v7 = 29;
    goto LABEL_21;
  }

  v10 = a2;
  v11 = a3;
  v9 = bswap32(*(a4 + 4));
  v6 = bswap32(*(a4 + 5));
  v103 = v9;
  v104 = v6;
  v12 = a4[24];
  v13 = a4[25];
  v105 = v13;
  v106 = v12;
  if (a4[26])
  {
    v7 = 32;
LABEL_28:
    a2 = v10;
    goto LABEL_21;
  }

  if (a4[27])
  {
    v7 = 33;
    goto LABEL_28;
  }

  v109 = a4[28];
  if (v109 > 1)
  {
    v7 = 34;
    goto LABEL_28;
  }

  v7 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::checkColorValidity(v13, v12);
  DWORD2(v113) = v7;
  a3 = v11;
  a2 = v10;
  if (v7)
  {
    goto LABEL_21;
  }

  v123 = 0;
  __dst = 0;
  v125 = 0;
  BYTE8(v111) = 0;
  if (a5 < 0x2A)
  {
LABEL_74:
    v37 = 30;
LABEL_129:
    DWORD2(v113) = v37;
    goto LABEL_130;
  }

  v17 = 33;
  v18 = 41;
  while (1)
  {
    v19 = &a4[v17];
    v20 = a4[v17] << 24;
    if (v20 < 0)
    {
      goto LABEL_128;
    }

    v21 = v19[3];
    v22 = v20 | (v19[1] << 16);
    v23 = (v22 | v21) & 0xFFFF00FF | (v19[2] << 8);
    v24 = v17 + 4 + v23;
    if (v24 >= a5)
    {
      v37 = 35;
      goto LABEL_129;
    }

    v25 = a4[v17 + 4];
    if (v25 != 116)
    {
      break;
    }

    if (v19[5] != 82 || v19[6] != 78 || v19[7] != 83)
    {
      goto LABEL_58;
    }

    if (v105)
    {
      if (v105 == 2)
      {
        if (v23 != 6)
        {
          v37 = 41;
          goto LABEL_129;
        }

        BYTE8(v111) = 1;
        v36 = __rev16(*(v19 + 5));
        *&v110 = v19[9] | (a4[v18] << 8);
        *(&v110 + 1) = v36;
        *&v111 = __rev16(*(v19 + 6));
        v18 = v17 + 14;
      }

      else
      {
        if (v105 != 3)
        {
          v37 = 42;
          goto LABEL_129;
        }

        if ((v112[1] - v112[0]) < (4 * v23))
        {
          v37 = 39;
          goto LABEL_129;
        }

        if (v23)
        {
          v30 = v22 | (v19[2] << 8) | v21;
          v31 = 3;
          v32 = v18;
          do
          {
            v18 = v32 + 1;
            *(v112[0] + v31) = a4[v32];
            v31 += 4;
            ++v32;
            --v30;
          }

          while (v30);
        }
      }
    }

    else
    {
      if (v23 != 2)
      {
        v37 = 40;
        goto LABEL_129;
      }

      BYTE8(v111) = 1;
      *(&v110 + 1) = v19[9] | (a4[v18] << 8);
      *&v111 = *(&v110 + 1);
      *&v110 = *(&v110 + 1);
      v18 = v17 + 10;
    }

LABEL_59:
    v17 = v18 + 4;
    v18 += 12;
    if (v18 >= a5)
    {
      goto LABEL_74;
    }
  }

  if (v25 == 80)
  {
    if (v19[5] != 76 || v19[6] != 84 || v19[7] != 69)
    {
      goto LABEL_81;
    }

    v27 = (2 * ((2863311531u * v23) >> 32)) & 0xFFFFFFFC;
    v29 = v112[0];
    v28 = v112[1];
    if (v27 <= v112[1] - v112[0])
    {
      if (v27 < v112[1] - v112[0])
      {
        v28 = v112[0] + v27;
        v112[1] = v112[0] + v27;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(v112, v27 - (v112[1] - v112[0]));
      v29 = v112[0];
      v28 = v112[1];
    }

    if ((v28 - v29) > 0x400)
    {
      v37 = 38;
      goto LABEL_129;
    }

    if (v28 != v29)
    {
      v33 = 0;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v35 = a4[v18++];
          *(v112[0] + v33 + i) = v35;
        }

        *(v112[0] + v33 + 3) = -1;
        v33 += 4;
      }

      while (v33 < v112[1] - v112[0]);
    }

    goto LABEL_59;
  }

  if (v25 != 73)
  {
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_81;
    }

LABEL_58:
    v18 = v24 + 4;
    goto LABEL_59;
  }

  v26 = v19[5];
  if (v26 == 68)
  {
    if (v19[6] != 65 || v19[7] != 84)
    {
      goto LABEL_81;
    }

    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v123, __dst, &a4[v18], &a4[v18 + v23], v23);
    goto LABEL_58;
  }

  if (v26 != 69 || v19[6] != 78 || v19[7] != 68)
  {
LABEL_81:
    v37 = 69;
    goto LABEL_129;
  }

  if (v105 == 2)
  {
    v38 = 3 * v106;
  }

  else if (v105 < 4)
  {
    v38 = v106;
  }

  else
  {
    v38 = v106 * (v105 - 2);
  }

  if (v38 < 8)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 >> 3;
  }

  if (!v104 || !v103 || (v103 | v104) >= 0x10000)
  {
LABEL_128:
    v37 = 63;
    goto LABEL_129;
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v120, (v39 + v39 * v104) * v103);
  v40 = v120;
  if (v104 + 1 == (v121 - v120) / (v103 * v39))
  {
    DWORD2(v113) = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::decompress(&v120, &v123);
    if (!DWORD2(v113))
    {
      v99 = (v103 * v38 + 7) >> 3;
      std::vector<unsigned char>::resize(a1, v99 * v104);
      if (v104 == (a1[1] - *a1) / v99)
      {
        v41 = (v38 + 7) >> 3;
        if (v99 * v104)
        {
          v42 = *a1;
        }

        else
        {
          v42 = 0;
        }

        if (v109)
        {
          v43 = 0;
          v44 = 0;
          v45 = v103;
          v132 = vshlq_u64(vdupq_n_s64(v103 + 3), xmmword_100081AF0);
          v133 = vshlq_u64(vdupq_n_s64(v103 + 1), xmmword_100081B00);
          v134 = v103 >> 1;
          v135 = v103;
          v127[0] = (v104 + 7) >> 3;
          v127[1] = v127[0];
          v128 = vshlq_u64(vdupq_n_s64(v104 + 3), xmmword_100081AF0);
          v129 = vshlq_u64(vdupq_n_s64(v104 + 1), xmmword_100081B00);
          v130 = v104 >> 1;
          v131 = ((v103 + 7) >> 3);
          memset(v126, 0, sizeof(v126));
          do
          {
            v46 = (&v131)[v43];
            v47 = v46 == 0;
            v48 = (v46 * v38 + 7) >> 3;
            if (!v47)
            {
              ++v48;
            }

            v44 += v48 * v127[v43];
            v126[++v43] = v44;
          }

          while (v43 != 6);
          v117 = 0;
          v118 = 0;
          v119 = 0;
          std::vector<unsigned char>::vector[abi:ne200100](&v117, (v45 * v38 + 7) >> 3);
          __p = 0;
          v115 = 0;
          v116 = 0;
          std::vector<unsigned char>::vector[abi:ne200100](&__p, (v103 * v38 + 7) >> 3);
          for (j = 0; j != 7; ++j)
          {
            v49 = (&v131)[j];
            if (v49)
            {
              v93 = v127[j];
              if (v93)
              {
                v50 = __p;
                v95 = v117;
                v96 = 0;
                v92 = v120 + v126[j];
                v51 = (&unk_100081F88 + 8 * j);
                v86 = v103 * v38;
                v87 = v51[21];
                v91 = (v103 * v38 + 7) >> 3;
                v97 = v51[14];
                v100 = *v51;
                v88 = v51[7];
                v94 = &v42[v41 * (*v51 + v88 * v103)];
                v90 = v41 * v87 * v103;
                do
                {
                  v52 = v50;
                  v53 = &v92[v96 * (((v49 * v38 + 7) >> 3) + 1)];
                  v56 = *v53;
                  v54 = v53 + 1;
                  v55 = v56;
                  if (v96)
                  {
                    v57 = v95;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::unFilterScanline(&v103, v50, v54, v57, (v38 + 7) >> 3, v55, v91);
                  if (DWORD2(v113))
                  {
                    break;
                  }

                  if (v38 <= 7)
                  {
                    for (k = 0; k != v49; ++k)
                    {
                      if (v38)
                      {
                        v66 = k * v38;
                        v67 = (v88 + v96 * v87) * v86 + (v100 + k * v97) * v38;
                        v68 = v38;
                        do
                        {
                          v69 = (v52[v66 >> 3] >> (~v66 & 7)) & 1;
                          ++v66;
                          v42[v67 >> 3] |= v69 << (~v67 & 7);
                          ++v67;
                          --v68;
                        }

                        while (v68);
                      }
                    }
                  }

                  else
                  {
                    v58 = 0;
                    v59 = v52;
                    v60 = v94;
                    do
                    {
                      v61 = v59;
                      v62 = v60;
                      v63 = (v38 + 7) >> 3;
                      if (v38 + 7 >= 8)
                      {
                        do
                        {
                          v64 = *v61++;
                          *v62++ = v64;
                          --v63;
                        }

                        while (v63);
                      }

                      ++v58;
                      v60 += v41 * v97;
                      v59 += v41;
                    }

                    while (v58 != v49);
                  }

                  v94 += v90;
                  v50 = v95;
                  v95 = v52;
                  ++v96;
                }

                while (v96 != v93);
              }
            }
          }

          if (__p)
          {
            v115 = __p;
            operator delete(__p);
          }

          if (v117)
          {
            v118 = v117;
            operator delete(v117);
          }

          goto LABEL_165;
        }

        v101 = (v103 * v38 + 7) >> 3;
        if (v38 < 8)
        {
          v131 = 0;
          v132 = 0uLL;
          std::vector<unsigned char>::vector[abi:ne200100](&v131, v101);
          v77 = 0;
          v78 = 0;
          v79 = 0;
          while (1)
          {
            v80 = v77 ? &v42[(v77 - 1) * v99] : 0;
            picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::unFilterScanline(&v103, v131, v120 + v78 + 1, v80, (v38 + 7) >> 3, *(v120 + v78), v101);
            v98 = DWORD2(v113) != 0;
            if (DWORD2(v113))
            {
              break;
            }

            if (v103 * v38)
            {
              v81 = 0;
              do
              {
                v82 = v79 + v81;
                v83 = ~(v79 + v81);
                v84 = (v131[v81 >> 3] >> (~v81 & 7)) & 1;
                ++v81;
                v42[v82 >> 3] |= v84 << (v83 & 7);
              }

              while (v81 < v103 * v38);
              v79 += v81;
            }

            v78 += v101 + 1;
            if (++v77 >= v104)
            {
              v85 = 0;
              goto LABEL_160;
            }
          }

          v85 = 1;
LABEL_160:
          if (v131)
          {
            v132.i64[0] = v131;
            operator delete(v131);
          }

          if (!v98)
          {
LABEL_163:
            v85 = 0;
          }

          if (!v85)
          {
LABEL_165:
            if ((a6 & 1) != 0 && (v105 != 6 || v106 != 8))
            {
              v131 = 0;
              v132 = 0uLL;
              std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v131, *a1, a1[1], a1[1] - *a1);
              DWORD2(v113) = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::convert(a1, v131, &v103, v103, v104);
              if (v131)
              {
                v132.i64[0] = v131;
                operator delete(v131);
              }
            }
          }
        }

        else
        {
          v72 = 0;
          v73 = 0;
          v74 = -v41;
          v75 = v42;
          while (1)
          {
            v76 = v73 ? &v42[v74 * v103] : 0;
            picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::unFilterScanline(&v103, v75, v120 + v72 + 1, v76, v41, *(v120 + v72), v101);
            if (DWORD2(v113))
            {
              break;
            }

            ++v73;
            v75 += v101;
            v74 += v41;
            v72 += v101 + 1;
            if (v73 >= v104)
            {
              goto LABEL_163;
            }
          }
        }
      }

      else
      {
        DWORD2(v113) = 63;
      }
    }

    v40 = v120;
  }

  else
  {
    DWORD2(v113) = 63;
  }

  if (v40)
  {
    v121 = v40;
    operator delete(v40);
  }

LABEL_130:
  if (v123)
  {
    __dst = v123;
    operator delete(v123);
  }

  v70 = v104;
  v7 = DWORD2(v113);
  v71 = v112[0];
  *v10 = v103;
  *v11 = v70;
  if (v71)
  {
    v112[1] = v71;
    operator delete(v71);
  }

  return v7;
}

void sub_10001FDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  v53 = *(v51 - 160);
  if (v53)
  {
    *(v51 - 152) = v53;
    operator delete(v53);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::resize(void *result, unint64_t a2)
{
  v2 = result[1] - *result;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + a2;
  }
}

uint64_t picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::decompress(uint64_t *a1, unsigned __int8 **a2)
{
  *v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  *v104 = 0u;
  *v102 = 0u;
  v2 = *a2;
  if ((a2[1] - *a2) < 2)
  {
    v3 = 53;
    goto LABEL_184;
  }

  v4 = *v2;
  v5 = v2[1];
  if ((31711 * (v5 | (v4 << 8))) > 0x842u)
  {
    v3 = 24;
    goto LABEL_184;
  }

  if ((v4 & 0xFFFFFF8F) != 8)
  {
    v3 = 25;
    goto LABEL_184;
  }

  if ((v5 & 0x20) != 0)
  {
    v3 = 26;
    goto LABEL_184;
  }

  v6 = a2;
  v8 = 0;
  v107 = 0;
  LODWORD(v102[0]) = 0;
  do
  {
    v3 = LODWORD(v102[0]);
    if (LODWORD(v102[0]))
    {
      goto LABEL_182;
    }

    v9 = v107;
    v10 = *v6;
    v11 = v6[1] - *v6;
    if (v107 >> 3 >= v11)
    {
      v3 = 52;
      goto LABEL_181;
    }

    v12 = (v10 + 2);
    v13 = v10[(v107 >> 3) + 2];
    v14 = (v10[((v107 + 1) >> 3) + 2] >> ((v107 + 1) & 7)) & 1;
    v15 = v10[((v107 + 2) >> 3) + 2] >> ((v107 + 2) & 7);
    v16 = v107 + 3;
    v107 += 3;
    v17 = v14 & 0xFFFFFFFD | (2 * (v15 & 1));
    v101 = v13;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v111 = 0;
        std::vector<unsigned long>::vector[abi:ne200100](&v114, 0x120uLL, &v111);
        v111 = 0;
        v112 = 0;
        v113 = 0;
        __p = 0;
        std::vector<unsigned long>::vector[abi:ne200100](&v111, 0x20uLL, &__p);
        if (v11 - 2 <= v16 >> 3)
        {
          LODWORD(v102[0]) = 49;
          goto LABEL_119;
        }

        v24 = 0;
        for (i = 3; i != 8; ++i)
        {
          v26 = v24;
          v27 = ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 3);
          v24 += v27;
        }

        v28 = 0;
        do
        {
          v28 += ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 8);
          ++i;
        }

        while (i != 13);
        v29 = 0;
        do
        {
          v29 += ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 13);
          ++i;
        }

        while (i != 17);
        __p = 0;
        v109 = 0;
        v110 = 0;
        std::vector<unsigned long>::vector[abi:ne200100](&__p, 0x13uLL);
        v30 = 0;
        v99 = v24 + 257;
        v31 = v9 + 17;
        v32 = __p;
        do
        {
          if (v30 >= v29 + 4)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            do
            {
              v34 += ((*(v12 + ((v31 + v33) >> 3)) >> ((v31 + v33) & 7)) & 1) << v33;
              ++v33;
            }

            while (v33 != 3);
            v31 += 3;
          }

          v32[picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::CLCL[v30++]] = v34;
        }

        while (v30 != 19);
        v107 = v31;
        LODWORD(v102[0]) = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::HuffmanTree::makeFromLengths(&v105[1], &__p, 7);
        if (!LODWORD(v102[0]))
        {
          v97 = v114;
          v98 = v24 + v28 + 258;
          if (v24 + v28 != -258)
          {
            v35 = 0;
            v36 = v26 + v27;
            v37 = v111;
            v38 = -8 * v36;
            do
            {
              v39 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::Inflator::huffmanDecodeSymbol(v102, v12, &v107, &v105[1], v11);
              if (LODWORD(v102[0]))
              {
                goto LABEL_116;
              }

              if (v39 > 0xF)
              {
                switch(v39)
                {
                  case 0x12uLL:
                    if (v11 <= v107 >> 3)
                    {
LABEL_112:
                      v70 = 50;
                      goto LABEL_115;
                    }

                    v60 = 0;
                    v61 = 0;
                    do
                    {
                      v61 += ((*(v12 + ((v107 + v60) >> 3)) >> ((v107 + v60) & 7)) & 1) << v60;
                      ++v60;
                    }

                    while (v60 != 7);
                    v107 += 7;
                    v62 = v61 + 11;
                    if (v61 != -11)
                    {
                      v63 = v98 - v35;
                      if (v98 < v35)
                      {
                        v63 = 0;
                      }

                      v64 = (v111 + v38 + 8 * v35 - 2056);
                      v65 = &v114[v35];
                      while (v63)
                      {
                        if (v35 >= v99)
                        {
                          v66 = v64;
                        }

                        else
                        {
                          v66 = v65;
                        }

                        *v66 = 0;
                        ++v35;
                        --v63;
                        ++v64;
                        ++v65;
                        if (!--v62)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 15;
                      goto LABEL_115;
                    }

                    break;
                  case 0x11uLL:
                    if (v11 <= v107 >> 3)
                    {
                      goto LABEL_112;
                    }

                    v53 = 0;
                    v54 = 0;
                    do
                    {
                      v54 += ((*(v12 + ((v107 + v53) >> 3)) >> ((v107 + v53) & 7)) & 1) << v53;
                      ++v53;
                    }

                    while (v53 != 3);
                    v107 += 3;
                    v55 = v54 + 3;
                    if (v54 != -3)
                    {
                      v56 = v98 - v35;
                      if (v98 < v35)
                      {
                        v56 = 0;
                      }

                      v57 = (v111 + v38 + 8 * v35 - 2056);
                      v58 = &v114[v35];
                      while (v56)
                      {
                        if (v35 >= v99)
                        {
                          v59 = v57;
                        }

                        else
                        {
                          v59 = v58;
                        }

                        *v59 = 0;
                        ++v35;
                        --v56;
                        ++v57;
                        ++v58;
                        if (!--v55)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 14;
                      goto LABEL_115;
                    }

                    break;
                  case 0x10uLL:
                    if (v11 <= v107 >> 3)
                    {
                      goto LABEL_112;
                    }

                    if (!v35)
                    {
                      v70 = 54;
                      goto LABEL_115;
                    }

                    v44 = 0;
                    v45 = 0;
                    do
                    {
                      v45 += ((*(v12 + ((v107 + v44) >> 3)) >> ((v107 + v44) & 7)) & 1) << v44;
                      ++v44;
                    }

                    while (v44 != 2);
                    v107 += 2;
                    if (v35 - 1 >= v99)
                    {
                      v46 = (v111 + 8 * (v35 - v24) - 2064);
                    }

                    else
                    {
                      v46 = &v114[v35 - 1];
                    }

                    v47 = v45 + 3;
                    if (v47)
                    {
                      v48 = *v46;
                      v49 = v98 - v35;
                      if (v98 < v35)
                      {
                        v49 = 0;
                      }

                      v50 = (v111 + v38 + 8 * v35 - 2056);
                      v51 = &v114[v35];
                      while (v49)
                      {
                        if (v35 >= v99)
                        {
                          v52 = v50;
                        }

                        else
                        {
                          v52 = v51;
                        }

                        *v52 = v48;
                        ++v35;
                        --v49;
                        ++v50;
                        ++v51;
                        if (!--v47)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 13;
                      goto LABEL_115;
                    }

                    break;
                  default:
                    v70 = 16;
                    goto LABEL_115;
                }
              }

              else
              {
                v40 = v35 >= v99;
                v41 = v35 - v99;
                v42 = &v97[v35++];
                v43 = (v37 + 8 * v41);
                if (!v40)
                {
                  v43 = v42;
                }

                *v43 = v39;
              }

LABEL_43:
              ;
            }

            while (v35 < v98);
          }

          if (!v97[256])
          {
            v70 = 64;
            goto LABEL_115;
          }

          LODWORD(v102[0]) = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::HuffmanTree::makeFromLengths(&v102[1], &v114, 15);
          if (!LODWORD(v102[0]))
          {
            v70 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::HuffmanTree::makeFromLengths(v104, &v111, 15);
LABEL_115:
            LODWORD(v102[0]) = v70;
          }
        }

LABEL_116:
        if (__p)
        {
          v109 = __p;
          operator delete(__p);
        }

        v6 = a2;
LABEL_119:
        if (v111)
        {
          v112 = v111;
          operator delete(v111);
        }

        if (v114)
        {
          v115 = v114;
          operator delete(v114);
        }

        if (LODWORD(v102[0]))
        {
          continue;
        }

        goto LABEL_124;
      }

      v3 = 20;
LABEL_181:
      LODWORD(v102[0]) = v3;
      goto LABEL_182;
    }

    if (!v17)
    {
      if ((v16 & 7) != 0)
      {
        v16 = v9 + (v16 & 7 ^ 7) + 4;
        v107 = v16;
      }

      v18 = v16 >> 3;
      if (v16 >> 3 >= v11 - 4)
      {
        v23 = 52;
      }

      else
      {
        v19 = v12 + v18;
        v20 = *(v12 + v18);
        if (*(v19 + 2) + v20 == 0xFFFF)
        {
          v21 = a1[1] - *a1;
          if (v20 + v8 > v21)
          {
            std::vector<unsigned char>::__append(a1, v20 + v8 - v21);
          }

          v22 = v20 + v18 + 4;
          if (v22 <= v11)
          {
            if (v20)
            {
              v68 = &v10[v18 + 6];
              do
              {
                v69 = *v68++;
                *(*a1 + v8++) = v69;
                --v20;
              }

              while (v20);
            }

            else
            {
              v22 = v18 + 4;
            }

            v107 = 8 * v22;
            continue;
          }

          v23 = 23;
        }

        else
        {
          v23 = 21;
        }
      }

      LODWORD(v102[0]) = v23;
      continue;
    }

    v114 = 0;
    v115 = 0;
    v116 = 0;
    v111 = 8;
    std::vector<unsigned long>::vector[abi:ne200100](&v114, 0x120uLL, &v111);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    __p = 5;
    std::vector<unsigned long>::vector[abi:ne200100](&v111, 0x20uLL, &__p);
    v67 = v114;
    memset_pattern16(v114 + 144, &unk_100081B20, 0x380uLL);
    memset_pattern16(v67 + 256, &unk_100081B30, 0xC0uLL);
    picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::HuffmanTree::makeFromLengths(&v102[1], &v114, 15);
    picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::HuffmanTree::makeFromLengths(v104, &v111, 15);
    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

LABEL_124:
    v71 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::Inflator::huffmanDecodeSymbol(v102, v12, &v107, &v102[1], v11);
    if (LODWORD(v102[0]))
    {
      continue;
    }

    v72 = v71;
    if (v71 == 256)
    {
      continue;
    }

    v73 = v8;
    while (1)
    {
      if (v72 <= 0xFF)
      {
        v74 = *a1;
        v75 = a1[1] - *a1;
        if (v73 >= v75)
        {
          v76 = 2 * v73 + 2;
          if (v76 <= v75)
          {
            if (v76 < v75)
            {
              a1[1] = v74 + v76;
            }
          }

          else
          {
            std::vector<unsigned char>::__append(a1, v76 - v75);
            v74 = *a1;
          }
        }

        v8 = v73 + 1;
        *(v74 + v73) = v72;
        goto LABEL_163;
      }

      if (v72 > 0x11D)
      {
        goto LABEL_162;
      }

      if (v11 <= v107 >> 3)
      {
        v94 = 51;
        goto LABEL_172;
      }

      v77 = 8 * v72 - 2056;
      if (v72 - 285 >= 0xFFFFFFFFFFFFFFECLL)
      {
        v79 = 0;
        v78 = 0;
        v80 = *(&picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::LENEXTRA + v77);
        do
        {
          v78 += ((*(v12 + ((v107 + v79) >> 3)) >> ((v107 + v79) & 7)) & 1) << v79;
          ++v79;
        }

        while (v80 != v79);
        v107 += v80;
      }

      else
      {
        v78 = 0;
      }

      v81 = *(&picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::LENBASE + v77);
      v82 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::Inflator::huffmanDecodeSymbol(v102, v12, &v107, v104, v11);
      if (LODWORD(v102[0]))
      {
        v8 = v73;
        v6 = a2;
        goto LABEL_173;
      }

      if (v82 > 0x1D)
      {
        v94 = 18;
        goto LABEL_171;
      }

      if (v11 <= v107 >> 3)
      {
        v94 = 51;
        goto LABEL_171;
      }

      if (v82 >= 4)
      {
        v84 = 0;
        v83 = 0;
        v85 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::DISTEXTRA[v82];
        do
        {
          v83 += ((*(v12 + ((v107 + v84) >> 3)) >> ((v107 + v84) & 7)) & 1) << v84;
          ++v84;
        }

        while (v85 != v84);
        v107 += v85;
      }

      else
      {
        v83 = 0;
      }

      v86 = v83 + picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::DISTBASE[v82];
      v87 = v73 - v86;
      if (v73 < v86)
      {
        break;
      }

      v88 = v78 + v81;
      v89 = a1[1] - *a1;
      v6 = a2;
      if (v88 + v73 >= v89)
      {
        v90 = 2 * (v88 + v73);
        if (v90 <= v89)
        {
          if (v90 < v89)
          {
            a1[1] = *a1 + v90;
          }
        }

        else
        {
          std::vector<unsigned char>::__append(a1, v90 - v89);
        }
      }

      if (v88)
      {
        v91 = v73;
        v92 = v87;
        do
        {
          v8 = v91 + 1;
          *(*a1 + v91) = *(*a1 + v92);
          if (v92 + 1 < v73)
          {
            ++v92;
          }

          else
          {
            v92 = v87;
          }

          ++v91;
          --v88;
        }

        while (v88);
        goto LABEL_163;
      }

LABEL_162:
      v8 = v73;
LABEL_163:
      v93 = picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::Inflator::huffmanDecodeSymbol(v102, v12, &v107, &v102[1], v11);
      if (!LODWORD(v102[0]))
      {
        v72 = v93;
        v73 = v8;
        if (v93 != 256)
        {
          continue;
        }
      }

      goto LABEL_173;
    }

    v94 = 52;
LABEL_171:
    v6 = a2;
LABEL_172:
    LODWORD(v102[0]) = v94;
    v8 = v73;
LABEL_173:
    ;
  }

  while (((v101 >> (v9 & 7)) & 1) == 0);
  v3 = LODWORD(v102[0]);
  if (!LODWORD(v102[0]))
  {
    v95 = a1[1] - *a1;
    if (v8 <= v95)
    {
      v3 = 0;
      if (v8 < v95)
      {
        a1[1] = *a1 + v8;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a1, v8 - v95);
      v3 = LODWORD(v102[0]);
    }
  }

LABEL_182:
  if (v105[1])
  {
    *&v106 = v105[1];
    operator delete(v105[1]);
  }

LABEL_184:
  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v102[1])
  {
    *&v103 = v102[1];
    operator delete(v102[1]);
  }

  return v3;
}

uint64_t picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::unFilterScanline(uint64_t result, _BYTE *a2, char *a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a6 <= 1)
  {
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_47;
      }

      if (a5)
      {
        v24 = a3;
        v25 = a2;
        v26 = a5;
        do
        {
          v27 = *v24++;
          *v25++ = v27;
          --v26;
        }

        while (v26);
      }

      v28 = a7 - a5;
      if (a7 > a5)
      {
        do
        {
          a2[a5] = *a2 + a3[a5];
          ++a2;
          ++a3;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      for (; a7; --a7)
      {
        v40 = *a3++;
        *a2++ = v40;
      }
    }
  }

  else
  {
    switch(a6)
    {
      case 2:
        if (a4)
        {
          for (; a7; --a7)
          {
            v30 = *a3++;
            v29 = v30;
            v31 = *a4++;
            *a2++ = v31 + v29;
          }
        }

        else
        {
          for (; a7; --a7)
          {
            v41 = *a3++;
            *a2++ = v41;
          }
        }

        break;
      case 3:
        if (a4)
        {
          if (a5)
          {
            v32 = a3;
            v33 = a4;
            v34 = a2;
            v35 = a5;
            do
            {
              v37 = *v32++;
              v36 = v37;
              v38 = *v33++;
              *v34++ = v36 + (v38 >> 1);
              --v35;
            }

            while (v35);
          }

          v39 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = a3[a5] + ((a4[a5] + *a2) >> 1);
              ++a2;
              ++a4;
              ++a3;
              --v39;
            }

            while (v39);
          }
        }

        else
        {
          if (a5)
          {
            v42 = a3;
            v43 = a2;
            v44 = a5;
            do
            {
              v45 = *v42++;
              *v43++ = v45;
              --v44;
            }

            while (v44);
          }

          v46 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = a3[a5] + (*a2 >> 1);
              ++a2;
              ++a3;
              --v46;
            }

            while (v46);
          }
        }

        break;
      case 4:
        if (a4)
        {
          if (a5)
          {
            v7 = a3;
            v8 = a4;
            v9 = a2;
            v10 = a5;
            do
            {
              v12 = *v7++;
              v11 = v12;
              v13 = *v8++;
              *v9++ = v13 + v11;
              --v10;
            }

            while (v10);
          }

          v14 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              v15 = *a2;
              v16 = a4[a5];
              v18 = *a4++;
              v17 = v18;
              v19 = v16 + v15 - v18;
              v20 = v16 - v18;
              if (v16 - v18 < 0)
              {
                v20 = -v20;
              }

              v21 = v19 - v16;
              if (v19 - v16 < 0)
              {
                v21 = v16 - v19;
              }

              v22 = v19 - v17;
              if (v22 < 0)
              {
                v22 = -v22;
              }

              if (v21 > v22)
              {
                LOBYTE(v16) = v17;
              }

              if (v20 > v22 || v20 > v21)
              {
                LOBYTE(v15) = v16;
              }

              a2[a5] = v15 + a3[a5];
              ++a2;
              ++a3;
              --v14;
            }

            while (v14);
          }
        }

        else
        {
          if (a5)
          {
            v47 = a3;
            v48 = a2;
            v49 = a5;
            do
            {
              v50 = *v47++;
              *v48++ = v50;
              --v49;
            }

            while (v49);
          }

          v51 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = *a2 + a3[a5];
              ++a2;
              ++a3;
              --v51;
            }

            while (v51);
          }
        }

        return result;
      default:
LABEL_47:
        *(result + 112) = 36;
        return result;
    }
  }

  return result;
}

uint64_t picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::convert(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 * a4;
  v9 = 4 * a5 * a4;
  v10 = *a1;
  v11 = a1[1];
  v12 = &v11[-*a1];
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      v11 = &v10[v9];
      a1[1] = &v10[v9];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, v9 - v12);
    v10 = *a1;
    v11 = a1[1];
  }

  if (v10 == v11)
  {
    v10 = 0;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  if (v14 == 8 && v13 == 0)
  {
    if (v8)
    {
      v22 = v10 + 3;
      do
      {
        v23 = *a2;
        *(v22 - 1) = *a2;
        *(v22 - 2) = v23;
        *(v22 - 3) = v23;
        if (*(a3 + 80) == 1)
        {
          if (*(a3 + 56) == *a2)
          {
            v24 = 0;
          }

          else
          {
            v24 = -1;
          }
        }

        else
        {
          v24 = -1;
        }

        *v22 = v24;
        v22 += 4;
        ++a2;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 2)
  {
    if (v8)
    {
      v16 = 0;
      v17 = a2;
      v18 = v10;
      do
      {
        v19 = 0;
        v20 = &a2[3 * v16];
        do
        {
          v18[v19] = v17[v19];
          ++v19;
        }

        while (v19 != 3);
        if ((*(a3 + 80) & 1) != 0 && *(a3 + 56) == *v20 && *(a3 + 64) == v20[1])
        {
          if (*(a3 + 72) == v20[2])
          {
            v21 = 0;
          }

          else
          {
            v21 = -1;
          }
        }

        else
        {
          v21 = -1;
        }

        v10[4 * v16++ + 3] = v21;
        v18 += 4;
        v17 += 3;
      }

      while (v16 != v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 3)
  {
    if (v8)
    {
      v26 = 0;
      while (*(a3 + 96) - *(a3 + 88) > 4 * a2[v26])
      {
        for (i = 0; i != 4; ++i)
        {
          v10[i] = *(*(a3 + 88) + 4 * a2[v26] + i);
        }

        ++v26;
        v10 += 4;
        if (v26 == v8)
        {
          return 0;
        }
      }

      return 46;
    }

    return 0;
  }

  if (v14 == 8 && v13 == 4)
  {
    if (v8)
    {
      v28 = a2 + 1;
      v29 = v10 + 3;
      do
      {
        v30 = *(v28 - 1);
        *(v29 - 1) = v30;
        *(v29 - 2) = v30;
        *(v29 - 3) = v30;
        v31 = *v28;
        v28 += 2;
        *v29 = v31;
        v29 += 4;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 6)
  {
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        for (k = 0; k != 4; ++k)
        {
          v10[k] = a2[k];
        }

        result = 0;
        v10 += 4;
        a2 += 4;
      }

      return result;
    }

    return 0;
  }

  if (v14 == 16 && !v13)
  {
    if (v8)
    {
      v34 = v10 + 3;
      v35 = a2 + 1;
      do
      {
        v36 = *a2;
        a2 += 2;
        *(v34 - 1) = v36;
        *(v34 - 2) = v36;
        *(v34 - 3) = v36;
        if (*(a3 + 80) == 1)
        {
          if (__rev16(*(v35 - 1)) == *(a3 + 56))
          {
            v37 = 0;
          }

          else
          {
            v37 = -1;
          }
        }

        else
        {
          v37 = -1;
        }

        result = 0;
        *v34 = v37;
        v34 += 4;
        ++v35;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 2)
  {
    if (v8)
    {
      v38 = v10 + 3;
      v39 = a2 + 2;
      do
      {
        *(v38 - 3) = *(v39 - 2);
        *(v38 - 2) = *v39;
        v40 = v39[2];
        *(v38 - 1) = v40;
        if (*(a3 + 80) == 1 && __rev16(*(v39 - 1)) == *(a3 + 56) && __rev16(*v39) == *(a3 + 64))
        {
          if ((v39[3] | (v40 << 8)) == *(a3 + 72))
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }
        }

        else
        {
          v41 = -1;
        }

        result = 0;
        *v38 = v41;
        v38 += 4;
        v39 += 6;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 4)
  {
    if (v8)
    {
      v42 = v10 + 3;
      v43 = a2 + 2;
      result = 0;
      do
      {
        v44 = *(v43 - 2);
        *(v42 - 1) = v44;
        *(v42 - 2) = v44;
        *(v42 - 3) = v44;
        v45 = *v43;
        v43 += 4;
        *v42 = v45;
        v42 += 4;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 6)
  {
    if (v8)
    {
      for (m = 0; m != v8; ++m)
      {
        v47 = 0;
        v48 = a2;
        do
        {
          v49 = *v48;
          v48 += 2;
          v10[v47++] = v49;
        }

        while (v47 != 4);
        result = 0;
        v10 += 4;
        a2 += 8;
      }

      return result;
    }

    return 0;
  }

  if (v14 <= 7 && !v13)
  {
    if (v8)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = *(a3 + 24);
        if (v52)
        {
          v53 = 0;
          v54 = v52 - 1;
          do
          {
            v55 = (a2[v51 >> 3] >> (~v51 & 7)) & 1;
            ++v51;
            v53 += v55 << v54--;
          }

          while (v54 < v52);
          v56 = 255 * v53;
        }

        else
        {
          v56 = 0;
        }

        v57 = ~(-1 << v52);
        v58 = &v10[4 * v50];
        v58[2] = v56 / v57;
        v58[1] = v56 / v57;
        *v58 = v56 / v57;
        v59 = -1;
        if (*(a3 + 80) == 1 && v56 >= v57)
        {
          v60 = *(a3 + 24);
          v61 = ~(-1 << v60);
          v59 = v60 ? 0 : -1;
          if (*(a3 + 56) != v61)
          {
            v59 = -1;
          }
        }

        result = 0;
        v10[4 * v50++ + 3] = v59;
      }

      while (v50 != v8);
      return result;
    }

    return 0;
  }

  result = 0;
  if (v14 <= 7 && v13 == 3 && v8)
  {
    v62 = 0;
    v63 = 0;
    while (1)
    {
      v64 = *(a3 + 24);
      if (v64)
      {
        v65 = 0;
        v66 = v64 - 1;
        do
        {
          v67 = (a2[v63 >> 3] >> (~v63 & 7)) & 1;
          ++v63;
          v65 += v67 << v66--;
        }

        while (v66 < v64);
        v64 = 4 * v65;
      }

      if (v64 >= *(a3 + 96) - *(a3 + 88))
      {
        break;
      }

      v68 = 4;
      v69 = v10;
      do
      {
        *v69++ = *(*(a3 + 88) + v64++);
        --v68;
      }

      while (v68);
      result = 0;
      ++v62;
      v10 += 4;
      if (v62 == v8)
      {
        return result;
      }
    }

    return 47;
  }

  return result;
}

uint64_t picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::PNG::checkColorValidity(uint64_t a1, unint64_t a2)
{
  result = 31;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (((1 << a2) & 0x10116) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = 37;
    }

    if (a2 <= 0x10)
    {
      return v4;
    }

    else
    {
      return 37;
    }
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 != 6 && a1 != 4)
      {
        return result;
      }

LABEL_8:
      if (((a2 - 8) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        return 37;
      }

      else
      {
        return 0;
      }
    }

    if (a2 - 1 > 7)
    {
      return 37;
    }

    else
    {
      return dword_100082068[a2 - 1];
    }
  }
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v17 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v22 = &__dst[a5];
      v23 = (v10 - a5);
      v24 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v25 = *v23++;
          *v24++ = v25;
        }

        while (v23 != v10);
      }

      *(a1 + 8) = v24;
      if (v10 != v22)
      {
        memmove(&__dst[a5], __dst, v10 - v22);
      }

      v26 = v5;
      v27 = __src;
      v28 = a5;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = (&a4[__dst] - __src);
        v20 = *(a1 + 8);
        do
        {
          v21 = *v18++;
          *v20++ = v21;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v29 = &__dst[a5];
      v30 = &v19[-a5];
      v31 = v19;
      if (&v19[-a5] < v10)
      {
        do
        {
          v32 = *v30++;
          *v31++ = v32;
        }

        while (v30 != v10);
      }

      *(a1 + 8) = v31;
      if (v20 != v29)
      {
        memmove(&__dst[a5], __dst, v19 - v29);
      }

      v26 = v5;
      v27 = __src;
      v28 = v10 - v5;
    }

    memmove(v26, v27, v28);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  memcpy(&v13[v16], __src, a5);
  memcpy(&v13[v16 + a5], v5, v10 - v5);
  *(a1 + 8) = v5;
  memcpy(v16, v11, v5 - v11);
  *a1 = v16;
  *(a1 + 8) = &v13[v16 + a5 + v10 - v5];
  *(a1 + 16) = v16 + v15;
  if (v11)
  {
    operator delete(v11);
  }

  return &v13[v16];
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = v4 + a2;
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_100021688(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void *picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::Inflator::~Inflator(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

unint64_t picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::Inflator::huffmanDecodeSymbol(int *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = *a4;
  v8 = ((a4[1] - *a4) >> 3) >> 1;
  while (1)
  {
    v9 = v6 >> 3;
    if ((v6 & 7) == 0 && v9 >= a5)
    {
      v12 = 10;
      goto LABEL_9;
    }

    v10 = *(a2 + v9);
    *a3 = v6 + 1;
    if (v5 >= v8)
    {
      break;
    }

    v11 = *(v7 + 16 * v5 + 8 * ((v10 >> (v6 & 7)) & 1));
    *a1 = 0;
    ++v6;
    v5 = v11 - v8;
    if (v11 < v8)
    {
      return v11;
    }
  }

  v12 = 11;
LABEL_9:
  v11 = 0;
  *a1 = v12;
  return v11;
}

uint64_t picoPNG::decodePNG(std::vector<unsigned char> &,unsigned long &,unsigned long &,unsigned char const*,unsigned long,BOOL)::Zlib::HuffmanTree::makeFromLengths(void *a1, uint64_t **a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 - *a2;
  v9 = v8 >> 3;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v46, v8 >> 3);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v43, a3 + 1, &__p);
  __p = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, a3 + 1, &v39);
  if (v6 != v7)
  {
    v10 = *a2;
    v11 = v43;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8 >> 3;
    }

    do
    {
      v13 = *v10++;
      ++v11[v13];
      --v12;
    }

    while (v12);
  }

  if (a3)
  {
    v14 = v43;
    v15 = (__p + 8);
    v16 = *__p;
    do
    {
      v17 = *v14++;
      v16 = 2 * (v17 + v16);
      *v15++ = v16;
      --a3;
    }

    while (a3);
  }

  if (v6 != v7)
  {
    v18 = *a2;
    v19 = __p;
    v20 = v46;
    if (v9 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v8 >> 3;
    }

    do
    {
      v23 = *v18++;
      v22 = v23;
      if (v23)
      {
        v24 = v19[v22];
        v19[v22] = v24 + 1;
        *v20 = v24;
      }

      ++v20;
      --v21;
    }

    while (v21);
  }

  a1[1] = *a1;
  v39 = 0x7FFFLL;
  std::vector<unsigned long>::resize(a1, v8 >> 2, &v39);
  if (v6 == v7)
  {
LABEL_31:
    v37 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = *a2;
    if (v9 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v8 >> 3;
    }

    v30 = 1;
    while (1)
    {
      v31 = v28[v25];
      if (v31)
      {
        break;
      }

LABEL_30:
      v30 = ++v25 < v9;
      if (v25 == v29)
      {
        goto LABEL_31;
      }
    }

    v32 = 0;
    v33 = v46;
    while (v27 <= v9 - 2)
    {
      v34 = (v33[v25] >> (v31 + ~v32)) & 1 | (2 * v27);
      v35 = *a1;
      v36 = *(*a1 + 8 * v34);
      if (v36 == 0x7FFF)
      {
        if (++v32 == v31)
        {
          v27 = 0;
          *(v35 + 8 * v34) = v25;
        }

        else
        {
          v27 = v26 + 1;
          *(v35 + 8 * v34) = ++v26 + v9;
        }
      }

      else
      {
        v27 = v36 - v9;
        ++v32;
      }

      v31 = v28[v25];
      if (v32 >= v31)
      {
        goto LABEL_30;
      }
    }

    if (v30)
    {
      v37 = 55;
    }

    else
    {
      v37 = 0;
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v37;
}

void sub_100021A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_100081B10)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_100021B24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v3, a3);
  }
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = v4 + 8 * a2;
  }

  return a1;
}

void sub_100021C40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v14 = 0;
      v15 = v7 + 8 * a2;
      v16 = *a3;
      v17 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v18 = vdupq_n_s64(v17);
      v19 = (v7 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_100081B10)));
        if (v20.i8[0])
        {
          *(v19 - 1) = v16;
        }

        if (v20.i8[4])
        {
          *v19 = v16;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v14);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 3;
    v11 = v6 - *a1;
    if (v11 >> 2 > v9)
    {
      v9 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0;
    v22 = &v13[8 * v10];
    v23 = &v22[8 * a2];
    v24 = *a3;
    v25 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v26 = v25 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = v22 + 8;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v21), xmmword_100081B10)));
      if (v29.i8[0])
      {
        *(v28 - 1) = v24;
      }

      if (v29.i8[4])
      {
        *v28 = v24;
      }

      v21 += 2;
      v28 += 2;
    }

    while (v26 != v21);
    v30 = &v13[8 * v12];
    v31 = *(a1 + 8) - *a1;
    v32 = &v22[-v31];
    memcpy(&v22[-v31], *a1, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 8) = v23;
    *(a1 + 16) = v30;
    if (v33)
    {

      operator delete(v33);
    }
  }
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_100021E8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

uint64_t wait_for_io_service_matching_resource_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOResources");
  if (!v4)
  {
    ramrod_log_msg("unable to create matching dictionary for resource '%s'\n");
    return 0;
  }

  v5 = v4;
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
  if (!v6)
  {
    ramrod_log_msg("unable to convert resource name to CFString\n");
    return 0;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IOResourceMatch", v6);
  CFRelease(v7);

  return wait_for_io_service_matching_dict(v5, a2);
}

__CFDictionary *create_embedded_storage_service_query_dict(char *cStr)
{
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionaryAddValue(Mutable, v2, kCFBooleanTrue);
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (v5)
    {
      CFDictionaryAddValue(v5, @"IOPropertyMatch", v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
    v4 = v2;
  }

  CFRelease(v4);
  return v6;
}

uint64_t load_animation_images(char *cStr)
{
  v1 = cStr;
  v2 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  Mutable = animation_images_cache;
  if (!animation_images_cache)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    animation_images_cache = Mutable;
  }

  bzero(v53, 0x400uLL);
  Value = CFDictionaryGetValue(Mutable, v2);
  if (Value)
  {
    v5 = Value;
    v6 = CFDictionaryGetValue(Value, @"count");
    CFNumberGetValue(v6, kCFNumberIntType, &animation_actual_images_amount);
    v7 = CFDictionaryGetValue(v5, @"animation_images");
    animation_images = CFDataGetBytePtr(v7);
    ramrod_log_msg("%s() -> animation for %s loaded from cache.\n");
LABEL_33:
    v48 = 1;
    goto LABEL_34;
  }

  v51 = v2;
  p_info = &OBJC_METACLASS___MRUPersonalizationInfo.info;
  animation_images = malloc(0x2580uLL);
  bzero(animation_images, 0x2580uLL);
  v9 = &OBJC_METACLASS___MRUPersonalizationInfo.info;
  animation_actual_images_amount = 0;
  animation_curr_index = 0;
  v10 = 1;
  v11 = "%s_%d";
  v12 = &OBJC_METACLASS___MRUPersonalizationInfo.info;
  while (1)
  {
    bzero(v52, 0x400uLL);
    __sprintf_chk(v52, 0, 0x400uLL, v11, v1, v10);
    if (!find_image_for_device(v52, v53))
    {
      break;
    }

    v13 = v10 - 1;
    if (!load_image(v53, p_info[500] + 6 * v10 - 6))
    {
      ramrod_log_msg("%s() -> unable to load image #%d named %s\n", "load_animation_images", v10, v53);
      v41 = 0;
      goto LABEL_29;
    }

    ++*(v9 + 998);
    v14 = p_info[500];
    apply_alpha_to_image(v14 + 48 * v13, *(v12 + 4012));
    if (v10 >= 2)
    {
      v15 = v9;
      v16 = v1;
      v17 = p_info;
      v18 = v11;
      v19 = *&v14->ivar_base_size * *&v14->flags;
      if (v19)
      {
        v20 = 0;
        v21 = 0;
        v22 = &v14->flags + 12 * v10;
        v23 = &v14->flags + 12 * v13;
        v26 = *(v23 + 3);
        v25 = (v23 + 6);
        v24 = v26;
        v29 = *(v22 - 9);
        v28 = v22 - 18;
        v27 = v29;
        v30 = 1;
        do
        {
          if (*(v24 + 4 * v20) != *(v27 + 4 * v20))
          {
            ++v21;
          }

          v20 = v30;
        }

        while (v19 > v30++);
        if (v21)
        {
          v32 = malloc(8 * v21);
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = *v25;
          v37 = *v28;
          do
          {
            if (*(v36 + 4 * v33) != *(v37 + 4 * v33))
            {
              v38 = &v32[8 * v35];
              *v38 = v34;
              *(v38 + 1) = *(v36 + 4 * v33);
              ++v35;
            }

            v33 = ++v34;
          }

          while (v19 > v34);
          v39 = &v14->flags + 12 * v13;
          *(v39 + 4) = v32;
          *(v39 + 5) = v35;
        }
      }

      v11 = v18;
      p_info = v17;
      v1 = v16;
      v9 = v15;
      v12 = (&OBJC_METACLASS___MRUPersonalizationInfo + 32);
      if (v10 != 2)
      {
        v40 = &v14->flags + 12 * v10;
        free(*(v40 - 10));
        *(v40 - 10) = 0;
        free(*(v40 - 9));
        *(v40 - 9) = 0;
      }
    }

    if (++v10 == 201)
    {
      goto LABEL_28;
    }
  }

  if (v10 == 1)
  {
    ramrod_log_msg("%s() -> Only 1 image named '%s' found for animation. This is not animation. \n", "load_animation_images", v1);
    v41 = 0;
    *(v9 + 998) = 0;
    goto LABEL_29;
  }

  ramrod_log_msg("%s() -> %d images named '%s' found for animation.\n", "load_animation_images", *(v9 + 998), v1);
LABEL_28:
  v41 = 1;
LABEL_29:
  v2 = v51;
  v42 = *(v9 + 998);
  if (v42 >= 2)
  {
    v43 = p_info[500];
    free(*(v43 + 6 * v42 - 4));
    v44 = v43 + 48 * *(v9 + 998);
    *(v44 - 4) = 0;
    free(*(v44 - 3));
    *(v43 + 6 * *(v9 + 998) - 3) = 0;
  }

  if (v41)
  {
    v45 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &animation_actual_images_amount);
    v46 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, p_info[500], 9600, kCFAllocatorNull);
    v47 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(v47, @"count", v45);
    CFDictionaryAddValue(v47, @"animation_images", v46);
    CFDictionaryAddValue(animation_images_cache, v51, v47);
    CFRelease(v45);
    CFRelease(v46);
    CFRelease(v47);
    ramrod_log_msg("%s() -> animation for %s saved to cache.\n");
    goto LABEL_33;
  }

  v50 = p_info[500];
  if (v50)
  {
    free(v50);
    v48 = 0;
    p_info[500] = 0;
  }

  else
  {
    v48 = 0;
  }

LABEL_34:
  if (v2)
  {
    CFRelease(v2);
  }

  return v48;
}

BOOL find_image_for_device(const char *a1, char *a2)
{
  memset(v6, 0, sizeof(v6));
  v4 = MGGetSInt32Answer() - 1;
  if (v4 >= 9 || ((0x12Fu >> v4) & 1) == 0)
  {
    LOBYTE(v6[0]) = 0;
    byte_1000B500C = 0;
    goto LABEL_10;
  }

  __strlcpy_chk();
  byte_1000B500C = 0;
  if (!LOBYTE(v6[0]))
  {
    goto LABEL_10;
  }

  ramrod_log_msg("Using product_suffix of %s\n", v6);
  if (!MGGetBoolAnswer() || (snprintf(a2, 0x400uLL, "%s/%s@%zu~%s-USBc.tga", "/usr/share/images-RecoveryOS", a1, *(&xmmword_1000B4FF0 + 1), v6), access(a2, 0)))
  {
    snprintf(a2, 0x400uLL, "%s/%s@%zu~%s.tga", "/usr/share/images-RecoveryOS", a1, *(&xmmword_1000B4FF0 + 1), v6);
    if (!access(a2, 0))
    {
      return 1;
    }

    snprintf(a2, 0x400uLL, "%s/%s@%dx~%s.tga", "/usr/share/images-RecoveryOS", a1, dword_1000B5004, v6);
    if (!access(a2, 0))
    {
      return 1;
    }

LABEL_10:
    snprintf(a2, 0x400uLL, "%s/%s@%zu.tga", "/usr/share/images-RecoveryOS", a1, *(&xmmword_1000B4FF0 + 1));
    if (access(a2, 0))
    {
      snprintf(a2, 0x400uLL, "%s/%s@%dx.tga", "/usr/share/images-RecoveryOS", a1, dword_1000B5004);
      if (access(a2, 0))
      {
        if (!LOBYTE(v6[0]) || (snprintf(a2, 0x400uLL, "%s/%s~%s.tga", "/usr/share/images-RecoveryOS", a1, v6), access(a2, 0)))
        {
          snprintf(a2, 0x400uLL, "%s/%s.tga", "/usr/share/images-RecoveryOS", a1);
          if (access(a2, 0))
          {
            snprintf(a2, 0x400uLL, "%s/%s.png", "/usr/share/images-RecoveryOS", a1);
            return access(a2, 0) == 0;
          }
        }
      }
    }

    return 1;
  }

  result = 1;
  byte_1000B500C = 1;
  return result;
}

uint64_t load_image(const char *a1, void *a2)
{
  v4 = strlen(a1);
  if (v4 < 4 || strcasecmp(&a1[v4 - 4], ".png"))
  {
    if ((ramrod_load_tga(a1, a2, a2 + 1, a2 + 2) & 1) == 0)
    {
      return 0;
    }

LABEL_4:
    v5 = dword_1000B5000;
    if (dword_1000B5000 > 179)
    {
      if (dword_1000B5000 != 180 && dword_1000B5000 != 270)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!dword_1000B5000)
      {
LABEL_34:
        v30 = 4 * *a2 * a2[1];
        v31 = malloc(v30);
        a2[3] = v31;
        if (v31)
        {
          memcpy(v31, a2[2], v30);
          return 1;
        }

        ramrod_log_msg("load_image() -> Failed to allocate memory fot originalData from data\n");
        return 0;
      }

      if (dword_1000B5000 != 90)
      {
LABEL_20:
        ramrod_log_msg("%s -> Unsupported display rotation. Defaulting to 0", "load_image");
        goto LABEL_34;
      }
    }

    v7 = a2[1];
    v6 = a2[2];
    v8 = *a2;
    v9 = malloc(4 * *a2 * v7);
    v10 = v9;
    if (v5 == 90)
    {
      if (v7)
      {
        v24 = 0;
        v25 = &v9[4 * v7 - 4];
        v26 = v6;
        do
        {
          v27 = v25;
          for (i = v8; i; --i)
          {
            v29 = *v26++;
            *v27 = v29;
            v27 += v7;
          }

          ++v24;
          v25 -= 4;
        }

        while (v24 != v7);
      }
    }

    else
    {
      if (v5 == 180)
      {
        if (v7)
        {
          v18 = 0;
          v19 = &v9[4 * v7 * v8 - 4];
          v20 = v6;
          do
          {
            v21 = v19;
            for (j = v8; j; --j)
            {
              v23 = *v20++;
              *v21-- = v23;
            }

            ++v18;
            v19 -= 4 * v8;
          }

          while (v18 != v7);
        }

        goto LABEL_33;
      }

      if (v7)
      {
        v11 = 0;
        v12 = &v9[4 * (v8 - 1) * v7];
        v13 = v6;
        do
        {
          v14 = v12;
          for (k = v8; k; --k)
          {
            v16 = *v13++;
            *v14 = v16;
            v14 -= 4 * v7;
          }

          ++v11;
          v12 += 4;
        }

        while (v11 != v7);
      }
    }

    *a2 = v7;
    a2[1] = v8;
LABEL_33:
    free(v6);
    a2[2] = v10;
    goto LABEL_34;
  }

  result = ramrod_load_png(a1, a2, a2 + 1, a2 + 2);
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t apply_alpha_to_image(uint64_t result, int a2)
{
  v2 = *(result + 8) * *result;
  if (v2)
  {
    v5 = *(result + 16);
    for (i = *(result + 24); ; ++i)
    {
      v6 = HIBYTE(*v5);
      if (v6 != 255)
      {
        break;
      }

      if (a2)
      {
        result = qword_1000B5040;
        *v5 = qword_1000B5040;
LABEL_13:
        *i = result;
      }

      ++v5;
      if (!--v2)
      {
        return result;
      }
    }

    if (a2)
    {
      v7 = qword_1000B5040;
    }

    else
    {
      v7 = *v5;
    }

    if (a2)
    {
      v8 = &qword_1000B5040;
    }

    else
    {
      v8 = i;
    }

    *v5 = apply_alpha(HIBYTE(*v5), v7);
    result = apply_alpha(v6, *v8);
    goto LABEL_13;
  }

  return result;
}

BOOL swapBuffers()
{
  v0 = current_buffer;
  if (current_buffer == -1)
  {
    ramrod_log_msg("Fail to init display. Display is in power saving mode or no hot plug is connected\n");
  }

  else
  {
    IOMobileFramebufferSwapBegin();
    if (byte_1000B506C == 1)
    {
      IOMobileFramebufferSwapSetLayer();
    }

    IOMobileFramebufferSwapSetLayer();
    if (byte_1000B506C == 1)
    {
      IOMobileFramebufferSwapSetLayer();
      byte_1000B506C = 0;
    }

    IOMobileFramebufferSwapEnd();
    IOMobileFramebufferSwapWait();
    current_buffer = 1 - current_buffer;
  }

  return v0 != -1;
}

BOOL draw_buffer_with_images()
{
  if (xmmword_1000B4FF0)
  {
    v0 = *(&xmmword_1000B4FF0 + 1) == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = pthread_self();
    ramrod_log_msg("%s() [%p] => display sizes are wrong, maybe no display is attached?\n", "draw_buffer_with_images", v1);
    return 0;
  }

  if (qword_1000B50C0)
  {
    v3 = qword_1000B50F0 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && qword_1000B5120 != 0 && qword_1000B5150 != 0 && qword_1000B5180 != 0 && qword_1000B51B0 != 0)
  {
    v12 = dword_1000B5000;
    if (dword_1000B5000 > 179)
    {
      if (dword_1000B5000 == 270)
      {
        goto LABEL_36;
      }

      if (dword_1000B5000 != 180)
      {
LABEL_74:
        ramrod_log_msg("%s -> Unsupported rotation. Skip drawing images\n");
        goto LABEL_91;
      }
    }

    else if (dword_1000B5000)
    {
      if (dword_1000B5000 != 90)
      {
        goto LABEL_74;
      }

LABEL_36:
      v14 = aux_imageDigit1;
      v15 = *algn_1000B50B8;
      v16 = *algn_1000B50B8 / 0xAuLL;
      v17 = (xmmword_1000B4FF0 - aux_imageDigit1) >> 1;
      v18 = (*(&xmmword_1000B4FF0 + 1) >> 1) - 3 * (*algn_1000B50B8 / 0xAuLL + *algn_1000B50B8);
      v13 = 1;
      if ((v17 & 0x80000000) == 0)
      {
LABEL_37:
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }
      }

LABEL_38:
      ramrod_log_msg("Error in digits' start offset calculation. StartX: %d StartY: %d. DisplayWxH: %zu x %zu (rot: %d). ImgWxH: %zu x %zu. Spacing: %d. Setting underflowed value(s) to 0\n", v17, v18, xmmword_1000B4FF0, *(&xmmword_1000B4FF0 + 1), dword_1000B5000, v14, v15, v16);
      LODWORD(v17) = v17 & ~(v17 >> 31);
      v12 = dword_1000B5000;
      v18 &= ~(v18 >> 31);
LABEL_39:
      v19 = malloc(0x30uLL);
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = v12 == 270 || v12 == 180;
        v23 = &aux_imageDigit1;
        v24 = aux_imageDigit2;
        if (v22)
        {
          v25 = aux_imageDigit6;
        }

        else
        {
          v25 = &aux_imageDigit1;
        }

        if (v22)
        {
          v26 = aux_imageDigit5;
        }

        else
        {
          v26 = aux_imageDigit2;
        }

        *v19 = v25;
        v19[1] = v26;
        v27 = aux_imageDigit3;
        if (v22)
        {
          v28 = aux_imageDigit4;
        }

        else
        {
          v28 = aux_imageDigit3;
        }

        if (!v22)
        {
          v27 = aux_imageDigit4;
        }

        v19[2] = v28;
        v19[3] = v27;
        if (!v22)
        {
          v24 = aux_imageDigit5;
          v23 = aux_imageDigit6;
        }

        v19[4] = v24;
        v19[5] = v23;
        while (1)
        {
          v29 = v20[v21];
          if (!v29 || !*(v29 + 16))
          {
            break;
          }

          display_blit_raw_image(v20[v21], v17, v18);
          if (v13)
          {
            v18 += v16 + *(v29 + 8);
          }

          else
          {
            LODWORD(v17) = v17 + v16 + *v29;
          }

          if (++v21 == 6)
          {
            goto LABEL_72;
          }
        }

        ramrod_log_msg("%s: Encountered invalid code digit image at location %d. Bailing\n", "draw_digits", v21);
LABEL_72:
        free(v20);
      }

      else
      {
        ramrod_log_msg("%s: Failed to allocate codeArray\n");
      }

      goto LABEL_91;
    }

    v13 = 0;
    v14 = aux_imageDigit1;
    v15 = *algn_1000B50B8;
    v16 = aux_imageDigit1 / 0xAuLL;
    v17 = 4294967293u * (aux_imageDigit1 + aux_imageDigit1 / 0xAuLL) + (xmmword_1000B4FF0 >> 1);
    v18 = (DWORD2(xmmword_1000B4FF0) - *algn_1000B50B8) / 2;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (!qword_1000B51E0)
  {
    if ((is_showing_animation & 1) == 0 && is_fading_animation_out != 1)
    {
      ramrod_log_msg("%s() -> Nothing to draw. No images, digits or animation.\n");
      goto LABEL_91;
    }

    v30 = animation_curr_index;
    v31 = animation_images + 48 * animation_curr_index;
    v32 = *(v31 + 16);
    if (animation_curr_index >= 1 && !v32)
    {
      v33 = animation_images + 48 * animation_curr_index;
      if (animation_curr_index == 1)
      {
        v34 = 4 * *(v33 - 48) * *(v33 - 40);
        v35 = animation_images + 48 * animation_actual_images_amount;
        v32 = *(v35 - 24);
        if (v32)
        {
          *(v35 - 32) = 0;
          *(v35 - 24) = 0;
        }

        else
        {
          v32 = malloc(4 * *(v33 - 48) * *(v33 - 40));
        }

        memcpy(v32, *(v33 - 24), v34);
      }

      else
      {
        v32 = *(v33 - 24);
      }

      v36 = *(v31 + 40);
      if (v36)
      {
        v37 = 0;
        v38 = *(v31 + 32);
        v39 = 1;
        do
        {
          *(v32 + *(v38 + 8 * v37)) = *(v38 + 8 * v37 + 4);
          v37 = v39;
        }

        while (v36 > v39++);
        v30 = animation_curr_index;
      }

      *(v31 + 16) = v32;
      *(v31 + 24) = v32;
      if (v30 > 1)
      {
        *(v33 - 32) = 0;
        *(v33 - 24) = 0;
      }
    }

    if (!v32)
    {
      goto LABEL_91;
    }

    v11 = (xmmword_1000B4FF0 - *v31) / 2;
    v41 = dword_1000B51D8;
    if (!qword_1000B51E0)
    {
      v41 = 0;
    }

    v9 = v41 + (DWORD2(xmmword_1000B4FF0) - *(v31 + 8)) / 2;
    v10 = v31;
    goto LABEL_90;
  }

  v8 = (DWORD2(xmmword_1000B4FF0) - dword_1000B51D8) / 2;
  display_blit_raw_image(&aux_imageFirst, (xmmword_1000B4FF0 - aux_imageFirst) / 2, v8);
  if (qword_1000B5210)
  {
    v9 = v8 + dword_1000B51D8;
    if ((qword_1000B5208 + v8 + dword_1000B51D8) >= *(&xmmword_1000B4FF0 + 1))
    {
      ramrod_log_msg("%s() -> No room left to draw image #2 under image #1.\n");
      goto LABEL_91;
    }

    v10 = &aux_imageSecond;
    v11 = (xmmword_1000B4FF0 - aux_imageSecond) / 2;
LABEL_90:
    display_blit_raw_image(v10, v11, v9);
  }

LABEL_91:

  return swapBuffers();
}

void display_blit_raw_image(uint64_t *a1, int a2, int a3)
{
  pthread_mutex_lock(&display);
  if ((current_buffer & 0x80000000) == 0 && a1[2])
  {
    v6 = *(&display + current_buffer + 19);
    BytesPerRow = IOSurfaceGetBytesPerRow(v6);
    BaseAddress = IOSurfaceGetBaseAddress(v6);
    v9 = *a1;
    if (!*a1)
    {
      ramrod_log_msg("%s: can't blit - image x offset greater that width [%d > %zu]\n", "display_blit_raw_image_limit", 0, 0);
      return;
    }

    v10 = a1[1];
    if ((v10 + a3) <= *(&xmmword_1000B4FF0 + 1) && v9 + a2 <= xmmword_1000B4FF0)
    {
      if (v10)
      {
        v11 = 0;
        v12 = a1[2];
        do
        {
          v13 = &BaseAddress[4 * a2 + ((v11 + a3) * BytesPerRow)];
          v14 = v9;
          do
          {
            v15 = *v12++;
            *v13 = v15;
            v13 += 4;
            --v14;
          }

          while (v14);
          ++v11;
        }

        while (v11 != v10);
      }
    }

    else
    {
      failed_blit_info_0 = a2;
      failed_blit_info_1 = a3;
      failed_blit_info_3 = v9;
      failed_blit_info_2 = v10;
      pthread_once(&log_failed_blits_once, warn_about_failed_blit);
    }
  }

  pthread_mutex_unlock(&display);
}

uint64_t clear_buffer_no_swap()
{
  pthread_mutex_lock(&display);
  if ((current_buffer & 0x80000000) == 0)
  {
    v0 = &display.__sig + current_buffer;
    v1 = v0[19];
    if (v1)
    {
      Height = IOSurfaceGetHeight(v0[19]);
      BytesPerRow = IOSurfaceGetBytesPerRow(v1);
      BaseAddress = IOSurfaceGetBaseAddress(v1);
      v5 = NeRDFadeToColor_R ? -65536 : -16777216;
      v6 = NeRDFadeToColor_G ? 65280 : 0;
      v7 = NeRDFadeToColor_B ? 255 : 0;
      if (Height)
      {
        v8 = 0;
        v9 = v6 | v5 | v7;
        v10 = vdupq_n_s64((BytesPerRow >> 2) - 1);
        v11 = vdupq_n_s64(4uLL);
        v12 = (BaseAddress + 8);
        do
        {
          if (BytesPerRow >= 4)
          {
            v13 = v12;
            v14 = ((BytesPerRow >> 2) + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v15 = xmmword_100081B10;
            v16 = xmmword_100082090;
            do
            {
              v17 = vmovn_s64(vcgeq_u64(v10, v15));
              if (vuzp1_s16(v17, *v10.i8).u8[0])
              {
                *(v13 - 2) = v9;
              }

              if (vuzp1_s16(v17, *&v10).i8[2])
              {
                *(v13 - 1) = v9;
              }

              if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v16))).i32[1])
              {
                *v13 = v9;
                v13[1] = v9;
              }

              v16 = vaddq_s64(v16, v11);
              v15 = vaddq_s64(v15, v11);
              v13 += 4;
              v14 -= 4;
            }

            while (v14);
          }

          ++v8;
          v12 = (v12 + BytesPerRow);
        }

        while (v8 != Height);
      }
    }
  }

  return pthread_mutex_unlock(&display);
}

BOOL init_display()
{
  pthread_once(&create_display_context_once, create_display_context);
  pthread_mutex_lock(&display);
  v0 = swapBuffers();
  pthread_mutex_unlock(&display);
  if (!v0)
  {
    return 0;
  }

  v1 = 1;
  do
  {
    clear_buffer_no_swap();
    result = swapBuffers();
    if ((v1 & 1) == 0)
    {
      break;
    }

    v1 = 0;
  }

  while (result);
  if (result)
  {
    if (!pthread_mutex_init(&step_lock, 0))
    {
      return 1;
    }

    ramrod_log_msg("%s() => mutex init (step_lock) failed.\n", "init_display");
    return 0;
  }

  return result;
}

uint64_t create_display_context()
{
  if (pthread_mutex_init(&display, 0))
  {
    ramrod_log_msg("%s() -> unable to initialize display lock\n", "create_display_context");
  }

  v0 = pthread_self();
  ramrod_log_msg("%s() [%p] => requesting locking for display\n", "create_display_context", v0);
  pthread_mutex_lock(&display);
  v1 = pthread_self();
  ramrod_log_msg("%s() [%p] => received lock request for display\n", "create_display_context", v1);
  NeRDFadeToColor_R = 0;
  NeRDFadeToColor_G = 0;
  NeRDFadeToColor_B = 0;
  qword_1000B5040 = 0xFF4D4D4DFFFFFFFFLL;
  dword_1000B503C = 1;
  byte_1000B506C = 1;
  v2 = MGGetSInt32Answer();
  if (v2)
  {
    if (v2 == 1)
    {
      NeRDFadeToColor_R = 1;
      NeRDFadeToColor_G = 1;
      NeRDFadeToColor_B = 1;
      ramrod_log_msg("%s() -> inverting UI color", "init_per_platform_behavior");
      qword_1000B5040 = 0xFFCCCCCCFF000000;
      BYTE1(dword_1000B503C) = NeRDFadeToColor_R << 31 >> 31;
      BYTE2(dword_1000B503C) = NeRDFadeToColor_G << 31 >> 31;
      HIBYTE(dword_1000B503C) = NeRDFadeToColor_B << 31 >> 31;
      should_use_fg_color_values = 1;
    }

    else
    {
      ramrod_log_msg("%s() -> unexpect color map policy %d", "init_per_platform_behavior", v2);
    }
  }

  off_1000B5098 = init_display_position_information_iOS;
  off_1000B5088 = load_images_iOS;
  qword_1000B5090 = clear_images;
  off_1000B50A0 = display_set_progress;
  off_1000B50A8 = load_scale_and_rotation;
  if (dword_1000B5070 <= 0)
  {
    DisplayList = IOMobileFramebufferCreateDisplayList();
    if (DisplayList)
    {
      goto LABEL_9;
    }

    v13 = find_framebuffer_retryCount;
    if (find_framebuffer_retryCount < 1)
    {
      goto LABEL_33;
    }

    v14 = find_framebuffer_retryCount + 1;
    do
    {
      find_framebuffer_retryCount = v13 - 1;
      v15 = 100000 * (v14 - v13);
      if (v15 >= 1000000)
      {
        v16 = 1000000;
      }

      else
      {
        v16 = v15;
      }

      usleep(v16);
      v17 = IOMobileFramebufferCreateDisplayList();
      v13 = find_framebuffer_retryCount;
    }

    while (find_framebuffer_retryCount >= 1 && v17 == 0);
    DisplayList = v17;
    if (v17)
    {
LABEL_9:
      v4 = qword_1000B5080;
      if (qword_1000B5080)
      {
        if (dword_1000B5070 >= 1)
        {
          v5 = 0;
          v6 = 72;
          do
          {
            CFRelease(*&v4[v6]);
            v4 = qword_1000B5080;
            *(qword_1000B5080 + v6) = 0;
            ++v5;
            v6 += 80;
          }

          while (v5 < dword_1000B5070);
        }

        free(v4);
        qword_1000B5080 = 0;
      }

      dword_1000B5070 = 0;
      Count = CFArrayGetCount(DisplayList);
      qword_1000B5080 = calloc(Count, 0x50uLL);
      if (qword_1000B5080)
      {
        find_framebuffers_of_type(DisplayList, 0);
        if (!qword_1000B5078)
        {
          find_framebuffers_of_type(DisplayList, 1);
          if (dword_1000B5070 >= 1 && (*(qword_1000B5080 + 80 * dword_1000B5070 - 80) & 1) == 0)
          {
            ramrod_log_msg("attempting to power on display port\n");
            v8 = __IOAVClassMatching();
            if (v8)
            {
              v9 = wait_for_io_service_matching_dict(v8, 0xAu);
              if (v9)
              {
                v10 = v9;
                v11 = IOAVControllerCreateWithService();
                IOObjectRelease(v10);
                if (v11)
                {
                  v12 = IOAVControllerSetPower();
                  CFRelease(v11);
                  if (v12)
                  {
                    ramrod_log_msg("unable to power on DisplayPort: 0x%x\n");
                  }
                }

                else
                {
                  ramrod_log_msg("Unable to create IOAVController from service", v28);
                }
              }

              else
              {
                ramrod_log_msg("timed out waiting for IOAVController service\n", v28);
              }
            }

            else
            {
              ramrod_log_msg("IOAVClassMatching returned no matching class for IOAVController\n", v28);
            }
          }

          if (!qword_1000B5078)
          {
            ramrod_log_msg("unable to find a usable display\n");
          }
        }
      }

      else
      {
        ramrod_log_msg("unable to allocate framebuffer display\n");
      }

      CFRelease(DisplayList);
    }

    else
    {
LABEL_33:
      ramrod_log_msg("unable to get display list\n");
    }

    if (!dword_1000B5070)
    {
      ramrod_log_msg("%s() -> unable to get framebuffer\n");
LABEL_56:
      free_display();
      return pthread_mutex_unlock(&display);
    }

    off_1000B50A8(v19);
    if (!qword_1000B5078)
    {
      if (*qword_1000B5080 != 1)
      {
        goto LABEL_54;
      }

      qword_1000B5078 = qword_1000B5080;
      ramrod_log_msg("%s: Will use %s\n", "create_framebuffer", (qword_1000B5080 + 2));
      if (!qword_1000B5078)
      {
        goto LABEL_54;
      }
    }

    v29[0] = 0;
    v29[1] = 0;
    DisplaySize = IOMobileFramebufferGetDisplaySize();
    if (DisplaySize)
    {
      ramrod_log_msg("%s() -> unable to get display size: 0x%x\n", "create_framebuffer", DisplaySize);
    }

    else
    {
      xmmword_1000B4FF0 = vcvtq_u64_f64(*v29);
    }

    off_1000B5088(DisplaySize);
    v21 = qword_1000B5078;
    if (!qword_1000B5078 || (v22 = *qword_1000B5078, v22 != 1) || (*(qword_1000B5078 + 1) & 1) == 0 && (*(qword_1000B5080 + 80 * dword_1000B5070 - 80) & 1) == 0)
    {
LABEL_54:
      v29[0] = 0;
      if (pthread_create(v29, 0, hot_plug_thread, 0))
      {
        ramrod_log_msg("%s() -> unable to create hot plug thread\n");
        goto LABEL_56;
      }

      pthread_detach(v29[0]);
      v21 = qword_1000B5078;
      if (!qword_1000B5078)
      {
        goto LABEL_56;
      }

      v22 = *qword_1000B5078;
    }

    v24 = initialize_display_for_framebuffer(*(v21 + 72), v22);
    v25 = v24;
    if ((*qword_1000B5078 & 1) == 0)
    {
      v26 = off_1000B5088(v24);
      off_1000B5098(v26);
      draw_buffer_with_images();
    }

    if (*(qword_1000B5080 + 80 * dword_1000B5070 - 80) == 1 && v25 != 0)
    {
      goto LABEL_56;
    }
  }

  return pthread_mutex_unlock(&display);
}

uint64_t set_minimum_progress_blink(double a1)
{
  pthread_once(&create_display_context_once, create_display_context);
  pthread_mutex_lock(&display);
  if ((current_buffer & 0x80000000) == 0)
  {
    min_progress_blink = *&a1;
    if (*&current_progress >= a1 && (is_blinking & 1) == 0)
    {
      is_blinking = 1;
      schedule_next_blink();
    }
  }

  return pthread_mutex_unlock(&display);
}

void set_progress_UI(uint64_t result, double a2)
{
  v2 = 100.0;
  if (a2 <= 100.0)
  {
    v2 = a2;
  }

  if (a2 >= 0.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 != *&current_progress || result != 0)
  {
    current_progress = *&v3;
    if (current_buffer != -1)
    {
      off_1000B50A0(v3);
      v3 = *&current_progress;
    }

    if (v3 >= *&min_progress_blink && (is_blinking & 1) == 0)
    {
      is_blinking = 1;

      schedule_next_blink();
    }
  }
}

uint64_t load_image_with_alpha(void *a1, const char *a2)
{
  bzero(v7, 0x400uLL);
  if (a2)
  {
    if (!find_image_for_device(a2, v7))
    {
      ramrod_log_msg("%s() -> imageName: %s was not found\n", "load_image_with_alpha", a2);
      image = 0;
      return image & 1;
    }

    ramrod_log_msg("%s() -> found image at %s\n", "load_image_with_alpha", v7);
    image = load_image(v7, a1);
    apply_alpha_to_image(a1, should_use_fg_color_values);
    v5 = "Failed to load image";
    if (image)
    {
      v5 = "Successfully loaded image";
    }
  }

  else
  {
    ramrod_log_msg("%s() -> Image name is null\n", "load_image_with_alpha");
    image = 0;
    v5 = "Failed to load image";
    a2 = "NULL image";
  }

  ramrod_log_msg("%s() -> %s %s\n", "load_image_with_alpha", v5, a2);
  return image & 1;
}

uint64_t load_digits(char *__s)
{
  if (__s && strlen(__s) < 7)
  {
    ramrod_log_msg("Attempting to load digits :%s:\n", __s);
    v3 = 0;
    while (1)
    {
      v4 = 0;
      if (!__s[v3])
      {
LABEL_9:
        ramrod_log_msg("%s() -> Successfully loaded digits\n", "load_digits");
        return 1;
      }

      LOBYTE(v4) = __s[v3];
      if (!load_image_with_alpha((&off_100099B78)[v3], &v4))
      {
        break;
      }

      if (++v3 == 6)
      {
        goto LABEL_9;
      }
    }

    ramrod_log_msg("%s() -> Failed load digit #%d. Bailing from load_digits\n");
  }

  else
  {
    ramrod_log_msg("%s: Invalid digits string: %s\n");
  }

  return 0;
}

void animation_in_thread()
{
  pthread_setcanceltype(0, 0);
  pthread_setcancelstate(1, 0);
  is_showing_animation = 1;
  animation_curr_index = 0;
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  v0 = 1;
  while (draw_buffer_with_images())
  {
    if ((v0 & 1) == 0)
    {
      if (is_fading_animation_out)
      {
        ramrod_log_msg("%s() -> During drawing buffer, fade was started. Setting is_showing_animation as false and stop animating loop \n");
        goto LABEL_11;
      }

      animation_curr_index = (animation_curr_index + 1) % animation_actual_images_amount;
      v1 = animation_refresh_rate_time;
      v2.tv_sec = 0;
      *&v2.tv_usec = 0;
      gettimeofday(&v2, 0);
      if (v3.tv_sec)
      {
        v1 = v1 - v2.tv_usec + v3.tv_usec - 1000000 * (LODWORD(v2.tv_sec) - LODWORD(v3.tv_sec));
      }

      usleep(fmin(fmax(v1, 0.0), animation_refresh_rate_time));
      gettimeofday(&v3, 0);
      if ((is_showing_animation & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v0 ^= 1u;
  }

  ramrod_log_msg("%s() -> fail to draw buffer, exiting thread.\n");
LABEL_11:
  is_showing_animation = 0;
LABEL_12:
  pthread_exit(0);
}

BOOL fade_in_image_step(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] * *a1;
    if (v3)
    {
      v4 = fade_steps;
      v6 = (NeRDFadeToColor_R << 31 >> 31);
      v7 = (NeRDFadeToColor_G << 31 >> 31);
      v8 = (NeRDFadeToColor_B << 31 >> 31);
      v9 = a1[3];
      v10 = a1[2];
      do
      {
        v11 = *v9++;
        v5 = a2;
        *v10++ = (((HIBYTE(v11) + -255.0) / v4 * v5 + 255.0) << 24) | ((v6 + (BYTE2(v11) - v6) / v4 * v5) << 16) | ((v7 + (BYTE1(v11) - v7) / v4 * v5) << 8) | (v8 + (v11 - v8) / v4 * v5);
        --v3;
      }

      while (v3);
    }
  }

  return v2 != 0;
}

uint64_t fade_out_image_step(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2 && (v3 = *(result + 24)) != 0)
    {
      v4 = *(result + 8) * *result;
      if (v4)
      {
        v5 = fade_steps;
        v7 = (NeRDFadeToColor_R << 31 >> 31);
        v8 = (NeRDFadeToColor_G << 31 >> 31);
        v9 = (NeRDFadeToColor_B << 31 >> 31);
        do
        {
          v10 = *v3++;
          v6 = a2;
          *v2++ = ((HIBYTE(v10) + -(HIBYTE(v10) + -255.0) / v5 * v6) << 24) | ((BYTE2(v10) + -(BYTE2(v10) - v7) / v5 * v6) << 16) | ((BYTE1(v10) + -(BYTE1(v10) - v8) / v5 * v6) << 8) | (v10 + -(v10 - v9) / v5 * v6);
          --v4;
        }

        while (v4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void reset_images()
{
  free(qword_1000B51E0);
  qword_1000B51E0 = 0;
  free(qword_1000B51E8);
  qword_1000B51E8 = 0;
  free(qword_1000B5210);
  qword_1000B5210 = 0;
  free(qword_1000B5218);
  qword_1000B5218 = 0;
  free(qword_1000B50C0);
  qword_1000B50C0 = 0;
  free(qword_1000B50C8);
  qword_1000B50C8 = 0;
  free(qword_1000B50F0);
  qword_1000B50F0 = 0;
  free(qword_1000B50F8);
  qword_1000B50F8 = 0;
  free(qword_1000B5120);
  qword_1000B5120 = 0;
  free(qword_1000B5128);
  qword_1000B5128 = 0;
  free(qword_1000B5150);
  qword_1000B5150 = 0;
  free(qword_1000B5158);
  qword_1000B5158 = 0;
  free(qword_1000B5180);
  qword_1000B5180 = 0;
  free(qword_1000B5188);
  qword_1000B5188 = 0;
  free(qword_1000B51B0);
  qword_1000B51B0 = 0;
  free(qword_1000B51B8);
  qword_1000B51B8 = 0;
}

uint64_t fade_out_and_clear_all_images()
{
  is_blinking = 0;
  if (is_showing_animation != 1)
  {
    ramrod_log_msg("%s() -> Fading images out\n", "fade_out_and_clear_all_images");
    if (fade_steps < 0)
    {
      goto LABEL_35;
    }

    v8 = -1;
    while (1)
    {
      if ((v8 + 1) <= 1)
      {
        clear_buffer_no_swap();
      }

      v9 = fade_out_image_step(&aux_imageFirst, v8 + 1);
      v10 = fade_out_image_step(&aux_imageSecond, v8 + 1);
      v11 = fade_out_image_step(&aux_imageDigit1, v8 + 1);
      v12 = fade_out_image_step(aux_imageDigit2, v8 + 1);
      v13 = fade_out_image_step(aux_imageDigit3, v8 + 1);
      v14 = fade_out_image_step(aux_imageDigit4, v8 + 1);
      v15 = fade_out_image_step(aux_imageDigit5, v8 + 1);
      v16 = fade_out_image_step(aux_imageDigit6, v8 + 1);
      if (!draw_buffer_with_images())
      {
        break;
      }

      if (((v9 | v10 | v11 | v12 | v13 | v14 | v15 | v16) & 1) == 0)
      {
        ramrod_log_msg("%s() -> nothing to fade out\n", "fade_out_and_clear_all_images");
        goto LABEL_35;
      }

      if (++v8 >= fade_steps)
      {
        goto LABEL_35;
      }
    }

    ramrod_log_msg("%s() -> Can't continuing fading, stop fading out\n", "fade_out_and_clear_all_images");
    v29 = 1;
    do
    {
      clear_buffer_no_swap();
      v30 = swapBuffers();
      if ((v29 & 1) == 0)
      {
        break;
      }

      v29 = 0;
    }

    while (v30);
    if (v30)
    {
LABEL_35:
      if (draw_buffer_with_images())
      {
        v31 = 1;
        do
        {
          clear_buffer_no_swap();
          v32 = swapBuffers();
          v28 = v32;
          if ((v31 & 1) == 0)
          {
            break;
          }

          v31 = 0;
        }

        while (v32);
        reset_images();
        if (!v28)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    v28 = 0;
    v33 = "false";
    goto LABEL_43;
  }

  killAnimations();
  is_fading_animation_out = 1;
  animation_curr_index = (animation_curr_index + animation_actual_images_amount - 1) % animation_actual_images_amount;
  ramrod_log_msg("%s() -> Fading animation (image #%d) out\n", "fade_out_and_clear_all_images", animation_curr_index);
  v0 = animation_curr_index;
  if (animation_curr_index)
  {
    v1 = animation_images;
    v2 = (animation_images + 48 * animation_curr_index);
    v3 = v2[3];
    if (v3)
    {
      v4 = 4 * v2[1] * *v2;
      v5 = malloc(v4);
      memcpy(v5, v3, v4);
      *(v1 + 48 * v0 + 16) = v5;
    }
  }

  if (fade_steps < 0)
  {
LABEL_10:
    v7 = draw_buffer_with_images();
  }

  else
  {
    v6 = -1;
    while ((fade_out_image_step(animation_images + 48 * animation_curr_index, v6 + 1) & 1) != 0 && draw_buffer_with_images())
    {
      if (++v6 >= fade_steps)
      {
        goto LABEL_10;
      }
    }

    ramrod_log_msg("%s() -> Can't continuing fading, stop fading out\n", "fade_out_and_clear_all_images");
    v7 = 0;
  }

  v17 = animation_curr_index;
  v18 = animation_images;
  if (animation_curr_index)
  {
    v19 = animation_images + 48 * animation_curr_index;
    v22 = *(v19 + 16);
    v21 = (v19 + 16);
    v20 = v22;
    if (v22)
    {
      free(v20);
      *v21 = 0;
      v23 = v18 + 48 * v17;
      free(*(v23 + 24));
      *(v23 + 24) = 0;
    }
  }

  else
  {
    v24 = *(animation_images + 24);
    if (v24)
    {
      v25 = 4 * *(animation_images + 8) * *animation_images;
      v26 = malloc(v25);
      memcpy(v26, v24, v25);
      v27 = *(v18 + 16);
      if (v27)
      {
        free(v27);
      }

      *(v18 + 16) = v26;
    }
  }

  animation_curr_index = 0;
  is_fading_animation_out = 0;
  animation_images = 0;
  animation_actual_images_amount = 0;
  if (!v7)
  {
    v28 = 0;
LABEL_41:
    v33 = "false";
    goto LABEL_43;
  }

LABEL_40:
  v33 = "true";
  v28 = 1;
LABEL_43:
  ramrod_log_msg("%s() -> retVal is %s\n", "fade_out_and_clear_all_images", v33);
  return v28;
}

BOOL display_image(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (fade_out_and_clear_all_images())
    {
      if (load_image_with_alpha(&aux_imageFirst, v1))
      {
        if ((fade_steps & 0x80000000) == 0)
        {
          v2 = -1;
          while (fade_in_image_step(&aux_imageFirst, v2 + 1) && draw_buffer_with_images())
          {
            if (++v2 >= fade_steps)
            {
              goto LABEL_9;
            }
          }

          ramrod_log_msg("%s() -> Can't continuing fading, stop fading in\n", "display_image");
          goto LABEL_13;
        }

LABEL_9:
        v1 = draw_buffer_with_images();
      }

      else
      {
        v1 = 0;
      }

LABEL_14:
      ramrod_log_msg("%s() -> %s image\n");
      return v1;
    }

LABEL_13:
    v1 = 0;
    goto LABEL_14;
  }

  ramrod_log_msg("%s() : Invalid path string passed. Skipping display_image \n");
  return v1;
}

BOOL display_two_images(const char *a1, const char *a2)
{
  if (a1 && a2)
  {
    if (fade_out_and_clear_all_images() && load_image_with_alpha(&aux_imageFirst, a1))
    {
      v4 = "false";
      if (!load_image_with_alpha(&aux_imageSecond, a2))
      {
        v6 = 0;
LABEL_19:
        ramrod_log_msg("%s() -> retVal is %s\n", "display_two_images", v4);
        return v6;
      }

      if (fade_steps < 0)
      {
LABEL_12:
        v6 = draw_buffer_with_images();
        if (v6)
        {
          v4 = "true";
        }

        goto LABEL_19;
      }

      v5 = -1;
      while (fade_in_image_step(&aux_imageFirst, v5 + 1) && fade_in_image_step(&aux_imageSecond, v5 + 1) && draw_buffer_with_images())
      {
        if (++v5 >= fade_steps)
        {
          goto LABEL_12;
        }
      }

      ramrod_log_msg("%s() -> Can't continuing fading, stop fading in\n", "display_two_images");
    }

    v6 = 0;
    v4 = "false";
    goto LABEL_19;
  }

  ramrod_log_msg("%s() : Invalid path string passed. Skipping image display \n", "display_two_images");
  return 0;
}

BOOL display_image_and_digits(const char *a1, char *a2)
{
  if (a1 && a2)
  {
    if (fade_out_and_clear_all_images() && load_digits(a2))
    {
      v4 = "false";
      if (!load_image_with_alpha(&aux_imageFirst, a1))
      {
        v6 = 0;
LABEL_24:
        ramrod_log_msg("%s() -> retVal is %s\n", "display_image_and_digits", v4);
        return v6;
      }

      if (fade_steps < 0)
      {
LABEL_17:
        v6 = draw_buffer_with_images();
        if (v6)
        {
          v4 = "true";
        }

        goto LABEL_24;
      }

      v5 = -1;
      while (fade_in_image_step(&aux_imageFirst, v5 + 1) && fade_in_image_step(&aux_imageDigit1, v5 + 1) && fade_in_image_step(aux_imageDigit2, v5 + 1) && fade_in_image_step(aux_imageDigit3, v5 + 1) && fade_in_image_step(aux_imageDigit4, v5 + 1) && fade_in_image_step(aux_imageDigit5, v5 + 1) && fade_in_image_step(aux_imageDigit6, v5 + 1) && draw_buffer_with_images())
      {
        if (++v5 >= fade_steps)
        {
          goto LABEL_17;
        }
      }

      ramrod_log_msg("%s() -> Can't continuing fading, stop fading in\n", "display_image_and_digits");
    }

    v6 = 0;
    v4 = "false";
    goto LABEL_24;
  }

  ramrod_log_msg("%s() : Invalid digits or path string passed. Skipping image display \n", "display_image_and_digits");
  return 0;
}

uint64_t display_animation(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (fade_out_and_clear_all_images() && load_animation_images(v1))
    {
      pthread_once(&create_display_context_once, create_display_context);
      pthread_create(&animationThread, 0, animation_in_thread, 0);
      v1 = 1;
    }

    else
    {
      v1 = 0;
    }

    ramrod_log_msg("%s() -> retVal is %s\n");
  }

  else
  {
    ramrod_log_msg("%s() : Invalid animation path string passed. Skipping animation display \n");
  }

  return v1;
}

uint64_t display_spinner()
{
  if (fade_out_and_clear_all_images() && load_animation_images("Spinner"))
  {
    pthread_once(&create_display_context_once, create_display_context);
    pthread_create(&animationThread, 0, animation_in_thread, 0);
    v0 = "true";
    v1 = 1;
  }

  else
  {
    v1 = 0;
    v0 = "false";
  }

  ramrod_log_msg("%s() -> retVal is %s\n", "display_spinner", v0);
  return v1;
}

uint64_t display_image_and_spinner(_BOOL8 a1)
{
  if (a1)
  {
    if (display_image(a1) && load_animation_images("Spinner"))
    {
      pthread_once(&create_display_context_once, create_display_context);
      pthread_create(&animationThread, 0, animation_in_thread, 0);
      v1 = "true";
      v2 = 1;
    }

    else
    {
      v2 = 0;
      v1 = "false";
    }

    ramrod_log_msg("%s() -> retVal is %s\n", "display_image_and_spinner", v1);
  }

  else
  {
    ramrod_log_msg("%s() : Invalid path string passed. Skipping image display \n", "display_image_and_spinner");
    return 0;
  }

  return v2;
}

uint64_t display_image_and_progress(_BOOL8 a1, char *__s2, int a3)
{
  if (a1 && __s2)
  {
    if (!strcmp("1.0000000", __s2))
    {
      ramrod_log_msg("%s() -> first time progress is displaying \n", "display_image_and_progress");
      if (!display_image(a1))
      {
LABEL_11:
        v6 = 0;
        v8 = "false";
        goto LABEL_12;
      }

      pthread_once(&create_display_context_once, create_display_context);
      set_progress_UI(0, 0.0);
      set_minimum_progress_blink(1.0);
    }

    else if (a3 && !display_image(a1))
    {
      goto LABEL_11;
    }

    v10 = 0.0;
    sscanf(__s2, "%lf", &v10);
    v7 = v10;
    pthread_once(&create_display_context_once, create_display_context);
    set_progress_UI(0, v7);
    v8 = "true";
    v6 = 1;
LABEL_12:
    ramrod_log_msg("%s() -> retVal is %s\n", "display_image_and_progress", v8);
    return v6;
  }

  ramrod_log_msg("%s() : Invalid path or progress string passed. Skipping image and progress display \n", "display_image_and_progress");
  return 0;
}

const char *getStepName(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "NOT_INITIALIZED";
  }

  else
  {
    return (&off_100099CC0)[a1 - 1];
  }
}

uint64_t saveParams(const char **a1, const char **a2)
{
  if (currentStepParams)
  {
    free(currentStepParams);
    currentStepParams = 0;
  }

  if (qword_1000B5290)
  {
    free(qword_1000B5290);
    qword_1000B5290 = 0;
  }

  if (!a1)
  {
    return 1;
  }

  currentStepParams = strdup(*a1);
  if (currentStepParams)
  {
    if (!a2)
    {
      return 1;
    }

    qword_1000B5290 = strdup(*a2);
    if (qword_1000B5290)
    {
      return 1;
    }

    ramrod_log_msg("%s() -> failed to allocate memory for param1 \n");
  }

  else
  {
    ramrod_log_msg("%s() -> failed to allocate memory for param0 \n");
  }

  return 0;
}

uint64_t handle_step_with_two_params(const char **a1, int a2, uint64_t (*a3)(char *, char *))
{
  v4 = *a1;
  if (!v4 || (v5 = a1[1]) == 0)
  {
    ramrod_log_msg("%s() -> param0 can't be null in STEP_SHOW_DIGITS_IN_WATCH step \n");
    return 0;
  }

  v8 = strdup(v4);
  v14 = v8;
  v9 = strdup(v5);
  v13 = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    ramrod_log_msg("%s() -> failed to allocate memory for param \n");
    return 0;
  }

  v12 = a3(v8, v9);
  currentStep = a2;
  saveParams(&v14, &v13);
  return v12;
}

uint64_t handle_step_with_one_params(const char **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  if (!v3)
  {
    ramrod_log_msg("%s() -> param0 can't be null in STEP_SHOW_DIGITS_IN_WATCH step \n", a2);
    return 0;
  }

  v5 = a2;
  v9 = strdup(v3);
  if (!v9)
  {
    ramrod_log_msg("%s() -> failed to allocate memory for param \n", v6);
    return 0;
  }

  v7 = a3();
  currentStep = v5;
  saveParams(&v9, 0);
  return v7;
}

uint64_t setNeRDUIStepDisplayDataInner(int a1, const char **a2, int a3)
{
  StepName = getStepName(a1);
  ramrod_log_msg("%s() -> starting step %s \n", "setNeRDUIStepDisplayDataInner", StepName);
  pthread_mutex_lock(&step_lock);
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 8)
      {
        ramrod_log_msg("NeRDUI got request to clear screen\n");
        v16 = fade_out_and_clear_all_images();
        v17 = "false";
        if (v16)
        {
          v17 = "true";
        }

        ramrod_log_msg("%s() -> retVal is %s\n", "clear_ui", v17);
        currentStep = 8;
        saveParams(0, 0);
        pthread_mutex_unlock(&step_lock);
        if (v16)
        {
          goto LABEL_29;
        }

LABEL_31:
        v18 = "failed";
        goto LABEL_32;
      }

      if (a1 != 7)
      {
        goto LABEL_23;
      }

      v10 = display_two_images;
      v11 = a2;
      v12 = 7;
    }

    else
    {
      if (a1 == 5)
      {
        v7 = display_animation;
        v8 = a2;
        v9 = 5;
        goto LABEL_17;
      }

      v10 = display_image_and_digits;
      v11 = a2;
      v12 = 6;
    }

LABEL_26:
    v14 = handle_step_with_two_params(v11, v12, v10);
    goto LABEL_27;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v15 = display_spinner();
      currentStep = 3;
      saveParams(0, 0);
      goto LABEL_28;
    }

    if (a3)
    {
      v13 = display_image_and_progress_force;
    }

    else
    {
      v13 = display_image_and_progress_no_force;
    }

    v10 = v13;
    v11 = a2;
    v12 = 4;
    goto LABEL_26;
  }

  if (a1 == 1)
  {
    v7 = display_image;
    v8 = a2;
    v9 = 1;
    goto LABEL_17;
  }

  if (a1 != 2)
  {
LABEL_23:
    currentStep = 0;
    pthread_mutex_unlock(&step_lock);
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  v7 = display_image_and_spinner;
  v8 = a2;
  v9 = 2;
LABEL_17:
  v14 = handle_step_with_one_params(v8, v9, v7);
LABEL_27:
  v15 = v14;
LABEL_28:
  pthread_mutex_unlock(&step_lock);
  if ((v15 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_29:
  v18 = "completed successfully";
  v16 = 1;
LABEL_32:
  ramrod_log_msg("%s() -> Step %s %s\n", "setNeRDUIStepDisplayDataInner", StepName, v18);
  return v16;
}

uint64_t initialize_display_for_framebuffer(uint64_t a1, int a2)
{
  if (a1)
  {
    ServiceObject = IOMobileFramebufferGetServiceObject();
    if (ServiceObject)
    {
      IORegistryEntrySetCFProperty(ServiceObject, @"NormalModeEnable", kCFBooleanTrue);
    }
  }

  if (!a2)
  {
    v12 = 0;
    if (IOMobileFramebufferSetDisplayDevice())
    {
      ramrod_log_msg("unable to set display device: 0x%x\n");
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v13 = 0;
      if (IOMobileFramebufferGetSupportedDigitalOutModes())
      {
        ramrod_log_msg("unable to get color and timing modes: 0x%x\n");
      }

      else
      {
        ramrod_log_msg("NULL color (%p) and/or timing (%p) modes\n");
      }
    }

    goto LABEL_26;
  }

  if (IOMobileFramebufferGetDisplaySize())
  {
    ramrod_log_msg("%s()-> unable to get display size: 0x%x\n");
LABEL_26:
    ramrod_log_msg("%s()-> init failed.\n", "initialize_display_for_framebuffer");
    return 0xFFFFFFFFLL;
  }

  xmmword_1000B4FF0 = vcvtq_u64_f64(0);
  byte_1000B506C = 1;
  ramrod_log_msg("%s()-> display: %zu x %zu\n", "initialize_display_for_framebuffer", xmmword_1000B4FF0, *(&xmmword_1000B4FF0 + 1));
  off_1000B5098(v4);
  for (i = 0; i != 3; ++i)
  {
    v6 = xmmword_1000B4FF0;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      *(&display + i + 19) = 0;
LABEL_22:
      ramrod_log_msg("%s()-> unable to create display buffer %i\n");
      goto LABEL_26;
    }

    v8 = Mutable;
    cfdict_set_int_value(Mutable, kIOSurfaceBytesPerRow, (4 * v6 + 63) & 0xFFFFFFC0);
    cfdict_set_int_value(v8, kIOSurfaceWidth, v6);
    cfdict_set_int_value(v8, kIOSurfaceHeight, SDWORD2(v6));
    cfdict_set_int_value(v8, kIOSurfacePixelFormat, 1111970369);
    cfdict_set_int_value(v8, kIOSurfaceBytesPerElement, 4);
    if ((_get_cpu_capabilities() & 0x800) != 0)
    {
      v9 = 1792;
    }

    else
    {
      v9 = 1024;
    }

    cfdict_set_int_value(v8, kIOSurfaceCacheMode, v9);
    v10 = IOSurfaceCreate(v8);
    CFRelease(v8);
    *(&display + i + 19) = v10;
    if (!v10)
    {
      goto LABEL_22;
    }

    if (IOSurfaceLock(v10, 0, 0))
    {
      ramrod_log_msg("%s()-> unable to lock display buffer %i: 0x%x\n");
      goto LABEL_26;
    }
  }

  ramrod_log_msg("%s()-> powering on display\n", "initialize_display_for_framebuffer");
  if (IOMobileFramebufferRequestPowerChange())
  {
    ramrod_log_msg("%s()-> IOMobileFramebufferRequestPowerChange failed: %x\n");
    goto LABEL_26;
  }

  ramrod_log_msg("%s()-> init finished successfuly.\n", "initialize_display_for_framebuffer");
  result = 0;
  current_buffer = 0;
  return result;
}

void display_set_progress(double a1)
{
  v1 = a1 - *&blink_pct;
  if (a1 - *&blink_pct < 0.0)
  {
    v1 = 0.0;
  }

  if (*&blink_pct > 0.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = a1;
  }

  if (is_blinking == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (v3 * dword_1000B5030 / 100.0 >= dword_1000B5030)
  {
    v4 = dword_1000B5030;
  }

  else
  {
    v4 = v3 * dword_1000B5030 / 100.0;
  }

  if ((current_buffer & 0x80000000) == 0)
  {
    v5 = *(&display + current_buffer + 19);
    if (*(&display + current_buffer + 44))
    {
      IOMobileFramebufferSwapWaitWithTimeout();
    }

    if (dword_1000B503C)
    {
      v6 = IOSurfaceGetBytesPerRow(v5) >> 2;
      v7 = IOSurfaceGetBaseAddress(v5) + 4 * (dword_1000B501C * v6);
      v8 = dword_1000B5004;
      if (dword_1000B5004 < 5)
      {
        if (dword_1000B5004 <= 0)
        {
          ramrod_log_msg("Warning: Detected scale is X%d, Supported scales are 1 to %d. Going to use X1 as a fallback.\n", dword_1000B5004, 4);
          v8 = 1;
        }
      }

      else
      {
        ramrod_log_msg("Warning: Detected scale is X%d, Supported scales are 1 to %d. Going to use X%d as a fallback.\n", dword_1000B5004, 4, 4);
        v8 = 4;
      }

      v9 = 0;
      v10 = 0;
      v27 = (4 * v8);
      v29 = *(&progress_meters + 3 * (v8 - 1));
      v11 = *v29;
      v12 = -1;
      v30 = v11;
      do
      {
        v13 = &qword_1000B5040;
        if (v3 <= 0.0)
        {
          v14 = *(v29 + 2);
          if (v14)
          {
            v13 = &qword_1000B5040;
            goto LABEL_27;
          }

          v13 = &qword_1000B5040 + 1;
        }

        v14 = *(v29 + 1);
LABEL_27:
        v28 = v7;
        v15 = &v7[4 * dword_1000B5018];
        if (v11)
        {
          v16 = *v13;
          v17 = (v14 + v9);
          do
          {
            v18 = *v17++;
            *v15 = apply_alpha(v18, v16);
            v15 += 4 * (*algn_1000B5024 * v6) + 4 * dword_1000B5020;
            --v11;
          }

          while (v11);
        }

        if (dword_1000B5030 < 1)
        {
          v20 = v30;
        }

        else
        {
          v19 = 0;
          v20 = v30;
          do
          {
            v21 = &qword_1000B5040;
            if (v19 >= v4)
            {
              v21 = (&qword_1000B5040 + 4);
            }

            *v15 = *v21;
            v15 += 4 * (*algn_1000B5024 * v6) + 4 * dword_1000B5020;
            ++v19;
          }

          while (v19 < dword_1000B5030);
        }

        v22 = &qword_1000B5040;
        if (v3 < 100.0)
        {
          v23 = *(v29 + 2);
          if (v23)
          {
            v22 = &qword_1000B5040;
            if (v20)
            {
              goto LABEL_43;
            }

            goto LABEL_45;
          }

          v22 = &qword_1000B5040 + 1;
        }

        v23 = *(v29 + 1);
        if (v20)
        {
LABEL_43:
          v24 = *v22;
          v25 = v23 + v12;
          v26 = v30;
          do
          {
            *v15 = apply_alpha(*(v25 + v26), v24);
            v15 += 4 * (*algn_1000B5024 * v6) + 4 * dword_1000B5020;
            --v26;
          }

          while (v26);
        }

LABEL_45:
        v7 = &v28[4 * *algn_1000B502C * v6 + 4 * dword_1000B5028];
        ++v10;
        v11 = v30;
        v9 += v30;
        v12 += v30;
      }

      while (v10 != v27);
    }

    swapBuffers();
  }
}

void warn_about_failed_blit()
{
  ramrod_log_msg("Can't blit image into display buffer since it overflows the display size!\n");
  ramrod_log_msg("Here is some image and display information to debug your overflow issue:\n");
  ramrod_log_msg("Display Info: width=%zu height=%zu\n", xmmword_1000B4FF0, *(&xmmword_1000B4FF0 + 1));
  ramrod_log_msg("Image Info: xoff=%d yoff=%d height=%zu width=%zu\n", failed_blit_info_0, failed_blit_info_1, failed_blit_info_2, failed_blit_info_3);

  ramrod_log_msg("This message will only be logged once for all failed blits!\n");
}

void schedule_next_blink()
{
  if (is_blinking == 1)
  {
    v1 = dispatch_time(0, 1000000000);
    global_queue = dispatch_get_global_queue(2, 0);

    dispatch_after(v1, global_queue, &__block_literal_global_5);
  }
}

void __schedule_next_blink_block_invoke(id a1)
{
  schedule_next_blink();
  if (is_blinking == 1 && (current_buffer & 0x80000000) == 0)
  {
    v1 = *&current_progress;
    off_1000B50A0(v1);
    v2 = 1.0;
    if (*&blink_pct == 0.0 || (*&blink_pct = *&blink_pct + -1.0, v2 = 0.0, *&blink_pct < 0.0))
    {
      blink_pct = *&v2;
    }
  }
}

void killAnimations()
{
  if (is_showing_animation == 1)
  {
    ramrod_log_msg("%s()-> Killing animation.\n", "killAnimations");
    is_showing_animation = 0;
    pthread_cancel(animationThread);
    pthread_join(animationThread, 0);
    v0 = pthread_self();
    ramrod_log_msg("%s() [%p] Done killing animation.\n", "killAnimations", v0);
  }
}

const __CFNumber *get_timing_mode_properties(const __CFDictionary *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  v11 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (Value)
  {
    v12 = CFDictionaryGetValue(Value, @"Active");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v13, kCFNumberIntType, a2);
      }
    }
  }

  if (v11)
  {
    valuePtr = 0;
    v15 = CFDictionaryGetValue(v11, @"Active");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberIntType, a3);
      }
    }

    v18 = CFDictionaryGetValue(v11, @"SyncRate");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
        *a4 = ((valuePtr * 0.000015259) + 0.5);
      }
    }
  }

  result = CFDictionaryGetValue(a1, @"Score");
  if (result)
  {
    v22 = result;
    v23 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v23 == result)
    {
      return CFNumberGetValue(v22, kCFNumberIntType, a5);
    }
  }

  return result;
}

uint64_t load_display_setting_from_NVRAM(const __CFString *a1, SInt32 *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = ramrod_copy_NVRAM_variable(a1);
      if (v3)
      {
        v4 = v3;
        valuePtr = -1;
        v5 = CFGetTypeID(v3);
        if (v5 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v4);
        }

        else if (v5 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
          IntValue = valuePtr;
        }

        else
        {
          if (v5 != CFDataGetTypeID())
          {
            ramrod_log_msg("%s() -> can't convert unsupported CFType to int\n", "cftype_to_int");
            goto LABEL_18;
          }

          BytePtr = CFDataGetBytePtr(v4);
          if (!BytePtr)
          {
            goto LABEL_18;
          }

          v9 = BytePtr;
          Length = CFDataGetLength(v4);
          v11 = CFStringCreateWithBytes(kCFAllocatorDefault, v9, Length, 0x8000100u, 0);
          if (!v11)
          {
            goto LABEL_18;
          }

          v12 = v11;
          IntValue = CFStringGetIntValue(v11);
          CFRelease(v12);
        }

        if (IntValue != -1)
        {
          v7 = 0;
          *a2 = IntValue;
LABEL_19:
          CFRelease(v4);
          return v7;
        }

LABEL_18:
        v7 = 3;
        goto LABEL_19;
      }
    }

    else
    {
      ramrod_log_msg("can't load nil pointer with NVRAM value\n", 0);
    }
  }

  else
  {
    ramrod_log_msg("can't fetch NVRAM value with NULL key\n", a2);
  }

  return 2;
}

void cfdict_set_int_value(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t init_display_position_information_iOS()
{
  result = MGGetSInt32Answer();
  if (result == 3)
  {
    v2 = dword_1000B5004;
    v1 = 80 * dword_1000B5004;
    v3 = 239;
  }

  else if (result == 9)
  {
    v1 = *(&xmmword_1000B4FF0 + 1) / 6uLL - 2;
    v2 = dword_1000B5004;
    v3 = 234;
  }

  else
  {
    v2 = dword_1000B5004;
    v1 = 80 * dword_1000B5004;
    v3 = 189;
  }

  v4 = v2 * v3;
  if (byte_1000B500C == 1)
  {
    result = MGGetSInt32Answer();
    dword_1000B5008 = result;
    if (result == 11)
    {
      v1 = 286;
    }

    else
    {
      v1 = 224;
    }

    if (result == 20)
    {
      v1 = 254;
    }
  }

  if (dword_1000B5000 > 179)
  {
    if (dword_1000B5000 == 180)
    {
      dword_1000B5010 = xmmword_1000B4FF0 / 2;
      unk_1000B5014 = SDWORD2(xmmword_1000B4FF0) / 2;
      dword_1000B5018 = (v4 + xmmword_1000B4FF0) / 2;
      v5 = (*(&xmmword_1000B4FF0 + 1) >> 1) - v1;
      v6 = xmmword_1000820B0;
    }

    else
    {
      if (dword_1000B5000 != 270)
      {
        return result;
      }

      dword_1000B5010 = xmmword_1000B4FF0 / 2;
      unk_1000B5014 = SDWORD2(xmmword_1000B4FF0) / 2;
      dword_1000B5018 = v1 + (xmmword_1000B4FF0 >> 1);
      v5 = (v4 + DWORD2(xmmword_1000B4FF0)) / 2;
      v6 = xmmword_1000820A0;
    }
  }

  else if (dword_1000B5000)
  {
    if (dword_1000B5000 != 90)
    {
      return result;
    }

    dword_1000B5010 = xmmword_1000B4FF0 / 2;
    unk_1000B5014 = SDWORD2(xmmword_1000B4FF0) / 2;
    dword_1000B5018 = (xmmword_1000B4FF0 >> 1) - v1;
    v5 = (DWORD2(xmmword_1000B4FF0) - v4) / 2;
    v6 = xmmword_1000820C0;
  }

  else
  {
    dword_1000B5010 = xmmword_1000B4FF0 / 2;
    unk_1000B5014 = SDWORD2(xmmword_1000B4FF0) / 2;
    dword_1000B5018 = (xmmword_1000B4FF0 - v4) / 2;
    v5 = v1 + (*(&xmmword_1000B4FF0 + 1) >> 1);
    v6 = xmmword_1000820D0;
  }

  dword_1000B501C = v5;
  *&dword_1000B5020 = v6;
  dword_1000B5030 = v4 - 4;
  return result;
}

void load_scale_and_rotation()
{
  MGGetFloat32Answer();
  dword_1000B5004 = v0;
  MGGetFloat32Answer();
  v2 = v1;
  dword_1000B5008 = MGGetSInt32Answer();
  v3 = MGGetSInt32Answer();
  ramrod_log_msg("display-boot-rotation = %d\n", v3);
  v4 = v2 * 57.2957795;
  dword_1000B5000 = (v3 - llroundf(v4) + 360) % 360;
  ramrod_log_msg("display-scale = %d\n", dword_1000B5004);
  ramrod_log_msg("display-rotation = %d\n", dword_1000B5000);
  if (dword_1000B5000 > 179)
  {
    if (dword_1000B5000 != 180 && dword_1000B5000 != 270)
    {
      goto LABEL_7;
    }
  }

  else if (dword_1000B5000 && dword_1000B5000 != 90)
  {
LABEL_7:
    ramrod_log_msg("display-rotation value (%d) unsupported, not rotating images\n", dword_1000B5000);
    dword_1000B5000 = 0;
  }
}

uint64_t hot_plug_thread()
{
  Current = CFRunLoopGetCurrent();
  ramrod_log_msg("%s()-> starting display hot plug thread\n", "hot_plug_thread");
  if (dword_1000B5070 < 1)
  {
    goto LABEL_13;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  do
  {
    if ((*(qword_1000B5080 + v1) & 1) == 0)
    {
      RunLoopSource = IOMobileFramebufferGetRunLoopSource();
      if (RunLoopSource)
      {
        CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        v5 = IOMobileFramebufferEnableHotPlugDetectNotifications();
        if (v5)
        {
          ramrod_log_msg("%s()-> unable to register for hot plug notifications on %s: 0x%x\n", "hot_plug_thread", (qword_1000B5080 + v1 + 2), v5);
        }

        else
        {
          ++v3;
        }
      }
    }

    ++v2;
    v1 += 80;
  }

  while (v2 < dword_1000B5070);
  if (v3 <= 0)
  {
LABEL_13:
    ramrod_log_msg("%s()-> no external displays registered for hot plug notifications\n", "hot_plug_thread");
  }

  else
  {
    v6 = "s";
    if (v3 == 1)
    {
      v6 = "";
    }

    ramrod_log_msg("%s()-> listening for hot plug notifications from %d display%s\n", "hot_plug_thread", v3, v6);
    CFRunLoopRun();
  }

  ramrod_log_msg("%s()-> display hot plug thread exiting\n", "hot_plug_thread");
  return 0;
}

void free_display()
{
  ramrod_log_msg("%s()-> releasing resources\n", "free_display");
  v0 = 0;
  xmmword_1000B4FF0 = 0uLL;
  do
  {
    v1 = (&display + v0);
    v2 = *(&display + v0 + 152);
    if (v2)
    {
      IOSurfaceUnlock(v2, 0, 0);
      CFRelease(v1[19]);
      v1[19] = 0;
    }

    v0 += 8;
  }

  while (v0 != 24);
  current_buffer = -1;
}

CFIndex find_framebuffers_of_type(const __CFArray *a1, int a2)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (*(ValueAtIndex + 2) == a2)
      {
        v7 = (qword_1000B5080 + 80 * dword_1000B5070);
        if (!CFStringGetCString(*ValueAtIndex, v7 + 2, 64, 0x8000100u))
        {
          __strlcpy_chk();
        }

        ramrod_log_msg("found display: %s\n", v7 + 2);
        if (IOMobileFramebufferOpenByName())
        {
          ramrod_log_msg("unable to open framebuffer: 0x%x\n");
        }

        else
        {
          ++dword_1000B5070;
          v7[1] = 0;
          *v7 = a2 == 0;
          if (!a2)
          {
            v9 = 1;
LABEL_13:
            v7[1] = v9 == 1;
            if (v9 == 1 && !qword_1000B5078)
            {
              qword_1000B5078 = v7;
              ramrod_log_msg("Will use display %s\n", v7 + 2);
            }

            ramrod_log_msg("Display state is %d\n");
            goto LABEL_17;
          }

          DigitalOutState = IOMobileFramebufferGetDigitalOutState();
          if (!DigitalOutState)
          {
            v9 = 0;
            goto LABEL_13;
          }

          ramrod_log_msg("%s: Failed to query digital out state %08x\n", "get_display_state", DigitalOutState);
          ramrod_log_msg("Unable to get state of %s\n");
        }
      }

LABEL_17:
      result = CFArrayGetCount(a1);
    }
  }

  return result;
}

void display_hot_plug(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = (a3 + 2);
  v7 = "attached";
  if (!a2)
  {
    v7 = "detached";
  }

  ramrod_log_msg("%s() => display %s %s\n", "display_hot_plug", (a3 + 2), v7);
  if (is_showing_animation == 1 && (!qword_1000B5078 || qword_1000B5078 == v3))
  {
    if (a2 == 1)
    {
      v8 = pthread_self();
      ramrod_log_msg("%s() [%p] => ERROR! animation is running but no hotplug was attached until now. trying to kill the animation thread anyway to avoid deadlock.\n", "display_hot_plug", v8);
    }

    killAnimations();
  }

  v9 = pthread_mutex_lock(&display);
  v10 = qword_1000B5078;
  if (!a2)
  {
    *(v3 + 1) = 0;
    if (v10 == v3)
    {
      ramrod_log_msg("%s() => %s was active", "display_hot_plug", v6);
    }

    else if (v10)
    {
      goto LABEL_26;
    }

    v11 = dword_1000B5070;
    v3 = qword_1000B5080;
    if (dword_1000B5070 < 1)
    {
LABEL_21:
      if (*qword_1000B5080 != 1)
      {
        v10 = 0;
        goto LABEL_26;
      }

      v6 = (qword_1000B5080 + 2);
    }

    else
    {
      v6 = (qword_1000B5080 + 2);
      while (*(v6 - 1) != 1)
      {
        v6 += 80;
        if (!--v11)
        {
          goto LABEL_21;
        }
      }

      v3 = (v6 - 2);
    }

    goto LABEL_25;
  }

  *(v3 + 1) = 1;
  if (!v10 || (v10[1] & 1) == 0)
  {
LABEL_25:
    ramrod_log_msg("%s() => Will use %s\n", "display_hot_plug", v6);
    v10 = v3;
  }

LABEL_26:
  if (qword_1000B5078 == v10)
  {
LABEL_34:
    ramrod_log_msg("%s() => unlocking display\n", "display_hot_plug");

    pthread_mutex_unlock(&display);
    return;
  }

  if (qword_1000B5078)
  {
    free_display();
  }

  qword_1000B5078 = v10;
  if (v10)
  {
    v12 = *v10;
    if (v12 == 1)
    {
      off_1000B50A8(v9);
      v12 = *qword_1000B5078;
    }

    v13 = initialize_display_for_framebuffer(a1, v12);
    if (v13)
    {
      ramrod_log_msg("%s() => failed to initialize display\n", "display_hot_plug");
      goto LABEL_34;
    }

    v14 = off_1000B5088(v13);
    off_1000B5098(v14);
    ramrod_log_msg("%s() => unlocking display\n", "display_hot_plug");
    pthread_mutex_unlock(&display);
    v15 = currentStep;

    setNeRDUIStepDisplayDataInner(v15, &currentStepParams, 1);
  }
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1, const __CFString *a2, CFTypeRef *a3, off_t *a4, CFTypeRef *a5, off_t *a6)
{
  v6 = a1;
  __size = 0;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(v36, 0, sizeof(v36));
  if (!a1)
  {
    AMRestorePartitionFWCopyTagData_cold_10(0);
    v19 = 0;
LABEL_53:
    v25 = 0;
    v17 = 0;
    v24 = 99;
    goto LABEL_46;
  }

  v11 = _AMRestorePartitionOpenFileWithURL(a1, 0);
  if (!v11)
  {
    AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "Unable to open inURL %@", v6);
    v19 = 0;
    v6 = 0;
    goto LABEL_53;
  }

  v12 = v11;
  v6 = malloc(0x8000uLL);
  if (v6)
  {
    v13 = read(v12, v6, 0x8000uLL);
    if (v13)
    {
      v14 = v13;
      v28 = a3;
      v29 = a6;
      v27 = a4;
      v31 = 0;
      v30 = 0;
      v15 = 0;
      v16 = 0;
      cf = 0;
      v17 = 0;
      while (1)
      {
        __size = 0;
        v18 = Img4DecodeParseLengthFromBuffer(v6, v14, &__size);
        if (v18 || !__size)
        {
          break;
        }

        v19 = malloc(__size);
        if (!v19)
        {
          AMRestorePartitionFWCopyTagData_cold_5();
          goto LABEL_25;
        }

        v20 = lseek(v12, v15, 0);
        if (v20 != v15)
        {
          AMRestorePartitionFWCopyTagData_cold_1(v20);
          goto LABEL_25;
        }

        v21 = read(v12, v19, __size);
        if (!v21)
        {
          AMRestorePartitionFWCopyTagData_cold_4();
          goto LABEL_25;
        }

        v22 = v21;
        if (v21 != __size)
        {
          AMRestorePartitionFWCopyTagData_cold_2();
          goto LABEL_25;
        }

        Img4DecodeInit(v19, v21, v36);
        if (v23)
        {
          AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "Item %02d, der.length=%8d, Bad Img4 inside valid DER sequence. (derstat=%d)", v16 + 1, v22, v23);
        }

        else
        {
          AMSupportSafeRelease(v17);
          v17 = CFStringCreateWithBytes(kCFAllocatorDefault, *(&v37 + 1), v38, 0x8000100u, 0);
          AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "Item %02d, offset=%8d, der.length=%8d, img4Tag=[%@]", v16 + 1, v15, v22, v17);
          if (a2 && CFStringCompare(a2, v17, 0) == kCFCompareEqualTo)
          {
            AMSupportLogInternal(6, "AMRestorePartitionFWCopyTagData", "   ^^ Found requested tag.", v16 + 1, v22, v17);
            if (a5)
            {
              if (!cf)
              {
                cf = CFDataCreate(kCFAllocatorDefault, v19, v22);
                if (!cf)
                {
                  AMRestorePartitionFWCopyTagData_cold_3();
                  v25 = 0;
                  goto LABEL_60;
                }
              }
            }

            v31 = 1;
            v30 = v15;
          }
        }

        v15 += __size;
        AMSupportSafeFree(v19);
        v14 = read(v12, v6, 0x8000uLL);
        ++v16;
        if (!v14)
        {
          goto LABEL_27;
        }
      }

      AMSupportLogInternal(6, "AMRestorePartitionFWCopyTagData", "No more segments. (derstat=%d)", v18);
      if (!v16)
      {
        goto LABEL_23;
      }

LABEL_27:
      if (v16 >= 0x21)
      {
        AMRestorePartitionFWCopyTagData_cold_8();
        goto LABEL_24;
      }

      if (lseek(v12, v15, 0) != v15)
      {
        AMRestorePartitionFWCopyTagData_cold_6();
        goto LABEL_24;
      }

      v34 = -1;
      if (read(v12, &v34, 2uLL) != 2)
      {
        AMRestorePartitionFWCopyTagData_cold_7();
        goto LABEL_24;
      }

      if (v34)
      {
        AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "Invalid termination bytes: [0x%02x, 0x%02x]");
        goto LABEL_24;
      }

      if ((a2 == 0) | v31 & 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 8;
      }

      if (v29)
      {
        *v29 = v15;
      }

      if (v27)
      {
        *v27 = v30;
      }

      v25 = cf;
      if (v28 && v17)
      {
        *v28 = CFRetain(v17);
      }

      v19 = 0;
      if (a5 && cf)
      {
        v19 = 0;
        *a5 = CFRetain(cf);
      }
    }

    else
    {
      cf = 0;
      v17 = 0;
LABEL_23:
      AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "No DER segments found.");
LABEL_24:
      v19 = 0;
LABEL_25:
      v24 = 99;
      v25 = cf;
    }
  }

  else
  {
    AMRestorePartitionFWCopyTagData_cold_9(0);
    v17 = 0;
    v25 = 0;
    v19 = 0;
LABEL_60:
    v24 = 99;
  }

  if (v12 >= 1)
  {
    close(v12);
  }

LABEL_46:
  AMSupportSafeFree(v6);
  AMSupportSafeFree(v19);
  AMSupportSafeRelease(v17);
  AMSupportSafeRelease(v25);
  return v24;
}

uint64_t _AMRestorePartitionOpenFileWithURL(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "failed to convert url to file system representation");
    AMSupportLogInternal(8, "_AMRestorePartitionOpenFileWithURL", "%@", a1);
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    _AMRestorePartitionOpenFileWithURL_cold_2(v4);
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    _AMRestorePartitionOpenFileWithURL_cold_1();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t _partition_log(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_loggingPtr)
  {
    return _loggingPtr(result, &a9);
  }

  return result;
}

uint64_t _unmount_filesystem(const char *a1)
{
  bzero(&v48, 0x878uLL);
  if (statfs(a1, &v48))
  {
    v2 = __error();
    strerror(*v2);
    _partition_log("statfs %s failed: %s", v3, v4, v5, v6, v7, v8, v9, a1);
    return 1;
  }

  v11 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v11)
  {
    __error();
    v12 = __error();
    strerror(*v12);
    _partition_log("realpath %s failed: %d %s", v13, v14, v15, v16, v17, v18, v19, a1);
  }

  if (!strcmp(v48.f_mntonname, v11))
  {
    v27 = unmount(v11, 0x80000);
    if (v27)
    {
      v10 = v27;
      if (*__error() != 1)
      {
        goto LABEL_18;
      }

      *&v45 = "/sbin/umount";
      *(&v45 + 1) = "-f";
      v46 = v11;
      v47 = 0;
      if (!_executeCommandPtr)
      {
        v10 = 0xFFFFFFFFLL;
LABEL_18:
        __error();
        v37 = __error();
        strerror(*v37);
        _partition_log("error unmounting '%s': %d %s", v38, v39, v40, v41, v42, v43, v44, a1);
        v45 = off_100099D30;
        if (_executeCommandPtr)
        {
          _executeCommandPtr(&v45, _partition_execution_log, 0);
        }

        goto LABEL_14;
      }

      v35 = _executeCommandPtr(&v45, _partition_execution_log, 0);
      if (v35)
      {
        v10 = v35;
        goto LABEL_18;
      }
    }

    _partition_log("file system at %s successfully unmounted", v28, v29, v30, v31, v32, v33, v34, a1);
    goto LABEL_13;
  }

  _partition_log("no file system mounted at %s", v20, v21, v22, v23, v24, v25, v26, a1);
LABEL_13:
  v10 = 0;
LABEL_14:
  if (v11)
  {
    free(v11);
  }

  return v10;
}

uint64_t partition_probe_media(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 0;
  v10 = &dword_1000B5000;
  v11 = &dword_1000B5000;
  do
  {
    iterator = 0;
    cf = 0;
    storage_device_node_path = 0;
    *(v10 + 736) = 0;
    *(v11 + 896) = 0;
    data_device_node_path = 0;
    user_device_node_path = 0;
    baseband_data_partition_device_node_path = 0;
    update_device_node_path = 0;
    scratch_device_node_path = 0;
    xart_device_node_path = 0;
    apfs_recovery_os_container_device_node_path = 0;
    recovery_os_volume_device_node_path = 0;
    preboot_partition_device_node_path = 0;
    iboot_system_container_device_node_path = 0;
    if (!_partition_wait_for_device(&storage_device_node_path, a2, a3, a4, a5, a6, a7, a8))
    {
      _partition_log("Unable to find storage device node for service named: %s", v12, v13, v14, v15, v16, v17, v18, "EmbeddedDeviceTypeRoot");
      v37 = 0;
      v28 = 0;
      goto LABEL_7;
    }

    _partition_log("entering %s.", v12, v13, v14, v15, v16, v17, v18, "_partition_probe_media_should_retry");
    v19 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_1000B5445);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v19);
    v28 = MatchingService;
    if (!MatchingService)
    {
      _partition_log("unable to find service for %s", v21, v22, v23, v24, v25, v26, v27, byte_1000B5445);
      v38 = 0;
LABEL_9:
      v37 = 1;
      goto LABEL_100;
    }

    IOServiceWaitQuiet(MatchingService, 0);
    v29 = IORegistryEntryCreateIterator(v28, "IOService", 1u, &iterator);
    if (v29)
    {
      _partition_log("unable to create child iterator: 0c%.8x", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = 0;
LABEL_7:
      v38 = 0;
      goto LABEL_100;
    }

    v38 = IOIteratorNext(iterator);
    if (!v38)
    {
      goto LABEL_9;
    }

    v118 = 0;
    v39 = 0;
    while (!IOObjectConformsTo(v38, "IOMedia"))
    {
LABEL_76:
      IOObjectRelease(v38);
LABEL_77:
      v38 = IOIteratorNext(iterator);
      v37 = 1;
      if (!v38)
      {
        goto LABEL_99;
      }
    }

    memset(name, 0, sizeof(name));
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    IORegistryEntryGetName(v38, name);
    CFProperties = IORegistryEntryCreateCFProperties(v38, &cf, kCFAllocatorDefault, 0);
    if (CFProperties)
    {
      _partition_log("unable to get properies for media registry entry: 0x%.8x", v41, v42, v43, v44, v45, v46, v47, CFProperties);
      goto LABEL_98;
    }

    if (v39 || (Value = CFDictionaryGetValue(cf, @"BSD Name")) != 0 && CFEqual(Value, @"disk0s1s1"))
    {
      v48 = 0;
      v39 = 1;
    }

    else
    {
      v39 = 0;
      v48 = 1;
    }

    v50 = CFDictionaryGetValue(cf, @"Content Hint");
    if (v50)
    {
      v58 = v50;
      if (CFEqual(v50, @"7C3457EF-0000-11AA-AA11-00306543ECAC") || CFEqual(v58, @"52637672-7900-11AA-AA11-00306543ECAC") || CFEqual(v58, @"69646961-6700-11AA-AA11-00306543ECAC") || CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        v83 = CFDictionaryGetValue(cf, @"BSD Name");
        if (!v83)
        {
          v116 = "APFS Container object with no bsd name";
          goto LABEL_117;
        }

        *buffer = 0u;
        v122 = 0u;
        CFStringGetCString(v83, buffer, 32, 0x8000100u);
        v11 = &dword_1000B5000;
        if (CFEqual(v58, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
        {
          v91 = &apfs_recovery_os_container_device_node_path;
          if (!strstr(name, "RecoveryOSContainer"))
          {
            if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
            {
              v91 = &apfs_container_device_node_path;
            }

            else
            {
              v91 = &iboot_system_container_device_node_path;
            }
          }

          snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
          _partition_log("APFS Container '%s' %s\n", v92, v93, v94, v95, v96, v97, v98, name);
          goto LABEL_88;
        }

        v99 = CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC");
        v91 = v118;
        if (v99 == 1)
        {
          if (v118 && *v118)
          {
            _partition_log("Found synthesized APFS container. Using %s instead of %s\n", v100, v101, v102, v103, v104, v105, v106, buffer);
            snprintf(v118, 0x20uLL, "%s%s", "/dev/", buffer);
            goto LABEL_90;
          }

          _partition_log("found synthesized container without original device node\n", v100, v101, v102, v103, v104, v105, v106, v117);
        }

        if (v118)
        {
LABEL_88:
          v118 = v91;
          if (!*v91)
          {
            snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
            _partition_log("APFS Container '%s' %s\n", v108, v109, v110, v111, v112, v113, v114, name);
          }

          goto LABEL_91;
        }

LABEL_90:
        v118 = 0;
LABEL_91:
        IOObjectRelease(v38);
        CFRelease(cf);
        cf = 0;
        goto LABEL_77;
      }
    }

    v59 = *name == 1953724755 && *&name[3] == 7169396;
    if (v59 || strstr(name, "OS"))
    {
      v39 = 1;
      v60 = "found system volume not at disk0s1s1: %s\n";
      v61 = &system_device_node_path;
      if (v48)
      {
        goto LABEL_32;
      }
    }

    else if (*name ^ 0x61746144 | name[4])
    {
      if (*name ^ 0x72657355 | name[4])
      {
        if (*name == 0x646E616265736142 && *&name[6] == 0x6174614420646ELL)
        {
          v61 = &baseband_data_partition_device_node_path;
        }

        else if (*name == 1633972309 && *&name[3] == 6648929)
        {
          v61 = &update_device_node_path;
        }

        else
        {
          if (system_device_node_path)
          {
            v82 = 0;
          }

          else
          {
            v82 = v39;
          }

          if (v82)
          {
            v60 = "looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n";
LABEL_32:
            _partition_log(v60, v51, v52, v53, v54, v55, v56, v57, name);
            v61 = &system_device_node_path;
          }

          else if (*name == 0x68637461726353)
          {
            v61 = &scratch_device_node_path;
          }

          else if (*name ^ 0x54524178 | name[4])
          {
            if (*name ^ 0x797265766F636552 | name[8])
            {
              if (*name != 0x746F6F62657250)
              {
                _partition_log("unexpected partition '%s' - skipping", v51, v52, v53, v54, v55, v56, v57, name);
                v61 = 0;
                v62 = 1;
                goto LABEL_35;
              }

              v61 = &preboot_partition_device_node_path;
            }

            else
            {
              v61 = &recovery_os_volume_device_node_path;
            }
          }

          else
          {
            v61 = &xart_device_node_path;
          }
        }
      }

      else
      {
        v61 = &user_device_node_path;
      }
    }

    else
    {
      v61 = &data_device_node_path;
    }

    if (*v61)
    {
      _partition_log("encountered second '%s' partition; original was '%s'", v51, v52, v53, v54, v55, v56, v57, name);
      goto LABEL_97;
    }

    v62 = 0;
LABEL_35:
    while (1)
    {
      v63 = CFDictionaryGetValue(cf, @"Leaf");
      if (v63)
      {
        if (CFBooleanGetValue(v63) == 1)
        {
          break;
        }
      }

      IOObjectRelease(v38);
      CFRelease(cf);
      cf = 0;
      v64 = IOIteratorNext(iterator);
      if (!v64)
      {
LABEL_96:
        _partition_log("ran out of registry entries without finding a leaf media object", v65, v66, v67, v68, v69, v70, v71, v117);
        v38 = 0;
        goto LABEL_97;
      }

      v38 = v64;
      while (!IOObjectConformsTo(v38, "IOMedia"))
      {
        IOObjectRelease(v38);
        v38 = IOIteratorNext(iterator);
        if (!v38)
        {
          goto LABEL_96;
        }
      }

      v72 = IORegistryEntryCreateCFProperties(v38, &cf, kCFAllocatorDefault, 0);
      if (v72)
      {
        _partition_log("unable to get properies for media registry entry: 0x%.8x", v73, v74, v75, v76, v77, v78, v79, v72);
        goto LABEL_97;
      }
    }

    if (v62)
    {
LABEL_75:
      v11 = &dword_1000B5000;
      goto LABEL_76;
    }

    v107 = CFDictionaryGetValue(cf, @"BSD Name");
    if (v107)
    {
      *buffer = 0u;
      v122 = 0u;
      CFStringGetCString(v107, buffer, 32, 0x8000100u);
      snprintf(v61, 0x20uLL, "%s%s", "/dev/", buffer);
      goto LABEL_75;
    }

    v116 = "leaf media object with no bsd name";
LABEL_117:
    _partition_log(v116, v84, v85, v86, v87, v88, v89, v90, v117);
LABEL_97:
    v11 = &dword_1000B5000;
LABEL_98:
    v37 = 0;
LABEL_99:
    v10 = &dword_1000B5000;
LABEL_100:
    if (iterator && !IOIteratorIsValid(iterator))
    {
      v9 = 1;
      v37 = 0;
    }

    if (v38)
    {
      IOObjectRelease(v38);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    if (v28)
    {
      IOObjectRelease(v28);
    }

    if (v37)
    {
      return 1;
    }

    result = 0;
    if (!v9)
    {
      break;
    }

    ++v8;
  }

  while (v8 != 3);
  return result;
}

uint64_t delete_apfs_partition(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "delete_apfs_partition");
  if (!partition_probe_media(v10, v11, v12, v13, v14, v15, v16, v17))
  {
    _partition_log("%s : partition_probe_media() failed for partition at index %u, mountpoint %s\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  if (a2)
  {
    _unmount_filesystem(a2);
  }

  if (a1 >= 8)
  {
    _partition_log("%s : Deleting partition at slice %d is not allowed as path is NULL\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  v25 = off_100099D40[a1];
  if (*v25)
  {
    if (APFSVolumeDelete())
    {
      _partition_log("%s : failed to delete partition at slice %d\n", v26, v27, v28, v29, v30, v31, v32, "delete_apfs_partition");
      return 1;
    }

    v34 = _partition_log("%s : delete partition succeeded at slice %d %s\n", v26, v27, v28, v29, v30, v31, v32, "delete_apfs_partition");
    if (!partition_probe_media(v34, v35, v36, v37, v38, v39, v40, v41))
    {
      _partition_log("%s : partition_probe_media() failed for checking for partition at slice %d\n", v42, v43, v44, v45, v46, v47, v48, "delete_apfs_partition");
      return 1;
    }

    if (*v25)
    {
      _partition_log("%s : partition_probe_media() found partition at slice %d after it was deleted\n", v42, v43, v44, v45, v46, v47, v48, "delete_apfs_partition");
      return 1;
    }

    return 0;
  }

  else
  {
    _partition_log("%s : partition at slice %d does not exist, ignoring this delete call\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 2;
  }
}

uint64_t format_partition(const char *a1, char *__s1, uint64_t a3, uint64_t a4, int a5)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  *__str = 0;
  v32 = "/sbin/newfs_apfs";
  if (!strcmp(__s1, "System"))
  {
    v16 = 115;
  }

  else if (!strcmp(__s1, "Data"))
  {
    v16 = 100;
  }

  else if (!strcmp(__s1, "User"))
  {
    v16 = 117;
  }

  else if (!strcmp(__s1, "Preboot"))
  {
    v16 = 98;
  }

  else if (!strcmp(__s1, "Baseband Data"))
  {
    v16 = 97;
  }

  else if (!strcmp(__s1, "Logs"))
  {
    v16 = 105;
  }

  else if (!strcmp(__s1, "xART"))
  {
    v16 = 120;
  }

  else if (!strcmp(__s1, "Scratch"))
  {
    v16 = 110;
  }

  else if (!strcmp(__s1, "Hardware"))
  {
    v16 = 104;
  }

  else if (!strcmp(__s1, "Update"))
  {
    v16 = 112;
  }

  else
  {
    if (strcmp(__s1, "Recovery"))
    {
      v15 = 1;
      goto LABEL_25;
    }

    v16 = 114;
  }

  *&v33 = "-o";
  snprintf(__str, 8uLL, "role=%c", v16);
  *(&v33 + 1) = __str;
  v15 = 3;
LABEL_25:
  (&v32)[v15] = "-A";
  (&v32)[v15 + 1] = "-v";
  v17 = v15 + 3;
  (&v32)[v15 + 2] = __s1;
  if (a5 == 1)
  {
    (&v32)[v17] = "-P";
    v17 = v15 | 4;
  }

  (&v32)[v17] = a1;
  (&v32)[v17 + 1] = 0;
  v18 = "/sbin/newfs_apfs";
  v19 = 1;
  do
  {
    _partition_log("%s ", v8, v9, v10, v11, v12, v13, v14, v18);
    v18 = (&v32)[v19++];
  }

  while (v18);
  _partition_log("\n", v8, v9, v10, v11, v12, v13, v14, v30);
  if (!_executeCommandPtr)
  {
    v27 = 0xFFFFFFFFLL;
    v28 = "/sbin/newfs_apfs";
    goto LABEL_33;
  }

  v27 = _executeCommandPtr(&v32, _partition_execution_log, 0);
  if (v27)
  {
    v28 = v32;
LABEL_33:
    _partition_log("%s returned %d", v20, v21, v22, v23, v24, v25, v26, v28);
  }

  return v27;
}